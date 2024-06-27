import 'package:flutter/material.dart';
import 'package:flutter_pokiomon_app/thirdpage.dart';

class MyWidget extends StatefulWidget {
  const MyWidget({super.key, this.index, this.items});
  final index;

  final items;
  @override
  State<MyWidget> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<MyWidget> {
  @override
  Widget build(BuildContext context) {
    MediaQueryData mediaQueryData=MediaQuery.of(context);
    var hight =mediaQueryData.size.height;
    var width =mediaQueryData.size.width;
    return GestureDetector(
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              // ignore: prefer_const_constructors
              builder: (context) => RouteTwo(caracter: widget.items[widget.index].name, items: widget.items,index: widget.index,),
            ),
          );
        },
        child: Card(
          child: Column(
            children: [SizedBox(height: hight/20,),
              Container(width: width/5,height: hight/10,
                child: Image.asset(widget.items[widget.index].photo,fit:BoxFit.cover ,),),SizedBox(height: hight/23,),
                Text('${widget.items[widget.index].name}',style: TextStyle(fontSize: 17,fontWeight: FontWeight.w400),)
            ],
          ),
        ),
        
        );
  }
}
