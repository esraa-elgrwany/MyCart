import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/utils/app_colors.dart';

class NotActiveTab extends StatelessWidget {
  final String icon;

  const NotActiveTab({
    super.key,
    required this.icon,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 8),
      child: ImageIcon(
        AssetImage(icon),
        size: 24.sp,
        color: Colors.white,
      ),
    );
  }
}