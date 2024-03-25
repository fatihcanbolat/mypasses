import '/flutter_flow/flutter_flow_util.dart';
import 'mynotes_widget.dart' show MynotesWidget;
import 'package:flutter/material.dart';

class MynotesModel extends FlutterFlowModel<MynotesWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // State field(s) for ListView widget.
  ScrollController? listViewController;
  // State field(s) for newNoteField widget.
  FocusNode? newNoteFieldFocusNode;
  TextEditingController? newNoteFieldController;
  String? Function(BuildContext, String?)? newNoteFieldControllerValidator;

  /// Initialization and disposal methods.

  @override
  void initState(BuildContext context) {
    listViewController = ScrollController();
  }

  @override
  void dispose() {
    unfocusNode.dispose();
    listViewController?.dispose();
    newNoteFieldFocusNode?.dispose();
    newNoteFieldController?.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
