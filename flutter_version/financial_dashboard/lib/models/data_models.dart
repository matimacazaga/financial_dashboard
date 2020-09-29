class BondData {
  String especie;
  String vencimiento;
  double ultimo;
  double variacion;
  double cierreAnterior;

  BondData({this.especie, this.vencimiento, this.ultimo, this.variacion, this.cierreAnterior});


}

class BondDollarData {
  String especie;
  double mep;
  double cable;
  double variacionMep;
  double variacionCable;
  double spread;

  BondDollarData({this.especie, this.mep, this.cable, this.variacionMep, this.variacionCable, this.spread});

}

class DollarData {
  String tipo;
  double cclPromedio;
  double mepPromedio;
  double spread;

  DollarData({this.tipo, this.cclPromedio, this.mepPromedio, this.spread});
}