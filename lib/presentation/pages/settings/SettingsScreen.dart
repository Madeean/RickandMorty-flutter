import 'package:flutter/material.dart';
import 'package:rickandmortyapp/presentation/navigation/RoutePage.dart';
import 'package:rickandmortyapp/presentation/themes/Colors.dart';

class SettingsScreen extends StatelessWidget {
  const SettingsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final items = [
      {
        'icon': Icons.heart_broken,
        'title': 'Favorite List',
        'onTap': () {
          print('Tapped Help');
        },
      },
      {
        'icon': Icons.warning,
        'title': 'About this application',
        'onTap': () {
          Navigator.pushNamed(context, RoutePage.about.path);
        },
      },
    ];

    return ListView.separated(
      separatorBuilder: (_, __) => const Divider(
        height: 1,
        color: CustomColors.hitam,
      ),
      itemCount: items.length,
      itemBuilder: (context, index) {
        final item = items[index];
        return Container(
          color: CustomColors.white,
          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 10),
          child: InkWell(
            onTap: item['onTap'] as Function(),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Icon(item['icon'] as IconData, size: 24),
                    const SizedBox(width: 10),
                    Text(item['title'] as String,
                        style: const TextStyle(fontSize: 16)),
                  ],
                ),
                const Icon(Icons.chevron_right, size: 24),
              ],
            ),
          ),
        );
      },
    );
  }
}
