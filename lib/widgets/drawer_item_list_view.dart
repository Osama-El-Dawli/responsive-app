import 'package:flutter/material.dart';
import 'package:responsive_app/models/drawer_item_model.dart';
import 'package:responsive_app/utils/app_assets.dart';
import 'package:responsive_app/widgets/drawer_item.dart';

class DrawerItemListView extends StatefulWidget {
  const DrawerItemListView({super.key});

  @override
  State<DrawerItemListView> createState() => _DrawerItemListViewState();
}

class _DrawerItemListViewState extends State<DrawerItemListView> {
  final List<DrawerItemModel> items = [
    const DrawerItemModel(icon: Assets.imagesDashboardIcon, title: 'Dashboard'),
    const DrawerItemModel(
      icon: Assets.imagesTransactionIcon,
      title: 'My Transactions',
    ),
    const DrawerItemModel(
      icon: Assets.imagesStatisticsIcon,
      title: 'Statistics',
    ),
    const DrawerItemModel(
      icon: Assets.imagesWalletIcon,
      title: 'Wallet Account',
    ),
    const DrawerItemModel(
      icon: Assets.imagesInvestmentsIcon,
      title: 'My Investments',
    ),
  ];

  int activeIndex = 0;

  @override
  Widget build(BuildContext context) {
    return SliverList.builder(
      itemCount: items.length,
      itemBuilder: (context, index) {
        return InkWell(
          onTap: () {
            if (activeIndex != index) {
              setState(() {
                activeIndex = index;
              });
            }
          },
          child: Padding(
            padding: const EdgeInsets.only(top: 20.0),
            child: DrawerItem(
              drawerItemModel: items[index],
              isActive: activeIndex == index,
            ),
          ),
        );
      },
    );
  }
}
