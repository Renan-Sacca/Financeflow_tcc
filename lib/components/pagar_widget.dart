import '../auth/auth_util.dart';
import '../backend/api_requests/api_calls.dart';
import '../backend/backend.dart';
import '../flutter_flow/flutter_flow_icon_button.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import '../flutter_flow/flutter_flow_widgets.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';

class PagarWidget extends StatefulWidget {
  const PagarWidget({
    Key key,
    this.pagar,
  }) : super(key: key);

  final DocumentReference pagar;

  @override
  _PagarWidgetState createState() => _PagarWidgetState();
}

class _PagarWidgetState extends State<PagarWidget> {
  @override
  Widget build(BuildContext context) {
    return StreamBuilder<ParcelasRecord>(
      stream: ParcelasRecord.getDocument(widget.pagar),
      builder: (context, snapshot) {
        // Customize what your widget looks like when it's loading.
        if (!snapshot.hasData) {
          return Center(
            child: SizedBox(
              width: 40,
              height: 40,
              child: SpinKitFadingCircle(
                color: FlutterFlowTheme.of(context).primaryColor,
                size: 40,
              ),
            ),
          );
        }
        final containerParcelasRecord = snapshot.data;
        return Container(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height * 1,
          decoration: BoxDecoration(
            color: FlutterFlowTheme.of(context).darkBackground,
          ),
          child: Padding(
            padding: EdgeInsetsDirectional.fromSTEB(20, 0, 20, 0),
            child: SingleChildScrollView(
              child: Column(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      FlutterFlowIconButton(
                        borderColor: Colors.transparent,
                        borderRadius: 30,
                        borderWidth: 1,
                        buttonSize: 60,
                        icon: Icon(
                          Icons.arrow_back,
                          color: Color(0xFFFFFFFFFF),
                          size: 30,
                        ),
                        onPressed: () async {
                          Navigator.pop(context);
                        },
                      ),
                      Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(0, 8, 0, 0),
                        child: Text(
                          FFLocalizations.of(context).getText(
                            '7210y2e1' /* Pay installment: */,
                          ),
                          style: FlutterFlowTheme.of(context).title2,
                        ),
                      ),
                    ],
                  ),
                  Divider(
                    thickness: 3,
                    indent: 150,
                    endIndent: 150,
                    color: Color(0xFF465056),
                  ),
                  Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(0, 24, 0, 20),
                    child: Row(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        StreamBuilder<List<TransactionCategoriesRecord>>(
                          stream: queryTransactionCategoriesRecord(
                            queryBuilder: (transactionCategoriesRecord) =>
                                transactionCategoriesRecord.where('user',
                                    isEqualTo: currentUserReference),
                            singleRecord: true,
                          ),
                          builder: (context, snapshot) {
                            // Customize what your widget looks like when it's loading.
                            if (!snapshot.hasData) {
                              return Center(
                                child: SizedBox(
                                  width: 40,
                                  height: 40,
                                  child: SpinKitFadingCircle(
                                    color: FlutterFlowTheme.of(context)
                                        .primaryColor,
                                    size: 40,
                                  ),
                                ),
                              );
                            }
                            List<TransactionCategoriesRecord>
                                buttonTransactionCategoriesRecordList =
                                snapshot.data;
                            final buttonTransactionCategoriesRecord =
                                buttonTransactionCategoriesRecordList.isNotEmpty
                                    ? buttonTransactionCategoriesRecordList
                                        .first
                                    : null;
                            return FFButtonWidget(
                              onPressed: () async {
                                final parcelasUpdateData =
                                    createParcelasRecordData(
                                  pagou: true,
                                );
                                await widget.pagar.update(parcelasUpdateData);
                                await AtualizarfaturaCall.call(
                                  idUsuario: currentUserUid,
                                  idFatura: containerParcelasRecord.banco,
                                  valor: containerParcelasRecord.valor,
                                );
                                Navigator.pop(context);
                              },
                              text: FFLocalizations.of(context).getText(
                                'a8zvyxnx' /* Pay and cash */,
                              ),
                              options: FFButtonOptions(
                                width: 150,
                                height: 50,
                                color:
                                    FlutterFlowTheme.of(context).primaryColor,
                                textStyle: FlutterFlowTheme.of(context)
                                    .subtitle2
                                    .override(
                                      fontFamily: 'Lexend Deca',
                                      color: Colors.white,
                                      fontWeight: FontWeight.w500,
                                    ),
                                elevation: 3,
                                borderSide: BorderSide(
                                  color: Colors.transparent,
                                  width: 1,
                                ),
                                borderRadius: 8,
                              ),
                            );
                          },
                        ),
                        StreamBuilder<List<TransactionCategoriesRecord>>(
                          stream: queryTransactionCategoriesRecord(
                            queryBuilder: (transactionCategoriesRecord) =>
                                transactionCategoriesRecord.where('user',
                                    isEqualTo: currentUserReference),
                            singleRecord: true,
                          ),
                          builder: (context, snapshot) {
                            // Customize what your widget looks like when it's loading.
                            if (!snapshot.hasData) {
                              return Center(
                                child: SizedBox(
                                  width: 40,
                                  height: 40,
                                  child: SpinKitFadingCircle(
                                    color: FlutterFlowTheme.of(context)
                                        .primaryColor,
                                    size: 40,
                                  ),
                                ),
                              );
                            }
                            List<TransactionCategoriesRecord>
                                buttonTransactionCategoriesRecordList =
                                snapshot.data;
                            final buttonTransactionCategoriesRecord =
                                buttonTransactionCategoriesRecordList.isNotEmpty
                                    ? buttonTransactionCategoriesRecordList
                                        .first
                                    : null;
                            return FFButtonWidget(
                              onPressed: () async {
                                final parcelasUpdateData =
                                    createParcelasRecordData(
                                  pagou: true,
                                );
                                await containerParcelasRecord.reference
                                    .update(parcelasUpdateData);
                                Navigator.pop(context);
                              },
                              text: FFLocalizations.of(context).getText(
                                'mnhd26yn' /* Pay */,
                              ),
                              options: FFButtonOptions(
                                width: 150,
                                height: 50,
                                color:
                                    FlutterFlowTheme.of(context).primaryColor,
                                textStyle: FlutterFlowTheme.of(context)
                                    .subtitle2
                                    .override(
                                      fontFamily: 'Lexend Deca',
                                      color: Colors.white,
                                      fontWeight: FontWeight.w500,
                                    ),
                                elevation: 3,
                                borderSide: BorderSide(
                                  color: Colors.transparent,
                                  width: 1,
                                ),
                                borderRadius: 8,
                              ),
                            );
                          },
                        ),
                      ],
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
