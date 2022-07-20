import 'package:flutter/material.dart';

/// {@template error_content}
/// Content of the Screen.
///
/// Add what it does
/// {@endtemplate}
class ErrorContent extends StatelessWidget {
  /// {@macro login_body}
  const ErrorContent({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Text('Error'),
    );
  }
}
