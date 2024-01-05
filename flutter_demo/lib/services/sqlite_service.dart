import 'package:flutter_demo/model/user.dart';
import 'package:sqflite/sqflite.dart';
import 'package:path/path.dart';

Future<Database> initializeDB() async {
  String path = await getDatabasesPath();

  return openDatabase(
    join(path, 'database.db'),
    onCreate: (database, version) async {
      await database.execute(
        "CREATE TABLE User(id INTEGER PRIMARY KEY, name TEXT NOT NULL, accessToken TEXT, password TEXT)",
      );
    },
    version: 1,
  );
}

class SqliteService {
  static final Future<Database> database = initializeDB();

  Future<void> insertUser(User user) async {
    // Get a reference to the database.
    final db = await database;

    await db.insert(
      'user',
      user.toMap(),
      conflictAlgorithm: ConflictAlgorithm.replace,
    );
  }

  Future<User?> getUserName() async {
    // Get a reference to the database.
    final db = await database;

    // Query the table for all The Dogs.
    final List<Map<String, dynamic>> maps =
        await db.query('user', where: 'id = ?', whereArgs: ['0']);

    // Convert the List<Map<String, dynamic> into a List<Dog>.
    if (maps.isNotEmpty == true) {
      return User.fromMap(maps.first);
    }
    return null;
  }
}
