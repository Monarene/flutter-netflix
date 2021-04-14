import 'package:flutter/material.dart';
import 'package:flutter_netflix_responsive_ui/models/content_model.dart';
import 'package:flutter_netflix_responsive_ui/widgets/widgets.dart';

class ContentHeader extends StatelessWidget {
  final Content featuredContent;

  const ContentHeader({Key key, @required this.featuredContent})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.center,
      children: [
        Container(
          height: 500,
          decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage(featuredContent.imageUrl),
                  fit: BoxFit.cover)),
        ),
        Container(
          height: 500,
          decoration: BoxDecoration(
              gradient: LinearGradient(
                  colors: [Colors.black, Colors.transparent],
                  begin: Alignment.bottomCenter,
                  end: Alignment.topCenter)),
        ),
        Positioned(
            bottom: 110,
            child: SizedBox(
              width: 250,
              child: Image.asset(featuredContent.titleImageUrl),
            )),
        Positioned(
          right: 0,
          left: 0,
          bottom: 40,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              VerticalIconButton(
                  icon: Icons.add,
                  title: "List",
                  onTap: () => print("My List")),
              _PlayButton(),
              VerticalIconButton(
                  icon: Icons.info_outline,
                  title: "Info",
                  onTap: () => print("Info"))
            ],
          ),
        )
      ],
    );
  }
}

class _PlayButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(15, 5, 20, 5),
      child: TextButton.icon(
          onPressed: () => print("play"),
          icon: const Icon(
            Icons.play_arrow,
            size: 30,
          ),
          label: const Text(
            "Play",
            style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
          )),
    );
  }
}
