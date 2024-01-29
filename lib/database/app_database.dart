import 'package:path/path.dart';
import 'package:sqflite/sqflite.dart';
import 'package:times/database/dao/times_dao.dart';

Future<Database> getDatabase() async {
  final String path = join(await getDatabasesPath(), 'times');
  return openDatabase(path, onCreate: (db, version) {
    db.execute(TrackDao.createTableSql);
  }, version: 1);
}
