import 'dart:async';
import 'package:flutter/widgets.dart' as widgets;
import 'package:gql/ast.dart';
import 'package:graphql/client.dart' as graphql;
import 'package:graphql_flutter/graphql_flutter.dart' as graphql_flutter;

class Query$GetUsers {
  Query$GetUsers({
    required this.users,
    this.$__typename = 'Query',
  });

  factory Query$GetUsers.fromJson(Map<String, dynamic> json) {
    final l$users = json['users'];
    final l$$__typename = json['__typename'];
    return Query$GetUsers(
      users: (l$users as List<dynamic>)
          .map(
              (e) => Query$GetUsers$users.fromJson((e as Map<String, dynamic>)))
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final List<Query$GetUsers$users> users;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$users = users;
    _resultData['users'] = l$users.map((e) => e.toJson()).toList();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$users = users;
    final l$$__typename = $__typename;
    return Object.hashAll([
      Object.hashAll(l$users.map((v) => v)),
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Query$GetUsers) || runtimeType != other.runtimeType) {
      return false;
    }
    final l$users = users;
    final lOther$users = other.users;
    if (l$users.length != lOther$users.length) {
      return false;
    }
    for (int i = 0; i < l$users.length; i++) {
      final l$users$entry = l$users[i];
      final lOther$users$entry = lOther$users[i];
      if (l$users$entry != lOther$users$entry) {
        return false;
      }
    }
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Query$GetUsers on Query$GetUsers {
  CopyWith$Query$GetUsers<Query$GetUsers> get copyWith =>
      CopyWith$Query$GetUsers(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$GetUsers<TRes> {
  factory CopyWith$Query$GetUsers(
    Query$GetUsers instance,
    TRes Function(Query$GetUsers) then,
  ) = _CopyWithImpl$Query$GetUsers;

  factory CopyWith$Query$GetUsers.stub(TRes res) =
      _CopyWithStubImpl$Query$GetUsers;

  TRes call({
    List<Query$GetUsers$users>? users,
    String? $__typename,
  });
  TRes users(
      Iterable<Query$GetUsers$users> Function(
              Iterable<CopyWith$Query$GetUsers$users<Query$GetUsers$users>>)
          _fn);
}

class _CopyWithImpl$Query$GetUsers<TRes>
    implements CopyWith$Query$GetUsers<TRes> {
  _CopyWithImpl$Query$GetUsers(
    this._instance,
    this._then,
  );

  final Query$GetUsers _instance;

  final TRes Function(Query$GetUsers) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? users = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$GetUsers(
        users: users == _undefined || users == null
            ? _instance.users
            : (users as List<Query$GetUsers$users>),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  TRes users(
          Iterable<Query$GetUsers$users> Function(
                  Iterable<CopyWith$Query$GetUsers$users<Query$GetUsers$users>>)
              _fn) =>
      call(
          users: _fn(_instance.users.map((e) => CopyWith$Query$GetUsers$users(
                e,
                (i) => i,
              ))).toList());
}

class _CopyWithStubImpl$Query$GetUsers<TRes>
    implements CopyWith$Query$GetUsers<TRes> {
  _CopyWithStubImpl$Query$GetUsers(this._res);

  TRes _res;

  call({
    List<Query$GetUsers$users>? users,
    String? $__typename,
  }) =>
      _res;

  users(_fn) => _res;
}

const documentNodeQueryGetUsers = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.query,
    name: NameNode(value: 'GetUsers'),
    variableDefinitions: [],
    directives: [],
    selectionSet: SelectionSetNode(selections: [
      FieldNode(
        name: NameNode(value: 'users'),
        alias: null,
        arguments: [],
        directives: [],
        selectionSet: SelectionSetNode(selections: [
          FieldNode(
            name: NameNode(value: 'id'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'name'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'email'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: '__typename'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
        ]),
      ),
      FieldNode(
        name: NameNode(value: '__typename'),
        alias: null,
        arguments: [],
        directives: [],
        selectionSet: null,
      ),
    ]),
  ),
]);
Query$GetUsers _parserFn$Query$GetUsers(Map<String, dynamic> data) =>
    Query$GetUsers.fromJson(data);
typedef OnQueryComplete$Query$GetUsers = FutureOr<void> Function(
  Map<String, dynamic>?,
  Query$GetUsers?,
);

class Options$Query$GetUsers extends graphql.QueryOptions<Query$GetUsers> {
  Options$Query$GetUsers({
    String? operationName,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Query$GetUsers? typedOptimisticResult,
    Duration? pollInterval,
    graphql.Context? context,
    OnQueryComplete$Query$GetUsers? onComplete,
    graphql.OnQueryError? onError,
  })  : onCompleteWithParsed = onComplete,
        super(
          operationName: operationName,
          fetchPolicy: fetchPolicy,
          errorPolicy: errorPolicy,
          cacheRereadPolicy: cacheRereadPolicy,
          optimisticResult: optimisticResult ?? typedOptimisticResult?.toJson(),
          pollInterval: pollInterval,
          context: context,
          onComplete: onComplete == null
              ? null
              : (data) => onComplete(
                    data,
                    data == null ? null : _parserFn$Query$GetUsers(data),
                  ),
          onError: onError,
          document: documentNodeQueryGetUsers,
          parserFn: _parserFn$Query$GetUsers,
        );

  final OnQueryComplete$Query$GetUsers? onCompleteWithParsed;

  @override
  List<Object?> get properties => [
        ...super.onComplete == null
            ? super.properties
            : super.properties.where((property) => property != onComplete),
        onCompleteWithParsed,
      ];
}

class WatchOptions$Query$GetUsers
    extends graphql.WatchQueryOptions<Query$GetUsers> {
  WatchOptions$Query$GetUsers({
    String? operationName,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Query$GetUsers? typedOptimisticResult,
    graphql.Context? context,
    Duration? pollInterval,
    bool? eagerlyFetchResults,
    bool carryForwardDataOnException = true,
    bool fetchResults = false,
  }) : super(
          operationName: operationName,
          fetchPolicy: fetchPolicy,
          errorPolicy: errorPolicy,
          cacheRereadPolicy: cacheRereadPolicy,
          optimisticResult: optimisticResult ?? typedOptimisticResult?.toJson(),
          context: context,
          document: documentNodeQueryGetUsers,
          pollInterval: pollInterval,
          eagerlyFetchResults: eagerlyFetchResults,
          carryForwardDataOnException: carryForwardDataOnException,
          fetchResults: fetchResults,
          parserFn: _parserFn$Query$GetUsers,
        );
}

class FetchMoreOptions$Query$GetUsers extends graphql.FetchMoreOptions {
  FetchMoreOptions$Query$GetUsers({required graphql.UpdateQuery updateQuery})
      : super(
          updateQuery: updateQuery,
          document: documentNodeQueryGetUsers,
        );
}

extension ClientExtension$Query$GetUsers on graphql.GraphQLClient {
  Future<graphql.QueryResult<Query$GetUsers>> query$GetUsers(
          [Options$Query$GetUsers? options]) async =>
      await this.query(options ?? Options$Query$GetUsers());
  graphql.ObservableQuery<Query$GetUsers> watchQuery$GetUsers(
          [WatchOptions$Query$GetUsers? options]) =>
      this.watchQuery(options ?? WatchOptions$Query$GetUsers());
  void writeQuery$GetUsers({
    required Query$GetUsers data,
    bool broadcast = true,
  }) =>
      this.writeQuery(
        graphql.Request(
            operation: graphql.Operation(document: documentNodeQueryGetUsers)),
        data: data.toJson(),
        broadcast: broadcast,
      );
  Query$GetUsers? readQuery$GetUsers({bool optimistic = true}) {
    final result = this.readQuery(
      graphql.Request(
          operation: graphql.Operation(document: documentNodeQueryGetUsers)),
      optimistic: optimistic,
    );
    return result == null ? null : Query$GetUsers.fromJson(result);
  }
}

graphql_flutter.QueryHookResult<Query$GetUsers> useQuery$GetUsers(
        [Options$Query$GetUsers? options]) =>
    graphql_flutter.useQuery(options ?? Options$Query$GetUsers());
graphql.ObservableQuery<Query$GetUsers> useWatchQuery$GetUsers(
        [WatchOptions$Query$GetUsers? options]) =>
    graphql_flutter.useWatchQuery(options ?? WatchOptions$Query$GetUsers());

class Query$GetUsers$Widget extends graphql_flutter.Query<Query$GetUsers> {
  Query$GetUsers$Widget({
    widgets.Key? key,
    Options$Query$GetUsers? options,
    required graphql_flutter.QueryBuilder<Query$GetUsers> builder,
  }) : super(
          key: key,
          options: options ?? Options$Query$GetUsers(),
          builder: builder,
        );
}

class Query$GetUsers$users {
  Query$GetUsers$users({
    required this.id,
    required this.name,
    required this.email,
    this.$__typename = 'User',
  });

  factory Query$GetUsers$users.fromJson(Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$name = json['name'];
    final l$email = json['email'];
    final l$$__typename = json['__typename'];
    return Query$GetUsers$users(
      id: (l$id as String),
      name: (l$name as String),
      email: (l$email as String),
      $__typename: (l$$__typename as String),
    );
  }

  final String id;

  final String name;

  final String email;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$id = id;
    _resultData['id'] = l$id;
    final l$name = name;
    _resultData['name'] = l$name;
    final l$email = email;
    _resultData['email'] = l$email;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$id = id;
    final l$name = name;
    final l$email = email;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$id,
      l$name,
      l$email,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Query$GetUsers$users) || runtimeType != other.runtimeType) {
      return false;
    }
    final l$id = id;
    final lOther$id = other.id;
    if (l$id != lOther$id) {
      return false;
    }
    final l$name = name;
    final lOther$name = other.name;
    if (l$name != lOther$name) {
      return false;
    }
    final l$email = email;
    final lOther$email = other.email;
    if (l$email != lOther$email) {
      return false;
    }
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Query$GetUsers$users on Query$GetUsers$users {
  CopyWith$Query$GetUsers$users<Query$GetUsers$users> get copyWith =>
      CopyWith$Query$GetUsers$users(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$GetUsers$users<TRes> {
  factory CopyWith$Query$GetUsers$users(
    Query$GetUsers$users instance,
    TRes Function(Query$GetUsers$users) then,
  ) = _CopyWithImpl$Query$GetUsers$users;

  factory CopyWith$Query$GetUsers$users.stub(TRes res) =
      _CopyWithStubImpl$Query$GetUsers$users;

  TRes call({
    String? id,
    String? name,
    String? email,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$GetUsers$users<TRes>
    implements CopyWith$Query$GetUsers$users<TRes> {
  _CopyWithImpl$Query$GetUsers$users(
    this._instance,
    this._then,
  );

  final Query$GetUsers$users _instance;

  final TRes Function(Query$GetUsers$users) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? name = _undefined,
    Object? email = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$GetUsers$users(
        id: id == _undefined || id == null ? _instance.id : (id as String),
        name: name == _undefined || name == null
            ? _instance.name
            : (name as String),
        email: email == _undefined || email == null
            ? _instance.email
            : (email as String),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Query$GetUsers$users<TRes>
    implements CopyWith$Query$GetUsers$users<TRes> {
  _CopyWithStubImpl$Query$GetUsers$users(this._res);

  TRes _res;

  call({
    String? id,
    String? name,
    String? email,
    String? $__typename,
  }) =>
      _res;
}
