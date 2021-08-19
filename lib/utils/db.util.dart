import 'package:sqflite/sqflite.dart ' as sql;
import 'package:path/path.dart' as path;

class DbUtil  {
  static Future<sql.Database> database() async{
    final dbPath = await sql.getDatabasesPath();
    return sql.openDatabase(
        path.join(dbPath, 'client.db'),
        onCreate: (db, version){
          _create(db);
        },
        version: 1
    );
  }

  static void _create(sql.Database db){
    db.execute("""
    CREATE TABLE client   (id INTEGER PRIMARY KEY AUTOINCREMENT,
     name   VARCHAR(50), email TEXT, gender TEXT , CPF DOUBLE)
    """);
  }
  static Future<void> insertData(String table, Map<String, Object> dados ) async{
    final db = await database();
    await db.insert(table, dados,
        conflictAlgorithm: sql.ConflictAlgorithm.replace);
  }

  static Future<List<Map<String, dynamic>>> getData(String table,) async{
    final db = await database();
    return db.query(table);
  }
}



