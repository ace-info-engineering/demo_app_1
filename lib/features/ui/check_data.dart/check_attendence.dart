import 'package:attendence_ace/features/ui/check_data.dart/view_attendence.dart';
import 'package:flutter/material.dart';
import 'package:table_calendar/table_calendar.dart';
import 'package:intl/intl.dart';

class CheckAttendance extends StatefulWidget {
  const CheckAttendance({super.key});

  @override
  State<CheckAttendance> createState() => _CheckAttendanceState();
}

class _CheckAttendanceState extends State<CheckAttendance> {
  late DateTime _focusedDay;
  late DateTime _firstDay;
  late DateTime _lastDay;
  late TextEditingController _dateController;

  @override
  void initState() {
    super.initState();
    _focusedDay = DateTime.now();
    _firstDay = DateTime(_focusedDay.year, 1, 1);
    _lastDay = DateTime(_focusedDay.year + 1, 12, 31);
    _dateController = TextEditingController();
  }

  @override
  void dispose() {
    _dateController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Check Attendance'),
        actions: [
          IconButton(
            onPressed: () {
            },
            icon: Icon(Icons.bookmark),
          ),
          IconButton(
            onPressed: () {
              // Menu action
            },
            icon: Icon(Icons.menu),
          ),
        ],
        backgroundColor: Colors.blueAccent,
      ),
      body: Column(
        children: [
          SizedBox(height: 30),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0),
            child: TextField(
              controller: _dateController,
              decoration: InputDecoration(
                labelText: 'Select Date',
                hintText: 'dd/mm/yyyy',
                border: OutlineInputBorder(),
              ),
              readOnly: true, 
              onTap: () {

              },
            ),
          ),
          SizedBox(height: 30),
          TableCalendar(
            focusedDay: _focusedDay,
            firstDay: _firstDay,
            lastDay: _lastDay,
            calendarFormat: CalendarFormat.month,
            onDaySelected: (selectedDay, focusedDay) {
              setState(() {
                _focusedDay = focusedDay;

                _dateController.text = DateFormat('dd/MM/yyyy').format(selectedDay);
              });
            },
          ),
          SizedBox(height: 50),
          Container(
            width: 135,
            child: Row(
              children: [
                ElevatedButton(onPressed: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context)=> ViewAttendence()));
                },
                 child: Text(
                  "Submit",
                  style: TextStyle(
                    fontSize: 25,
                    color: Colors.black,
                  ),
                 ),
                 style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.blueAccent,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  )
                 )
                 )
              ],
            ),
          )
        ],
      ),
    );
  }
}
