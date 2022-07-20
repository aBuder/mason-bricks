import 'package:bloc_test/bloc_test.dart';
import 'package:{{{fullPath}}}/cubit/cubit.dart';

void main() {
  blocTest(
    'emits [] when nothing is added',
    build: () => {{screen_name.pascalCase()}}Cubit(),
    expect: () => [],
  );
}
