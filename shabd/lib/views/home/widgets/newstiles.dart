import 'package:flutter/material.dart';
import 'package:shabd/utils/ui_scaling.dart';

class NewsTile extends StatelessWidget {
  const NewsTile({Key? key, this.url, this.text, this.onTapped})
      : super(key: key);

  final String? url;
  final String? text;
  final void Function()? onTapped;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTapped,
      child: Container(
        margin: EdgeInsets.symmetric(
          horizontal: SizeConfig.safeBlockHorizontal! * 4,
        ),
        width: SizeConfig.screenWidth! * 0.3,
        child: ClipRRect(
          borderRadius: BorderRadius.circular(10),
          child: Stack(
            fit: StackFit.expand,
            children: [
              Opacity(
                opacity: 0.9,
                child: Image.network(
                  url.toString(),
                  fit: BoxFit.cover,
                  errorBuilder: (context, error, stackTrace) => Image.asset(
                    'assets/images/news.png',
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              Positioned(
                top: SizeConfig.safeBlockVertical! * 13,
                left: SizeConfig.safeBlockHorizontal! * 4,
                child: SizedBox(
                  width: SizeConfig.safeBlockHorizontal! * 50,
                  child: Text(
                    text.toString(),
                    maxLines: 1,
                    softWrap: true,
                    overflow: TextOverflow.ellipsis,
                    style: Theme.of(context).textTheme.bodyText1!.copyWith(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                        ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
