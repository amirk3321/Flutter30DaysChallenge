import 'package:flutter/material.dart';

class TikTokUIExampleStack extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Positioned(
            top: 35,
            right: 15,
            left: 15,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Icon(Icons.close),
                Row(
                  children: [Icon(Icons.music_note_outlined), Text("Sound")],
                ),
                Column(
                  children: [Icon(Icons.filter), Text("Flip")],
                )
              ],
            ),
          ),
          Positioned(
            right: 15,
            top: 90,
            child: Column(
              children: [
                Icon(Icons.speed),
                Text("Speed"),
                SizedBox(
                  height: 20,
                ),
                Icon(Icons.card_membership),
                Text("Beauty"),
                SizedBox(
                  height: 20,
                ),
                Icon(Icons.attach_file),
                Text("Filters"),
                SizedBox(
                  height: 20,
                ),
                Icon(Icons.access_time),
                Text("Time"),
                SizedBox(
                  height: 20,
                ),
                Icon(Icons.flash_on_sharp),
                Text("flash"),
              ],
            ),
          ),
          Positioned(
            bottom: 20,
              right: 15,
              left: 15,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                children: [
                  Container(
                    height: 50,
                    width: 50,
                    decoration: BoxDecoration(
                        color: Colors.grey,
                        borderRadius: BorderRadius.all(Radius.circular(8))),
                    child: Icon(Icons.image,color: Colors.white,),
                  ),
                  Text("Effects"),
                ],
              ),
              Container(
                height: 80,
                width: 80,
                padding: EdgeInsets.all(5),
                decoration: BoxDecoration(
                  color: Colors.red.withOpacity(.6),
                  borderRadius: BorderRadius.all(Radius.circular(60))
                ),
                child: Container(
                  height: 70,
                  width: 70,
                  decoration: BoxDecoration(
                    color: Colors.red,
                    borderRadius: BorderRadius.all(Radius.circular(50)),
                    border: Border.all(color: Colors.black,width: 2)
                  ),
                ),
              ),
              Column(
                children: [
                  Container(
                    height: 50,
                    width: 50,
                    decoration: BoxDecoration(
                        color: Colors.grey,
                        borderRadius: BorderRadius.all(Radius.circular(8))),
                    child: Icon(Icons.upload_file,color: Colors.white,),
                  ),
                  Text("upload"),
                ],
              ),
            ],
          )),
        ],
      ),
    );
  }
}
