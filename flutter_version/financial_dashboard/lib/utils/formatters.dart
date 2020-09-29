import 'package:flutter_money_formatter/flutter_money_formatter.dart';

class Formatter {
  static String currencyFormatter(double value){
    if (value == null) {
      return '-';
    }
    FlutterMoneyFormatter fmf = FlutterMoneyFormatter(amount: value);
    return fmf.copyWith(thousandSeparator: '.', decimalSeparator: ',').output.symbolOnLeft;
  }

  static String percentageFormatter(double value){
    if(value == null){
      return '-';
    }
    return (value*100.0).toStringAsPrecision(2) + '%';
  }
}