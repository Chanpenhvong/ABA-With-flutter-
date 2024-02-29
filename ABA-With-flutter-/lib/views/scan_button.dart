import 'package:aba_clone_ui/my_colors/ColorAsset.dart';
import 'package:flutter/material.dart';
// import 'package:aba_clone_ui/views/Detail_Screen.dart';
// import 'package:testflutterapp1/basic_module/home_screnn.dart';

class scan_button extends StatefulWidget {
  // const scan_button({super.key});
  const scan_button({Key? key}) : super(key: key);

  @override
  State<scan_button> createState() => _NetflixLayoutScreenState();
}

class _NetflixLayoutScreenState extends State<scan_button> {
  String _text = "Scan Now";
  bool _dark = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: _dark ? ColorAsset.colorsBody : Colors.black,
      appBar: AppBar(
        title: Text(
          _text,
          style: const TextStyle(
              fontSize: 30.0,
              fontStyle: FontStyle.italic,
              color: Colors.white,
              fontWeight: FontWeight.bold),
        ),
        backgroundColor:
            _dark ? ColorAsset.colorsAppbar : Color.fromARGB(255, 24, 23, 23),
        actions: [
          IconButton(
            onPressed: () {
              setState(() {
                _dark = !_dark;
              });
            },
            color: Colors.white,
            icon: Icon(_dark ? Icons.dark_mode : Icons.light_mode),
          ),
          IconButton(
            onPressed: () {
              setState(() {
                _text = "Sharing...!";
              });
            },
            icon: const Icon(Icons.share),
            color: Colors.white,
          )
        ],
      ),
      // body: _buildMainListView(context),
    );
  }

  // Widget _buildMainListView(context) {
  //   return ListView(
  //     children: [
  //       // _buildListView1(context),
  //       _buildListView2(),
  //       _buildListView3(),
  //       _buildListView4(),
  //       _buildListView5()
  //     ],
  //   );
  // }

  // Widget _buildListView2() {
  //   return SizedBox(
  //     height: 160,
  //     child: ListView(
  //       scrollDirection: Axis.horizontal,
  //       children: _imageList
  //           .map(
  //             (e) => Padding(
  //               padding: const EdgeInsets.all(3.0),
  //               child: ClipRRect(
  //                 borderRadius: BorderRadius.circular(20),
  //                 child: Image.network(e),
  //               ),
  //             ),
  //           )
  //           .toList(),
  //     ),
  //   );
  // }

  // Widget _buildListView3() {
  //   return SizedBox(
  //     height: 160,
  //     child: ListView(
  //       scrollDirection: Axis.horizontal,
  //       children: _imageList
  //           .map(
  //             (e) => Padding(
  //               padding: const EdgeInsets.all(3.0),
  //               child: ClipRRect(
  //                 borderRadius: BorderRadius.circular(20),
  //                 child: Image.network(e),
  //               ),
  //             ),
  //           )
  //           .toList(),
  //     ),
  //   );
  // }

  // Widget _buildListView4() {
  //   return SizedBox(
  //     height: 160,
  //     child: ListView(
  //       scrollDirection: Axis.horizontal,
  //       children: _imageList
  //           .map(
  //             (e) => Padding(
  //               padding: const EdgeInsets.all(3.0),
  //               child: ClipRRect(
  //                 borderRadius: BorderRadius.circular(20),
  //                 child: Image.network(e),
  //               ),
  //             ),
  //           )
  //           .toList(),
  //     ),
  //   );
  // }

  // Widget _buildListView5() {
  //   return SizedBox(
  //     height: 160,
  //     child: ListView(
  //       scrollDirection: Axis.horizontal,
  //       children: _imageList
  //           .map(
  //             (e) => Padding(
  //               padding: const EdgeInsets.all(3.0),
  //               child: ClipRRect(
  //                 borderRadius: BorderRadius.circular(20),
  //                 child: Image.network(e),
  //               ),
  //             ),
  //           )
  //           .toList(),
  //     ),
  //   );
  // }

  // final List<String> _imageList = [
  //   "https://lumiere-a.akamaihd.net/v1/images/p_insideout2_798_0e9b544c.jpeg",
  //   "https://m.media-amazon.com/images/M/MV5BMjY5MTI3OGEtMTgyYy00ODM0LWIzNGQtNTdmYjE0MDY3MjE3XkEyXkFqcGdeQXVyMTA1NjE5MTAz._V1_.jpg",
  //   "https://www.gqmiddleeast.com/cloud/2023/11/09/6f690089947a98659643e2ce8f5f0200-647x1024.png",
  //   "https://lh3.googleusercontent.com/LaJTuwSjDsjadl7Lbf696SvBu12DnNzoWWFujr51BRgC0mqGCNM6B3jyohaLn78mCX67w6jolYvRbkUn3yyHVWSh09A_xj89b_JYPYY=s800-rw",
  //   "https://m.media-amazon.com/images/M/MV5BNzg1MDQxMTQ2OF5BMl5BanBnXkFtZTcwMTk3MjAzOQ@@._V1_FMjpg_UX1000_.jpg",
  //   "https://lumiere-a.akamaihd.net/v1/images/p_insideout2_798_0e9b544c.jpeg",
  //   "https://m.media-amazon.com/images/M/MV5BMjY5MTI3OGEtMTgyYy00ODM0LWIzNGQtNTdmYjE0MDY3MjE3XkEyXkFqcGdeQXVyMTA1NjE5MTAz._V1_.jpg",
  //   "https://www.gqmiddleeast.com/cloud/2023/11/09/6f690089947a98659643e2ce8f5f0200-647x1024.png",
  //   "https://lh3.googleusercontent.com/LaJTuwSjDsjadl7Lbf696SvBu12DnNzoWWFujr51BRgC0mqGCNM6B3jyohaLn78mCX67w6jolYvRbkUn3yyHVWSh09A_xj89b_JYPYY=s800-rw",
  //   "https://m.media-amazon.com/images/M/MV5BNzg1MDQxMTQ2OF5BMl5BanBnXkFtZTcwMTk3MjAzOQ@@._V1_FMjpg_UX1000_.jpg",
  //   "https://lumiere-a.akamaihd.net/v1/images/p_insideout2_798_0e9b544c.jpeg",
  //   "https://m.media-amazon.com/images/M/MV5BMjY5MTI3OGEtMTgyYy00ODM0LWIzNGQtNTdmYjE0MDY3MjE3XkEyXkFqcGdeQXVyMTA1NjE5MTAz._V1_.jpg",
  //   "https://www.gqmiddleeast.com/cloud/2023/11/09/6f690089947a98659643e2ce8f5f0200-647x1024.png",
  //   "https://lh3.googleusercontent.com/LaJTuwSjDsjadl7Lbf696SvBu12DnNzoWWFujr51BRgC0mqGCNM6B3jyohaLn78mCX67w6jolYvRbkUn3yyHVWSh09A_xj89b_JYPYY=s800-rw",
  //   "https://m.media-amazon.com/images/M/MV5BNzg1MDQxMTQ2OF5BMl5BanBnXkFtZTcwMTk3MjAzOQ@@._V1_FMjpg_UX1000_.jpg",
  // ];
}
