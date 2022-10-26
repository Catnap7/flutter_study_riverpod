import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:study_riverpod/layout/default_layout.dart';
import 'package:study_riverpod/riverpod/state_provider.dart';

// ConsumerWidget은 riverpod widget
class StateProviderScreen extends ConsumerWidget {
  const StateProviderScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final provider = ref.watch(numberProvider);

    return DefaultLayout(
      title: 'StateProviderScreen',
      body: SizedBox(
        width: MediaQuery.of(context).size.width,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              provider.toString(),
            ),
            ElevatedButton(
              onPressed: (){
                ref.read(numberProvider.notifier).update((state) => state +1);
              },
              child: Text('UP'),
            ),
            ElevatedButton(
              onPressed: (){
                ref.read(numberProvider.notifier).state =
                    ref.read(numberProvider.notifier).state - 1 ;
              },
              child: Text('DOWN'),
            ),
            ElevatedButton(
              onPressed: (){
                // ref.read(numberProvider.notifier).update((state) => state +1);
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) => const _NextScreen(),
                  ),
                );
              },
              child: Text('NEXT SCREEN'),
            ),
          ],
        ),
      ),
    );
  }
}

class _NextScreen extends ConsumerWidget {
  const _NextScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {

    final provider = ref.watch(numberProvider);

    return DefaultLayout(
      title: 'StateProviderScreen',
      body: SizedBox(
        width: MediaQuery.of(context).size.width,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              provider.toString(),
            ),

          ],
        ),
      ),
    );
  }
}

