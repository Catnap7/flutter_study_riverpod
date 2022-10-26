import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:study_riverpod/layout/default_layout.dart';

class ListenProviderScreen extends ConsumerStatefulWidget {
  const ListenProviderScreen({Key? key}) : super(key: key);

  @override
  ConsumerState<ListenProviderScreen> createState() => _ListenProviderScreenState();
}

class _ListenProviderScreenState extends ConsumerState<ListenProviderScreen> {
  late final TabController controller;

  

  @override
  Widget build(BuildContext context) {
    return DefaultLayout(
      title: 'ListenProviderScreen',
      body: Column(
        children: [
          Text('ListenProviderScreen'),
        ],
      ),
    );
  }
}
