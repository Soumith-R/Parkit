import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:provider/provider.dart';
import 'aboutus_model.dart';
export 'aboutus_model.dart';

class AboutusWidget extends StatefulWidget {
  const AboutusWidget({super.key});

  @override
  _AboutusWidgetState createState() => _AboutusWidgetState();
}

class _AboutusWidgetState extends State<AboutusWidget> {
  late AboutusModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => AboutusModel());

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

    return Scaffold(
      key: scaffoldKey,
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: const Color(0xFF52B788),
        automaticallyImplyLeading: false,
        leading: FlutterFlowIconButton(
          borderColor: Colors.transparent,
          borderRadius: 30.0,
          buttonSize: 46.0,
          icon: const Icon(
            Icons.arrow_back_rounded,
            color: Colors.white,
            size: 24.0,
          ),
          onPressed: () async {
            context.pop();
          },
        ),
        title: Text(
          'Settings',
          style: FlutterFlowTheme.of(context).titleSmall.override(
                fontFamily: 'Readex Pro',
                color: Colors.white,
              ),
        ),
        actions: const [],
        centerTitle: false,
        elevation: 0.0,
      ),
      body: SafeArea(
        top: true,
        child: SingleChildScrollView(
          child: Column(
            mainAxisSize: MainAxisSize.max,
            children: [
              Padding(
                padding: const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 12.0),
                child: Container(
                  width: MediaQuery.sizeOf(context).width * 1.0,
                  decoration: BoxDecoration(
                    color: const Color(0xFF52B788),
                    boxShadow: [
                      BoxShadow(
                        blurRadius: 5.0,
                        color:
                            FlutterFlowTheme.of(context).backgroundComponents,
                        offset: const Offset(0.0, 2.0),
                      )
                    ],
                    borderRadius: const BorderRadius.only(
                      bottomLeft: Radius.circular(0.0),
                      bottomRight: Radius.circular(0.0),
                      topLeft: Radius.circular(0.0),
                      topRight: Radius.circular(0.0),
                    ),
                  ),
                  child: Padding(
                    padding:
                        const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 12.0),
                    child: Column(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Padding(
                          padding: const EdgeInsetsDirectional.fromSTEB(
                              20.0, 0.0, 20.0, 0.0),
                          child: Row(
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              Expanded(
                                child: Padding(
                                  padding: const EdgeInsetsDirectional.fromSTEB(
                                      0.0, 4.0, 0.0, 0.0),
                                  child: Text(
                                    'About Us',
                                    style: FlutterFlowTheme.of(context)
                                        .displaySmall
                                        .override(
                                          fontFamily: 'Outfit',
                                          color: Colors.white,
                                        ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              Column(
                mainAxisSize: MainAxisSize.max,
                children: [
                  ListTile(
                    title: Text(
                      'Soumith',
                      style: FlutterFlowTheme.of(context).titleLarge.override(
                            fontFamily: 'Outfit',
                            color: Colors.black,
                          ),
                    ),
                    subtitle: Text(
                      'UI design',
                      style: FlutterFlowTheme.of(context).labelMedium,
                    ),
                    tileColor: Colors.white,
                    dense: false,
                  ),
                  ListTile(
                    title: Text(
                      'Shreyas',
                      style: FlutterFlowTheme.of(context).titleLarge.override(
                            fontFamily: 'Outfit',
                            color: Colors.black,
                          ),
                    ),
                    subtitle: Text(
                      'Backend',
                      style: FlutterFlowTheme.of(context).labelMedium,
                    ),
                    tileColor: Colors.white,
                    dense: false,
                  ),
                  ListTile(
                    title: Text(
                      'Balaji',
                      style: FlutterFlowTheme.of(context).titleLarge.override(
                            fontFamily: 'Outfit',
                            color: Colors.black,
                          ),
                    ),
                    subtitle: Text(
                      'Api integration',
                      style: FlutterFlowTheme.of(context).labelMedium,
                    ),
                    tileColor: Colors.white,
                    dense: false,
                  ),
                  ListTile(
                    title: Text(
                      'Akshaya',
                      style: FlutterFlowTheme.of(context).titleLarge.override(
                            fontFamily: 'Outfit',
                            color: Colors.black,
                          ),
                    ),
                    subtitle: Text(
                      'Database',
                      style: FlutterFlowTheme.of(context).labelMedium,
                    ),
                    tileColor: Colors.white,
                    dense: false,
                  ),
                  ListTile(
                    title: Text(
                      'Goutham',
                      style: FlutterFlowTheme.of(context).titleLarge.override(
                            fontFamily: 'Outfit',
                            color: Colors.black,
                          ),
                    ),
                    subtitle: Text(
                      'UX designer',
                      style: FlutterFlowTheme.of(context).labelMedium,
                    ),
                    tileColor: Colors.white,
                    dense: false,
                  ),
                  ListTile(
                    title: Text(
                      'Ajay',
                      style: FlutterFlowTheme.of(context).titleLarge.override(
                            fontFamily: 'Outfit',
                            color: Colors.black,
                          ),
                    ),
                    subtitle: Text(
                      'Backend',
                      style: FlutterFlowTheme.of(context).labelMedium,
                    ),
                    tileColor: Colors.white,
                    dense: false,
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
