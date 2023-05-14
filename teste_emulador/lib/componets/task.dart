import 'package:flutter/material.dart';
import 'package:teste_emulador/componets/difficulty.dart';

class Task extends StatefulWidget {
  final String nome; //variavel para nome da tarefa
  final String foto; //variavel para foto da tarefa
  final int dificuldade; //variavel para dificuldade da tarefa

  const Task(this.nome, this.foto, this.dificuldade, {super.key}); // construtor
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
        // Container da tarefa
        child: Stack(children: [
          Container(
            // Container do fundo

            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(8),
              color: Colors.blue,
            ),
            height: 140,
          ),
          Column(
            children: [
              Container(
                // Container do nome
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(4),
                  color: Colors.white,
                ),
                height: 100,

                child: Row(
                  // Row da foto, nome e estrelas
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                        // Container da foto
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(4),
                          color: Colors.black26,
                        ),
                        width: 72,
                        height: 100,
                        child: ClipRRect(
                            // ClipRRect para cortar a imagem e deixar redonda
                            borderRadius: BorderRadius.circular(4),
                            child:
                                Image.network(widget.foto, fit: BoxFit.cover))),
                    Column(
                      //coluna do nome e estrelas
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(
                            // Container do texto
                            width: 200,
                            child: Text(widget.nome,
                                style: const TextStyle(
                                    fontSize: 24,
                                    overflow:
                                        TextOverflow //texto da tarefa - O overflow colocar tres pontos quando nao couber mais
                                            .ellipsis))),
                        Difficulty(
                          dificultyLevel: widget.dificuldade,
                        ),
                      ],
                    ),
                    SizedBox(
                      // Container dos botoes
                      height: 52,
                      width: 52,
                      child: ElevatedButton(
                          onPressed: () {
                            setState(() {
                              // Diz quem esta mudando, fica de olho
                              nivel++;
                            });
                            //print(nivel);
                          },
                          child: const Icon(Icons.arrow_drop_up)),
                    )
                  ],
                ),
              ),
              Row(
                // Row da barra de progresso
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8),
                    child: Container(
                      child: LinearProgressIndicator(
                        // Barra de progresso
                        color: Colors.white,
                        value: (widget.dificuldade > 0)
                            ? (nivel / widget.dificuldade) / 10
                            : 1, // Nivel grafico da barra muda de acordo com o numero
                      ),
                      width: 200,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text('Nivel: $nivel',
                        style:
                            const TextStyle(color: Colors.white, fontSize: 16)),
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
