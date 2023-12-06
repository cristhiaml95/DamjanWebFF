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
    '9hf9xgri': {
      'en': 'Order overview',
      'es': 'Resumen de pedidos',
      'sl': 'Pregled naročila',
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
    '788tskw3': {
      'en': 'Recent movements',
      'es': 'Movimientos recientes',
      'sl': 'Nedavna gibanja',
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
    'c21jfo2s': {
      'en': 'Filters',
      'es': 'Filtros',
      'sl': 'Filtri',
    },
    '87o52eca': {
      'en': 'Inventory status',
      'es': 'Estado de inventario',
      'sl': 'Stanje zalog',
    },
    '0hz2bmf4': {
      'en': 'Order No.',
      'es': 'N º de pedido.',
      'sl': 'Številka naročila.',
    },
    'zncalvd1': {
      'en': 'Client',
      'es': 'Cliente',
      'sl': 'Stranka',
    },
    'sry4l4s2': {
      'en': 'Date (order creation)',
      'es': 'Fecha (creación del pedido)',
      'sl': 'Datum (izdelava naročila)',
    },
    'h2zp4prd': {
      'en': 'Flow',
      'es': 'Fluir',
      'sl': 'Tok',
    },
    'gickv2pq': {
      'en': 'Order Status',
      'es': 'Estado del pedido',
      'sl': 'Status naročila',
    },
    '4wmpcw6p': {
      'en': 'Admin name',
      'es': 'Nombre del administrador',
      'sl': 'Ime skrbnika',
    },
    'o2eoprgs': {
      'en': 'Warehouse',
      'es': 'Depósito',
      'sl': 'Skladišče',
    },
    'okurx3sq': {
      'en': 'Arrival Date',
      'es': 'Fecha de llegada',
      'sl': 'Datum prihoda',
    },
    'er3rci37': {
      'en': 'Time (Approx.)',
      'es': 'Tiempo (aprox.)',
      'sl': 'Čas (pribl.)',
    },
    'y2nnzux4': {
      'en': 'Arrival',
      'es': 'Llegada',
      'sl': 'Prihod',
    },
    '107jplnv': {
      'en': 'Loading Gate',
      'es': 'Puerta de carga',
      'sl': 'Nakladalna vrata',
    },
    'ujd8hhk8': {
      'en': 'Details',
      'es': 'Detalles',
      'sl': 'Podrobnosti',
    },
    '06hr9q7q': {
      'en': 'Edit',
      'es': 'Editar',
      'sl': 'Uredi',
    },
    'ejz2gb7t': {
      'en': 'Delete',
      'es': 'Borrar',
      'sl': 'Izbriši',
    },
    'twdqlob4': {
      'en': 'Loading Gate Sequence',
      'es': 'Secuencia de puerta de carga',
      'sl': 'Zaporedje vrat za nalaganje',
    },
    'k0zz51q8': {
      'en': 'Start (upload/unload)',
      'es': 'Iniciar (cargar/descargar)',
      'sl': 'Začetek (nalaganje/razlaganje)',
    },
    'u3ijaewz': {
      'en': 'Stop (upload/unload)',
      'es': 'Detener (cargar/descargar)',
      'sl': 'Ustavi (naloži/razloži)',
    },
    '6n9rbllc': {
      'en': 'Licence plate No.',
      'es': 'Matrícula No.',
      'sl': 'registrska tablica št.',
    },
    'pny2c3gb': {
      'en': 'Quantity',
      'es': 'Cantidad',
      'sl': 'Količina',
    },
    'p5k27kxl': {
      'en': 'Pallet position',
      'es': 'Posición del palet',
      'sl': 'Položaj palete',
    },
    'wfso9jfw': {
      'en': 'Unit',
      'es': 'Unidad',
      'sl': 'Enota',
    },
    '5rw12nca': {
      'en': 'Weight',
      'es': 'Peso',
      'sl': 'Utež',
    },
    '1t7u18tt': {
      'en': 'Container No.',
      'es': 'No contenedor.',
      'sl': 'posoda št.',
    },
    'oh3dt4i6': {
      'en': 'Improvement',
      'es': 'Mejora',
      'sl': 'Izboljšava',
    },
    'gusjkb9g': {
      'en': 'Details',
      'es': 'Detalles',
      'sl': 'Podrobnosti',
    },
    'k1fp6ucx': {
      'en': 'Edit',
      'es': 'Editar',
      'sl': 'Uredi',
    },
    'y4clhm3g': {
      'en': 'Delete',
      'es': 'Borrar',
      'sl': 'Izbriši',
    },
    '3u4edcpm': {
      'en': 'Customs',
      'es': 'Aduanas',
      'sl': 'Carina',
    },
    'qc2c841j': {
      'en': 'Responsible',
      'es': 'Responsable',
      'sl': 'Odgovorno',
    },
    'drgh0quh': {
      'en': 'Assistant 1',
      'es': 'Asistente 1',
      'sl': 'Pomočnik 1',
    },
    'phc78vbh': {
      'en': 'Assistant 2',
      'es': 'Asistente 2',
      'sl': 'Pomočnik 2',
    },
    'ewtsb710': {
      'en': 'Assistant 3',
      'es': 'Asistente 3',
      'sl': 'Pomočnik 3',
    },
    'm8f7rl8o': {
      'en': 'Assistant 4',
      'es': 'Asistente 4',
      'sl': 'Pomočnik 4',
    },
    'mey6rg8c': {
      'en': 'Assistant 5',
      'es': 'Asistente 5',
      'sl': 'Pomočnik 5',
    },
    'lbqpqfz8': {
      'en': 'Assistant 6',
      'es': 'Asistente 6',
      'sl': 'Pomočnik 6',
    },
    'utcyzk8v': {
      'en': 'FMS ref',
      'es': 'referencia FMS',
      'sl': 'FMS ref',
    },
    'zixsjgyz': {
      'en': 'Load ref/dvh',
      'es': 'Cargar ref/dvh',
      'sl': 'Naloži ref/dvh',
    },
    'mto98zbb': {
      'en': 'Details',
      'es': 'Detalles',
      'sl': 'Podrobnosti',
    },
    '42ou2t8a': {
      'en': 'Edit',
      'es': 'Editar',
      'sl': 'Uredi',
    },
    '41ejol5s': {
      'en': 'Delete',
      'es': 'Borrar',
      'sl': 'Izbriši',
    },
    '562co4jx': {
      'en': 'Damaged mark',
      'es': 'marca dañada',
      'sl': 'Poškodovana oznaka',
    },
    '1hc1vf7y': {
      'en': 'Universal ref num',
      'es': 'Número de referencia universal',
      'sl': 'Univerzalna refer. št',
    },
    'iazw9p52': {
      'en': 'Comment',
      'es': 'Comentario',
      'sl': 'Komentiraj',
    },
    '3p6jbq5v': {
      'en': 'Other manipulations',
      'es': 'Otras manipulaciones',
      'sl': 'Druge manipulacije',
    },
    'ud48yked': {
      'en': 'Type of un/upload',
      'es': 'Tipo de descarga/descarga',
      'sl': 'Vrsta razveljavitve/nalaganja',
    },
    'um0q5laq': {
      'en': 'Type of un/upload 2',
      'es': 'Tipo de descarga/descarga 2',
      'sl': 'Vrsta razveljavitve/nalaganja 2',
    },
    'k01662rj': {
      'en': 'Documents',
      'es': 'Documentos',
      'sl': 'Dokumenti',
    },
    'dysnvqy2': {
      'en': 'Internal number - accounting',
      'es': 'Número interno - contabilidad',
      'sl': 'Interna številka - računovodstvo',
    },
    'qzslen50': {
      'en': 'Internal reference number - customs',
      'es': 'Número de referencia interno - aduanas',
      'sl': 'Interna referenčna številka - carina',
    },
    'mx5a59jg': {
      'en': 'Details',
      'es': 'Detalles',
      'sl': 'Podrobnosti',
    },
    'a245kouc': {
      'en': 'Edit',
      'es': 'Editar',
      'sl': 'Uredi',
    },
    'lebyfi8m': {
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
    '5wv0fwyo': {
      'en': 'Order overview',
      'es': 'Resumen de pedidos',
      'sl': 'Pregled naročila',
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
    '6or24enr': {
      'en': 'Recent movements',
      'es': 'Movimientos recientes',
      'sl': 'Nedavna gibanja',
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
    '9xxybkt7': {
      'en': 'Order overview',
      'es': 'Resumen de pedidos',
      'sl': 'Pregled naročila',
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
    'aoz2sbye': {
      'en': 'Recent movements',
      'es': 'Movimientos recientes',
      'sl': 'Nedavna gibanja',
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
  // order_overview
  {
    '4wsrb1wi': {
      'en': 'Trampuž',
      'es': 'Trampuz',
      'sl': 'Trampuž',
    },
    'mptq4cds': {
      'en': 'Dashboard',
      'es': 'Panel',
      'sl': 'Nadzorna plošča',
    },
    'tec273vi': {
      'en': 'Order overview',
      'es': 'Resumen de pedidos',
      'sl': 'Pregled naročila',
    },
    'k45314yi': {
      'en': 'Order warehouse',
      'es': 'Almacén de pedidos',
      'sl': 'Naročite skladišče',
    },
    '0obc2c85': {
      'en': 'Warehouse 2',
      'es': 'Almacén 2',
      'sl': 'Skladišče 2',
    },
    'otik4136': {
      'en': 'Recent movements',
      'es': 'Movimientos recientes',
      'sl': 'Nedavna gibanja',
    },
    'hzz4qal4': {
      'en': 'Settings',
      'es': 'Ajustes',
      'sl': 'nastavitve',
    },
    '6lb48woe': {
      'en': 'Users',
      'es': 'Usuarios',
      'sl': 'Uporabniki',
    },
    'ozj71tla': {
      'en': 'Explore',
      'es': 'Explorar',
      'sl': 'Raziščite',
    },
    'jvd3s0w4': {
      'en': 'Order overview',
      'es': 'Resumen de pedidos',
      'sl': 'Pregled naročila',
    },
    'm09tvrfy': {
      'en': 'Movements',
      'es': 'Movimientos',
      'sl': 'Gibanja',
    },
    'jods274b': {
      'en': 'Below are the details of your inventory movements.',
      'es':
          'A continuación se muestran los detalles de sus movimientos de inventario.',
      'sl': 'Spodaj so podrobnosti o gibanju vašega inventarja.',
    },
    'ejr128eh': {
      'en': 'Filters',
      'es': 'Filtros',
      'sl': 'Filtri',
    },
    'uei1wa0f': {
      'en': 'Order No.',
      'es': 'N º de pedido.',
      'sl': 'Številka naročila.',
    },
    '4qa1yq6s': {
      'en': 'Client',
      'es': 'Cliente',
      'sl': 'Stranka',
    },
    'kdk8f7kh': {
      'en': 'Flow',
      'es': 'Fluir',
      'sl': 'Tok',
    },
    'oq142wbw': {
      'en': 'Date (order creation)',
      'es': 'Fecha (creación del pedido)',
      'sl': 'Datum (izdelava naročila)',
    },
    '1l14kqkx': {
      'en': 'Time',
      'es': 'Tiempo',
      'sl': 'Čas',
    },
    '8a3pow04': {
      'en': 'Order Status',
      'es': 'Estado del pedido',
      'sl': 'Status naročila',
    },
    '10huia7g': {
      'en': 'Admin name',
      'es': 'Nombre del administrador',
      'sl': 'Ime skrbnika',
    },
    '8u4nje9k': {
      'en': 'Warehouse',
      'es': 'Depósito',
      'sl': 'Skladišče',
    },
    'j36nbf4q': {
      'en': 'Quantity',
      'es': 'Cantidad',
      'sl': 'Količina',
    },
    '3vvrcltq': {
      'en': 'Custom',
      'es': 'Costumbre',
      'sl': 'Po meri',
    },
    '4ud2i6wv': {
      'en': 'Document',
      'es': 'Documento',
      'sl': 'Dokument',
    },
    'zr1r30z4': {
      'en': 'Int. num. acc.',
      'es': 'En t. núm. según',
      'sl': 'Int. št. acc.',
    },
    'jutau9yj': {
      'en': 'Int. ref. custom',
      'es': 'En t. árbitro. costumbre',
      'sl': 'Int. ref. po meri',
    },
    'hsl7ifnu': {
      'en': 'Details',
      'es': 'Detalles',
      'sl': 'Podrobnosti',
    },
    '6joa0ub0': {
      'en': 'Edit',
      'es': 'Editar',
      'sl': 'Uredi',
    },
    '8egtaedv': {
      'en': 'Delete',
      'es': 'Borrar',
      'sl': 'Izbriši',
    },
    '6r8mvs1b': {
      'en': 'Create new record',
      'es': 'Crear nuevo registro',
      'sl': 'Ustvari nov zapis',
    },
    '5pt8ni5i': {
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
    'ng7qeep5': {
      'en': 'Good',
      'es': 'Bien',
      'sl': 'Dobro',
    },
    'h5mensag': {
      'en': 'Good description',
      'es': 'Buena descripción',
      'sl': 'Dober opis',
    },
    '4oeuzpi8': {
      'en': 'Packaging',
      'es': 'embalaje',
      'sl': 'Pakiranje',
    },
    '5gd7acex': {
      'en': 'Warehouse position',
      'es': 'Posición del almacén',
      'sl': 'Položaj skladišča',
    },
    'tr6v4m0i': {
      'en': 'Barcode',
      'es': 'Código de barras',
      'sl': 'Črtna koda',
    },
    'ta1q4u0r': {
      'en': 'Edit',
      'es': 'Editar',
      'sl': 'Uredi',
    },
    'w9prd8ot': {
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
      'en': 'Form 1',
      'es': 'Formulario 1',
      'sl': 'obrazec 1',
    },
    'slij6xnt': {
      'en': 'Form 2',
      'es': 'Formulario 2',
      'sl': 'obrazec 2',
    },
    'ixgnt5vg': {
      'en': 'Form 3',
      'es': 'Formulario 3',
      'sl': 'Obrazec 3',
    },
    '7mz1zveh': {
      'en': 'Form 4',
      'es': 'Formulario 4',
      'sl': 'Obrazec 4',
    },
    '06cqog9s': {
      'en': 'Form 5',
      'es': 'Formulario 5',
      'sl': 'Obrazec 5',
    },
    'xhi20m6b': {
      'en': 'Order No:  ',
      'es': 'N º de pedido:',
      'sl': 'Številka naročila:',
    },
    'il7vvnn2': {
      'en': 'Insert new value...',
      'es': 'Insertar nuevo valor...',
      'sl': 'Vstavi novo vrednost ...',
    },
    '5puhm8fn': {
      'en': 'Client:  ',
      'es': 'Cliente:',
      'sl': 'Naročnik:',
    },
    'mqr4u205': {
      'en': 'Please select...',
      'es': 'Por favor seleccione...',
      'sl': 'Prosim izberite...',
    },
    'g7vc91j1': {
      'en': 'Search for an item...',
      'es': 'Buscar un artículo...',
      'sl': 'Iskanje predmeta ...',
    },
    'umgbs7tb': {
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
    'kzd3mask': {
      'en': 'Please select...',
      'es': 'Por favor seleccione...',
      'sl': 'Prosim izberite...',
    },
    'cocrs8uw': {
      'en': 'Search for an item...',
      'es': 'Buscar un artículo...',
      'sl': 'Iskanje predmeta ...',
    },
    't4x9tkxa': {
      'en': 'Estimated arrival:  ',
      'es': 'Llegada estimada:',
      'sl': 'Predviden prihod:',
    },
    'fg1xc0cp': {
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
    'h7tc0t10': {
      'en': 'priprava',
      'es': 'priprava',
      'sl': 'priprava',
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
    'zpcydixd': {
      'en': 'Please select...',
      'es': 'Por favor seleccione...',
      'sl': 'Prosim izberite...',
    },
    'vinazm7z': {
      'en': 'Search for an item...',
      'es': 'Buscar un artículo...',
      'sl': 'Iskanje predmeta ...',
    },
    'm8504ht5': {
      'en': 'Warehouse:  ',
      'es': 'Depósito:',
      'sl': 'Skladišče:',
    },
    'qmkrs0zj': {
      'en': 'Please select...',
      'es': 'Por favor seleccione...',
      'sl': 'Prosim izberite...',
    },
    'uyruzdr8': {
      'en': 'Search for an item...',
      'es': 'Buscar un artículo...',
      'sl': 'Iskanje predmeta ...',
    },
    'ncrspa6v': {
      'en': 'Creation date:  ',
      'es': 'Fecha de creación:',
      'sl': 'Datum nastanka:',
    },
    'dtcz3z81': {
      'en': 'Responsible:  ',
      'es': 'Responsable:',
      'sl': 'Odgovorni:',
    },
    'h0mm7fz2': {
      'en': 'Please select...',
      'es': 'Por favor seleccione...',
      'sl': 'Prosim izberite...',
    },
    'uh5dxl5p': {
      'en': 'Search for an item...',
      'es': 'Buscar un artículo...',
      'sl': 'Iskanje predmeta ...',
    },
    '2vbwap0s': {
      'en': 'Custom:  ',
      'es': 'Costumbre:',
      'sl': 'Po meri:',
    },
    'cw8appfo': {
      'en': 'Please select...',
      'es': 'Por favor seleccione...',
      'sl': 'Prosim izberite...',
    },
    'ynfr932b': {
      'en': 'Search for an item...',
      'es': 'Buscar un artículo...',
      'sl': 'Iskanje predmeta ...',
    },
    'le5vzwe0': {
      'en': 'Internal reference number - customs:  ',
      'es': 'Número de referencia interna - aduanas:',
      'sl': 'Interna referenčna številka - carina:',
    },
    'm57k31e3': {
      'en': 'Insert new value...',
      'es': 'Insertar nuevo valor...',
      'sl': 'Vstavi novo vrednost ...',
    },
    'egsqs1qd': {
      'en': 'Internal number - accounting:  ',
      'es': 'Número interno - contabilidad:',
      'sl': 'Interna številka - računovodstvo:',
    },
    'bg5uoreu': {
      'en': 'Insert new value...',
      'es': 'Insertar nuevo valor...',
      'sl': 'Vstavi novo vrednost ...',
    },
    '5d3u0131': {
      'en': 'Documents:  ',
      'es': 'Documentos:',
      'sl': 'Dokumenti:',
    },
    'fsg9rj3i': {
      'en': 'Insert new value...',
      'es': 'Insertar nuevo valor...',
      'sl': 'Vstavi novo vrednost ...',
    },
    '4a40qnn5': {
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
    'i3yhp4qt': {
      'en': 'Please select...',
      'es': 'Por favor seleccione...',
      'sl': 'Prosim izberite...',
    },
    'n5adkyve': {
      'en': 'Search for an item...',
      'es': 'Buscar un artículo...',
      'sl': 'Iskanje predmeta ...',
    },
    '15e72e6y': {
      'en': 'Announced time 1:  ',
      'es': 'Hora anunciada 1:',
      'sl': 'Napovedan čas 1:',
    },
    '2eukvlfl': {
      'en': 'Announced time 2:  ',
      'es': 'Hora anunciada 2:',
      'sl': 'Napovedan čas 2:',
    },
    'llj5tej8': {
      'en': 'Arrival:  ',
      'es': 'Llegada:',
      'sl': 'Prihod:',
    },
    'na2qlw6i': {
      'en': 'Loading gate:  ',
      'es': 'Puerta de carga:',
      'sl': 'Vrata za nakladanje:',
    },
    't4qr6f8j': {
      'en': 'Please select...',
      'es': 'Por favor seleccione...',
      'sl': 'Prosim izberite...',
    },
    'o6gubyim': {
      'en': 'Search for an item...',
      'es': 'Buscar un artículo...',
      'sl': 'Iskanje predmeta ...',
    },
    'jd1nxnxr': {
      'en': 'Loading gate sequence:  ',
      'es': 'Secuencia de puerta de carga:',
      'sl': 'Zaporedje vrat za nalaganje:',
    },
    'slsk32a0': {
      'en': 'Insert new value...',
      'es': 'Insertar nuevo valor...',
      'sl': 'Vstavi novo vrednost ...',
    },
    'qq1wd08x': {
      'en': 'Start (upload/unload):  ',
      'es': 'Iniciar (cargar/descargar):',
      'sl': 'Začetek (nalaganje/razlaganje):',
    },
    'gbdut9aq': {
      'en': 'Stop (upload/unload):  ',
      'es': 'Detener (cargar/descargar):',
      'sl': 'Ustavi (nalaganje/odlaganje):',
    },
    'w9npb5la': {
      'en': 'Licence plate No:  ',
      'es': 'Número de matrícula:',
      'sl': 'Številka registrske tablice:',
    },
    'g2oexmbs': {
      'en': 'Insert new value...',
      'es': 'Insertar nuevo valor...',
      'sl': 'Vstavi novo vrednost ...',
    },
    '42rr8l7b': {
      'en': 'Improvement:  ',
      'es': 'Mejora:',
      'sl': 'Izboljšava:',
    },
    'yemivd25': {
      'en': 'kont.-20"',
      'es': 'conector-20"',
      'sl': 'kont.-20"',
    },
    'hrq9kto7': {
      'en': 'kont.-40"',
      'es': 'conector-40"',
      'sl': 'kont.-40"',
    },
    '0tsg0nv8': {
      'en': 'kont.-45"',
      'es': 'conector-45"',
      'sl': 'kont.-45"',
    },
    'nsvmoq8j': {
      'en': 'cerada',
      'es': 'cerada',
      'sl': 'cerada',
    },
    'hj1mnzao': {
      'en': 'hladilnik',
      'es': 'hladilnik',
      'sl': 'hladilnik',
    },
    'tbwirq02': {
      'en': 'silos',
      'es': 'silos',
      'sl': 'silosi',
    },
    '7s53wqbg': {
      'en': 'Please select...',
      'es': 'Por favor seleccione...',
      'sl': 'Prosim izberite...',
    },
    '06x3pud7': {
      'en': 'Search for an item...',
      'es': 'Buscar un artículo...',
      'sl': 'Iskanje predmeta ...',
    },
    'dz8pmec2': {
      'en': 'Container No:  ',
      'es': 'No contenedor:',
      'sl': 'Št. zabojnika:',
    },
    'fx6e2bzz': {
      'en': 'Insert new value...',
      'es': 'Insertar nuevo valor...',
      'sl': 'Vstavi novo vrednost ...',
    },
    'v22y7evv': {
      'en': 'Comment:  ',
      'es': 'Comentario:',
      'sl': 'komentar:',
    },
    'l8lg1mif': {
      'en': 'Insert new value...',
      'es': 'Insertar nuevo valor...',
      'sl': 'Vstavi novo vrednost ...',
    },
    'sfnu9hsh': {
      'en': 'Quantity:  ',
      'es': 'Cantidad:',
      'sl': 'Količina:',
    },
    '2bnlr1ye': {
      'en': 'Insert new value...',
      'es': 'Insertar nuevo valor...',
      'sl': 'Vstavi novo vrednost ...',
    },
    've5lecs6': {
      'en': 'Pallet position:  ',
      'es': 'Posición del palet:',
      'sl': 'Položaj palete:',
    },
    '963ibpdr': {
      'en': 'Insert new value...',
      'es': 'Insertar nuevo valor...',
      'sl': 'Vstavi novo vrednost ...',
    },
    '7bxazwwv': {
      'en': 'Unit:  ',
      'es': 'Unidad:',
      'sl': 'Enota:',
    },
    'qvrjjt6g': {
      'en': 'Insert new value...',
      'es': 'Insertar nuevo valor...',
      'sl': 'Vstavi novo vrednost ...',
    },
    'nbxsam7i': {
      'en': 'Weight:  ',
      'es': 'Peso:',
      'sl': 'Utež:',
    },
    '6todpo8g': {
      'en': 'Insert new value...',
      'es': 'Insertar nuevo valor...',
      'sl': 'Vstavi novo vrednost ...',
    },
    'xg5td71o': {
      'en': 'Other manipulations:  ',
      'es': 'Otras manipulaciones:',
      'sl': 'Druge manipulacije:',
    },
    't602reun': {
      'en': 'paletiranje',
      'es': 'paletiranje',
      'sl': 'paletiranje',
    },
    'y6y27gjf': {
      'en': 'čiščenje',
      'es': 'ciščenje',
      'sl': 'čiščenje',
    },
    'av72bxme': {
      'en': 'ovijanje-folija',
      'es': 'ovijanje-folija',
      'sl': 'ovijanje-folija',
    },
    'ycapl6g3': {
      'en': 'povezovanje',
      'es': 'povezovanje',
      'sl': 'povezovanje',
    },
    'i0pz743s': {
      'en': 'Please select...',
      'es': 'Por favor seleccione...',
      'sl': 'Prosim izberite...',
    },
    'mfssgox9': {
      'en': 'Search for an item...',
      'es': 'Buscar un artículo...',
      'sl': 'Iskanje predmeta ...',
    },
    'mitkqu7r': {
      'en': 'Type of un/upload:  ',
      'es': 'Tipo de descarga/descarga:',
      'sl': 'Vrsta odstranitve/nalaganja:',
    },
    'gjfstrkq': {
      'en': 'viličar',
      'es': 'vilicar',
      'sl': 'viličar',
    },
    'wbicjeby': {
      'en': 'ročno',
      'es': 'ročno',
      'sl': 'ročno',
    },
    'kl95uo2h': {
      'en': 'Please select...',
      'es': 'Por favor seleccione...',
      'sl': 'Prosim izberite...',
    },
    '6ag5u2ug': {
      'en': 'Search for an item...',
      'es': 'Buscar un artículo...',
      'sl': 'Iskanje predmeta ...',
    },
    'rw7l8p93': {
      'en': 'Type of un/upload 2:  ',
      'es': 'Tipo de descarga/descarga 2:',
      'sl': 'Vrsta razveljavitve/nalaganja 2:',
    },
    'm6npubl6': {
      'en': 'viličar',
      'es': 'vilicar',
      'sl': 'viličar',
    },
    'jscrx0ez': {
      'en': 'ročno',
      'es': 'ročno',
      'sl': 'ročno',
    },
    'xp1y9n5j': {
      'en': 'Please select...',
      'es': 'Por favor seleccione...',
      'sl': 'Prosim izberite...',
    },
    'l18w26s5': {
      'en': 'Search for an item...',
      'es': 'Buscar un artículo...',
      'sl': 'Iskanje predmeta ...',
    },
    '3ks2s4ek': {
      'en': 'Responsible  ',
      'es': 'Responsable',
      'sl': 'Odgovorno',
    },
    'lpb3jm2f': {
      'en': 'Please select...',
      'es': 'Por favor seleccione...',
      'sl': 'Prosim izberite...',
    },
    'grcxnp49': {
      'en': 'Search for an item...',
      'es': 'Buscar un artículo...',
      'sl': 'Iskanje predmeta ...',
    },
    'bifdy4ti': {
      'en': 'Assistant 1:  ',
      'es': 'Asistente 1:',
      'sl': 'Pomočnik 1:',
    },
    '5u7x6vvh': {
      'en': 'Please select...',
      'es': 'Por favor seleccione...',
      'sl': 'Prosim izberite...',
    },
    '3kgownwn': {
      'en': 'Search for an item...',
      'es': 'Buscar un artículo...',
      'sl': 'Iskanje predmeta ...',
    },
    'j1zndiok': {
      'en': 'Assistant 2:  ',
      'es': 'Asistente 2:',
      'sl': 'Pomočnik 2:',
    },
    '7dgi3yr1': {
      'en': 'Please select...',
      'es': 'Por favor seleccione...',
      'sl': 'Prosim izberite...',
    },
    '24xpxxd3': {
      'en': 'Search for an item...',
      'es': 'Buscar un artículo...',
      'sl': 'Iskanje predmeta ...',
    },
    '0ximh46t': {
      'en': 'Assistant 3:  ',
      'es': 'Asistente 3:',
      'sl': 'Pomočnik 3:',
    },
    '5krsnwmb': {
      'en': 'Please select...',
      'es': 'Por favor seleccione...',
      'sl': 'Prosim izberite...',
    },
    'qyo1rr3d': {
      'en': 'Search for an item...',
      'es': 'Buscar un artículo...',
      'sl': 'Iskanje predmeta ...',
    },
    '3dc2my4g': {
      'en': 'Assistant 4:  ',
      'es': 'Asistente 4:',
      'sl': 'Pomočnik 4:',
    },
    '9o3069n6': {
      'en': 'Please select...',
      'es': 'Por favor seleccione...',
      'sl': 'Prosim izberite...',
    },
    'p5m1vzod': {
      'en': 'Search for an item...',
      'es': 'Buscar un artículo...',
      'sl': 'Iskanje predmeta ...',
    },
    'yx3kdv8b': {
      'en': 'Assistant 5:  ',
      'es': 'Asistente 5:',
      'sl': 'Pomočnik 5:',
    },
    '3jwd32ei': {
      'en': 'Please select...',
      'es': 'Por favor seleccione...',
      'sl': 'Prosim izberite...',
    },
    '1a084wws': {
      'en': 'Search for an item...',
      'es': 'Buscar un artículo...',
      'sl': 'Iskanje predmeta ...',
    },
    'xgdb8lbr': {
      'en': 'Assistant 6:  ',
      'es': 'Asistente 6:',
      'sl': 'Pomočnik 6:',
    },
    '601yzbo9': {
      'en': 'Please select...',
      'es': 'Por favor seleccione...',
      'sl': 'Prosim izberite...',
    },
    'pj37fydl': {
      'en': 'Search for an item...',
      'es': 'Buscar un artículo...',
      'sl': 'Iskanje predmeta ...',
    },
    'z202ytb9': {
      'en': 'Universal ref num:  ',
      'es': 'Número de referencia universal:',
      'sl': 'Univerzalna referenčna številka:',
    },
    'r44a4w8x': {
      'en': 'Insert new value...',
      'es': 'Insertar nuevo valor...',
      'sl': 'Vstavi novo vrednost ...',
    },
    'fbd2vk8f': {
      'en': 'FMS ref:  ',
      'es': 'Referencia FMS:',
      'sl': 'Ref. FMS:',
    },
    '9mg68zg5': {
      'en': 'Insert new value...',
      'es': 'Insertar nuevo valor...',
      'sl': 'Vstavi novo vrednost ...',
    },
    'hmxvey7w': {
      'en': 'Load ref/dvh:  ',
      'es': 'Cargar ref/dvh:',
      'sl': 'Naloži ref/dvh:',
    },
    'r5g4gonq': {
      'en': 'Insert new value...',
      'es': 'Insertar nuevo valor...',
      'sl': 'Vstavi novo vrednost ...',
    },
    'e8m9gut8': {
      'en': 'Load ref/dvh:  ',
      'es': 'Cargar ref/dvh:',
      'sl': 'Naloži ref/dvh:',
    },
    'hpaa4n3g': {
      'en': 'Please select...',
      'es': 'Por favor seleccione...',
      'sl': 'Prosim izberite...',
    },
    'zc13fj1i': {
      'en': 'Search for an item...',
      'es': 'Buscar un artículo...',
      'sl': 'Iskanje predmeta ...',
    },
    'bt3p1muw': {
      'en': 'Load ref/dvh:  ',
      'es': 'Cargar ref/dvh:',
      'sl': 'Naloži ref/dvh:',
    },
    '9nxifn9g': {
      'en': 'Please select...',
      'es': 'Por favor seleccione...',
      'sl': 'Prosim izberite...',
    },
    '69e8wsns': {
      'en': 'Search for an item...',
      'es': 'Buscar un artículo...',
      'sl': 'Iskanje predmeta ...',
    },
    'u4u807ox': {
      'en': 'Universal ref num:  ',
      'es': 'Número de referencia universal:',
      'sl': 'Univerzalna referenčna številka:',
    },
    '6cya4eut': {
      'en': 'Insert new value...',
      'es': 'Insertar nuevo valor...',
      'sl': 'Vstavi novo vrednost ...',
    },
    '5reaqscy': {
      'en': 'FMS ref:  ',
      'es': 'Referencia FMS:',
      'sl': 'Ref. FMS:',
    },
    'qmzyz0qk': {
      'en': 'Insert new value...',
      'es': 'Insertar nuevo valor...',
      'sl': 'Vstavi novo vrednost ...',
    },
    'ehpkl2ac': {
      'en': 'Load ref/dvh:  ',
      'es': 'Cargar ref/dvh:',
      'sl': 'Naloži ref/dvh:',
    },
    'lzfz2efv': {
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
  // createRecord
  {
    '23zmfaww': {
      'en': 'Create new record',
      'es': 'Crear nuevo registro',
      'sl': 'Ustvari nov zapis',
    },
    'h7vbjo07': {
      'en': 'Form 1',
      'es': 'Formulario 1',
      'sl': 'obrazec 1',
    },
    'bx2iudm8': {
      'en': 'Form 2',
      'es': 'Formulario 2',
      'sl': 'obrazec 2',
    },
    '5eb5bex3': {
      'en': 'Form 3',
      'es': 'Formulario 3',
      'sl': 'Obrazec 3',
    },
    'u5dt95hk': {
      'en': 'Form 4',
      'es': 'Formulario 4',
      'sl': 'Obrazec 4',
    },
    'rrkm5stu': {
      'en': 'Form 5',
      'es': 'Formulario 5',
      'sl': 'Obrazec 5',
    },
    '6mfgt7mc': {
      'en': 'Order No:  ',
      'es': 'N º de pedido:',
      'sl': 'Številka naročila:',
    },
    'j40vtkdj': {
      'en': 'Insert new value...',
      'es': 'Insertar nuevo valor...',
      'sl': 'Vstavi novo vrednost ...',
    },
    'euinr59i': {
      'en': 'Client:  ',
      'es': 'Cliente:',
      'sl': 'Naročnik:',
    },
    'afi6o3c8': {
      'en': 'Please select...',
      'es': 'Por favor seleccione...',
      'sl': 'Prosim izberite...',
    },
    '60k8kqff': {
      'en': 'Search for an item...',
      'es': 'Buscar un artículo...',
      'sl': 'Iskanje predmeta ...',
    },
    'j7bqmgtq': {
      'en': 'Input/output:  ',
      'es': 'De entrada y salida:',
      'sl': 'Vhod/izhod:',
    },
    'xt37sfxi': {
      'en': 'in-razklad',
      'es': 'en razklad',
      'sl': 'in-razklad',
    },
    'l7h6zijm': {
      'en': 'out-naklad',
      'es': 'fuera-naklad',
      'sl': 'izven-naklad',
    },
    '96l7zg13': {
      'en': 'Please select...',
      'es': 'Por favor seleccione...',
      'sl': 'Prosim izberite...',
    },
    'qq14wb9c': {
      'en': 'Search for an item...',
      'es': 'Buscar un artículo...',
      'sl': 'Iskanje predmeta ...',
    },
    'pq8br4eg': {
      'en': 'Estimated arrival:  ',
      'es': 'Llegada estimada:',
      'sl': 'Predviden prihod:',
    },
    'vh4y1b12': {
      'en': 'Order status:  ',
      'es': 'Estado del pedido:',
      'sl': 'Status naročila:',
    },
    '34df8vp6': {
      'en': 'novo naročilo',
      'es': 'nuevo naročilo',
      'sl': 'novo naročilo',
    },
    'uwqalsj9': {
      'en': 'novo naročilo',
      'es': 'nuevo naročilo',
      'sl': 'novo naročilo',
    },
    'kwbxr9gr': {
      'en': 'priprava',
      'es': 'priprava',
      'sl': 'priprava',
    },
    '2fpw9er3': {
      'en': 'izvajanje',
      'es': 'izvajanje',
      'sl': 'izvajanje',
    },
    'b7linal4': {
      'en': 'zaključeno',
      'es': 'zaključeno',
      'sl': 'zaključeno',
    },
    '2agy3euu': {
      'en': 'Please select...',
      'es': 'Por favor seleccione...',
      'sl': 'Prosim izberite...',
    },
    '73rqfl34': {
      'en': 'Search for an item...',
      'es': 'Buscar un artículo...',
      'sl': 'Iskanje predmeta ...',
    },
    'jt0y29bm': {
      'en': 'Warehouse:  ',
      'es': 'Depósito:',
      'sl': 'Skladišče:',
    },
    '9l3iqen0': {
      'en': 'Please select...',
      'es': 'Por favor seleccione...',
      'sl': 'Prosim izberite...',
    },
    'cn3rvnn4': {
      'en': 'Search for an item...',
      'es': 'Buscar un artículo...',
      'sl': 'Iskanje predmeta ...',
    },
    'sp20ocl7': {
      'en': 'Creation date:  ',
      'es': 'Fecha de creación:',
      'sl': 'Datum nastanka:',
    },
    'kd5fj3gq': {
      'en': 'Responsible:  ',
      'es': 'Responsable:',
      'sl': 'Odgovorni:',
    },
    'fr1c6bst': {
      'en': 'Please select...',
      'es': 'Por favor seleccione...',
      'sl': 'Prosim izberite...',
    },
    'mg4proq2': {
      'en': 'Search for an item...',
      'es': 'Buscar un artículo...',
      'sl': 'Iskanje predmeta ...',
    },
    'shq7bpjq': {
      'en': 'Custom:  ',
      'es': 'Costumbre:',
      'sl': 'Po meri:',
    },
    'ks8ytv69': {
      'en': 'Please select...',
      'es': 'Por favor seleccione...',
      'sl': 'Prosim izberite...',
    },
    'fk8zqwbc': {
      'en': 'Search for an item...',
      'es': 'Buscar un artículo...',
      'sl': 'Iskanje predmeta ...',
    },
    'hizc9aop': {
      'en': 'Internal reference number - customs:  ',
      'es': 'Número de referencia interna - aduanas:',
      'sl': 'Interna referenčna številka - carina:',
    },
    '9e4ao90g': {
      'en': 'Insert new value...',
      'es': 'Insertar nuevo valor...',
      'sl': 'Vstavi novo vrednost ...',
    },
    'pdmhp45l': {
      'en': 'Internal number - accounting:  ',
      'es': 'Número interno - contabilidad:',
      'sl': 'Interna številka - računovodstvo:',
    },
    'l02sr68n': {
      'en': 'Insert new value...',
      'es': 'Insertar nuevo valor...',
      'sl': 'Vstavi novo vrednost ...',
    },
    'c0f7xjx8': {
      'en': 'Documents:  ',
      'es': 'Documentos:',
      'sl': 'Dokumenti:',
    },
    'asma1rh7': {
      'en': 'Insert new value...',
      'es': 'Insertar nuevo valor...',
      'sl': 'Vstavi novo vrednost ...',
    },
    'mh5ueire': {
      'en': 'Inventory status:  ',
      'es': 'Estado de inventario:',
      'sl': 'Stanje inventarja:',
    },
    'kl4m50xq': {
      'en': 'najava',
      'es': 'najavá',
      'sl': 'najava',
    },
    'ng8aum7g': {
      'en': 'obdelava',
      'es': 'obdelava',
      'sl': 'obdelava',
    },
    'r9645k11': {
      'en': 'izdano',
      'es': 'izdano',
      'sl': 'izdano',
    },
    'agvh52ox': {
      'en': 'zaloga',
      'es': 'zaloga',
      'sl': 'zaloga',
    },
    '57lpd5gz': {
      'en': 'Please select...',
      'es': 'Por favor seleccione...',
      'sl': 'Prosim izberite...',
    },
    'nikezb59': {
      'en': 'Search for an item...',
      'es': 'Buscar un artículo...',
      'sl': 'Iskanje predmeta ...',
    },
    '1ec7y7ge': {
      'en': 'Announced time 1:  ',
      'es': 'Hora anunciada 1:',
      'sl': 'Napovedan čas 1:',
    },
    'v5pxyfc3': {
      'en': 'Announced time 2:  ',
      'es': 'Hora anunciada 2:',
      'sl': 'Napovedan čas 2:',
    },
    '9lql71ou': {
      'en': 'Arrival:  ',
      'es': 'Llegada:',
      'sl': 'Prihod:',
    },
    '1aeho4yq': {
      'en': 'Loading gate:  ',
      'es': 'Puerta de carga:',
      'sl': 'Vrata za nakladanje:',
    },
    '59713mh4': {
      'en': 'Please select...',
      'es': 'Por favor seleccione...',
      'sl': 'Prosim izberite...',
    },
    'qcrsnkhc': {
      'en': 'Search for an item...',
      'es': 'Buscar un artículo...',
      'sl': 'Iskanje predmeta ...',
    },
    'orirvxt3': {
      'en': 'Loading gate sequence:  ',
      'es': 'Secuencia de puerta de carga:',
      'sl': 'Zaporedje vrat za nalaganje:',
    },
    '6x3tbknn': {
      'en': 'Insert new value...',
      'es': 'Insertar nuevo valor...',
      'sl': 'Vstavi novo vrednost ...',
    },
    'zszsu74t': {
      'en': 'Start (upload/unload):  ',
      'es': 'Iniciar (cargar/descargar):',
      'sl': 'Začetek (nalaganje/razlaganje):',
    },
    'zgklrmo0': {
      'en': 'Stop (upload/unload):  ',
      'es': 'Detener (cargar/descargar):',
      'sl': 'Ustavi (nalaganje/odlaganje):',
    },
    'zaxjnjwx': {
      'en': 'Licence plate No:  ',
      'es': 'Número de matrícula:',
      'sl': 'Številka registrske tablice:',
    },
    'qahvq5ai': {
      'en': 'Insert new value...',
      'es': 'Insertar nuevo valor...',
      'sl': 'Vstavi novo vrednost ...',
    },
    'ptqqkls5': {
      'en': 'Improvement:  ',
      'es': 'Mejora:',
      'sl': 'Izboljšava:',
    },
    'z96264l9': {
      'en': 'kont.-20"',
      'es': 'conector-20"',
      'sl': 'kont.-20"',
    },
    '6c7proun': {
      'en': 'kont.-40"',
      'es': 'conector-40"',
      'sl': 'kont.-40"',
    },
    'pg62sq1k': {
      'en': 'kont.-45"',
      'es': 'conector-45"',
      'sl': 'kont.-45"',
    },
    'wsz0rhr4': {
      'en': 'cerada',
      'es': 'cerada',
      'sl': 'cerada',
    },
    'v0qiv97z': {
      'en': 'hladilnik',
      'es': 'hladilnik',
      'sl': 'hladilnik',
    },
    '21caknco': {
      'en': 'silos',
      'es': 'silos',
      'sl': 'silosi',
    },
    'm8jpw007': {
      'en': 'Please select...',
      'es': 'Por favor seleccione...',
      'sl': 'Prosim izberite...',
    },
    '3pygr422': {
      'en': 'Search for an item...',
      'es': 'Buscar un artículo...',
      'sl': 'Iskanje predmeta ...',
    },
    'smm271ch': {
      'en': 'Container No:  ',
      'es': 'No contenedor:',
      'sl': 'Št. zabojnika:',
    },
    '0wve7iz3': {
      'en': 'Insert new value...',
      'es': 'Insertar nuevo valor...',
      'sl': 'Vstavi novo vrednost ...',
    },
    'hjysxbze': {
      'en': 'Comment:  ',
      'es': 'Comentario:',
      'sl': 'komentar:',
    },
    '5kbrismp': {
      'en': 'Insert new value...',
      'es': 'Insertar nuevo valor...',
      'sl': 'Vstavi novo vrednost ...',
    },
    'hi0qdz0v': {
      'en': 'Quantity:  ',
      'es': 'Cantidad:',
      'sl': 'Količina:',
    },
    'j12vk162': {
      'en': 'Insert new value...',
      'es': 'Insertar nuevo valor...',
      'sl': 'Vstavi novo vrednost ...',
    },
    'waatswcs': {
      'en': 'Pallet position:  ',
      'es': 'Posición del palet:',
      'sl': 'Položaj palete:',
    },
    'tqluabnb': {
      'en': 'Insert new value...',
      'es': 'Insertar nuevo valor...',
      'sl': 'Vstavi novo vrednost ...',
    },
    '4vnkj172': {
      'en': 'Unit:  ',
      'es': 'Unidad:',
      'sl': 'Enota:',
    },
    'wh6ouiik': {
      'en': 'Insert new value...',
      'es': 'Insertar nuevo valor...',
      'sl': 'Vstavi novo vrednost ...',
    },
    '1fgz3hxz': {
      'en': 'Weight:  ',
      'es': 'Peso:',
      'sl': 'Utež:',
    },
    'lma8ep7p': {
      'en': 'Insert new value...',
      'es': 'Insertar nuevo valor...',
      'sl': 'Vstavi novo vrednost ...',
    },
    'ukicl9fp': {
      'en': 'Other manipulations:  ',
      'es': 'Otras manipulaciones:',
      'sl': 'Druge manipulacije:',
    },
    'ijt84yvo': {
      'en': 'paletiranje',
      'es': 'paletiranje',
      'sl': 'paletiranje',
    },
    'a1ap7dng': {
      'en': 'čiščenje',
      'es': 'ciščenje',
      'sl': 'čiščenje',
    },
    '26jkxfik': {
      'en': 'ovijanje-folija',
      'es': 'ovijanje-folija',
      'sl': 'ovijanje-folija',
    },
    's2x5quv0': {
      'en': 'povezovanje',
      'es': 'povezovanje',
      'sl': 'povezovanje',
    },
    'j0xre2rn': {
      'en': 'Please select...',
      'es': 'Por favor seleccione...',
      'sl': 'Prosim izberite...',
    },
    '6iv7p2u8': {
      'en': 'Search for an item...',
      'es': 'Buscar un artículo...',
      'sl': 'Iskanje predmeta ...',
    },
    '2km6ibqu': {
      'en': 'Type of un/upload:  ',
      'es': 'Tipo de descarga/descarga:',
      'sl': 'Vrsta odstranitve/nalaganja:',
    },
    'f3m2m2rs': {
      'en': 'viličar',
      'es': 'vilicar',
      'sl': 'viličar',
    },
    '3j7gfdkd': {
      'en': 'ročno',
      'es': 'ročno',
      'sl': 'ročno',
    },
    'rgvd6jdo': {
      'en': 'Please select...',
      'es': 'Por favor seleccione...',
      'sl': 'Prosim izberite...',
    },
    'l1l2lzcn': {
      'en': 'Search for an item...',
      'es': 'Buscar un artículo...',
      'sl': 'Iskanje predmeta ...',
    },
    'x7i4bdpo': {
      'en': 'Type of un/upload 2:  ',
      'es': 'Tipo de descarga/descarga 2:',
      'sl': 'Vrsta razveljavitve/nalaganja 2:',
    },
    'i52kl5nk': {
      'en': 'viličar',
      'es': 'vilicar',
      'sl': 'viličar',
    },
    '6yfdmir9': {
      'en': 'ročno',
      'es': 'ročno',
      'sl': 'ročno',
    },
    'xez7k68e': {
      'en': 'Please select...',
      'es': 'Por favor seleccione...',
      'sl': 'Prosim izberite...',
    },
    'uqzgkw92': {
      'en': 'Search for an item...',
      'es': 'Buscar un artículo...',
      'sl': 'Iskanje predmeta ...',
    },
    '2m24f05u': {
      'en': 'Responsible  ',
      'es': 'Responsable',
      'sl': 'Odgovorno',
    },
    '3aw7jzk5': {
      'en': 'Please select...',
      'es': 'Por favor seleccione...',
      'sl': 'Prosim izberite...',
    },
    '0598vkt1': {
      'en': 'Search for an item...',
      'es': 'Buscar un artículo...',
      'sl': 'Iskanje predmeta ...',
    },
    '1mv16gw8': {
      'en': 'Assistant 1:  ',
      'es': 'Asistente 1:',
      'sl': 'Pomočnik 1:',
    },
    '7ufhq9kl': {
      'en': 'Please select...',
      'es': 'Por favor seleccione...',
      'sl': 'Prosim izberite...',
    },
    'olcw703g': {
      'en': 'Search for an item...',
      'es': 'Buscar un artículo...',
      'sl': 'Iskanje predmeta ...',
    },
    'igz3phjk': {
      'en': 'Assistant 2:  ',
      'es': 'Asistente 2:',
      'sl': 'Pomočnik 2:',
    },
    'r5gd6z1j': {
      'en': 'Please select...',
      'es': 'Por favor seleccione...',
      'sl': 'Prosim izberite...',
    },
    '0gfuabrx': {
      'en': 'Search for an item...',
      'es': 'Buscar un artículo...',
      'sl': 'Iskanje predmeta ...',
    },
    'vt92pqpj': {
      'en': 'Assistant 3:  ',
      'es': 'Asistente 3:',
      'sl': 'Pomočnik 3:',
    },
    'pus37n2r': {
      'en': 'Please select...',
      'es': 'Por favor seleccione...',
      'sl': 'Prosim izberite...',
    },
    'fqdcp673': {
      'en': 'Search for an item...',
      'es': 'Buscar un artículo...',
      'sl': 'Iskanje predmeta ...',
    },
    'zp1xkwo1': {
      'en': 'Assistant 4:  ',
      'es': 'Asistente 4:',
      'sl': 'Pomočnik 4:',
    },
    '7iw76xzw': {
      'en': 'Please select...',
      'es': 'Por favor seleccione...',
      'sl': 'Prosim izberite...',
    },
    'fl2m8kwn': {
      'en': 'Search for an item...',
      'es': 'Buscar un artículo...',
      'sl': 'Iskanje predmeta ...',
    },
    '06dsjx0t': {
      'en': 'Assistant 5:  ',
      'es': 'Asistente 5:',
      'sl': 'Pomočnik 5:',
    },
    '9ihfe2e0': {
      'en': 'Please select...',
      'es': 'Por favor seleccione...',
      'sl': 'Prosim izberite...',
    },
    'gipgh51l': {
      'en': 'Search for an item...',
      'es': 'Buscar un artículo...',
      'sl': 'Iskanje predmeta ...',
    },
    'c7npmm9z': {
      'en': 'Assistant 6:  ',
      'es': 'Asistente 6:',
      'sl': 'Pomočnik 6:',
    },
    'lechkiyi': {
      'en': 'Please select...',
      'es': 'Por favor seleccione...',
      'sl': 'Prosim izberite...',
    },
    'aa5uo62h': {
      'en': 'Search for an item...',
      'es': 'Buscar un artículo...',
      'sl': 'Iskanje predmeta ...',
    },
    'l1buairv': {
      'en': 'Universal ref num:  ',
      'es': 'Número de referencia universal:',
      'sl': 'Univerzalna referenčna številka:',
    },
    'uh38ddo3': {
      'en': 'Insert new value...',
      'es': 'Insertar nuevo valor...',
      'sl': 'Vstavi novo vrednost ...',
    },
    '8hq2ipp7': {
      'en': 'FMS ref:  ',
      'es': 'Referencia FMS:',
      'sl': 'Ref. FMS:',
    },
    'h1ur5wgi': {
      'en': 'Insert new value...',
      'es': 'Insertar nuevo valor...',
      'sl': 'Vstavi novo vrednost ...',
    },
    '9k0yde9k': {
      'en': 'Load ref/dvh:  ',
      'es': 'Cargar ref/dvh:',
      'sl': 'Naloži ref/dvh:',
    },
    'kjwg1ti3': {
      'en': 'Insert new value...',
      'es': 'Insertar nuevo valor...',
      'sl': 'Vstavi novo vrednost ...',
    },
    'lbv650ew': {
      'en': 'Save new record',
      'es': 'Guardar nuevo registro',
      'sl': 'Shrani nov zapis',
    },
  },
  // userDetail
  {
    '956587sr': {
      'en': 'Log out',
      'es': 'Cerrar sesión',
      'sl': 'Odjava',
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
