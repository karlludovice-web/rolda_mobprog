# Newsfeed and Notifications App

## Laboratory Discussion

I made the posts and notifications using reusable widgets. Each post uses the same `NewsfeedCard`, so I only need to give it the person's name, post text, date, likes, and whether it has an image. I put the cards in a list, which keeps the newsfeed organized and easy to update.

Notifications use the same idea. Each one uses a `NotificationWidget` with a name, post, and message. I placed the notification widgets in a scrollable list. This made it simple to add examples for likes, comments, and shares without building every row from scratch.

## Enhancements

- Added a Notifications page and connected it to the bottom navigation.
- Added a Profile icon and a blank Profile page.
- Added more sample posts and 20 sample notifications.
- Added profile pictures to posts and notifications.
- Changed the app colors to use National University inspired blue and gold.
- Changed the notification layout so long messages fit on the screen.

## Challenges and Solutions

One challenge was making the bottom navigation open the correct page. At first, there were more navigation buttons than pages. I fixed this by adding a page for each button and keeping their order the same.

Another challenge was long notification text overflowing the screen. I placed the text inside an `Expanded` widget so it uses the remaining row space and wraps when needed.

I also wanted the posts and notifications to look consistent. Reusing the same widgets for each item helped keep their layout and style alike, and made it easier to add more examples.
