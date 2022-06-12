import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CreateTabScreen extends StatelessWidget {
  const CreateTabScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 1.sh,
      width: 1.sw,
      color: Colors.white,
      child: Center(
        child:  Text(
          'Create Screen',
          style: TextStyle(
            fontSize: 50.sp,
          ),
        ),
      ),
    );
  }
}
