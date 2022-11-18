

import 'package:flutter/material.dart';

class Recipe {
  Recipe(
      {this.recipeName = '',
      this.recipeImage = '',
      this.recipeMaker = '',
      this.startColor,
      this.endColor});

  String recipeName;
  String recipeImage;
  String recipeMaker;
  Color? startColor;
  Color? endColor;
}

var recipes = [
  Recipe(
    recipeName: 'kZy-',
    recipeImage: 'sadhya.jpg',
    recipeMaker: 'Mother\'s Veg Plaza',
    startColor: const Color(0xFFF37552),
    endColor: const Color(0xFFF58B5A),
  ),
  Recipe(
    recipeName: '_n-cn-bm-Wn- ',
    recipeImage: 'biriyani.jpg',
    recipeMaker: 'Paragon Hotel',
    startColor: const Color(0xFF621e14),
    endColor: const Color(0xFFd13b10),
  ),
  Recipe(
    recipeName: '-s]m-tdm«- _o-^v ',
    recipeImage: 'porotta_beef.webp',
    recipeMaker: 'Rahmath Hotel',
    startColor: const Color(0xFFe18b41),
    endColor: const Color(0xFFc7c73d),
  ),
  Recipe(
    recipeName: '-tZmi- ',
    recipeImage: 'Dosa.jpg',
    recipeMaker: 'Aryas Hotel',
    startColor: const Color(0xFFaf781d),
    endColor: const Color(0xFFd6a651),
  ),
  Recipe(
    recipeName: ']m-e-S- {]-Y-a-³-  ',
    recipeImage: 'palada_pradhaman.jpg',
    recipeMaker: 'Payasam Center',
    startColor: const Color(0xFF9a9d9a),
    endColor: const Color(0xFFb9b2b5),
  ),
  Recipe(
    recipeName: 'N-«n- ]-¯n-cn- ',
    recipeImage: 'Chatti-Pathiri.jpg',
    recipeMaker: 'Mamatha Backery',
    startColor: const Color(0xFF2e0f07),
    endColor: const Color(0xFF653424),
  ),
  Recipe(
    recipeName: 'I-¸- ao-³- I-dn- ',
    recipeImage: 'kappa_meancurry.jpg',
    recipeMaker: 'Shappu',
    startColor: const Color(0xFF8b1d07),
    endColor: const Color(0xFFee882d),
  ),
  Recipe(
    recipeName: 'D-®n-b-¸w-',
    recipeImage: 'unniyappam.jpg',
    recipeMaker: 'Mamatha Backery',
    startColor: const Color(0xFFa1783c),
    endColor: const Color(0xFFf3dc37),
  ),
  
];