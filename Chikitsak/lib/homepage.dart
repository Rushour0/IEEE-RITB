import 'package:flutter/material.dart';
// import 'cameraopen.dart';

// Home page of the app
class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);
  static const hospitalStyle = TextStyle(fontSize: 24, fontFamily: "Montserrat");

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      initialIndex: 2,
      length: 5,
      child: Scaffold(
          bottomNavigationBar: Container(
            color: Colors.black,
            child: TabBar(
              labelStyle: TextStyle( fontFamily: "Dandelion", fontSize: 14),
              unselectedLabelStyle: TextStyle( fontFamily: "Dandelion", fontSize: 14),  
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
              automaticallyImplyLeading: false,
              title:Text("Hospitals",style: TextStyle(fontFamily : "Samarkan", fontSize: 36)),
              centerTitle:true,
              ),
              body:ListView(
                children:<Widget>[
                    Container(
                      child:  Center(
                        child:TextButton(
                          onPressed:(){},
                          child: Text('Fortis La Femme, Greater Kailash – New Delhi.', style: hospitalStyle, textAlign:TextAlign.center))),
                    ),
                    Container(height:20,color:Colors.grey[400]),
                    Container(
                      child: Center(
                        child: TextButton(
                          onPressed:(){},
                          child: Text('Fortis Escorts Heart Institute (FEHI) – New Delhi.', style: hospitalStyle, textAlign:TextAlign.center))),
                    ),
                    Container(height:20,color:Colors.grey[400]),
                    Container(
                      child: Center(
                        child:TextButton(
                          onPressed:(){},
                          child: Text('Rockland Hospital – New Delhi.', style: hospitalStyle, textAlign:TextAlign.center))),
                    ),
                    Container(height:20,color:Colors.grey[400]),
                    Container(
                      child: Center(
                        child:TextButton(
                          onPressed:(){},
                          child: Text('BLK Super Specialty Hospital – New Delhi.', style: hospitalStyle, textAlign:TextAlign.center))),
                    ),
                    Container(height:20,color:Colors.grey[400]),
                    Container(
                      child: Center(
                        child:TextButton(
                          onPressed:(){},
                          child: Text('Primus Super Specialty Hospital – New Delhi.', style: hospitalStyle, textAlign:TextAlign.center))),
                    ),
                    Container(height:20,color:Colors.grey[400]),
                    Container(
                      child: Center(
                        child:TextButton(
                          onPressed:(){},
                          child: Text('Columbia Asia Referral Hospital – Yeshwanthpur.', style: hospitalStyle, textAlign:TextAlign.center))),
                    ),
                ],
              ),
            ),
          Scaffold(

            appBar: AppBar(
              automaticallyImplyLeading: false,
              title:Text("Documents", style:TextStyle(fontFamily : "Samarkan", fontSize: 36)),
              centerTitle: true,
              ),
              body:ListView(
                children: <Widget>[
                  Container(
                    height: 125,
                    color:Colors.grey[400],
                    child: const Center(child: Text('Upload Documents', style: hospitalStyle)),
                  ),
                  Container(
                    height: 125,
                    color:Colors.grey,
                    child: const Center(child: Text('View Documents', style: hospitalStyle)),
                  ),
                ],
              ),
            ),
            Scaffold(
            appBar: AppBar(
              automaticallyImplyLeading: false,
              title:Text("chikitsak", style:TextStyle(fontFamily : "Samarkan", fontSize: 36)),
              centerTitle: true,
              ),

              body:ListView(
                children:<Widget>[
                    Container(
                      height: 125,
                      color:Colors.grey,
                      child: const Center(child: Text('Knee Replacement', style: hospitalStyle)),
                    ),
                    Container(
                      height: 125,
                      color:Colors.grey[400],
                      child: const Center(child: Text('Kidney Replacement', style: hospitalStyle)),
                    ),
                    Container(
                      height: 125,
                      color:Colors.grey,
                      child: const Center(child: Text('Heart Replacement', style: hospitalStyle)),
                    ),
                    Container(
                      height: 125,
                      color:Colors.grey[400],
                      child: const Center(child: Text('Liver Replacement', style: hospitalStyle)),
                    ),
                ],
              ),
            ),
            Scaffold(
            appBar: AppBar(
              automaticallyImplyLeading: false,
              title:Text("Help", style:TextStyle(fontFamily : "Samarkan", fontSize: 36)),
              centerTitle: true,
              ),
              body:Container(
                height: 125,
                child: const Center(child: Text('Help for this app', style: hospitalStyle)),
              ),
            ),
            Scaffold(
            appBar: AppBar(
              automaticallyImplyLeading: false,
              title:Text("Settings", style:TextStyle(fontFamily : "Samarkan", fontSize: 36)),
              centerTitle: true,
              ),
              body:ListView(
                children: <Widget>[
                  TextButton(
                    style:ButtonStyle(
                      shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                        RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(18.0),
                          side: BorderSide(color: Colors.grey)
                        ),
                      ),
                    ),

                    child: Text('Account', style: hospitalStyle.copyWith(fontSize:28, color: Colors.red[300]), textAlign:TextAlign.left),
                    onPressed: (){},
                  ),
                  TextButton(
                    style:ButtonStyle(
                      shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                        RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(18.0),
                          side: BorderSide(color: Colors.grey)
                        ),
                      ),
                    ),
                    child: Text('Privacy', style: hospitalStyle.copyWith(fontSize:28, color: Colors.red[300])),
                    onPressed: (){},
                  ),
                  TextButton(
                    style:ButtonStyle(
                      shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                        RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(18.0),
                          side: BorderSide(color: Colors.grey)
                        ),
                      ),
                    ),
                    child: Text('Login Settings', style: hospitalStyle.copyWith(fontSize:28, color: Colors.red[300])),
                    onPressed: (){},
                  ),
                  TextButton(
                    style:ButtonStyle(
                      shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                        RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(18.0),
                          side: BorderSide(color: Colors.grey)
                        ),
                      ),
                    ),
                    child: Text('Security', style: hospitalStyle.copyWith(fontSize:28, color: Colors.red[300])),
                    onPressed: (){},
                  ),
                  SizedBox(height:150),
                  Text("Made with Love", style:TextStyle(fontFamily: "Dandelion", fontSize:50), textAlign:TextAlign.center),
                  Text("Rushour0", style:TextStyle(fontFamily: "Dandelion", fontSize:24), textAlign:TextAlign.center),

                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
