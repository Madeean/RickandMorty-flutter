import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:rickandmortyapp/presentation/pages/character/CharacterScreen.dart';
import 'package:rickandmortyapp/presentation/pages/episode/EpisodeScreen.dart';
import 'package:rickandmortyapp/presentation/pages/home/model/BottomNavBarItemModel.dart';
import 'package:rickandmortyapp/presentation/pages/location/LocationScreen.dart';
import 'package:rickandmortyapp/presentation/pages/settings/SettingsScreen.dart';

class HomeState {
  final int selectedIndex;

  const HomeState({this.selectedIndex = 0});

  HomeState copyWith({int? selectedIndex}) {
    return HomeState(selectedIndex: selectedIndex ?? this.selectedIndex);
  }
}

class HomeController extends Notifier<HomeState> {
  @override
  HomeState build() {
    return const HomeState();
  }

  void onItemTapped(int index) {
    state = state.copyWith(selectedIndex: index);
  }

  final bottomNavBarItems = [
    const BottomNavBarItemModel(screen: EpisodeScreen(), appBarText: "Episode", icon: Icons.home, label: 'Episode'),
    const BottomNavBarItemModel(screen: CharacterScreen(), appBarText: "Character", icon: Icons.person, label: 'Character'),
    const BottomNavBarItemModel(screen: LocationScreen(), appBarText: "Location", icon: Icons.location_on, label: 'Location'),
    const BottomNavBarItemModel(screen: SettingsScreen(), appBarText: "Settings", icon: Icons.settings, label: 'Settings'),
  ];

  String get appBarTitle =>
      bottomNavBarItems[state.selectedIndex].appBarText;

  Widget get currentScreen =>
      bottomNavBarItems[state.selectedIndex].screen;

  List<BottomNavBarItemModel> get items => bottomNavBarItems;
}

final homeControllerProvider = NotifierProvider<HomeController, HomeState>(() {
  return HomeController();
});
