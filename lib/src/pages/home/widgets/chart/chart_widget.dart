import 'package:flutter/material.dart';

import 'package:dev_quiz/core/app_colors.dart';
import 'package:dev_quiz/core/app_text_styles.dart';

class ChartWidget extends StatefulWidget {
  final double percent;
  const ChartWidget({
    Key? key,
    required this.percent,
  }) : super(key: key);
  @override
  _ChartWidgetState createState() => _ChartWidgetState();
}

class _ChartWidgetState extends State<ChartWidget>
    with SingleTickerProviderStateMixin {
  late AnimationController animationController;
  late Animation<double> animation;

  initAnimation() {
    animationController =
        AnimationController(vsync: this, duration: Duration(seconds: 4));
    animation = Tween<double>(begin: 0.0, end: widget.percent).animate(
      animationController,
    );
    animationController.forward();
  }

  @override
  void initState() {
    initAnimation();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
        height: 80,
        width: 80,
        child: AnimatedBuilder(
          builder: (context, _) {
            return Stack(
              children: [
                Center(
                  child: Container(
                    width: 80,
                    height: 80,
                    child: CircularProgressIndicator(
                      strokeWidth: 10,
                      value: animationController.value,
                      backgroundColor: AppColors.chartSecondary,
                      valueColor: AlwaysStoppedAnimation<Color>(
                        AppColors.chartPrimary,
                      ),
                    ),
                  ),
                ),
                Center(
                  child: Text(
                    '${(animationController.value * 100).toInt()}%',
                    style: AppTextStyles.heading,
                  ),
                )
              ],
            );
          },
          animation: animationController,
        ));
  }
}
