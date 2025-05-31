import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:rick_and_morty_new/domain/character/model/CharacterDomainModel.dart';

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
    return const Placeholder();
  }
}
