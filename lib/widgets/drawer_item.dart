import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:responsive_app/models/drawer_item_model.dart';
import 'package:responsive_app/utils/app_styles.dart';

class DrawerItem extends StatelessWidget {
  const DrawerItem({
    super.key,
    required this.drawerItemModel,
    required this.isActive,
  });
  final DrawerItemModel drawerItemModel;
  final bool isActive;

  @override
  Widget build(BuildContext context) {
    return AnimatedSwitcher(
      duration: const Duration(milliseconds: 300),
      transitionBuilder: (child, animation) {
        return FadeTransition(opacity: animation, child: child);
      },
      child: isActive
          ? ActiveDrawerItem(
              key: const ValueKey('active'),
              drawerItemModel: drawerItemModel,
            )
          : InActiveDrawerItem(
              key: const ValueKey('inactive'),
              drawerItemModel: drawerItemModel,
            ),
    );
  }
}

class InActiveDrawerItem extends StatelessWidget {
  const InActiveDrawerItem({super.key, required this.drawerItemModel});

  final DrawerItemModel drawerItemModel;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: SvgPicture.asset(drawerItemModel.icon),
      title: Text(drawerItemModel.title, style: AppStyles.styleMedium16),
    );
  }
}

class ActiveDrawerItem extends StatelessWidget {
  const ActiveDrawerItem({super.key, required this.drawerItemModel});

  final DrawerItemModel drawerItemModel;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: SvgPicture.asset(drawerItemModel.icon),
      title: Text(drawerItemModel.title, style: AppStyles.styleBold16),
      trailing: Container(width: 3.27, color: const Color(0xFF4EB7F2)),
    );
  }
}
