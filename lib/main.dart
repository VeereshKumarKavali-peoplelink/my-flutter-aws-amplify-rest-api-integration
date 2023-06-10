import 'package:amplify_api/amplify_api.dart';
import 'package:amplify_auth_cognito/amplify_auth_cognito.dart';
import 'package:amplify_flutter/amplify_flutter.dart';
import 'package:flutter/material.dart';
import 'package:my_flutter_aws_amplify_rest_api_integration/amplifyconfiguration.dart';


void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await configureAmplify();
  runApp(const MyApp());
}


Future<void> configureAmplify() async{
  try{
    final auth = AmplifyAuthCognito();
    final api = AmplifyAPI();
    await Amplify.addPlugins([auth, api]);
    await Amplify.configure(amplifyconfig);
    safePrint('Successfully configured');
  } on Exception catch (e) {
      safePrint('Error configuring Amplify: $e');
  }

}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.green,
        //colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        //useMaterial3: true,
      ),
      home: Scaffold(
        appBar: AppBar(title:  const Text("Fake Store API Example"), centerTitle: true,),
        body: Center(
          child: ElevatedButton(onPressed: (){fetchData();}, child: const Text("Fetch Data"))
        )
      ),
    );
  }




  void fetchData() async {
    try {
       // Make a GET request to the specified URL
      final restOperation = Amplify.API.get(apiName: "invcUserGateway",  '/listuser');    //https://fakestoreapi.com/products
      final response = await restOperation.response;
       print('GET call succeeded: ${response.decodeBody()}');
      //return response.body;
    }on ApiException catch (e) {
      print('GET call failed: ${e.message}');
      //return e;
    }
  }
  

}
