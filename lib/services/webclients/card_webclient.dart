import 'package:http/http.dart';
import 'package:pokemon_tcg_deck/models/card/pokemon.dart';
import 'package:pokemon_tcg_deck/services/response_pokemon.dart';
import 'package:pokemon_tcg_deck/services/webclient.dart';

class CardWebClient {
  final cards = "/v2/cards";
  final pokemons = "/pokemons";

  Future<ResponsePokemon> find(String name) async {
    final Response response = await client.get(
      Uri.https(baseUrlTCGAPI, cards, {'q': 'name:$name', 'X-Api-Key': apiKey}),
      headers: {"Accept": "application/json"},
    );
    return ResponsePokemon.fromJson(response.body);
  }

  Future<void> create(Pokemon pokemon) async {
    client.post(
      Uri.http(baseUrlServer, pokemons),
      headers: {"Accept": "application/json"},
      body: pokemon.toJson(),
    );
  }
}
