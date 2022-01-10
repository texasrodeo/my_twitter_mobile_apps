class Constants{
  static const String apiBaseUrl = 'https://my-twitter-server.herokuapp.com/api/';
//  static const String apiBaseUrl = 'http://192.168.3.3/api/';
  static const String postsImagesCollectionName = 'postsImages/';
//  static const String emailValidationRegexp = r"^[a-zA-Z0-9.!#$%&'*+/=?^_`{|}~-]+@[a-zA-Z0-9](?:[a-zA-Z0-9-]{0,253}[a-zA-Z0-9])?(?:\.[a-zA-Z0-9](?:[a-zA-Z0-9-]{0,253}[a-zA-Z0-9])?)*$";
  static const String emailValidationRegexp = r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+";


}

class FirebaseErrorCodes{
  static const String user_not_found = 'user-not-found';
  static const String wrong_password = 'wrong-password';
  static const String too_many_requests = 'too-many-requests';

}

class ErrorMessages{
  static const String user_not_found_message = 'Ошибка: пользователь не найден';
  static const String wrong_password_message = 'Ошибка: неверный пароль';
  static const String too_many_requests_message = 'Ошибка: слишком много запросов, попробуйте позже';
}
