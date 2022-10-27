import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:study_riverpod/layout/default_layout.dart';
import 'package:study_riverpod/riverpod/select_provider.dart';

class SelectProviderScreen extends ConsumerWidget {
  const SelectProviderScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    // 모든 값을 리빌드하면 리소스가 낭비되기때문에 특정 값이 변경될때만 리빌드함. 최적화관련
    final state = ref.watch(selectProvider.select((value) => value.isSpicy));

    // 마찬가지로 hasBought 값이 변경될때만 listen이 실행됨
    ref.listen(selectProvider.select((value) => value.hasBought),
        (previous, next) {
      print('next: $next');
    });

    return DefaultLayout(
      title: 'SelectProviderScreen',
      body: SizedBox(
        width: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            /*Text(
              state.name,
            ),
            Text(
              state.quantity.toString(),
            ),
            Text(
              state.hasBought.toString(),
            ),*/
            Text(
              state.toString(),
            ),
            ElevatedButton(
              onPressed: () {
                ref.read(selectProvider.notifier).toggleHasBought();
              },
              child: Text('toggleHasBought'),
            ),
            ElevatedButton(
              onPressed: () {
                ref.read(selectProvider.notifier).toggleIsSpicy();
              },
              child: Text('toggleIsSpicy'),
            ),
          ],
        ),
      ),
    );
  }
}
