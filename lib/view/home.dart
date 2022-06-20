// ignore_for_file: avoid_unnecessary_containers, sized_box_for_whitespace, prefer_typing_uninitialized_variables

import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutternews/helper/data.dart';
import 'package:flutternews/helper/news.dart';
import 'package:flutternews/model/article_model.dart';
import 'package:flutternews/view/article_view.dart';
import 'package:flutternews/view/category_news.dart';

import '../model/category_model.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);
  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  //List<CategoryModel> categories = <CategoryModel>[];
  var categories = <CategoryModel>[];
  var articles = <ArticleModel>[];
  bool _loading = true;

  var catNameList = [
    "General",
    "Business",
    "Science",
    "Sports",
    "Health",
    "Entertainment"
  ];

  @override
  void initState() {
    super.initState();
    categories = getCatagories();
    getArticle();
  }

  getArticle() async {
    News newsObj = News();
    await newsObj.getNews();
    articles = newsObj.news;
    setState(() {
      _loading = false;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 60,
        backgroundColor: Colors.white,
        iconTheme: const IconThemeData(
          color: Colors.black,
        ),
        title: RichText(
          text: const TextSpan(
              text: 'Mero',
              style: TextStyle(
                  color: Colors.black,
                  fontSize: 22,
                  fontWeight: FontWeight.w700),
              children: [
                TextSpan(
                  text: 'Khabar',
                  style: TextStyle(
                      color: Colors.blue,
                      fontSize: 22,
                      fontWeight: FontWeight.w700),
                )
              ]),
        ),
        centerTitle: true,
        elevation: 0.0,
      ),
      drawer: SafeArea(
        child: Drawer(
          backgroundColor: Colors.white,
          child: ListView(
            padding: EdgeInsets.zero,
            children: [
              DrawerHeader(
                padding: const EdgeInsets.only(top: 50, left: 40),
                decoration: const BoxDecoration(
                  gradient: LinearGradient(
                    colors: [
                      Color(0xFF3366FF),
                      Color(0xFF00CCFF),
                    ],
                    begin: FractionalOffset(0.0, 0.0),
                    end: FractionalOffset(1.0, 0.0),
                    stops: [0.0, 1.0],
                    tileMode: TileMode.clamp,
                  ),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    RichText(
                      textAlign: TextAlign.center,
                      text: const TextSpan(
                        text: 'Mero',
                        style: TextStyle(
                          color: Color.fromARGB(255, 51, 52, 53),
                          fontSize: 28,
                          fontWeight: FontWeight.w500,
                        ),
                        children: [
                          TextSpan(
                              text: "Khabar",
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 28,
                                fontWeight: FontWeight.w700,
                              )),
                        ],
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    const Text(
                      'jigu_kbabar69@gmail.com',
                      style: TextStyle(
                        color: Color.fromARGB(255, 204, 204, 206),
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 5,
              ),
              Container(
                padding: const EdgeInsets.symmetric(horizontal: 15),
                child: Column(
                  children: [
                    ListTile(
                      iconColor: Colors.black,
                      leading: const Icon(Icons.newspaper),
                      title: const Text(
                        'General News',
                        style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.w500,
                            color: Colors.black),
                      ),
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => CategoryNews(
                                      category: catNameList[0].toLowerCase(),
                                    )));
                      },
                    ),
                    ListTile(
                      iconColor: Colors.black,
                      leading: const Icon(Icons.business),
                      title: const Text(
                        'Business News',
                        style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.w500,
                            color: Colors.black),
                      ),
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => CategoryNews(
                                      category: catNameList[1].toLowerCase(),
                                    )));
                      },
                    ),
                    ListTile(
                      iconColor: Colors.black,
                      leading: const Icon(Icons.science),
                      title: const Text(
                        'Science News',
                        style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.w500,
                            color: Colors.black),
                      ),
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: ((context) => CategoryNews(
                                      category: catNameList[2].toLowerCase(),
                                    ))));
                      },
                    ),
                    ListTile(
                      iconColor: Colors.black,
                      leading: const Icon(Icons.sports),
                      title: const Text(
                        'Sports News',
                        style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.w500,
                            color: Colors.black),
                      ),
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => CategoryNews(
                                      category: catNameList[3].toLowerCase(),
                                    )));
                      },
                    ),
                    ListTile(
                      iconColor: Colors.black,
                      leading: const Icon(Icons.health_and_safety),
                      title: const Text(
                        'Health News',
                        style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.w500,
                            color: Colors.black),
                      ),
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => CategoryNews(
                                      category: catNameList[4].toLowerCase(),
                                    )));
                      },
                    ),
                    ListTile(
                      iconColor: Colors.black,
                      leading: const Icon(Icons.movie),
                      title: const Text(
                        'Entertainment News',
                        style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.w500,
                            color: Colors.black),
                      ),
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => CategoryNews(
                                      category: catNameList[5].toLowerCase(),
                                    )));
                      },
                    ),
                    const SizedBox(
                      height: 50,
                    ),
                    const ListTile(
                      iconColor: Colors.black,
                      leading: Icon(Icons.settings),
                      title: Text(
                        'Settings',
                        style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.w500,
                            color: Colors.black),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
      body: _loading
          ? Container(
              child: Center(
                child: Container(
                  child: const CircularProgressIndicator(),
                ),
              ),
            )
          : SingleChildScrollView(
              child: Container(
                margin: const EdgeInsets.only(top: 10),
                padding: const EdgeInsets.symmetric(horizontal: 16),
                child: Column(
                  children: [
                    //Catagories
                    Container(
                      height: 65,
                      child: ListView.builder(
                          shrinkWrap: true,
                          scrollDirection: Axis.horizontal,
                          itemCount: categories.length,
                          itemBuilder: (context, index) {
                            return CategoryTile(
                              imgUrl: categories[index].imageUrl,
                              ctgName: categories[index].categoryName,
                            );
                          }),
                    ),
                    const SizedBox(
                      height: 30,
                    ),

                    //Articles
                    Container(
                      padding: const EdgeInsets.only(top: 6),
                      child: ListView.builder(
                          shrinkWrap: true,
                          physics: const ClampingScrollPhysics(),
                          itemCount: articles.length,
                          itemBuilder: (context, index) {
                            return BlogTile(
                                desc: articles[index].description,
                                imgUrl: articles[index].urlToImage,
                                title: articles[index].title,
                                url: articles[index].url);
                          }),
                    )
                  ],
                ),
              ),
            ),
    );
  }
}

class CategoryTile extends StatelessWidget {
  final imgUrl, ctgName;
  const CategoryTile({Key? key, this.imgUrl, this.ctgName}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
            context,
            MaterialPageRoute(
                builder: (content) => CategoryNews(
                      category: ctgName.toLowerCase(),
                    )));
      },
      child: Container(
        margin: const EdgeInsets.only(right: 16),
        child: Stack(
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(6),
              child: CachedNetworkImage(
                imageUrl: imgUrl,
                height: 110,
                width: 109.4,
                fit: BoxFit.cover,
              ),
            ),
            Container(
              height: 110,
              width: 109.4,
              alignment: Alignment.center,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(6),
                color: const Color.fromARGB(134, 0, 0, 0),
              ),
              child: Text(
                ctgName,
                style: const TextStyle(
                  color: Colors.white,
                  fontSize: 14,
                  fontWeight: FontWeight.w500,
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}

class BlogTile extends StatelessWidget {
  final imgUrl, title, desc, url;
  const BlogTile(
      {Key? key,
      @required this.desc,
      @required this.imgUrl,
      @required this.title,
      @required this.url})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(context,
            MaterialPageRoute(builder: (context) => Article(blogUrl: url)));
      },
      child: Container(
        margin: const EdgeInsets.only(bottom: 18),
        child: Column(
          children: [
            ClipRRect(
                borderRadius: BorderRadius.circular(6),
                child: Image.network(imgUrl)),
            const SizedBox(
              height: 8,
            ),
            Text(
              title,
              style: const TextStyle(
                  fontSize: 18,
                  color: Colors.black87,
                  fontWeight: FontWeight.w600),
            ),
            const SizedBox(
              height: 8,
            ),
            Text(
              desc,
              style: const TextStyle(
                color: Colors.black54,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
