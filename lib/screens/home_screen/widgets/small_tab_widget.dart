import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class SmallTab extends Tab {
  final Icon icon;

  const SmallTab({Key? key, required this.icon}) : super(key: key, icon: icon);

  @override
  Size get preferredSize => Size(3.0.w, 46.0);
}
