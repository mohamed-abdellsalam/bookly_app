import 'package:bookly/core/utils/styles.dart';
import 'package:flutter/widgets.dart';

class CustomErrorWidget extends StatelessWidget {
  const CustomErrorWidget({super.key, required this.errMessaage});
  final String errMessaage;
  @override
  Widget build(BuildContext context) {
    return Text(
      errMessaage,
      style: Styls.textStyle18,
    );
  }
}
