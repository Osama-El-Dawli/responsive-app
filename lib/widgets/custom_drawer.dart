import 'package:flutter/material.dart';
import 'package:responsive_app/models/drawer_item_model.dart';
import 'package:responsive_app/models/user_info_model.dart';
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
      child: const CustomScrollView(
        slivers: [
          SliverToBoxAdapter(
            child: UserInfoListTile(
              userModel: UserInfoModel(
                name: 'Lekan Okeowo',
                email: 'demo@gmail.com',
                image: Assets.imagesAvatar1,
              ),
            ),
          ),
          SliverToBoxAdapter(child: SizedBox(height: 8)),
          DrawerItemListView(),
          SliverFillRemaining(
            hasScrollBody: false,
            child: Column(
              children: [
                Expanded(child: SizedBox(height: 20)),
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
                SizedBox(height: 48),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
