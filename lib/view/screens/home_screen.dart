import 'package:codenestx_ui/view/screens/single_event_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_face_pile/flutter_face_pile.dart';
import 'package:icons_plus/icons_plus.dart';

import '../utils/styles.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;

    return Scaffold(
        backgroundColor: Colors.grey.shade100,
        body: SafeArea(
          child: CustomScrollView(
            slivers: [
              SliverAppBar(
                pinned: true,
                surfaceTintColor: Colors.grey.shade100,
                title: Container(
                  color: Colors.grey.shade100,
                  margin: EdgeInsets.all(3),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding:
                                const EdgeInsets.only(top: 10.0, bottom: 8),
                            child: Row(
                              children: [
                                Icon(
                                  Bootstrap.sun,
                                  color: Colors.green,
                                  size: 18,
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(left: 8.0),
                                  child: Text(
                                    "Good Morning",
                                    style: StyleSheet.goodMorningText,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Text(
                            "Jhon Doe",
                            style: StyleSheet.userNameText,
                          ),
                        ],
                      ),
                      CircleAvatar(
                        radius: 28,
                        backgroundColor: Colors.green,
                        child: Padding(
                          padding: const EdgeInsets.all(3.0),
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(50),
                            child: Image(
                                image: NetworkImage(
                                    "https://s3-alpha-sig.figma.com/img/d552/49f1/aa5cfed78b7dadaa06807a68585847eb?Expires=1731888000&Key-Pair-Id=APKAQ4GOSFWCVNEHN3O4&Signature=NqEJ9eoH2SitY56TB~0Td1H~Ng7VZp8phQdCOrqxVTqrLi-R5gRryPznYora4bhn7QlrllMLlJxRUp6Epin223n2PsSk8qPrOVmPP7rJvZmze7WVXfD53zcZL9cwVJDktjyAzlt~yygzRKxY2iEKpWwvSJ79yfvMLISVuqiJPgO1t~btK59qJecggKsry8b~AggW6fQTpCmaLSlUStXor~ubBNjZe0a5gbuAbeGLUthTnauqvD7wgt76Afia3IEU0t58eFn9izqj1b6PyxB6NHZpSNBuSCJBlzxLThDpwSXIPj1YwTLt9B6JzltppvNuoIiKDvxTkwENOrUUieQLDQ__")),
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              ),
              SliverToBoxAdapter(
                child: Padding(
                  padding: const EdgeInsets.symmetric(
                      vertical: 18.0, horizontal: 10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Expanded(
                        child: Container(
                          height: height * .05,
                          margin: EdgeInsets.all(5),
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(10)),
                          child: Center(
                            child: Row(
                              children: [
                                Icon(Icons.location_on_outlined),
                                Text(
                                  "London",
                                  style: StyleSheet.button,
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                      Expanded(
                        child: Container(
                          height: height * .05,
                          margin: EdgeInsets.all(5),
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(10)),
                          child: Center(
                            child: Row(
                              children: [
                                Icon(AntDesign.calendar_outline),
                                Text(
                                  "19 - 20 Sept",
                                  style: StyleSheet.button,
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                      Expanded(
                        child: Container(
                          height: height * .05,
                          margin: EdgeInsets.all(5),
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(10)),
                          child: Center(
                            child: Row(
                              children: [
                                Icon(BoxIcons.bxs_category_alt),
                                Text(
                                  "Categories",
                                  style: StyleSheet.button,
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              SliverToBoxAdapter(
                child: GridView.builder(
                  physics: ScrollPhysics(),
                  shrinkWrap: true,
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 1, childAspectRatio: 2 / 1.9),
                  itemCount: 4,
                  itemBuilder: (context, index) {
                    return GestureDetector(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => SingleEventScreen(),
                            ));
                      },
                      child: Card(
                        // surfaceTintColor: Colors.white,
                        color: Colors.white,
                        shape: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(20),
                            borderSide: BorderSide.none),
                        margin: EdgeInsets.all(15),
                        child: Container(
                          padding: EdgeInsets.all(20),
                          // width: width,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              ClipRRect(
                                borderRadius: BorderRadius.circular(20),
                                child: Image(
                                    height: height * .2,
                                    width: width,
                                    fit: BoxFit.fill,
                                    image: NetworkImage(
                                        "https://s3-alpha-sig.figma.com/img/cef7/e314/bef732664fe5ecd656c2c1b16cea9e03?Expires=1731888000&Key-Pair-Id=APKAQ4GOSFWCVNEHN3O4&Signature=nwSzgiDtYf9IRVQ55hoEYWlXQKob8GxMoKXSJ0gtOJklCGKn7eewO9pR9y5a-m6n4xY~1uLxV7sLZMf~RJE86YrEDNZqZ4Ld53gc20VW008w5JYVWUSzcIJ3F5Df2D6OaKOsUE9aWk1JwXxR~snWRemAZ8MVU74zXVIGM261EiLxB0sXoAh1ZS-iIB8ceqf2UPXdSC~8PQRaeX9abL7acV9An7EfyqWLTwARNjByOuS~hhd4oFaqnE9yfSyGpl-OFYT3B5rJGKTuw9Bk9SdzB8vshkBTbCFLFyBAKR7NMWxWzS8gLJSlh6IUMYHjbr8mQfmLwQu7AbajfJBr0Dih6A__")),
                              ),
                              Column(
                                children: [
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text(
                                        "Fringe Club Event",
                                        style: StyleSheet.userNameText,
                                      ),
                                      Row(
                                        children: [
                                          for (int i = 1; i < 5; i++)
                                            Align(
                                              widthFactor: 0.5,
                                              child: CircleAvatar(
                                                radius: 20,
                                                backgroundColor: Colors.white,
                                                child: CircleAvatar(
                                                  radius: 15,
                                                  backgroundImage: NetworkImage(
                                                      "https://s3-alpha-sig.figma.com/img/8d1d/e91d/e04cfbbc32f19e2d8cac5b78c530baae?Expires=1731888000&Key-Pair-Id=APKAQ4GOSFWCVNEHN3O4&Signature=bGLPspx1RalcEarkLP6vT4HivyDMGIIQ72xcUZpu2~Flv7nsRWJ9PXWh8qFc3EKp97QmvVXtC4n9usUkVh4jlpC1UOkkVVlKa2kBQmkLrjjdY6ugb1k~7kF4~Q168bltPvee1SVS50uUT1owjnRt6OqjT-h6XWoN3YK5A6i5JednUfXQQMBmaA5ZjDDwxmCmYEW~ECie~O6hwMT9wfgEG1~wIi8z-2gZmI5AlnZaVGY-fWBjE~bg46Cb8NSeBLtlR9~b6UnEScyZNG7dhj6DfPQdvOF33kdMWr5XuaxP2duoACnMNYVfnMT9ZOnIXH1QCmZUKMFJHxjpo153KuayYw__"),
                                                ),
                                              ),
                                            ),
                                          Text(
                                            "+ 3",
                                            style: StyleSheet.userNameText,
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                  Row(
                                    children: [
                                      Icon(Icons.location_on_outlined,
                                          color: Colors.green),
                                      Text(
                                        "Gelora Bung Karno Stadium..",
                                        style: StyleSheet.bodyText1,
                                      ),
                                    ],
                                  ),
                                  Row(
                                    children: [
                                      Icon(
                                        AntDesign.calendar_outline,
                                        color: Colors.green,
                                      ),
                                      Text(
                                        "November 15 2023 | 02:00pm - 03:00pm",
                                        style: StyleSheet.bodyText1,
                                      ),
                                    ],
                                  ),
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Expanded(
                                        child: Container(
                                          margin: EdgeInsets.all(5),
                                          decoration: BoxDecoration(
                                              color: Colors.grey.shade100,
                                              borderRadius:
                                                  BorderRadius.circular(10)),
                                          child: Row(
                                            children: [
                                              // Icon(Icons.location_on_outlined),
                                              Padding(
                                                padding:
                                                    const EdgeInsets.all(8.0),
                                                child: Image(
                                                  height: 20,
                                                  image: NetworkImage(
                                                    "https://img.freepik.com/free-vector/drinking-red-wine-concept-vector_1308-116882.jpg?t=st=1731163869~exp=1731167469~hmac=32e858685cd1f7d2c3c4bc084ed14321762d51bea6a6c04ed060311b2fad9d23&w=360",
                                                  ),
                                                ),
                                              ),
                                              Text(
                                                "Wine",
                                                style: StyleSheet.button,
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                      Expanded(
                                        child: Container(
                                          margin: EdgeInsets.all(5),
                                          decoration: BoxDecoration(
                                              color: Colors.grey.shade100,
                                              borderRadius:
                                                  BorderRadius.circular(10)),
                                          child: Center(
                                            child: Row(
                                              children: [
                                                Padding(
                                                  padding:
                                                      const EdgeInsets.all(8.0),
                                                  child: Image(
                                                    height: 15,
                                                    image: NetworkImage(
                                                      "https://img.freepik.com/free-vector/phonograph-disc-vinyl-record_1308-120561.jpg?t=st=1731164023~exp=1731167623~hmac=822f3b46583472de02afae9e0df9dd680e82ff5cf53a071fb20306aeda301670&w=740",
                                                    ),
                                                  ),
                                                ),
                                                Text(
                                                  "Music",
                                                  style: StyleSheet.button,
                                                ),
                                              ],
                                            ),
                                          ),
                                        ),
                                      ),
                                      Expanded(
                                        child: Container(
                                          margin: EdgeInsets.all(5),
                                          decoration: BoxDecoration(
                                              color: Colors.grey.shade100,
                                              borderRadius:
                                                  BorderRadius.circular(10)),
                                          child: Center(
                                            child: Row(children: [
                                              Padding(
                                                padding:
                                                    const EdgeInsets.all(8.0),
                                                child: Image(
                                                  height: 20,
                                                  image: NetworkImage(
                                                    "https://img.freepik.com/free-vector/heart_78370-492.jpg?t=st=1731164083~exp=1731167683~hmac=0af4af625efcdf3cebb6e4ab7f979bab3a95d1c12863ad4b17e8ef7732590347&w=740",
                                                  ),
                                                ),
                                              ),
                                              Text(
                                                "Love",
                                                style: StyleSheet.button,
                                              ),
                                            ]),
                                          ),
                                        ),
                                      ),
                                      Expanded(
                                        child: Container(
                                          margin: EdgeInsets.all(4),
                                          decoration: BoxDecoration(
                                              color: Colors.grey.shade100,
                                              borderRadius:
                                                  BorderRadius.circular(10)),
                                          child: Center(
                                            child: Row(children: [
                                              Padding(
                                                padding:
                                                    const EdgeInsets.all(8.0),
                                                child: Image(
                                                  height: 20,
                                                  image: NetworkImage(
                                                    "https://www.dailyfreepsd.com/wp-content/uploads/2013/06/Cartoon-bird-peace-dove-vector.jpg",
                                                  ),
                                                ),
                                              ),
                                              Text(
                                                "Peace",
                                                style: StyleSheet.button,
                                              ),
                                            ]),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              )
                            ],
                          ),
                        ),
                      ),
                    );
                  },
                ),
              )
            ],
          ),
        ));
  }
}
