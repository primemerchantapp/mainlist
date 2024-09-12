import '/components/logopanyero/logopanyero_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'auth3_phone_widget.dart' show Auth3PhoneWidget;
import 'package:flutter/material.dart';
import 'package:mask_text_input_formatter/mask_text_input_formatter.dart';

class Auth3PhoneModel extends FlutterFlowModel<Auth3PhoneWidget> {
  ///  State fields for stateful widgets in this page.

  // Model for logopanyero component.
  late LogopanyeroModel logopanyeroModel;
  // State field(s) for phoneNumber widget.
  FocusNode? phoneNumberFocusNode;
  TextEditingController? phoneNumberTextController;
  final phoneNumberMask = MaskTextInputFormatter(mask: '(###) ###-####');
  String? Function(BuildContext, String?)? phoneNumberTextControllerValidator;

  @override
  void initState(BuildContext context) {
    logopanyeroModel = createModel(context, () => LogopanyeroModel());
  }

  @override
  void dispose() {
    logopanyeroModel.dispose();
    phoneNumberFocusNode?.dispose();
    phoneNumberTextController?.dispose();
  }
}
