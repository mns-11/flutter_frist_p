import 'package:flutter/material.dart';



void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // TRY THIS: Try running your application with "flutter run". You'll see
        // the application has a purple toolbar. Then, without quitting the app,
        // try changing the seedColor in the colorScheme below to Colors.green
        // and then invoke "hot reload" (save your changes or press the "hot
        // reload" button in a Flutter-supported IDE, or press "r" if you used
        // the command line to start the app).
        //
        // Notice that the counter didn't reset back to zero; the application
        // state is not lost during the reload. To reset the state, use hot
        // restart instead.
        //
        // This works for code too, not just values: Most code changes can be
        // tested with just a hot reload.
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
      ),
      home: HomeScreen(),
    );
  }
}

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [Row(
              children: [
                Container(
                  height: 178,
                  width: 178,
                  child: Image(image: AssetImage("assets/images/doctor_image.png"),
                  fit: BoxFit.contain,
                  ),
                  decoration: BoxDecoration(
                    color: const Color.fromARGB(255, 176, 85, 0),
                    borderRadius: BorderRadius.circular(16),
                  ),
                  
                ),
                SizedBox(
                  width: 34,
                ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("Dr.Norah ",style: TextStyle(fontSize: 34),
                      
                      ),

                      Text("spcialist:cardiologist", style: TextStyle(fontSize: 16,fontWeight: FontWeight.w400,
                      color: Colors.grey[700]
                      ),
                      ),
                      SizedBox(height: 16,),
                      Row(
                        children: [
                          customiconstyle(icone: Icons.mail,),

                                                  
                          SizedBox(width: 8,),

                          customiconstyle(icone: Icons.phone,),

                          SizedBox(width: 8,),
                          customiconstyle(icone: Icons.video_call,),



                        
                        ],
                        

                        
                      )
                    ],
                  ),
               
              ],
            ),
            SizedBox( height: 32,),
             Text("About",style: TextStyle(fontSize: 24,fontWeight: FontWeight.w500),),
             SizedBox(height: 8,),
             Text("**Dr. Noura Al-Mansoori** is a highly skilled cardiologist specializing in cardiovascular diseases with over 12 years of clinical experience. She completed her medical degree at Harvard Medical School and pursued advanced training at Johns Hopkins Hospital, followed by an interventional cardiology fellowship at Cleveland Clinic. Dr. Noura is board-certified in cardiology and recognized for her expertise in coronary artery disease, heart failure management, and preventive cardiology. s .",
             style: TextStyle(fontSize: 16,
             fontWeight: FontWeight.
             w300,color: Colors.grey[700]
             ),
             ),
          
            SizedBox(height: 64,),
             Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [Column(
                children: [
                  Row(
                  children: [
                    Icon(Icons.location_on_outlined,
                    color: Colors.grey[700],
                    ),

                    SizedBox(width: 16,),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("Address" ,style: TextStyle(fontSize: 24
                        ),
                        ),

                        Text("King Fahad Road, " ,
                        style: TextStyle(
                        color: Colors.grey[700],
 
                        ),
                        
                        )
                      ],
                    )
                    
                  ],
                ),
                

                  SizedBox(height: 8,),
                   Row(
                  children: [
                    Icon(Icons.location_on_outlined,
                    color: Colors.grey[700],
                    ),

                    SizedBox(width: 16,),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("Address" ,style: TextStyle(fontSize: 24
                        ),
                        ),

                        Text("King Fahad Road, " ,
                        style: TextStyle(
                        color: Colors.grey[700],
 
                        ),
                        
                        )
                      ],
                    )
                    
                  ],
                )
                
                ],
              ),
              
              ClipRRect(borderRadius: BorderRadius.circular(16),
                child: Image.asset("assets/images/map_image.JPG",
                height: 200,
                width: 150,
                fit: BoxFit.cover,
                
                ),
              )
              
              
              ],
          
             )


             
             ],
          
             
             
          ),
        ),
      ),
    );
  }
}

class customiconstyle extends StatelessWidget {
  const customiconstyle({
    super.key, required this.icone,
  });

  final IconData icone;

  @override
  Widget build(BuildContext context) {
    return Container(
    child: Icon(icone,
    color: const Color.fromARGB(255, 176, 85, 0),
    size: 32,
    ),
    height: 48,
    width: 48,
    decoration: BoxDecoration(
      color: Color.fromARGB(31, 176, 85, 0),
      borderRadius: BorderRadius.circular(16)
    ),
                            );
  }
}