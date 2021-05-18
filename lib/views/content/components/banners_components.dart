import 'package:flutter/material.dart';

import '../../../core/theme/app_colors.dart';

class BannerComponent extends StatefulWidget {
  final List<BannerItemComponent> list;

  const BannerComponent({Key key, this.list}) : super(key: key);

  @override
  _BannerComponentState createState() => _BannerComponentState();
}

class _BannerComponentState extends State<BannerComponent> {
  final PageController _pageController = PageController(viewportFraction: 0.9);
  int _currentIndex = 0;
  @override
  void initState() {
    super.initState();
    _pageController.addListener(_onChangePage);
  }

  _onChangePage() {
    setState(() {
      _currentIndex = _pageController.page.round();
    });
  }

  @override
  void dispose() {
    _pageController.removeListener(_onChangePage);
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 16),
      child: Column(
        children: [
          SizedBox(
            height: 110,
            child: PageView(
              controller: _pageController,
              children: widget.list,
              physics: BouncingScrollPhysics(),
              scrollDirection: Axis.horizontal,
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 12),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: widget.list
                  .map((e) => Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 4),
                        child: AnimatedContainer(
                          duration: Duration(milliseconds: 200),
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: widget.list.indexOf(e) == _currentIndex
                                ? AppColors.grey700
                                : AppColors.grey200,
                          ),
                          height: 6,
                          width: 6,
                        ),
                      ))
                  .toList(),
            ),
          )
        ],
      ),
    );
  }
}

class BannerItemComponent extends StatelessWidget {
  final String imagePath;

  const BannerItemComponent({Key key, this.imagePath}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(8),
        child: Image.asset(
          imagePath,
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}
