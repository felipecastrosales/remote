import 'package:flutter/material.dart';
import 'package:remote/src/features/home/presentation/widgets/widgets.dart';

sealed class ServicesItems {
  static final values = [
    const ServiceWidgetTile(
      icon: Icons.pix,
      title: 'Pix',
    ),
    const ServiceWidgetTile(
      icon: Icons.qr_code,
      title: 'Pagar',
    ),
    const ServiceWidgetTile(
      icon: Icons.handshake,
      title: 'Pegar Emprestado',
    ),
    const ServiceWidgetTile(
      icon: Icons.monetization_on_outlined,
      title: 'Trasferir',
    ),
    const ServiceWidgetTile(
      icon: Icons.phone_iphone_outlined,
      title: 'Recarga de Celular',
    ),
    const ServiceWidgetTile(
      icon: Icons.attach_money_outlined,
      title: 'Investir',
    ),
    const ServiceWidgetTile(
      icon: Icons.money_outlined,
      title: 'Depositar',
    ),
    const ServiceWidgetTile(
      icon: Icons.local_offer_outlined,
      title: 'Ofertas Inéditas',
    ),
  ];
}
