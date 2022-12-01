# How to show a particular week in a day view of Flutter Calendar?

A quick-start example to show a particular week in a day view of Flutter Calendar.

You can display a specific week in day view in the Flutter Event Calendar by using the calendar's [minDate](https://pub.dev/documentation/syncfusion_flutter_calendar/latest/calendar/SfCalendar/minDate.html) and [maxDate](https://pub.dev/documentation/syncfusion_flutter_calendar/latest/calendar/SfCalendar/maxDate.html) properties. 

The minDate restricts date navigation features backward, and touch gestures cannot be used to swipe the control beyond the min date range. The maxDate will restrict date navigation features forward, and you will be unable to swipe the control with a touch gesture beyond the maximum date range.

Using the [onViewChanged](https://pub.dev/documentation/syncfusion_flutter_calendar/latest/calendar/SfCalendar/onViewChanged.html) callback of the Flutter calendar you can get the first and last dates of the visible dates. Then assign the first and last dates as minDate and maxDate of the Calendar.

You can also refer our UG documentation to know more about [DateRestriction](https://help.syncfusion.com/flutter/calendar/date-navigations#range-for-visible-dates)

## Requirements to run the demo
* [VS Code](https://code.visualstudio.com/download)
* [Flutter SDK v1.22+](https://flutter.dev/docs/development/tools/sdk/overview)
* [For more development tools](https://flutter.dev/docs/development/tools/devtools/overview)

## How to run this application
To run this application, you need to first clone or download the ‘create a flutter maps widget in 10 minutes’ repository and open it in your preferred IDE. Then, build and run your project to view the output.

## Further help
For more help, check the [Syncfusion Flutter documentation](https://help.syncfusion.com/flutter/introduction/overview),
 [Flutter documentation](https://flutter.dev/docs/get-started/install).