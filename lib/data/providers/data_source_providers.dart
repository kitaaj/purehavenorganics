import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:purehavenorganics/domain/repositories/remedy_repository.dart';
import 'package:purehavenorganics/data/repositories/remedy_repository_impl.dart';
import 'package:purehavenorganics/data/datasources/supabase/supabase_remedy_data_source.dart';

final supabaseRemedyDataSourceProvider = Provider<SupabaseRemedyDataSource>((ref) {
  return SupabaseRemedyDataSource();
});

final remedyRepositoryProvider = Provider<RemedyRepository>((ref) {
  final dataSource = ref.watch(supabaseRemedyDataSourceProvider);
  return RemedyRepositoryImpl(dataSource);
});