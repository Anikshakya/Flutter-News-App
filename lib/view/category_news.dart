// ignore_for_file: prefer_typing_uninitialized_variables, avoid_unnecessary_containers

import 'package:flutter/material.dart';
import 'package:flutternews/helper/news.dart';
import 'package:flutternews/model/article_model.dart';
import 'package:flutternews/view/article_view.dart';

class CategoryNews extends StatefulWidget {
  final category;
  const CategoryNews({Key? key, this.category}) : super(key: key);

  @override
  State<CategoryNews> createState() => _CategoryNewsState();
}

class _CategoryNewsState extends State<CategoryNews> {
  var articles = <ArticleModel>[];

  bool _loading = true;

  @override
  void initState() {
    // ignore: todo
    // TODO: implement initState
    super.initState();
    getCatNews();
  }

  getCatNews() async {
    CategoryNewsClass newsObj = CategoryNewsClass();
    await newsObj.getCatNews(widget.category);
    articles = newsObj.catNews;
    setState(() {
      _loading = false;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: const IconThemeData(
          color: Colors.black,
        ),
        backgroundColor: Colors.white,
        centerTitle: true,
        title: RichText(
          text: const TextSpan(
              text: 'Mero',
              style: TextStyle(
                  color: Colors.black,
                  fontSize: 22,
                  fontWeight: FontWeight.w500),
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
        actions: [
          Opacity(
            opacity: 0,
            child: Container(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: const Icon(
                Icons.save,
                color: Colors.black,
              ),
            ),
          )
        ],
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
                padding: const EdgeInsets.all(16),
                child: ListView.builder(
                    shrinkWrap: true,
                    physics: const ClampingScrollPhysics(),
                    itemCount: articles.length,
                    itemBuilder: (context, index) {
                      return CatBlogTile(
                          desc: articles[index].description,
                          imgUrl: articles[index].urlToImage,
                          title: articles[index].title,
                          url: articles[index].url);
                    }),
              ),
            ),
    );
  }
}

class CatBlogTile extends StatelessWidget {
  final imgUrl, title, url, desc;

  const CatBlogTile(
      {Key? key,
      @required this.desc,
      @required this.title,
      @required this.url,
      @required this.imgUrl})
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
