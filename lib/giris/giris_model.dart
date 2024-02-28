import '/flutter_flow/flutter_flow_util.dart';
import 'giris_widget.dart' show GirisWidget;
import 'package:flutter/material.dart';

class GirisModel extends FlutterFlowModel<GirisWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // State field(s) for login_mail widget.
  FocusNode? loginMailFocusNode;
  TextEditingController? loginMailController;
  String? Function(BuildContext, String?)? loginMailControllerValidator;
  // State field(s) for login_pass widget.
  FocusNode? loginPassFocusNode;
  TextEditingController? loginPassController;
  late bool loginPassVisibility;
  String? Function(BuildContext, String?)? loginPassControllerValidator;
  // State field(s) for login_pass_confirm widget.
  FocusNode? loginPassConfirmFocusNode;
  TextEditingController? loginPassConfirmController;
  late bool loginPassConfirmVisibility;
  String? Function(BuildContext, String?)? loginPassConfirmControllerValidator;

  /// Initialization and disposal methods.

  @override
  void initState(BuildContext context) {
    loginPassVisibility = false;
    loginPassConfirmVisibility = false;
  }

  @override
  void dispose() {
    unfocusNode.dispose();
    loginMailFocusNode?.dispose();
    loginMailController?.dispose();

    loginPassFocusNode?.dispose();
    loginPassController?.dispose();

    loginPassConfirmFocusNode?.dispose();
    loginPassConfirmController?.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
