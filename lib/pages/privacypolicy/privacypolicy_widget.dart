import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:provider/provider.dart';
import 'privacypolicy_model.dart';
export 'privacypolicy_model.dart';

class PrivacypolicyWidget extends StatefulWidget {
  const PrivacypolicyWidget({super.key});

  @override
  _PrivacypolicyWidgetState createState() => _PrivacypolicyWidgetState();
}

class _PrivacypolicyWidgetState extends State<PrivacypolicyWidget> {
  late PrivacypolicyModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => PrivacypolicyModel());

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
            'Privacy Policy',
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
          child: Column(
            mainAxisSize: MainAxisSize.max,
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  '1. Introduction:This Privacy Policy explains how Park It ("the App") collects, uses, and protects user information. By using the App, you agree to the terms outlined in this policy.\n2. Information Collected: Personal Information: The App may collect personal information such as names, email addresses, and contact details when users create an account.\n3. Use of Information: Personal information is used for account creation, authentication, and communication purposes.\n4. Sharing of Information: The App may share personal information with third-party service providers to facilitate app functionality.\n5. Data Security: The App employs industry-standard security measures to protect user data.\n6. Third-Party Links:The App may contain links to third-party websites. This Privacy Policy does not apply to the practices of such websites.\n7. Cookies and Similar Technologies:\nThe App may use cookies and similar technologies to enhance user experience and collect data for analytical purposes.\n8. User Choices: Users can manage preferences regarding data collection and marketing communications within the App.\n9. Children\'s Privacy:The App is not intended for use by individuals under the age of 13. If we become aware of the collection of personal information from children, we will take appropriate steps to delete it.\n10. Changes to Privacy Policy:The App reserves the right to update this Privacy Policy. Users will be notified of significant changes.\n11. Contact Information:For any questions or concerns regarding this Privacy Policy, please contact [Contact Information].\n12. Compliance with Laws:The App complies with relevant data protection laws and regulations.\n13. Data Access and Deletion:Users may request access to their personal information or request its deletion by contacting [Contact Information].\n14. Governing Law:This Privacy Policy is governed by the laws of [Jurisdiction], without regard to its conflict of law principles.\n\nBy using the Park It App, you acknowledge that you have read, understood, and agree to the terms of this Privacy Policy.',
                  style: FlutterFlowTheme.of(context).bodyMedium.override(
                        fontFamily: 'Readex Pro',
                        color: Colors.black,
                        fontSize: 13.0,
                      ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
