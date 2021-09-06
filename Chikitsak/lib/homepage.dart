import 'package:flutter/material.dart';

// HomePage of the app
class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      initialIndex: 2,
      length: 5,
      child: Scaffold(
          bottomNavigationBar: Container(
            color: Colors.black,
            child: TabBar(
            
              labelColor: Colors.white,
              unselectedLabelColor: Colors.grey[700],
              indicatorSize: TabBarIndicatorSize.tab,
              indicatorPadding: EdgeInsets.all(5.0),
              indicatorColor: Colors.blue,
              tabs: <Widget>[
                Tab(
                  text: "Available",
                  icon: Icon(Icons.pageview_outlined),
                ),  
                Tab(
                  text: "Documents",
                  icon: Icon(Icons.document_scanner_outlined ),
                ),
                Tab(
                  text: "Activity",
                  icon: Icon(Icons.local_activity_outlined ),
                ),
                Tab(
                  text: "Help",
                  icon: Icon(Icons.help_outline_rounded),
                ),
                Tab(
                  text: "Settings",
                  icon: Icon(Icons.settings_applications_outlined ),
                ),
              ],
            ),
          ),
        body:TabBarView(
        children:<Widget>[
          Scaffold(
            appBar: AppBar(
              title:TextField(
                  style: TextStyle( color: Colors.white ),
                  decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  hintText: 'Enter a hospital',
                  hintStyle: TextStyle(color: Colors.grey),
                  ),
                ),
              ),
              body:ListView(
                children:<Widget>[
                    Container(
                      height: 125,
                      color:Colors.grey,
                      child: const Center(child: Text('1) Fortis La Femme, Greater Kailash – New Delhi.', style: TextStyle(fontSize: 24, fontFamily: "Montserrat"))),
                    ),
                    Container(
                      height: 125,
                      color:Colors.grey[400],
                      child: const Center(child: Text('2) Fortis Escorts Heart Institute (FEHI) – New Delhi.', style: TextStyle(fontSize: 24, fontFamily: "Montserrat"))),
                    ),
                    Container(
                      height: 125,
                      color:Colors.grey,
                      child: const Center(child: Text('3) Rockland Hospital – New Delhi.', style: TextStyle(fontSize: 24, fontFamily: "Montserrat"))),
                    ),
                    Container(
                      height: 125,
                      color:Colors.grey[400],
                      child: const Center(child: Text('4) BLK Super Specialty Hospital – New Delhi.', style: TextStyle(fontSize: 24, fontFamily: "Montserrat"))),
                    ),
                    Container(
                      height: 125,
                      color:Colors.grey[400],
                      child: const Center(child: Text('5) Primus Super Specialty Hospital – New Delhi.', style: TextStyle(fontSize: 24, fontFamily: "Montserrat"))),
                    ),
                    Container(
                      height: 125,
                      color:Colors.grey[400],
                      child: const Center(child: Text('6) Columbia Asia Referral Hospital – Yeshwanthpur.', style: TextStyle(fontSize: 24, fontFamily: "Montserrat"))),
                    ),
                ],
              ),
            ),
          Scaffold(
            appBar: AppBar(
              title:Text("Documents", style:TextStyle(fontFamily : "Samarkan", fontSize: 36)),
              centerTitle: true,
              ),
              body:ListView(
                children: <Widget>[
                  Container(
                    height: 125,
                    color:Colors.grey[400],
                    child: const Center(child: Text('Upload Documents', style: TextStyle(fontSize: 24, fontFamily: "Montserrat"))),
                  ),
                  Container(
                    height: 125,
                    color:Colors.grey,
                    child: const Center(child: Text('View Documents', style: TextStyle(fontSize: 24, fontFamily: "Montserrat"))),
                  ),
                ],
              ),
            ),
            Scaffold(
            appBar: AppBar(
              title:Text("chikitsak", style:TextStyle(fontFamily : "Samarkan", fontSize: 36)),
              centerTitle: true,
              ),

              body:ListView(
                children:<Widget>[
                    Container(
                      height: 125,
                      color:Colors.grey,
                      child: const Center(child: Text('Knee Replacement', style: TextStyle(fontSize: 24, fontFamily: "Montserrat"))),
                    ),
                    Container(
                      height: 125,
                      color:Colors.grey[400],
                      child: const Center(child: Text('Kidney Replacement', style: TextStyle(fontSize: 24, fontFamily: "Montserrat"))),
                    ),
                    Container(
                      height: 125,
                      color:Colors.grey,
                      child: const Center(child: Text('Heart Replacement', style: TextStyle(fontSize: 24, fontFamily: "Montserrat"))),
                    ),
                    Container(
                      height: 125,
                      color:Colors.grey[400],
                      child: const Center(child: Text('Liver Replacement', style: TextStyle(fontSize: 24, fontFamily: "Montserrat"))),
                    ),
                ],
              ),
            ),
            Scaffold(
            appBar: AppBar(
              title:Text("Help", style:TextStyle(fontFamily : "Samarkan", fontSize: 36)),
              centerTitle: true,
              ),
              body:Container(
                height: 125,
                child: const Center(child: Text('Help for this app', style: TextStyle(fontSize: 24, fontFamily: "Montserrat"))),
              ),
            ),
            Scaffold(
            appBar: AppBar(
              title:Text("Settings", style:TextStyle(fontFamily : "Samarkan", fontSize: 36)),
              centerTitle: true,
              ),
              body:ListView(
                children: <Widget>[
                  TextButton(
                    child: Text('Account', style: TextStyle(fontSize: 24, fontFamily: "Montserrat")),
                    onPressed: (){},
                  ),
                  TextButton(
                    child: Text('Privacy', style: TextStyle(fontSize: 24, fontFamily: "Montserrat")),
                    onPressed: (){},
                  ),
                  TextButton(
                    child: Text('Login Settings', style: TextStyle(fontSize: 24, fontFamily: "Montserrat")),
                    onPressed: (){},
                  ),
                  TextButton(
                    child: Text('Security', style: TextStyle(fontSize: 24, fontFamily: "Montserrat")),
                    onPressed: (){},
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
