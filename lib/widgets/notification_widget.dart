import 'package:material_ui/material_ui.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:rolda_mobprog/widgets/custom_text.dart';
import 'package:rolda_mobprog/constants.dart';


class NotificationWidget extends StatelessWidget {
  const NotificationWidget({
    super.key,
    required this.name,
    required this.post,
    required this.description,
  });

  final String name;
  final String post;
  final String description;

  @override
  Widget build(BuildContext context) {
    final profileImage = name == 'Steve Rogers'
        ? 'assets/images/steverogers.jpg'
        : 'assets/images/tonystark.jpg';

    return Container(
      padding: EdgeInsets.all(ScreenUtil().setSp(15)),
      child: Row(
        children: [
          CircleAvatar(
            radius: ScreenUtil().setSp(20),
            backgroundImage: AssetImage(profileImage),
          ),
          SizedBox(width: ScreenUtil().setSp(10)),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                CustomText(
                  text: name,
                  fontSize: ScreenUtil().setSp(20),
                  color: fbTextPrimary,
                  fontWeight: FontWeight.w800,
                ),
                CustomText(
                  text: 'Post: $post',
                  fontSize: ScreenUtil().setSp(13),
                  color: fbTextPrimary,
                ),
                CustomText(
                  text: description,
                  fontSize: ScreenUtil().setSp(12),
                  color: fbTextSecondary,
                  fontStyle: FontStyle.italic,
                ),
              ],
            ),
          ),
          const Icon(Icons.more_horiz),
        ],
      ), // Row
    ); // Container
  }
}
