import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:rickandmortyapp/domain/episode/model/EpisodeDomainModel.dart';
import 'package:rickandmortyapp/presentation/pages/episode/EpisodeController.dart';
import 'package:rickandmortyapp/presentation/pages/episode/viewmodel/EpisodeViewModel.dart';
import 'package:rickandmortyapp/presentation/themes/Colors.dart';
import 'package:rickandmortyapp/presentation/widgets/InformationCard.dart';
import 'package:rickandmortyapp/utils/RequestState.dart';

class EpisodeScreen extends ConsumerStatefulWidget {
  const EpisodeScreen({super.key});

  @override
  ConsumerState<EpisodeScreen> createState() => _EpisodeScreenState();
}

class _EpisodeScreenState extends ConsumerState<EpisodeScreen> {
  late EpisodeController controller;
  late ScrollController scrollController;

  @override
  void initState() {
    super.initState();
    controller = ref.read(episodeControllerProvider);
    scrollController = ScrollController()..addListener(_onScroll);

    if (controller.shouldFetchAllEpisode()) {
      Future.microtask(() {
        controller.fetchAllEpisode();
      });
    }
  }

  @override
  void dispose() {
    scrollController.dispose();
    super.dispose();
  }

  void _onScroll() {
    if (scrollController.position.pixels >=
        scrollController.position.maxScrollExtent - 300) {
      controller.viewModel.loadMore(controller.searchController.text.trim());
    }
  }

  @override
  Widget build(BuildContext context) {
    final state = ref.watch(episodeViewModelProvider);
    return Container(
      color: CustomColors.abuAbuMuda,
      padding: const EdgeInsets.only(right: 16, left: 16, top: 16),
      child: Column(
        children: [
          TextField(
            onChanged: controller.onSearchChanged,
            controller: controller.searchController,
            decoration: InputDecoration(
              hintText: 'Search Episode',
              prefixIcon: const Icon(Icons.search),
              enabledBorder: OutlineInputBorder(
                borderSide: const BorderSide(color: CustomColors.hitam),
                borderRadius: BorderRadius.circular(12),
              ),
              focusedBorder: OutlineInputBorder(
                borderSide:
                    const BorderSide(color: CustomColors.biru, width: 2),
                borderRadius: BorderRadius.circular(12),
              ),
            ),
          ),
          const SizedBox(height: 12),
          Expanded(
            child: RefreshIndicator(
                onRefresh: () async {
                  controller.fetchAllEpisode();
                },
                child: _buildBody(state.episode)),
          ),
        ],
      ),
    );
  }

  Widget _buildBody(RequestState<EpisodeDomainModel> state) {
    return state.when(
      idle: () => const Center(child: Text("Silakan cari episode")),
      loading: () => const Center(child: CircularProgressIndicator()),
      success: (data) {
        if (data.results.isEmpty) {
          return const Center(child: Text("Tidak ada hasil"));
        }

        return ListView.separated(
          controller: scrollController,
          itemCount: data.results.length + 1,
          separatorBuilder: (_, __) => const SizedBox(height: 8),
          itemBuilder: (_, index) {
            if (index < data.results.length) {
              final episode = data.results[index];
              return InformationCard(
                date: episode.airDate,
                description: episode.episode,
                title: episode.name,
              );
            } else {
              final vm = ref.read(episodeViewModelProvider.notifier);
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
