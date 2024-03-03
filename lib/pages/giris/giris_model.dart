import '/flutter_flow/flutter_flow_util.dart';
import 'giris_widget.dart' show GirisWidget;
import 'package:flutter/material.dart';

class GirisModel extends FlutterFlowModel<GirisWidget> {
  ///  Local state fields for this page.

  bool isLogin = true;

  bool isRegister = false;

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
  // State field(s) for regsiter_name widget.
  FocusNode? regsiterNameFocusNode;
  TextEditingController? regsiterNameController;
  String? Function(BuildContext, String?)? regsiterNameControllerValidator;
  // State field(s) for register_mail widget.
  FocusNode? registerMailFocusNode;
  TextEditingController? registerMailController;
  String? Function(BuildContext, String?)? registerMailControllerValidator;
  // State field(s) for register_pass widget.
  FocusNode? registerPassFocusNode;
  TextEditingController? registerPassController;
  late bool registerPassVisibility;
  String? Function(BuildContext, String?)? registerPassControllerValidator;
  // State field(s) for register_pass_confirm widget.
  FocusNode? registerPassConfirmFocusNode;
  TextEditingController? registerPassConfirmController;
  late bool registerPassConfirmVisibility;
  String? Function(BuildContext, String?)?
      registerPassConfirmControllerValidator;

  /// Initialization and disposal methods.

  @override
  void initState(BuildContext context) {
    loginPassVisibility = false;
    registerPassVisibility = false;
    registerPassConfirmVisibility = false;
  }

  @override
  void dispose() {
    unfocusNode.dispose();
    loginMailFocusNode?.dispose();
    loginMailController?.dispose();

    loginPassFocusNode?.dispose();
    loginPassController?.dispose();

    regsiterNameFocusNode?.dispose();
    regsiterNameController?.dispose();

    registerMailFocusNode?.dispose();
    registerMailController?.dispose();

    registerPassFocusNode?.dispose();
    registerPassController?.dispose();

    registerPassConfirmFocusNode?.dispose();
    registerPassConfirmController?.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
