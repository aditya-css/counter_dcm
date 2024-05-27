import 'package:flutter/material.dart';

class BadFlutterExample extends StatefulWidget {
  @override
  State<BadFlutterExample> createState() => _BadFlutterExampleState();
}

class _BadFlutterExampleState extends State<BadFlutterExample> {
  // Many parameters
  void doSomething(int a, int b, int c, int d, int e) {
    if (e > 100) return;
    if (a > 0) {
      if (b > 0) {
        if (c > 0) {
          if (d > 0) {
            print('All positive');
          } else {
            print('d is not positive');
          }
        } else {
          print('c is not positive');
        }
      } else {
        print('b is not positive');
      }
    } else {
      print('a is not positive');
    }
  }

  void method1() {
    print('method1');
  }

  void method2() {
    print('method2');
  }

  void method3() {
    print('method3');
  }

  void method4() {
    print('method4');
  }

  void method5() {
    print('method5');
  }

  void method6() {
    print('method6');
  }

  void method7() {
    print('method7');
  }

  void method8() {
    print('method8');
  }

  void method9() {
    print('method9');
  }

  void method10() {
    print('method10');
  }

  void complexMethod() {
    doSomething(1, 2, 3, 4, 5);
    method1();
    method2();
    method3();
    method4();
    method5();
    method6();
    method7();
    method8();
    method9();
    method10();
    doSomething(1, 2, 3, 4, 5);
    doSomething(1, 2, 3, 4, 5);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Bad Flutter Example'),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            for (int i = 0; i < 10; i++)
              Container(
                margin: EdgeInsets.all(10),
                child: Column(
                  children: [
                    Row(
                      children: [
                        Text('Item $i'),
                        Icon(Icons.star),
                        ElevatedButton(
                          onPressed: () {},
                          child: Text('Button $i'),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            Text('Counter: 0'),
            ElevatedButton(
              onPressed: () {
                complexMethod();
              },
              child: Text('Do Something'),
            ),
            for (int i = 0; i < 10; i++)
              Container(
                margin: EdgeInsets.all(10),
                child: Column(
                  children: [
                    Row(
                      children: [
                        Text('Item $i'),
                        Icon(Icons.star),
                        ElevatedButton(
                          onPressed: () {},
                          child: Text('Button $i'),
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

  void testMethod() {
    method1();
    method2();
    method3();
    method4();
    method5();
  }
}
