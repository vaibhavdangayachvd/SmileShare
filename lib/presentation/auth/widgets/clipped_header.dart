import 'package:flutter/material.dart';
import 'package:smileshare/presentation/auth/widgets/curve_clipper.dart';

class ClippedHeader extends StatelessWidget {
  final IconData icon;
  final String title;
  final String subtitle;

  const ClippedHeader({
    @required this.icon,
    @required this.title,
    @required this.subtitle,
  });

  double _getHeight(MediaQueryData mediaQuery) {
    return mediaQuery.orientation == Orientation.portrait
        ? mediaQuery.size.height * .55
        : mediaQuery.size.height * .9;
  }

  @override
  Widget build(BuildContext context) {
    final theme=Theme.of(context);
    final mediaQuery = MediaQuery.of(context);
    return ClipPath(
      clipper: CurveClipper(),
      child: Container(
        color:theme.primaryColor,
        height: _getHeight(mediaQuery),
        width: _getWidth(mediaQuery),
        child: Column(
          children: <Widget>[
            const SizedBox(height: 10),
            CircleAvatar(
              minRadius: 60,
              child: Icon(icon, size: 60),
            ),
            const SizedBox(height: 20),
            Text(
              title,
              style: theme.textTheme.headline5.copyWith(
                color: Colors.white,
              ),
            ),
            const SizedBox(height: 20),
            Text(
              subtitle,
              style: theme.textTheme.subtitle1.copyWith(
                color: Colors.white,
              ),
            ),
          ],
        ),
      ),
    );
  }

  double _getWidth(MediaQueryData mediaQuery) {
    return mediaQuery.size.width;
  }
}
