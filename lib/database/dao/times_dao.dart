import 'package:sqflite/sqflite.dart';
import 'package:times/database/app_database.dart';
import 'package:times/models/track.dart';

const String _table = 'tracks';
const String _id = 'id';
const String _date = 'date';
const String _duration = 'duration';

class TrackDao {
  static const String createTableSql = 'CREATE TABLE $_table ('
      '$_id INTEGER PRIMARY KEY, '
      '$_date LONG, '
      '$_duration LONG';

  Future<int> save(Track track) async {
    final Database database = await getDatabase();
    return _toMap(track, database);
  }

  Future<List<Track>>? findAll() async {
    final Database database = await getDatabase();
    final List<Map<String, dynamic>> result = await database.query(_table);
    return _toList(result);
  }
}

List<Track> _toList(List<Map<String, dynamic>> result) {
  final List<Track> tracks = [];

  for (Map<String, dynamic> row in result) {
    final Track track = Track(
      id: row[_id], date: row[_date], duration: row[_duration],
    );

    tracks.add(track);
  }

  return tracks;
}

Future<int> _toMap(Track track, Database database) {
  final Map<String, dynamic> trackMap = Map();
  trackMap[_date] = track.date;
  trackMap[_duration] = track.duration;

  return database.insert(_table, trackMap);
}