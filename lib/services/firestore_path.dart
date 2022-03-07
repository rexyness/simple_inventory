///Utility class containing all the paths for the database collections
///and objects , use with .path() from firestore without .collection()

class FirestorePath {
  static String user(String uid) => 'users/$uid';
  static String users() => 'users';
  static String jobs(String uid) => 'users/$uid/jobs';
  static String entry(String uid, String entryId) =>
      'users/$uid/entries/$entryId';
  static String entries(String uid) => 'users/$uid/entries';
}
