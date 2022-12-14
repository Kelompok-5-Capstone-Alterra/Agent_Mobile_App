/// class ini berisikan kumpulan url yang digunakan API
class ApiUrl {
  // static String proBaseUrl =
  //     'https://virtserver.swaggerhub.com/GERYSASTRAWAN123/DIGO/1.0.0/';
  static String proBaseUrl = 'https://goapi.kuroyamii.works/';
  // Auth area
  static String signUp = 'auth/signup';
  static String signIn = 'auth/signin';
  static String verificationCode = 'auth/otp/validate';
  static String refreshToken = 'auth/token/refresh';
  static String resendPin = 'auth/otp/resend';
  static String forgotPassword = 'auth/forgot-password';
  static String newPassword = 'auth/new-password';

  // Account area
  static String accountProfile = 'users';
  static String changePassword = 'users/change-password';
  static String updateProfile = 'users';

  //redeems
  static String rewards = 'rewards';

  //redeems
  static String redeems = 'redeems';

  //FAQ
  static String faqs = 'faqs';
  //product
  static String products = 'products';

  //peyment
  static String credit = 'payment/pay/credit';
  static String dana = 'payment/pay/dana';
  static String ovo = 'payment/pay/ovo';
  static String shopeePay = 'payment/pay/shopeepay';

  // transaction
  static String transaction = '/transactions';
}
