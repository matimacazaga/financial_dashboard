import 'package:financial_dashboard/data/tables_data.dart';
import 'package:financial_dashboard/utils/constants.dart';
import 'package:flutter/material.dart';

class CclAcciones extends StatelessWidget {
  const CclAcciones({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 10.0),
      child: Container(
        alignment: Alignment.centerLeft,
        width: 555.0,
        child: Row(
          children: [
            Icon(Icons.insert_chart),
            SizedBox(
              width: 10.0,
            ),
            Text('CCL Acciones', style: kColumnHeaderStyle),
            SizedBox(
              width: 20.0,
            ),
            Text(
              '\$ $cclAcciones',
              style: TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.w600,
              ),
            )
          ],
        ),
      ),
    );
  }
}
