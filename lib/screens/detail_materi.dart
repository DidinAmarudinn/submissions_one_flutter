import 'package:flutter/material.dart';
import 'package:flutter_submissions/models/data_models.dart';

class DetailMateri extends StatefulWidget {
  final DataModels dataModels;

  const DetailMateri({Key key, this.dataModels}) : super(key: key);

  @override
  _DetailMateriState createState() => _DetailMateriState();
}

class _DetailMateriState extends State<DetailMateri> {
  bool isBookmark = false;
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white.withOpacity(0.12),
        title: Text(widget.dataModels.judul),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            isBookmark = !isBookmark;
          });
        },
        child: Icon(
          isBookmark ? Icons.bookmark : Icons.bookmark_border,
          size: 30,
        ),
      ),
      body: ListView(
        padding: EdgeInsets.symmetric(horizontal: 12, vertical: 12),
        children: <Widget>[
          Column(
            children: <Widget>[
              widget.dataModels.desk1 == null
                  ? SizedBox()
                  : Container(
                      margin: EdgeInsets.symmetric(vertical: 12),
                      width: width,
                      child: Text(
                        widget.dataModels.desk1,
                        style: TextStyle(color: Colors.white, height: 1.5),
                      ),
                    ),
              widget.dataModels.imgUrl1 == null
                  ? SizedBox()
                  : Container(
                      margin: EdgeInsets.symmetric(vertical: 12),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(10),
                        child: Image.asset(
                          widget.dataModels.imgUrl1,
                          fit: BoxFit.cover,
                          width: width,
                        ),
                      ),
                    ),
              widget.dataModels.desk2 == null
                  ? SizedBox()
                  : Container(
                      margin: EdgeInsets.symmetric(vertical: 12),
                      width: width,
                      child: Text(widget.dataModels.desk2,
                          style: TextStyle(color: Colors.white, height: 1.5)),
                    ),
              widget.dataModels.imgUrl2 == null
                  ? SizedBox()
                  : Container(
                      margin: EdgeInsets.symmetric(vertical: 12),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(10),
                        child: Image.asset(
                          widget.dataModels.imgUrl2,
                          fit: BoxFit.cover,
                          width: width,
                        ),
                      ),
                    ),
              widget.dataModels.desk3 == null
                  ? SizedBox()
                  : Container(
                      margin: EdgeInsets.symmetric(vertical: 12),
                      width: width,
                      child: Text(widget.dataModels.desk3,
                          style: TextStyle(color: Colors.white, height: 1.5)),
                    ),
              widget.dataModels.imgUrl3 == null
                  ? SizedBox()
                  : Container(
                      margin: EdgeInsets.symmetric(vertical: 12),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(10),
                        child: Image.asset(
                          widget.dataModels.imgUrl3,
                          width: width,
                        ),
                      ),
                    ),
              widget.dataModels.desk4 == null
                  ? SizedBox()
                  : Container(
                      margin: EdgeInsets.symmetric(vertical: 12),
                      width: width,
                      child: Text(widget.dataModels.desk4,
                          style: TextStyle(color: Colors.white, height: 1.5)),
                    ),
              widget.dataModels.imgUrl4 == null
                  ? SizedBox()
                  : Container(
                      margin: EdgeInsets.symmetric(vertical: 12),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(10),
                        child: Image.asset(
                          widget.dataModels.imgUrl4,
                          width: width,
                        ),
                      ),
                    ),
              widget.dataModels.desk5 == null
                  ? SizedBox()
                  : Container(
                      margin: EdgeInsets.symmetric(vertical: 12),
                      width: width,
                      child: Text(widget.dataModels.desk5,
                          style: TextStyle(color: Colors.white, height: 1.5)),
                    ),
              widget.dataModels.imgUrl5 == null
                  ? SizedBox()
                  : Container(
                      margin: EdgeInsets.symmetric(vertical: 12),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(10),
                        child: Image.asset(
                          widget.dataModels.imgUrl5,
                          fit: BoxFit.cover,
                          width: width,
                        ),
                      ),
                    ),
            ],
          )
        ],
      ),
    );
  }
}
