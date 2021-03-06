import 'package:flutter/material.dart';
import '../my_route.dart';

class ImageExample extends MyRoute {
  const ImageExample([String sourceFile = 'lib/routes/widgets_image_ex.dart'])
      : super(sourceFile);

  @override
  get title => 'Image';

  @override
  get links =>
      {'Doc': 'https://docs.flutter.io/flutter/widgets/Image-class.html'};

  @override
  Widget buildMyRouteContent(BuildContext context) {
    return ListView(
      children: <Widget>[
        ListTile(
          title: Text('Image from asset:'),
        ),
        Card(
          child: Image.asset('res/images/material_design_2.jpg'),
        ),
        Divider(),
        ListTile(
          title: Text('Image from url:'),
        ),
        Card(
          child: Image.network(
              'https://images.freeimages.com/images/large-previews/4ad/coloured-pencils-1427682.jpg'),
        ),
        Divider(),
        ListTile(
          title: Text('GIF from asset:'),
        ),
        Image.asset(
          'res/images/animated_flutter_lgtm.gif',
          scale: 1.0,
        ),
        Divider(),
        ListTile(
          title: Text('WEBP from package in assets:'),
        ),
        // In pubspec.yaml, remember to add asset:
        // 'packages/flutter_gallery_assets/animated_images/animated_flutter_stickers.webp'
        Image.asset(
          'animated_images/animated_flutter_stickers.webp',
          package: 'flutter_gallery_assets',
        ),
      ],
    );
  }
}
