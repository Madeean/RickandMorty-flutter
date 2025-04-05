import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:rickandmortyapp/presentation/pages/home/HomeController.dart';
import 'package:rickandmortyapp/presentation/themes/Colors.dart';

class HomeScreen extends ConsumerWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final controller = ref.read(homeControllerProvider.notifier);
    final state = ref.watch(homeControllerProvider);

    return Scaffold(
      backgroundColor: CustomColors.abuAbuMuda,
      appBar: AppBar(
        backgroundColor: CustomColors.biru,
        title: Text(
          controller.appBarTitle,
          style: const TextStyle(color: CustomColors.white),
        ),
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
            bottomLeft: Radius.circular(16),
            bottomRight: Radius.circular(16),
          ),
        ),
      ),
      body: controller.currentScreen,
      bottomNavigationBar: ClipRRect(
        borderRadius: const BorderRadius.only(
          topLeft: Radius.circular(16),
          topRight: Radius.circular(16),
        ),
        child: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          backgroundColor: CustomColors.biru,
          unselectedItemColor: CustomColors.hitam,
          showUnselectedLabels: false,
          items: controller.items.map<BottomNavigationBarItem>((item) {
            return BottomNavigationBarItem(
              icon: Padding(
                padding: const EdgeInsets.only(top: 8),
                child: Icon(item.icon),
              ),
              label: item.label,
            );
          }).toList(),
          currentIndex: state.selectedIndex,
          selectedItemColor: CustomColors.white,
          onTap: controller.onItemTapped,
        ),
      ),
    );
  }
}
