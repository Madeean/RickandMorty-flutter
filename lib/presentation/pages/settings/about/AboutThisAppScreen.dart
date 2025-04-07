import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:rickandmortyapp/presentation/themes/Colors.dart';

class AboutThisAppScreen extends ConsumerStatefulWidget {
  const AboutThisAppScreen({super.key});

  @override
  ConsumerState createState() => _AboutThisAppScreenState();
}

class _AboutThisAppScreenState extends ConsumerState<AboutThisAppScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: CustomColors.abuAbuMuda,
        appBar: AppBar(
          backgroundColor: CustomColors.biru,
          title: const Text(
            "About This Application",
            style: TextStyle(color: CustomColors.white),
          ),
          shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(16),
              bottomRight: Radius.circular(16),
            ),
          ),
          foregroundColor: CustomColors.white,
        ),
        body: Padding(
          padding: const EdgeInsets.all(12),
          child: SingleChildScrollView(
            child: Column(
              children: [
                Image.asset('assets/rickandmorty.png'),
                const Text("Lorem ipsum dolor sit amet, consectetur adipiscing elit. "
                    "Maecenas gravida risus euismod, vulputate leo id, pharetra "
                    "magna. Proin pulvinar, mauris sit amet interdum tincidunt, "
                    "magna eros porttitor arcu, vitae posuere justo leo ut massa. "
                    "Vivamus feugiat viverra purus, ac ornare elit volutpat non. "
                    "Aliquam erat volutpat. Aliquam gravida consectetur placerat. "
                    "Etiam vitae libero eros. Nulla metus augue, ornare vel arcu et, "
                    "consectetur luctus mauris.")
              ],
            ),
          ),
        ));
  }
}
