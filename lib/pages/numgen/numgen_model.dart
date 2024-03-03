import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'numgen_widget.dart' show NumgenWidget;
import 'package:flutter/material.dart';

class NumgenModel extends FlutterFlowModel<NumgenWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // State field(s) for ilksayi widget.
  FocusNode? ilksayiFocusNode;
  TextEditingController? ilksayiController;
  String? Function(BuildContext, String?)? ilksayiControllerValidator;
  // State field(s) for sonsayi widget.
  FocusNode? sonsayiFocusNode;
  TextEditingController? sonsayiController;
  String? Function(BuildContext, String?)? sonsayiControllerValidator;
  // State field(s) for sayiadedi widget.
  FocusNode? sayiadediFocusNode;
  TextEditingController? sayiadediController;
  String? Function(BuildContext, String?)? sayiadediControllerValidator;
  // Stores action output result for [Backend Call - API (sayiUret)] action in Button widget.
  ApiCallResponse? apiResultzdw;

  /// Initialization and disposal methods.

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
    ilksayiFocusNode?.dispose();
    ilksayiController?.dispose();

    sonsayiFocusNode?.dispose();
    sonsayiController?.dispose();

    sayiadediFocusNode?.dispose();
    sayiadediController?.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
