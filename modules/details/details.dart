import 'package:flutter/material.dart';
import 'Button.dart';
import 'Image.dart';
import 'Text.dart';
import 'Title.dart';

class DetailsRoute extends StatelessWidget {
  const DetailsRoute({super.key});

  @override
  Widget build(BuildContext context) {
    const String appTitle = 'Flutter layout demo';
    return MaterialApp(
      title: appTitle,
      home: Scaffold(
        appBar: AppBar(
          title: const Text(appTitle),
        ),
        // #docregion add-widget
        body: const SingleChildScrollView(
          child: Column(
            children: [
              ImageSection(
                image: 'assets/images/lake.jpg',
              ),
              TitleSection(
                name: 'Oeschinen Lake Campground',
                location: 'Kandersteg, Switzerland',
              ),
              ButtonSection(),
              TextSection(
                description:
                    'Lake Oeschinen lies at the foot of the Blüemlisalp in the '
                    'Bernese Alps. Situated 1,578 meters above sea level, it '
                    'is one of the larger Alpine Lakes. A gondola ride from '
                    'Kandersteg, followed by a half-hour walk through pastures '
                    'and pine forest, leads you to the lake, which warms to 20 '
                    'degrees Celsius in the summer. Activities enjoyed here '
                    'include rowing, and riding the summer toboggan run.',
              ),
              // TabBarDemo()
            ],
          ),
        ),

        // #enddocregion add-widget
      ),
    );
  }
}
