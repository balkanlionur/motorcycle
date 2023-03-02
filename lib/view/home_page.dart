import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Homepage extends StatefulWidget {
  const Homepage({super.key});

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.grey[900],
        body: Column(
          children: [
            Container(
                padding: const EdgeInsets.only(top: 40, left: 20),
                alignment: Alignment.topLeft,
                child: Text(
                  'Scan Results',
                  style: GoogleFonts.roboto(
                      color: Colors.white,
                      textStyle: Theme.of(context).textTheme.headlineSmall),
                )),
            const SizedBox(height: 10),
            cardMethod(context, 'Model', '10,450' + ' TL', 0),
            cardMethod(context, 'Model', '10,450' + ' TL', 0),
            cardMethod(context, 'Model', '10,450' + ' TL', 0),
            cardMethod(context, 'Model', '10,450' + ' TL', 0),
          ],
        ));
  }

  Card cardMethod(
      BuildContext context, String stext, String stextsub, int issubtitle) {
    return Card(
      child: ListTile(
        tileColor: Colors.black,
        minLeadingWidth: 0,
        // minVerticalPadding: 25,
        title: textModel(context, stext, issubtitle),

        subtitle: textModel(context, stextsub, 1),

        leading: Image.asset('assets/harley_davidson.jpg'),

        onTap: () {},
      ),
    );
  }

  Text textModel(BuildContext context, String stext, int issubtitle) {
    Color tcolor;
    TextStyle tstyle;
    if (issubtitle == 1) {
      tcolor = Colors.orange[700]!;
      tstyle = Theme.of(context).textTheme.bodySmall!;
    } else {
      tcolor = Colors.white70;

      tstyle = Theme.of(context).textTheme.headlineSmall!;
    }
    return Text(stext,
        style: GoogleFonts.roboto(color: tcolor, textStyle: tstyle));
  }
}
