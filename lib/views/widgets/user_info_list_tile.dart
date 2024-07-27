import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:responsive_dashboard/utils/app_styles.dart';

class UserInfoListTile extends StatelessWidget {
  const UserInfoListTile({super.key, required this.image, required this.title, required this.subTitle});

  final String image, title, subTitle;

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Color(0xffFAFAFA),
      elevation: 0,
      child: ListTile(
        leading: SvgPicture.asset(
          image,
        ),
        title: Text(
          title,
          style: StylesApp.styleSemiBold16,
        ),
        subtitle: Text(
          subTitle,
          style: StylesApp.styleRegular12,
        ),
      ),
    );
  }
}
