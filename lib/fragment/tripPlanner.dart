import 'package:flutter/material.dart';

class ThirdFragment extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new TimeLine();
  }

}

class TimeLine extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return new TimeLineState();
  }
}

class TimeLineState extends State<TimeLine> {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      body: new Column(
        children: <Widget>[
          new Card(
            child: new Column(
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                const ListTile(
                  leading: const Icon(Icons.event_available,),
                  title: const Text('The Enchanted Nightingale'),
                  subtitle: const Text('Music by Julie Gable. Lyrics by Sidney Stein.'),
                ),
                new ButtonTheme.bar( // make buttons use the appropriate styles for cards
                  child: new ButtonBar(
                    children: <Widget>[
                      new FlatButton(
                        child: const Text('ADD TO TICKETS LIST'),
                        onPressed: () { /* ... */ },
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          new Card(
            child: new Column(
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                const ListTile(
                  leading: const Icon(Icons.event_available,),
                  title: const Text('The Enchanted Nightingale'),
                  subtitle: const Text('Music by Julie Gable. Lyrics by Sidney Stein.'),
                ),
                new ButtonTheme.bar( // make buttons use the appropriate styles for cards
                  child: new ButtonBar(
                    children: <Widget>[
                      new FlatButton(
                        child: const Text('ADD TO TICKETS LIST'),
                        onPressed: () { /* ... */ },
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          new Card(
            child: new Column(
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                const ListTile(
                  leading: const Icon(Icons.event_available,),
                  title: const Text('The Enchanted Nightingale'),
                  subtitle: const Text('Music by Julie Gable. Lyrics by Sidney Stein.'),
                ),
                new ButtonTheme.bar( // make buttons use the appropriate styles for cards
                  child: new ButtonBar(
                    children: <Widget>[
                      new FlatButton(
                        child: const Text('ADD TO TICKETS LIST'),
                        onPressed: () { /* ... */ },
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          new Card(
            child: new Column(
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                const ListTile(
                  leading: const Icon(Icons.event_available,),
                  title: const Text('The Enchanted Nightingale'),
                  subtitle: const Text('Music by Julie Gable. Lyrics by Sidney Stein.'),
                ),
                new ButtonTheme.bar( // make buttons use the appropriate styles for cards
                  child: new ButtonBar(
                    children: <Widget>[
                      new FlatButton(
                        child: const Text('ADD TO TICKETS LIST'),
                        onPressed: () { /* ... */ },
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      )
    );
  }
}