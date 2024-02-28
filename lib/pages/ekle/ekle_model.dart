import '/flutter_flow/flutter_flow_util.dart';
import 'ekle_widget.dart' show EkleWidget;
import 'package:flutter/material.dart';

class EkleModel extends FlutterFlowModel<EkleWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // State field(s) for hesapAdi widget.
  FocusNode? hesapAdiFocusNode;
  TextEditingController? hesapAdiController;
  String? Function(BuildContext, String?)? hesapAdiControllerValidator;
  // State field(s) for url widget.
  FocusNode? urlFocusNode;
  TextEditingController? urlController;
  String? Function(BuildContext, String?)? urlControllerValidator;
  // State field(s) for kullaniciAdi widget.
  FocusNode? kullaniciAdiFocusNode;
  TextEditingController? kullaniciAdiController;
  String? Function(BuildContext, String?)? kullaniciAdiControllerValidator;
  // State field(s) for sifre widget.
  FocusNode? sifreFocusNode;
  TextEditingController? sifreController;
  String? Function(BuildContext, String?)? sifreControllerValidator;
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
    hesapAdiFocusNode?.dispose();
    hesapAdiController?.dispose();

    urlFocusNode?.dispose();
    urlController?.dispose();

    kullaniciAdiFocusNode?.dispose();
    kullaniciAdiController?.dispose();

    sifreFocusNode?.dispose();
    sifreController?.dispose();

    aciklamaFocusNode?.dispose();
    aciklamaController?.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
