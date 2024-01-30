import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  const CustomAppBar({
    this.height,
    this.centerTitle = false,
    this.actions = const [],
    this.backgroundColor,
    this.surfaceTintColor,
    this.bottom,
    this.elevation,
    this.showSearch = true,
    this.title = "Now Showing",
    this.subTitle = '',
    super.key,
  });

  final double? height;
  final bool centerTitle;
  final List<Widget> actions;
  final Color? backgroundColor;
  final Color? surfaceTintColor;
  final PreferredSizeWidget? bottom;
  final double? elevation;
  final bool showSearch;
  final String title;
  final String subTitle;

  @override
  Widget build(BuildContext context) {
    return AppBar(
      elevation: elevation,
      surfaceTintColor: surfaceTintColor,
      automaticallyImplyLeading: false,
      backgroundColor: backgroundColor,
      title: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            title,
            style: const TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.w600,
            ),
          ),
          Text(
            subTitle,
            style: const TextStyle(
              color: Colors.white38,
              fontSize: 14.0,
            ),
          ),
        ],
      ),
      centerTitle: centerTitle,
      actions: [
        ...actions,
        if (showSearch)
          IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.search,
              size: 30,
            ),
          ),
      ],
      bottom: bottom,
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(height ?? kToolbarHeight);
}
