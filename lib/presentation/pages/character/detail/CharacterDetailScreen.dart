import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:rick_and_morty_new/domain/character/model/CharacterDomainModel.dart';
import 'package:rick_and_morty_new/domain/episode/model/EpisodeDomainModel.dart';
import 'package:rick_and_morty_new/presentation/navigation/RoutePage.dart';
import 'package:rick_and_morty_new/presentation/pages/character/detail/CharacterDetailController.dart';
import 'package:rick_and_morty_new/presentation/utils/Utils.dart';
import 'package:rick_and_morty_new/presentation/widgets/InformationCard.dart';
import 'package:rick_and_morty_new/utils/RequestState.dart';

import '../../../themes/Colors.dart';

class CharacterDetailScreen extends ConsumerStatefulWidget {
  final CharacterDetailDomainModel character;

  const CharacterDetailScreen({super.key, required this.character});

  @override
  ConsumerState<CharacterDetailScreen> createState() =>
      _CharacterDetailScreenState();
}

class _CharacterDetailScreenState extends ConsumerState<CharacterDetailScreen> {
  @override
  Widget build(BuildContext context) {
    final controllerState = ref.watch(
      characterDetailControllerProvider(widget.character),
    );
    final controller = ref.watch(
      characterDetailControllerProvider(widget.character).notifier,
    );

    final dataEpisodeState = controllerState.dataEpisodeState;

    return Scaffold(
      backgroundColor: CustomColors.abuAbuMuda,
      appBar: AppBar(
        backgroundColor: CustomColors.biru,
        title: Text(
          "Character ${widget.character.name}",
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
        // controller: controller.scrollC,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              decoration: BoxDecoration(
                color: CustomColors.white,
                borderRadius: BorderRadius.circular(8),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withOpacity(0.2),
                    offset: const Offset(0, 2),
                    blurRadius: 6,
                    spreadRadius: 0,
                  ),
                ],
              ),
              margin: EdgeInsets.only(top: 16, left: 16, right: 16),
              alignment: Alignment.center,
              child: AspectRatio(
                aspectRatio: 1,
                child: ClipRRect(
                  borderRadius: const BorderRadius.all(Radius.circular(8)),
                  child: CachedNetworkImage(
                    imageUrl: widget.character.image,
                    placeholder:
                        (context, url) => const CircularProgressIndicator(),
                    errorWidget:
                        (context, url, error) => const Icon(Icons.error),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ),
            Align(
              alignment: Alignment.centerRight,
              child: Container(
                decoration: BoxDecoration(
                  color: CustomColors.white,
                  borderRadius: BorderRadius.all(Radius.circular(8)),
                ),
                margin: EdgeInsets.only(top: 16, left: 16, right: 16),
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
            Container(
              width: double.infinity,
              decoration: BoxDecoration(
                color: CustomColors.white,
                borderRadius: BorderRadius.all(Radius.circular(8)),
              ),
              margin: EdgeInsets.only(top: 16, left: 16, right: 16),
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
                    widget.character.name,
                    style: TextStyle(
                      fontWeight: FontWeight.w400,
                      fontSize: 16,
                      color: CustomColors.hitam,
                    ),
                  ),
                  Text(
                    "Status",
                    style: TextStyle(
                      fontWeight: FontWeight.w600,
                      fontSize: 18,
                      color: CustomColors.hitam,
                    ),
                  ),
                  Text(
                    widget.character.status,
                    style: TextStyle(
                      fontWeight: FontWeight.w400,
                      fontSize: 16,
                      color: CustomColors.hitam,
                    ),
                  ),
                  Text(
                    "Spesies",
                    style: TextStyle(
                      fontWeight: FontWeight.w600,
                      fontSize: 18,
                      color: CustomColors.hitam,
                    ),
                  ),
                  Text(
                    widget.character.species,
                    style: TextStyle(
                      fontWeight: FontWeight.w400,
                      fontSize: 16,
                      color: CustomColors.hitam,
                    ),
                  ),
                  Text(
                    "Type",
                    style: TextStyle(
                      fontWeight: FontWeight.w600,
                      fontSize: 18,
                      color: CustomColors.hitam,
                    ),
                  ),
                  Text(
                    widget.character.type.ifEmpty("Unknown"),
                    style: TextStyle(
                      fontWeight: FontWeight.w400,
                      fontSize: 16,
                      color: CustomColors.hitam,
                    ),
                  ),
                  Text(
                    "Gender",
                    style: TextStyle(
                      fontWeight: FontWeight.w600,
                      fontSize: 18,
                      color: CustomColors.hitam,
                    ),
                  ),
                  Text(
                    widget.character.gender,
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
                borderRadius: BorderRadius.all(Radius.circular(8)),
              ),
              margin: EdgeInsets.only(top: 16, left: 16, right: 16),
              padding: EdgeInsets.all(16),
              child: Column(
                children: [
                  Text(
                    "Location",
                    style: TextStyle(
                      fontWeight: FontWeight.w600,
                      fontSize: 18,
                      color: CustomColors.hitam,
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(widget.character.location.name),
                      ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          backgroundColor: CustomColors.biru,
                          padding: EdgeInsets.zero,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(24),
                          ),
                        ),
                        onPressed: () {
                          // _showBottomSheet(context, controller);
                        },
                        child: const Padding(
                          padding: EdgeInsets.symmetric(horizontal: 18),
                          child: Text(
                            "Detail",
                            style: TextStyle(
                              fontWeight: FontWeight.w500,
                              fontSize: 14,
                              color: CustomColors.white,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            Container(
              width: double.infinity,
              decoration: BoxDecoration(
                color: CustomColors.white,
                borderRadius: BorderRadius.all(Radius.circular(8)),
              ),
              margin: EdgeInsets.only(top: 16, left: 16, right: 16),
              padding: EdgeInsets.all(16),
              child: Column(
                children: [
                  Text(
                    "Origin",
                    style: TextStyle(
                      fontWeight: FontWeight.w600,
                      fontSize: 18,
                      color: CustomColors.hitam,
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(widget.character.origin.name),
                      ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          backgroundColor: CustomColors.biru,
                          padding: EdgeInsets.zero,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(24),
                          ),
                        ),
                        onPressed: () {
                          // _showBottomSheet(context, controller);
                        },
                        child: const Padding(
                          padding: EdgeInsets.symmetric(horizontal: 18),
                          child: Text(
                            "Detail",
                            style: TextStyle(
                              fontWeight: FontWeight.w500,
                              fontSize: 14,
                              color: CustomColors.white,
                            ),
                          ),
                        ),
                      ),
                    ],
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
              margin: EdgeInsets.only(top: 16),
              padding: EdgeInsets.all(16),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Center(child: Text("Episode")),
                  _buildBody(dataEpisodeState, controller),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildBody(
    RequestState<List<EpisodeDetailDomainModel>> state,
    CharacterDetailController controller,
  ) {
    return state.when(
      idle: () => const Center(child: Text("Data tidak ditemukan")),
      loading: () => const Center(child: CircularProgressIndicator()),
      success: (data) {
        if (data.isEmpty) {
          return const Center(child: Text("Tidak ada hasil"));
        }

        return ListView.separated(
          shrinkWrap: true,
          physics: NeverScrollableScrollPhysics(),
          itemCount: data.length,
          separatorBuilder: (_, __) => const SizedBox(height: 8),
          itemBuilder: (_, index) {
            final episode = data[index];
            return InformationCard(
              date: episode.airDate,
              description: episode.episode,
              title: episode.name,
              navigation: () {
                Navigator.pushNamed(
                  context,
                  RoutePage.episodeDetail.path,
                  arguments: episode,
                );
              },
            );
          },
        );
      },
      error: (msg) => Center(child: Text("Error: $msg")),
    );
  }
}
