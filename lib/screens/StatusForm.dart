import 'package:flutter/material.dart';
import 'package:testing/screens/TimeLineTileUI.dart';

class StatusFrom extends StatefulWidget {
  const StatusFrom({Key? key}) : super(key: key);

  @override
  State<StatusFrom> createState() => _StatusFromState();
}

class _StatusFromState extends State<StatusFrom> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text('Check Application Status'),
        centerTitle: true,
        backgroundColor: Color(0xFF11AB2F),
      ),
      body: Padding(
        padding: const EdgeInsets.only(left: 30.0, right: 30.0),
        child: ListView(
          children: const [
            TimeLineTileUI(
              isFirst: true,
              isLast: false,
              isPast: true,
              eventChild: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Row(
                    children: [
                      SizedBox(width: 15.0),
                      Flexible(
                        child: Text(
                          'Application Submitted',
                          style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold, color: Colors.white),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            TimeLineTileUI(
              isFirst: false,
              isLast: false,
              isPast: true,
              eventChild: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Row(
                    children: [
                      SizedBox(width: 15.0),
                      Flexible(
                        child: Text(
                          'Approved by member of pool of farmers',
                          style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold, color: Colors.white),
                          maxLines: 2,
                          overflow: TextOverflow.ellipsis,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            TimeLineTileUI(
              isFirst: false,
              isLast: false,
              isPast: true,
              eventChild: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Row(
                    children: [
                      SizedBox(width: 15.0),
                      Flexible(
                        child: Text(
                          'Approved by Gram Panchayat',
                          style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold, color: Colors.white),
                          maxLines: 2,
                          overflow: TextOverflow.ellipsis,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            TimeLineTileUI(
              isFirst: false,
              isLast: false,
              isPast: true,
              eventChild: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Row(
                    children: [
                      SizedBox(width: 15.0),
                      Flexible(
                        child: Text(
                          'Approved by Govt. Officials',
                          style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold, color: Colors.white),
                          maxLines: 2,
                          overflow: TextOverflow.ellipsis,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            TimeLineTileUI(
              isFirst: false,
              isLast: true,
              isPast: true,
              eventChild: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Row(
                    children: [
                      SizedBox(width: 15.0),
                      Flexible(
                        child: Text(
                          'Approved by SEBI',
                          style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold, color: Colors.white),
                        ),
                      ),
                    ],
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
