import 'package:flutter/material.dart';
import 'package:shabd/utils/ui_scaling.dart';
import 'package:shabd/views/home/widgets/newstiles.dart';

List<String?> newsTopics = [
  'Local',
  'State',
  'National',
  'International',
  'Health',
  'Finance',
  'Covid',
];

List<String> imgUrls = [
  'https://www.adweek.com/wp-content/uploads/2018/02/LocalNewsNewspaperGlassesPen.jpg',
  'https://publications.pmgnews.com/eddb_image_library/graphics-state-news-statenews.jpg'
      'https://res.cloudinary.com/grantbroadcasters/image/fetch/c_fill,g_faces:center,h_366,w_400/https://www.hot100fm.com.au/images/Hot100_Nat-News.jpg',
  'https://thumbs.dreamstime.com/z/international-news-20127733.jpg',
  'https://image.shutterstock.com/image-photo/man-reading-newspaper-headline-health-260nw-561625621.jpg',
  'https://thumbs.dreamstime.com/z/newspaper-headline-business-finance-51968406.jpg',
  'https://media.self.com/photos/5e616da40528980008af45d6/master/pass/accuratenews-covid19_alt.jpg'
];

class NewsTileList extends StatelessWidget {
  const NewsTileList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(
        horizontal: SizeConfig.safeBlockHorizontal! * 2,
        vertical: SizeConfig.safeBlockVertical! * 2,
      ),
      child: Column(
        children: [
          Padding(
            padding: EdgeInsets.symmetric(
              horizontal: SizeConfig.safeBlockHorizontal!,
              vertical: SizeConfig.safeBlockVertical! * 0.8,
            ),
            child: Row(
              children: [
                Image.asset(
                  'assets/images/news.png',
                  height: SizeConfig.safeBlockVertical! * 5,
                  fit: BoxFit.cover,
                ),
                Text(
                  'Categories',
                  style: Theme.of(context).textTheme.headline6,
                ),
              ],
            ),
          ),
          SizedBox(
            height: SizeConfig.safeBlockVertical! * 20,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              shrinkWrap: true,
              physics: const BouncingScrollPhysics(),
              itemBuilder: (context, index) {
                return NewsTile(
                  text: newsTopics[index],
                  url: imgUrls[index],
                  onTapped: () {},
                );
              },
              itemCount: 7,
            ),
          )
        ],
      ),
    );
  }
}
