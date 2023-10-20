// router.dart
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:whatsappclone/features/auth/presentation/login_page.dart';

final goRouter = GoRouter(
  routes: [
    GoRoute(
        path: '/',
        pageBuilder: (context, state) =>
            const MaterialPage(child: LoginPage())),
  ],
);
