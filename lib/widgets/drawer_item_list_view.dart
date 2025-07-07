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
    DrawerItemModel(icon: Assets.imagesDashboardIcon, title: 'Dashboard'),
    DrawerItemModel(
      icon: Assets.imagesTransactionIcon,
      title: 'My Transactions',
    ),
    DrawerItemModel(icon: Assets.imagesStatisticsIcon, title: 'Statistics'),
    DrawerItemModel(icon: Assets.imagesWalletIcon, title: 'Wallet Account'),
    DrawerItemModel(
      icon: Assets.imagesInvestmentsIcon,
      title: 'My Investments',
    ),
  ];

  int activeIndex = 0;

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
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
