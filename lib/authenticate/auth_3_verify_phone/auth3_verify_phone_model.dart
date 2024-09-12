import '/components/logopanyero/logopanyero_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'auth3_verify_phone_widget.dart' show Auth3VerifyPhoneWidget;
import 'package:flutter/material.dart';

class Auth3VerifyPhoneModel extends FlutterFlowModel<Auth3VerifyPhoneWidget> {
  ///  State fields for stateful widgets in this page.

  // Model for logopanyero component.
  late LogopanyeroModel logopanyeroModel;
  // State field(s) for PinCode widget.
  TextEditingController? pinCodeController;
  String? Function(BuildContext, String?)? pinCodeControllerValidator;

  @override
  void initState(BuildContext context) {
    logopanyeroModel = createModel(context, () => LogopanyeroModel());
    pinCodeController = TextEditingController();
  }

  @override
  void dispose() {
    logopanyeroModel.dispose();
    pinCodeController?.dispose();
  }
}
