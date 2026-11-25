import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:rolda_mobprog/constants.dart';
import 'package:rolda_mobprog/widgets/custom_text.dart';
import 'package:material_ui/material_ui.dart';

class NewsfeedCard extends StatelessWidget {
  final String userName;
  final String postContent;
  final String date;
  final int? numOfLikes;
  final int? numOfComments;
  final int? numOfShares;
  final bool? hasImage;

  const NewsfeedCard({
    super.key,
    required this.userName,
    required this.postContent,
    required this.date,
    this.numOfLikes,
    this.numOfComments,
    this.numOfShares,
    this.hasImage,
  });

  // Reusable Action Button
  Widget actionButton({
    required IconData icon,
    required String label,
    required VoidCallback onPressed,
  }) {
    return Expanded(
      child: TextButton(
        onPressed: onPressed,
        style: TextButton.styleFrom(
          foregroundColor: fbDarkPrimary,
          padding: EdgeInsets.symmetric(vertical: 10.h),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(8.r),
          ),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(icon, size: 17.sp),
            SizedBox(width: 5.w),
            Flexible(
              child: CustomText(
                text: label,
                fontSize: 12.sp,
                color: fbDarkPrimary,
                fontWeight: FontWeight.w600,
              ),
            ),
          ],
        ),
      ),
    );
  }

  // Reusable Engagement Text
  Widget engagementText(String text) {
    return CustomText(
      text: text,
      fontSize: 11.sp,
      color: Colors.grey[600]!,
    );
  }

  @override
  Widget build(BuildContext context) {
    final String profileImage = userName == 'Steve Rogers'
        ? 'assets/images/steverogers.jpg'
        : 'assets/images/tonystark.jpg';

    return Card(
      margin: EdgeInsets.symmetric(
        horizontal: 10.w,
        vertical: 7.h,
      ),
      elevation: 2,
      shadowColor: Colors.black.withOpacity(0.08),
          color: Colors.white,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12.r),
      ),
      clipBehavior: Clip.antiAlias,
      child: Padding(
        padding: EdgeInsets.all(12.w),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // USER HEADER
            Row(
              children: [
                CircleAvatar(
                  radius: 21.r,
                  backgroundColor: Colors.grey[200],
                  backgroundImage: AssetImage(profileImage),
                ),

                SizedBox(width: 10.w),

                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      CustomText(
                        text: userName,
                        fontSize: 14.sp,
                color: fbTextPrimary,
                        fontWeight: FontWeight.bold,
                      ),

                      SizedBox(height: 2.h),

                      Row(
                        children: [
                          CustomText(
                            text: date,
                            fontSize: 11.sp,
                            color: Colors.grey[600]!,
                          ),

                          SizedBox(width: 5.w),

                          Icon(
                            Icons.public,
                            size: 12.sp,
                            color: Colors.grey[600],
                          ),
                        ],
                      ),
                    ],
                  ),
                ),

                IconButton(
                  onPressed: () {
                    // More options
                  },
                  icon: Icon(
                    Icons.more_horiz,
                    color: Colors.grey[700],
                    size: 22.sp,
                  ),
                  constraints: const BoxConstraints(),
                  padding: EdgeInsets.all(5.w),
                ),
              ],
            ),

            SizedBox(height: 12.h),

            // POST CONTENT
            CustomText(
              text: postContent,
              fontSize: 13.sp,
              color: fbTextPrimary,
            ),

            // POST IMAGE
            if (hasImage == true) ...[
              SizedBox(height: 12.h),

              ClipRRect(
                borderRadius: BorderRadius.circular(10.r),
                child: Image.asset(
                  'assets/images/ironman.jpg',
                  width: double.infinity,
                  height: 200.h,
                  fit: BoxFit.cover,
                  errorBuilder: (context, error, stackTrace) {
                    return Container(
                      height: 200.h,
                      width: double.infinity,
                      color: Colors.grey[200],
                      alignment: Alignment.center,
                      child: Icon(
                        Icons.image_not_supported_outlined,
                        size: 35.sp,
                        color: Colors.grey,
                      ),
                    );
                  },
                ),
              ),
            ],

            SizedBox(height: 12.h),

            // ENGAGEMENT COUNTS
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Icon(
                      Icons.thumb_up,
                      color: fbGoldText,
                      size: 14.sp,
                    ),

                    SizedBox(width: 5.w),

                    engagementText('${numOfLikes ?? 0}'),
                  ],
                ),

                Row(
                  children: [
                    engagementText('${numOfComments ?? 0} Comments'),

                    SizedBox(width: 10.w),

                    engagementText('${numOfShares ?? 0} Shares'),
                  ],
                ),
              ],
            ),

            SizedBox(height: 10.h),

            Divider(
              height: 1,
              thickness: 0.7,
              color: Colors.grey[300],
            ),

            // ACTION BUTTONS
            Row(
              children: [
                actionButton(
                  icon: Icons.thumb_up_outlined,
                  label: 'Like',
                  onPressed: () {
                    // Like button pressed
                  },
                ),

                actionButton(
                  icon: Icons.mode_comment_outlined,
                  label: 'Comment',
                  onPressed: () {
                    // Comment button pressed
                  },
                ),

                actionButton(
                  icon: Icons.share_outlined,
                  label: 'Share',
                  onPressed: () {
                    // Share button pressed
                  },
                ),
              ],
            ),

            Divider(
              height: 1,
              thickness: 0.7,
              color: Colors.grey[300],
            ),

            SizedBox(height: 12.h),

            // COMMENT INPUT
            Row(
              children: [
                CircleAvatar(
                  radius: 16.r,
                  backgroundImage: const AssetImage(
                    'assets/images/profile.jpg',
                  ),
                ),

                SizedBox(width: 9.w),

                Expanded(
                  child: Container(
                    height: 36.h,
                    padding: EdgeInsets.symmetric(horizontal: 12.w),
                    alignment: Alignment.centerLeft,
                    decoration: BoxDecoration(
                      color: Colors.grey[100],
                      borderRadius: BorderRadius.circular(20.r),
                      border: Border.all(
                        color: Colors.grey[300]!,
                        width: 0.7,
                      ),
                    ),
                    child: CustomText(
                      text: 'Write a comment...',
                      fontSize: 11.sp,
                      color: Colors.grey[600]!,
                    ),
                  ),
                ),

                SizedBox(width: 5.w),

                IconButton(
                  onPressed: () {
                    // Add image to comment
                  },
                  icon: Icon(
                    Icons.image_outlined,
                    size: 19.sp,
                    color: Colors.grey[600],
                  ),
                  constraints: const BoxConstraints(),
                  padding: EdgeInsets.all(7.w),
                ),
              ],
            ),

            SizedBox(height: 12.h),

            // VIEW COMMENTS
            if ((numOfComments ?? 0) > 0)
              GestureDetector(
                onTap: () {
                  // View all comments
                },
                child: CustomText(
                  text: 'View all comments',
                  fontSize: 11.sp,
                  color: Colors.grey[700]!,
                  fontWeight: FontWeight.bold,
                ),
              ),
          ],
        ),
      ),
    );
  }
}
