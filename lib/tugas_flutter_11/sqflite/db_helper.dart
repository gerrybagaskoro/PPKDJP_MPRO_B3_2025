// import 'package:path_provider/path_provider.dart';
import 'package:path/path.dart';
import 'package:ppkdjp_mpro_b3_2025/tugas_flutter_11/model/olahraga.dart';
import 'package:ppkdjp_mpro_b3_2025/tugas_flutter_11/model/user.dart';
import 'package:sqflite/sqflite.dart';

class DbHelper {
  static Future<Database> databaseHelper() async {
    final dbPath = await getDatabasesPath();
    return openDatabase(
      join(dbPath, 'login.db'),
      onCreate: (db, version) {
        return db.execute(
          // 'CREATE TABLE users(id INTEGER PRIMARY KEY, email TEXT, password TEXT, name TEXT)',
          'CREATE TABLE users(id INTEGER PRIMARY KEY, email TEXT, password TEXT)',
        );
      },
      version: 1,
    );
  }

  static Future<void> registerUser(User user) async {
    final db = await databaseHelper();
    await db.insert(
      'users',
      user.toMap(),
      conflictAlgorithm: ConflictAlgorithm.replace,
    );
  }

  static Future<User?> loginUser(String email, String password) async {
    final db = await databaseHelper();
    final List<Map<String, dynamic>> results = await db.query(
      'users',
      where: 'email = ? AND password = ?',
      whereArgs: [email, password],
    );

    if (results.isNotEmpty) {
      return User.fromMap(results.first);
    }
    return null;
  }

  static Future<List<User>> getAllUsers() async {
    final db = await databaseHelper();
    final List<Map<String, dynamic>> results = await db.query('users');
    return results.map((e) => User.fromMap(e)).toList();
  }

  static Future<void> insertOlahraga(Olahraga olahraga) async {
    final db = await databaseHelper();
    await db.insert(
      'Olahraga',
      olahraga.toMap(),
      conflictAlgorithm: ConflictAlgorithm.replace,
    );
  }

  static Future<List<Olahraga>> getAllOlahraga() async {
    final db = await databaseHelper();
    final List<Map<String, dynamic>> results = await db.query('Olahraga');
    return results.map((e) => Olahraga.fromMap(e)).toList();
  }

  static Future<void> deleteOlahraga(int id) async {
    final db = await databaseHelper();
    await db.delete('Olahraga', where: 'id = ?', whereArgs: [id]);
  }
}
