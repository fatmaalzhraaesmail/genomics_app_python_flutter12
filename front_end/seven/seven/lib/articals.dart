// ignore_for_file: unnecessary_import

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';
import 'articldetails.dart';
import 'data.dart';
import 'package:intl/intl.dart';

class ArtecalsScreen extends StatefulWidget {
  @override
  _ArtecalsScreenState createState() => _ArtecalsScreenState();
}

class _ArtecalsScreenState extends State<ArtecalsScreen> {
 

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white12,
      appBar: AppBar(
        title: Text(
          'Articles',
          style: TextStyle(
              fontWeight: FontWeight.bold, fontSize: 23, color: Colors.white),
        ),
        elevation: 0.0,
        backgroundColor: Color.fromRGBO(66, 98, 94, 1),
        centerTitle: false,
      ),
      body: SingleChildScrollView(
        child: Container(
          color: Colors.white,
          child: Padding(
            padding: const EdgeInsets.only(
              left: 5,
              right: 5,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: 15,
                ),

                Container(
                  height: 700,
//                  width: double.infinity,
                  child: ListView.builder(
                    scrollDirection: Axis.vertical,
//                    physics: ,
                    itemCount: articlesDetails.length,

                    itemBuilder: (context, index) => NewArticles(
                      context,
                      articlesDetails[index],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget NewArticles(
    BuildContext context,
    Articles articlesDetail,
  ) {
    return InkWell(
      onTap: () {
        Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => ArticleDetails(articlesDetail),
            ));
      },
      child: Padding(
        padding: EdgeInsets.all(8.0),
        child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15),
            color: Colors.grey[200],
          ),


          child: Row(
            children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding:
                        const EdgeInsets.only(top: 10, left: 10, bottom: 5),
                    child: Text(
                      '${articlesDetail.title}',
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(9.0),
                    child: Container(
                        width: 365,
                        height: 160,
                        decoration: BoxDecoration(
//                  borderRadius: BorderRadius.circular(20),

//            color: Colors.transparent,
                            image: DecorationImage(
                          fit: BoxFit.cover,
//                   image:AssetImage('assets/images/f12.jpg',))) ,
                          image: AssetImage('${articlesDetail.img[0]}'),
                        ))),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 1, left: 8, right: 8),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            Icon(
                              Icons.favorite_border_rounded,
                              color: Color.fromRGBO(66, 98, 94, 1),
                            ),
                            Icon(
                              Icons.chat_outlined,
                              color: Color.fromRGBO(66, 98, 94, 1),
                            ),
                            Icon(
                              Icons.near_me_outlined,
                              color: Color.fromRGBO(66, 98, 94, 1),
                            ),
                          ],
                        ),
                        SizedBox(
                          width: 260,
                        ),
                        Icon(
                          Icons.bookmark_border_outlined,
                          color: Color.fromRGBO(66, 98, 94, 1),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    width: 375,
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        '${articlesDetail.text[0]}',
                        style: TextStyle(fontWeight: FontWeight.w500),
                        overflow: TextOverflow.clip,
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      children: [
                        Container(
//    width: 230,
                          child: ClipOval(
                            child: Container(
                                width: 30,
                                height: 30,
                                child: Image.asset(
                                  "${articlesDetail.authors[0]}",
                                  fit: BoxFit.cover,
                                )),
                          ),
                        ),
                        SizedBox(
                          width: 7,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                                 mainAxisAlignment: MainAxisAlignment.start,
//                                 crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              '${articlesDetail.publicher}',
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 15),
                            ),
                            SizedBox(
                              width: 110,
                            ),
                            GestureDetector(
//                                       onTap: (){Navigator.push( context, MaterialPageRoute(builder: (context) => ArticleDetails(),));},

                                child: Text(
                              'Read More..   >',
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 15,
                                color: Color.fromRGBO(66, 98, 94, 1),
                              ),
                            ))
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
