import '../auth/auth_util.dart';
import '../flutter_flow/flutter_flow_icon_button.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import '../flutter_flow/flutter_flow_widgets.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MenuPageWidget extends StatefulWidget {
  const MenuPageWidget({Key? key}) : super(key: key);

  @override
  _MenuPageWidgetState createState() => _MenuPageWidgetState();
}

class _MenuPageWidgetState extends State<MenuPageWidget> {
  final _unfocusNode = FocusNode();
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void dispose() {
    _unfocusNode.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
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
            Icons.close,
            color: Color(0xFF66341D),
            size: 30,
          ),
          onPressed: () async {
            context.pop();
          },
        ),
        title: Padding(
          padding: EdgeInsetsDirectional.fromSTEB(0, 15, 0, 0),
          child: Text(
            'Menu',
            style: FlutterFlowTheme.of(context).title2.override(
                  fontFamily: 'Poppins',
                  color: Color(0xFF66341D),
                  fontSize: 22,
                ),
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
                      Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(20, 50, 20, 0),
                        child: FFButtonWidget(
                          onPressed: () async {
                            context.pushNamed('pantallaPrincipal');
                          },
                          text: 'Inicio',
                          icon: Icon(
                            Icons.home,
                            color: Color(0xFFEFFF9B),
                            size: 15,
                          ),
                          options: FFButtonOptions(
                            width: double.infinity,
                            height: 50,
                            color: Color(0xFF66341D),
                            textStyle: TextStyle(
                              color: Color(0xFFEFFF9B),
                            ),
                            borderSide: BorderSide(
                              color: Colors.transparent,
                              width: 1,
                            ),
                            borderRadius: BorderRadius.circular(8),
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(20, 10, 20, 0),
                        child: FFButtonWidget(
                          onPressed: () async {
                            context.pushNamed('buscadorXTipo');
                          },
                          text: 'Buscador',
                          icon: Icon(
                            Icons.search,
                            color: Color(0xFFEFFF9B),
                            size: 15,
                          ),
                          options: FFButtonOptions(
                            width: double.infinity,
                            height: 50,
                            color: Color(0xFF66341D),
                            textStyle: TextStyle(
                              color: Color(0xFFEFFF9B),
                            ),
                            borderSide: BorderSide(
                              color: Colors.transparent,
                              width: 1,
                            ),
                            borderRadius: BorderRadius.circular(8),
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(20, 10, 20, 0),
                        child: FFButtonWidget(
                          onPressed: () {
                            print('Button pressed ...');
                          },
                          text: 'Carrito',
                          icon: Icon(
                            Icons.shopping_cart,
                            color: Color(0xFFEFFF9B),
                            size: 15,
                          ),
                          options: FFButtonOptions(
                            width: double.infinity,
                            height: 50,
                            color: Color(0xFF66341D),
                            textStyle: TextStyle(
                              color: Color(0xFFEFFF9B),
                            ),
                            borderSide: BorderSide(
                              color: Colors.transparent,
                              width: 1,
                            ),
                            borderRadius: BorderRadius.circular(8),
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(20, 10, 20, 0),
                        child: FFButtonWidget(
                          onPressed: () async {
                            context.pushNamed('perfilPage');
                          },
                          text: 'Perfil',
                          icon: Icon(
                            Icons.person,
                            color: Color(0xFFEFFF9B),
                            size: 15,
                          ),
                          options: FFButtonOptions(
                            width: double.infinity,
                            height: 50,
                            color: Color(0xFF66341D),
                            textStyle: TextStyle(
                              color: Color(0xFFEFFF9B),
                            ),
                            borderSide: BorderSide(
                              color: Colors.transparent,
                              width: 1,
                            ),
                            borderRadius: BorderRadius.circular(8),
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(20, 10, 20, 0),
                        child: FFButtonWidget(
                          onPressed: () {
                            print('Button pressed ...');
                          },
                          text: 'Configuracion de notificaciones',
                          icon: Icon(
                            Icons.notifications_active,
                            color: Color(0xFFEFFF9B),
                            size: 15,
                          ),
                          options: FFButtonOptions(
                            width: double.infinity,
                            height: 50,
                            color: Color(0xFF66341D),
                            textStyle: TextStyle(
                              color: Color(0xFFEFFF9B),
                            ),
                            borderSide: BorderSide(
                              color: Colors.transparent,
                              width: 1,
                            ),
                            borderRadius: BorderRadius.circular(8),
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(20, 10, 20, 0),
                        child: FFButtonWidget(
                          onPressed: () {
                            print('Button pressed ...');
                          },
                          text: 'Mis Cervezas',
                          icon: Icon(
                            Icons.star,
                            color: Color(0xFFEFFF9B),
                            size: 15,
                          ),
                          options: FFButtonOptions(
                            width: double.infinity,
                            height: 50,
                            color: Color(0xFF66341D),
                            textStyle: TextStyle(
                              color: Color(0xFFEFFF9B),
                            ),
                            borderSide: BorderSide(
                              color: Colors.transparent,
                              width: 1,
                            ),
                            borderRadius: BorderRadius.circular(8),
                          ),
                        ),
                      ),
                      Spacer(),
                      Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(0, 0, 0, 30),
                        child: FFButtonWidget(
                          onPressed: () async {
                            GoRouter.of(context).prepareAuthEvent();
                            await signOut();

                            context.goNamedAuth('loginPage', mounted);
                          },
                          text: 'Cerrar Seción',
                          options: FFButtonOptions(
                            width: 130,
                            height: 40,
                            color: Color(0xFF66341D),
                            textStyle: TextStyle(
                              color: Color(0xFFEFFF9B),
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
  }
}
