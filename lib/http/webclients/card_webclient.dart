import 'package:http/http.dart';
import 'package:pokemon_tcg_deck/http/response_pokemon.dart';
import 'package:pokemon_tcg_deck/http/webclient.dart';

class CardWebClient {
  final url = "/v2/cards";  

  Future<ResponsePokemon> find(String name) async {
    final Response response = await client.get(
      Uri.https(baseUrl, url, {
        'q': 'name:$name',
        'X-Api-Key': apiKey 
      }),
      headers: {"Accept": "application/json"},
    );
    return ResponsePokemon.fromJson(response.body);
  }
}
