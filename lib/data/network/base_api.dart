abstract class BaseApi {
  Future<dynamic> postApi(String url, var data);

  Future<dynamic> getApi(String url);
}
