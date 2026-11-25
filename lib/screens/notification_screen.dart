import 'package:material_ui/material_ui.dart';
import 'package:rolda_mobprog/widgets/notification_widget.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:rolda_mobprog/constants.dart';

class NotificationScreen extends StatefulWidget {
  const NotificationScreen({super.key});

  @override
  State<NotificationScreen> createState() => _NotificationScreenState();
}

class _NotificationScreenState extends State<NotificationScreen> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: fbSurface,
      width: ScreenUtil().screenWidth,
      child: ListView(
        children: const [
          NotificationWidget(name: 'Tony Stark', post: 'I am Iron Man.', description: 'Liked your post'),
          Divider(),
          NotificationWidget(name: 'Steve Rogers', post: 'I can do this all day!', description: 'Commented on your post'),
          Divider(),
          NotificationWidget(name: 'Steve Rogers', post: 'A quiet day is a rare thing.', description: 'Shared your post'),
          Divider(),
          NotificationWidget(name: 'Tony Stark', post: 'Friendly neighborhood update', description: 'Commented: “Not bad for a neighborhood update.”'),
          Divider(),
          NotificationWidget(name: 'Tony Stark', post: 'Science is better with friends.', description: 'Liked your post'),
          Divider(),
          NotificationWidget(name: 'Steve Rogers', post: 'Making time for friends', description: 'Shared your post'),
          Divider(),
          NotificationWidget(name: 'Steve Rogers', post: 'A little fresh air', description: 'Commented: “Could use some fresh air myself.”'),
          Divider(),
          NotificationWidget(name: 'Tony Stark', post: 'Checking in from above the clouds', description: 'Liked your post'),
          Divider(),
          NotificationWidget(name: 'Tony Stark', post: 'Family movie night', description: 'Shared your post'),
          Divider(),
          NotificationWidget(name: 'Steve Rogers', post: 'Built something new today', description: 'Commented: “Looking forward to seeing it.”'),
          Divider(),
          NotificationWidget(name: 'Steve Rogers', post: 'Weekend plans', description: 'Liked your post'),
          Divider(),
          NotificationWidget(name: 'Tony Stark', post: 'The feast was worthy of legends', description: 'Commented: “Save me a seat next time.”'),
          Divider(),
          NotificationWidget(name: 'Tony Stark', post: 'Small details matter', description: 'Shared your post'),
          Divider(),
          NotificationWidget(name: 'Steve Rogers', post: 'Moving forward together', description: 'Liked your post'),
          Divider(),
          NotificationWidget(name: 'Steve Rogers', post: 'I am Iron Man.', description: 'Commented: “You always did know how to make an entrance.”'),
          Divider(),
          NotificationWidget(name: 'Tony Stark', post: 'I can do this all day!', description: 'Shared your post'),
          Divider(),
          NotificationWidget(name: 'Tony Stark', post: 'A quiet day is a rare thing.', description: 'Liked your post'),
          Divider(),
          NotificationWidget(name: 'Steve Rogers', post: 'Friendly neighborhood update', description: 'Commented: “The city is in good hands.”'),
          Divider(),
          NotificationWidget(name: 'Steve Rogers', post: 'Science is better with friends.', description: 'Shared your post'),
          Divider(),
          NotificationWidget(name: 'Tony Stark', post: 'Making time for friends', description: 'Commented: “Put it on the calendar.”'),
          Divider(),
          NotificationWidget(name: 'Tony Stark', post: 'A little fresh air', description: 'Liked your post'),
        ],
      ), // ListView
    ); // Container
  }
}
