import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';

class LoadingWidget extends StatelessWidget {
  const LoadingWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: const Center(
        child: SpinKitFadingCircle(
          color: Color(0xFFF5D70A),
          size: 50.0,
        ),
      ),
    );
  }
}
