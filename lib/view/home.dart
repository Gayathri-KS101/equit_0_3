import 'package:equit_0_3/controller/FetchNews.dart';
import 'package:equit_0_3/view/widget/newscontainer.dart';
import 'package:flutter/material.dart';

import '../model/newsArt.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen>{
  late NewsArt newsArt;
  GetNews() async{

   newsArt = await FetchNews.fetchNews();
   setState(() {

   });
  }

  @override
  void initState() {
    GetNews();
    super.initState();
  }
  @override
  Widget build(BuildContext context){
    return Scaffold(
      body: PageView.builder(
          controller: PageController(initialPage: 0),
          scrollDirection: Axis.vertical,
          onPageChanged: (value){
            GetNews();

          },
          //itemCount: 10,
          itemBuilder :(context, index){

            //FetchNews.fetchNews();
    return NewsContainer(
        imgUrl: newsArt.imgUrl,
        newsCnt:
        newsArt.newsCnt,
        newsHead:
        newsArt.newsHead,
        newsDes:
        newsArt.newsDes,
        newsUrl:
        newsArt.newsUrl,);
          }),
    );
  }
}
          /*onPageChanged: (value) {
            setState(() {
              isLoading = true;
            });
            GetNews();
          },
          itemBuilder: (context, index) {
            return isLoading ? Center(child: CircularProgressIndicator(),) : NewsContainer(imgurl: newsArt.imgurl,
                newscnt: newsArt.newscnt,
                newsHead: newsArt.newsHead,
                newsdesc: newsArt.newsdesc,
                newsurl: newsArt.newsurl);
          }),*/






