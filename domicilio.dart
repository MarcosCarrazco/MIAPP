import '../pizzahit/botones.dart';
import '../pizzahit/temas.dart';
import '../pizzahit/utils.dart';
import 'paso1.dart';
import 'paso2.dart';
import 'riogrande.dart';
import 'sendero.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class DomicilioWidget extends StatefulWidget {
  const DomicilioWidget({Key key}) : super(key: key);

  @override
  _DomicilioWidgetState createState() => _DomicilioWidgetState();
}

class _DomicilioWidgetState extends State<DomicilioWidget> {
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      backgroundColor: Color(0xFFF1F4F8),
      body: GestureDetector(
        onTap: () => FocusScope.of(context).unfocus(),
        child: Column(
          mainAxisSize: MainAxisSize.max,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            SingleChildScrollView(
              child: Column(
                mainAxisSize: MainAxisSize.max,
                children: [
                  SingleChildScrollView(
                    child: Column(
                      mainAxisSize: MainAxisSize.max,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(
                          width: double.infinity,
                          height: 120,
                          decoration: BoxDecoration(
                            color: Color(0xACFF0000),
                          ),
                          child: Stack(
                            children: [
                              Align(
                                alignment: AlignmentDirectional(-0.01, -0.28),
                                child: Image.asset(
                                  'assets/images/0c569e586888f719c5a826d8efdc00a6.png',
                                  width: 100,
                                  height: 100,
                                  fit: BoxFit.cover,
                                ),
                              ),
                              Align(
                                alignment: AlignmentDirectional(-0.95, 0.7),
                                child: Card(
                                  clipBehavior: Clip.antiAliasWithSaveLayer,
                                  color: Color(0x00F5F5F5),
                                  child: botones(
                                    borderColor: Colors.transparent,
                                    borderRadius: 30,
                                    borderWidth: 1,
                                    buttonSize: 60,
                                    icon: Icon(
                                      Icons.arrow_back,
                                      color: Colors.black,
                                      size: 30,
                                    ),
                                    onPressed: () async {
                                      Navigator.pop(context);
                                    },
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Container(
                          width: double.infinity,
                          height: 500,
                          decoration: BoxDecoration(
                            color: Color(0x00EEEEEE),
                          ),
                          child: Stack(
                            children: [
                              Align(
                                alignment: AlignmentDirectional(0, -0.75),
                                child: InkWell(
                                  onTap: () async {
                                    await Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                        builder: (context) => RiograndeWidget(),
                                      ),
                                    );
                                  },
                                  child: ListTile(
                                    title: Text(
                                      'Pizza Hut Rio Grande Juárez',
                                      style:
                                          temaspizza.of(context).title3,
                                    ),
                                    subtitle: Text(
                                      '+525565153627',
                                      style: temaspizza.of(context)
                                          .subtitle2,
                                    ),
                                    trailing: Icon(
                                      Icons.call_end,
                                      color: Color(0xFF303030),
                                      size: 20,
                                    ),
                                    tileColor: Color(0xFFF5F5F5),
                                    dense: false,
                                  ),
                                ),
                              ),
                              InkWell(
                                onTap: () async {
                                  await Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context) => SenderoWidget(),
                                    ),
                                  );
                                },
                                child: ListTile(
                                  title: Text(
                                    'Pizza Hut Sendero Las Torres',
                                    style: temaspizza.of(context).title3,
                                  ),
                                  subtitle: Text(
                                    '+525515153737',
                                    style:
                                        temaspizza.of(context).subtitle2,
                                  ),
                                  trailing: Icon(
                                    Icons.call_end,
                                    color: Color(0xFF303030),
                                    size: 20,
                                  ),
                                  tileColor: Color(0xFFF5F5F5),
                                  dense: false,
                                ),
                              ),
                              Align(
                                alignment: AlignmentDirectional(0, -0.51),
                                child: InkWell(
                                  onTap: () async {
                                    await Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                        builder: (context) => Paso1Widget(),
                                      ),
                                    );
                                  },
                                  child: ListTile(
                                    title: Text(
                                      'Pizza Hut',
                                      style:
                                          temaspizza.of(context).title3,
                                    ),
                                    subtitle: Text(
                                      '+19158600040',
                                      style: temaspizza.of(context)
                                          .subtitle2,
                                    ),
                                    trailing: Icon(
                                      Icons.call_end,
                                      color: Color(0xFF303030),
                                      size: 20,
                                    ),
                                    tileColor: Color(0xFFF5F5F5),
                                    dense: false,
                                  ),
                                ),
                              ),
                              Align(
                                alignment: AlignmentDirectional(0, -0.28),
                                child: InkWell(
                                  onTap: () async {
                                    await Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                        builder: (context) => Paso2Widget(),
                                      ),
                                    );
                                  },
                                  child: ListTile(
                                    title: Text(
                                      'Pizza Hut S',
                                      style:
                                          temaspizza.of(context).title3,
                                    ),
                                    subtitle: Text(
                                      '+19152304340',
                                      style: temaspizza.of(context)
                                          .subtitle2,
                                    ),
                                    trailing: Icon(
                                      Icons.call_end,
                                      color: Color(0xFF303030),
                                      size: 20,
                                    ),
                                    tileColor: Color(0xFFF5F5F5),
                                    dense: false,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
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
