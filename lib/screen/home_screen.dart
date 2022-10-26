import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:study_riverpod/layout/default_layout.dart';
import 'package:study_riverpod/screen/auto_dispose_modifier_screen.dart';
import 'package:study_riverpod/screen/family_modifier_screen.dart';
import 'package:study_riverpod/screen/future_provider_screen.dart';
import 'package:study_riverpod/screen/state_notifier_provider_screen.dart';
import 'package:study_riverpod/screen/state_provider_screen.dart';
import 'package:study_riverpod/screen/stream_provider_screen.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultLayout(
      title: 'HomeScreen',
      body: ListView(
        children: [
          ElevatedButton(
              onPressed: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) => const StateProviderScreen(),
                  ),
                );
              },
              child: Text('StateProviderScreen'),
          ),
          ElevatedButton(
            onPressed: () {
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (context) => const StateNotifierProviderScreen(),
                ),
              );
            },
            child: Text('StateProviderScreen'),
          ),
          ElevatedButton(
            onPressed: () {
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (context) => const FutureProviderScreen(),
                ),
              );
            },
            child: Text('FutureProviderScreen'),
          ),
          ElevatedButton(
            onPressed: () {
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (context) => const StreamProviderScreen(),
                ),
              );
            },
            child: Text('StreamProviderScreen'),
          ),
          ElevatedButton(
            onPressed: () {
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (context) => const FamilyModifierScreen(),
                ),
              );
            },
            child: Text('FamilyModifierScreen'),
          ),
          ElevatedButton(
            onPressed: () {
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (context) => const AutoDisposeModifierScreen(),
                ),
              );
            },
            child: Text('AutoDisposeModifierScreen'),
          ),
        ],
      ),
    );
  }
}
