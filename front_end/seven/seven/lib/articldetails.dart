import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'data.dart';

class ArticleDetails extends StatefulWidget {
  ArticleDetails(this.articleDetails);
  final Articles articleDetails;

  @override
  _ArticleDetailsState createState() => _ArticleDetailsState();
}

class _ArticleDetailsState extends State<ArticleDetails> {
  int currentIndex = 0;
  List pages = [
    Colors.grey[700],
    Colors.grey[700],
    Colors.grey[700],
    Colors.grey[700],
    Colors.grey[700],
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0.0,
        backgroundColor: Color.fromRGBO(66, 98, 94, 1),
        title: Text('${widget.articleDetails.title}'),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Container(
          
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 10, left: 15, right: 15),
                child: Container(
                    height: 250,
                    decoration: BoxDecoration(
                      
                        borderRadius: BorderRadius.circular(20),
//                         color: Color(0xff839793),
                        color: Colors.transparent,
                        image: DecorationImage(
                          fit: BoxFit.cover,
//                   image:AssetImage('assets/images/f12.jpg',))) ,
                          image: AssetImage(
                              '${widget.articleDetails.img[currentIndex]}',),
                        ))),
//                ),
              ),

              //*******************************
              Container(
                margin: const EdgeInsets.only(left: 25),
                height: 55,
                width: 150,
                child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: pages.length,
                    itemBuilder: (context, index) => InkWell(
//                      borderRadius: BorderRadius.circular(5),
                          onTap: () {
                            setState(() {
                              currentIndex = index;
                            });
                          },
                          child: Container(
                            margin: EdgeInsets.symmetric(horizontal: 2),
                            padding: EdgeInsets.all(3),
                            height: 20,
                            width: 20,
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              border: Border.all(color: Colors.grey),
                            ),
                            child: Container(
                              decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                color: pages[index],
                              ),
                            ),
                          ),
                        )),
              ),
              SizedBox(
                height: 15,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 15, bottom: 15),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text(
                      'Written by',
                      style:
                          TextStyle(fontWeight: FontWeight.w900, fontSize: 20),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 15),
                child: Row(
                  children: [
                    Row(
                      children: [
                        for (int i = 0; i < articlesDetails.length; i++)
                          TeamMembers(widget.articleDetails.authors[i]),
                        SizedBox(
                          width: 10,
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 15,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 15),
                child: Text(
                  '${widget.articleDetails.text[currentIndex]}',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget TeamMembers(imgs) {
    return Container(
//    width: 230,
      child: ClipOval(
        child: Container(
            width: 25,
            height: 25,
            child: Image.asset(
              "${imgs}",
              fit: BoxFit.cover,
            )),
      ),
    );
  }
}
