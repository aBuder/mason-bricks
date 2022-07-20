import 'package:flutter/material.dart';

/// {@template loaded_content}
/// Content of the Screen.
///
/// Add what it does
/// {@endtemplate}
class InitialContent extends StatelessWidget {
  /// {@macro login_body}
  const InitialContent({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Text('Initial'),
    );
  }
}
