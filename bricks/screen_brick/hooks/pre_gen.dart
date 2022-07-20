import 'dart:io';

import 'package:mason/mason.dart';
import 'package:yaml/yaml.dart';

Future run(HookContext context) async {
  final logger = context.logger;

  final stateManagement =
      context.vars['state_management'].toString().toLowerCase();
  final isBloc = stateManagement == 'bloc';
  final isCubit = stateManagement == 'cubit';
  final isNone = !isBloc && !isCubit;

  final immutableManagement =
      context.vars['immutable_management'].toString().toLowerCase();

  final isEquatable = immutableManagement == 'equatable';
  final isFreezed = immutableManagement == 'freezed';
  final isNoneCodeGen = !isEquatable && !isFreezed;

  final directory = Directory('${Directory.current.path}').path;

  List<String> folders = [];
  try {
    if (Platform.isWindows) {
      folders = Directory.current
          .listSync()
          .where((e) => e is Directory)
          .map((e) => e.path.split(r'\').last)
          .toList();
    } else {
      folders = Directory.current
          .listSync()
          .where((e) => e is Directory)
          .map((e) => e.path.split('/').last)
          .toList();
    }

    final pubSpecFile = File('${Directory.current.path}/pubspec.yaml');
    final content = await pubSpecFile.readAsString();
    final yamlMap = loadYaml(content);

    final packageName = yamlMap['name'];

    if (packageName == null) {
      throw PubspecNameException();
    }

    context.vars = {
      ...context.vars,
      'fullPath':
          ('$packageName/screens/${context.vars['screen_name']}').replaceAll('//', '/'),
      'isBloc': isBloc,
      'isCubit': isCubit,
      'isNone': isNone,
      'use_equatable': isEquatable,
      'isFreezed': isFreezed,
      'isNoneCodeGen': isNoneCodeGen,
    };
  } on RangeError catch (e) {
    print(e);

    logger.alert(
      red.wrap(
        'Could not find lib folder in $directory',
      ),
    );
    logger.alert(
      red.wrap(
        'Re-run this brick inside your lib folder',
      ),
    );
    throw Exception();
  } on FileSystemException catch (e) {
    print(e);

    logger.alert(
      red.wrap(
        'Could not find pubspec.yaml folder in ${directory.replaceAll('\\lib', '')}',
      ),
    );

    throw Exception();
  } on PubspecNameException catch (e) {
    print(e);

    logger.alert(
      red.wrap(
        'Could not read package name in pubspec.yaml}',
      ),
    );
    logger.alert(
      red.wrap(
        'Does your pubspec have a name: ?',
      ),
    );
    throw Exception();
  } on Exception catch (e) {
    print(e);
    logger.alert(e.toString());

    throw e;
  }
}

class PubspecNameException implements Exception {}
