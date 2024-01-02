import 'package:flutter/material.dart';

class TicketShapeClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    final path = Path();

    // Define the size of the half-circle cut
    final double radius = 50.0;

    // Calculate the top center coordinates
    final double topCenterX = size.width / 2;
    final double topCenterY = 0.0;

    // Calculate the bottom center coordinates
    final double bottomCenterX = size.width / 2;
    final double bottomCenterY = size.height;

    // Calculate control points for the Bezier curve
    final double controlPointTopX = topCenterX - radius;
    final double controlPointBottomX = bottomCenterX + radius;

    // Start from top left corner
    path.moveTo(0, 0);

    // Draw the top-left line
    path.lineTo(controlPointTopX, 0);

    // Draw the top semi-circle
    path.quadraticBezierTo(
        topCenterX, topCenterY, controlPointTopX + 2 * radius, 0);

    // Draw the top-right line
    path.lineTo(size.width, 0);

    // Draw the bottom-right line
    path.lineTo(size.width, size.height);

    // Draw the bottom semi-circle
    path.quadraticBezierTo(bottomCenterX, bottomCenterY,
        controlPointBottomX - 2 * radius, size.height);

    // Draw the bottom-left line
    path.lineTo(0, size.height);

    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) {
    return false;
  }
}
