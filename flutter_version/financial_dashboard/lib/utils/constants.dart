import 'package:flutter/cupertino.dart';

import 'package:flutter/material.dart';

TextStyle kColumnHeaderStyle = TextStyle(
  fontSize: 16,
  fontWeight: FontWeight.w700,
  color: Colors.white,
);

TextStyle kCellTextStyle = TextStyle(
  fontSize: 14,
  fontWeight: FontWeight.w500,
  color: Colors.white,
);

TextStyle kTitleTextStyle = TextStyle(
  fontSize: 22,
  fontWeight: FontWeight.w900,
  color: Colors.white,
);

BoxDecoration kBoxDecorationDataTable = BoxDecoration(
  borderRadius: BorderRadius.circular(12.0),
  color: Color(0xff5a348b),
  gradient: LinearGradient(
    colors: [Color(0xff380036), Color(0xff0CBABA)],
    begin: Alignment.centerRight,
    end: Alignment(-1.0, -2.0),
  ),
);
