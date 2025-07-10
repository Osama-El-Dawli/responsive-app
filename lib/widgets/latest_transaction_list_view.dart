import 'package:flutter/material.dart';
import 'package:responsive_app/models/user_info_model.dart';
import 'package:responsive_app/utils/app_assets.dart';
import 'package:responsive_app/widgets/user_info_list_tile.dart';

class LatestTransactionListView extends StatelessWidget {
  const LatestTransactionListView({super.key});

  static const List<UserInfoModel> users = [
    UserInfoModel(
      name: 'Madrani Andi',
      email: 'Madraniadi20@gmail',
      image: Assets.imagesAvatar2,
    ),
    UserInfoModel(
      name: 'Josua Nunito',
      email: 'Josh Nunito@gmail.com',
      image: Assets.imagesAvatar3,
    ),
    UserInfoModel(
      name: 'Madrani Andi',
      email: 'Madraniadi20@gmail',
      image: Assets.imagesAvatar2,
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: users.map((e) {
          return IntrinsicWidth(child: UserInfoListTile(userModel: e));
        }).toList(),
      ),
    );
  }
}
