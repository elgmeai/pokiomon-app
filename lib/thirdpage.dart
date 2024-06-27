import 'package:flutter/material.dart';
import 'package:flutter_pokiomon_app/resourses/colors.dart';

class RouteTwo extends StatefulWidget {
  final items;

  final index;

  const RouteTwo(
      {super.key,
      required this.caracter,
      required this.items,
      required this.index});
  final caracter;

  @override
  State<RouteTwo> createState() => _RouteTwoState();
}

class _RouteTwoState extends State<RouteTwo> {
  @override
  Widget build(BuildContext context) {
    MediaQueryData mediaQueryData = MediaQuery.of(context);
    var hight = mediaQueryData.size.height;
    var width = mediaQueryData.size.width;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colorss().appbar,
        title: Padding(
          padding: EdgeInsets.only(left: width / 6, right: width / 4),
          child: Center(
            child: Text(
              '${widget.caracter}',
              style: TextStyle(color: Colors.white),
            ),
          ),
        ),
      ),
      body: Container(decoration: BoxDecoration(color: Colorss().appbar,
        borderRadius: BorderRadius.all(Radius.circular(5))),
          width: width,
          
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisSize: MainAxisSize.max,
            children: [
              SizedBox(
                height: hight /4.5,
              ),
              Container(decoration: BoxDecoration(color: Colors.white,borderRadius: BorderRadius.all(Radius.circular(5))),
                width: width/1.04,height: hight/2,child: Column(children: [SizedBox(
                width: width / 3,
                height: hight / 6,
                child:  Image.asset(
                    widget.items[widget.index].photo,
                    fit: BoxFit.cover,
                  ),
                ),
              
              
              Text(
                '${widget.items[widget.index].name}',
                style:
                    const TextStyle(fontSize: 17, fontWeight: FontWeight.w600),
              )],),
              )
            ],
          )),
    );
  }
}
