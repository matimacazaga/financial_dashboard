import 'package:flutter/cupertino.dart';

import 'package:flutter/material.dart';

TextStyle kColumnHeaderStyle = TextStyle(
  fontSize: 16,
  fontWeight: FontWeight.w700,
  color: Colors.black,
);

TextStyle kCellTextStyle = TextStyle(
  fontSize: 14,
  fontWeight: FontWeight.w500,
  color: Colors.black,
);

TextStyle kTitleTextStyle = TextStyle(
  fontSize: 22,
  fontWeight: FontWeight.w900,
  color: Colors.black,
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

BoxDecoration kBoxDecorationDataTableShadow = BoxDecoration(
  color: Colors.white,
  borderRadius: BorderRadius.circular(12.0),
  // borderRadius: BorderRadius.only(
  //   topLeft: Radius.circular(10),
  //     topRight: Radius.circular(10),
  //     bottomLeft: Radius.circular(10),
  //     bottomRight: Radius.circular(10)
  // ),
  boxShadow: [
    BoxShadow(
      color: Colors.grey.withOpacity(0.5),
      spreadRadius: 5,
      blurRadius: 7,
      offset: Offset(0, 3), // changes position of shadow
    ),
  ],
);
