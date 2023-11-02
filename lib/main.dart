   import 'package:flutter/material.dart';
   import 'package:flutter_bloc/flutter_bloc.dart';
   import 'package:contract_management_app/bloc/contract_bloc.dart';
   import 'package:contract_management_app/bloc/user_bloc.dart';
   import 'package:contract_management_app/screens/home_screen.dart';

   void main() {
     runApp(
       MultiBlocProvider(
         providers: [
           BlocProvider<ContractBloc>(
             create: (context) => ContractBloc(),
           ),
           BlocProvider<UserBloc>(
             create: (context) => UserBloc(),
           ),
         ],
         child: MaterialApp(
           home: HomeScreen(),
         ),
       ),
     );
   }