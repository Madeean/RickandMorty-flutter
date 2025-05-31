import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:rick_and_morty_new/domain/character/model/CharacterDomainModel.dart';
import 'package:rick_and_morty_new/presentation/navigation/RoutePage.dart';
import 'package:rick_and_morty_new/presentation/pages/character/CharacterController.dart';
import 'package:rick_and_morty_new/presentation/themes/Colors.dart';
import 'package:rick_and_morty_new/presentation/widgets/CharacterCard.dart';
import 'package:rick_and_morty_new/presentation/widgets/dropdown/CustomBasicDropdown.dart';
import 'package:rick_and_morty_new/utils/RequestState.dart';

import '../../widgets/textinput/CustomBasicTextField.dart';

class CharacterScreen extends ConsumerStatefulWidget {
  const CharacterScreen({super.key});

  @override
  ConsumerState<CharacterScreen> createState() => _CharacterScreenState();
}

class _CharacterScreenState extends ConsumerState<CharacterScreen> {
  @override
  Widget build(BuildContext context) {
    final controllerState = ref.watch(characterControllerProvider);
    final controller = ref.watch(characterControllerProvider.notifier);

    final dataCharacterState = controllerState.dataCharacterState;

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
                  color: CustomColors.white,
                ),
              ),
            ),
          ),
          const SizedBox(height: 12),
          Expanded(
            child: RefreshIndicator(
              onRefresh: () async {
                controller.fetchAllCharacter();
              },
              child: _buildBody(dataCharacterState, controller),
            ),
          ),
        ],
      ),
    );
  }

  void _showBottomSheet(BuildContext context, CharacterController controller) {
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
          initialChildSize: 0.57,
          minChildSize: 0.57,
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
                child: Consumer(
                  builder: (context, ref, child) {
                    final state = ref.watch(characterControllerProvider);
                    return Column(
                      children: [
                        customBasicTextField(
                          controller.nameTextC,
                          'Search Name',
                          Icons.search,
                        ),
                        const SizedBox(height: 16),
                        Row(
                          children: [
                            Expanded(
                              child: customBasicDropdown(
                                state.gender,
                                controller.getAllGender,
                                (newValue) {
                                  controller.handleDataGender(
                                    newValue ?? 'All',
                                  );
                                },
                              ),
                            ),
                            const SizedBox(width: 8),
                            Expanded(
                              child: customBasicDropdown(
                                state.status,
                                controller.getAllStatus,
                                (newValue) {
                                  controller.handleDataStatus(
                                    newValue ?? 'All',
                                  );
                                },
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(height: 16),
                        customBasicTextField(
                          controller.nameSpeciesController,
                          'Search Species',
                          Icons.search,
                        ),
                        const SizedBox(height: 16),
                        customBasicTextField(
                          controller.nameTypeController,
                          'Search Type',
                          Icons.search,
                        ),
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
                              controller.fetchAllCharacter();
                              Navigator.pop(context);
                            },
                            child: const Padding(
                              padding: EdgeInsets.symmetric(vertical: 12),
                              child: Text(
                                "Search Character",
                                style: TextStyle(
                                  fontWeight: FontWeight.w500,
                                  fontSize: 14,
                                  color: CustomColors.white,
                                ),
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
                                  color: CustomColors.white,
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    );
                  },
                ),
              ),
            );
          },
        );
      },
    );
  }

  Widget _buildBody(
    RequestState<CharacterDomainModel> state,
    CharacterController controller,
  ) {
    return state.when(
      idle: () => const Center(child: Text("Silakan cari character")),
      loading: () => const Center(child: CircularProgressIndicator()),
      success: (data) {
        if (data.results.isEmpty) {
          return const Center(child: Text("Tidak ada hasil"));
        }

        return GridView.builder(
          controller: controller.scrollC,
          padding: const EdgeInsets.only(bottom: 12),
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            crossAxisSpacing: 10,
            mainAxisSpacing: 15,
            childAspectRatio: 0.75,
          ),
          itemCount: data.results.length,
          itemBuilder: (context, index) {
            if (index < data.results.length) {
              final character = data.results[index];
              return CharacterCard(
                character: character,
                navigation: () {
                  Navigator.pushNamed(
                    context,
                    RoutePage.characterDetail.path,
                    arguments: character,
                  );
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
