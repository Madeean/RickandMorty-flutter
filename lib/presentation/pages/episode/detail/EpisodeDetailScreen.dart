import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:rick_and_morty_new/domain/character/model/CharacterDomainModel.dart';
import 'package:rick_and_morty_new/domain/episode/model/EpisodeDomainModel.dart';
import 'package:rick_and_morty_new/presentation/pages/episode/detail/EpisodeDetailController.dart';

import '../../../../utils/RequestState.dart';
import '../../../themes/Colors.dart';
import '../../../widgets/CharacterCard.dart';

class EpisodeDetailScreen extends ConsumerStatefulWidget {
  final EpisodeDetailDomainModel episode;

  const EpisodeDetailScreen({super.key, required this.episode});

  @override
  ConsumerState<EpisodeDetailScreen> createState() =>
      _EpisodeDetailScreenState();
}

class _EpisodeDetailScreenState extends ConsumerState<EpisodeDetailScreen> {
  @override
  Widget build(BuildContext context) {
    final controllerState = ref.watch(
      episodeDetailControllerProvider(widget.episode),
    );
    final controller = ref.watch(
      episodeDetailControllerProvider(widget.episode).notifier,
    );

    final dataCharacterState = controllerState.dataCharacterState;

    return Scaffold(
      backgroundColor: CustomColors.abuAbuMuda,
      appBar: AppBar(
        backgroundColor: CustomColors.biru,
        title: Text(
          "Episode ${widget.episode.name}",
          style: const TextStyle(color: CustomColors.white),
        ),
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
            bottomLeft: Radius.circular(16),
            bottomRight: Radius.circular(16),
          ),
        ),
        foregroundColor: CustomColors.white,
      ),
      body: SingleChildScrollView(
        controller: controller.scrollC,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Align(
              alignment: Alignment.centerRight,
              child: Container(
                decoration: BoxDecoration(
                  color: CustomColors.white,
                  borderRadius: BorderRadius.all(Radius.circular(8)),
                ),
                margin: EdgeInsets.all(16),
                padding: EdgeInsets.all(16),
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Text("Favorite"),
                    SizedBox(width: 8),
                    GestureDetector(
                      onTap: controller.onClickFavorite,
                      child: Icon(
                        controller.isFavorite
                            ? Icons.favorite
                            : Icons.favorite_border,
                        color: CustomColors.merah,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(height: 16),
            Container(
              decoration: BoxDecoration(
                color: CustomColors.white,
                borderRadius: BorderRadius.all(Radius.circular(8)),
              ),
              margin: EdgeInsets.all(16),
              padding: EdgeInsets.all(16),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Name",
                    style: TextStyle(
                      fontWeight: FontWeight.w600,
                      fontSize: 18,
                      color: CustomColors.hitam,
                    ),
                  ),
                  Text(
                    widget.episode.name,
                    style: TextStyle(
                      fontWeight: FontWeight.w400,
                      fontSize: 16,
                      color: CustomColors.hitam,
                    ),
                  ),
                  Text(
                    "Air Date",
                    style: TextStyle(
                      fontWeight: FontWeight.w600,
                      fontSize: 18,
                      color: CustomColors.hitam,
                    ),
                  ),
                  Text(
                    widget.episode.airDate,
                    style: TextStyle(
                      fontWeight: FontWeight.w400,
                      fontSize: 16,
                      color: CustomColors.hitam,
                    ),
                  ),
                  Text(
                    "Episode",
                    style: TextStyle(
                      fontWeight: FontWeight.w600,
                      fontSize: 18,
                      color: CustomColors.hitam,
                    ),
                  ),
                  Text(
                    widget.episode.episode,
                    style: TextStyle(
                      fontWeight: FontWeight.w400,
                      fontSize: 16,
                      color: CustomColors.hitam,
                    ),
                  ),
                ],
              ),
            ),
            Container(
              width: double.infinity,
              decoration: BoxDecoration(
                color: CustomColors.white,
                borderRadius: BorderRadius.vertical(top: Radius.circular(40)),
              ),
              padding: EdgeInsets.all(16),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Center(child: Text("Character")),
                  _buildBody(dataCharacterState, controller),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildBody(
    RequestState<List<CharacterDetailDomainModel>> state,
    EpisodeDetailController controller,
  ) {
    return state.when(
      idle: () => const Center(child: Text("Data tidak ditemukan")),
      loading: () => const Center(child: CircularProgressIndicator()),
      success: (data) {
        if (data.isEmpty) {
          return const Center(child: Text("Tidak ada hasil"));
        }

        return GridView.builder(
          shrinkWrap: true,
          physics: NeverScrollableScrollPhysics(),
          padding: const EdgeInsets.only(bottom: 12),
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            crossAxisSpacing: 10,
            mainAxisSpacing: 15,
            childAspectRatio: 0.75,
          ),
          itemCount: data.length,
          itemBuilder: (context, index) {
            final character = data[index];
            return CharacterCard(character: character);
          },
        );
      },
      error: (msg) => Center(child: Text("Error: $msg")),
    );
  }
}
