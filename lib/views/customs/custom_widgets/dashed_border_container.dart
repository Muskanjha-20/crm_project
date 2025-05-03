import 'package:flutter/material.dart';
import 'package:list_project/views/constants/colors.dart';

class DashedBorderContainer extends StatelessWidget {
  final Widget child;
  final double strokeWidth;
  final Color color;
  final double dashWidth;
  final double dashSpace;
  final BorderRadius borderRadius;

  const DashedBorderContainer({
    super.key,
    required this.child,
    this.strokeWidth = 1,
    this.color = AppColors.primaryColor,
    this.dashWidth = 5,
    this.dashSpace = 3,
    this.borderRadius = BorderRadius.zero,
  });

  @override
  Widget build(BuildContext context) {
    return CustomPaint(
      painter: _DashedBorderPainter(
        color: color,
        strokeWidth: strokeWidth,
        dashWidth: dashWidth,
        dashSpace: dashSpace,
        borderRadius: BorderRadius.circular(15),
      ),
      child: child,
    );
  }
}

class _DashedBorderPainter extends CustomPainter {
  final double strokeWidth;
  final Color color;
  final double dashWidth;
  final double dashSpace;
  final BorderRadius borderRadius;

  _DashedBorderPainter({
    required this.strokeWidth,
    required this.color,
    required this.dashWidth,
    required this.dashSpace,
    required this.borderRadius,
  });

  @override
  void paint(Canvas canvas, Size size) {
    final paint =
        Paint()
          ..color = color
          ..strokeWidth = strokeWidth
          ..style = PaintingStyle.stroke;

    final rect = Offset.zero & size;
    final rrect = borderRadius.toRRect(rect);

    final path = Path()..addRRect(rrect);
    final pathMetrics = path.computeMetrics();

    for (final metric in pathMetrics) {
      double distance = 0.0;
      while (distance < metric.length) {
        final segment = metric.extractPath(distance, distance + dashWidth);
        canvas.drawPath(segment, paint);
        distance += dashWidth + dashSpace;
      }
    }
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) => true;
}
