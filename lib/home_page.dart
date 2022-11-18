import 'package:flutter/material.dart';
import 'dart:math';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  String num1 = '0';
  String num2 = '0';
  int i =0;


  void display(String n) {
    if (n == '0' ||
        n == '1' ||
        n == '2' ||
        n == '3' ||
        n == '4' ||
        n == '5' ||
        n == '6' ||
        n == '7' ||
        n == '8' ||
        n == '9' ||
        n == 'e' ||
        n == '.' ||
        n == 'π') {
      if (num1 == '0') {
        num1 = '';
        num2 = '';
      }
      num1 = num1 + n;
    } else if (n == 'sin' ||
        n == 'cos' ||
        n == 'tan' ||
        n == 'ln' ||
        n == 'sinh' ||
        n == 'cosh' ||
        n == 'tanh' ||
        n == '|x|' ||
        n == 'x!' ||
        n == '1/x' ||
        n == 'e\u02e3' ||
        n == 'sin\u207B\u00B9' ||
        n == 'cos\u207B\u00B9' ||
        n == 'tan\u207B\u00B9' ||
        n == '√' ||
        n == '3√' ||
        n == 'x\u00B2' ||
        n == '+/-') {
      switch(n) {
        case 'cos':
          {
            num2 = cos(double.parse(num1)).toStringAsFixed(3);
            num1 = '$n($num1)';
          }
          break;
        case 'sin':
          {
            num2 = sin(double.parse(num1)).toStringAsFixed(3);
            num1 = '$n($num1)';
          }
          break;
        case 'tan':
          {
            num2 = tan(double.parse(num1)).toStringAsFixed(3);
            num1 = '$n($num1)';
          }
          break;
        case 'ln':
          {
            num2 = log(double.parse(num1)).toStringAsFixed(3);
            num1 = '$n($num1)';
          }
          break;
        case 'sinh':
          {
            num2 = "Not Available!!";//tan(double.parse(num1)).toStringAsFixed(3);
            num1 = '$n($num1)';
          }
          break;
        case 'cosh':
          {
            num2 = "Not Available!!";//tan(double.parse(num1)).toStringAsFixed(3);
            num1 = '$n($num1)';
          }
          break;
        case 'tanh':
          {
            num2 = "Not Available!!";//tan(double.parse(num1)).toStringAsFixed(3);
            num1 = '$n($num1)';
          }
          break;
        case '|x|':
          {
            double  a = double.parse(num1);
            if(a<0)
            {
              a=-a;
            }
            num1 = '|($num1)|';
            num2 = a.toStringAsFixed(3);
          }
          break;
        case 'x!':
          {
            double  a = double.parse(num1);
            if(a<0)
            {
              a=-a;
            }
            num1 = '|($num1)|';
            num2 = a.toStringAsFixed(3);
          }
          break;
        case '1/x':
          {
            double  a = double.parse(num1);
            num2=(1/a).toStringAsFixed(3);
            num1 = '1÷($num1)';
          }
          break;
        case 'e\u02e3':
          {
            num2 = pow(e,double.parse(num1)).toStringAsFixed(3);
            num1 = 'e^($num1)';
          }
          break;
        case 'sin\u207B\u00B9':
          {
            num2 = asin(double.parse(num1)).toStringAsFixed(3);
            num1 = '$n($num1)';
          }
          break;
        case 'cos\u207B\u00B9':
          {
            num2 = acos(double.parse(num1)).toStringAsFixed(3);
            num1 = '$n($num1)';
          }
          break;
        case 'tan\u207B\u00B9':
          {
            num2 = atan(double.parse(num1)).toStringAsFixed(3);
            num1 = '$n($num1)';
          }
          break;
        case '√':
          {
            num2 = sqrt(double.parse(num1)).toStringAsFixed(3);
            num1 = '$n($num1)';
          }
          break;
        case '3√':
          {
            num2 = pow(double.parse(num1),(1/3)).toStringAsFixed(3);
            num1 = '$n($num1)';
          }
          break;
        case 'x\u00B2':
          {
            num2 = pow(double.parse(num1),2).toStringAsFixed(3);
            num1 = '($num1)^2';
          }
          break;
        case '+/-':
          {
            num2 = ((-1)*double.parse(num1)).toStringAsFixed(3);
            num1 = '($num1)';
          }
          break;
      }
    } else if (n == '+' || n == '-' || n == 'X' || n == '÷' || n == '%') {
      if ((n == '+' || n == '-') && (num1 == '0')) {
        num1 = '';
        num2 = '';
        --i;
      }
      if((num1.length==1)&&
          (n == 'X' || n == '÷' || n == '%') &&
          (num1[0] == '+' || num1[0] == '-' || num1[0] == 'X' || num1[0] == '÷' || num1[0] == '%' || num1=='0'))
      {
        num1='0';
        num2="Invalid!!";
      }
      else if ((num1.length==1)&&(num1[0] == '+' || num1[0] == '-')){
        num1 =  n;
      }
      else{
        num1 = num1 + n;
        ++i;
      }
      if(i==2){
        int j=0;
        if(num1[0]=='-'||num1[0]=='+')
        {
          j=1;
        }
        for(; j<num1.length; j++)
        {
          if(num1[j] == '+' || num1[j] == '-' || num1[j] == 'X' || num1[j] == '÷' || num1[j] == '%')
          {
            break;
          }
        }
        String o=num1[j];
        num2=num1.substring(j+1,num1.length-1);
        double num;
        if(num1[0]=='-')
        {
          num1 = num1.substring(1,j);
          num = -(double.parse(num1));
        }
        else{
          num1 = num1.substring(0,j);
          num = double.parse(num1);
        }
        i=1;
        switch(o) {
          case '+': {
            num1=(num+double.parse(num2)).toStringAsFixed(3);
          }
          break;
          case '-': {
            num1=(num-double.parse(num2)).toStringAsFixed(3);
          }
          break;
          case 'X': {
            num1=(num*(double.parse(num2))).toStringAsFixed(3);
          }
          break;
          case '÷': {
            num1=(num/(double.parse(num2))).toStringAsFixed(3);
          }
          break;
          case '%': {
            num1=((num/100)*(double.parse(num2))).toStringAsFixed(3);
          }
          break;
        }

        num1 = num1 + n;
      }
      //num2='$i';
    } else if (n == 'C') {
      num1 = '0';
      num2 = '0';
      i=0;
    } else if (n == '=') {
      int j=num1.length-1;
      String t=num1,o;
      double num;
      if(num1[j] == '+' || num1[j] == '-' || num1[j] == 'X' || num1[j] == '÷' || num1[j] == '%')
      {
        num1+='0';
        t=num1;
      }
      if(num1[0]=='-'||num1[0]=='+')
      {
        j=1;
      }
      else{ j=0;}
      for(; j<num1.length; j++)
      {
        if(num1[j] == '+' || num1[j] == '-' || num1[j] == 'X' || num1[j] == '÷' || num1[j] == '%')
        {
          break;
        }
      }
      o=num1[j];
      num2=num1.substring(j+1,num1.length);
      if(num1[0]=='-')
      {
        num1 = num1.substring(1,j);
        num = -(double.parse(num1));
      }
      else{
        num1 = num1.substring(0,j);
        num = double.parse(num1);
      }
      switch(o) {
        case '+': {
          num1=(num+double.parse(num2)).toStringAsFixed(3);
        }
        break;
        case '-': {
          num1=(num-double.parse(num2)).toStringAsFixed(3);
        }
        break;
        case 'X': {
          num1=(num*(double.parse(num2))).toStringAsFixed(3);
        }
        break;
        case '÷': {
          num1=(num/(double.parse(num2))).toStringAsFixed(3);
        }
        break;
        case '%': {
          num1=((num/100)*(double.parse(num2))).toStringAsFixed(3);
        }
        break;
      }
      i=0;
      num2=t;
    } else if (n == 'bac') {
      String res = '';
      if ((num1 != '') && (num1.isNotEmpty)) {
        res = num1.substring(0, num1.length - 1);
      }
      num1 = res;
      res = '';
      if ((num2 != '') && (num2.isNotEmpty)) {
        res = num2.substring(0, num2.length - 1);
      }
      num2 = res;
    }

    if (num1 == '') {
      num1 = '0';
      num2 = '0';
    }
    setState(() {});
  }


  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.grey[300],
      child: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            const SizedBox(height: 30,),
            Container(
              height: 200,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Colors.green.shade600,
              ),
              padding: const EdgeInsets.all(20),
              margin: const EdgeInsets.fromLTRB(15, 40, 15, 15),
              alignment: Alignment.bottomRight,
              child: Text(num1,
              style: const TextStyle(
                fontSize: 60,
                ),),
              ),
            const SizedBox(height: 30),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: <Widget>[
                ElevatedButton(
                  onPressed: () {
                    display('C');
                  },
                  child: const Icon(Icons.delete_forever, size: 35,),
                  style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all(Colors.white70),
                    //side: MaterialStateProperty.all(const BorderSide(color: Colors.blue)),
                    foregroundColor: MaterialStateProperty.all(Colors.green),
                    elevation: MaterialStateProperty.all(5),
                    shape: MaterialStateProperty.all(
                      RoundedRectangleBorder(borderRadius: BorderRadius.circular(20))
                    ),
                    overlayColor: MaterialStateProperty.all(Colors.red[100]),
                    fixedSize: MaterialStateProperty.all(const Size.fromHeight(60)),
                    //shadowColor: MaterialStateProperty.all(Colors.blue)
                  ),
                ),
                ElevatedButton(
                  onPressed: () {
                    display('bac');
                  },
                  onLongPress: () {
                    display('C');
                  },
                  child: const Icon(Icons.backspace_outlined,size: 35.0),
                  style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all(Colors.white70),
                      foregroundColor: MaterialStateProperty.all(Colors.green),
                      //side: MaterialStateProperty.all(const BorderSide(color: Colors.blue)),
                      elevation: MaterialStateProperty.all(5),
                      shape: MaterialStateProperty.all(
                          RoundedRectangleBorder(borderRadius: BorderRadius.circular(20))
                      ),
                      overlayColor: MaterialStateProperty.all(Colors.red[100]),
                      fixedSize: MaterialStateProperty.all(const Size.fromHeight(60)),
                      //shadowColor: MaterialStateProperty.all(Colors.blue)
                  ),
                ),
                ElevatedButton(
                  onPressed: () {
                    display('%');
                  },
                  child: const Text("%",
                    style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold),
                  ),
                  style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all(Colors.white70),
                      foregroundColor: MaterialStateProperty.all(Colors.green),
                      elevation: MaterialStateProperty.all(5),
                      //side: MaterialStateProperty.all(const BorderSide(color: Colors.blue)),
                      shape: MaterialStateProperty.all(
                          RoundedRectangleBorder(borderRadius: BorderRadius.circular(20))
                      ),
                      //overlayColor: MaterialStateProperty.all(Colors.green[100]),
                      fixedSize: MaterialStateProperty.all(const Size.fromHeight(60)),
                      //shadowColor: MaterialStateProperty.all(Colors.blue)
                  ),
                ),
                ElevatedButton(
                  onPressed: () {
                    display('÷');
                  },
                  child: const Text("/",style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold)),
                  style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all(Colors.white70),
                      foregroundColor: MaterialStateProperty.all(Colors.orange),
                      elevation: MaterialStateProperty.all(5),
                      //side: MaterialStateProperty.all(const BorderSide(color: Colors.blue)),
                      shape: MaterialStateProperty.all(
                          RoundedRectangleBorder(borderRadius: BorderRadius.circular(20))
                      ),
                      //overlayColor: MaterialStateProperty.all(Colors.green[100]),
                      fixedSize: MaterialStateProperty.all(const Size.fromHeight(60)),
                      //shadowColor: MaterialStateProperty.all(Colors.blue)
                  ),
                ),
              ],
            ),
            const SizedBox(height: 30,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: <Widget>[
                ElevatedButton(
                  onPressed: () {
                    display('7');
                  },
                  child: const Text("7",style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold),),
                  style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all(Colors.white70),
                      //side: MaterialStateProperty.all(const BorderSide(color: Colors.blue)),
                      foregroundColor: MaterialStateProperty.all(Colors.black),
                      elevation: MaterialStateProperty.all(5),
                      shape: MaterialStateProperty.all(
                          RoundedRectangleBorder(borderRadius: BorderRadius.circular(20))
                      ),
                      //overlayColor: MaterialStateProperty.all(Colors.green[100]),
                      fixedSize: MaterialStateProperty.all(const Size.fromHeight(60)),
                      //shadowColor: MaterialStateProperty.all(Colors.blue)
                  ),
                ),
                ElevatedButton(
                  onPressed: () {
                    display('8');
                  },
                  child: const Text("8",style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold)),
                  style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all(Colors.white70),
                      foregroundColor: MaterialStateProperty.all(Colors.black),
                      //side: MaterialStateProperty.all(const BorderSide(color: Colors.blue)),
                      elevation: MaterialStateProperty.all(5),
                      shape: MaterialStateProperty.all(
                          RoundedRectangleBorder(borderRadius: BorderRadius.circular(20))
                      ),
                      //overlayColor: MaterialStateProperty.all(Colors.green[100]),
                      fixedSize: MaterialStateProperty.all(const Size.fromHeight(60)),
                      //shadowColor: MaterialStateProperty.all(Colors.blue)
                  ),
                ),
                ElevatedButton(
                  onPressed: () {
                    display('9');
                  },
                  child: const Text("9",style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold)),
                  style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all(Colors.white70),
                      foregroundColor: MaterialStateProperty.all(Colors.black),
                      elevation: MaterialStateProperty.all(5),
                      //side: MaterialStateProperty.all(const BorderSide(color: Colors.blue)),
                      shape: MaterialStateProperty.all(
                          RoundedRectangleBorder(borderRadius: BorderRadius.circular(20))
                      ),
                      //overlayColor: MaterialStateProperty.all(Colors.green[100]),
                      fixedSize: MaterialStateProperty.all(const Size.fromHeight(60)),
                      //shadowColor: MaterialStateProperty.all(Colors.blue)
                  ),
                ),ElevatedButton(
                  onPressed: () {
                    display('X');
                  },
                  child: const Text("X",style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold),),
                  style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all(Colors.white70),
                      foregroundColor: MaterialStateProperty.all(Colors.orange),
                      elevation: MaterialStateProperty.all(5),
                      //side: MaterialStateProperty.all(const BorderSide(color: Colors.blue)),
                      shape: MaterialStateProperty.all(
                          RoundedRectangleBorder(borderRadius: BorderRadius.circular(20))
                      ),
                      //overlayColor: MaterialStateProperty.all(Colors.green[100]),
                      fixedSize: MaterialStateProperty.all(const Size.fromHeight(60)),
                      //shadowColor: MaterialStateProperty.all(Colors.blue)
                  ),
                ),
              ],
            ),
            const SizedBox(height: 30,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: <Widget>[
                ElevatedButton(
                  onPressed: () {
                    display('4');
                  },
                  child: const Text("4",style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold),),
                  style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all(Colors.white70),
                      //side: MaterialStateProperty.all(const BorderSide(color: Colors.blue)),
                      foregroundColor: MaterialStateProperty.all(Colors.black),
                      elevation: MaterialStateProperty.all(5),
                      shape: MaterialStateProperty.all(
                          RoundedRectangleBorder(borderRadius: BorderRadius.circular(20))
                      ),
                      //overlayColor: MaterialStateProperty.all(Colors.green[100]),
                      fixedSize: MaterialStateProperty.all(const Size.fromHeight(60)),
                      //shadowColor: MaterialStateProperty.all(Colors.blue)
                  ),
                ),
                ElevatedButton(
                  onPressed: () {
                    display('5');
                  },
                  child: const Text("5",style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold)),
                  style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all(Colors.white70),
                      foregroundColor: MaterialStateProperty.all(Colors.black),
                      //side: MaterialStateProperty.all(const BorderSide(color: Colors.blue)),
                      elevation: MaterialStateProperty.all(5),
                      shape: MaterialStateProperty.all(
                          RoundedRectangleBorder(borderRadius: BorderRadius.circular(20))
                      ),
                      //overlayColor: MaterialStateProperty.all(Colors.green[100]),
                      fixedSize: MaterialStateProperty.all(const Size.fromHeight(60)),
                      //shadowColor: MaterialStateProperty.all(Colors.blue)
                  ),
                ),
                ElevatedButton(
                  onPressed: () {
                    display('6');
                  },
                  child: const Text("6",style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold)),
                  style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all(Colors.white70),
                      foregroundColor: MaterialStateProperty.all(Colors.black),
                      elevation: MaterialStateProperty.all(5),
                      //side: MaterialStateProperty.all(const BorderSide(color: Colors.blue)),
                      shape: MaterialStateProperty.all(
                          RoundedRectangleBorder(borderRadius: BorderRadius.circular(20))
                      ),
                      //overlayColor: MaterialStateProperty.all(Colors.green[100]),
                      fixedSize: MaterialStateProperty.all(const Size.fromHeight(60)),
                      //shadowColor: MaterialStateProperty.all(Colors.blue)
                  ),
                ),ElevatedButton(
                  onPressed: () {
                    display('-');
                  },
                  child: const Text("-",style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold)),
                  style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all(Colors.white70),
                      foregroundColor: MaterialStateProperty.all(Colors.orange),
                      elevation: MaterialStateProperty.all(5),
                      //side: MaterialStateProperty.all(const BorderSide(color: Colors.blue)),
                      shape: MaterialStateProperty.all(
                          RoundedRectangleBorder(borderRadius: BorderRadius.circular(20))
                      ),
                      //overlayColor: MaterialStateProperty.all(Colors.green[100]),
                      fixedSize: MaterialStateProperty.all(const Size.fromHeight(60)),
                      //shadowColor: MaterialStateProperty.all(Colors.blue)
                  ),
                ),
              ],
            ),
            const SizedBox(height: 30,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: <Widget>[
                ElevatedButton(
                  onPressed: () {
                    display('1');
                  },
                  child: const Text("1",style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold),),
                  style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all(Colors.white70),
                      //side: MaterialStateProperty.all(const BorderSide(color: Colors.blue)),
                      foregroundColor: MaterialStateProperty.all(Colors.black),
                      elevation: MaterialStateProperty.all(5),
                      shape: MaterialStateProperty.all(
                          RoundedRectangleBorder(borderRadius: BorderRadius.circular(20))
                      ),
                      //overlayColor: MaterialStateProperty.all(Colors.green[100]),
                      fixedSize: MaterialStateProperty.all(const Size.fromHeight(60)),
                      //shadowColor: MaterialStateProperty.all(Colors.blue)
                  ),
                ),
                ElevatedButton(
                  onPressed: () {
                    display('2');
                  },
                  child: const Text("2",style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold)),
                  style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all(Colors.white70),
                      foregroundColor: MaterialStateProperty.all(Colors.black),
                      //side: MaterialStateProperty.all(const BorderSide(color: Colors.blue)),
                      elevation: MaterialStateProperty.all(5),
                      shape: MaterialStateProperty.all(
                          RoundedRectangleBorder(borderRadius: BorderRadius.circular(20))
                      ),
                      //overlayColor: MaterialStateProperty.all(Colors.green[100]),
                      fixedSize: MaterialStateProperty.all(const Size.fromHeight(60)),
                      //shadowColor: MaterialStateProperty.all(Colors.blue)
                  ),
                ),
                ElevatedButton(
                  onPressed: () {
                    display('3');
                  },
                  child: const Text("3",style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold)),
                  style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all(Colors.white70),
                      foregroundColor: MaterialStateProperty.all(Colors.black),
                      elevation: MaterialStateProperty.all(5),
                      //side: MaterialStateProperty.all(const BorderSide(color: Colors.blue)),
                      shape: MaterialStateProperty.all(
                          RoundedRectangleBorder(borderRadius: BorderRadius.circular(20))
                      ),
                      //overlayColor: MaterialStateProperty.all(Colors.green[100]),
                      fixedSize: MaterialStateProperty.all(const Size.fromHeight(60)),
                      //shadowColor: MaterialStateProperty.all(Colors.blue)
                  ),
                ),ElevatedButton(
                  onPressed: () {
                    display('+');
                  },
                  child: const Text("+",style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold)),
                  style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all(Colors.white70),
                      foregroundColor: MaterialStateProperty.all(Colors.orange),
                      elevation: MaterialStateProperty.all(5),
                      //side: MaterialStateProperty.all(const BorderSide(color: Colors.blue)),
                      shape: MaterialStateProperty.all(
                          RoundedRectangleBorder(borderRadius: BorderRadius.circular(20))
                      ),
                      //overlayColor: MaterialStateProperty.all(Colors.green[100]),
                      fixedSize: MaterialStateProperty.all(const Size.fromHeight(60)),
                      //shadowColor: MaterialStateProperty.all(Colors.blue)
                  ),
                ),
              ],
            ),
            const SizedBox(height: 30,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: <Widget>[
                ElevatedButton(
                  onPressed: () {
                    display('0');
                  },
                  child: const Text("0",style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold),),
                  style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all(Colors.white70),
                      //side: MaterialStateProperty.all(const BorderSide(color: Colors.blue)),
                      foregroundColor: MaterialStateProperty.all(Colors.black),
                      elevation: MaterialStateProperty.all(5),
                      shape: MaterialStateProperty.all(
                          RoundedRectangleBorder(borderRadius: BorderRadius.circular(20))
                      ),
                      //overlayColor: MaterialStateProperty.all(Colors.green[100]),
                      fixedSize: MaterialStateProperty.all(const Size.fromHeight(60)),
                      //shadowColor: MaterialStateProperty.all(Colors.blue)
                  ),
                ),
                ElevatedButton(
                  onPressed: () {
                    display('.');
                  },
                  child: const Text(".",style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold)),
                  style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all(Colors.white70),
                      foregroundColor: MaterialStateProperty.all(Colors.black),
                      //side: MaterialStateProperty.all(const BorderSide(color: Colors.blue)),
                      elevation: MaterialStateProperty.all(5),
                      shape: MaterialStateProperty.all(
                          RoundedRectangleBorder(borderRadius: BorderRadius.circular(20))
                      ),
                      //overlayColor: MaterialStateProperty.all(Colors.green[100]),
                      fixedSize: MaterialStateProperty.all(const Size.fromHeight(60)),
                      //shadowColor: MaterialStateProperty.all(Colors.blue)
                  ),
                ),
                ElevatedButton(
                  onPressed: () {
                    display('+/-');
                  },
                  child: const Text("±",style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold)),
                  style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all(Colors.white70),
                      foregroundColor: MaterialStateProperty.all(Colors.black),
                      elevation: MaterialStateProperty.all(5),
                      //side: MaterialStateProperty.all(const BorderSide(color: Colors.blue)),
                      shape: MaterialStateProperty.all(
                          RoundedRectangleBorder(borderRadius: BorderRadius.circular(20))
                      ),
                      //overlayColor: MaterialStateProperty.all(Colors.green[100]),
                      fixedSize: MaterialStateProperty.all(const Size.fromHeight(60)),
                      //shadowColor: MaterialStateProperty.all(Colors.blue)
                  ),
                ),ElevatedButton(
                  onPressed: () {
                    display('=');
                  },
                  child: const Text("=",style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold)),
                  style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all(Colors.white70),
                      foregroundColor: MaterialStateProperty.all(Colors.orange),
                      elevation: MaterialStateProperty.all(5),
                      //side: MaterialStateProperty.all(const BorderSide(color: Colors.blue)),
                      shape: MaterialStateProperty.all(
                          RoundedRectangleBorder(borderRadius: BorderRadius.circular(20))
                      ),
                      overlayColor: MaterialStateProperty.all(Colors.green[100]),
                      fixedSize: MaterialStateProperty.all(const Size.fromHeight(60)),
                      //shadowColor: MaterialStateProperty.all(Colors.blue)
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
