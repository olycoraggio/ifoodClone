import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

const String pathIcons = 'assets/icons/';

class AppIcons {
  static const arrowDown = '${pathIcons}arrow_down.svg';

  static const homeActive = '${pathIcons}bottom/home_active.svg';

  static const home = '${pathIcons}bottom/home.svg';

  static const ordersActive = '${pathIcons}bottom/orders_active.svg';

  static const orders = '${pathIcons}bottom/orders.svg';

  static const profile = '${pathIcons}bottom/profile.svg';

  static const searchActive = '${pathIcons}bottom/search_active.svg';

  static const search = '${pathIcons}bottom/search.svg';
}

class AppIcon extends StatelessWidget {
  final String icon;
  final Size size;
  final Color color;

  const AppIcon(
    this.icon, {
    Key key,
    this.size,
    this.color,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return SvgPicture.asset(
      icon,
      height: size?.height ?? 24,
      width: size?.width ?? 24,
      color: color ?? Colors.black,
    );
  }
}
