import 'package:http/http.dart';
import 'package:http_interceptor/http_interceptor.dart';
import 'package:pokemon_tcg_deck/services/interceptors/logging_interceptors.dart';

final Client client = InterceptedClient.build(
  interceptors: [LoggingInterceptor()],
  requestTimeout: const Duration(seconds: 10)
);

const String baseUrl = "api.pokemontcg.io";
const String apiKey = "7b4f3e40-0915-4447-ba39-430e8d5f263d";