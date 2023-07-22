import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:stack/sign_in.dart';
import 'package:stack/utils.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}
List photosList = ['assets/1.png','assets/2.png','assets/3.png'];
List titile = [
  'Fulfillment',
  'Distribution',
  'Storage',
];
List subTitle = [
  'With the help of our professional team, Stash will store, pick, pack and ship your products to the end-user. We will give you the ability to sell your products on your e-commerce platform without carrying the burden of the whole process.\n\n',
  'We will develop your supply network and distribute your products accordingly. We develop operational strategies to improve logistical efficiency and maximize your profit.',
  'We provide affordable short-term mixed storage solutions with fulfillment and distribution services to help SME’s grow and scale in the market.'

];
PageController pageController = PageController();
int currentPage = 0;
class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
          child:Column(
            children: [
      InkWell(
        onTap: (){
          appExt.push(const SignInPage(), context);
        },
        child: Align(
           alignment: Alignment.topRight,
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              width:  58,
              height:  28,
              decoration:  BoxDecoration (
                borderRadius:  BorderRadius.circular(4),
              ),
              child:
              Container(
                // group12eMK (1:189)
                width:  double.infinity,
                height:  double.infinity,
                decoration:  BoxDecoration (
                    border:  Border.all(color: Color(0xff000000)),
                color:  Color(0xff43b8c1),
                borderRadius:  BorderRadius.circular(4),
                boxShadow:  [
                  BoxShadow(
                    color:  Color(0xff000000),
                    offset:  Offset(2, 2),
                    blurRadius:  0,
                  ),
                ],
              ),
              child: Center(
                child:
                Text(
                  'SKIP',
                  textAlign:  TextAlign.center,
                  style:GoogleFonts.lato(
                    fontSize:  15,
                    fontWeight:  FontWeight.w400,
                    height:  1.3289999644,
                    color:  Color(0xff000000),
                  )
                ),
              ),
            ),
    ),
          ),
        ),
      ),
              Expanded(
                child: PageView.builder(
                    controller:pageController,
                    onPageChanged: (int index){
                      setState(() {
                        currentPage = index;
                      });
                    },
                    itemCount: photosList.length,
                    scrollDirection: Axis.horizontal,
                    allowImplicitScrolling: false,
                    physics: const BouncingScrollPhysics(),
                    itemBuilder:(context,index) {
                      return Column(
                        children: [
                          Image.asset(photosList[index]),
                          Container(
                            // fulfillmentwgq (1:136)
                            margin:  EdgeInsets.fromLTRB(0, 0, 1, 15),
                            child:
                            Text(
                              titile[index],
                              textAlign:  TextAlign.center,
                              style:  GoogleFonts.anton (
                                fontSize:  33,
                                fontWeight:  FontWeight.w400,
                                height:  1.5075,
                                color:  Color(0xff000000),
                              ),
                            ),
                          ),
                          Align(
                            child:
                            SizedBox(
                              width:  331,
                              height:  120,
                              child:
                              Text(
                                subTitle[index],
                                textAlign:  TextAlign.center,
                                style:  GoogleFonts.lato (
                                  fontSize:  15,
                                  fontWeight:  FontWeight.w400,
                                  height:  1.3289999644,
                                  color:  Color(0xff000000),
                                ),
                              ),
                            ),
                          ),
                          Container(
                            alignment: AlignmentDirectional.bottomCenter,
                            margin:const EdgeInsets.all(16.0),
                            child: Row(
                              mainAxisAlignment:MainAxisAlignment.center,
                              children: [
                                for( int i = 0; i< 3; i++)
                                  i == currentPage
                                      ? slideDots(true)
                                      : slideDots(false)
                              ],
                            ),
                          )
                        ],
                      );
                    }
                ),
              ),
            ],
          ) ),
    );
  }

  Widget slideDots (isActive) {
    return AnimatedContainer(
      duration: const Duration(microseconds: 150),
      margin:  const EdgeInsets.only(left: 10),
      height: isActive ? 20 : 8,
      width:  isActive ? 20 : 8,
      decoration: BoxDecoration(
          boxShadow:  [
            BoxShadow(
              color:  Color(0xff000000),
              offset:  Offset(2, 2),
              blurRadius:  0,
            ),
          ],
          color: isActive ?  Color(0xff43b8c1) : Colors.grey,
          border:  Border.all(color: Color(0xff000000)),
          borderRadius: const BorderRadius.all(Radius.circular(12))
      ),
    );
  }
}
