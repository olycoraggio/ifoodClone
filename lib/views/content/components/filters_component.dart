import 'package:flutter/material.dart';

import 'package:ifood_flutter_clone/core/theme/app_colors.dart';
import 'package:ifood_flutter_clone/core/theme/app_icons.dart';
import 'package:ifood_flutter_clone/core/theme/app_typography.dart';

class FiltersComponent extends StatelessWidget {
  const FiltersComponent({Key key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return SliverPersistentHeader(
      pinned: true,
      delegate: _FiltersComponentDelegate(),
    );
  }
}

class _FiltersComponentDelegate extends SliverPersistentHeaderDelegate {
  final String location;

  _FiltersComponentDelegate({this.location});
  @override
  Widget build(
      BuildContext context, double shrinkOffset, bool overlapsContent) {
    return Container(
      color: Colors.white,
      height: 50,
      child: ListView(
        physics: BouncingScrollPhysics(),
        scrollDirection: Axis.horizontal,
        children: [
          SizedBox(
            width: 16,
          ),
          FilterItemComponent(
            label: 'Ordenar',
            icon: AppIcons.arrowDown,
          ),
          FilterItemComponent(
            label: 'Para Retirar',
          ),
          FilterItemComponent(
            label: 'Entrega Grátis',
          ),
          FilterItemComponent(
            label: 'Vale Refeição',
          ),
          FilterItemComponent(
            label: 'Distância',
            icon: AppIcons.arrowDown,
          ),
          FilterItemComponent(
            label: 'Entrega Parceira',
            icon: AppIcons.arrowDown,
          ),
          FilterItemComponent(
            label: 'Filtros',
            icon: AppIcons.arrowDown,
          ),
          SizedBox(
            width: 16,
          )
        ],
      ),
    );
  }

  @override
  double get maxExtent => 50;

  @override
  double get minExtent => 50;

  @override
  bool shouldRebuild(covariant SliverPersistentHeaderDelegate oldDelegate) {
    return false;
  }
}

class FilterItemComponent extends StatelessWidget {
  final String label;
  final String icon;

  const FilterItemComponent({
    Key key,
    @required this.label,
    this.icon,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 14, bottom: 14, right: 8),
      child: Container(
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(32),
            color: Colors.white,
            border: Border.all(
              color: AppColors.grey300,
            )),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8),
          child: Row(
            children: [
              Text(
                label,
                style: AppTypography.filterItemStyle(context)
                    .copyWith(color: AppColors.grey700),
              ),
              if (icon != null)
                Padding(
                  padding: const EdgeInsets.only(left: 4),
                  child: AppIcon(
                    icon,
                    size: Size(14, 14),
                    color: AppColors.grey700,
                  ),
                ),
            ],
          ),
        ),
      ),
    );
  }
}
