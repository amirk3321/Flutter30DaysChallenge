import 'package:flutter/material.dart';
import 'package:flutter30dayschallenge/domain/entity/list_data_entity.dart';

class GridViewBuilder extends StatelessWidget {
  final data=ListEntity.listData;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GridView.builder(
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2
        ),
        itemCount:data.length ,
        itemBuilder: (context,index){
          return Card(
            color: index==1?Colors.red:Colors.green,
            child: Center(
              child: Column(
                children: [
                  Container(width: 150,height:150,child: Image.asset(data[index].image)),
                  Text("${data[index].title}"),
                ],
              ),
            ),
          );
        },
      )
    );
  }
}
