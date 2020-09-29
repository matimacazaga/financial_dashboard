import 'package:financial_dashboard/data/tables_data.dart';
import 'package:financial_dashboard/utils/utils.dart';
import 'package:financial_dashboard/widgets/widgets.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Panel Financiero'),
      ),
      body: Responsive(
        mobile: MobileHomePage(),
        desktop: DesktopHomePage(),
      ),
    );
  }
}

class MobileHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.vertical,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 20.0),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 10.0, bottom: 5.0),
              child: Container(
                child: Text('Bonos Ley Local - Contado inmediato',
                    style: kTitleTextStyle),
              ),
            ),
            BonosLeyLocalContadoInmediatoDataTable(),
            Padding(
              padding: const EdgeInsets.only(top: 10.0, bottom: 5.0),
              child: Container(
                child: Text(
                  'Bonos Ley Local - 48 Hs',
                  style: kTitleTextStyle,
                ),
              ),
            ),
            BonosLeyLocal48HsDataTable(),
            Padding(
              padding: const EdgeInsets.only(top: 10.0, bottom: 5.0),
              child: Container(
                child: Text(
                  'Cotización dólar MEP y CABLE',
                  style: kTitleTextStyle,
                ),
              ),
            ),
            DolarContadoInmediatoDataTable(),
            SizedBox(height: 10),
            Dolar48HsDataTable(),
            Padding(
              padding: const EdgeInsets.only(top: 10.0),
              child: Column(
                children: [
                  DolarDataTable(),
                  CclAcciones(),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class DesktopHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.vertical,
      child: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: 20.0,
          vertical: 10.0,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Row(
              children: [
                Expanded(
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(top: 10.0, bottom: 5.0),
                        child: Container(
                          child: Text('Bonos Ley Local - Contado inmediato',
                              style: kTitleTextStyle),
                        ),
                      ),
                      BonosLeyLocalContadoInmediatoDataTable(),
                    ],
                  ),
                ),
                SizedBox(
                  width: 20,
                ),
                Expanded(
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(top: 10.0, bottom: 5.0),
                        child: Container(
                          child: Text(
                            'Bonos Ley Local - 48 Hs',
                            style: kTitleTextStyle,
                          ),
                        ),
                      ),
                      BonosLeyLocal48HsDataTable(),
                    ],
                  ),
                ),
              ],
            ),
            Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 10.0, bottom: 5.0),
                  child: Container(
                    child: Text(
                      'Cotización dólar MEP y CABLE',
                      style: kTitleTextStyle,
                    ),
                  ),
                ),
                DolarContadoInmediatoDataTable(),
                SizedBox(height: 10),
                Dolar48HsDataTable(),
                Padding(
                  padding: const EdgeInsets.only(top: 10.0),
                  child: Column(
                    children: [
                      DolarDataTable(),
                      CclAcciones(),
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
