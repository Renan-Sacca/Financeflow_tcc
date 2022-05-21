import '../../flutter_flow/flutter_flow_util.dart';

import 'api_manager.dart';

export 'api_manager.dart' show ApiCallResponse;

class AtualizarfaturaCall {
  static Future<ApiCallResponse> call({
    String idUsuario = '',
    String idFatura = '',
    double valor,
  }) {
    return ApiManager.instance.makeApiCall(
      callName: 'atualizarfatura',
      apiUrl:
          'https://6e54-187-45-131-170.ngrok.io/descontar_transacao/${idUsuario}/${idFatura}/${valor}',
      callType: ApiCallType.GET,
      headers: {},
      params: {},
      returnBody: true,
    );
  }
}

class DescontarfixoCall {
  static Future<ApiCallResponse> call({
    String idUsuario = '',
    String idFatura = '',
  }) {
    return ApiManager.instance.makeApiCall(
      callName: 'descontarfixo',
      apiUrl:
          'https://6e54-187-45-131-170.ngrok.io/descontar/${idUsuario}/${idFatura}',
      callType: ApiCallType.GET,
      headers: {},
      params: {},
      returnBody: true,
    );
  }
}

class CalculasaldoCall {
  static Future<ApiCallResponse> call({
    String idUsuario = '',
  }) {
    return ApiManager.instance.makeApiCall(
      callName: 'calculasaldo',
      apiUrl:
          'https://6e54-187-45-131-170.ngrok.io/calcula_saldo/${idUsuario}/',
      callType: ApiCallType.GET,
      headers: {},
      params: {},
      returnBody: true,
    );
  }
}

class CriarbanconubankCall {
  static Future<ApiCallResponse> call({
    String idUsuario = '',
  }) {
    return ApiManager.instance.makeApiCall(
      callName: 'criarbanconubank',
      apiUrl: 'https://6e54-187-45-131-170.ngrok.io/nubank/${idUsuario}/',
      callType: ApiCallType.GET,
      headers: {},
      params: {},
      returnBody: true,
    );
  }
}

class AtualizabancoCall {
  static Future<ApiCallResponse> call({
    String idUsuario = '',
  }) {
    return ApiManager.instance.makeApiCall(
      callName: 'atualizabanco',
      apiUrl: 'https://6e54-187-45-131-170.ngrok.io/nubank_banco/${idUsuario}',
      callType: ApiCallType.GET,
      headers: {},
      params: {},
      returnBody: true,
    );
  }
}

class ParcelarCall {
  static Future<ApiCallResponse> call({
    String idFatura = '',
    int vezes,
  }) {
    return ApiManager.instance.makeApiCall(
      callName: 'parcelar',
      apiUrl:
          'https://6e54-187-45-131-170.ngrok.io/parcelas/${idFatura}/${vezes}/',
      callType: ApiCallType.GET,
      headers: {},
      params: {},
      returnBody: true,
    );
  }
}
