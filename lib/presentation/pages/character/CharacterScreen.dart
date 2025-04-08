import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:rickandmortyapp/domain/character/model/CharacterDomainModel.dart';
import 'package:rickandmortyapp/presentation/pages/character/CharacterController.dart';
import 'package:rickandmortyapp/presentation/pages/character/viewmodel/CharacterViewModel.dart';
import 'package:rickandmortyapp/presentation/themes/Colors.dart';
import 'package:rickandmortyapp/presentation/widgets/CharacterCard.dart';
import 'package:rickandmortyapp/utils/RequestState.dart';

class CharacterScreen extends ConsumerStatefulWidget {
  const CharacterScreen({super.key});

  @override
  ConsumerState<CharacterScreen> createState() => _CharacterScreenState();
}

class _CharacterScreenState extends ConsumerState<CharacterScreen> {
  late CharacterController controller;

  @override
  void initState() {
    super.initState();
    controller = ref.read(episodeControllerProvider);
    controller.initScrollController();

    if (controller.shouldFetchAllCharacter()) {
      Future.microtask(() {
        controller.fetchAllCharacter();
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
    final state = ref.watch(characterViewModelProvider);
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
              _showBottomSheet(context);
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
                controller.fetchAllCharacter();
              },
              child: _buildBody(state.character),
            ),
          ),
        ],
      ),
    );
  }

  void _showBottomSheet(BuildContext context) {
    showModalBottomSheet(
      useSafeArea: true,
      context: context,
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.vertical(top: Radius.circular(16)),
      ),
      isScrollControlled: true,
      builder: (context) {
        return DraggableScrollableSheet(
          initialChildSize: 0.5,
          minChildSize: 0.5,
          maxChildSize: 1.0,
          expand: false,
          builder: (context, scrollController) {
            return Container(
              padding: const EdgeInsets.all(16),
              decoration: const BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.vertical(top: Radius.circular(16)),
              ),
              child: ListView(
                controller: scrollController,
                children: const [
                  Text(
                    "Hai dari Bottom Sheet",
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(height: 16),
                  Text("Scroll ke atas untuk memperluas"),
                  SizedBox(height: 600), // biar bisa di-scroll
                ],
              ),
            );
          },
        );
      },
    );
  }

  Widget _buildBody(RequestState<CharacterDomainModel> state) {
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
          itemCount: data.results.length + 1,
          itemBuilder: (context, index) {

            if (index < data.results.length) {
              final character = data.results[index];
              return CharacterCard(
                character: character,
              );
            } else {
              final vm = ref.read(characterViewModelProvider.notifier);
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
