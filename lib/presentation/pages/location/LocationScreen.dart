import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:rickandmortyapp/domain/location/model/LocationDomainModel.dart';
import 'package:rickandmortyapp/presentation/pages/location/LocationController.dart';
import 'package:rickandmortyapp/presentation/pages/location/viewmodel/LocationViewModel.dart';
import 'package:rickandmortyapp/presentation/themes/Colors.dart';
import 'package:rickandmortyapp/presentation/widgets/InformationCard.dart';
import 'package:rickandmortyapp/utils/RequestState.dart';

class LocationScreen extends ConsumerStatefulWidget {
  const LocationScreen({super.key});

  @override
  ConsumerState createState() => _LocationScreenState();
}

class _LocationScreenState extends ConsumerState<LocationScreen> {
  late LocationController controller;

  @override
  void initState() {
    super.initState();
    controller = ref.read(locationControllerProvider);
    controller.initScrollController();

    if (controller.shouldFetchAllLocation()) {
      Future.microtask(() {
        controller.fetchAllLocation();
      });
    }
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final state = ref.watch(locationViewModelProvider);
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
              print('open');
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
              child: _buildBody(state.location),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildBody(RequestState<LocationDomainModel> state) {
    return state.when(
      idle: () => const Center(child: Text("Silakan cari location")),
      loading: () => const Center(child: CircularProgressIndicator()),
      success: (data) {
        if (data.results.isEmpty) {
          return const Center(child: Text("Tidak ada hasil"));
        }

        return ListView.separated(
          controller: controller.scrollC,
          itemCount: data.results.length + 1,
          separatorBuilder: (_, __) => const SizedBox(height: 8),
          itemBuilder: (_, index) {
            if (index < data.results.length) {
              final location = data.results[index];
              return InformationCard(
                title: location.name,
                description: location.dimension,
                date: location.type,
              );
            } else {
              final vm = ref.read(locationViewModelProvider.notifier);
              if (vm.hasMore && vm.isFetching) {
                return const Padding(
                  padding: EdgeInsets.symmetric(vertical: 16),
                  child: Center(child: CircularProgressIndicator()),
                );
              } else {
                return const SizedBox.shrink();
              }
            }
          },
        );
      },
      error: (msg) => Center(child: Text("Error: ${msg.message}")),
    );
  }
}
