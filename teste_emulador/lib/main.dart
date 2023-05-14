import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Scaffold(
          appBar: AppBar(
            title: Text('Tarefas'),
          ),
          body: ListView(children: [
            Task('Aprender Flutter ssssssssssssssssssssssssssssssss ssssss'),
            Task('Andar de Bike'),
            Task('Meditar'),
            Task('Meditar'),
            Task('Meditar'),
            Task('Meditar'),
            Task('Meditar'),
          ]),
          floatingActionButton: FloatingActionButton(onPressed: () {})),
    );
  }
}

// ------ STATELESS WIDGET -------

class Task extends StatefulWidget {
  final String nome; //variavel para nome da tarefa
  const Task(this.nome, {super.key});
  @override
  State<Task> createState() => _TaskState();
}

class _TaskState extends State<Task> {
  //Constructor
  int nivel = 0; // variavel para mudar o valor de nivel
  @override
  Widget build(BuildContext context) {
    // tudo da Bild será reescrito

    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        child: Stack(children: [
          Container(
            color: Colors.blue,
            height: 140,
          ),
          Column(
            children: [
              Container(
                color: Colors.white,
                height: 100,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      color: Colors.black26,
                      width: 72,
                      height: 100,
                    ),
                    Container(
                        // Container do texto

                        width: 200,
                        child: Text(widget.nome,
                            style: TextStyle(
                                fontSize: 24,
                                overflow:
                                    TextOverflow //texto da tarefa - O overflow colocar tres pontos quando nao couber mais
                                        .ellipsis))),
                    ElevatedButton(
                        onPressed: () {
                          setState(() {
                            // Diz quem esta mudando, fica de olho
                            nivel++;
                          });
                          print(nivel);
                        },
                        child: Icon(Icons.arrow_drop_up))
                  ],
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8),
                    child: Container(
                      child: LinearProgressIndicator(
                        // Barra de progresso
                        color: Colors.white,
                        value: nivel /
                            10, // Nivel grafico da barra muda de acordo com o numero
                      ),
                      width: 200,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text('Nivel: $nivel',
                        style: TextStyle(color: Colors.white, fontSize: 16)),
                  ),
                ],
              ),
            ],
          ),
        ]),
      ),
    );
  }
}
