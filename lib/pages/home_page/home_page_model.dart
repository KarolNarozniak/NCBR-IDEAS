import '/components/business_path_widget.dart';
import '/components/investor_path_widget.dart';
import '/components/profile_editor_widget.dart';
import '/components/scientist_path_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'home_page_widget.dart' show HomePageWidget;
import 'package:flutter/material.dart';

class HomePageModel extends FlutterFlowModel<HomePageWidget> {
  ///  State fields for stateful widgets in this page.

  // Model for profile_editor component.
  late ProfileEditorModel profileEditorModel;
  // Model for investor_path component.
  late InvestorPathModel investorPathModel;
  // Model for business_path component.
  late BusinessPathModel businessPathModel;
  // Model for scientist_path component.
  late ScientistPathModel scientistPathModel;

  @override
  void initState(BuildContext context) {
    profileEditorModel = createModel(context, () => ProfileEditorModel());
    investorPathModel = createModel(context, () => InvestorPathModel());
    businessPathModel = createModel(context, () => BusinessPathModel());
    scientistPathModel = createModel(context, () => ScientistPathModel());
  }

  @override
  void dispose() {
    profileEditorModel.dispose();
    investorPathModel.dispose();
    businessPathModel.dispose();
    scientistPathModel.dispose();
  }
}
