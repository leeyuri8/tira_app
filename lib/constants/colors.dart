import 'package:flutter/cupertino.dart';
import 'package:hexcolor/hexcolor.dart';


var mainColor = HexColor('#D9583B');
var textColor = HexColor('#FFB1A0');
var white = HexColor('#FFFFFF');
var black = HexColor('#000000');
var background = HexColor('#ECECEC');
var secondColor = HexColor('#757575');

var gradient1 = LinearGradient(
    colors: [HexColor('#CA2229'), HexColor('#FFCF64')],
    tileMode: TileMode.decal,
    begin: Alignment.topCenter,
    end: Alignment.bottomCenter);
