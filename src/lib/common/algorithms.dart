List<List<T>> permutationOf<T>(List<T> list, int size) {
  final output = <List<T>>[];
  _permute<T>(list, size, [], 0, output);
  return output;
}

Stream<List<T>> streammedPermutationOf<T>(List<T> list, int size) async* {
  yield* _streammedPermute<T>(list, size, [], 0);
}

void _permute<T>(
  List<T> list,
  int size,
  List<T> result,
  int level,
  List<List<T>> output,
) {
  if (level == size) {
    final permutation = List<T>.of(result);
    output.add(permutation);
    return;
  }

  for (int i = 0; i < list.length; i++) {
    result.add(list[i]);
    _permute<T>(list, size, result, level + 1, output);
    result.removeLast();
  }
}

Stream<List<T>> _streammedPermute<T>(
  List<T> list,
  int size,
  List<T> result,
  int level,
) async* {
  if (level == size) {
    final permutation = List<T>.of(result);
    // yield permutation;
    count++;
    if (count % 1000000 == 0) {
      count = 0;
      millions += 1;
      print('$millions millions');
    }
    return;
  }

  for (int i = 0; i < list.length; i++) {
    result.add(list[i]);
    yield* _streammedPermute<T>(list, size, result, level + 1);
    result.removeLast();
  }
}

bool removed = false;
int count = 0;
int millions = 0;
