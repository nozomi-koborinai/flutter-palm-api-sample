import 'package:flutter/material.dart';

import 'components/failure_snackbar.dart';
import 'components/success_snackbar.dart';

/// View に関するUtility メソッド群
class ViewUtils {
  /// singleton
  ViewUtils._();
  static final instance = ViewUtils._();

  /// スナックバー表示
  void showSnackBar(
    ScaffoldMessengerState scaffoldMessenger, {
    required String message,
    SnackBarMode mode = SnackBarMode.success,
  }) {
    final snackBar = mode == SnackBarMode.success
        ? SuccessSnackBar(message: message)
        : FailureSnackBar(message: message);
    scaffoldMessenger.showSnackBar(snackBar);
  }
}

/// スナックバー表示モード
enum SnackBarMode {
  /// 成功
  success,

  /// 失敗
  failure,
}
