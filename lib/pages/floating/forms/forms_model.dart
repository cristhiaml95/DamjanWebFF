import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import 'forms_widget.dart' show FormsWidget;
import 'package:flutter/material.dart';

class FormsModel extends FlutterFlowModel<FormsWidget> {
  ///  Local state fields for this component.

  int page = 0;

  ///  State fields for stateful widgets in this component.

  final formKey2 = GlobalKey<FormState>();
  final formKey3 = GlobalKey<FormState>();
  final formKey5 = GlobalKey<FormState>();
  final formKey1 = GlobalKey<FormState>();
  final formKey4 = GlobalKey<FormState>();
  // State field(s) for PageView widget.
  PageController? pageViewController;

  int get pageViewCurrentIndex => pageViewController != null &&
          pageViewController!.hasClients &&
          pageViewController!.page != null
      ? pageViewController!.page!.round()
      : 0;
  // State field(s) for orderNoTF widget.
  FocusNode? orderNoTFFocusNode;
  TextEditingController? orderNoTFController;
  String? Function(BuildContext, String?)? orderNoTFControllerValidator;
  // State field(s) for clientDD widget.
  String? clientDDValue;
  FormFieldController<String>? clientDDValueController;
  // State field(s) for flowDD widget.
  String? flowDDValue;
  FormFieldController<String>? flowDDValueController;
  DateTime? datePicked1;
  // State field(s) for orderStatusDD widget.
  String? orderStatusDDValue;
  FormFieldController<String>? orderStatusDDValueController;
  // State field(s) for warehouseDD widget.
  String? warehouseDDValue;
  FormFieldController<String>? warehouseDDValueController;
  DateTime? datePicked2;
  // State field(s) for reponsibleDD widget.
  String? reponsibleDDValue;
  FormFieldController<String>? reponsibleDDValueController;
  // State field(s) for customDD widget.
  String? customDDValue;
  FormFieldController<String>? customDDValueController;
  // State field(s) for internalRefT widget.
  FocusNode? internalRefTFocusNode;
  TextEditingController? internalRefTController;
  String? Function(BuildContext, String?)? internalRefTControllerValidator;
  // State field(s) for internalAccT widget.
  FocusNode? internalAccTFocusNode;
  TextEditingController? internalAccTController;
  String? Function(BuildContext, String?)? internalAccTControllerValidator;
  // State field(s) for documentTF widget.
  FocusNode? documentTFFocusNode;
  TextEditingController? documentTFController;
  String? Function(BuildContext, String?)? documentTFControllerValidator;
  // State field(s) for inventoryStatusDD widget.
  String? inventoryStatusDDValue;
  FormFieldController<String>? inventoryStatusDDValueController;
  DateTime? datePicked3;
  DateTime? datePicked4;
  DateTime? datePicked5;
  // State field(s) for loadingGateDD widget.
  String? loadingGateDDValue;
  FormFieldController<String>? loadingGateDDValueController;
  // State field(s) for sequence widget.
  FocusNode? sequenceFocusNode;
  TextEditingController? sequenceController;
  String? Function(BuildContext, String?)? sequenceControllerValidator;
  DateTime? datePicked6;
  DateTime? datePicked7;
  // State field(s) for licencePlateTF widget.
  FocusNode? licencePlateTFFocusNode;
  TextEditingController? licencePlateTFController;
  String? Function(BuildContext, String?)? licencePlateTFControllerValidator;
  // State field(s) for improvementDD widget.
  String? improvementDDValue;
  FormFieldController<String>? improvementDDValueController;
  // State field(s) for containerT widget.
  FocusNode? containerTFocusNode;
  TextEditingController? containerTController;
  String? Function(BuildContext, String?)? containerTControllerValidator;
  // State field(s) for commentTF widget.
  FocusNode? commentTFFocusNode;
  TextEditingController? commentTFController;
  String? Function(BuildContext, String?)? commentTFControllerValidator;
  // State field(s) for quantityT widget.
  FocusNode? quantityTFocusNode;
  TextEditingController? quantityTController;
  String? Function(BuildContext, String?)? quantityTControllerValidator;
  // State field(s) for palletPositionT widget.
  FocusNode? palletPositionTFocusNode;
  TextEditingController? palletPositionTController;
  String? Function(BuildContext, String?)? palletPositionTControllerValidator;
  // State field(s) for unitT widget.
  FocusNode? unitTFocusNode;
  TextEditingController? unitTController;
  String? Function(BuildContext, String?)? unitTControllerValidator;
  // State field(s) for weightT widget.
  FocusNode? weightTFocusNode;
  TextEditingController? weightTController;
  String? Function(BuildContext, String?)? weightTControllerValidator;
  // State field(s) for otherManipulationDD widget.
  String? otherManipulationDDValue;
  FormFieldController<String>? otherManipulationDDValueController;
  // State field(s) for loadTypeDD widget.
  String? loadTypeDDValue;
  FormFieldController<String>? loadTypeDDValueController;
  // State field(s) for loadType2DD widget.
  String? loadType2DDValue;
  FormFieldController<String>? loadType2DDValueController;
  // State field(s) for responsibleDD widget.
  String? responsibleDDValue;
  FormFieldController<String>? responsibleDDValueController;
  // State field(s) for assistant1DD widget.
  String? assistant1DDValue;
  FormFieldController<String>? assistant1DDValueController;
  // State field(s) for assistant2DD widget.
  String? assistant2DDValue;
  FormFieldController<String>? assistant2DDValueController;
  // State field(s) for assistant3DD widget.
  String? assistant3DDValue;
  FormFieldController<String>? assistant3DDValueController;
  // State field(s) for assistant4DD widget.
  String? assistant4DDValue;
  FormFieldController<String>? assistant4DDValueController;
  // State field(s) for assistant5DD widget.
  String? assistant5DDValue1;
  FormFieldController<String>? assistant5DDValueController1;
  // State field(s) for assistant6DD widget.
  String? assistant6DDValue;
  FormFieldController<String>? assistant6DDValueController;
  // State field(s) for universalRefNumT widget.
  FocusNode? universalRefNumTFocusNode1;
  TextEditingController? universalRefNumTController1;
  String? Function(BuildContext, String?)? universalRefNumTController1Validator;
  // State field(s) for fmsRefT widget.
  FocusNode? fmsRefTFocusNode1;
  TextEditingController? fmsRefTController1;
  String? Function(BuildContext, String?)? fmsRefTController1Validator;
  // State field(s) for loadRefDvhT widget.
  FocusNode? loadRefDvhTFocusNode1;
  TextEditingController? loadRefDvhTController1;
  String? Function(BuildContext, String?)? loadRefDvhTController1Validator;
  // State field(s) for assistant5DD widget.
  String? assistant5DDValue2;
  FormFieldController<String>? assistant5DDValueController2;
  // State field(s) for assistant5DD widget.
  String? assistant5DDValue3;
  FormFieldController<String>? assistant5DDValueController3;
  // State field(s) for universalRefNumT widget.
  FocusNode? universalRefNumTFocusNode2;
  TextEditingController? universalRefNumTController2;
  String? Function(BuildContext, String?)? universalRefNumTController2Validator;
  // State field(s) for fmsRefT widget.
  FocusNode? fmsRefTFocusNode2;
  TextEditingController? fmsRefTController2;
  String? Function(BuildContext, String?)? fmsRefTController2Validator;
  // State field(s) for loadRefDvhT widget.
  FocusNode? loadRefDvhTFocusNode2;
  TextEditingController? loadRefDvhTController2;
  String? Function(BuildContext, String?)? loadRefDvhTController2Validator;

  /// Initialization and disposal methods.

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    orderNoTFFocusNode?.dispose();
    orderNoTFController?.dispose();

    internalRefTFocusNode?.dispose();
    internalRefTController?.dispose();

    internalAccTFocusNode?.dispose();
    internalAccTController?.dispose();

    documentTFFocusNode?.dispose();
    documentTFController?.dispose();

    sequenceFocusNode?.dispose();
    sequenceController?.dispose();

    licencePlateTFFocusNode?.dispose();
    licencePlateTFController?.dispose();

    containerTFocusNode?.dispose();
    containerTController?.dispose();

    commentTFFocusNode?.dispose();
    commentTFController?.dispose();

    quantityTFocusNode?.dispose();
    quantityTController?.dispose();

    palletPositionTFocusNode?.dispose();
    palletPositionTController?.dispose();

    unitTFocusNode?.dispose();
    unitTController?.dispose();

    weightTFocusNode?.dispose();
    weightTController?.dispose();

    universalRefNumTFocusNode1?.dispose();
    universalRefNumTController1?.dispose();

    fmsRefTFocusNode1?.dispose();
    fmsRefTController1?.dispose();

    loadRefDvhTFocusNode1?.dispose();
    loadRefDvhTController1?.dispose();

    universalRefNumTFocusNode2?.dispose();
    universalRefNumTController2?.dispose();

    fmsRefTFocusNode2?.dispose();
    fmsRefTController2?.dispose();

    loadRefDvhTFocusNode2?.dispose();
    loadRefDvhTController2?.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
