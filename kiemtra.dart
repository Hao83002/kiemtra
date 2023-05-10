import 'dart:html';

import 'package:flutter/material.dart';
import '..models/market.dart';

class Market extends StatefulWidget {
  final Market market;

  Market({this.market});

  _MarketState createState() => _MarketState();
}

class _MarketState extends State<Market>{
  Widget build(BuildContext context)
   return Scaffold(
    body: Column(
      children: <Widget>[
        Stack(
          children: <Widget>[
            Hero(
              tag: widget.market.imageUrl,
              child: Image(
                height: 222.0,
                width: MediaQuery.of(context).size.width,
                image: AssetImage(widget.market.imageUrl),
                fit: BoxFit.cover,
              )
            )
            Padding(
              padding: EdgeInsets.systemtric(horizontal: 20.0, vertical:  50.0),
              children: <Widget>[
                IconButton(
                  icon Icon(Icon.arrow_back_ios),
                  color: Colors.while,
                  iconSize: 30.0,
                  onPressed: () => Navigotor.pop(context),
                ),
                IconButton(
                  icon: Icon(Icon.favorite),
                  color: Theme.of(context).primaryColor,
                  iconSize: 35.0,
                  onPressed: () {}
                )
              ],
            ),
            Padding(
              padding: EdgeInsets.all(20.0),
              child: Column(
                crossAxíAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Text(
                        widget.market.name,
                        style.TextStyle(
                          fontSize: 22.0,
                          fontWeight: FontWeight.w600
                        ),
                      ),
                      Text( 
                        "0.2 miles away",
                        style: TextStyle( 
                          fontSize: 18.0,
                        ),
                      ),
                    ],
                  ),
                  RatingStart(widget.market.rating),
                  SizeBox(height: 6.0),
                  Text( 
                    widget.market.address,
                    style: TextStyle(fontSize: 18.0),
                  ),
                ],
              ),
            )
            Row(
              mainAxisAlgnment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                onPressed: () {},
                style: TextButton.styleFrom( 
                  padding: EdgeInsets.sysmetric(horizontal: 30.0),
                  textStyle: TextStyle(
                    color: Theme.of(context).primaryColor
                  ),
                  shape: RoundedRectangleBorder()
                )
                child: Text()
                  "Sale"
                  style: TextStyle( 
                    color: Color.red,
                    fontSize: 20.0
                  )
              ]
            )
        )
          ],
        ),
      ]
    )
   )
}
