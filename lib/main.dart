import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_calendar/calendar.dart';

void main() {
  return runApp(WeekDaysCalendar());
}

class WeekDaysCalendar extends StatefulWidget {
  @override
  ParticularWeekState createState() => ParticularWeekState();
}

class ParticularWeekState extends State<WeekDaysCalendar> {
  DateTime _minDate, _maxDate, _firstDate, _lastDate;
  CalendarController _controller;

  @override
  void initState() {
    // TODO: implement initState
    _controller = CalendarController();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
          appBar: AppBar(
            actions: [
              FlatButton(
                onPressed: () {
                  setState(() {
                    _controller.view = CalendarView.day;
                    _minDate = _firstDate;
                    _maxDate = _lastDate;
                  });
                },
                child: Text("Day"),
              ),
              FlatButton(padding: const EdgeInsets.only(left: 10),
                onPressed: () {
                  setState(() {
                    _controller.view = CalendarView.week;
                    _minDate = DateTime(01, 01, 01, 01, 0, 0);
                    _maxDate = DateTime(9999, 12, 31, 01, 0, 0);
                  });
                },
                child: Text("Week"),
              ),
            ],
          ),
          body: SafeArea(
            child: SfCalendar(
              view: CalendarView.week,
              controller: _controller,
              minDate: _minDate,
              maxDate: _maxDate,
              onViewChanged: viewChanged,
            ),
          )),
    );
  }

  void viewChanged(ViewChangedDetails viewChangedDetails) {
    if (_controller.view == CalendarView.week) {
      _firstDate = viewChangedDetails.visibleDates[0];
      _lastDate = viewChangedDetails
          .visibleDates[viewChangedDetails.visibleDates.length - 1];
    }
  }
}

