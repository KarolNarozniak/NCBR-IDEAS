import '/flutter_flow/flutter_flow_util.dart';
import 'profile_editor_widget.dart' show ProfileEditorWidget;
import 'package:flutter/material.dart';

class ProfileEditorModel extends FlutterFlowModel<ProfileEditorWidget> {
  ///  State fields for stateful widgets in this component.

  bool isDataUploading = false;
  FFUploadedFile uploadedLocalFile =
      FFUploadedFile(bytes: Uint8List.fromList([]));
  String uploadedFileUrl = '';

  // State field(s) for yourName widget.
  FocusNode? yourNameFocusNode;
  TextEditingController? yourNameTextController;
  String? Function(BuildContext, String?)? yourNameTextControllerValidator;
  // State field(s) for city widget.
  FocusNode? cityFocusNode;
  TextEditingController? cityTextController;
  String? Function(BuildContext, String?)? cityTextControllerValidator;
  // State field(s) for Academic widget.
  bool? academicValue;
  // State field(s) for Business widget.
  bool? businessValue;
  // State field(s) for Investor widget.
  bool? investorValue;
  // State field(s) for myBio widget.
  FocusNode? myBioFocusNode;
  TextEditingController? myBioTextController;
  String? Function(BuildContext, String?)? myBioTextControllerValidator;
  // State field(s) for reasearchgate widget.
  FocusNode? reasearchgateFocusNode;
  TextEditingController? reasearchgateTextController;
  String? Function(BuildContext, String?)? reasearchgateTextControllerValidator;
  // State field(s) for academiaedu widget.
  FocusNode? academiaeduFocusNode;
  TextEditingController? academiaeduTextController;
  String? Function(BuildContext, String?)? academiaeduTextControllerValidator;
  // State field(s) for googlescholar widget.
  FocusNode? googlescholarFocusNode;
  TextEditingController? googlescholarTextController;
  String? Function(BuildContext, String?)? googlescholarTextControllerValidator;
  // State field(s) for linkedin widget.
  FocusNode? linkedinFocusNode;
  TextEditingController? linkedinTextController;
  String? Function(BuildContext, String?)? linkedinTextControllerValidator;
  // State field(s) for portfolioinvestor widget.
  FocusNode? portfolioinvestorFocusNode;
  TextEditingController? portfolioinvestorTextController;
  String? Function(BuildContext, String?)?
      portfolioinvestorTextControllerValidator;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    yourNameFocusNode?.dispose();
    yourNameTextController?.dispose();

    cityFocusNode?.dispose();
    cityTextController?.dispose();

    myBioFocusNode?.dispose();
    myBioTextController?.dispose();

    reasearchgateFocusNode?.dispose();
    reasearchgateTextController?.dispose();

    academiaeduFocusNode?.dispose();
    academiaeduTextController?.dispose();

    googlescholarFocusNode?.dispose();
    googlescholarTextController?.dispose();

    linkedinFocusNode?.dispose();
    linkedinTextController?.dispose();

    portfolioinvestorFocusNode?.dispose();
    portfolioinvestorTextController?.dispose();
  }
}
