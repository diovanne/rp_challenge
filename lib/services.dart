import 'dart:convert';
import 'dart:io';

import "package:flutter/material.dart";
import 'package:http/http.dart' as http;

Future main() async {
  _getalldata();
}

Future _signup() async {
  String _url = 'https://mobile-test.redepos.com.br';
  String _appToken = '7d2d7ab7-3dbd-41af-be24-e1616f6eaf42';

  var _myData = json.encode({
    "apptoken": _appToken,
    "name": "Diovanne_01",
    "password": "D10v4nn3",
    "email": "teste2@redepos.com.br"
  });

  http.Response response =
      await http.post(Uri.parse('$_url/signup'), body: _myData);

  print(response.body);
}

Future _login() async {
  String _url = 'https://mobile-test.redepos.com.br';
  String _appToken = '7d2d7ab7-3dbd-41af-be24-e1616f6eaf42';

  var _myData = json.encode({
    "apptoken": _appToken,
    "password": "D10v4nn3",
    "email": "teste2@redepos.com.br"
  });

  http.Response response =
      await http.post(Uri.parse('$_url/login'), body: _myData);

  print(response.body);
}

Future _setvalue() async {
  String _url = 'https://mobile-test.redepos.com.br';
  String _appToken = '7d2d7ab7-3dbd-41af-be24-e1616f6eaf42';

  var _myData = json.encode({'key': 'uf', 'value': 'PE'});

  http.Response response = await http.post(Uri.parse('$_url/setvalue'),
      headers: {
        'Token':
            'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJlbWFpbCI6InRlc3RlMkByZWRlcG9zLmNvbS5iciIsImV4cCI6MTY1NzA0MTY0MCwidG9rZW4iOiI3ZDJkN2FiNy0zZGJkLTQxYWYtYmUyNC1lMTYxNmY2ZWFmNDIiLCJ1aWQiOiI0YzEzMDJiNy03NWVhLTQ0ZTktYjgwYy01MTk1NTdlNTY1YjMifQ.JRZaZZPFFK8MAUABgThNfq4IZmsYp3zxgZ4fGUZ33Lc',
        // HttpHeaders.authorizationHeader: 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJlbWFpbCI6InRlc3RlMkByZWRlcG9zLmNvbS5iciIsImV4cCI6MTY1NzA0MTY0MCwidG9rZW4iOiI3ZDJkN2FiNy0zZGJkLTQxYWYtYmUyNC1lMTYxNmY2ZWFmNDIiLCJ1aWQiOiI0YzEzMDJiNy03NWVhLTQ0ZTktYjgwYy01MTk1NTdlNTY1YjMifQ.JRZaZZPFFK8MAUABgThNfq4IZmsYp3zxgZ4fGUZ33Lc',
      },
      body: _myData);

  print(response.statusCode);
  print(response.body);
}

Future _getvalue() async {
  String _url = 'https://mobile-test.redepos.com.br';
  String _appToken = '7d2d7ab7-3dbd-41af-be24-e1616f6eaf42';

  var _myData = json.encode({'key': 'uf'});

  http.Response response = await http.post(Uri.parse('$_url/getvalue'),
      headers: {
        'Token':
            'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJlbWFpbCI6InRlc3RlMkByZWRlcG9zLmNvbS5iciIsImV4cCI6MTY1NzA0MTY0MCwidG9rZW4iOiI3ZDJkN2FiNy0zZGJkLTQxYWYtYmUyNC1lMTYxNmY2ZWFmNDIiLCJ1aWQiOiI0YzEzMDJiNy03NWVhLTQ0ZTktYjgwYy01MTk1NTdlNTY1YjMifQ.JRZaZZPFFK8MAUABgThNfq4IZmsYp3zxgZ4fGUZ33Lc',
        // HttpHeaders.authorizationHeader: 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJlbWFpbCI6InRlc3RlMkByZWRlcG9zLmNvbS5iciIsImV4cCI6MTY1NzA0MTY0MCwidG9rZW4iOiI3ZDJkN2FiNy0zZGJkLTQxYWYtYmUyNC1lMTYxNmY2ZWFmNDIiLCJ1aWQiOiI0YzEzMDJiNy03NWVhLTQ0ZTktYjgwYy01MTk1NTdlNTY1YjMifQ.JRZaZZPFFK8MAUABgThNfq4IZmsYp3zxgZ4fGUZ33Lc',
      },
      body: _myData);

  print(response.statusCode);
  print(response.body);
}

Future _remvalue() async {
  String _url = 'https://mobile-test.redepos.com.br';
  String _appToken = '7d2d7ab7-3dbd-41af-be24-e1616f6eaf42';

  var _myData = json.encode({'key': 'uf'});

  http.Response response = await http.post(Uri.parse('$_url/remvalue'),
      headers: {
        'Token':
            'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJlbWFpbCI6InRlc3RlMkByZWRlcG9zLmNvbS5iciIsImV4cCI6MTY1NzA0MTY0MCwidG9rZW4iOiI3ZDJkN2FiNy0zZGJkLTQxYWYtYmUyNC1lMTYxNmY2ZWFmNDIiLCJ1aWQiOiI0YzEzMDJiNy03NWVhLTQ0ZTktYjgwYy01MTk1NTdlNTY1YjMifQ.JRZaZZPFFK8MAUABgThNfq4IZmsYp3zxgZ4fGUZ33Lc',
        // HttpHeaders.authorizationHeader: 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJlbWFpbCI6InRlc3RlMkByZWRlcG9zLmNvbS5iciIsImV4cCI6MTY1NzA0MTY0MCwidG9rZW4iOiI3ZDJkN2FiNy0zZGJkLTQxYWYtYmUyNC1lMTYxNmY2ZWFmNDIiLCJ1aWQiOiI0YzEzMDJiNy03NWVhLTQ0ZTktYjgwYy01MTk1NTdlNTY1YjMifQ.JRZaZZPFFK8MAUABgThNfq4IZmsYp3zxgZ4fGUZ33Lc',
      },
      body: _myData);

  print(response.statusCode);
  print(response.body);
}

Future _getalldata() async {
  String _url = 'https://mobile-test.redepos.com.br';
  String _appToken = '7d2d7ab7-3dbd-41af-be24-e1616f6eaf42';

  var _myData = json.encode({
    "name": "Diovanne_01",
    "password": "D10v4nn3",
    "email": "teste2@redepos.com.br",
    'key': 'uf',
    'value': 'PE'
  });

  http.Response response = await http.post(Uri.parse('$_url/getalldata'),
      headers: {
        'Token':
            'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJlbWFpbCI6InRlc3RlMkByZWRlcG9zLmNvbS5iciIsImV4cCI6MTY1NzA0MTY0MCwidG9rZW4iOiI3ZDJkN2FiNy0zZGJkLTQxYWYtYmUyNC1lMTYxNmY2ZWFmNDIiLCJ1aWQiOiI0YzEzMDJiNy03NWVhLTQ0ZTktYjgwYy01MTk1NTdlNTY1YjMifQ.JRZaZZPFFK8MAUABgThNfq4IZmsYp3zxgZ4fGUZ33Lc',
        // HttpHeaders.authorizationHeader: 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJlbWFpbCI6InRlc3RlMkByZWRlcG9zLmNvbS5iciIsImV4cCI6MTY1NzA0MTY0MCwidG9rZW4iOiI3ZDJkN2FiNy0zZGJkLTQxYWYtYmUyNC1lMTYxNmY2ZWFmNDIiLCJ1aWQiOiI0YzEzMDJiNy03NWVhLTQ0ZTktYjgwYy01MTk1NTdlNTY1YjMifQ.JRZaZZPFFK8MAUABgThNfq4IZmsYp3zxgZ4fGUZ33Lc',
      },
      body: _myData);

  print(response.statusCode);
  print(response.body);
}
