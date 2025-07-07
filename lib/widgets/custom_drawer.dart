import 'package:flutter/material.dart';
import 'package:responsive_app/models/drawer_item_model.dart';
import 'package:responsive_app/utils/app_assets.dart';
import 'package:responsive_app/widgets/drawer_item.dart';
import 'package:responsive_app/widgets/drawer_item_list_view.dart';
import 'package:responsive_app/widgets/user_info_list_tile.dart';

class CustomDrawer extends StatelessWidget {
  const CustomDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: CustomScrollView(
        slivers: [
          SliverToBoxAdapter(
            child: const UserInfoListTile(
              image: Assets.imagesAvatar1,
              title: 'Lekan Okeowo',
              subtitle: 'demo@gmail.com',
            ),
          ),
          SliverToBoxAdapter(child: const SizedBox(height: 8)),
          DrawerItemListView(),
          SliverFillRemaining(
            hasScrollBody: false,
            child: Column(
              children: [
                const Expanded(child: SizedBox(height: 20)),
                InActiveDrawerItem(
                  drawerItemModel: DrawerItemModel(
                    icon: Assets.imagesSettingsIcon,
                    title: 'Setting system',
                  ),
                ),
                InActiveDrawerItem(
                  drawerItemModel: DrawerItemModel(
                    icon: Assets.imagesLogoutIcon,
                    title: 'Logout account',
                  ),
                ),
                const SizedBox(height: 48),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
