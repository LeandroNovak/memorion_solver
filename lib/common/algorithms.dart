List<List<T>> generatePermutations<T>(List<T> list, int listLength) {
  List<List<T>> result = [];
  _permute(list, 0, list.length - 1, result);
  return result.where((element) => element.length == listLength).toList();
}

void _permute<T>(List<T> list, int left, int right, List<List<T>> result) {
  if (left == right) {
    result.add(List<T>.from(list));
  } else {
    for (int i = left; i <= right; i++) {
      _swap(list, left, i);
      _permute(list, left + 1, right, result);
      _swap(list, left, i);
    }
  }
}

void _swap<T>(List<T> list, int i, int j) {
  var temp = list[i];
  list[i] = list[j];
  list[j] = temp;
}
