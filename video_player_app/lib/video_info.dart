import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'colors.dart' as color;
import 'home_page.dart';

class VideoInfo extends StatefulWidget {
  const VideoInfo({Key? key}) : super(key: key);

  @override
  _VideoInfoState createState() => _VideoInfoState();
}

class _VideoInfoState extends State<VideoInfo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(body:
    Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [
            color.AppColor.gradientFirst.withOpacity(0.9),
            color.AppColor.gradientSecond,
          ],
          begin: const FractionalOffset(0.0, 0.4),
          end: Alignment.topRight,
        )
      ),
      child: Column(
        children: [
          Container(
            width: MediaQuery.of(context).size.width,
            height: 300,
            padding: EdgeInsets.only(top:70, left: 30, right: 30),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    InkWell(
                      onTap: (){
                        Navigator.pop(context);
                    },
                      child: Icon(
                        Icons.arrow_back_ios,
                        size: 20,
                        color: color.AppColor.secondPageIconColor,
                      ),
                    ),
                    Expanded(child: Container()),
                    Icon(
                      Icons.info_outline,
                      size: 20,
                      color: color.AppColor.secondPageIconColor,
                    ),
                  ],
                ),
                SizedBox(height: 30,),
                Text(
                      'Legs Tonning',
                      style: TextStyle(
                        color: color.AppColor.homePageContainerTextSmall,
                        fontSize: 25,
                      ),
                    ),
                SizedBox(width: 20,),
                Text('and Glutes Workout',
                      style: TextStyle(
                        color: color.AppColor.homePageContainerTextSmall,
                        fontSize: 25,
                      ),
                    ),
                SizedBox(height: 50,),
                Row(
                  children: [
                    Container(
                      height: 30,
                      width: 90,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        gradient: LinearGradient(
                          colors: [
                            color.AppColor.secondPageContainerGradient1stColor,
                            color.AppColor.secondPageContainerGradient2ndColor,
                          ],
                          begin: Alignment.bottomLeft,
                          end: Alignment.topRight,
                        )
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(Icons.timer,
                          size: 20,
                          color: color.AppColor.secondPageIconColor,),
                          SizedBox(width: 5,),
                          Text('68 min',
                          style: TextStyle(
                            fontSize: 16,
                            color: color.AppColor.secondPageIconColor
                          ),)
                        ],
                      ),
                    ),
                    SizedBox(width: 10,),
                    Container(
                      height: 30,
                      width: 250,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          gradient: LinearGradient(
                            colors: [
                              color.AppColor.secondPageContainerGradient1stColor,
                              color.AppColor.secondPageContainerGradient2ndColor,
                            ],
                            begin: Alignment.bottomLeft,
                            end: Alignment.topRight,
                          )
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(Icons.handyman,
                            size: 20,
                            color: color.AppColor.secondPageIconColor,),
                          SizedBox(width: 5,),
                          Text('Resistent band, kettebell',
                            style: TextStyle(
                                fontSize: 16,
                                color: color.AppColor.secondPageIconColor
                            ),)
                        ],
                      ),
                    ),
                  ],
                )
              ],
            ),
          ),
          Expanded(child: Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.only(topRight: Radius.circular(70)),
              color: Colors.white
            ),
          ),)
        ],
      ),
    ),
    );
  }
}
