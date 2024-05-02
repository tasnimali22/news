import 'package:flutter/material.dart';

import '../screens/business.dart';
import '../screens/entertainment.dart';
import '../screens/general.dart';
import '../screens/health.dart';
import '../screens/science.dart';
import '../screens/sport.dart';
import '../screens/technology.dart';

 List <Widget>tabs= [
Tab(text: 'business',),
Tab(text: 'entertainment',),
Tab(text: 'general',),
Tab(text: 'health',),
Tab(text: 'science',),
Tab(text: 'sports',),
Tab(text: 'technology',),
];
 List <Widget>tabview=[
Business(),
Entertainment(),
General(),
Health(),
Science(),
Sport(),
Technology(),
];
