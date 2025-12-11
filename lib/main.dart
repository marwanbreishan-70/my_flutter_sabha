import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main (){
  runApp(MyApps());
}
class MyApps extends StatefulWidget{
  @override
  State<MyApps> createState() => _MyAppsState();
}

class _MyAppsState extends State<MyApps> {
  //const MyApps({super.key});
  int point_team_A=0;

  int point_team_B=0;

  @override
  Widget build(BuildContext context){
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Color(0xFF6A71AD),
        appBar: AppBar(
          backgroundColor: Colors.black,
        title: Text('point counter',style:
        TextStyle(
            color: Colors.white,
            //fontWeight: FontWeight.bold,
            fontSize: 40,
            fontFamily: 'Pacifico')
          ,)
          ,)
        ,
        body: Center(
          child:Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(
                    width: 180,
                    child: Column(
                      //mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text('Team A', style:
                          TextStyle(fontSize: 33,fontWeight: FontWeight.bold),),
                        Text('$point_team_A', style: TextStyle(fontSize: 100,color: Colors.black),),
                        ElevatedButton(onPressed: (){
                          setState(() {
                            point_team_A++;
                          });}, child: Text('add 1 point ',style:
                        TextStyle(fontSize: 20,color: Colors.black),)),
                        SizedBox(height: 11,),
                        ElevatedButton(onPressed: (){
                          setState(() {
                            point_team_A+=2;
                          });}, child: Text('add 2 point ',style:
                        TextStyle(fontSize: 20,color: Colors.black),)),
                        SizedBox(height: 11,),
                        ElevatedButton(onPressed: (){
                          setState(() {
                            point_team_A+=3;
                          });}, child: Text('add 3 point ',style:
                        TextStyle(fontSize: 20,color: Colors.black),))
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 550,
                    child: VerticalDivider(
                      width: 20,
                      thickness: 1,
                      color: Colors.white,
                      endIndent: 50,
                      indent: 50,
                    ),
                  ),
                  SizedBox(
                    width: 180,
                    child: Column(

                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Text('Team B',style:
                        TextStyle(fontSize: 33,fontWeight: FontWeight.bold),),
                        Text('$point_team_B', style: TextStyle(fontSize: 100,color: Colors.black),),
                        ElevatedButton(onPressed: (){
                          setState(() {
                            point_team_B++;
                          });}, child: Text('add 1 point ',style:
                        TextStyle(fontSize: 20,color: Colors.black),)),
                        SizedBox(height: 11,),
                        ElevatedButton(onPressed: (){
                          setState(() {
                            point_team_B+=2;
                          });}, child: Text('add 2 point ',style:
                        TextStyle(fontSize: 20,color: Colors.black),)),
                        SizedBox(height: 11,),
                        ElevatedButton(onPressed: (){
                          setState(() {
                            point_team_B+=3;
                          });}, child: Text('add 3 point ',style:
                        TextStyle(fontSize: 20,color: Colors.black),)),
                      ],
                    ),
                  )
                ],
              ),
             Spacer(),

             ElevatedButton(onPressed: (){
               point_team_B=0;
             point_team_A=0;
             setState(() {

             });}, child: Text('rester',style:
             TextStyle(fontSize: 20,color: Colors.black),)),
              Spacer(flex: 10,)
            ],
          ),
        ),
      ),
    );
  }
}