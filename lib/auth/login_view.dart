import 'package:flutter/material.dart';
import 'package:unicons/unicons.dart';

class LoginView extends StatelessWidget {
  const LoginView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: SafeArea(
          child: ListView(padding: EdgeInsets.all(16), children: [
        Image.asset(
          'assets/unnamed.png',
          height: 40,
          width: 140,
        ),
        const SizedBox(height: 10),
        TextFormField(
          keyboardType: TextInputType.emailAddress,
          decoration: const InputDecoration(label: Text('E-mail')),
        ),
        const SizedBox(
          height: 15,
        ),
        TextFormField(
          keyboardType: TextInputType.visiblePassword,
          decoration: InputDecoration(label: Text('Password')),
        ),
        SizedBox(
          height: 15,
        ),
        Align(
          alignment: Alignment.centerRight,
          child: TextButton(
              onPressed: () {},
              child: Text(
                'forgot password?',
                style: TextStyle(color: Colors.grey),
              )),
        ),
        TextButton(
            onPressed: () {},
            child: Text('Login',
                style: Theme.of(context).textTheme.bodyText1!.copyWith(
                    color:
                        Theme.of(context).buttonTheme.colorScheme!.background)),
            style: TextButton.styleFrom(
                backgroundColor:
                    Theme.of(context).buttonTheme.colorScheme!.primary)),
        Align(
            alignment: Alignment.centerRight,
            child: TextButton(
              onPressed: () {},
              child:
                  Text('create account', style: TextStyle(color: Colors.grey)),
            )),
      ])),
    );
  }
}
