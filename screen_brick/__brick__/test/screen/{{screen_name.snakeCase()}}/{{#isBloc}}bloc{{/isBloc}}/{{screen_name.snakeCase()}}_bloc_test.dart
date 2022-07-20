import 'package:bloc_test/bloc_test.dart';
import 'package:{{{fullPath}}}/bloc/bloc.dart';

void main() {
  blocTest(
    'emits [] when nothing is added',
    build: () => {{screen_name.pascalCase()}}Bloc(),
    expect: () => [],
  );
}
