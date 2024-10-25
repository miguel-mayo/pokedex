import 'package:collection/collection.dart';
import 'package:flutter/material.dart';

enum PokemonType {
  bug(Color(0xFF94BC4A), 'b'),
  dark(Color(0xFF736C75), 'd'),
  dragon(Color(0xFF6A7BAF), 'n'),
  electric(Color(0xFFE5C531), 'l'),
  fairy(Color(0xFFE397D1), 'y'),
  fighting(Color(0xFFCB5F48), 'f'),
  fire(Color(0xFFEA7A3C), 'r'),
  flying(Color(0xFF7DA6DE), 'v'),
  ghost(Color(0xFF846AB6), 'h'),
  grass(Color(0xFF71C558), 'g'),
  ground(Color(0xFFCC9F4F), 'a'),
  ice(Color(0xFF70CBD4), 'i'),
  normal(Color(0xFFAAB09F), 'c'),
  poison(Color(0xFFB468B7), 'o'),
  psychic(Color(0xFFE5709B), 'p'),
  rock(Color(0xFFB2A061), 'k'),
  steel(Color(0xFF89A1B0), 'm'),
  water(Color(0xFF539AE2), 'w'),
  unknown(Color(0xFF68A090), 'u');

  final Color color;
  final String icon;

  const PokemonType(this.color, this.icon);
}

class PokemonTypeHelper {
  static Color? getColorFromName(String name) => PokemonType.values
      .firstWhereOrNull((element) => element.toString().contains(name))
      ?.color;

  static Text getIconFromName(String name) {
    final type = PokemonType.values
        .firstWhereOrNull((element) => element.toString().contains(name));

    return Text(
      type?.icon ?? '',
      style: TextStyle(
          fontFamily: 'Essentiarum', fontSize: 20, color: type?.color),
    );
  }
}
