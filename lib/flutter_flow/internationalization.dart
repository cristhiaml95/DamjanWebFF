import 'package:flutter/material.dart';
import 'package:flutter/foundation.dart';
import 'package:shared_preferences/shared_preferences.dart';

const _kLocaleStorageKey = '__locale_key__';

class FFLocalizations {
  FFLocalizations(this.locale);

  final Locale locale;

  static FFLocalizations of(BuildContext context) =>
      Localizations.of<FFLocalizations>(context, FFLocalizations)!;

  static List<String> languages() => ['en', 'sl', 'es'];

  static late SharedPreferences _prefs;
  static Future initialize() async =>
      _prefs = await SharedPreferences.getInstance();
  static Future storeLocale(String locale) =>
      _prefs.setString(_kLocaleStorageKey, locale);
  static Locale? getStoredLocale() {
    final locale = _prefs.getString(_kLocaleStorageKey);
    return locale != null && locale.isNotEmpty ? createLocale(locale) : null;
  }

  String get languageCode => locale.toString();
  String? get languageShortCode =>
      _languagesWithShortCode.contains(locale.toString())
          ? '${locale.toString()}_short'
          : null;
  int get languageIndex => languages().contains(languageCode)
      ? languages().indexOf(languageCode)
      : 0;

  String getText(String key) =>
      (kTranslationsMap[key] ?? {})[locale.toString()] ?? '';

  String getVariableText({
    String? enText = '',
    String? slText = '',
    String? esText = '',
  }) =>
      [enText, slText, esText][languageIndex] ?? '';

  static const Set<String> _languagesWithShortCode = {
    'ar',
    'az',
    'ca',
    'cs',
    'da',
    'de',
    'dv',
    'en',
    'es',
    'et',
    'fi',
    'fr',
    'gr',
    'he',
    'hi',
    'hu',
    'it',
    'km',
    'ku',
    'mn',
    'ms',
    'no',
    'pt',
    'ro',
    'ru',
    'rw',
    'sv',
    'th',
    'uk',
    'vi',
  };
}

class FFLocalizationsDelegate extends LocalizationsDelegate<FFLocalizations> {
  const FFLocalizationsDelegate();

  @override
  bool isSupported(Locale locale) {
    final language = locale.toString();
    return FFLocalizations.languages().contains(
      language.endsWith('_')
          ? language.substring(0, language.length - 1)
          : language,
    );
  }

  @override
  Future<FFLocalizations> load(Locale locale) =>
      SynchronousFuture<FFLocalizations>(FFLocalizations(locale));

  @override
  bool shouldReload(FFLocalizationsDelegate old) => false;
}

Locale createLocale(String language) => language.contains('_')
    ? Locale.fromSubtags(
        languageCode: language.split('_').first,
        scriptCode: language.split('_').last,
      )
    : Locale(language);

final kTranslationsMap = <Map<String, Map<String, String>>>[
  // create_account
  {
    'hma5gxno': {
      'en': 'Trampuž warehouse',
      'es': 'Almacén Trampuž',
      'sl': 'Skladišče Trampuž',
    },
    'h4z0a3z3': {
      'en': 'Create an account',
      'es': 'Crea una cuenta',
      'sl': 'Ustvari račun',
    },
    'vyc1ujqk': {
      'en': 'Let\'s get started by filling out the form below.',
      'es': 'Comencemos completando el formulario a continuación.',
      'sl': 'Začnimo z izpolnitvijo spodnjega obrazca.',
    },
    '86s8kzxx': {
      'en': 'Name',
      'es': 'Nombre',
      'sl': 'Ime',
    },
    'iirmn0zw': {
      'en': 'Last name',
      'es': 'Apellido',
      'sl': 'Priimek',
    },
    '99r8wugx': {
      'en': 'administrator',
      'es': 'administrador',
      'sl': 'skrbnik',
    },
    'jw8uoqy2': {
      'en': 'employee',
      'es': 'empleado',
      'sl': 'zaposleni',
    },
    '889gd7ck': {
      'en': 'User type',
      'es': 'Tipo de usuario',
      'sl': 'Vrsta uporabnika',
    },
    '2is4mjzb': {
      'en': 'Search for an item...',
      'es': 'Buscar un artículo...',
      'sl': 'Iskanje predmeta ...',
    },
    'dqqkgfoq': {
      'en': 'active',
      'es': 'activo',
      'sl': 'aktivna',
    },
    'kgxxej2s': {
      'en': 'inactive',
      'es': 'inactivo',
      'sl': 'neaktiven',
    },
    'ui7rta8c': {
      'en': 'Status',
      'es': 'Estado',
      'sl': 'Stanje',
    },
    'txcpsr93': {
      'en': 'Search for an item...',
      'es': 'Buscar un artículo...',
      'sl': 'Iskanje predmeta ...',
    },
    '617idpiw': {
      'en': 'Photo',
      'es': 'Foto',
      'sl': 'Fotografija',
    },
    'ec3kgh69': {
      'en': 'Job role',
      'es': 'Puesto de trabajo',
      'sl': 'Delovna vloga',
    },
    'kjxck9ix': {
      'en': 'Email',
      'es': 'Correo electrónico',
      'sl': 'E-naslov',
    },
    '7w95o0si': {
      'en': 'Password',
      'es': 'Contraseña',
      'sl': 'Geslo',
    },
    'oxnb6qlg': {
      'en': 'Confirm Password',
      'es': 'confirmar Contraseña',
      'sl': 'potrdi geslo',
    },
    'e7x3js7r': {
      'en': 'Create Account',
      'es': 'Crear una cuenta',
      'sl': 'Ustvari račun',
    },
    'dpf4qbt5': {
      'en': 'Already have an account? ',
      'es': '¿Ya tienes una cuenta?',
      'sl': 'Že imate račun?',
    },
    '2ugy5uag': {
      'en': '  Sign In here',
      'es': 'Firme aquí',
      'sl': 'Prijavite se tukaj',
    },
    '8b5ekxog': {
      'en': 'Home',
      'es': 'Hogar',
      'sl': 'domov',
    },
  },
  // login
  {
    'wenc2lc7': {
      'en': 'Trampuž warehouse',
      'es': 'Almacén Trampuž',
      'sl': 'Skladišče Trampuž',
    },
    'xbr8v6ey': {
      'en': 'Welcome Back',
      'es': 'Bienvenido de nuevo',
      'sl': 'Dobrodošel nazaj',
    },
    'rs4dwwg2': {
      'en': 'Let\'s get started by filling out the form below.',
      'es': 'Comencemos completando el formulario a continuación.',
      'sl': 'Začnimo z izpolnitvijo spodnjega obrazca.',
    },
    'hw9fduru': {
      'en': 'Email',
      'es': 'Correo electrónico',
      'sl': 'E-naslov',
    },
    'ltkqidid': {
      'en': 'Password',
      'es': 'Contraseña',
      'sl': 'Geslo',
    },
    'ahqc4aox': {
      'en': 'Sign In',
      'es': 'Iniciar sesión',
      'sl': 'Prijava',
    },
    'ptwksbnr': {
      'en': 'Trampuž warehouse',
      'es': 'Almacén Trampuž',
      'sl': 'Skladišče Trampuž',
    },
    'bsw4hd4t': {
      'en': 'Home',
      'es': 'Hogar',
      'sl': 'domov',
    },
  },
  // order_warehouse
  {
    '7l7a8zap': {
      'en': 'Trampuž',
      'es': 'Trampuz',
      'sl': 'Trampuž',
    },
    '6pqsthmd': {
      'en': 'Dashboard',
      'es': 'Panel',
      'sl': 'Nadzorna plošča',
    },
    'ymel3z2o': {
      'en': 'Order warehouse',
      'es': 'Almacén de pedidos',
      'sl': 'Naročite skladišče',
    },
    'zawl9pmf': {
      'en': 'Warehouse 2',
      'es': 'Almacén 2',
      'sl': 'Skladišče 2',
    },
    'yyx4v0h9': {
      'en': 'Calendar',
      'es': 'Calendario',
      'sl': 'Koledar',
    },
    'n56wcqk0': {
      'en': 'Settings',
      'es': 'Ajustes',
      'sl': 'nastavitve',
    },
    'irx1ka9v': {
      'en': 'Users',
      'es': 'Usuarios',
      'sl': 'Uporabniki',
    },
    '0wfwo1y5': {
      'en': 'Explore',
      'es': 'Explorar',
      'sl': 'Raziščite',
    },
    'u8qy2t6t': {
      'en': 'Order warehouse',
      'es': 'Almacén de pedidos',
      'sl': 'Naročite skladišče',
    },
    'o4ob2bw1': {
      'en': 'Movements',
      'es': 'Movimientos',
      'sl': 'Gibanja',
    },
    'ite7542o': {
      'en': 'Below are the details of your inventory movements.',
      'es':
          'A continuación se muestran los detalles de sus movimientos de inventario.',
      'sl': 'Spodaj so podrobnosti o gibanju vašega inventarja.',
    },
    '8hbwbaea': {
      'en': 'Inventory status',
      'es': 'Estado de inventario',
      'sl': 'Stanje zalog',
    },
    '2edqbygl': {
      'en': 'Order No.',
      'es': 'N º de pedido.',
      'sl': 'Številka naročila.',
    },
    'wf2m2don': {
      'en': 'Client',
      'es': 'Cliente',
      'sl': 'Stranka',
    },
    'c21jfo2s': {
      'en': 'Filters',
      'es': 'Filtros',
      'sl': 'Filtri',
    },
    'k6lov7ww': {
      'en': 'Delete',
      'es': 'Borrar',
      'sl': 'Izbriši',
    },
    'evi9in41': {
      'en': 'Edit',
      'es': 'Editar',
      'sl': 'Uredi',
    },
    'hoy7rlp0': {
      'en': 'Details',
      'es': 'Detalles',
      'sl': 'Podrobnosti',
    },
    '08ki9qmp': {
      'en': 'Order No.',
      'es': 'N º de pedido.',
      'sl': 'Številka naročila.',
    },
    'k2cplth5': {
      'en': 'Client',
      'es': 'Cliente',
      'sl': 'Stranka',
    },
    'ytng4kb7': {
      'en': 'Inv. status',
      'es': 'Inv. estado',
      'sl': 'inv. stanje',
    },
    'kfyvik0e': {
      'en': 'Warehouse',
      'es': 'Depósito',
      'sl': 'Skladišče',
    },
    'euposlac': {
      'en': 'Order Status',
      'es': 'Estado del pedido',
      'sl': 'Status naročila',
    },
    'yrwmmxa1': {
      'en': 'Arrival Date',
      'es': 'Fecha de llegada',
      'sl': 'Datum prihoda',
    },
    'k7f1bi40': {
      'en': 'Flow',
      'es': 'Fluir',
      'sl': 'Tok',
    },
    'q98ghyb3': {
      'en': 'Accept',
      'es': 'Aceptación',
      'sl': 'Sprejemanje',
    },
    '7gemkjns': {
      'en': 'Pre-Check',
      'es': 'Pre chequeo',
      'sl': 'Predhodni pregled',
    },
    'xdhsr81b': {
      'en': 'Check',
      'es': 'Controlar',
      'sl': 'Preverite',
    },
    'swktm00b': {
      'en': 'Time (Approx.)',
      'es': 'Tiempo (aprox.)',
      'sl': 'Čas (pribl.)',
    },
    'zdhlxz2c': {
      'en': 'Licence plate No.',
      'es': 'Matrícula No.',
      'sl': 'registrska tablica št.',
    },
    '3or2vo9b': {
      'en': 'Container No.',
      'es': 'No contenedor.',
      'sl': 'posoda št.',
    },
    '9e86gncc': {
      'en': 'Arrival',
      'es': 'Llegada',
      'sl': 'Prihod',
    },
    'qynxxr1g': {
      'en': 'Loading Gate',
      'es': 'Puerta de carga',
      'sl': 'Nakladalna vrata',
    },
    'das11yua': {
      'en': 'Improvement',
      'es': 'Mejora',
      'sl': 'Izboljšava',
    },
    'c42oamsg': {
      'en': 'Weight',
      'es': 'Peso',
      'sl': 'Utež',
    },
    'nm7rvg3g': {
      'en': 'Pallet position',
      'es': 'Posición del palet',
      'sl': 'Položaj palete',
    },
    'md74mm14': {
      'en': 'Universal ref num',
      'es': 'Número de referencia universal',
      'sl': 'Univerzalna refer. št',
    },
    'px9n2shi': {
      'en': 'FMS ref',
      'es': 'referencia FMS',
      'sl': 'FMS ref',
    },
    '7ssq1wt0': {
      'en': 'Load ref/dvh',
      'es': 'Cargar ref/dvh',
      'sl': 'Naloži ref/dvh',
    },
    'f7auursd': {
      'en': 'Customs',
      'es': 'Aduanas',
      'sl': 'Carina',
    },
    'u1hxhkai': {
      'en': 'Comment',
      'es': 'Comentario',
      'sl': 'Komentiraj',
    },
    '4lblqdot': {
      'en': 'Documents',
      'es': 'Documentos',
      'sl': 'Dokumenti',
    },
    '0cj8x94a': {
      'en': 'Damaged mark',
      'es': 'marca dañada',
      'sl': 'Poškodovana oznaka',
    },
    'yy0olh8z': {
      'en': 'Good',
      'es': 'Bien',
      'sl': 'Dobro',
    },
    'kc11ug90': {
      'en': 'Good description',
      'es': 'Buena descripción',
      'sl': 'Dober opis',
    },
    '3hx1j4ve': {
      'en': 'Type of un/upload',
      'es': 'Tipo de descarga/descarga',
      'sl': 'Vrsta razveljavitve/nalaganja',
    },
    '61b0y3sd': {
      'en': 'Type of un/upload 2',
      'es': 'Tipo de descarga/descarga 2',
      'sl': 'Vrsta razveljavitve/nalaganja 2',
    },
    'nz043www': {
      'en': 'Other manipulations',
      'es': 'Otras manipulaciones',
      'sl': 'Druge manipulacije',
    },
    'kevanc7b': {
      'en': 'Responsible',
      'es': 'Responsable',
      'sl': 'Odgovorno',
    },
    'd9yt5wca': {
      'en': 'Assistant 1',
      'es': 'Asistente 1',
      'sl': 'Pomočnik 1',
    },
    'pefrfjgt': {
      'en': 'Assistant 2',
      'es': 'Asistente 2',
      'sl': 'Pomočnik 2',
    },
    'le8vadnw': {
      'en': 'Assistant 3',
      'es': 'Asistente 3',
      'sl': 'Pomočnik 3',
    },
    'j5nsrljy': {
      'en': 'Assistant 4',
      'es': 'Asistente 4',
      'sl': 'Pomočnik 4',
    },
    'kqycjq3b': {
      'en': 'Assistant 5',
      'es': 'Asistente 5',
      'sl': 'Pomočnik 5',
    },
    'nnemixmd': {
      'en': 'Assistant 6',
      'es': 'Asistente 6',
      'sl': 'Pomočnik 6',
    },
    'wbjakyf8': {
      'en': 'Admin name',
      'es': 'Nombre del administrador',
      'sl': 'Ime skrbnika',
    },
    'cozt0vbw': {
      'en': 'Internal ref',
      'es': 'Árbitro interno',
      'sl': 'Notranja ref',
    },
    'xvxnxu1w': {
      'en': 'Internal number - accounting',
      'es': 'Número interno - contabilidad',
      'sl': 'Interna številka - računovodstvo',
    },
    'bdswfq95': {
      'en': 'Packaging',
      'es': 'embalaje',
      'sl': 'Pakiranje',
    },
    'lfus1ju6': {
      'en': 'Loading Gate Sequence',
      'es': 'Secuencia de puerta de carga',
      'sl': 'Zaporedje vrat za nalaganje',
    },
    'et4uj39z': {
      'en': 'Date (order creation)',
      'es': 'Fecha (creación del pedido)',
      'sl': 'Datum (izdelava naročila)',
    },
    's6xvznpq': {
      'en': 'Details',
      'es': 'Detalles',
      'sl': 'Podrobnosti',
    },
    'bv43iyyt': {
      'en': 'Edit',
      'es': 'Editar',
      'sl': 'Uredi',
    },
    'm5coggv4': {
      'en': 'Copy',
      'es': 'Copiar',
      'sl': 'Kopirati',
    },
    '9k3ojd6v': {
      'en': 'Delete',
      'es': 'Borrar',
      'sl': 'Izbriši',
    },
    'gzx8lf20': {
      'en': 'Create new record',
      'es': 'Crear nuevo registro',
      'sl': 'Ustvari nov zapis',
    },
    'nob2p30m': {
      'en': 'Order Details',
      'es': 'Detalles del pedido',
      'sl': 'podrobnosti naročila',
    },
  },
  // users
  {
    '4jqoquse': {
      'en': 'Trampuž',
      'es': 'Trampuz',
      'sl': 'Trampuž',
    },
    '8fwhjzmc': {
      'en': 'Dashboard',
      'es': 'Panel',
      'sl': 'Nadzorna plošča',
    },
    '04dk6qvh': {
      'en': 'Order warehouse',
      'es': 'Almacén de pedidos',
      'sl': 'Naročite skladišče',
    },
    'za21j1f4': {
      'en': 'Warehouse 2',
      'es': 'Almacén 2',
      'sl': 'Skladišče 2',
    },
    'cujche2h': {
      'en': 'Calendar',
      'es': 'Calendario',
      'sl': 'Koledar',
    },
    'e2dey9vb': {
      'en': 'Settings',
      'es': 'Ajustes',
      'sl': 'nastavitve',
    },
    'yib8xul7': {
      'en': 'Users',
      'es': 'Usuarios',
      'sl': 'Uporabniki',
    },
    'xsvkgu9p': {
      'en': 'Explore',
      'es': 'Explorar',
      'sl': 'Raziščite',
    },
    'pww61gn0': {
      'en': 'Users',
      'es': 'Usuarios',
      'sl': 'Uporabniki',
    },
    'dxa0ddlv': {
      'en': 'Users',
      'es': 'Usuarios',
      'sl': 'Uporabniki',
    },
    '0inci51p': {
      'en': 'Create account',
      'es': 'Crear una cuenta',
      'sl': 'Ustvari račun',
    },
    'w3t1ro5y': {
      'en': 'Below are the details of your available users.',
      'es':
          'A continuación se muestran los detalles de sus usuarios disponibles.',
      'sl': 'Spodaj so podrobnosti vaših razpoložljivih uporabnikov.',
    },
    '35m2g51k': {
      'en': 'Id',
      'es': 'Identificación',
      'sl': 'Id',
    },
    '2tbhql7j': {
      'en': 'Created time',
      'es': 'Hora de creación',
      'sl': 'Ustvarjen čas',
    },
    'mh9vrq5g': {
      'en': 'Full name',
      'es': 'Nombre completo',
      'sl': 'Polno ime',
    },
    'mvh0j0ys': {
      'en': 'Email',
      'es': 'Correo electrónico',
      'sl': 'E-naslov',
    },
    '8cvb8jex': {
      'en': 'User type',
      'es': 'Tipo de usuario',
      'sl': 'Vrsta uporabnika',
    },
    '1iu2936f': {
      'en': 'Status',
      'es': 'Estado',
      'sl': 'Stanje',
    },
    'ch5dldsy': {
      'en': 'Job role',
      'es': 'Puesto de trabajo',
      'sl': 'Delovna vloga',
    },
    'dl4ag5nq': {
      'en': 'Password',
      'es': 'Contraseña',
      'sl': 'Geslo',
    },
    '7wv4l9ei': {
      'en': 'Image',
      'es': 'Imagen',
      'sl': 'Slika',
    },
    '4lda3i2a': {
      'en': 'Order Details',
      'es': 'Detalles del pedido',
      'sl': 'podrobnosti naročila',
    },
  },
  // warehouse2
  {
    'c79jd9mp': {
      'en': 'Trampuž',
      'es': 'Trampuz',
      'sl': 'Trampuž',
    },
    'herxqh9m': {
      'en': 'Dashboard',
      'es': 'Panel',
      'sl': 'Nadzorna plošča',
    },
    'q3z2kzhq': {
      'en': 'Order warehouse',
      'es': 'Almacén de pedidos',
      'sl': 'Naročite skladišče',
    },
    '9xz0x26y': {
      'en': 'Warehouse 2',
      'es': 'Almacén 2',
      'sl': 'Skladišče 2',
    },
    'abhnwadp': {
      'en': 'Calendar',
      'es': 'Calendario',
      'sl': 'Koledar',
    },
    'onsxf48i': {
      'en': 'Settings',
      'es': 'Ajustes',
      'sl': 'nastavitve',
    },
    'r8wv2y24': {
      'en': 'Users',
      'es': 'Usuarios',
      'sl': 'Uporabniki',
    },
    '5vf7vs5q': {
      'en': 'Explore',
      'es': 'Explorar',
      'sl': 'Raziščite',
    },
    'uqmisslm': {
      'en': 'Warehouse 2',
      'es': 'Almacén 2',
      'sl': 'Skladišče 2',
    },
    'gewq9u1w': {
      'en': 'Movements',
      'es': 'Movimientos',
      'sl': 'Gibanja',
    },
    'pkwucw9j': {
      'en': 'Below are the details of your inventory movements.',
      'es':
          'A continuación se muestran los detalles de sus movimientos de inventario.',
      'sl': 'Spodaj so podrobnosti o gibanju vašega inventarja.',
    },
    '45gbq0jy': {
      'en': 'Filters',
      'es': 'Filtros',
      'sl': 'Filtri',
    },
    '19nsqd0e': {
      'en': 'Order No.',
      'es': 'N º de pedido.',
      'sl': 'Številka naročila.',
    },
    'xajupuyr': {
      'en': 'Client',
      'es': 'Cliente',
      'sl': 'Stranka',
    },
    'fjjq7lo7': {
      'en': 'Flow',
      'es': 'Fluir',
      'sl': 'Tok',
    },
    'hzmh2cou': {
      'en': 'Date (order creation)',
      'es': 'Fecha (creación del pedido)',
      'sl': 'Datum (izdelava naročila)',
    },
    'yuclsunu': {
      'en': 'Time',
      'es': 'Tiempo',
      'sl': 'Čas',
    },
    'ffjnbn1j': {
      'en': 'Order Status',
      'es': 'Estado del pedido',
      'sl': 'Status naročila',
    },
    'ikswh491': {
      'en': 'Warehouse',
      'es': 'Depósito',
      'sl': 'Skladišče',
    },
    '1g8x5llh': {
      'en': 'Arrival',
      'es': 'Llegada',
      'sl': 'Prihod',
    },
    'u4v7hkwj': {
      'en': 'Loading gate',
      'es': 'Puerta de carga',
      'sl': 'Vrata za nakladanje',
    },
    '9ax39h83': {
      'en': 'Sequence',
      'es': 'Secuencia',
      'sl': 'Zaporedje',
    },
    '6uqt1lkp': {
      'en': 'Start (upload/unload)',
      'es': 'Iniciar (cargar/descargar)',
      'sl': 'Začetek (nalaganje/razlaganje)',
    },
    'kxz5gsqb': {
      'en': 'Licence plate',
      'es': 'Placa de matrícula',
      'sl': 'Registrska tablica',
    },
    'j16l1q0g': {
      'en': 'Admin',
      'es': 'Administración',
      'sl': 'skrbnik',
    },
    'bycd1ifa': {
      'en': 'Details',
      'es': 'Detalles',
      'sl': 'Podrobnosti',
    },
    '92yuvshh': {
      'en': 'Edit',
      'es': 'Editar',
      'sl': 'Uredi',
    },
    'rubsza83': {
      'en': 'Delete',
      'es': 'Borrar',
      'sl': 'Izbriši',
    },
    '3ndo5buw': {
      'en': 'Create new record',
      'es': 'Crear nuevo registro',
      'sl': 'Ustvari nov zapis',
    },
    'b6apkqdm': {
      'en': 'Order Details',
      'es': 'Detalles del pedido',
      'sl': 'podrobnosti naročila',
    },
  },
  // explore
  {
    'jmbjo6gt': {
      'en': 'Trampuž',
      'es': 'Trampuz',
      'sl': 'Trampuž',
    },
    'yp8ed6x3': {
      'en': 'Dashboard',
      'es': 'Panel',
      'sl': 'Nadzorna plošča',
    },
    'kzzdt5g6': {
      'en': 'Order warehouse',
      'es': 'Almacén de pedidos',
      'sl': 'Naročite skladišče',
    },
    '2apulfqc': {
      'en': 'Warehouse 2',
      'es': 'Almacén 2',
      'sl': 'Skladišče 2',
    },
    'fj8bla5j': {
      'en': 'Calendar',
      'es': 'Calendario',
      'sl': 'Koledar',
    },
    'kjn32hsn': {
      'en': 'Settings',
      'es': 'Ajustes',
      'sl': 'nastavitve',
    },
    'xfut7kxz': {
      'en': 'Users',
      'es': 'Usuarios',
      'sl': 'Uporabniki',
    },
    'xzbclzca': {
      'en': 'Explore',
      'es': 'Explorar',
      'sl': 'Raziščite',
    },
    'qn4hiip7': {
      'en': 'Explore',
      'es': 'Explorar',
      'sl': 'Raziščite',
    },
    '70sojiw8': {
      'en': 'Static tables',
      'es': 'tablas estáticas',
      'sl': 'Statične tabele',
    },
    '2qgg50no': {
      'en': 'Below are the details of your static tables.',
      'es': 'A continuación se muestran los detalles de sus tablas estáticas.',
      'sl': 'Spodaj so podrobnosti vaših statičnih tabel.',
    },
    'vxsfzvqg': {
      'en': 'Refresh tables',
      'es': 'Actualizar tablas',
      'sl': 'Osveži tabele',
    },
    '51h0n2ji': {
      'en': 'Warehouses',
      'es': 'Almacenes',
      'sl': 'Skladišča',
    },
    '7edbksh3': {
      'en': 'Warehouse',
      'es': 'Depósito',
      'sl': 'Skladišče',
    },
    'n04rcicr': {
      'en': 'Clients',
      'es': 'Clientela',
      'sl': 'Stranke',
    },
    'kn8z4zmk': {
      'en': 'Client',
      'es': 'Cliente',
      'sl': 'Stranka',
    },
    'nf9pfdmm': {
      'en': 'Address',
      'es': 'DIRECCIÓN',
      'sl': 'Naslov',
    },
    'jj9gq5l5': {
      'en': 'City',
      'es': 'Ciudad',
      'sl': 'Mesto',
    },
    'vo6vujav': {
      'en': 'Country',
      'es': 'País',
      'sl': 'Država',
    },
    '6vbkf8db': {
      'en': 'Name aiss',
      'es': 'nombre aiss',
      'sl': 'Ime aiss',
    },
    'ce3ze44x': {
      'en': 'Vat no',
      'es': 'IVA no',
      'sl': 'DDV št',
    },
    'l681o904': {
      'en': 'Customs',
      'es': 'Aduanas',
      'sl': 'Carina',
    },
    '6al7qlnh': {
      'en': 'Custom',
      'es': 'Costumbre',
      'sl': 'Po meri',
    },
    'qjp3n2kp': {
      'en': 'Goods',
      'es': 'Bienes',
      'sl': 'Blago',
    },
    'f0h08w8g': {
      'en': 'Good',
      'es': 'Bien',
      'sl': 'Dobro',
    },
    'vj3tfbys': {
      'en': 'Good descriptions',
      'es': 'Buenas descripciones',
      'sl': 'Dobri opisi',
    },
    'ulbprri0': {
      'en': 'Good description',
      'es': 'Buena descripción',
      'sl': 'Dober opis',
    },
    'nn518qwk': {
      'en': 'Packagings',
      'es': 'Embalajes',
      'sl': 'Embalaža',
    },
    'tkwn2ymj': {
      'en': 'Packaging',
      'es': 'embalaje',
      'sl': 'Pakiranje',
    },
    'srfb3a9b': {
      'en': 'Abreviation',
      'es': 'Abreviatura',
      'sl': 'Okrajšava',
    },
    'vfgoswxs': {
      'en': 'Manipulations',
      'es': 'Manipulaciones',
      'sl': 'Manipulacije',
    },
    'it5cqdjv': {
      'en': 'Manipulation',
      'es': 'Manipulación',
      'sl': 'Manipulacija',
    },
    'bt0i7sba': {
      'en': 'Order Details',
      'es': 'Detalles del pedido',
      'sl': 'podrobnosti naročila',
    },
  },
  // calendar
  {
    'pccjrsyx': {
      'en': 'Trampuž',
      'es': 'Trampuz',
      'sl': 'Trampuž',
    },
    'e81lwjk0': {
      'en': 'Dashboard',
      'es': 'Panel',
      'sl': 'Nadzorna plošča',
    },
    'r2yzm09a': {
      'en': 'Order warehouse',
      'es': 'Almacén de pedidos',
      'sl': 'Naročite skladišče',
    },
    'dr5xxudp': {
      'en': 'Warehouse 2',
      'es': 'Almacén 2',
      'sl': 'Skladišče 2',
    },
    '38h9lzty': {
      'en': 'Calendar',
      'es': 'Calendario',
      'sl': 'Koledar',
    },
    'z9acdbvy': {
      'en': 'Settings',
      'es': 'Ajustes',
      'sl': 'nastavitve',
    },
    '1fryj9i0': {
      'en': 'Users',
      'es': 'Usuarios',
      'sl': 'Uporabniki',
    },
    'dt3rvtis': {
      'en': 'Explore',
      'es': 'Explorar',
      'sl': 'Raziščite',
    },
    'xi5pl87s': {
      'en': 'Calendar',
      'es': 'Calendario',
      'sl': 'Koledar',
    },
    '081bbeg6': {
      'en': 'Upcoming appointments.',
      'es': 'Próximas citas.',
      'sl': 'Prihajajoči sestanki.',
    },
    '28ou9rxb': {
      'en': 'Below are the details of your nearest scheduled appointments.',
      'es':
          'A continuación se muestran los detalles de sus citas programadas más cercanas.',
      'sl': 'Spodaj so podrobnosti o vaših najbližjih načrtovanih terminih.',
    },
    'e8n2bwae': {
      'en': 'Filters',
      'es': 'Filtros',
      'sl': 'Filtri',
    },
    '8k1v831v': {
      'en': 'Order No.',
      'es': 'N º de pedido.',
      'sl': 'Številka naročila.',
    },
    'i07pnwd1': {
      'en': 'Client',
      'es': 'Cliente',
      'sl': 'Stranka',
    },
    'c994svo9': {
      'en': 'Flow',
      'es': 'Fluir',
      'sl': 'Tok',
    },
    '8pd9kjkx': {
      'en': 'Est. arrival',
      'es': 'Est. llegada',
      'sl': 'Ocena prihod',
    },
    'pjfdjawp': {
      'en': 'Time',
      'es': 'Tiempo',
      'sl': 'Čas',
    },
    'mjolg68s': {
      'en': 'Order Status',
      'es': 'Estado del pedido',
      'sl': 'Status naročila',
    },
    'iy1oa0uv': {
      'en': 'Warehouse',
      'es': 'Depósito',
      'sl': 'Skladišče',
    },
    '25x069df': {
      'en': 'Arrival',
      'es': 'Llegada',
      'sl': 'Prihod',
    },
    'm7itzwyk': {
      'en': 'Loading gate',
      'es': 'Puerta de carga',
      'sl': 'Vrata za nakladanje',
    },
    '5oopip42': {
      'en': 'Sequence',
      'es': 'Secuencia',
      'sl': 'Zaporedje',
    },
    'w9iza2b6': {
      'en': 'Start (upload/unload)',
      'es': 'Iniciar (cargar/descargar)',
      'sl': 'Začetek (nalaganje/razlaganje)',
    },
    'yjkrmrn1': {
      'en': 'Licence plate',
      'es': 'Placa de matrícula',
      'sl': 'Registrska tablica',
    },
    'wq7iyvdj': {
      'en': 'Admin',
      'es': 'Administración',
      'sl': 'skrbnik',
    },
    'see4u4qz': {
      'en': 'Details',
      'es': 'Detalles',
      'sl': 'Podrobnosti',
    },
    'wi2olmv0': {
      'en': 'Edit',
      'es': 'Editar',
      'sl': 'Uredi',
    },
    'f5aue5xv': {
      'en': 'Delete',
      'es': 'Borrar',
      'sl': 'Izbriši',
    },
    'yhjdd217': {
      'en': 'Order Details',
      'es': 'Detalles del pedido',
      'sl': 'podrobnosti naročila',
    },
  },
  // details
  {
    'ej3c0qzx': {
      'en': 'Details',
      'es': 'Detalles',
      'sl': 'Podrobnosti',
    },
    'n91zm2rr': {
      'en': 'Orden No:',
      'es': 'Número de orden:',
      'sl': 'Naročilna št.:',
    },
    '719rj85w': {
      'en': 'Option 1',
      'es': '',
      'sl': '',
    },
    'pyz0k5rt': {
      'en': 'Select barcode...',
      'es': '',
      'sl': '',
    },
    '34nyg3g4': {
      'en': 'Search for an item...',
      'es': '',
      'sl': '',
    },
    '19723qox': {
      'en': 'Packaging',
      'es': 'embalaje',
      'sl': 'Pakiranje',
    },
    '5kdfhiqm': {
      'en': 'Warehouse position',
      'es': 'Posición del almacén',
      'sl': 'Položaj skladišča',
    },
    'nbpuiz1p': {
      'en': 'Barcode',
      'es': 'Código de barras',
      'sl': 'Črtna koda',
    },
    'ad7nmmue': {
      'en': 'Row',
      'es': 'Fila',
      'sl': 'Vrsti',
    },
    'gfm73591': {
      'en': 'Edit',
      'es': 'Editar',
      'sl': 'Uredi',
    },
    '8eqr497d': {
      'en': 'Delete',
      'es': 'Borrar',
      'sl': 'Izbriši',
    },
  },
  // forms
  {
    '4w4fampe': {
      'en': 'Edit record',
      'es': 'Editar registro',
      'sl': 'Uredi zapis',
    },
    's2ln34za': {
      'en': 'Announcement',
      'es': 'Anuncio',
      'sl': 'Obvestilo',
    },
    'ixgnt5vg': {
      'en': 'Vehicle, quantity',
      'es': 'Vehículo, cantidad',
      'sl': 'Vozilo, količina',
    },
    'slij6xnt': {
      'en': 'Time, ramp',
      'es': 'tiempo, rampa',
      'sl': 'Čas, rampa',
    },
    '7mz1zveh': {
      'en': 'Manipulations, warehouses',
      'es': 'Manipulaciones, almacenes.',
      'sl': 'Manipulacije, skladišča',
    },
    '06cqog9s': {
      'en': 'Goods, ref. no, barcode',
      'es': 'Bienes, ref. no, código de barras',
      'sl': 'Blago, ref. ne, črtna koda',
    },
    '2fq4wgnt': {
      'en': 'Order No:  ',
      'es': 'N º de pedido:',
      'sl': 'Številka naročila:',
    },
    'ej4ffm0k': {
      'en': 'Client:  ',
      'es': 'Cliente:',
      'sl': 'Naročnik:',
    },
    'g7vc91j1': {
      'en': 'Search for an item...',
      'es': 'Buscar un artículo...',
      'sl': 'Iskanje predmeta ...',
    },
    'iaur83ra': {
      'en': 'Input/output:  ',
      'es': 'De entrada y salida:',
      'sl': 'Vhod/izhod:',
    },
    'beno68e9': {
      'en': 'in-razklad',
      'es': 'en razklad',
      'sl': 'in-razklad',
    },
    '4f68f0jj': {
      'en': 'out-naklad',
      'es': 'fuera-naklad',
      'sl': 'izven-naklad',
    },
    'cocrs8uw': {
      'en': 'Search for an item...',
      'es': 'Buscar un artículo...',
      'sl': 'Iskanje predmeta ...',
    },
    '0pln6r7m': {
      'en': 'Estimated arrival:  ',
      'es': 'Llegada estimada:',
      'sl': 'Predviden prihod:',
    },
    'er1iflkk': {
      'en': 'Order status:  ',
      'es': 'Estado del pedido:',
      'sl': 'Status naročila:',
    },
    '2920vcxf': {
      'en': '',
      'es': '',
      'sl': '',
    },
    '4mm5s45u': {
      'en': 'novo naročilo',
      'es': 'nuevo naročilo',
      'sl': 'novo naročilo',
    },
    'q8evheu3': {
      'en': 'izvajanje',
      'es': 'izvajanje',
      'sl': 'izvajanje',
    },
    'c7ae11xt': {
      'en': 'zaključeno',
      'es': 'zaključeno',
      'sl': 'zaključeno',
    },
    'vinazm7z': {
      'en': 'Search for an item...',
      'es': 'Buscar un artículo...',
      'sl': 'Iskanje predmeta ...',
    },
    'rvm1e9wy': {
      'en': 'Warehouse:  ',
      'es': 'Depósito:',
      'sl': 'Skladišče:',
    },
    'uyruzdr8': {
      'en': 'Search for an item...',
      'es': 'Buscar un artículo...',
      'sl': 'Iskanje predmeta ...',
    },
    '3s4hp8em': {
      'en': 'Creation date:  ',
      'es': 'Fecha de creación:',
      'sl': 'Datum nastanka:',
    },
    'n2o8wfi4': {
      'en': 'Admin:  ',
      'es': 'Administración:',
      'sl': 'skrbnik:',
    },
    'uh5dxl5p': {
      'en': 'Search for an item...',
      'es': 'Buscar un artículo...',
      'sl': 'Iskanje predmeta ...',
    },
    'x6to0e7v': {
      'en': 'Custom:  ',
      'es': 'Costumbre:',
      'sl': 'Po meri:',
    },
    'ynfr932b': {
      'en': 'Search for an item...',
      'es': 'Buscar un artículo...',
      'sl': 'Iskanje predmeta ...',
    },
    'p7usehyk': {
      'en': 'Internal reference number - customs:  ',
      'es': 'Número de referencia interna - aduanas:',
      'sl': 'Interna referenčna številka - carina:',
    },
    'jruby3lr': {
      'en': 'Internal number - accounting:  ',
      'es': 'Número interno - contabilidad:',
      'sl': 'Interna številka - računovodstvo:',
    },
    '52lqeszm': {
      'en': 'Documents:  ',
      'es': 'Documentos:',
      'sl': 'Dokumenti:',
    },
    '51d0v2pi': {
      'en': 'Inventory status:  ',
      'es': 'Estado de inventario:',
      'sl': 'Stanje inventarja:',
    },
    'd2ay29dq': {
      'en': 'najava',
      'es': 'najavá',
      'sl': 'najava',
    },
    '9mqiqqmd': {
      'en': 'obdelava',
      'es': 'obdelava',
      'sl': 'obdelava',
    },
    'ak1nrnrl': {
      'en': 'izdano',
      'es': 'izdano',
      'sl': 'izdano',
    },
    'ck4ekony': {
      'en': 'zaloga',
      'es': 'zaloga',
      'sl': 'zaloga',
    },
    'n5adkyve': {
      'en': 'Search for an item...',
      'es': 'Buscar un artículo...',
      'sl': 'Iskanje predmeta ...',
    },
    'g5m6fbuf': {
      'en': 'Announced time 1:  ',
      'es': 'Hora anunciada 1:',
      'sl': 'Napovedan čas 1:',
    },
    'uoxtbao7': {
      'en': 'Announced time 2:  ',
      'es': 'Hora anunciada 2:',
      'sl': 'Napovedan čas 2:',
    },
    'b63594nl': {
      'en': 'Arrival:  ',
      'es': 'Llegada:',
      'sl': 'Prihod:',
    },
    '7pkfn8ib': {
      'en': 'Loading gate:  ',
      'es': 'Puerta de carga:',
      'sl': 'Vrata za nakladanje:',
    },
    'o6gubyim': {
      'en': 'Search for an item...',
      'es': 'Buscar un artículo...',
      'sl': 'Iskanje predmeta ...',
    },
    'ggnfr75d': {
      'en': 'Loading gate sequence:  ',
      'es': 'Secuencia de puerta de carga:',
      'sl': 'Zaporedje vrat za nalaganje:',
    },
    '5b3d3y3h': {
      'en': 'Start (upload/unload):  ',
      'es': 'Iniciar (cargar/descargar):',
      'sl': 'Začetek (nalaganje/razlaganje):',
    },
    'p0vxwlax': {
      'en': 'Stop (upload/unload):  ',
      'es': 'Detener (cargar/descargar):',
      'sl': 'Ustavi (nalaganje/odlaganje):',
    },
    'jsq2xkyk': {
      'en': 'Licence plate No:  ',
      'es': 'Número de matrícula:',
      'sl': 'Številka registrske tablice:',
    },
    'e0d8yka2': {
      'en': 'Improvement:  ',
      'es': 'Mejora:',
      'sl': 'Izboljšava:',
    },
    'l8k0xuaf': {
      'en': 'kont.-20"',
      'es': 'conector-20"',
      'sl': 'kont.-20"',
    },
    '4citue3o': {
      'en': 'kont.-40"',
      'es': 'conector-40"',
      'sl': 'kont.-40"',
    },
    '4y1sq1d7': {
      'en': 'kont.-45"',
      'es': 'conector-45"',
      'sl': 'kont.-45"',
    },
    '2572s363': {
      'en': 'cerada',
      'es': 'cerada',
      'sl': 'cerada',
    },
    'aj0w8yyo': {
      'en': 'hladilnik',
      'es': 'hladilnik',
      'sl': 'hladilnik',
    },
    'onw3427g': {
      'en': 'silos',
      'es': 'silos',
      'sl': 'silosi',
    },
    '9c8qpw3n': {
      'en': 'Search for an item...',
      'es': 'Buscar un artículo...',
      'sl': 'Iskanje predmeta ...',
    },
    '241xgsk0': {
      'en': 'Container No:  ',
      'es': 'No contenedor:',
      'sl': 'Št. zabojnika:',
    },
    '1luorh6t': {
      'en': 'Comment:  ',
      'es': 'Comentario:',
      'sl': 'komentar:',
    },
    '6v4a337z': {
      'en': 'Quantity:  ',
      'es': 'Cantidad:',
      'sl': 'Količina:',
    },
    'n93uyp2z': {
      'en': 'Pallet position:  ',
      'es': 'Posición del palet:',
      'sl': 'Položaj palete:',
    },
    'bbrh0h2w': {
      'en': 'Pre - Check:  ',
      'es': 'Pre chequeo:',
      'sl': 'Predhodni pregled:',
    },
    '8c0v3o3c': {
      'en': 'Check:  ',
      'es': 'Controlar:',
      'sl': 'Preverite:',
    },
    'x7scfgzz': {
      'en': 'Unit:  ',
      'es': 'Unidad:',
      'sl': 'Enota:',
    },
    '3lpe3obr': {
      'en': 'Weight:  ',
      'es': 'Peso:',
      'sl': 'Utež:',
    },
    'swxjzyjy': {
      'en': 'Other manipulations:  ',
      'es': 'Otras manipulaciones:',
      'sl': 'Druge manipulacije:',
    },
    '1nhh5v4p': {
      'en': 'paletiranje',
      'es': 'paletiranje',
      'sl': 'paletiranje',
    },
    '0hdkxipi': {
      'en': 'čiščenje',
      'es': 'ciščenje',
      'sl': 'čiščenje',
    },
    'dicagqab': {
      'en': 'ovijanje-folija',
      'es': 'ovijanje-folija',
      'sl': 'ovijanje-folija',
    },
    'jvt03f0c': {
      'en': 'povezovanje',
      'es': 'povezovanje',
      'sl': 'povezovanje',
    },
    'iep49uhs': {
      'en': 'Search for an item...',
      'es': 'Buscar un artículo...',
      'sl': 'Iskanje predmeta ...',
    },
    'k3bvaxvd': {
      'en': 'Type of un/upload:  ',
      'es': 'Tipo de descarga/descarga:',
      'sl': 'Vrsta odstranitve/nalaganja:',
    },
    'c1g1mv1p': {
      'en': 'viličar',
      'es': 'vilicar',
      'sl': 'viličar',
    },
    'xt5iyzud': {
      'en': 'ročno',
      'es': 'ročno',
      'sl': 'ročno',
    },
    'gc8cy7x7': {
      'en': 'Search for an item...',
      'es': 'Buscar un artículo...',
      'sl': 'Iskanje predmeta ...',
    },
    '4ys80k7p': {
      'en': 'Type of un/upload 2:  ',
      'es': 'Tipo de descarga/descarga 2:',
      'sl': 'Vrsta razveljavitve/nalaganja 2:',
    },
    'dfdjkscf': {
      'en': 'viličar',
      'es': 'vilicar',
      'sl': 'viličar',
    },
    'gaxkwc6b': {
      'en': 'ročno',
      'es': 'ročno',
      'sl': 'ročno',
    },
    'qxb7w2sx': {
      'en': 'Search for an item...',
      'es': 'Buscar un artículo...',
      'sl': 'Iskanje predmeta ...',
    },
    'nnew7c7t': {
      'en': 'Responsible: ',
      'es': 'Responsable:',
      'sl': 'Odgovorni:',
    },
    '5j26f3oh': {
      'en': 'Search for an item...',
      'es': 'Buscar un artículo...',
      'sl': 'Iskanje predmeta ...',
    },
    'rxkrrxst': {
      'en': 'Assistant 1:  ',
      'es': 'Asistente 1:',
      'sl': 'Pomočnik 1:',
    },
    'w00it0yk': {
      'en': 'Search for an item...',
      'es': 'Buscar un artículo...',
      'sl': 'Iskanje predmeta ...',
    },
    'odfaa90q': {
      'en': 'Assistant 2:  ',
      'es': 'Asistente 2:',
      'sl': 'Pomočnik 2:',
    },
    '86gnzb1r': {
      'en': 'Search for an item...',
      'es': 'Buscar un artículo...',
      'sl': 'Iskanje predmeta ...',
    },
    '42o4cwkv': {
      'en': 'Assistant 3:  ',
      'es': 'Asistente 3:',
      'sl': 'Pomočnik 3:',
    },
    'y9wemh7m': {
      'en': 'Search for an item...',
      'es': 'Buscar un artículo...',
      'sl': 'Iskanje predmeta ...',
    },
    'uxlc78ll': {
      'en': 'Assistant 4:  ',
      'es': 'Asistente 4:',
      'sl': 'Pomočnik 4:',
    },
    'cyhz6mld': {
      'en': 'Search for an item...',
      'es': 'Buscar un artículo...',
      'sl': 'Iskanje predmeta ...',
    },
    'dh2jv6vo': {
      'en': 'Assistant 5:  ',
      'es': 'Asistente 5:',
      'sl': 'Pomočnik 5:',
    },
    '2rezj3dd': {
      'en': 'Search for an item...',
      'es': 'Buscar un artículo...',
      'sl': 'Iskanje predmeta ...',
    },
    'iigw54yp': {
      'en': 'Assistant 6:  ',
      'es': 'Asistente 6:',
      'sl': 'Pomočnik 6:',
    },
    'gvqo5j88': {
      'en': 'Search for an item...',
      'es': 'Buscar un artículo...',
      'sl': 'Iskanje predmeta ...',
    },
    '27brn9o8': {
      'en': 'Universal ref num:  ',
      'es': 'Número de referencia universal:',
      'sl': 'Univerzalna referenčna številka:',
    },
    'w2vc2fpp': {
      'en': 'FMS ref:  ',
      'es': 'Referencia FMS:',
      'sl': 'Ref. FMS:',
    },
    'qx5ac8t1': {
      'en': 'Load ref/dvh:  ',
      'es': 'Cargar ref/dvh:',
      'sl': 'Naloži ref/dvh:',
    },
    'xcuhjh74': {
      'en': 'Good:  ',
      'es': 'Bien:',
      'sl': 'dobro:',
    },
    'nstuvhay': {
      'en': 'Search for an item...',
      'es': 'Buscar un artículo...',
      'sl': 'Iskanje predmeta ...',
    },
    '6f042ri4': {
      'en': 'Good description:  ',
      'es': 'Buena descripción:',
      'sl': 'Dober opis:',
    },
    '4wmarb3r': {
      'en': 'Search for an item...',
      'es': 'Buscar un artículo...',
      'sl': 'Iskanje predmeta ...',
    },
    '18qvpp0q': {
      'en': 'Packaging:  ',
      'es': 'Embalaje:',
      'sl': 'Pakiranje:',
    },
    '2gywf2o3': {
      'en': 'Search for an item...',
      'es': 'Buscar un artículo...',
      'sl': 'Iskanje predmeta ...',
    },
    'spunb0qj': {
      'en': 'Barcodes:  ',
      'es': 'Códigos de barras:',
      'sl': 'črtne kode:',
    },
    'x1apz81p': {
      'en': 'Insert new value...',
      'es': 'Insertar nuevo valor...',
      'sl': 'Vstavi novo vrednost ...',
    },
    'kgb68azj': {
      'en': 'Save changes',
      'es': 'Guardar cambios',
      'sl': 'Shrani spremembe',
    },
  },
  // sureQuery
  {
    '2b7kj1vi': {
      'en': 'Are you sure?',
      'es': '¿Está seguro?',
      'sl': 'Ali si prepričan?',
    },
    'd0fh7lyk': {
      'en': 'Yes',
      'es': 'Sí',
      'sl': 'ja',
    },
    'wb1becmn': {
      'en': 'No',
      'es': 'No',
      'sl': 'št',
    },
  },
  // editDetails
  {
    'j79j5yyd': {
      'en': 'Edit record',
      'es': 'Editar registro',
      'sl': 'Uredi zapis',
    },
    'eby9i6es': {
      'en': 'Good:  ',
      'es': 'Bien:',
      'sl': 'dobro:',
    },
    'zwxjnc97': {
      'en': 'Please select...',
      'es': 'Por favor seleccione...',
      'sl': 'Prosim izberite...',
    },
    '7piqz5sc': {
      'en': 'Search for an item...',
      'es': 'Buscar un artículo...',
      'sl': 'Iskanje predmeta ...',
    },
    'qfqrlwsg': {
      'en': 'Description:  ',
      'es': 'Descripción:',
      'sl': 'Opis:',
    },
    '67o19ah6': {
      'en': 'Please select...',
      'es': 'Por favor seleccione...',
      'sl': 'Prosim izberite...',
    },
    'uloafuuz': {
      'en': 'Search for an item...',
      'es': 'Buscar un artículo...',
      'sl': 'Iskanje predmeta ...',
    },
    'q3fbzpds': {
      'en': 'Packaging:  ',
      'es': 'Embalaje:',
      'sl': 'Pakiranje:',
    },
    'dp689g4e': {
      'en': 'Please select...',
      'es': 'Por favor seleccione...',
      'sl': 'Prosim izberite...',
    },
    'slwgvnbp': {
      'en': 'Search for an item...',
      'es': 'Buscar un artículo...',
      'sl': 'Iskanje predmeta ...',
    },
    '2pmsi25l': {
      'en': 'Warehouse position:  ',
      'es': 'Posición del almacén:',
      'sl': 'Položaj skladišča:',
    },
    'qpecaokf': {
      'en': 'Please select...',
      'es': 'Por favor seleccione...',
      'sl': 'Prosim izberite...',
    },
    'b01g0obk': {
      'en': 'Search for an item...',
      'es': 'Buscar un artículo...',
      'sl': 'Iskanje predmeta ...',
    },
    'ebn4opmu': {
      'en': 'Barcode:  ',
      'es': 'Código de barras:',
      'sl': 'črtna koda:',
    },
    'orv8tifl': {
      'en': 'Insert new value...',
      'es': 'Insertar nuevo valor...',
      'sl': 'Vstavi novo vrednost ...',
    },
    'mor3o7pl': {
      'en': 'Save changes',
      'es': 'Guardar cambios',
      'sl': 'Shrani spremembe',
    },
  },
  // filters
  {
    'mo15p04z': {
      'en': 'Select client...',
      'es': 'Seleccionar cliente...',
      'sl': 'Izberite stranko ...',
    },
    'l8ngznrr': {
      'en': 'Search for an item...',
      'es': 'Buscar un artículo...',
      'sl': 'Iskanje predmeta ...',
    },
    'p6ez5m3o': {
      'en': '',
      'es': '',
      'sl': '',
    },
    'j080omnh': {
      'en': 'in-razklad',
      'es': 'en razklad',
      'sl': 'in-razklad',
    },
    'z3yp9g3e': {
      'en': 'out-naklad',
      'es': 'fuera-naklad',
      'sl': 'izven-naklad',
    },
    'j86lap75': {
      'en': 'brez izbire',
      'es': 'brez izbire',
      'sl': 'brez izbire',
    },
    '1c1osl9p': {
      'en': 'Select flow...',
      'es': 'Seleccionar flujo...',
      'sl': 'Izberite tok ...',
    },
    '9uq7h5kz': {
      'en': 'Search for an item...',
      'es': 'Buscar un artículo...',
      'sl': 'Iskanje predmeta ...',
    },
    'r8l05w6l': {
      'en': '',
      'es': '',
      'sl': '',
    },
    'n1jbruxz': {
      'en': 'novo naročilo',
      'es': 'nuevo naročilo',
      'sl': 'novo naročilo',
    },
    '7cap2iws': {
      'en': 'priprava',
      'es': 'priprava',
      'sl': 'priprava',
    },
    'kerszixq': {
      'en': 'izvajanje',
      'es': 'izvajanje',
      'sl': 'izvajanje',
    },
    'k3xmonp0': {
      'en': 'zaključeno',
      'es': 'zaključeno',
      'sl': 'zaključeno',
    },
    'lplavtp2': {
      'en': 'Select order status...',
      'es': 'Seleccione el estado del pedido...',
      'sl': 'Izberite status naročila ...',
    },
    'd62tcbo2': {
      'en': 'Search for an item...',
      'es': 'Buscar un artículo...',
      'sl': 'Iskanje predmeta ...',
    },
    'a0fsx0ov': {
      'en': '',
      'es': '',
      'sl': '',
    },
    'x6ht694x': {
      'en': 'Select admin...',
      'es': 'Seleccione administrador...',
      'sl': 'Izberite skrbnika ...',
    },
    '0fpqo5iv': {
      'en': 'Search for an item...',
      'es': 'Buscar un artículo...',
      'sl': 'Iskanje predmeta ...',
    },
    '1h76jopb': {
      'en': '',
      'es': '',
      'sl': '',
    },
    '8zc4a7z6': {
      'en': 'Select warehouse...',
      'es': 'Seleccionar almacén...',
      'sl': 'Izberite skladišče...',
    },
    'eegl0ece': {
      'en': 'Search for an item...',
      'es': 'Buscar un artículo...',
      'sl': 'Iskanje predmeta ...',
    },
    '53j31kff': {
      'en': '',
      'es': '',
      'sl': '',
    },
    '4hndvg0a': {
      'en': 'Select custom...',
      'es': 'Seleccione personalizado...',
      'sl': 'Izberite po meri ...',
    },
    'zpwhpre6': {
      'en': 'Search for an item...',
      'es': 'Buscar un artículo...',
      'sl': 'Iskanje predmeta ...',
    },
    '4rzkuskn': {
      'en': '',
      'es': '',
      'sl': '',
    },
    'k1w7p134': {
      'en': 'Select barcode...',
      'es': 'Seleccionar código de barras...',
      'sl': 'Izberite črtno kodo ...',
    },
    '75bemxhw': {
      'en': 'Search for an item...',
      'es': 'Buscar un artículo...',
      'sl': 'Iskanje predmeta ...',
    },
    '8na66h35': {
      'en': 'Select responsible...',
      'es': 'Seleccionar responsable...',
      'sl': 'Izberite odgovorne...',
    },
    'krxc1dr2': {
      'en': 'Search for an item...',
      'es': 'Buscar un artículo...',
      'sl': 'Iskanje predmeta ...',
    },
    '3zpczzm7': {
      'en': '',
      'es': '',
      'sl': '',
    },
    'iltfr0jn': {
      'en': 'Select assistant1...',
      'es': 'Seleccionar asistente1...',
      'sl': 'Izberite pomočnika 1 ...',
    },
    '4i5x57f5': {
      'en': 'Search for an item...',
      'es': 'Buscar un artículo...',
      'sl': 'Iskanje predmeta ...',
    },
    'mpmtq40z': {
      'en': '',
      'es': '',
      'sl': '',
    },
    'zktjbako': {
      'en': 'Select assistant2...',
      'es': 'Seleccionar asistente2...',
      'sl': 'Izberite pomočnika 2 ...',
    },
    'hpf3fi3m': {
      'en': 'Search for an item...',
      'es': 'Buscar un artículo...',
      'sl': 'Iskanje predmeta ...',
    },
    '93jp9iye': {
      'en': '',
      'es': '',
      'sl': '',
    },
    '9n8fsh5y': {
      'en': 'Select assistant3...',
      'es': 'Seleccionar asistente3...',
      'sl': 'Izberite pomočnika 3 ...',
    },
    'c8tlrno5': {
      'en': 'Search for an item...',
      'es': 'Buscar un artículo...',
      'sl': 'Iskanje predmeta ...',
    },
    '2wns7wgh': {
      'en': '',
      'es': '',
      'sl': '',
    },
    'byy0ncr9': {
      'en': 'Select assistant4...',
      'es': 'Seleccionar asistente4...',
      'sl': 'Izberite pomočnika 4 ...',
    },
    'zvb6kzz5': {
      'en': 'Search for an item...',
      'es': 'Buscar un artículo...',
      'sl': 'Iskanje predmeta ...',
    },
    'db2xlewu': {
      'en': '',
      'es': '',
      'sl': '',
    },
    'ni9q4iwt': {
      'en': 'Select assistant5...',
      'es': 'Seleccionar asistente5...',
      'sl': 'Izberite pomočnika 5 ...',
    },
    'moc42vmc': {
      'en': 'Search for an item...',
      'es': 'Buscar un artículo...',
      'sl': 'Iskanje predmeta ...',
    },
    'r1n6h7it': {
      'en': '',
      'es': '',
      'sl': '',
    },
    'uqf93js8': {
      'en': 'Select assistant6...',
      'es': 'Seleccionar asistente6...',
      'sl': 'Izberite pomočnika 6 ...',
    },
    'wp8ny3c5': {
      'en': 'Search for an item...',
      'es': 'Buscar un artículo...',
      'sl': 'Iskanje predmeta ...',
    },
    'awl2534n': {
      'en': '',
      'es': '',
      'sl': '',
    },
    'tf7wjto0': {
      'en': 'Select container...',
      'es': 'Seleccionar contenedor...',
      'sl': 'Izberite vsebnik ...',
    },
    'wwh1a5q5': {
      'en': 'Search for an item...',
      'es': 'Buscar un artículo...',
      'sl': 'Iskanje predmeta ...',
    },
  },
  // clientsTF
  {
    'tfcqb0zh': {
      'en': 'Insert new value...',
      'es': 'Insertar nuevo valor...',
      'sl': 'Vstavi novo vrednost ...',
    },
  },
  // editClients
  {
    '2g5zhl8k': {
      'en': 'Client details',
      'es': 'Detalles del cliente',
      'sl': 'Podrobnosti o stranki',
    },
    'j8d5n29t': {
      'en': 'Client:  ',
      'es': 'Cliente:',
      'sl': 'Naročnik:',
    },
    '2d19wu1s': {
      'en': 'Address:  ',
      'es': 'DIRECCIÓN:',
      'sl': 'Naslov:',
    },
    '8mh3bzf7': {
      'en': 'City:  ',
      'es': 'Ciudad:',
      'sl': 'mesto:',
    },
    '0ybgfuw5': {
      'en': 'Country:  ',
      'es': 'País:',
      'sl': 'Država:',
    },
    'm7pcjtgw': {
      'en': 'Name aiss:  ',
      'es': 'Nombre:',
      'sl': 'Ime aiss:',
    },
    'jpkyman4': {
      'en': 'Vat no:  ',
      'es': 'N° IVA:',
      'sl': 'DDV številka:',
    },
    'zp0khhb7': {
      'en': 'Save changes',
      'es': 'Guardar cambios',
      'sl': 'Shrani spremembe',
    },
  },
  // customsTF
  {
    'va0e7fje': {
      'en': 'Insert new value...',
      'es': 'Insertar nuevo valor...',
      'sl': 'Vstavi novo vrednost ...',
    },
  },
  // goodsTF
  {
    '28p1yis3': {
      'en': 'Insert new value...',
      'es': 'Insertar nuevo valor...',
      'sl': 'Vstavi novo vrednost ...',
    },
  },
  // goodsDescriptionsTF
  {
    'x40isfgi': {
      'en': 'Insert new value...',
      'es': 'Insertar nuevo valor...',
      'sl': 'Vstavi novo vrednost ...',
    },
  },
  // editPackaging
  {
    'x0hs380u': {
      'en': 'Packaging details',
      'es': 'Detalles del empaque',
      'sl': 'Podrobnosti pakiranja',
    },
    'mb8km6s7': {
      'en': 'Packaging:  ',
      'es': 'Embalaje:',
      'sl': 'Pakiranje:',
    },
    'x6cs6pqp': {
      'en': 'Abbreviation:  ',
      'es': 'Abreviatura:',
      'sl': 'Okrajšava:',
    },
    'wfvsoosu': {
      'en': 'Save changes',
      'es': 'Guardar cambios',
      'sl': 'Shrani spremembe',
    },
  },
  // warehouseDetails
  {
    'dcyr07l8': {
      'en': 'Warehouse details',
      'es': 'Detalles del almacén',
      'sl': 'Podrobnosti o skladišču',
    },
    'cpabvyqv': {
      'en': 'Warehouse positions',
      'es': 'Posiciones de almacén',
      'sl': 'Skladiščne pozicije',
    },
    'tffmk5em': {
      'en': 'Position',
      'es': 'Posición',
      'sl': 'Položaj',
    },
    'j7v7zf4e': {
      'en': 'Loading gates',
      'es': 'Puertas de carga',
      'sl': 'Nakladalna vrata',
    },
    'jiqtvl3p': {
      'en': 'Ramp',
      'es': 'Rampa',
      'sl': 'Klančina',
    },
  },
  // warehousePositionsTF
  {
    'bm78l3b3': {
      'en': 'Insert new value...',
      'es': 'Insertar nuevo valor...',
      'sl': 'Vstavi novo vrednost ...',
    },
  },
  // loadingGatesTF
  {
    '2rk32fe5': {
      'en': 'Insert new value...',
      'es': 'Insertar nuevo valor...',
      'sl': 'Vstavi novo vrednost ...',
    },
  },
  // manipulationsTF
  {
    '2adki1rz': {
      'en': 'Insert new value...',
      'es': 'Insertar nuevo valor...',
      'sl': 'Vstavi novo vrednost ...',
    },
  },
  // pdfViewer
  {
    '044xi4wz': {
      'en': 'Pdf viewer',
      'es': 'Visor de PDF',
      'sl': 'Pregledovalnik pdf',
    },
  },
  // createRecord
  {
    'icazai1q': {
      'en': 'Create record',
      'es': 'Crear registro',
      'sl': 'Ustvari zapis',
    },
    'awyh9clr': {
      'en': 'Announcement',
      'es': 'Anuncio',
      'sl': 'Obvestilo',
    },
    'oqag4g4z': {
      'en': 'Vehicle, quantity',
      'es': 'Vehículo, cantidad',
      'sl': 'Vozilo, količina',
    },
    '7gxoffrz': {
      'en': 'Time, ramp',
      'es': 'tiempo, rampa',
      'sl': 'Čas, rampa',
    },
    'ciz89uu4': {
      'en': 'Manipulations, warehouses',
      'es': 'Manipulaciones, almacenes.',
      'sl': 'Manipulacije, skladišča',
    },
    'c28mc4jt': {
      'en': 'Goods, ref. no, barcode',
      'es': 'Bienes, ref. no, código de barras',
      'sl': 'Blago, ref. ne, črtna koda',
    },
    'ky1fkyq8': {
      'en': 'Order No:  ',
      'es': 'N º de pedido:',
      'sl': 'Številka naročila:',
    },
    'd4pgq4wh': {
      'en': 'Insert new value...',
      'es': 'Insertar nuevo valor...',
      'sl': 'Vstavi novo vrednost ...',
    },
    'n4lv60m3': {
      'en': 'Client:  ',
      'es': 'Cliente:',
      'sl': 'Naročnik:',
    },
    '7ch3gvd9': {
      'en': 'Please select...',
      'es': 'Por favor seleccione...',
      'sl': 'Prosim izberite...',
    },
    '8kuki8c8': {
      'en': 'Search for an item...',
      'es': 'Buscar un artículo...',
      'sl': 'Iskanje predmeta ...',
    },
    '4t7wu43q': {
      'en': 'Input/output:  ',
      'es': 'De entrada y salida:',
      'sl': 'Vhod/izhod:',
    },
    'mb6t6xsl': {
      'en': 'in-razklad',
      'es': 'en razklad',
      'sl': 'in-razklad',
    },
    'uhas6n8o': {
      'en': 'out-naklad',
      'es': 'fuera-naklad',
      'sl': 'izven-naklad',
    },
    '1hn2bb2c': {
      'en': 'Please select...',
      'es': 'Por favor seleccione...',
      'sl': 'Prosim izberite...',
    },
    '7ng7rqd2': {
      'en': 'Search for an item...',
      'es': 'Buscar un artículo...',
      'sl': 'Iskanje predmeta ...',
    },
    'u3y2wa25': {
      'en': 'Estimated arrival:  ',
      'es': 'Llegada estimada:',
      'sl': 'Predviden prihod:',
    },
    'mdnjx34b': {
      'en': 'Order status:  ',
      'es': 'Estado del pedido:',
      'sl': 'Status naročila:',
    },
    'w7oxraah': {
      'en': '',
      'es': '',
      'sl': '',
    },
    '6gbetm8e': {
      'en': 'novo naročilo',
      'es': 'nuevo naročilo',
      'sl': 'novo naročilo',
    },
    'u24qhs2i': {
      'en': 'izvajanje',
      'es': 'izvajanje',
      'sl': 'izvajanje',
    },
    'qld2hdoq': {
      'en': 'zaključeno',
      'es': 'zaključeno',
      'sl': 'zaključeno',
    },
    'wa3dr3qi': {
      'en': 'Please select...',
      'es': 'Por favor seleccione...',
      'sl': 'Prosim izberite...',
    },
    'a4hkbbbs': {
      'en': 'Search for an item...',
      'es': 'Buscar un artículo...',
      'sl': 'Iskanje predmeta ...',
    },
    'yf58ods0': {
      'en': 'Warehouse:  ',
      'es': 'Depósito:',
      'sl': 'Skladišče:',
    },
    '2oi66ola': {
      'en': 'Please select...',
      'es': 'Por favor seleccione...',
      'sl': 'Prosim izberite...',
    },
    'p9h1yasj': {
      'en': 'Search for an item...',
      'es': 'Buscar un artículo...',
      'sl': 'Iskanje predmeta ...',
    },
    'gyl4et1g': {
      'en': 'Creation date:  ',
      'es': 'Fecha de creación:',
      'sl': 'Datum nastanka:',
    },
    '3i8fpg3s': {
      'en': 'Admin:  ',
      'es': 'Administración:',
      'sl': 'skrbnik:',
    },
    'o51pbopf': {
      'en': 'Please select...',
      'es': 'Por favor seleccione...',
      'sl': 'Prosim izberite...',
    },
    'rsbq7dpb': {
      'en': 'Search for an item...',
      'es': 'Buscar un artículo...',
      'sl': 'Iskanje predmeta ...',
    },
    'wtl5gquy': {
      'en': 'Custom:  ',
      'es': 'Costumbre:',
      'sl': 'Po meri:',
    },
    'npwrukop': {
      'en': 'Please select...',
      'es': 'Por favor seleccione...',
      'sl': 'Prosim izberite...',
    },
    '6o1amf6g': {
      'en': 'Search for an item...',
      'es': 'Buscar un artículo...',
      'sl': 'Iskanje predmeta ...',
    },
    'y9nlr7l1': {
      'en': 'Internal reference number - customs:  ',
      'es': 'Número de referencia interna - aduanas:',
      'sl': 'Interna referenčna številka - carina:',
    },
    'nwod5dwl': {
      'en': 'Insert new value...',
      'es': 'Insertar nuevo valor...',
      'sl': 'Vstavi novo vrednost ...',
    },
    'u8csng2w': {
      'en': 'Internal number - accounting:  ',
      'es': 'Número interno - contabilidad:',
      'sl': 'Interna številka - računovodstvo:',
    },
    'jnxu2lw2': {
      'en': 'Insert new value...',
      'es': 'Insertar nuevo valor...',
      'sl': 'Vstavi novo vrednost ...',
    },
    '97flenab': {
      'en': 'Documents:  ',
      'es': 'Documentos:',
      'sl': 'Dokumenti:',
    },
    'jfdgfk2h': {
      'en': 'Inventory status:  ',
      'es': 'Estado de inventario:',
      'sl': 'Stanje inventarja:',
    },
    'm6u9emjf': {
      'en': 'najava',
      'es': 'najavá',
      'sl': 'najava',
    },
    'muuxrfd4': {
      'en': 'obdelava',
      'es': 'obdelava',
      'sl': 'obdelava',
    },
    '8hy4f85f': {
      'en': 'izdano',
      'es': 'izdano',
      'sl': 'izdano',
    },
    'fsquvroe': {
      'en': 'zaloga',
      'es': 'zaloga',
      'sl': 'zaloga',
    },
    '1xbyxef0': {
      'en': 'Please select...',
      'es': 'Por favor seleccione...',
      'sl': 'Prosim izberite...',
    },
    'jrmz0qkd': {
      'en': 'Search for an item...',
      'es': 'Buscar un artículo...',
      'sl': 'Iskanje predmeta ...',
    },
    'byxykt3p': {
      'en': 'Announced time 1:  ',
      'es': 'Hora anunciada 1:',
      'sl': 'Napovedan čas 1:',
    },
    'mmasmgj8': {
      'en': 'Announced time 2:  ',
      'es': 'Hora anunciada 2:',
      'sl': 'Napovedan čas 2:',
    },
    '5jx8ei1h': {
      'en': 'Arrival:  ',
      'es': 'Llegada:',
      'sl': 'Prihod:',
    },
    '7n1wz3dg': {
      'en': 'Loading gate:  ',
      'es': 'Puerta de carga:',
      'sl': 'Vrata za nakladanje:',
    },
    'o1s3lijj': {
      'en': 'Please select...',
      'es': 'Por favor seleccione...',
      'sl': 'Prosim izberite...',
    },
    'u0463ju1': {
      'en': 'Search for an item...',
      'es': 'Buscar un artículo...',
      'sl': 'Iskanje predmeta ...',
    },
    '2wf0bwqi': {
      'en': 'Loading gate sequence:  ',
      'es': 'Secuencia de puerta de carga:',
      'sl': 'Zaporedje vrat za nalaganje:',
    },
    'h6ak5k8v': {
      'en': 'Insert new value...',
      'es': 'Insertar nuevo valor...',
      'sl': 'Vstavi novo vrednost ...',
    },
    'zgrpo3te': {
      'en': 'Start (upload/unload):  ',
      'es': 'Iniciar (cargar/descargar):',
      'sl': 'Začetek (nalaganje/razlaganje):',
    },
    'bjs4ou59': {
      'en': 'Stop (upload/unload):  ',
      'es': 'Detener (cargar/descargar):',
      'sl': 'Ustavi (nalaganje/odlaganje):',
    },
    '7o7laf2a': {
      'en': 'Licence plate No:  ',
      'es': 'Número de matrícula:',
      'sl': 'Številka registrske tablice:',
    },
    '040ubt2z': {
      'en': 'Insert new value...',
      'es': 'Insertar nuevo valor...',
      'sl': 'Vstavi novo vrednost ...',
    },
    '8l4ktgnn': {
      'en': 'Improvement:  ',
      'es': 'Mejora:',
      'sl': 'Izboljšava:',
    },
    '2imyah2q': {
      'en': 'kont.-20"',
      'es': 'conector-20"',
      'sl': 'kont.-20"',
    },
    'zwo8ap52': {
      'en': 'kont.-40"',
      'es': 'conector-40"',
      'sl': 'kont.-40"',
    },
    '41rqmaea': {
      'en': 'kont.-45"',
      'es': 'conector-45"',
      'sl': 'kont.-45"',
    },
    '2hadsask': {
      'en': 'cerada',
      'es': 'cerada',
      'sl': 'cerada',
    },
    'k97naf92': {
      'en': 'hladilnik',
      'es': 'hladilnik',
      'sl': 'hladilnik',
    },
    'cvptjha4': {
      'en': 'silos',
      'es': 'silos',
      'sl': 'silosi',
    },
    'ipq9i6k0': {
      'en': 'Please select...',
      'es': 'Por favor seleccione...',
      'sl': 'Prosim izberite...',
    },
    'oo7imzeb': {
      'en': 'Search for an item...',
      'es': 'Buscar un artículo...',
      'sl': 'Iskanje predmeta ...',
    },
    'otst498k': {
      'en': 'Container No:  ',
      'es': 'No contenedor:',
      'sl': 'Št. zabojnika:',
    },
    'mq0tkjys': {
      'en': 'Insert new value...',
      'es': 'Insertar nuevo valor...',
      'sl': 'Vstavi novo vrednost ...',
    },
    'y9prqowd': {
      'en': 'Comment:  ',
      'es': 'Comentario:',
      'sl': 'komentar:',
    },
    'jutridg4': {
      'en': 'Insert new value...',
      'es': 'Insertar nuevo valor...',
      'sl': 'Vstavi novo vrednost ...',
    },
    'z0krpsur': {
      'en': 'Quantity:  ',
      'es': 'Cantidad:',
      'sl': 'Količina:',
    },
    'z0zeitio': {
      'en': 'Insert new value...',
      'es': 'Insertar nuevo valor...',
      'sl': 'Vstavi novo vrednost ...',
    },
    'xhr03gwm': {
      'en': 'Pallet position:  ',
      'es': 'Posición del palet:',
      'sl': 'Položaj palete:',
    },
    'kwuyrj9a': {
      'en': 'Insert new value...',
      'es': 'Insertar nuevo valor...',
      'sl': 'Vstavi novo vrednost ...',
    },
    'od7hk99b': {
      'en': 'Unit:  ',
      'es': 'Unidad:',
      'sl': 'Enota:',
    },
    '913l23f5': {
      'en': 'Insert new value...',
      'es': 'Insertar nuevo valor...',
      'sl': 'Vstavi novo vrednost ...',
    },
    'yx7l9lto': {
      'en': 'Weight:  ',
      'es': 'Peso:',
      'sl': 'Utež:',
    },
    'c0ibmp0t': {
      'en': 'Insert new value...',
      'es': 'Insertar nuevo valor...',
      'sl': 'Vstavi novo vrednost ...',
    },
    'ht9lg19b': {
      'en': 'Other manipulations:  ',
      'es': 'Otras manipulaciones:',
      'sl': 'Druge manipulacije:',
    },
    'v0605lcd': {
      'en': 'paletiranje',
      'es': 'paletiranje',
      'sl': 'paletiranje',
    },
    'tmtr4y35': {
      'en': 'čiščenje',
      'es': 'ciščenje',
      'sl': 'čiščenje',
    },
    '5khc979z': {
      'en': 'ovijanje-folija',
      'es': 'ovijanje-folija',
      'sl': 'ovijanje-folija',
    },
    'z88b9v9x': {
      'en': 'povezovanje',
      'es': 'povezovanje',
      'sl': 'povezovanje',
    },
    '9ulabaix': {
      'en': 'Please select...',
      'es': 'Por favor seleccione...',
      'sl': 'Prosim izberite...',
    },
    '041hw8ml': {
      'en': 'Search for an item...',
      'es': 'Buscar un artículo...',
      'sl': 'Iskanje predmeta ...',
    },
    '4gp0ce5z': {
      'en': 'Type of un/upload:  ',
      'es': 'Tipo de descarga/descarga:',
      'sl': 'Vrsta odstranitve/nalaganja:',
    },
    'dmx4t6wo': {
      'en': 'viličar',
      'es': 'vilicar',
      'sl': 'viličar',
    },
    'e2m4u9ep': {
      'en': 'ročno',
      'es': 'ročno',
      'sl': 'ročno',
    },
    'ukdhot6n': {
      'en': 'Please select...',
      'es': 'Por favor seleccione...',
      'sl': 'Prosim izberite...',
    },
    '0adkqdb5': {
      'en': 'Search for an item...',
      'es': 'Buscar un artículo...',
      'sl': 'Iskanje predmeta ...',
    },
    '7ydq3891': {
      'en': 'Type of un/upload 2:  ',
      'es': 'Tipo de descarga/descarga 2:',
      'sl': 'Vrsta razveljavitve/nalaganja 2:',
    },
    'fx5olq4n': {
      'en': 'viličar',
      'es': 'vilicar',
      'sl': 'viličar',
    },
    'jq0mat9m': {
      'en': 'ročno',
      'es': 'ročno',
      'sl': 'ročno',
    },
    'ts5hctjo': {
      'en': 'Please select...',
      'es': 'Por favor seleccione...',
      'sl': 'Prosim izberite...',
    },
    'olzhk09c': {
      'en': 'Search for an item...',
      'es': 'Buscar un artículo...',
      'sl': 'Iskanje predmeta ...',
    },
    'zytdv2ys': {
      'en': 'Responsible: ',
      'es': 'Responsable:',
      'sl': 'Odgovorni:',
    },
    'wxjgz326': {
      'en': 'Please select...',
      'es': 'Por favor seleccione...',
      'sl': 'Prosim izberite...',
    },
    'u80efgss': {
      'en': 'Search for an item...',
      'es': 'Buscar un artículo...',
      'sl': 'Iskanje predmeta ...',
    },
    'jnlfkmmw': {
      'en': 'Assistant 1:  ',
      'es': 'Asistente 1:',
      'sl': 'Pomočnik 1:',
    },
    'csazqy88': {
      'en': 'Please select...',
      'es': 'Por favor seleccione...',
      'sl': 'Prosim izberite...',
    },
    'yhfsslm2': {
      'en': 'Search for an item...',
      'es': 'Buscar un artículo...',
      'sl': 'Iskanje predmeta ...',
    },
    's426vfgc': {
      'en': 'Assistant 2:  ',
      'es': 'Asistente 2:',
      'sl': 'Pomočnik 2:',
    },
    'swcholxu': {
      'en': 'Please select...',
      'es': 'Por favor seleccione...',
      'sl': 'Prosim izberite...',
    },
    'qg1iiw0j': {
      'en': 'Search for an item...',
      'es': 'Buscar un artículo...',
      'sl': 'Iskanje predmeta ...',
    },
    'jgpsl4dd': {
      'en': 'Assistant 3:  ',
      'es': 'Asistente 3:',
      'sl': 'Pomočnik 3:',
    },
    'hlv8vfr3': {
      'en': 'Please select...',
      'es': 'Por favor seleccione...',
      'sl': 'Prosim izberite...',
    },
    't1v9iowk': {
      'en': 'Search for an item...',
      'es': 'Buscar un artículo...',
      'sl': 'Iskanje predmeta ...',
    },
    '8036iqop': {
      'en': 'Assistant 4:  ',
      'es': 'Asistente 4:',
      'sl': 'Pomočnik 4:',
    },
    'r2cw4w1m': {
      'en': 'Please select...',
      'es': 'Por favor seleccione...',
      'sl': 'Prosim izberite...',
    },
    'ow8i19ho': {
      'en': 'Search for an item...',
      'es': 'Buscar un artículo...',
      'sl': 'Iskanje predmeta ...',
    },
    '7a6k2c70': {
      'en': 'Assistant 5:  ',
      'es': 'Asistente 5:',
      'sl': 'Pomočnik 5:',
    },
    '24ma87ab': {
      'en': 'Please select...',
      'es': 'Por favor seleccione...',
      'sl': 'Prosim izberite...',
    },
    'rtsoidp1': {
      'en': 'Search for an item...',
      'es': 'Buscar un artículo...',
      'sl': 'Iskanje predmeta ...',
    },
    '8yhti2ho': {
      'en': 'Assistant 6:  ',
      'es': 'Asistente 6:',
      'sl': 'Pomočnik 6:',
    },
    'ui5ftwzv': {
      'en': 'Please select...',
      'es': 'Por favor seleccione...',
      'sl': 'Prosim izberite...',
    },
    'xrvq7npn': {
      'en': 'Search for an item...',
      'es': 'Buscar un artículo...',
      'sl': 'Iskanje predmeta ...',
    },
    '661m7b63': {
      'en': 'Universal ref num:  ',
      'es': 'Número de referencia universal:',
      'sl': 'Univerzalna referenčna številka:',
    },
    '7ucthrgi': {
      'en': 'Insert new value...',
      'es': 'Insertar nuevo valor...',
      'sl': 'Vstavi novo vrednost ...',
    },
    'uzqbwrs4': {
      'en': 'FMS ref:  ',
      'es': 'Referencia FMS:',
      'sl': 'Ref. FMS:',
    },
    '4eyjotd7': {
      'en': 'Insert new value...',
      'es': 'Insertar nuevo valor...',
      'sl': 'Vstavi novo vrednost ...',
    },
    'm83558ve': {
      'en': 'Load ref/dvh:  ',
      'es': 'Cargar ref/dvh:',
      'sl': 'Naloži ref/dvh:',
    },
    'rifu34tn': {
      'en': 'Insert new value...',
      'es': 'Insertar nuevo valor...',
      'sl': 'Vstavi novo vrednost ...',
    },
    'gv7oe9hp': {
      'en': 'Good:  ',
      'es': 'Bien:',
      'sl': 'dobro:',
    },
    'u695q7kd': {
      'en': 'Please select...',
      'es': 'Por favor seleccione...',
      'sl': 'Prosim izberite...',
    },
    's4gle6c6': {
      'en': 'Search for an item...',
      'es': 'Buscar un artículo...',
      'sl': 'Iskanje predmeta ...',
    },
    'hrowwhe2': {
      'en': 'Good description:  ',
      'es': 'Buena descripción:',
      'sl': 'Dober opis:',
    },
    'fcbj06jg': {
      'en': 'Please select...',
      'es': 'Por favor seleccione...',
      'sl': 'Prosim izberite...',
    },
    'xwklnla0': {
      'en': 'Search for an item...',
      'es': 'Buscar un artículo...',
      'sl': 'Iskanje predmeta ...',
    },
    '3vtdt1fk': {
      'en': 'Packaging:  ',
      'es': 'Embalaje:',
      'sl': 'Pakiranje:',
    },
    'jlucklwu': {
      'en': 'Please select...',
      'es': 'Por favor seleccione...',
      'sl': 'Prosim izberite...',
    },
    '3p880det': {
      'en': 'Search for an item...',
      'es': 'Buscar un artículo...',
      'sl': 'Iskanje predmeta ...',
    },
    '2bivx6rb': {
      'en': 'Barcodes:  ',
      'es': 'Códigos de barras:',
      'sl': 'črtne kode:',
    },
    'pk58e2bi': {
      'en': 'Insert new value...',
      'es': 'Insertar nuevo valor...',
      'sl': 'Vstavi novo vrednost ...',
    },
    'xhdbltbx': {
      'en': 'Save changes',
      'es': 'Guardar cambios',
      'sl': 'Shrani spremembe',
    },
  },
  // documents
  {
    'dfjn6g41': {
      'en': 'Documents',
      'es': 'Documentos',
      'sl': 'Dokumenti',
    },
    '0a2yk14h': {
      'en': 'Pdf',
      'es': 'Pdf',
      'sl': 'PDF',
    },
    'url3h1t4': {
      'en': 'Link',
      'es': 'Enlace',
      'sl': 'Povezava',
    },
  },
  // userDetails
  {
    'q2ttw3nx': {
      'en': 'Log out',
      'es': 'Cerrar sesión',
      'sl': 'Odjava',
    },
  },
  // newWarehouse
  {
    'o97erejm': {
      'en': 'Warehouse: ',
      'es': 'Depósito:',
      'sl': 'Skladišče:',
    },
    'p1lfr17r': {
      'en': 'New warehouse...',
      'es': 'Nuevo almacén...',
      'sl': 'Novo skladišče...',
    },
  },
  // newClient
  {
    'h6jtdngy': {
      'en': 'Client:  ',
      'es': 'Cliente:',
      'sl': 'Naročnik:',
    },
    '1px7ctty': {
      'en': 'New client...',
      'es': 'Cliente nuevo...',
      'sl': 'Nova stranka...',
    },
    'sjbvje91': {
      'en': 'Address: ',
      'es': 'DIRECCIÓN:',
      'sl': 'Naslov:',
    },
    'vz4q8jsk': {
      'en': 'New address...',
      'es': 'Nueva direccion...',
      'sl': 'Nov naslov...',
    },
    '65cnxij8': {
      'en': 'City: ',
      'es': 'Ciudad:',
      'sl': 'mesto:',
    },
    'enfhsq8e': {
      'en': 'New city...',
      'es': 'Ciudad Nueva...',
      'sl': 'Novo mesto...',
    },
    'kj7tuqhy': {
      'en': 'Country: ',
      'es': 'País:',
      'sl': 'Država:',
    },
    'dljeiog1': {
      'en': 'New country...',
      'es': 'Nuevo país...',
      'sl': 'Nova država...',
    },
    'eslqukvn': {
      'en': 'Name aiss: ',
      'es': 'Nombre:',
      'sl': 'Ime aiss:',
    },
    'mdbs2xhl': {
      'en': 'New name aiss...',
      'es': 'Nuevo nombre ais...',
      'sl': 'Novo ime aiss...',
    },
    'jm18165z': {
      'en': 'Vat no: ',
      'es': 'N° IVA:',
      'sl': 'DDV številka:',
    },
    'tem12gym': {
      'en': 'New vat no...',
      'es': 'cuba nueva no...',
      'sl': 'Nova pdv št...',
    },
    'h1eq3lya': {
      'en': 'Field is required',
      'es': 'Se requiere campo',
      'sl': 'Polje je obvezno',
    },
    'j76z399g': {
      'en': 'Please choose an option from the dropdown',
      'es': 'Por favor elija una opción del menú desplegable',
      'sl': 'V spustnem meniju izberite možnost',
    },
    'h6pnjwkz': {
      'en': 'Field is required',
      'es': 'Se requiere campo',
      'sl': 'Polje je obvezno',
    },
    'eerv76l0': {
      'en': 'Please choose an option from the dropdown',
      'es': 'Por favor elija una opción del menú desplegable',
      'sl': 'V spustnem meniju izberite možnost',
    },
    'rtp7499s': {
      'en': 'Field is required',
      'es': 'Se requiere campo',
      'sl': 'Polje je obvezno',
    },
    'js7r29h2': {
      'en': 'Please choose an option from the dropdown',
      'es': 'Por favor elija una opción del menú desplegable',
      'sl': 'V spustnem meniju izberite možnost',
    },
    'ohi3ikuc': {
      'en': 'Field is required',
      'es': 'Se requiere campo',
      'sl': 'Polje je obvezno',
    },
    'fw0xj1uq': {
      'en': 'Please choose an option from the dropdown',
      'es': 'Por favor elija una opción del menú desplegable',
      'sl': 'V spustnem meniju izberite možnost',
    },
    '44nfv83y': {
      'en': 'Field is required',
      'es': 'Se requiere campo',
      'sl': 'Polje je obvezno',
    },
    '6cw4jtvg': {
      'en': 'Please choose an option from the dropdown',
      'es': 'Por favor elija una opción del menú desplegable',
      'sl': 'V spustnem meniju izberite možnost',
    },
    '5oph71lk': {
      'en': 'Field is required',
      'es': 'Se requiere campo',
      'sl': 'Polje je obvezno',
    },
    '2scpc0r9': {
      'en': 'Please choose an option from the dropdown',
      'es': 'Por favor elija una opción del menú desplegable',
      'sl': 'V spustnem meniju izberite možnost',
    },
  },
  // newCustom
  {
    'gfr0zflc': {
      'en': 'Custom: ',
      'es': 'Costumbre:',
      'sl': 'Po meri:',
    },
    'cnq234w7': {
      'en': 'New custom...',
      'es': 'Nueva costumbre...',
      'sl': 'Nov običaj...',
    },
    'u5vics5e': {
      'en': 'Field is required',
      'es': 'Se requiere campo',
      'sl': 'Polje je obvezno',
    },
    'jtaa65zm': {
      'en': 'Please choose an option from the dropdown',
      'es': 'Por favor elija una opción del menú desplegable',
      'sl': 'V spustnem meniju izberite možnost',
    },
  },
  // newGoodDescription
  {
    'qbsp1a8h': {
      'en': 'Description: ',
      'es': 'Descripción:',
      'sl': 'Opis:',
    },
    'kmm0hkye': {
      'en': 'New description...',
      'es': 'Nueva descripción...',
      'sl': 'Nov opis...',
    },
    'dj9hrp0p': {
      'en': 'Field is required',
      'es': 'Se requiere campo',
      'sl': 'Polje je obvezno',
    },
    'yu78z8qo': {
      'en': 'Please choose an option from the dropdown',
      'es': 'Por favor elija una opción del menú desplegable',
      'sl': 'V spustnem meniju izberite možnost',
    },
  },
  // newGood
  {
    'xwu1uyct': {
      'en': 'Good: ',
      'es': 'Bien:',
      'sl': 'dobro:',
    },
    '2un22j9z': {
      'en': 'New good...',
      'es': 'Nuevo bueno...',
      'sl': 'Nova dobra...',
    },
    'sq2f2k0w': {
      'en': 'Field is required',
      'es': 'Se requiere campo',
      'sl': 'Polje je obvezno',
    },
    '64b7o6um': {
      'en': 'Please choose an option from the dropdown',
      'es': 'Por favor elija una opción del menú desplegable',
      'sl': 'V spustnem meniju izberite možnost',
    },
  },
  // newLoadingGate
  {
    '95q7dja7': {
      'en': 'Warehouse: ',
      'es': 'Depósito:',
      'sl': 'Skladišče:',
    },
    'wx224juo': {
      'en': 'Option 1',
      'es': 'Opción 1',
      'sl': 'Možnost 1',
    },
    '3696mz9p': {
      'en': 'Select warehouse...',
      'es': 'Seleccionar almacén...',
      'sl': 'Izberite skladišče...',
    },
    'hz84ye0l': {
      'en': 'Search for an item...',
      'es': 'Buscar un artículo...',
      'sl': 'Iskanje predmeta ...',
    },
    'spkxcu4p': {
      'en': 'Ramp: ',
      'es': 'Rampa:',
      'sl': 'Rampa:',
    },
    'r5pyn0sn': {
      'en': 'New ramp...',
      'es': 'Nueva rampa...',
      'sl': 'Nova rampa...',
    },
    'lwps3dsm': {
      'en': 'Field is required',
      'es': 'Se requiere campo',
      'sl': 'Polje je obvezno',
    },
    '8bzeqmly': {
      'en': 'Please choose an option from the dropdown',
      'es': 'Por favor elija una opción del menú desplegable',
      'sl': 'V spustnem meniju izberite možnost',
    },
  },
  // newManipulation
  {
    'y4j5k3yp': {
      'en': 'Manipulation: ',
      'es': 'Manipulación:',
      'sl': 'Manipulacija:',
    },
    'ke8apo4f': {
      'en': 'New manipulation...',
      'es': 'Nueva manipulación...',
      'sl': 'Nova manipulacija...',
    },
    'tsup8plf': {
      'en': 'Field is required',
      'es': 'Se requiere campo',
      'sl': 'Polje je obvezno',
    },
    '5b1cdr4g': {
      'en': 'Please choose an option from the dropdown',
      'es': 'Por favor elija una opción del menú desplegable',
      'sl': 'V spustnem meniju izberite možnost',
    },
  },
  // newPackaging
  {
    '9mqkzgm4': {
      'en': 'Packaging: ',
      'es': 'Embalaje:',
      'sl': 'Pakiranje:',
    },
    'b56ct651': {
      'en': 'New packaging...',
      'es': 'Nuevo envase...',
      'sl': 'Nova embalaža...',
    },
    'hxgjg6fl': {
      'en': 'Abbreviation: ',
      'es': 'Abreviatura:',
      'sl': 'Okrajšava:',
    },
    'u3sqa3vh': {
      'en': 'New abbreviation...',
      'es': 'Nueva abreviatura...',
      'sl': 'Nova okrajšava...',
    },
    'pmyl2hn9': {
      'en': 'Field is required',
      'es': 'Se requiere campo',
      'sl': 'Polje je obvezno',
    },
    'fwiuhoz2': {
      'en': 'Please choose an option from the dropdown',
      'es': 'Por favor elija una opción del menú desplegable',
      'sl': 'V spustnem meniju izberite možnost',
    },
  },
  // Miscellaneous
  {
    'k5pc0j8z': {
      'en': '',
      'es': '',
      'sl': '',
    },
    'pwf0ghf1': {
      'en': '',
      'es': '',
      'sl': '',
    },
    'ivaqlgfi': {
      'en': '',
      'es': '',
      'sl': '',
    },
    'csrov8n9': {
      'en': '',
      'es': '',
      'sl': '',
    },
    'rbtfyzf9': {
      'en': '',
      'es': '',
      'sl': '',
    },
    'eez6rkdb': {
      'en': '',
      'es': '',
      'sl': '',
    },
    'itz1hf3a': {
      'en': '',
      'es': '',
      'sl': '',
    },
    '4x1hv0mu': {
      'en': '',
      'es': '',
      'sl': '',
    },
    'odohdhvj': {
      'en': '',
      'es': '',
      'sl': '',
    },
    'hwsma49d': {
      'en': '',
      'es': '',
      'sl': '',
    },
    '3kxbw6bg': {
      'en': '',
      'es': '',
      'sl': '',
    },
    'srz7eazo': {
      'en': '',
      'es': '',
      'sl': '',
    },
    'rivmqkjo': {
      'en': '',
      'es': '',
      'sl': '',
    },
    'etrzh6wy': {
      'en': '',
      'es': '',
      'sl': '',
    },
    'bsq5h3vg': {
      'en': '',
      'es': '',
      'sl': '',
    },
    'czm8n72j': {
      'en': '',
      'es': '',
      'sl': '',
    },
    '6ujolk1u': {
      'en': '',
      'es': '',
      'sl': '',
    },
    'lb236u7h': {
      'en': '',
      'es': '',
      'sl': '',
    },
    'y5umfypx': {
      'en': '',
      'es': '',
      'sl': '',
    },
    'y78gwke6': {
      'en': '',
      'es': '',
      'sl': '',
    },
    'mdqz4w2b': {
      'en': '',
      'es': '',
      'sl': '',
    },
    'bgnkabsd': {
      'en': '',
      'es': '',
      'sl': '',
    },
    'dxo7iz23': {
      'en': '',
      'es': '',
      'sl': '',
    },
    'otczd5kt': {
      'en': '',
      'es': '',
      'sl': '',
    },
    'k4rb355g': {
      'en': '',
      'es': '',
      'sl': '',
    },
    'yp3jf95w': {
      'en': '',
      'es': '',
      'sl': '',
    },
  },
].reduce((a, b) => a..addAll(b));
