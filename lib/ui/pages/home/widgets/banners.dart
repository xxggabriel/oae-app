import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:oea_app/utils/hex_color.dart';

class SlideBanners extends StatefulWidget {
  const SlideBanners({super.key});

  @override
  State<SlideBanners> createState() => SlideBannersState();
}

class SlideBannersState extends State<SlideBanners> {
  int _current = 0;
  final CarouselController _controller = CarouselController();
  final List<Widget> _images = [
    Image.asset("assets/images/banners/banner-devfest-2022.jpeg"),
    Image.asset("assets/images/banners/banner1.jpg"),
    Image.asset("assets/images/banners/banner-devfest-2022.jpeg"),
  ];

  @override
  Widget build(BuildContext context) {
    return Column(children: <Widget>[
      CarouselSlider(
        items: imageWithLabel(),
        carouselController: _controller,
        options: CarouselOptions(
            autoPlay: _images.length > 1,
            enlargeCenterPage: true,
            viewportFraction: 0.9,
            aspectRatio: 2.0,
            initialPage: 0,
            onPageChanged: (index, reason) {
              setState(() {
                _current = index;
              });
            }),
      ),
      Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: _images.asMap().entries.map((image) {
          return GestureDetector(
            onTap: () => _controller.animateToPage(image.key),
            child: Container(
              margin: EdgeInsets.symmetric(horizontal: 4, vertical: 10),
              height: 12,
              width: 12,
              decoration: BoxDecoration(
                color: HexColor("#000")
                    .withOpacity(_current == image.key ? 0.9 : 0.4),
                shape: BoxShape.circle,
              ),
            ),
          );
        }).toList(),
      )
    ]);
  }

  List<Widget> imageWithLabel() {
    return _images.map((image) {
      return Stack(
        alignment: AlignmentDirectional.bottomStart,
        children: [
          image,
          // Container(
          //   child: Text(
          //     'Teste',
          //     style: TextStyle(
          //       color: HexColor("#FFFFFF"),
          //     ),
          //   ),
          //   margin: EdgeInsets.only(left: 10, bottom: 10),
          //   padding: EdgeInsets.all(10),
          //   decoration: BoxDecoration(
          //       borderRadius: BorderRadius.all(Radius.circular(4)),
          //       color: HexColor("#000000").withOpacity(.4)),
          // ),
        ],
      );
    }).toList();
  }
}
