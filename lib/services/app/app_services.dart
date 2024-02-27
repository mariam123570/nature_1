import 'package:nature/services/cloud_storage/cloud_connection.dart';
import 'package:nature/services/local_storage/local_database.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:nature/firebase_options.dart';

class ApplicationServices {
  ApplicationServices._privateConstructor();

  static final ApplicationServices _instance =
      ApplicationServices._privateConstructor();

  static ApplicationServices get instance => _instance;

  Future<void> launch() async {
    await Firebase.initializeApp(
      options: DefaultFirebaseOptions.currentPlatform,
    );
    print("Firebase Connected ✅✅✅✅✅✅✅✅✅✅");
    // await CloudConnection.instance.initConnection();
    await LocalDatabase.instance.initDatabase();
    print("Local Database Connected ✅✅✅✅✅✅✅✅✅✅");
  }
}
