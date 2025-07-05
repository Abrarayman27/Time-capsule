import 'package:flutter/material.dart';
import 'package:table_calendar/table_calendar.dart';
import 'package:timecapsule/models/home.dart';

class calendar extends StatefulWidget {
  const calendar({super.key});

  @override
  State<calendar> createState() => _calendarState();
}

class _calendarState extends State<calendar> {
  DateTime startDate = DateTime.now();
  DateTime? endDate;

  DateTime today = DateTime.now();
  void _onDaySelected(DateTime day, DateTime foucedDay) {
    setState(() {
      today = day;
    });
  }

  @override
  Widget build(BuildContext context) {

    return MaterialApp(
      routes: {
        "home":(context) => const home(),
      },
            debugShowCheckedModeBanner: false,

      home: Builder(
        builder: (context) {
          return Scaffold(
            appBar: AppBar(
              flexibleSpace:
                  Image.asset('image/backgroung2.jpg', fit: BoxFit.cover),
              toolbarHeight: 100,
              title: const Text(
                'Choose Period Of Time',
                style: TextStyle(
                    color: Color(0XffEFDC96),
                    fontSize: 25,
                    fontWeight: FontWeight.bold),
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
                child: Column(
                  children: [
                    Positioned(
                      left: 0,
                      right: 10,
                      top: 20,
                      child: Container(
                        decoration: BoxDecoration(
                          color: const Color(0xffDDCC8C),
                          borderRadius: BorderRadius.circular(30),
                        ),
                        child: Column(
                          children: [
          
                            Container(
                              child: TableCalendar(
                                firstDay: DateTime.utc(2010, 10, 20),
                                lastDay: DateTime.utc(2024, 10, 20),
                                focusedDay: today,
                                locale: 'en_Us',
                                rowHeight: 43,
                                headerStyle: const HeaderStyle(
                                    formatButtonVisible: false,
                                    titleCentered: true),
                                availableGestures: AvailableGestures.all,
                                selectedDayPredicate: (day) =>
                                    isSameDay(day, today),
                                onDaySelected: _onDaySelected,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    const SizedBox(height: 30),
          
                    ElevatedButton(
                        onPressed: () async {
                          DateTime? pickedDate = await showDatePicker(
                            context: context,
                            initialDate: startDate,
                            firstDate: DateTime(1950),
                            lastDate: DateTime(2150),
                          );
          
                          setState(() {
                            startDate = pickedDate!;
                          });
                                                },
                      style: ElevatedButton.styleFrom(
                        backgroundColor: const Color(0xffDDCC8C),
          
          
                      ),
                      child: const Text(' Start Date',
                          style: TextStyle(color: Color(0xff69482E),
                          )),
          
                    ),
          
                    const SizedBox(height: 15),
          
                    ElevatedButton(
                      onPressed: () async {
                              DateTime? pickedDate = await showDatePicker(
                              context: context,
                              initialDate: startDate,
                              firstDate: startDate,
                              lastDate: DateTime(2150),
                              );
          
                            setState(() {
                            endDate = pickedDate;
                            });
                                                          },
                         style: ElevatedButton.styleFrom(
                           backgroundColor: const Color(0xffDDCC8C),
          
                         ),
          
                      child: const Text(' End Date',
                        style: TextStyle(color: Color(0xff69482E),
                        )),
                    ),
                    const SizedBox(height: 15),
                    ElevatedButton(onPressed: (){},
                      style: ElevatedButton.styleFrom(
                        backgroundColor: const Color(0xff69482E),
          
                      ), child:
                    const Text('You will Visit 3 Meseums per day',
                        style: TextStyle(color: Color(0xffDDCC8C),
                        )),
                    ),
                    const SizedBox(height: 15),
                    ElevatedButton(onPressed: (){
                      Navigator.pushNamed(context, "home");
                    },
                      style: ElevatedButton.styleFrom(
                        backgroundColor: const Color(0xff69482E),
          
                      ), child:
                    const Text('Skip',
                        style: TextStyle(color: Color(0xffDDCC8C),
                        )),
                    ),
          
          
          
          
                    // TextField(
                    //   cursorColor: Colors.black,
                    //   style: TextStyle(color: Color(0xff69482E)),
                    //   decoration: InputDecoration(
                    //     border: OutlineInputBorder(
                    //       borderSide:
                    //           BorderSide(width: 2, color: Color(0xff69482E)),
                    //       borderRadius: BorderRadius.circular(50),
                    //     ),
                    //     contentPadding: EdgeInsetsDirectional.only(start: 15),
                    //     hintText: 'start',
                    //     filled: true,
                    //     fillColor: Color(0xffDDCC8C),
                    //   ),
                    // ),
                    // SizedBox(height: 20),
                    // TextField(
                    //   cursorColor: Colors.black,
                    //   style: TextStyle(color: Color(0xff69482E)),
                    //   decoration: InputDecoration(
                    //     border: OutlineInputBorder(
                    //       borderSide:
                    //           BorderSide(width: 2, color: Color(0xff69482E)),
                    //       borderRadius: BorderRadius.circular(50),
                    //     ),
                    //     contentPadding: EdgeInsetsDirectional.only(start: 15),
                    //     hintText: 'end',
                    //     filled: true,
                    //     fillColor: Color(0xffDDCC8C),
                    //   ),
                    // ),
                    // SizedBox(height: 20),
                    // TextField(
                    //   cursorColor: Colors.black,
                    //   style: TextStyle(color: Color(0xff69482E)),
                    //   decoration: InputDecoration(
                    //     border: OutlineInputBorder(
                    //       borderSide:
                    //           BorderSide(width: 2, color: Color(0xffDDCC8C)),
                    //       borderRadius: BorderRadius.circular(50),
                    //     ),
                    //     contentPadding: EdgeInsetsDirectional.only(start: 50),
                    //     hintText: 'You will Visit 3 Meseums per day',
                    //     filled: true,
                    //     fillColor: Color(0xff69482E),
                    //   ),
                    // ),
                    // SizedBox(height: 30),
                    // Text(
                    //   'Click Here To See You Wish List',
                    //   style: TextStyle(color: Color(0xffDDCC8C), fontSize: 16),
                    // ),
                    ],
                )),
          );
        }
      ),
    );
  }

}
