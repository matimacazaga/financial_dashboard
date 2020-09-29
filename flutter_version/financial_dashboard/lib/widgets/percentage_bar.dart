import 'package:flutter/material.dart';
import 'package:financial_dashboard/utils/utils.dart';
import 'package:flutter/src/widgets/basic.dart';

class PercentageBarDataCell extends StatelessWidget {
  final double variacion;
  final double minVariacion;
  final double maxVariacion;
  final double width;

  const PercentageBarDataCell(
      {Key key,
      this.variacion,
      this.minVariacion,
      this.maxVariacion,
      this.width})
      : super(key: key);

  double getPercentageNormalized() {
    if (variacion == 0.0) {
      return 0.0;
    }
    return variacion / (variacion < 0.0 ? minVariacion : maxVariacion);
  }

  @override
  Widget build(BuildContext context) {
    if (variacion == null) {
      return Text('-');
    } else {
      double percentageNormalized = getPercentageNormalized();
      bool variacionNegative = variacion < 0.0;
      Color progressColor =
          variacionNegative ? Colors.red[800] : Colors.green[600];
      String variacionText = Formatter.percentageFormatter(variacion);
      return Row(
        children: [
          Stack(
            children: [
              Container(
                height: 20,
                width: width,
                decoration: BoxDecoration(
                  color: Colors.grey,
                  borderRadius: BorderRadius.all(Radius.circular(6)),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black,
                      blurRadius: 1.5,
                      spreadRadius: 0.5, // shadow direction: bottom right
                    )
                  ],
                ),
              ),
              Row(
                children: [
                  Container(
                    height: 20,
                    width: variacionNegative
                        ? 0.5 * (1 - percentageNormalized) * width
                        : 0.5 * width,
                  ),
                  Container(
                      height: 20,
                      width: 0.5 * width * percentageNormalized,
                      decoration: BoxDecoration(
                        borderRadius: variacionNegative
                            ? BorderRadius.horizontal(left: Radius.circular(6))
                            : BorderRadius.horizontal(
                                right: Radius.circular(6)),
                        color: progressColor,
                      )),
                ],
              ),
            ],
          ),
          SizedBox(
            width: 10,
          ),
          Text(
            "$variacionText",
            style: TextStyle(color: progressColor, fontWeight: FontWeight.w800),
          )
        ],
      );
    }
  }
}
