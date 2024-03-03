import '/flutter_flow/flutter_flow_util.dart';
import 'todos_widget.dart' show TodosWidget;
import 'package:flutter/material.dart';

class TodosModel extends FlutterFlowModel<TodosWidget> {
  ///  Local state fields for this page.

  bool newTodo = false;

  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // State field(s) for ad widget.
  FocusNode? adFocusNode;
  TextEditingController? adController;
  String? Function(BuildContext, String?)? adControllerValidator;
  // State field(s) for aciklama widget.
  FocusNode? aciklamaFocusNode;
  TextEditingController? aciklamaController;
  String? Function(BuildContext, String?)? aciklamaControllerValidator;

  /// Initialization and disposal methods.

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
    adFocusNode?.dispose();
    adController?.dispose();

    aciklamaFocusNode?.dispose();
    aciklamaController?.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
