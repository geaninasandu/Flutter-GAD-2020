// GENERATED CODE - DO NOT MODIFY BY HAND

part of url;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<Url> _$urlSerializer = new _$UrlSerializer();

class _$UrlSerializer implements StructuredSerializer<Url> {
  @override
  final Iterable<Type> types = const [Url, _$Url];
  @override
  final String wireName = 'Url';

  @override
  Iterable<Object> serialize(Serializers serializers, Url object, {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[
      'regular',
      serializers.serialize(object.regular, specifiedType: const FullType(String)),
    ];

    return result;
  }

  @override
  Url deserialize(Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new UrlBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'regular':
          result.regular = serializers.deserialize(value, specifiedType: const FullType(String)) as String;
          break;
      }
    }

    return result.build();
  }
}

class _$Url extends Url {
  @override
  final String regular;

  factory _$Url([void Function(UrlBuilder) updates]) => (new UrlBuilder()..update(updates)).build();

  _$Url._({this.regular}) : super._() {
    if (regular == null) {
      throw new BuiltValueNullFieldError('Url', 'regular');
    }
  }

  @override
  Url rebuild(void Function(UrlBuilder) updates) => (toBuilder()..update(updates)).build();

  @override
  UrlBuilder toBuilder() => new UrlBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Url && regular == other.regular;
  }

  @override
  int get hashCode {
    return $jf($jc(0, regular.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('Url')..add('regular', regular)).toString();
  }
}

class UrlBuilder implements Builder<Url, UrlBuilder> {
  _$Url _$v;

  String _regular;

  String get regular => _$this._regular;

  set regular(String regular) => _$this._regular = regular;

  UrlBuilder();

  UrlBuilder get _$this {
    if (_$v != null) {
      _regular = _$v.regular;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Url other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$Url;
  }

  @override
  void update(void Function(UrlBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$Url build() {
    final _$result = _$v ?? new _$Url._(regular: regular);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
