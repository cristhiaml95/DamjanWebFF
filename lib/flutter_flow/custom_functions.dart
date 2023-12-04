import 'dart:convert';
import 'dart:math' as math;

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';
import 'package:timeago/timeago.dart' as timeago;
import 'lat_lng.dart';
import 'place.dart';
import 'uploaded_file.dart';
import '/backend/supabase/supabase.dart';
import '/auth/supabase_auth/auth_util.dart';

DateTime parsePostgresTimestamp(String timestamp) {
  List<DateFormat> formats = [
    DateFormat(
        "yyyy-MM-dd HH:mm:ss.SSSSSSz"), // timestamptz with microseconds and timezone
    DateFormat("yyyy-MM-dd HH:mm:ssz"), // timestamptz
    DateFormat("yyyy-MM-dd HH:mm:ss.SSSSSS"), // timestamp with microseconds
    DateFormat("yyyy-MM-dd HH:mm:ss"), // timestamp
    DateFormat("HH:mm:ss.SSSSSSz"), // timetz with microseconds
    DateFormat("HH:mm:ssz"), // timetz
    DateFormat("HH:mm:ss.SSSSSS"), // time with microseconds
    DateFormat("HH:mm:ss"), // time
    DateFormat("yyyy-MM-dd"), // date
  ];

  for (var format in formats) {
    try {
      return format.parse(timestamp, true).toLocal();
    } catch (e) {
      // Continue trying other formats
    }
  }

  // If none of the formats match, throw an error or handle accordingly
  print('Could not parse the date/time: $timestamp');
  throw FormatException('Invalid date/time format');
}
