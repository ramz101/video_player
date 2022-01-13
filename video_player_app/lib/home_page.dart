import 'dart:convert';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/basic.dart';
import 'package:flutter/src/widgets/container.dart';
import 'colors.dart' as color;
import 'video_info.dart';


class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List info=[];
  _initData(){
    DefaultAssetBundle.of(context).loadString("json/info.json").then((value) => {
      info= json.decode(value)
    });
  }
  @override
  void initState(){
    super.initState();
    _initData();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: color.AppColor.homePageBackground,
      body: Container(
        padding: const EdgeInsets.only(top:50, left: 30, right: 30),
        child: Column(
          children: [
            Row(
              children: [
                Text('Training',
                  style:TextStyle(
                      fontSize: 30.0,
                      color: color.AppColor.homePageTitle,
                      fontWeight: FontWeight.w700
                  ),
                ),
                Expanded(child: Container()),
                Icon(Icons.arrow_back_ios,
                  color: color.AppColor.homePageIcons,
                  size: 20,),
                SizedBox(width:10),
                Icon(Icons.calendar_today_outlined,
                color: color.AppColor.homePageIcons,
                size:20),
                SizedBox(width: 15),
                Icon(Icons.arrow_forward_ios,
                  color: color.AppColor.homePageIcons,
                  size: 20,),
              ],
            ),
            SizedBox(height: 30,),
            Row(
              children: [
                Text('Your Program',
                style:TextStyle(
                  color: color.AppColor.homePageSubtitle,
                  fontSize: 20,
                  fontWeight: FontWeight.w700,
                ),
                ),
                Expanded(child: Container()),
                Text('Details',
                  style:TextStyle(
                    color: color.AppColor.homePageDetail,
                    fontSize: 20,
                  ),
                ),
                SizedBox(width: 5),
                InkWell(
                  onTap: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>VideoInfo()));
                  },
                  child: Icon(Icons.arrow_forward,
                  size: 20,),
                )
              ],
            ),
            SizedBox(height: 10),
            Container(
              width: MediaQuery.of(context).size.width,
              height: 208,
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  colors: [
                    color.AppColor.gradientFirst.withOpacity(0.8),
                    color.AppColor.gradientSecond.withOpacity(0.9),
                  ],
                  begin: Alignment.bottomLeft,
                  end: Alignment.centerRight,
                ),
                boxShadow: [
                  BoxShadow(
                    offset: Offset(5, 10),
                    blurRadius: 10,
                    color: color.AppColor.gradientSecond.withOpacity(0.2)
                  )
                ],
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(10),
                  bottomLeft: Radius.circular(10),
                  bottomRight: Radius.circular(10),
                  topRight: Radius.circular(80)
                )
              ),
              child: Container(
                padding: const EdgeInsets.only(left: 20, top:25, right:20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('Next Workout',
                    style: TextStyle(
                      color: color.AppColor.homePageContainerTextSmall,
                      fontSize: 16,
                    ),
                    ),
                    SizedBox(height: 5),
                    Text(
                      'Legs Tonning',
                      style: TextStyle(
                        color: color.AppColor.homePageContainerTextSmall,
                        fontSize: 25,
                      ),
                    ),
                    Text('and Glutes Workout',
                      style: TextStyle(
                        color: color.AppColor.homePageContainerTextSmall,
                        fontSize: 25,
                      ),
                    ),
                    SizedBox(height: 25),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Row(
                          children: [
                            Icon(Icons.timer,
                            size: 20,
                            color:color.AppColor.homePageContainerTextSmall),
                            SizedBox(width: 10),
                            Text('60 min',
                            style: TextStyle(
                              fontSize: 16,
                              color: color.AppColor.homePageContainerTextSmall
                            ),
                            ),
                          ],
                        ),
                        Expanded(child: Container()),
                        Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(55),
                            boxShadow: [
                              BoxShadow(
                              color: color.AppColor.gradientFirst,
                              offset: Offset(4, 8),
                                blurRadius: 10,
                              ),
                            ]
                          ),
                          child: Icon(Icons.play_circle_fill,
                            size:60,
                            color:Colors.white,),
                        )
                      ],
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(height: 5,),
            Container(
              height: 180,
              width: MediaQuery.of(context).size.width,
              child: Stack(
                children: [
                  Container(
                    width: MediaQuery.of(context).size.width,
                    margin: const EdgeInsets.only(top: 30),
                    height: 120,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      image: DecorationImage(
                        image: AssetImage(
                          'assets/card.jpg'
                        ),
                        fit: BoxFit.fill,
                      ),
                      boxShadow: [
                        BoxShadow(
                          color: color.AppColor.gradientSecond.withOpacity(0.3),
                          offset: Offset(8, 10),
                          blurRadius: 20,
                        )
                      ]
                    ),
                  ),
                  Container(
                      height: 200,
                      width: MediaQuery.of(context).size.width,
                      margin: const EdgeInsets.only(right: 200, bottom:30),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        image: DecorationImage(
                          image: AssetImage(
                              'assets/figure1.png'
                          ),
                          // fit: BoxFit.fill,
                        ),
                      )
                  ),
                  Container(
                    width: double.maxFinite,
                    height: 100,
                    margin: const EdgeInsets.only(top:50, left:150),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'You are doing great',
                          style: TextStyle(
                            color: color.AppColor.homePageDetail,
                            fontSize: 18,
                            fontWeight: FontWeight.w700
                          )
                        ),
                        SizedBox(height: 10,),
                        Text(
                          'keep it up',
                          style: TextStyle(
                            fontSize: 17,
                            fontWeight: FontWeight.w700,
                            color: Colors.black38
                          )
                        ),
                        SizedBox(height: 5,),
                    Text(
                      'stick to your plan',
                      style: TextStyle(
                          fontSize: 17,
                          fontWeight: FontWeight.w700,
                          color: Colors.black38
                      ),
                    ),
                      ],
                    ),
                  )
                ],
              ),
            ),
            Row(
              children: [
                Text('Area of focus',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontWeight: FontWeight.w500,
                    fontSize: 25,
                    color: color.AppColor.homePageTitle,
                  ),)
              ],
            ),
            Expanded(
              child: OverflowBox(
                maxWidth: MediaQuery.of(context).size.width,
                child: MediaQuery.removePadding(
                  removeTop: true,
                  context: context,
                  child: ListView.builder(
                    itemCount: (info.length.toDouble()/2).toInt(),
                      itemBuilder: (_, i){
                      int a = 2 * i;
                      int b = 2 * i + 1;
                        return Row(
                          children: [
                            Container(
                              height: 170,
                              margin: EdgeInsets.only(left:30,bottom:15, top:15),
                              width: (MediaQuery.of(context).size.width-90)/2,
                              padding: EdgeInsets.only(bottom: 5),
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(15),
                                image: DecorationImage(
                                  image: AssetImage(
                                    info[a]['img']
                                  )
                                ),
                                boxShadow: [
                                  BoxShadow(
                                    blurRadius: 3,
                                    offset: Offset(5,5),
                                    color: color.AppColor.gradientSecond.withOpacity(0.1)
                                  ),
                                  BoxShadow(
                                      blurRadius: 3,
                                      offset: Offset(-5,-5),
                                      color: color.AppColor.gradientSecond.withOpacity(0.1)
                                  ),
                                ],
                                ),
                              child: Center(
                                child: Align(
                                  alignment: Alignment.bottomCenter,
                                  child: Text(
                                   info[a]['title'],
                                    style: TextStyle(
                                      fontSize: 20,
                                      color: color.AppColor.homePageDetail,
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            Container(
                              height: 170,
                              margin: EdgeInsets.only(left:30,bottom:15, top:15),
                              width: (MediaQuery.of(context).size.width-90)/2,
                              padding: EdgeInsets.only(bottom: 5),
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(15),
                                image: DecorationImage(
                                    image: AssetImage(
                                        info[b]['img']
                                    )
                                ),
                                boxShadow: [
                                  BoxShadow(
                                      blurRadius: 3,
                                      offset: Offset(5,5),
                                      color: color.AppColor.gradientSecond.withOpacity(0.1)
                                  ),
                                  BoxShadow(
                                      blurRadius: 3,
                                      offset: Offset(-5,-5),
                                      color: color.AppColor.gradientSecond.withOpacity(0.1)
                                  ),
                                ],
                              ),
                              child: Center(
                                child: Align(
                                  alignment: Alignment.bottomCenter,
                                  child: Text(
                                    info[b]['title'],
                                    style: TextStyle(
                                      fontSize: 20,
                                      color: color.AppColor.homePageDetail,
                                    ),
                                  ),
                                ),
                              ),
                            )
                          ],
                        );
                      }
                  ),
                ),
              ),
            )
          ],
        ),
      )
    );
  }
}
