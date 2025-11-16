import 'package:cubitbloc/todo/todo_cubit.dart';
import 'package:cubitbloc/todo/todo_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class TodoScreen extends StatelessWidget {
  const TodoScreen({super.key});

  @override
  Widget build(BuildContext context) {
    TextEditingController note = TextEditingController();
    return BlocProvider(
      create: (context) => TodoCubit(),
      child: Scaffold(
        appBar: AppBar(
          title: Text(
            'ToDo List',
            style: Theme.of(context).textTheme.titleLarge,
          ),
          centerTitle: true,
        ),
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: BlocBuilder<TodoCubit, List<Todo>>(
            builder: (context, state) {
              return Column(
                //mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Row(
                    children: [
                      Expanded(
                        child: TextField(
                          decoration: InputDecoration(
                            hint: Text('Add New Note'),
                          ),
                          controller: note,
                        ),
                      ),
                      IconButton(
                        onPressed: () {
                          context.read<TodoCubit>().addNote(note.text);
                          note.clear();
                        },
                        icon: Icon(Icons.add),
                      ),
                    ],
                  ),

                  SizedBox(height: 20),

                  Expanded(
                    child: ListView.builder(
                      itemCount: state.length,
                      itemBuilder: (context, index) {
                        return Row(
                          children: [
                            Checkbox(
                              value: state[index].done,
                              onChanged: (value) {
                                context.read<TodoCubit>().toggle(index, value!);
                              },
                            ),
                            Expanded(child: Text(state[index].title)),
                            IconButton(
                              onPressed: state[index].done
                                  ? () {
                                      context.read<TodoCubit>().deleteNote(
                                        index,
                                      );
                                    }
                                  : null,

                              icon: Icon(
                                Icons.delete,
                                color: state[index].done
                                    ? Colors.red
                                    : Theme.of(context).disabledColor,
                              ),
                            ),
                          ],
                        );
                      },
                    ),
                  ),
                ],
              );
            },
          ),
        ),
      ),
    );
  }
}
