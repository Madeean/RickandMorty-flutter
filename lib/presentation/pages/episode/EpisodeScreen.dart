import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:rick_and_morty_new/domain/episode/model/EpisodeDomainModel.dart';
import 'package:rick_and_morty_new/presentation/navigation/RoutePage.dart';
import 'package:rick_and_morty_new/presentation/pages/episode/EpisodeController.dart';
import 'package:rick_and_morty_new/presentation/themes/Colors.dart';
import 'package:rick_and_morty_new/presentation/widgets/InformationCard.dart';
import 'package:rick_and_morty_new/utils/RequestState.dart';

class EpisodeScreen extends ConsumerStatefulWidget {
  const EpisodeScreen({super.key});

  @override
  ConsumerState<EpisodeScreen> createState() => _EpisodeScreenState();
}

class _EpisodeScreenState extends ConsumerState<EpisodeScreen> {
  @override
  Widget build(BuildContext context) {
    final controllerState = ref.watch(episodeControllerProvider);
    final controller = ref.watch(episodeControllerProvider.notifier);

    final dataEpisodeState = controllerState.dataEpisodeState;

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
                borderSide: const BorderSide(
                  color: CustomColors.biru,
                  width: 2,
                ),
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
              child: _buildBody(dataEpisodeState, controller),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildBody(RequestState<EpisodeDomainModel> state,
      EpisodeController controller,) {
    return state.when(
      idle: () => const Center(child: Text("Silakan cari episode")),
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
              final episode = data.results[index];
              return InformationCard(
                date: episode.airDate,
                description: episode.episode,
                title: episode.name,
                navigation: () {
                  Navigator.pushNamed(context, RoutePage.episodeDetail.path,
                      arguments: episode);
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
