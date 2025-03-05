import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:purehavenorganics/domain/entities/remedy.dart';

class RemedyDetailArguments {
  final AsyncValue<Remedy>? asyncRemedy;
  final Remedy? directRemedy;

  RemedyDetailArguments.fromAsync(AsyncValue<Remedy> remedy)
      : asyncRemedy = remedy,
        directRemedy = null;

  RemedyDetailArguments.fromRemedy(Remedy remedy)
      : directRemedy = remedy,
        asyncRemedy = null;
}