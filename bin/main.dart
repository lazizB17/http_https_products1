import 'package:http_https_products1/model/model_product1.dart';
import 'package:http_https_products1/service/service_product1.dart';

void main() async {
  String body = await Http.GET(Http.apiProduct, Http.headers);
  List<Product> product = Http.parseProduct(body);
  print(product);
}



