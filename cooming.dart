import 'package:flutter/material.dart';
import 'package:timecapsule/models/home.dart';
class cooming extends StatelessWidget {
  const cooming({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: {
        "alex":(context)=>  const home(),
      },
      // initialRoute: "museum",
      debugShowCheckedModeBanner: false,

      home:Builder(
        builder: (context)
    {
      return Scaffold(
        appBar: AppBar(
          flexibleSpace:
          Image.asset('image/backgroung2.jpg', fit: BoxFit.cover),
          toolbarHeight: 100,
          title: SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  padding: const EdgeInsets.all(10),
                  decoration: BoxDecoration(
                    color: const Color(0xffDDCC8C),
                    borderRadius: BorderRadius.circular(20.0),
                  ),
            child: GestureDetector(
              onTap: (){
                Navigator.pushNamed(context, "alex");
              },
                  child: const Text(
                    'Alexandria',
                    style: TextStyle(
                      color: Color(0xff69482E),
                      fontSize: 17,
                      fontWeight: FontWeight.normal,
                    ),
                  ),
                ),),
                const SizedBox(width: 10),
                Container(
                  padding: const EdgeInsets.all(10),
                  decoration: BoxDecoration(
                    color: const Color(0xff69482E),
                    borderRadius: BorderRadius.circular(18.0),
                  ),
                  child: GestureDetector(
                    onTap: (){

                    },
                  child: const Text(
                    'Cairo',
                    style: TextStyle(
                      color: Color(0xffDDCC8C),
                      fontSize: 17,
                      fontWeight: FontWeight.normal,
                    ),
                  ),
                ),),
                const SizedBox(width: 10),
                Container(
                  padding: const EdgeInsets.all(10),
                  decoration: BoxDecoration(
                    color: const Color(0xffDDCC8C),
                    borderRadius: BorderRadius.circular(20.0),
                  ),
                  child: GestureDetector(
                    onTap: (){

                    },
                  child: const Text(
                    'Luxor',
                    style: TextStyle(
                      color: Color(0xff69482E),
                      fontSize: 17,
                      fontWeight: FontWeight.normal,
                    ),
                  ),
                ),),
                const SizedBox(width: 10),
                Container(
                  padding: const EdgeInsets.all(10),
                  decoration: BoxDecoration(
                    color: const Color(0xffDDCC8C),
                    borderRadius: BorderRadius.circular(20.0),
                  ),
                  child: GestureDetector(
                    onTap: (){

                    },
                  child: const Text(
                    'Aswan',
                    style: TextStyle(
                      color: Color(0xff69482E),
                      fontSize: 17,
                      fontWeight: FontWeight.normal,
                    ),
                  ),
                ),),
                const SizedBox(width: 10),
                Container(
                  padding: const EdgeInsets.all(10),
                  decoration: BoxDecoration(
                    color: const Color(0xffDDCC8C),
                    borderRadius: BorderRadius.circular(20.0),
                  ),
                  child: GestureDetector(
                    onTap: (){

                    },
                  child: const Text(
                    'Matrouh',
                    style: TextStyle(
                      color: Color(0xff69482E),
                      fontSize: 17,
                      fontWeight: FontWeight.normal,
                    ),
                  ),
                ),),
                const SizedBox(width: 10),
                Container(
                  padding: const EdgeInsets.all(10),
                  decoration: BoxDecoration(
                    color: const Color(0xffDDCC8C),
                    borderRadius: BorderRadius.circular(20.0),
                  ),
                  child: GestureDetector(
                    onTap: (){

                    },
                  child: const Text(
                    'Sinai',
                    style: TextStyle(
                      color: Color(0xff69482E),
                      fontSize: 17,
                      fontWeight: FontWeight.normal,
                    ),
                  ),
                ),)

                //  SizedBox(height: 20),
              ],
            ),
          ),
        ),

        body: Container(
          decoration: const BoxDecoration(
            image: DecorationImage(
              image: AssetImage("image/backgroung2.jpg"),
              fit: BoxFit.cover,
            ),
          ),
          // ignore: prefer_const_constructors
          width: double.infinity,
          height: double.infinity,

          child: const Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('Cooming Soon....',
                style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold,
                    color: Color(0xffDDCC8C)
                ),)
            ],
          ),

        ),
      );

  }
      ),
    );
  }
}
