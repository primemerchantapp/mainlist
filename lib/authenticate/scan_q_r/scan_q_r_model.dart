import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'scan_q_r_widget.dart' show ScanQRWidget;
import 'package:flutter/material.dart';

class ScanQRModel extends FlutterFlowModel<ScanQRWidget> {
  ///  State fields for stateful widgets in this page.

  var accountNumber = '';
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode;
  TextEditingController? textController;
  String? Function(BuildContext, String?)? textControllerValidator;
  // Stores action output result for [Backend Call - Create Document] action in Button widget.
  TransferAmountRecord? transferfunds;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    textFieldFocusNode?.dispose();
    textController?.dispose();
  }
}
