import 'package:app_cirio/components/widget_bottomBar.dart';
import 'package:app_cirio/components/widget_buttom.dart';
import 'package:app_cirio/components/widget_msg.dart';
import 'package:app_cirio/components/widget_titulo.dart';
import 'package:app_cirio/components/widget_topbar.dart';
import 'package:app_cirio/paginas/pagina_home.dart';
import 'package:flutter/material.dart';

class PaginoMensagemSistemaCad extends StatelessWidget {
  const PaginoMensagemSistemaCad({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          backgroundColor: Color(0xffEBE9EC),
          body: Column(
            children: [
              Widgettopbar(),
              Expanded(
                  child: Container(
                      width: MediaQuery.of(context).size.width * 1,
                      // ignore: prefer_const_constructors
                      child: SingleChildScrollView(
                          // ignore: prefer_const_constructors
                          child: Column(children: [
                        // =============================================
                        WidgetTitulo(titulo: 'MENSAGEM SISTEMA'),
                        WidgetMensagemSis(
                          MensagemSis:
                              'Cadastro efetuado com SUCESSO! \n O que deseja fazer?',
                        ),
                        Widgetbuttom(
                          titulo: 'Cad Novamente',
                          onTap: () => {Navigator.of(context).pop()},
                        ),
                        Widgetbuttom(
                          titulo: 'Ir ara o menu',
                          marginTop: 0,
                          onTap: () => {
                            Navigator.of(context).pushReplacement(
                                MaterialPageRoute(
                                    builder: (context) => PaginoHome()))
                          },
                        ),
                        // =============================================
                      ])))),
              Widgetbottom()
            ],
          )),
    );
  }
}