import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/services.dart';

import 'model/youtube_search_Model.dart';

class YoutubeSearchPage extends StatefulWidget {
  @override
  _YoutubeSearchPageState createState() => _YoutubeSearchPageState();
}

class _YoutubeSearchPageState extends State<YoutubeSearchPage> {
  bool _isSearch = false;
  int navIndex = 0;


  @override
  void initState() {
    super.initState();
    _loadMockDataFromAssets();
  }

  Future<void> _loadMockDataFromAssets()async{
    final assetsData=await rootBundle.loadString("assets/youtube_search.json");

    final response=YoutubeSearchModel.fromJson(json.decode(assetsData));

    print(response.items[0].snippet.thumbnails.high.url);
  }


  Widget _searchWidget() {
    return Row(
      children: [
        InkWell(
            onTap: () {
              setState(() {
                _isSearch = false;
              });
            },
            child: Icon(Icons.arrow_back)),
        SizedBox(width: 5,),
        Expanded(
          child: Container(
              height: 45,
              padding: EdgeInsets.symmetric(horizontal: 10),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(8)),
                color: Colors.black.withOpacity(.2),
              ),
              child: TextField(
                style: TextStyle(color: Colors.white),
                decoration: InputDecoration(
                    hintText: "search Youtube", border: InputBorder.none),
              )),
        ),
        SizedBox(width: 5,),
        Container(
          width: 38,
          height: 38,
          decoration: BoxDecoration(color: Colors.black.withOpacity(.1),shape: BoxShape.circle),
          child: Icon(Icons.mic),
        ),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: _isSearch == true
            ? _searchWidget()
            : Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                      height: 20,
                      child: Image.asset("assets/youtube_logo.png")),
                  Row(
                    children: [
                      SizedBox(
                        width: 8,
                      ),
                      Icon(Icons.notifications_none_outlined),
                      SizedBox(
                        width: 8,
                      ),
                      InkWell(
                          onTap: () {
                            if (_isSearch == false) {
                              setState(() {
                                _isSearch = true;
                              });
                            }
                          },
                          child: Icon(Icons.search)),
                      SizedBox(
                        width: 8,
                      ),
                      Container(
                        width: 28,
                        height: 28,
                        child: ClipRRect(
                            borderRadius: BorderRadius.all(Radius.circular(28)),
                            child: Image.asset("assets/etechviral.png")),
                      ),
                    ],
                  )
                ],
              ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        selectedItemColor: Colors.red,
        unselectedItemColor: Colors.grey,
        showUnselectedLabels: true,
        currentIndex: navIndex,
        onTap: (index) {
          setState(() {
            navIndex = index;
          });
        },
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
          BottomNavigationBarItem(
              icon: Icon(Icons.explore_outlined), label: "Explore"),
          BottomNavigationBarItem(icon: Icon(Icons.add), label: "Create"),
          BottomNavigationBarItem(
              icon: Icon(Icons.attach_money), label: "Subscriptions"),
          BottomNavigationBarItem(icon: Icon(Icons.wysiwyg), label: "Libray"),
        ],
      ),
      body: ListView.builder(
        itemCount: 8,
        itemBuilder: (context, index) {
          return Container(
            height: 280,
            child: Card(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    height: 200,
                    width: double.infinity,
                    color: Colors.grey,
                    child: Center(
                      child: Text("thumb Image"),
                    ),
                  ),
                  SizedBox(
                    height: 8,
                  ),
                  Text(
                    "Title",
                    maxLines: 2,
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
                  ),
                  SizedBox(
                    height: 4,
                  ),
                  Text(
                    "Channel Title",
                    style: TextStyle(fontSize: 14, fontWeight: FontWeight.w400),
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
