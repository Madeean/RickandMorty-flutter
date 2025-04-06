import 'package:flutter/material.dart';
import 'package:rickandmortyapp/domain/character/model/CharacterDomainModel.dart';
import 'package:rickandmortyapp/presentation/themes/Colors.dart';
import 'package:cached_network_image/cached_network_image.dart';

class CharacterCard extends StatelessWidget {
  final CharacterDetailDomainModel character;
  const CharacterCard({super.key, required this.character});

  @override
  Widget build(BuildContext context) {
    return Container(
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
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          AspectRatio(
            aspectRatio: 1, // square image
            child: ClipRRect(
              borderRadius: const BorderRadius.vertical(
                  top: Radius.circular(8)),
              child: CachedNetworkImage(
                imageUrl: character.image,
                placeholder: (context, url) => const CircularProgressIndicator(),
                errorWidget: (context, url, error) => const Icon(Icons.error),
                fit: BoxFit.cover,
              )
            ),
          ),
           Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  character.name,
                  overflow: TextOverflow.ellipsis,
                  maxLines: 1,
                  style: const TextStyle(fontWeight: FontWeight.bold),
                ),
                Text(
                  character.gender,
                  style: const TextStyle(fontWeight: FontWeight.bold, color: CustomColors.abuAbuTua),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
