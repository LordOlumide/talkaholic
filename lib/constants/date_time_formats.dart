import 'package:intl/intl.dart';

DateFormat expandedDateFormat = DateFormat.yMMMMd('en_US'); // e.g. August 20, 2022
DateFormat timeDateFormat = DateFormat.jm();      // e.g. 09:28 AM

DateFormat dayDateFormat = DateFormat.d();       // e.g. 7 (for the 7th day of the month)
DateFormat monthDateFormat = DateFormat.M();     // e.g. 5 (for May)
DateFormat yearDateFormat = DateFormat.y();      // e.g. 2022
