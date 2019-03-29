import 'package:flutter/material.dart';
import '../blocs/bloc.dart';

class LoginScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(20.0),
      child: Column(
        children: <Widget>[
          emailField(),
          passField(),
          SizedBox(
            height: 20.0,
          ),
          submitButton(),
        ],
      ),
    );
  }

  Widget emailField() {
    return StreamBuilder(
      stream: bloc.email,
      builder: (context, snapshot){
        return TextField(
          onChanged: bloc.changeEmail,
          keyboardType: TextInputType.emailAddress,
          decoration: InputDecoration(
            hintText: 'correo@example.com',
            labelText: 'correo electronico',
              errorText: snapshot.error),
        );
      }
    );


  }

  Widget passField() {
    return StreamBuilder(
      stream: bloc.password,
      builder: (context,snapshot){
        return TextField(
          onChanged: bloc.changePassword,
            obscureText: true,
            decoration:
            InputDecoration(hintText: 'contraseña',
                labelText: 'contraseña',
            errorText: snapshot.error));
      }
    );

  }

  Widget submitButton() {
    return StreamBuilder(
      stream: bloc.submitValid,
      builder: (context, snapshot){
        return RaisedButton(
          shape: StadiumBorder(),

          child: Text(
            'login',
            style: TextStyle(color: Colors.white),
          ),
          color: Colors.lightBlue,
          onPressed: snapshot.hasData ? bloc.submit : null,
        );
      }
    );

  }
}
