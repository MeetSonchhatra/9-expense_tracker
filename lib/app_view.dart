import 'package:expense_repository/expense_repository.dart';
import 'package:expense_tracker/screens/home/blocs/get_expenses_bloc/get_expenses_bloc.dart';
import 'package:expense_tracker/screens/home/views/HomeScreen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class AppView extends StatelessWidget {
  const AppView({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Expense Tracker ",
      theme: ThemeData(
        colorScheme: ColorScheme.light(
            background: Colors.grey.shade100,
            onBackground: Colors.black,
            primary: Color(0xFF00B2E7),
            secondary: Color(0xFFE064F7),
            tertiary: Color(0xFFFF8D6C),
            outline: Colors.grey),
      ),
      home: BlocProvider(
        create: (context) => GetExpensesBloc(
          FirebaseExpense()
        )..add(GetExpenses()),
        child: HomeScreen(),
      ),
    );
  }
}
