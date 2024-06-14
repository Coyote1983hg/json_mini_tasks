import 'dart:convert';

import '../domain/btc_price.dart';

void main() {
  String json5 = """
{
  "time": "Jun 10, 2024 13:25:54 UTC",
  "chartName": "Bitcoin",
  "btcPricing": {
      "rate": "64,581.537",
      "symbol": "&euro;"
  }
}
""";

  // Erstelle eine Instanz der Klasse BtcPrice basierend auf dem JSON-String json5 (in Euro)
  Map<String, dynamic> jsonMap = jsonDecode(json5);

  Map<String, dynamic> btcPricingMap = jsonMap['btcPricing'];
  String currency = btcPricingMap['symbol'].replaceAll('&euro;', 'EUR');
  String price = btcPricingMap['rate'];

  BtcPrice btcPrice = BtcPrice(currency: currency, price: price);

  print(btcPrice);
}
