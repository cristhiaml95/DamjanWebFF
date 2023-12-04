import '../database.dart';

class TestTable extends SupabaseTable<TestRow> {
  @override
  String get tableName => 'test';

  @override
  TestRow createRow(Map<String, dynamic> data) => TestRow(data);
}

class TestRow extends SupabaseDataRow {
  TestRow(super.data);

  @override
  SupabaseTable get table => TestTable();

  int get id => getField<int>('id')!;
  set id(int value) => setField<int>('id', value);

  DateTime get createdAt => getField<DateTime>('created_at')!;
  set createdAt(DateTime value) => setField<DateTime>('created_at', value);

  int get counter => getField<int>('counter')!;
  set counter(int value) => setField<int>('counter', value);

  int get ga => getField<int>('ga')!;
  set ga(int value) => setField<int>('ga', value);

  String? get text => getField<String>('text');
  set text(String? value) => setField<String>('text', value);
}
