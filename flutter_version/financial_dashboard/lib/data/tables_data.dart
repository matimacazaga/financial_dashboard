import 'package:financial_dashboard/utils/utils.dart';
import '../models/data_models.dart';
import 'dart:math';
import 'package:financial_dashboard/utils/is_null.dart';

List<BondData> dataContadoInmediato = [
  BondData(
      especie: 'AL29',
      vencimiento: 'SPOT',
      ultimo: 6200.0,
      variacion: -0.0032,
      cierreAnterior: 6220.0),
  BondData(
      especie: 'AL29D',
      vencimiento: 'SPOT',
      ultimo: 47.0,
      variacion: -0.0408,
      cierreAnterior: 49.0),
  BondData(
      especie: 'AL29C',
      vencimiento: 'SPOT',
      ultimo: 44.51,
      variacion: -0.0323,
      cierreAnterior: 46.0),
  BondData(
      especie: 'AL30',
      vencimiento: 'SPOT',
      ultimo: 6014.0,
      variacion: -0.0118,
      cierreAnterior: 6086.0),
  BondData(
      especie: 'AL30D',
      vencimiento: 'SPOT',
      ultimo: 45.30,
      variacion: -0.0420,
      cierreAnterior: 47.29),
  BondData(
      especie: 'AL30C',
      vencimiento: 'SPOT',
      ultimo: 42.81,
      variacion: -0.0673,
      cierreAnterior: 45.90),
  BondData(
      especie: 'AL35',
      vencimiento: 'SPOT',
      ultimo: 5280.0,
      variacion: 0.0018,
      cierreAnterior: 5270.0),
  BondData(
      especie: 'AL35D',
      vencimiento: 'SPOT',
      ultimo: 40.0,
      variacion: -0.0366,
      cierreAnterior: 41.52),
  BondData(
      especie: 'AL35C',
      vencimiento: 'SPOT',
      ultimo: null,
      variacion: 0.0,
      cierreAnterior: 38.80),
  BondData(
      especie: 'AE38',
      vencimiento: 'SPOT',
      ultimo: 5650.0,
      variacion: -0.0173,
      cierreAnterior: 5750.0),
  BondData(
      especie: 'AE38D',
      vencimiento: 'SPOT',
      ultimo: 43.0,
      variacion: -0.0341,
      cierreAnterior: 44.52),
  BondData(
      especie: 'AE38C',
      vencimiento: 'SPOT',
      ultimo: null,
      variacion: 0.0,
      cierreAnterior: 42.12),
  BondData(
      especie: 'AL41',
      vencimiento: 'SPOT',
      ultimo: 5025.0,
      variacion: -0.0147,
      cierreAnterior: 5100.0),
  BondData(
      especie: 'AL41D',
      vencimiento: 'SPOT',
      ultimo: 39.25,
      variacion: -0.0272,
      cierreAnterior: 40.35),
  BondData(
      especie: 'AL41C',
      vencimiento: 'SPOT',
      ultimo: null,
      variacion: 0.0,
      cierreAnterior: null),
];

double minVariacionContadoInmediato = dataContadoInmediato
    .where((e) => isNull(e.variacion))
    .map((e) => e.variacion)
    .reduce(min);

double maxVariacionContadoInmediato = dataContadoInmediato
    .where((e) => isNull(e.variacion))
    .map((e) => e.variacion)
    .reduce(max);

List<BondData> data48Hs = [
  BondData(
      especie: 'AL29',
      vencimiento: '48HS',
      ultimo: 6170.0,
      variacion: -0.0064,
      cierreAnterior: 6210.0),
  BondData(
      especie: 'AL29D',
      vencimiento: '48HS',
      ultimo: 47.0,
      variacion: -0.0279,
      cierreAnterior: 48.35),
  BondData(
      especie: 'AL29C',
      vencimiento: '48HS',
      ultimo: 44.50,
      variacion: -0.0273,
      cierreAnterior: 45.75),
  BondData(
      especie: 'AL30',
      vencimiento: '48HS',
      ultimo: 6000.0,
      variacion: -0.0180,
      cierreAnterior: 6110.0),
  BondData(
      especie: 'AL30D',
      vencimiento: '48HS',
      ultimo: 45.40,
      variacion: -0.0360,
      cierreAnterior: 47.10),
  BondData(
      especie: 'AL30C',
      vencimiento: '48HS',
      ultimo: 42.59,
      variacion: -0.0429,
      cierreAnterior: 44.50),
  BondData(
      especie: 'AL35',
      vencimiento: '48HS',
      ultimo: 5290.0,
      variacion: -0.0093,
      cierreAnterior: 5340.0),
  BondData(
      especie: 'AL35D',
      vencimiento: '48HS',
      ultimo: 39.8,
      variacion: -0.0432,
      cierreAnterior: 41.60),
  BondData(
      especie: 'AL35C',
      vencimiento: '48HS',
      ultimo: null,
      variacion: 0.0,
      cierreAnterior: 39.0),
  BondData(
      especie: 'AE38',
      vencimiento: '48HS',
      ultimo: 5675.0,
      variacion: -0.0121,
      cierreAnterior: 5745.0),
  BondData(
      especie: 'AE38D',
      vencimiento: '48HS',
      ultimo: 42.85,
      variacion: -0.0316,
      cierreAnterior: 44.25),
  BondData(
      especie: 'AE38C',
      vencimiento: '48HS',
      ultimo: 40.94,
      variacion: -0.0134,
      cierreAnterior: 41.50),
  BondData(
      especie: 'AL41',
      vencimiento: '48HS',
      ultimo: 5089.50,
      variacion: -0.004,
      cierreAnterior: 5110.0),
  BondData(
      especie: 'AL41D',
      vencimiento: '48HS',
      ultimo: 38.60,
      variacion: -0.0349,
      cierreAnterior: 40.0),
  BondData(
      especie: 'AL41C',
      vencimiento: '48HS',
      ultimo: null,
      variacion: 0.0,
      cierreAnterior: 38.10),
];

double minVariacion48Hs = data48Hs
    .where((e) => isNull(e.variacion))
    .map((e) => e.variacion)
    .reduce(min);

double maxVariacion48Hs = data48Hs
    .where((e) => isNull(e.variacion))
    .map((e) => e.variacion)
    .reduce(max);

List<BondDollarData> dataContadoInmediatoDolar = [
  BondDollarData(
      especie: 'AL29',
      mep: 131.91,
      cable: 139.29,
      variacionMep: 0.0392,
      variacionCable: 0.0302,
      spread: 0.0559),
  BondDollarData(
      especie: 'AL30',
      mep: 131.76,
      cable: 140.48,
      variacionMep: 0.0316,
      variacionCable: 0.0595,
      spread: 0.0582),
  BondDollarData(
      especie: 'AL35',
      mep: 132.0,
      cable: null,
      variacionMep: null,
      variacionCable: null,
      spread: null),
  BondDollarData(
      especie: 'AE38',
      mep: 131.40,
      cable: null,
      variacionMep: null,
      variacionCable: null,
      spread: null),
  BondDollarData(
      especie: 'AL41',
      mep: 128.03,
      cable: null,
      variacionMep: null,
      variacionCable: null,
      spread: null),
];

double minVariacionContadoInmediatoDolarMep = dataContadoInmediatoDolar
    .where((e) => isNull(e.variacionMep))
    .map((e) => e.variacionMep)
    .reduce(min);

double maxVariacionContadoInmediatoDolarMep = dataContadoInmediatoDolar
    .where((e) => isNull(e.variacionMep))
    .map((e) => e.variacionMep)
    .reduce(max);

double minVariacionContadoInmediatoDolarCable = dataContadoInmediatoDolar
    .where((e) => isNull(e.variacionCable))
    .map((e) => e.variacionCable)
    .reduce(min);

double maxVariacionContadoInmediatoDolarCable = dataContadoInmediatoDolar
    .where((e) => isNull(e.variacionCable))
    .map((e) => e.variacionCable)
    .reduce(max);

List<BondDollarData> data48HsDolar = [
  BondDollarData(
      especie: 'AL29',
      mep: 131.28,
      cable: 138.65,
      variacionMep: 0.0221,
      variacionCable: 0.0215,
      spread: 0.0562),
  BondDollarData(
      especie: 'AL30',
      mep: 132.16,
      cable: 140.88,
      variacionMep: 0.0188,
      variacionCable: 0.0260,
      spread: 0.0660),
  BondDollarData(
      especie: 'AL35',
      mep: 132.91,
      cable: null,
      variacionMep: 0.0354,
      variacionCable: null,
      spread: null),
  BondDollarData(
      especie: 'AE38',
      mep: 131.44,
      cable: 138.62,
      variacionMep: 0.0201,
      variacionCable: 0.0013,
      spread: 0.0467),
  BondDollarData(
      especie: 'AL41',
      mep: 131.85,
      cable: null,
      variacionMep: 0.0321,
      variacionCable: null,
      spread: null),
];

double minVariacion48HsDolarMep = data48HsDolar
    .where((e) => isNull(e.variacionMep))
    .map((e) => e.variacionMep)
    .reduce(min);

double maxVariacion48HsDolarMep = data48HsDolar
    .where((e) => isNull(e.variacionMep))
    .map((e) => e.variacionMep)
    .reduce(max);

double minVariacion48HsDolarCable = data48HsDolar
    .where((e) => isNull(e.variacionCable))
    .map((e) => e.variacionCable)
    .reduce(min);

double maxVariacion48HsDolarCable = data48HsDolar
    .where((e) => isNull(e.variacionCable))
    .map((e) => e.variacionCable)
    .reduce(max);

List<DollarData> dataDolar = [
  DollarData(
      tipo: 'Contado Inmediato',
      cclPromedio: 139.89,
      mepPromedio: 131.22,
      spread: 0.0610),
  DollarData(
      tipo: '48 Hs', cclPromedio: 139.38, mepPromedio: 132.13, spread: 0.0549),
];

double cclAcciones = 137.80;
