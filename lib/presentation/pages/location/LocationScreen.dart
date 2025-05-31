import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:rick_and_morty_new/domain/location/model/LocationDomainModel.dart';
import 'package:rick_and_morty_new/presentation/navigation/RoutePage.dart';
import 'package:rick_and_morty_new/presentation/pages/location/LocationController.dart';
import 'package:rick_and_morty_new/presentation/themes/Colors.dart';
import 'package:rick_and_morty_new/presentation/widgets/InformationCard.dart';
import 'package:rick_and_morty_new/utils/RequestState.dart';

import '../../widgets/textinput/CustomBasicTextField.dart';

class LocationScreen extends ConsumerStatefulWidget {
  const LocationScreen({super.key});

  @override
  ConsumerState createState() => _LocationScreenState();
}

class _LocationScreenState extends ConsumerState<LocationScreen> {
  @override
  Widget build(BuildContext context) {
    final controllerState = ref.watch(locationControllerProvider);
    final controller = ref.watch(locationControllerProvider.notifier);
    final dataLocationState = controllerState.dataLocationState;

    return Container(
      color: CustomColors.abuAbuMuda,
      padding: const EdgeInsets.only(right: 16, left: 16, top: 16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          ElevatedButton(
            style: ElevatedButton.styleFrom(
              backgroundColor: CustomColors.biru,
              padding: EdgeInsets.zero,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(100),
              ),
            ),
            onPressed: () {
              _showBottomSheet(context, controller);
            },
            child: const Padding(
              padding: EdgeInsets.symmetric(vertical: 12),
              child: Text(
                "Open Filter",
                style: TextStyle(
                    fontWeight: FontWeight.w500,
                    fontSize: 14,
                    color: CustomColors.white),
              ),
            ),
          ),
          const SizedBox(height: 12),
          Expanded(
            child: RefreshIndicator(
              onRefresh: () async {
                controller.fetchAllLocation();
              },
              child: _buildBody(dataLocationState, controller),
            ),
          ),
        ],
      ),
    );
  }

  void _showBottomSheet(BuildContext context, LocationController controller) {
    showModalBottomSheet(
      backgroundColor: CustomColors.white,
      enableDrag: true,
      useSafeArea: true,
      context: context,
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.vertical(top: Radius.circular(16)),
      ),
      isScrollControlled: true,
      builder: (context) {
        return DraggableScrollableSheet(
          initialChildSize: 0.45,
          minChildSize: 0.45,
          maxChildSize: 0.95,
          expand: false,
          builder: (context, scrollController) {
            return Container(
              padding: const EdgeInsets.all(16),
              decoration: const BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.vertical(top: Radius.circular(16)),
              ),
              child: SingleChildScrollView(
                controller: scrollController,
                child: Consumer(builder: (context, ref, child) {
                  final state = ref.watch(locationControllerProvider);
                  return Column(
                    children: [
                      customBasicTextField(
                          controller.nameLocationC, 'Search Name Location',
                          Icons.search),
                      const SizedBox(height: 16),
                      customBasicTextField(controller.typeLocationController,
                          'Search Type Location', Icons.search),
                      const SizedBox(height: 16),
                      customBasicTextField(controller
                          .dimensionLocationController,
                          'Search Dimension Location', Icons.search),
                      const SizedBox(height: 16),
                      Container(
                        width: double.infinity,
                        child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            backgroundColor: CustomColors.biru,
                            padding: EdgeInsets.zero,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(8),
                            ),
                          ),
                          onPressed: () {
                            controller.fetchAllLocation();
                            Navigator.pop(context);
                          },
                          child: const Padding(
                            padding: EdgeInsets.symmetric(vertical: 12),
                            child: Text(
                              "Search Location",
                              style: TextStyle(
                                  fontWeight: FontWeight.w500,
                                  fontSize: 14,
                                  color: CustomColors.white),
                            ),
                          ),
                        ),
                      ),
                      Container(
                        width: double.infinity,
                        child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            backgroundColor: CustomColors.abuAbuTua,
                            padding: EdgeInsets.zero,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(8),
                            ),
                          ),
                          onPressed: () {
                            controller.resetFilter();
                          },
                          child: const Padding(
                            padding: EdgeInsets.symmetric(vertical: 12),
                            child: Text(
                              "Clear",
                              style: TextStyle(
                                  fontWeight: FontWeight.w500,
                                  fontSize: 14,
                                  color: CustomColors.white),
                            ),
                          ),
                        ),
                      ),
                    ],
                  );
                }),
              ),
            );
          },
        );
      },
    );
  }

  Widget _buildBody(
      RequestState<LocationDomainModel> state, LocationController controller) {
    return state.when(
      idle: () => const Center(child: Text("Silakan cari location")),
      loading: () => const Center(child: CircularProgressIndicator()),
      success: (data) {
        if (data.results.isEmpty) {
          return const Center(child: Text("Tidak ada hasil"));
        }

        return ListView.separated(
          controller: controller.scrollC,
          itemCount: data.results.length,
          separatorBuilder: (_, __) => const SizedBox(height: 8),
          itemBuilder: (_, index) {
            if (index < data.results.length) {
              final location = data.results[index];
              return InformationCard(
                title: location.name,
                description: location.dimension,
                date: location.type,
                navigation: () {
                  Navigator.pushNamed(context, RoutePage.episodeDetail.path,
                      arguments: location);
                },
              );
            } else {
              return const Padding(
                padding: EdgeInsets.symmetric(vertical: 16),
                child: Center(child: CircularProgressIndicator()),
              );
            }
          },
        );
      },
      error: (msg) => Center(child: Text("Error: ${msg.message}")),
    );
  }
}
