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
  FocusNode? loginMailFocusNode1;
  TextEditingController? loginMailController1;
  String? Function(BuildContext, String?)? loginMailController1Validator;
  // State field(s) for login_pass widget.
  FocusNode? loginPassFocusNode1;
  TextEditingController? loginPassController1;
  late bool loginPassVisibility1;
  String? Function(BuildContext, String?)? loginPassController1Validator;
  // State field(s) for login_mail widget.
  FocusNode? loginMailFocusNode2;
  TextEditingController? loginMailController2;
  String? Function(BuildContext, String?)? loginMailController2Validator;
  // State field(s) for login_pass widget.
  FocusNode? loginPassFocusNode2;
  TextEditingController? loginPassController2;
  late bool loginPassVisibility2;
  String? Function(BuildContext, String?)? loginPassController2Validator;
  // State field(s) for login_pass_confirm widget.
  FocusNode? loginPassConfirmFocusNode;
  TextEditingController? loginPassConfirmController;
  late bool loginPassConfirmVisibility;
  String? Function(BuildContext, String?)? loginPassConfirmControllerValidator;

  /// Initialization and disposal methods.

  @override
  void initState(BuildContext context) {
    loginPassVisibility1 = false;
    loginPassVisibility2 = false;
    loginPassConfirmVisibility = false;
  }

  @override
  void dispose() {
    unfocusNode.dispose();
    loginMailFocusNode1?.dispose();
    loginMailController1?.dispose();

    loginPassFocusNode1?.dispose();
    loginPassController1?.dispose();

    loginMailFocusNode2?.dispose();
    loginMailController2?.dispose();

    loginPassFocusNode2?.dispose();
    loginPassController2?.dispose();

    loginPassConfirmFocusNode?.dispose();
    loginPassConfirmController?.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
