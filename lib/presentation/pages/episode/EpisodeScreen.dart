import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:rickandmortyapp/domain/episode/model/EpisodeDomainModel.dart';
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
  final TextEditingController _controller = TextEditingController();

  @override
  void initState() {
    super.initState();
    // Trigger fetch pertama kali
    Future.microtask(() {
      ref.read(episodeViewModelProvider.notifier).fetchEpisodes(_controller.text);
    });
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
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
            onEditingComplete: () {
              final name = _controller.text.trim();
              ref.read(episodeViewModelProvider.notifier).fetchEpisodes(name);
            },
            controller: _controller,
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
            child: _buildBody(state.episode),
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
          itemCount: data.results.length,
          separatorBuilder: (_, __) => const SizedBox(height: 8),
          itemBuilder: (_, index) {
            final episode = data.results[index];
            return InformationCard(episode: episode,);
          },
        );
      },
      error: (msg) => Center(child: Text("Error: $msg")),
    );
  }
}
