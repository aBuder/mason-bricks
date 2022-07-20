import 'package:flutter/material.dart';

/// {@template loading_content}
/// Content of the Screen.
///
/// Add what it does
/// {@endtemplate}
class LoadingContent extends StatelessWidget {
  /// {@macro login_body}
  const LoadingContent({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Text('Loading'),
    );
  }
}
