import 'package:flutter/material.dart';


class LoginPage extends StatefulWidget {
	LoginPage({Key? key}) : super(key: key);

	@override
	_LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
	TextStyle style = TextStyle(fontFamily: 'Montserrat', fontSize: 20.0);
     
	
    final usernameInput = TextEditingController();
    final passwordInput = TextEditingController();

    @override
    getInputs()
    {
    	print(usernameInput.text == "hi" ? 1 : 0);
    	print(passwordInput.text);
    }

	@override
	Widget build(BuildContext context) {

	double screenWidth = MediaQuery.of(context).size.width;
	double screenHeight = MediaQuery.of(context).size.height;
    
	
	final usernameField = TextField(
		obscureText: false,
		controller:usernameInput,
		style: style,
		decoration: InputDecoration(
			contentPadding: EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
			hintText: "Username",
			border:
			OutlineInputBorder(borderRadius: BorderRadius.circular(32.0))
		),
	);

	final passwordField = TextField(
	obscureText: true,
		style: style,
		controller:passwordInput,
		decoration: InputDecoration(
			contentPadding: EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
			hintText: "Password",
			border:
			OutlineInputBorder(borderRadius: BorderRadius.circular(32.0))
		),
	);

	final loginButton = Material(
		elevation: 5.0,
		borderRadius: BorderRadius.circular(30.0),
		color: Colors.grey[700],
		child: MaterialButton(
		minWidth: screenWidth/2,
		onPressed: getInputs(),
		child: Text("Login",
			textAlign: TextAlign.center,
			style: style.copyWith(
				color: Colors.white, fontWeight: FontWeight.bold)
			),
		),
	);

	return Scaffold(
		appBar: AppBar(
			title:Text("chikitsak", style:TextStyle(fontFamily: "Samarkan", fontSize: 48)),
			centerTitle:true,
			),
		body: Center(
			child: Container(
				color: Colors.white,
				child: SingleChildScrollView(
					child:Padding(
                		padding: const EdgeInsets.all(36.0),
                		child:Column(
							crossAxisAlignment: CrossAxisAlignment.center,
							mainAxisAlignment: MainAxisAlignment.center,
							children: <Widget>[
								Text("Log In", style: TextStyle(fontSize: 56, fontFamily:"Dandelion")),
								
								SizedBox(
									height: 120.0,
									child: Image.asset(
										"img/logo.png",
										fit: BoxFit.contain,
									),
								),

								SizedBox(
									height: 25.0
								),
								usernameField,
								
								SizedBox(
									height: 25.0
								),
								passwordField,
								
								SizedBox(
									height: 40.0,
								),
								loginButton,
								SizedBox(height:(screenHeight - 585) ),
							],
						),
                	),
				),
			),
		),
	);
	}
}
