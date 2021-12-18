import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:get_storage/get_storage.dart';
import 'package:shabd/views/home/widgets/category_page.dart';
import 'package:shabd/views/home/widgets/loaction_page.dart';

class CategoryCard extends StatefulWidget {
  final String? imageAssetUrl, categoryName;

  const CategoryCard({
    Key? key,
    required this.categoryName,
    required this.imageAssetUrl,
  }) : super(key: key);

  @override
  State<CategoryCard> createState() => _CategoryCardState(this.categoryName);
}

class _CategoryCardState extends State<CategoryCard> {
  final String? categoryName;

  _CategoryCardState(this.categoryName);
  @override
  Widget build(BuildContext context) {
    final locality = GetStorage().read('district');
    final state = GetStorage().read('state');
    final country = GetStorage().read('country');
    return GestureDetector(
      onTap: () {
        switch (categoryName!.toLowerCase()) {
          case "local":
            Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => LocationNews(
                          newsCategory: locality.toLowerCase(),
                        )));
            debugPrint(locality);
            break;
          case "state":
            Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => LocationNews(
                          newsCategory: state.toLowerCase(),
                        )));
            debugPrint(state);
            break;
          case "national":
            Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => LocationNews(
                          newsCategory: country.toLowerCase(),
                        )));
            debugPrint(country);
            break;
          case "international":
            Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => LocationNews(
                          newsCategory: categoryName!.toLowerCase(),
                        )));
            break;
          default:
            {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => CategoryNews(
                            newsCategory: categoryName!.toLowerCase(),
                          )));
            }
        }
      },
      child: Container(
        margin: const EdgeInsets.only(right: 14),
        child: Stack(
          children: <Widget>[
            ClipRRect(
              borderRadius: BorderRadius.circular(5),
              child: CachedNetworkImage(
                imageUrl: widget.imageAssetUrl.toString(),
                height: 120,
                width: 120,
                fit: BoxFit.cover,
              ),
            ),
            Container(
              alignment: Alignment.center,
              height: 120,
              width: 120,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5),
                  color: Colors.black26),
              child: Text(
                widget.categoryName!,
                textAlign: TextAlign.justify,
                style: const TextStyle(
                    color: Colors.white,
                    fontSize: 14,
                    fontWeight: FontWeight.bold),
              ),
            )
          ],
        ),
      ),
    );
  }
}
