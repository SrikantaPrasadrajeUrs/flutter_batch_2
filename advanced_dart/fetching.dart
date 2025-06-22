// import 'package:http/http.dart' as http;
//
// void main() async {
//   await fetchCountryNames();
// }
//
// Future<void> fetchCountryNames() async {
//   final xmlBody = '''
// <?xml version="1.0" encoding="utf-8"?>
// <soap:Envelope xmlns:soap="http://schemas.xmlsoap.org/soap/envelope/"
//                xmlns:tem="https://soap-service-free.mock.beeceptor.com/CountryInfoService">
//   <soap:Body>
//     <tem:ListOfCountryNamesByName/>
//   </soap:Body>
// </soap:Envelope>
// ''';
//
//   final response = await http.post(
//     Uri.parse("https://soap-service-free.mock.beeceptor.com/CountryInfoService.wso"),
//     headers: {
//       "Content-Type": "text/xml; charset=utf-8",
//       "SOAPAction":
//           "https://soap-service-free.mock.beeceptor.com/CountryInfoService.wso/ListOfCountryNamesByName",
//     },
//     body: xmlBody,
//   );
//
//   print("Response Status: ${response.statusCode}");
//   print("SOAP Response:\n${response.body}");
// }
