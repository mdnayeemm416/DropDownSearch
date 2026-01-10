enum Environment { local, prod }

class EnvConfig {
  /* Environment local/live */
  static const Environment env = Environment.local;

  /*Api Urls*/
  static const String baseUrl = env == Environment.prod ? baseUrlProd : baseUrlLocal;
  static const String baseUrlLocal = "http://192.168.100.198:8000/hr_service_rs/";
  static const String baseUrlProd = "http://3.101.133.51:8800/";

  /*Auth Urls*/
  static const String baseAuthUrl = env == Environment.prod ? baseAuthUrlProd : baseAuthUrlLocal;
  static const String baseAuthUrlLocal = "http://192.168.100.198:8000/user_service_as/";
  static const String baseAuthUrlProd = "http://3.101.133.51:8800/";

  /*Cam Record Urls*/
  // static const String baseCamUrl = env == Environment.prod ? baseCamUrlProd : baseCamUrlLocal;
  // static const String baseCamUrlLocal = "rtsp://admin:admin123@192.168.100.47:554";
  // static const String baseCamUrlProd = "rtsp://admin:admin123@192.168.100.47:554";

  /*Websocket Urls*/
  static const String baseWSUrl = env == Environment.prod ? baseWSUrlProd : baseWSUrlLocal;
  static const String baseWSUrlLocal = "ws://192.168.100.29:8800/setup-ws/ws";
  static const String baseWSUrlProd = "ws://3.101.133.51:8800/setup-ws/ws";
}
