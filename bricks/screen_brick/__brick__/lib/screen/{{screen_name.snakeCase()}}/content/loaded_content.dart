import 'package:flutter/material.dart';

/// {@template loaded_content}
/// Content of the Screen.
///
/// Add what it does
/// {@endtemplate}
class LoadedContent extends StatelessWidget {
  /// {@macro login_body}
  const LoadedContent({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Text('Loaded'),
    );
  }
}
