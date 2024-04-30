import 'package:bookly/core/utils/api_service.dart';
import 'package:bookly/features/home/presentation/views/widgets/home_view_body.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../data/repos/home_repo_impl.dart';
import '../manger/feature_books_cubit/feature_books_cubit.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: BlocProvider(
        create: (context) => FeatureBooksCubit(
      HomeRepoImpl(ApiService(Dio())))..fetchFeaturedBooks(),
      child: HomeViewBody(),
      ),
    );
  }
}