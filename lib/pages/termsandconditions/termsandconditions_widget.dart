import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:provider/provider.dart';
import 'termsandconditions_model.dart';
export 'termsandconditions_model.dart';

class TermsandconditionsWidget extends StatefulWidget {
  const TermsandconditionsWidget({super.key});

  @override
  _TermsandconditionsWidgetState createState() =>
      _TermsandconditionsWidgetState();
}

class _TermsandconditionsWidgetState extends State<TermsandconditionsWidget> {
  late TermsandconditionsModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => TermsandconditionsModel());

    WidgetsBinding.instance.addPostFrameCallback((_) => setState(() {}));
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    if (isiOS) {
      SystemChrome.setSystemUIOverlayStyle(
        SystemUiOverlayStyle(
          statusBarBrightness: Theme.of(context).brightness,
          systemStatusBarContrastEnforced: true,
        ),
      );
    }

    context.watch<FFAppState>();

    return GestureDetector(
      onTap: () => _model.unfocusNode.canRequestFocus
          ? FocusScope.of(context).requestFocus(_model.unfocusNode)
          : FocusScope.of(context).unfocus(),
      child: Scaffold(
        key: scaffoldKey,
        backgroundColor: Colors.white,
        appBar: AppBar(
          backgroundColor: const Color(0xFF52B788),
          automaticallyImplyLeading: false,
          leading: FlutterFlowIconButton(
            borderColor: Colors.transparent,
            borderRadius: 30.0,
            borderWidth: 1.0,
            buttonSize: 60.0,
            icon: const Icon(
              Icons.arrow_back_rounded,
              color: Colors.white,
              size: 30.0,
            ),
            onPressed: () async {
              context.pop();
            },
          ),
          title: Text(
            'Terms & Conditions',
            style: FlutterFlowTheme.of(context).headlineMedium.override(
                  fontFamily: 'Outfit',
                  color: Colors.white,
                  fontSize: 22.0,
                ),
          ),
          actions: const [],
          centerTitle: false,
          elevation: 2.0,
        ),
        body: SafeArea(
          top: true,
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              '1. Acceptance of Terms:By downloading, installing, or using the Part It App ("the App"), you agree to be bound by these terms and conditions.\n2. Purpose: The App is designed to facilitate the buying and selling of automotive parts among users.\n 3. User Accounts: Users must create an account to access certain features of the App.\n4. Listings and Transactions: Users are responsible for the accuracy of information provided in listings.\n5. Payments: The App may facilitate payments for transactions; however, it is not responsible for financial disputes.\n6. Prohibited Items:Users may not list or sell illegal, counterfeit, or prohibited items on the App.\n7. User Conduct: Users must not engage in fraudulent or misleading activities.\n8. Intellectual Property:The App and its content are protected by intellectual property laws.\n9. Privacy: The App collects and uses personal information in accordance with its Privacy Policy.\n10. Disclaimer of Warranties:The App is provided "as is" without any warranties.\n11. Limitation of Liability: The App is not liable for any indirect, incidental, or consequential damages.\n12. Governing Law:These terms are governed by the laws of [Jurisdiction], without regard to its conflict of law principles.\n13. Changes to Terms:The App reserves the right to modify these terms at any time. Users will be notified of significant changes.\n14. Contact Information:For any questions regarding these terms, please contact [Contact Information].',
              textAlign: TextAlign.start,
              style: FlutterFlowTheme.of(context).bodyMedium.override(
                    fontFamily: 'Readex Pro',
                    color: Colors.black,
                    fontSize: 16.0,
                  ),
            ),
          ),
        ),
      ),
    );
  }
}
