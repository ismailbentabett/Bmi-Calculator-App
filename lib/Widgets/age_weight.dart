import 'package:flutter/material.dart';


  

class AgeWeight extends StatefulWidget {
   const AgeWeight({
    Key key,
  }) : super(key: key);
  
  @override
  _AgeWeightState createState() => _AgeWeightState();
}

class _AgeWeightState extends State<AgeWeight> {

  var age = 0 ;
var weight = 0;

void  addit(var par){
  
par++; 



}


void  minit(var par){
  setState(() {
par--; 
  });

}
  @override
  Widget build(BuildContext context) {
    return Row(children: <Widget>[
                Expanded(
                  child: Card(
                    child: Container(
                                                

                        color: Color(0xff1D1F33),
                        height: 120.0,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: <Widget>[
                            Text('Age',
                             style: TextStyle(
        fontSize: 20,
      
      ),),
      SizedBox(height: 10, ),
                            Text('$age'),
                            Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceAround,
                                children: <Widget>[
                                  MaterialButton(
                                    onPressed: (){
                                          setState(() {
                                          age++ ;
                                          });
                                        
                                  },
                                    color: Colors.blue,
                                    textColor: Colors.white,
                                    child: Icon(
                                      Icons.add,
                                      size: 24,
                                    ),
                                    padding: EdgeInsets.all(16),
                                    shape: CircleBorder(),
                                  ),
                                  MaterialButton(
                                         onPressed: (){
                                          setState(() {
                                            if(age > 0){
                                          age-- ;

                                              }
                                          });
                                        
                                  },
                                    color: Colors.blue,
                                    textColor: Colors.white,
                                    child: Icon(
                                      Icons.remove,
                                      size: 24,
                                    ),
                                    padding: EdgeInsets.all(16),
                                    shape: CircleBorder(),
                                  )
                                ])
                          ],
                        )),
                  ),
                ),
                Expanded(
                  child: Card(
                    child: Container(
                        
                        color: Color(0xff1D1F33),
                        height: 120.0,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: <Widget>[
                            Text('Weight',
                             style: TextStyle(
        fontSize: 20,
      
      ),),
            SizedBox(height: 10, ),

                            Text('${weight}'),
                            Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceAround,
                                children: <Widget>[
                                  MaterialButton(
                                          onPressed: (){
                                          setState(() {
                                          weight++ ;
                                          });
                                        
                                  },
                                    color: Colors.blue,
                                    textColor: Colors.white,
                                    child: Icon(
                                      Icons.add,
                                      size: 24,
                                    ),
                                    padding: EdgeInsets.all(16),
                                    shape: CircleBorder(),
                                  ),
                                  MaterialButton(
                                          onPressed: (){
                                          setState(() {
                                              if(weight > 0){
                                          weight-- ;

                                              }
                                          });
                                        
                                  },
                                    color: Colors.blue,
                                    textColor: Colors.white,
                                    child: Icon(
                                      Icons.remove,
                                      size: 24,
                                    ),
                                    padding: EdgeInsets.all(16),
                                    shape: CircleBorder(),
                                  )
                                ])
                          ],
                        )),
                  ),
                ),
              ]);
  }
}