import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
import '../layout.dart';

class LoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // qdo o viewInsets for diferent de zero, significa que o teclado está abero
    // assim pode-se fazer uma lógica para esconder algum elemento da tela.
    var tecladoAberto = MediaQuery.of(context).viewInsets.bottom != 0;

    return Layout.render(
      fab: FloatingActionButton(
        onPressed: () => null,
        child: Text('R'),
      ),
      content: Column(
        mainAxisSize: MainAxisSize.max,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          tecladoAberto
              ? SizedBox()
              : Expanded(
                  flex: 1,
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Icon(FontAwesomeIcons.pepperHot,
                          color: Color(0xFF7540EE)),
                      SizedBox(width: 10),
                      Text(
                        'Delivery Thizer',
                        style: TextStyle(
                          fontSize: 18,
                          fontStyle: FontStyle.italic,
                          color: Color(0xFF7540EE),
                        ),
                      )
                    ],
                  ),
                ),
          Expanded(
            flex: 4,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Bem-vindo cowboy!',
                  style: TextStyle(
                    color: Color(0xFF25265E),
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(height: 20),
                Text(
                  'Informe seus dados de acesso para entrar no aplicativo',
                  style: TextStyle(
                    color: Color(0xFF787993),
                    fontStyle: FontStyle.italic,
                  ),
                ),
                SizedBox(height: 20),
                TextFormField(
                  decoration: InputDecoration(
                    hintText: 'E-mail',
                    hintStyle: TextStyle(
                      fontSize: 16,
                      color: Color(0xFF787993),
                      fontStyle: FontStyle.italic,
                    ),
                    enabledBorder: UnderlineInputBorder(
                      borderSide: BorderSide(
                        color: Color(0xFF787993),
                      ),
                    ),
                    focusedBorder: UnderlineInputBorder(
                      borderSide: BorderSide(
                        color: Color(0xFFDFDFE4),
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 10),
                TextFormField(
                  decoration: InputDecoration(
                    hintText: 'Senha',
                    hintStyle: TextStyle(
                      fontSize: 16,
                      color: Color(0xFF787993),
                      fontStyle: FontStyle.italic,
                    ),
                    enabledBorder: UnderlineInputBorder(
                      borderSide: BorderSide(
                        color: Color(0xFF787993),
                      ),
                    ),
                    focusedBorder: UnderlineInputBorder(
                      borderSide: BorderSide(
                        color: Color(0xFFDFDFE4),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            flex: 1,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                FlatButton(
                  onPressed: () => Get.toNamed('/counter'),
                  child: Text('Entrar',
                      style: TextStyle(
                        color: Color(0xFF7540EE),
                        fontWeight: FontWeight.bold,
                      )),
                  color: Color(0xFF7540EE).withOpacity(.2),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(25),
                  ),
                ),
                Text(
                  'Esqueceu a senha?',
                  style: TextStyle(
                      color: Color(0xFF7540EE), fontStyle: FontStyle.italic),
                ),
              ],
            ),
          ),
          Expanded(
            flex: 1,
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Text(
                  'Ainda não tem uma conta?',
                  style: TextStyle(
                    color: Color(0xFF787993),
                    fontStyle: FontStyle.italic,
                  ),
                ),
                Text(
                  'Criar uma conta?',
                  style: TextStyle(
                    color: Color(0xFFFF7052),
                    fontStyle: FontStyle.italic,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
