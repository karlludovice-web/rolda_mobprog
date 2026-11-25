import 'package:rolda_mobprog/widgets/newsfeed_card.dart';
import 'package:material_ui/material_ui.dart';

class NewsfeedScreen extends StatelessWidget {
  const NewsfeedScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: const [
        NewsfeedCard(
          userName: 'Steve Rogers',
          postContent: 'I can do this all day! #AvengersAssemble',
          date: '2 hours ago',
          numOfLikes: 10,
          hasImage: true,
        ), // NewsfeedCard
        NewsfeedCard(
          userName: 'Tony Stark',
          postContent: 'I am Iron Man. #GeniusBillionairePlayboyPhilanthropist',
          date: 'December 1, 2023',
          numOfLikes: 3000,
          hasImage: true,
        ), // NewsfeedCard
        NewsfeedCard(
          userName: 'Steve Rogers',
          postContent: 'A quiet day is a rare thing. Enjoying every minute.',
          date: '15 minutes ago',
          numOfLikes: 86,
          numOfComments: 12,
          hasImage: true,
        ),
        NewsfeedCard(
          userName: 'Tony Stark',
          postContent: 'Friendly neighborhood update: the city is looking great today!',
          date: '32 minutes ago',
          numOfLikes: 142,
          numOfComments: 21,
          hasImage: true,
        ),
        NewsfeedCard(
          userName: 'Steve Rogers',
          postContent: 'Science is better when you can share it with friends.',
          date: '1 hour ago',
          numOfLikes: 57,
          numOfComments: 8,
          hasImage: true,
        ),
        NewsfeedCard(
          userName: 'Tony Stark',
          postContent: 'Making time for the people who make a place feel like home.',
          date: '2 hours ago',
          numOfLikes: 203,
          numOfComments: 34,
        ),
        NewsfeedCard(
          userName: 'Steve Rogers',
          postContent: 'A little fresh air and a long flight can clear your head.',
          date: '3 hours ago',
          numOfLikes: 119,
          numOfComments: 17,
        ),
        NewsfeedCard(
          userName: 'Tony Stark',
          postContent: 'Checking in from somewhere far above the clouds.',
          date: '4 hours ago',
          numOfLikes: 311,
          numOfComments: 26,
        ),
        NewsfeedCard(
          userName: 'Steve Rogers',
          postContent: 'Family movie night is officially on the calendar!',
          date: '5 hours ago',
          numOfLikes: 74,
          numOfComments: 14,
        ),
        NewsfeedCard(
          userName: 'Tony Stark',
          postContent: 'Built something new today. I cannot wait to show you all.',
          date: '6 hours ago',
          numOfLikes: 428,
          numOfComments: 49,
        ),
        NewsfeedCard(
          userName: 'Steve Rogers',
          postContent: 'Weekend plans: good food, good company, no missions.',
          date: 'Yesterday',
          numOfLikes: 93,
          numOfComments: 11,
        ),
        NewsfeedCard(
          userName: 'Tony Stark',
          postContent: 'The feast was worthy of legends. Who is joining next time?',
          date: 'Yesterday',
          numOfLikes: 512,
          numOfComments: 63,
        ),
        NewsfeedCard(
          userName: 'Steve Rogers',
          postContent: 'Small details can make a big difference. Keep looking closer.',
          date: 'Yesterday',
          numOfLikes: 167,
          numOfComments: 19,
        ),
        NewsfeedCard(
          userName: 'Tony Stark',
          postContent: 'May we continue to learn from one another and move forward together.',
          date: '2 days ago',
          numOfLikes: 624,
          numOfComments: 72,
        ),
      ],
    ); // ListView
  }
}
