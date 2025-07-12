import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:responsive_app/models/user_info_model.dart';
import 'package:responsive_app/utils/app_styles.dart';

class UserInfoListTile extends StatelessWidget {
  const UserInfoListTile({super.key, required this.userModel});
  final UserInfoModel userModel;

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 0,
      color: const Color(0xffFAFAFA),
      child: ListTile(
        leading: SvgPicture.asset(userModel.image),
        title: Text(userModel.name, style: AppStyles.styleSemiBold16),
        subtitle: Text(userModel.email, style: AppStyles.styleRegular12),
      ),
    );
  }
}
