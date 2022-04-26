import 'package:http_https_products1/model/model_product1.dart';
import 'package:http_https_products1/service/service_product1.dart';


void main() async {
  String body = await Network.GET(Network.apiProduct, Network.headers);
  Product product = Network.parseProduct(body);
  print(product);
}



