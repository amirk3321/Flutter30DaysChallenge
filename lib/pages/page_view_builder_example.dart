import 'package:flutter/material.dart';
import 'package:flutter30dayschallenge/domain/entity/list_data_entity.dart';

class PageViewBuilderExample extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("PageView Example"),
      ),
      body: PageView.builder(
        itemCount: ListEntity.listData.length,
        itemBuilder: (context, index) {
          return Container(
            decoration: BoxDecoration(color: Colors.grey),
            child:
                Center(child: Text("Page ${ListEntity.listData[index].title}")),
          );
        },
      ),
    );
  }
}
