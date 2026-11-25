# Lab Activity 1A

## Enhancements

1. I added an image area to the `NewsfeedCard` widget.
2. I used profile pictures for the post authors and the comment profile.
3. I made the Like, Comment, and Share buttons using a reusable button widget.

## Laboratory Discussion

I added the image in `newsfeed_card.dart` using `Image.asset`. The image is inside a `ClipRRect` widget, which gives it rounded corners and keeps it inside the post card. I used `BoxFit.cover` so the image fills the area neatly.

The image is dynamic because `NewsfeedCard` has a `hasImage` value. When I set `hasImage: true` for a post, the image area appears. If it is false or left empty, the image area is not shown. This lets me use the same post widget for posts with or without pictures. The sample posts currently use `assets/images/ironman.jpg` for the image.

For the profile pictures, I used `CircleAvatar` with image assets. The post author's picture changes based on the name: Steve Rogers uses `steverogers.jpg`, and Tony Stark uses `tonystark.jpg`. The comment box uses `profile.jpg`.

I made the Like, Comment, and Share buttons with one reusable `actionButton` helper. I pass it an icon, a label, and an action. This keeps the buttons looking the same and avoids repeating the button layout. The number of likes is shown as a count; I did not add reaction tracking.

## Challenge and Solution

One challenge was making the same post card work with and without an image. I solved this by checking `hasImage` before building the image area. Another challenge was keeping the image inside the card without awkward edges. I used `ClipRRect`, a fixed image height, and `BoxFit.cover` to make it fit neatly.
