import 'package:banner_carousel/banner_carousel.dart';
import 'package:flutter/material.dart';
import 'package:icons_plus/icons_plus.dart';

class SingleEventScreen extends StatefulWidget {
  const SingleEventScreen({super.key});

  @override
  State<SingleEventScreen> createState() => _SingleEventScreenState();
}

class _SingleEventScreenState extends State<SingleEventScreen> {
  static const String banner1 =
      "https://picjumbo.com/wp-content/uploads/the-golden-gate-bridge-sunset-1080x720.jpg";
  static const String banner2 =
      "https://cdn.mos.cms.futurecdn.net/Nxz3xSGwyGMaziCwiAC5WW-1024-80.jpg";
  static const String banner3 = "https://wallpaperaccess.com/full/19921.jpg";
  static const String banner4 =
      "https://images.pexels.com/photos/2635817/pexels-photo-2635817.jpeg?auto=compress&crop=focalpoint&cs=tinysrgb&fit=crop&fp-y=0.6&h=500&sharp=20&w=1400";

  List<BannerModel> listBanners = [
    BannerModel(imagePath: banner1, id: "1"),
    BannerModel(imagePath: banner2, id: "2"),
    BannerModel(imagePath: banner3, id: "3"),
    BannerModel(imagePath: banner4, id: "4"),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Stack(
              children: [
                // Event Image
                // Container(
                //   height: 250,
                //   decoration: BoxDecoration(
                //     image: DecorationImage(
                //       image: NetworkImage('https://images.pexels.com/photos/2635817/pexels-photo-2635817.jpeg?auto=compress&crop=focalpoint&cs=tinysrgb&fit=crop&fp-y=0.6&h=500&sharp=20&w=1400'), // Replace with your image
                //       fit: BoxFit.cover,
                //     ),
                //   ),
                // ),
                BannerCarousel(
                  viewportFraction: 1,
                  margin: EdgeInsets.all(0),
                  height: 250,
                  indicatorBottom: false,
                  banners: listBanners,
                ),
                Positioned(
                  top: 16,
                  left: 16,
                  child: CircleAvatar(
                    backgroundColor: Colors.black.withOpacity(0.5),
                    child: IconButton(
                      icon: Icon(Icons.arrow_back, color: Colors.white),
                      onPressed: () {
                        Navigator.pop(context);
                      },
                    ),
                  ),
                ),
                Positioned(
                  top: 16,
                  right: 16,
                  child: CircleAvatar(
                    backgroundColor: Colors.black.withOpacity(0.5),
                    child: IconButton(
                      icon: Icon(Icons.more_vert, color: Colors.white),
                      onPressed: () {},
                    ),
                  ),
                ),
              ],
            ),
            Expanded(
              child: SingleChildScrollView(
                child: Container(
                  padding: const EdgeInsets.all(16.0),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(30),
                      topRight: Radius.circular(30),
                    ),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black12,
                        blurRadius: 10,
                        offset: Offset(0, -5),
                      ),
                    ],
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Building Name",
                        style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w500,
                          color: Colors.grey,
                        ),
                      ),
                      SizedBox(height: 5),
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "Fringe Club Event",
                            style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Container(
                            padding: const EdgeInsets.symmetric(
                              horizontal: 10,
                              vertical: 8,
                            ),
                            decoration: BoxDecoration(
                              color: Colors.green,
                              borderRadius: BorderRadius.circular(10),
                            ),
                            child: Column(
                              children: [
                                Text(
                                  "Dec",
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 12,
                                  ),
                                ),
                                Text(
                                  "21",
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 18,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: 10),

                      // Start Time
                      Text(
                        "Starting 9:00 PM",
                        style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w500,
                          color: Colors.grey,
                        ),
                      ),
                      SizedBox(height: 20),

                      // Description
                      Text(
                        "Description",
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(height: 10),
                      Text(
                        "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed euismod quam eu tortor malesuada tincidunt. Ut ut diam placerat, ornare libero vel, luctus tortor. Nullam scelerisque elit arcu. Quisque porta erat eget pretium volutpat.",
                        style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w400,
                          color: Colors.black87,
                        ),
                      ),
                      Text(
                        "Read More...",
                        style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w500,
                          color: Colors.blue,
                        ),
                      ),
                      SizedBox(height: 20),

                      // Tags
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Chip(
                            side: BorderSide.none,
                            label: Row(
                              children: [
                                Image(
                                  height: 20,
                                  image: NetworkImage(
                                    "https://img.freepik.com/free-vector/drinking-red-wine-concept-vector_1308-116882.jpg?t=st=1731163869~exp=1731167469~hmac=32e858685cd1f7d2c3c4bc084ed14321762d51bea6a6c04ed060311b2fad9d23&w=360",
                                  ),
                                ),
                                Text(
                                  'Wine',
                                  style: TextStyle(
                                    fontSize: 12,
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                              ],
                            ),
                            backgroundColor: Colors.grey[200],
                          ),
                          Chip(
                            side: BorderSide.none,
                            label: Row(
                              children: [
                                Image(
                                  height: 15,
                                  image: NetworkImage(
                                    "https://img.freepik.com/free-vector/phonograph-disc-vinyl-record_1308-120561.jpg?t=st=1731164023~exp=1731167623~hmac=822f3b46583472de02afae9e0df9dd680e82ff5cf53a071fb20306aeda301670&w=740",
                                  ),
                                ),
                                Text(
                                  'Music',
                                  style: TextStyle(
                                    fontSize: 12,
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                              ],
                            ),
                            backgroundColor: Colors.grey[200],
                          ),
                          Chip(
                            side: BorderSide.none,
                            label: Row(
                              children: [
                                Image(
                                  height: 20,
                                  image: NetworkImage(
                                    "https://img.freepik.com/free-vector/heart_78370-492.jpg?t=st=1731164083~exp=1731167683~hmac=0af4af625efcdf3cebb6e4ab7f979bab3a95d1c12863ad4b17e8ef7732590347&w=740",
                                  ),
                                ),
                                Text(
                                  'Love',
                                  style: TextStyle(
                                    fontSize: 12,
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                              ],
                            ),
                            backgroundColor: Colors.grey[200],
                          ),
                          Chip(
                            side: BorderSide.none,
                            label: Row(
                              children: [
                                Image(
                                  height: 20,
                                  image: NetworkImage(
                                    "https://www.dailyfreepsd.com/wp-content/uploads/2013/06/Cartoon-bird-peace-dove-vector.jpg",
                                  ),
                                ),
                                Text(
                                  'Peace',
                                  style: TextStyle(
                                    fontSize: 12,
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                              ],
                            ),
                            backgroundColor: Colors.grey[200],
                          ),
                        ],
                      ),
                      SizedBox(height: 20),

                      // Guests
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "Guests",
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Text(
                            "36",
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                              color: Colors.green,
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: 10),

                      SizedBox(
                        height: 120,
                        width: 500,
                        child: ListView.builder(
                          shrinkWrap: true,
                          physics: ScrollPhysics(),
                          itemCount: 10,
                          scrollDirection: Axis.horizontal,
                          itemBuilder: (context, index) {
                            return Card(
                              color: Colors.white,
                              child: Padding(
                                padding: const EdgeInsets.all(18.0),
                                child: Column(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    CircleAvatar(
                                      radius: 25,
                                      backgroundImage: NetworkImage(
                                          'https://s3-alpha-sig.figma.com/img/8d1d/e91d/e04cfbbc32f19e2d8cac5b78c530baae?Expires=1731888000&Key-Pair-Id=APKAQ4GOSFWCVNEHN3O4&Signature=bGLPspx1RalcEarkLP6vT4HivyDMGIIQ72xcUZpu2~Flv7nsRWJ9PXWh8qFc3EKp97QmvVXtC4n9usUkVh4jlpC1UOkkVVlKa2kBQmkLrjjdY6ugb1k~7kF4~Q168bltPvee1SVS50uUT1owjnRt6OqjT-h6XWoN3YK5A6i5JednUfXQQMBmaA5ZjDDwxmCmYEW~ECie~O6hwMT9wfgEG1~wIi8z-2gZmI5AlnZaVGY-fWBjE~bg46Cb8NSeBLtlR9~b6UnEScyZNG7dhj6DfPQdvOF33kdMWr5XuaxP2duoACnMNYVfnMT9ZOnIXH1QCmZUKMFJHxjpo153KuayYw__'), // Replace with your image
                                    ),
                                    Text(
                                      "Jhon Doe",
                                      style: TextStyle(
                                        fontSize: 14,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            );
                          },
                        ),
                      ),

                      Container(
                        margin: EdgeInsets.all(10),
                        padding: EdgeInsets.all(10),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          border: Border.all(color: Colors.green),
                          
                        ),
                        child: Row(
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            Icon(AntDesign.info_circle_fill,color: Colors.green,),
                            Expanded(child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Text("Nightlife invites you to travel for the 10th time. Don’t Miss it"),
                            ))
                          ],
                        ),
                      ),
                      SizedBox(height: 10),

                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "Location",
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Text(
                            "209 Soi Thong Lo, Watthana,Thailand",
                            style: TextStyle(
                              fontSize: 14,
                              color: Colors.grey.shade500
                            ),
                          ),
                        ],
                      ),
                      
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.only(topLeft: Radius.circular(10),topRight: Radius.circular(10)),
          color: Colors.white,
          boxShadow: [
            BoxShadow(color: Colors.black,blurRadius: 20,offset: Offset(0, 0))
          ]
        ),
        height: 70,
        child: Row(
          children: [
            Container(
              margin: EdgeInsets.only(left: 20,top: 10,bottom: 10),
              decoration: BoxDecoration(
                border: Border.all(color: Colors.green,width: 2),
                borderRadius: BorderRadius.circular(10),

              ),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Center(
                  child:  Icon(Icons.mark_unread_chat_alt,color: Colors.green,),
                ),
              ),
            ),
            Container(
              width: 280,
              margin: EdgeInsets.only(left: 20,top: 10,bottom: 10),
              decoration: BoxDecoration(
               color: Colors.green,
                borderRadius: BorderRadius.circular(10),

              ),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Center(
                  child:  Text("Join Now"),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
