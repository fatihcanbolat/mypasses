import '/flutter_flow/flutter_flow_util.dart';
import 'passes_widget.dart' show PassesWidget;
import 'package:flutter/material.dart';

class PassesModel extends FlutterFlowModel<PassesWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();

  /// Initialization and disposal methods.

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
