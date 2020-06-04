import 'package:flutter/material.dart';
import 'package:pd2buildmanager/Mastermind.dart';

abstract class Variables {
  static String buildName = "INSERT NAME HERE";
  static Widget skillTree = Mastermind();
}

class MastermindVariables extends Variables {}

class EnforcerVariables extends Variables {}

class TechnicianVariables extends Variables {}

class GhostVariables extends Variables {}

class FugitiveVariables extends Variables {}

class PerkDecksVariables extends Variables {}
