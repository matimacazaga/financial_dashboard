import 'package:financial_dashboard/data/tables_data.dart';
import 'package:financial_dashboard/utils/utils.dart';
import 'package:financial_dashboard/widgets/widgets.dart';
import 'package:flutter/material.dart';

class CustomDataTable extends StatelessWidget {
  final List<DataColumn> columns;
  final List<DataRow> rows;

  const CustomDataTable({Key key, this.columns, this.rows}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: kBoxDecorationDataTableShadow,
      child: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: DataTable(
            columns: columns,
            rows: rows,
          ),
        ),
      ),
    );
  }
}

class BonosLeyLocal48HsDataTable extends StatelessWidget {
  const BonosLeyLocal48HsDataTable({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CustomDataTable(
      columns: [
        DataColumn(
          label: Text(
            'Especie',
            style: kColumnHeaderStyle,
          ),
        ),
        DataColumn(
          label: Text(
            'Vencimiento',
            style: kColumnHeaderStyle,
          ),
        ),
        DataColumn(
            label: Text(
              'Último',
              style: kColumnHeaderStyle,
            ),
            numeric: true),
        DataColumn(
            label: Text(
          '%',
          style: kColumnHeaderStyle,
        )),
        DataColumn(
            label: Text(
              'Cierre Anterior',
              style: kColumnHeaderStyle,
            ),
            numeric: true),
      ],
      rows: data48Hs
          .map((bondData) => DataRow(cells: [
                DataCell(getEspecieContainer(bondData.especie)),
                DataCell(
                  Text(bondData.vencimiento, style: kCellTextStyle),
                ),
                DataCell(
                  Text(Formatter.currencyFormatter(bondData.ultimo),
                      style: kCellTextStyle),
                ),
                DataCell(PercentageBarDataCell(
                  variacion: bondData.variacion,
                  minVariacion: minVariacion48Hs,
                  maxVariacion: maxVariacion48Hs,
                  width: 100,
                )),
                DataCell(Text(
                    Formatter.currencyFormatter(bondData.cierreAnterior),
                    style: kCellTextStyle)),
              ]))
          .toList(),
    );
  }
}

class BonosLeyLocalContadoInmediatoDataTable extends StatelessWidget {
  const BonosLeyLocalContadoInmediatoDataTable({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CustomDataTable(
      columns: [
        DataColumn(
          label: Text(
            'Especie',
            style: kColumnHeaderStyle,
          ),
        ),
        DataColumn(
          label: Text(
            'Vencimiento',
            style: kColumnHeaderStyle,
          ),
        ),
        DataColumn(
            label: Text(
              'Último',
              style: kColumnHeaderStyle,
            ),
            numeric: true),
        DataColumn(
            label: Text(
          '%',
          style: kColumnHeaderStyle,
        )),
        DataColumn(
            label: Text(
              'Cierre Anterior',
              style: kColumnHeaderStyle,
            ),
            numeric: true),
      ],
      rows: dataContadoInmediato
          .map((bondData) => DataRow(cells: [
                DataCell(getEspecieContainer(bondData.especie)),
                DataCell(
                  Text(bondData.vencimiento, style: kCellTextStyle),
                ),
                DataCell(
                  Text(Formatter.currencyFormatter(bondData.ultimo),
                      style: kCellTextStyle),
                ),
                DataCell(PercentageBarDataCell(
                  variacion: bondData.variacion,
                  minVariacion: minVariacionContadoInmediato,
                  maxVariacion: maxVariacionContadoInmediato,
                  width: 100,
                )),
                DataCell(Text(
                    Formatter.currencyFormatter(bondData.cierreAnterior),
                    style: kCellTextStyle)),
              ]))
          .toList(),
    );
  }
}

class DolarContadoInmediatoDataTable extends StatelessWidget {
  const DolarContadoInmediatoDataTable({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CustomDataTable(
      columns: [
        DataColumn(
          label: Text(
            'Contado Inmediato',
            style: kColumnHeaderStyle,
          ),
        ),
        DataColumn(
          label: Text(
            'MEP T+0',
            style: kColumnHeaderStyle,
          ),
        ),
        DataColumn(
          label: Text(
            'CABLE T+0',
            style: kColumnHeaderStyle,
          ),
        ),
        DataColumn(
          label: Text(
            'Var diaria % MEP',
            style: kColumnHeaderStyle,
          ),
        ),
        DataColumn(
          label: Text(
            'Var diaria % CABLE',
            style: kColumnHeaderStyle,
          ),
        ),
        DataColumn(
          label: Text(
            'Spread',
            style: kColumnHeaderStyle,
          ),
        ),
      ],
      rows: dataContadoInmediatoDolar
          .map((dolarData) => DataRow(cells: [
                DataCell(getEspecieContainer(dolarData.especie)),
                DataCell(
                  Text(Formatter.currencyFormatter(dolarData.mep),
                      style: kCellTextStyle),
                ),
                DataCell(
                  Text(Formatter.currencyFormatter(dolarData.cable),
                      style: kCellTextStyle),
                ),
                DataCell(PercentageBarDataCell(
                  variacion: dolarData.variacionMep,
                  minVariacion: minVariacionContadoInmediatoDolarMep,
                  maxVariacion: maxVariacionContadoInmediatoDolarMep,
                  width: 100,
                )),
                DataCell(PercentageBarDataCell(
                  variacion: dolarData.variacionCable,
                  minVariacion: minVariacionContadoInmediatoDolarCable,
                  maxVariacion: maxVariacionContadoInmediatoDolarCable,
                  width: 100,
                )),
                DataCell(Text(Formatter.percentageFormatter(dolarData.spread),
                    style: kCellTextStyle)),
              ]))
          .toList(),
    );
  }
}

class Dolar48HsDataTable extends StatelessWidget {
  const Dolar48HsDataTable({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CustomDataTable(
      columns: [
        DataColumn(
          label: Text(
            '48 Hs',
            style: kColumnHeaderStyle,
          ),
        ),
        DataColumn(
          label: Text(
            'MEP T+2',
            style: kColumnHeaderStyle,
          ),
        ),
        DataColumn(
          label: Text(
            'CABLE T+2',
            style: kColumnHeaderStyle,
          ),
        ),
        DataColumn(
          label: Text(
            'Var diaria % MEP',
            style: kColumnHeaderStyle,
          ),
        ),
        DataColumn(
          label: Text(
            'Var diaria % CABLE',
            style: kColumnHeaderStyle,
          ),
        ),
        DataColumn(
          label: Text(
            'Spread',
            style: kColumnHeaderStyle,
          ),
        ),
      ],
      rows: data48HsDolar
          .map((dolarData) => DataRow(cells: [
                DataCell(getEspecieContainer(dolarData.especie)),
                DataCell(
                  Text(Formatter.currencyFormatter(dolarData.mep),
                      style: kCellTextStyle),
                ),
                DataCell(
                  Text(Formatter.currencyFormatter(dolarData.cable),
                      style: kCellTextStyle),
                ),
                DataCell(PercentageBarDataCell(
                  variacion: dolarData.variacionMep,
                  minVariacion: minVariacion48HsDolarMep,
                  maxVariacion: maxVariacion48HsDolarMep,
                  width: 100,
                )),
                DataCell(PercentageBarDataCell(
                  variacion: dolarData.variacionCable,
                  minVariacion: minVariacion48HsDolarCable,
                  maxVariacion: maxVariacion48HsDolarCable,
                  width: 100,
                )),
                DataCell(Text(Formatter.percentageFormatter(dolarData.spread),
                    style: kCellTextStyle)),
              ]))
          .toList(),
    );
  }
}

class DolarDataTable extends StatelessWidget {
  const DolarDataTable({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CustomDataTable(
      columns: [
        DataColumn(
          label: Text(
            'Tipo',
            style: kColumnHeaderStyle,
          ),
        ),
        DataColumn(
          label: Text(
            'CCL Prom.',
            style: kColumnHeaderStyle,
          ),
        ),
        DataColumn(
          label: Text(
            'MEP Prom.',
            style: kColumnHeaderStyle,
          ),
        ),
        DataColumn(
          label: Text(
            'Spread',
            style: kColumnHeaderStyle,
          ),
        ),
      ],
      rows: dataDolar
          .map((data) => DataRow(cells: [
                DataCell(
                  Text(
                    data.tipo,
                    style: kCellTextStyle,
                  ),
                ),
                DataCell(
                  Text(
                    Formatter.currencyFormatter(data.cclPromedio),
                    style: kCellTextStyle,
                  ),
                ),
                DataCell(
                  Text(
                    Formatter.currencyFormatter(data.mepPromedio),
                    style: kCellTextStyle,
                  ),
                ),
                DataCell(
                  Text(
                    Formatter.percentageFormatter(data.spread),
                    style: kCellTextStyle,
                  ),
                ),
              ]))
          .toList(),
    );
  }
}
