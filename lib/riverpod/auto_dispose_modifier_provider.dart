import 'package:flutter_riverpod/flutter_riverpod.dart';


// 자동으로 캐싱된 데이터를 삭제함
// 즉, 버튼 누를때 마다 데이터를 계속 새로 받아옴 ( 캐싱된 데이터를 삭제함 )
// 해당 프로바이더나 데이터가 더 이상 쓰이지 않거나 사용되는 곳이 없다면 지워버림
final autoDisposeModifierProvider =
    FutureProvider.autoDispose<List<int>>((ref)  async {
  await Future.delayed(const Duration(seconds: 2));

  return [1, 2, 3, 4, 5];
});