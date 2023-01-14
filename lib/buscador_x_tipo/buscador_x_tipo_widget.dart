import '../backend/backend.dart';
import '../flutter_flow/flutter_flow_icon_button.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import '../flutter_flow/flutter_flow_widgets.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class BuscadorXTipoWidget extends StatefulWidget {
  const BuscadorXTipoWidget({Key? key}) : super(key: key);

  @override
  _BuscadorXTipoWidgetState createState() => _BuscadorXTipoWidgetState();
}

class _BuscadorXTipoWidgetState extends State<BuscadorXTipoWidget> {
  TextEditingController? textController;
  final _unfocusNode = FocusNode();
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    textController = TextEditingController();
  }

  @override
  void dispose() {
    _unfocusNode.dispose();
    textController?.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return StreamBuilder<List<BebidaRecord>>(
      stream: queryBebidaRecord(
        singleRecord: true,
      ),
      builder: (context, snapshot) {
        // Customize what your widget looks like when it's loading.
        if (!snapshot.hasData) {
          return Center(
            child: Image.network(
              '',
            ),
          );
        }
        List<BebidaRecord> buscadorXTipoBebidaRecordList = snapshot.data!;
        // Return an empty Container when the item does not exist.
        if (snapshot.data!.isEmpty) {
          return Container();
        }
        final buscadorXTipoBebidaRecord =
            buscadorXTipoBebidaRecordList.isNotEmpty
                ? buscadorXTipoBebidaRecordList.first
                : null;
        return Scaffold(
          key: scaffoldKey,
          backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
          appBar: AppBar(
            backgroundColor: FlutterFlowTheme.of(context).primaryBtnText,
            automaticallyImplyLeading: false,
            leading: FlutterFlowIconButton(
              borderColor: Colors.transparent,
              borderRadius: 30,
              borderWidth: 1,
              buttonSize: 60,
              icon: Icon(
                Icons.menu,
                color: Color(0xFF66341D),
                size: 30,
              ),
              onPressed: () async {
                context.pushNamed('menuPage');
              },
            ),
            title: Text(
              'Page Title',
              style: FlutterFlowTheme.of(context).title2.override(
                    fontFamily: 'Poppins',
                    color: Colors.white,
                    fontSize: 22,
                  ),
            ),
            actions: [],
            centerTitle: true,
            elevation: 2,
          ),
          body: SafeArea(
            child: GestureDetector(
              onTap: () => FocusScope.of(context).requestFocus(_unfocusNode),
              child: Column(
                mainAxisSize: MainAxisSize.max,
                children: [
                  Expanded(
                    child: Container(
                      width: double.infinity,
                      height: double.infinity,
                      decoration: BoxDecoration(
                        color: Color(0xFFFCDD73),
                      ),
                      child: Column(
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          TextFormField(
                            controller: textController,
                            obscureText: false,
                            decoration: InputDecoration(
                              hintText: 'Buscador...',
                              hintStyle: TextStyle(
                                color: Color(0xFF66341D),
                                fontWeight: FontWeight.w200,
                              ),
                              enabledBorder: UnderlineInputBorder(
                                borderSide: BorderSide(
                                  color: Color(0x00000000),
                                  width: 1,
                                ),
                                borderRadius: const BorderRadius.only(
                                  topLeft: Radius.circular(4.0),
                                  topRight: Radius.circular(4.0),
                                ),
                              ),
                              focusedBorder: UnderlineInputBorder(
                                borderSide: BorderSide(
                                  color: Color(0x00000000),
                                  width: 1,
                                ),
                                borderRadius: const BorderRadius.only(
                                  topLeft: Radius.circular(4.0),
                                  topRight: Radius.circular(4.0),
                                ),
                              ),
                              errorBorder: UnderlineInputBorder(
                                borderSide: BorderSide(
                                  color: Color(0x00000000),
                                  width: 1,
                                ),
                                borderRadius: const BorderRadius.only(
                                  topLeft: Radius.circular(4.0),
                                  topRight: Radius.circular(4.0),
                                ),
                              ),
                              focusedErrorBorder: UnderlineInputBorder(
                                borderSide: BorderSide(
                                  color: Color(0x00000000),
                                  width: 1,
                                ),
                                borderRadius: const BorderRadius.only(
                                  topLeft: Radius.circular(4.0),
                                  topRight: Radius.circular(4.0),
                                ),
                              ),
                              filled: true,
                              fillColor:
                                  FlutterFlowTheme.of(context).primaryBtnText,
                            ),
                            style: TextStyle(
                              color:
                                  FlutterFlowTheme.of(context).primaryBtnText,
                              fontWeight: FontWeight.w200,
                            ),
                          ),
                          Divider(
                            color: Color(0xFF66341D),
                          ),
                          Container(
                            width: double.infinity,
                            height: 215,
                            decoration: BoxDecoration(
                              color: FlutterFlowTheme.of(context)
                                  .secondaryBackground,
                            ),
                            child: Row(
                              mainAxisSize: MainAxisSize.max,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Expanded(
                                  child: Container(
                                    width: 215,
                                    height: 215,
                                    decoration: BoxDecoration(
                                      color: FlutterFlowTheme.of(context)
                                          .secondaryBackground,
                                      image: DecorationImage(
                                        fit: BoxFit.cover,
                                        image: Image.network(
                                          valueOrDefault<String>(
                                            buscadorXTipoBebidaRecord!.img,
                                            'Pilsen',
                                          ),
                                        ).image,
                                      ),
                                    ),
                                    child: Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          0, 80, 0, 0),
                                      child: Text(
                                        buscadorXTipoBebidaRecord!.tipo!,
                                        textAlign: TextAlign.center,
                                        style: GoogleFonts.getFont(
                                          'Inter',
                                          color: Color(0xFFEFFF9B),
                                          fontWeight: FontWeight.bold,
                                          fontSize: 40,
                                          fontStyle: FontStyle.normal,
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                                Expanded(
                                  child: Container(
                                    width: 215,
                                    height: 215,
                                    decoration: BoxDecoration(
                                      color: FlutterFlowTheme.of(context)
                                          .secondaryBackground,
                                      image: DecorationImage(
                                        fit: BoxFit.cover,
                                        image: Image.network(
                                          'https://maltosaa.com.mx/wp-content/uploads/diferenciacervezaalelager-3.jpg',
                                        ).image,
                                      ),
                                    ),
                                    child: Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          0, 80, 0, 0),
                                      child: InkWell(
                                        onTap: () async {
                                          context.pushNamed('busquedaAvanzada');
                                        },
                                        child: Text(
                                          buscadorXTipoBebidaRecord!.tipo!,
                                          textAlign: TextAlign.center,
                                          style: GoogleFonts.getFont(
                                            'Inter',
                                            color: Color(0xFFEFFF9B),
                                            fontWeight: FontWeight.bold,
                                            fontSize: 40,
                                            fontStyle: FontStyle.normal,
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Container(
                            width: double.infinity,
                            height: 215,
                            decoration: BoxDecoration(
                              color: FlutterFlowTheme.of(context)
                                  .secondaryBackground,
                            ),
                            child: Row(
                              mainAxisSize: MainAxisSize.max,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Expanded(
                                  child: Container(
                                    width: 215,
                                    height: 215,
                                    decoration: BoxDecoration(
                                      color: FlutterFlowTheme.of(context)
                                          .secondaryBackground,
                                      image: DecorationImage(
                                        fit: BoxFit.cover,
                                        image: Image.network(
                                          'data:image/jpeg;base64,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',
                                        ).image,
                                      ),
                                    ),
                                    child: Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          0, 80, 0, 0),
                                      child: Text(
                                        'LARGER',
                                        textAlign: TextAlign.center,
                                        style: GoogleFonts.getFont(
                                          'Inter',
                                          color: Color(0xFFEFFF9B),
                                          fontWeight: FontWeight.bold,
                                          fontSize: 40,
                                          fontStyle: FontStyle.normal,
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                                Expanded(
                                  child: Container(
                                    width: 215,
                                    height: 215,
                                    decoration: BoxDecoration(
                                      color: FlutterFlowTheme.of(context)
                                          .secondaryBackground,
                                      image: DecorationImage(
                                        fit: BoxFit.cover,
                                        image: Image.network(
                                          'https://www.thebeertimes.com/wp-content/uploads/2020/05/Rese%C3%B1a-de-cerveza-artesanal.jpg',
                                        ).image,
                                      ),
                                    ),
                                    child: Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          0, 60, 0, 0),
                                      child: Text(
                                        'ARTEZA- NALES',
                                        textAlign: TextAlign.center,
                                        style: GoogleFonts.getFont(
                                          'Inter',
                                          color: Color(0xFFEFFF9B),
                                          fontWeight: FontWeight.bold,
                                          fontSize: 40,
                                          fontStyle: FontStyle.normal,
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Spacer(),
                          Text(
                            '¿No encuentras lo que buscabas?',
                            style:
                                FlutterFlowTheme.of(context).subtitle2.override(
                                      fontFamily: 'Poppins',
                                      color: Color(0xFF66341D),
                                    ),
                          ),
                          Text(
                            'Si buscabas por algo especifico \ny no lo encuentras, experimenta',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              fontWeight: FontWeight.w300,
                              fontSize: 14,
                              fontStyle: FontStyle.normal,
                            ),
                          ),
                          Padding(
                            padding:
                                EdgeInsetsDirectional.fromSTEB(0, 5, 0, 10),
                            child: FFButtonWidget(
                              onPressed: () async {
                                context.pushNamed('busquedaAvanzada');
                              },
                              text: 'Busqueda avanzada',
                              options: FFButtonOptions(
                                width: 150,
                                height: 35,
                                color: Color(0xFF66341D),
                                textStyle: TextStyle(
                                  color: Color(0xFFEFFF9B),
                                  fontWeight: FontWeight.normal,
                                ),
                                borderSide: BorderSide(
                                  color: Colors.transparent,
                                  width: 1,
                                ),
                                borderRadius: BorderRadius.circular(8),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}
