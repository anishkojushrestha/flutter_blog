import 'package:auto_route/auto_route.dart';
import 'package:blog/config/constants/my_colors.dart';
import 'package:blog/features/blog/data/repositories/repository.dart';
import 'package:blog/features/blog/data/repositories/tags_repo.dart';
import 'package:blog/features/blog/presentation/screens/tags/tags_model.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_feather_icons/flutter_feather_icons.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:i18n_extension/i18n_extension.dart';
import 'package:velocity_bloc/cubit/velocity_cubit/velocity_cubit.dart';
import 'package:velocity_x/velocity_x.dart';

part 'tags.dart';
part 'tags.i18n.dart';
part 'tags_view_model.dart';
