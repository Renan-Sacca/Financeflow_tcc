import 'package:flutter/material.dart';
import 'package:flutter/foundation.dart';

class FFLocalizations {
  FFLocalizations(this.locale);

  final Locale locale;

  static FFLocalizations of(BuildContext context) =>
      Localizations.of<FFLocalizations>(context, FFLocalizations);

  static List<String> languages() => ['en', 'pt'];

  String get languageCode => locale.languageCode;
  int get languageIndex => languages().contains(languageCode)
      ? languages().indexOf(languageCode)
      : 0;

  String getText(String key) =>
      (kTranslationsMap[key] ?? {})[locale.languageCode] ?? '';

  String getVariableText({
    String enText = '',
    String ptText = '',
  }) =>
      [enText, ptText][languageIndex] ?? '';
}

class FFLocalizationsDelegate extends LocalizationsDelegate<FFLocalizations> {
  const FFLocalizationsDelegate();

  @override
  bool isSupported(Locale locale) =>
      FFLocalizations.languages().contains(locale.languageCode);

  @override
  Future<FFLocalizations> load(Locale locale) =>
      SynchronousFuture<FFLocalizations>(FFLocalizations(locale));

  @override
  bool shouldReload(FFLocalizationsDelegate old) => false;
}

final kTranslationsMap = <Map<String, Map<String, String>>>[
  // loginPage
  {
    'enp0vc15': {
      'en': 'Get Started',
      'pt': 'Iniciar',
    },
    'p5hdf9zs': {
      'en': 'Create your account below.',
      'pt': 'Crie sua conta abaixo.',
    },
    'kgmyqimi': {
      'en': 'Email Address',
      'pt': 'Endereço de email',
    },
    'thvgggr1': {
      'en': 'Enter your email...',
      'pt': 'Digite seu e-mail...',
    },
    'yabgbbeg': {
      'en': 'Password',
      'pt': 'Senha',
    },
    '6jhzel9r': {
      'en': 'Enter your password...',
      'pt': 'Coloque sua senha...',
    },
    '24ng8esm': {
      'en': 'Forgot Password?',
      'pt': 'Esqueceu sua senha?',
    },
    'ildadso4': {
      'en': 'Login',
      'pt': 'Conecte-se',
    },
    'sbkel66h': {
      'en': 'Don\'t have an account?',
      'pt': 'Não tem uma conta?',
    },
    'z90p6t2l': {
      'en': 'Create',
      'pt': 'Criar',
    },
    '57rmjzb1': {
      'en': 'Sign in with Google',
      'pt': 'Faça login no Google',
    },
    'd321la5r': {
      'en': 'Home',
      'pt': 'Casa',
    },
  },
  // registerAccount
  {
    'gwi87yea': {
      'en': 'Get Started',
      'pt': 'Iniciar',
    },
    'djtv6792': {
      'en': 'Create your account below.',
      'pt': 'Crie sua conta abaixo.',
    },
    '19wya4w2': {
      'en': 'Email Address',
      'pt': 'Endereço de email',
    },
    'y18228z1': {
      'en': 'Enter your email...',
      'pt': 'Digite seu e-mail...',
    },
    '0fopuzej': {
      'en': 'Password',
      'pt': 'Senha',
    },
    '54amnqr9': {
      'en': 'Enter your password...',
      'pt': 'Coloque sua senha...',
    },
    'xn406oqp': {
      'en': 'Confirm Password',
      'pt': 'Confirme sua senha',
    },
    'pudxroq5': {
      'en': 'Enter your password...',
      'pt': 'Coloque sua senha...',
    },
    'ffc15ar4': {
      'en': 'Create Account',
      'pt': 'Criar uma conta',
    },
    'p0r7y360': {
      'en': 'Login',
      'pt': 'Conecte-se',
    },
    'guijkp8b': {
      'en': 'Already have an account?',
      'pt': 'já tem uma conta?',
    },
    'pydiz4us': {
      'en': 'Home',
      'pt': 'Home',
    },
  },
  // forgotPassword
  {
    'd83qb5lv': {
      'en': 'Forgot Password',
      'pt': 'Esqueceu sua senha',
    },
    'l39fznzk': {
      'en':
          'Enter the email associated with your account and we will send you a verification code.',
      'pt':
          'Digite o e-mail associado à sua conta e nós lhe enviaremos um código de verificação.',
    },
    'ztva24mg': {
      'en': 'Email Address',
      'pt': 'Endereço de email',
    },
    'vs8hbjfq': {
      'en': 'Enter your email...',
      'pt': 'Digite seu e-mail...',
    },
    'liv24kij': {
      'en': 'Send Reset Link',
      'pt': 'Enviar link de redefinição',
    },
    '6vg7f9wf': {
      'en': 'Home',
      'pt': 'Home',
    },
  },
  // completeProfile
  {
    'ysvijixx': {
      'en': 'Complete Profile',
      'pt': 'Perfil completo',
    },
    's4kwev55': {
      'en': 'Upload a photo for us to easily identify you.',
      'pt': 'Carregue uma foto para que possamos identificá-lo facilmente.',
    },
    'yfhslxtq': {
      'en': 'Your Name',
      'pt': 'Seu nome',
    },
    'bscwz5f0': {
      'en': 'Name',
      'pt': 'Nome',
    },
    'up9j9bkq': {
      'en': 'Your Age',
      'pt': 'Sua idade',
    },
    '08buu9lo': {
      'en': 'i.e. 34',
      'pt': 'ou seja, 34',
    },
    'q1dymcpl': {
      'en': 'Your Telephone\n',
      'pt': 'Seu telefone',
    },
    'exxorn00': {
      'en': 'Phone',
      'pt': 'Telefone',
    },
    'akjjmgda': {
      'en': 'Complete Profile',
      'pt': 'Perfil completo',
    },
    'fyqdwlnx': {
      'en': 'Skip for Now',
      'pt': 'Pular por enquanto',
    },
    'cyfw6q5e': {
      'en': 'Home',
      'pt': 'Home',
    },
  },
  // onboarding
  {
    'nibvsom1': {
      'en': 'Create Budgets',
      'pt': 'Criar orçamentos',
    },
    'uk68ihcx': {
      'en':
          'Create budgets that you can tie transactions too in order for easy tracking.',
      'pt':
          'Crie orçamentos que você também possa vincular transações para facilitar a visualização.',
    },
    'kx7iwyha': {
      'en': 'Keep Track of Spending',
      'pt': 'Acompanhe os gastos',
    },
    'ubg1qkh9': {
      'en':
          'Easily add transactions and associate them with budgets that have been created.',
      'pt':
          'Adicione transações facilmente e associe-as aos orçamentos que foram criados.',
    },
    'ytercyni': {
      'en': 'Budget Analysis',
      'pt': 'Análise de orçamento',
    },
    'qbn54tcg': {
      'en': 'Know where your budgets are and how they can be adjusted.',
      'pt': 'Saiba onde estão seus orçamentos e como eles podem ser ajustados.',
    },
    'zwzc9ap0': {
      'en': 'Create Your Budget',
      'pt': 'Crie seu orçamento',
    },
    'zppxdzhm': {
      'en': 'Home',
      'pt': 'Casa',
    },
  },
  // Detalhesdepagamentos
  {
    '7kqxgntl': {
      'en': 'Details',
      'pt': 'Detalhes',
    },
    'zymr1eji': {
      'en': 'Category / Type',
      'pt': 'Categoria / Tipo',
    },
    'rbr760wb': {
      'en': '/',
      'pt': '/',
    },
    '06hzsbwq': {
      'en': 'When',
      'pt': 'Quando',
    },
    '9u5inxnl': {
      'en': 'Has already been paid',
      'pt': 'Já foi pago',
    },
    '82zibw2j': {
      'en': 'Do you want to pay?',
      'pt': 'Você quer pagar?',
    },
    'znjq1ykm': {
      'en': 'Home',
      'pt': 'Casa',
    },
  },
  // MY_profilePage
  {
    'o3c321fx': {
      'en': 'My Account',
      'pt': 'Minha conta',
    },
    'td7x2l8t': {
      'en': 'Edit Profile',
      'pt': 'Editar Perfil',
    },
    'w2ay9bxn': {
      'en': 'Change Password',
      'pt': 'Mudar senha',
    },
    'gx09iu38': {
      'en': 'Tutorial',
      'pt': 'Tutorial',
    },
    'hddfuimu': {
      'en': 'Privacy Policy',
      'pt': 'Política de Privacidade',
    },
    'wabd2v7s': {
      'en': 'Create News',
      'pt': 'Configurações de notificação',
    },
    '3ym07dig': {
      'en': '',
      'pt': '',
    },
  },
  // criartransacao
  {
    'i6ijal77': {
      'en': 'Create Transaction',
      'pt': 'Transferir fundos',
    },
    'awpf2gt1': {
      'en': 'Create Bank',
      'pt': 'Criar Banco',
    },
    '9qyul2c2': {
      'en': 'Create Type',
      'pt': 'Criar Tipo',
    },
    '6101ghpl': {
      'en': 'Name Transaction ',
      'pt': 'Nome transação',
    },
    'ifi68zq6': {
      'en': '',
      'pt': '',
    },
    'vwp2liko': {
      'en': 'Debito',
      'pt': 'Debito',
    },
    'l1ccjt6r': {
      'en': 'Credito',
      'pt': 'Credito',
    },
    '50q7ghta': {
      'en': 'Amount',
      'pt': 'Quantia',
    },
    '7vz96pwe': {
      'en': 'Transaction Date\n',
      'pt': 'Data da transação',
    },
    '3tu8urq6': {
      'en': 'Choose Date',
      'pt': 'Escolha a data',
    },
    'txx19kma': {
      'en': 'x Times',
      'pt': 'Vezes',
    },
    'ekb0wzwp': {
      'en': 'Deduct value from bank balance?',
      'pt': 'Deduzir valor do saldo bancário?',
    },
    'vmefqcsu': {
      'en': 'Yes',
      'pt': 'Yes',
    },
    'gex0lcb5': {
      'en': 'No',
      'pt': 'No',
    },
    'vgilvan0': {
      'en': 'Send Transfer',
      'pt': 'Enviar transferência',
    },
    '4cg9u0r2': {
      'en': 'Tap above to complete transfer',
      'pt': 'Toque acima para concluir a transferência',
    },
    'nwd0m9i7': {
      'en': 'Home',
      'pt': 'Home',
    },
  },
  // transferComplete
  {
    '1pb9ong2': {
      'en': 'Transfer Complete',
      'pt': 'Transferência Completa',
    },
    'kxuv4sws': {
      'en':
          'Great work, you successfully transferred funds. It may take a few days for the funds to leave your account.',
      'pt':
          'Ótimo trabalho, você transferiu fundos com sucesso. Pode levar alguns dias para que os fundos saiam de sua conta.',
    },
    '0pze4o5s': {
      'en': 'Okay',
      'pt': 'Ok',
    },
    'yl2eotf0': {
      'en': 'Home',
      'pt': 'Home',
    },
  },
  // transaction_EDIT
  {
    'v8d8zlej': {
      'en': 'Edit transaction amount',
      'pt': '',
    },
    '4lj76ban': {
      'en': 'Amount',
      'pt': 'Quantia',
    },
    '80m9zfww': {
      'en': 'Update Transaction',
      'pt': 'Atualizar transação',
    },
    'f5g85ygt': {
      'en': 'Tap above to save your changes.',
      'pt': 'Toque acima para salvar suas alterações.',
    },
    '7umr73sb': {
      'en': 'Please enter an amount',
      'pt': 'Por favor, insira um valor',
    },
    '2i6bjizo': {
      'en': 'Home',
      'pt': 'Home',
    },
  },
  // editProfile
  {
    'egjdl4sc': {
      'en': 'Edit Profile',
      'pt': 'Editar Perfil',
    },
    'vjujtlfu': {
      'en': 'Change Photo',
      'pt': 'Mudar foto',
    },
    'fcsvdt0d': {
      'en': 'Your Name',
      'pt': 'Seu nome',
    },
    'wy4n5b46': {
      'en': 'Please enter a valid number...',
      'pt': 'Por favor insira um número válido...',
    },
    'd7q34u2k': {
      'en': 'Email Address',
      'pt': 'Endereço de email',
    },
    '8p3rl285': {
      'en': 'Your email',
      'pt': 'Seu email',
    },
    'ntdothum': {
      'en': 'Your Age',
      'pt': 'Sua idade',
    },
    '9l7ecqe2': {
      'en': 'i.e. 34',
      'pt': 'ou seja, 34',
    },
    'au65wugi': {
      'en': 'Your Telephone',
      'pt': 'Seu título',
    },
    'ur19eslb': {
      'en': 'Save Changes',
      'pt': 'Salvar alterações',
    },
    'e43i7rda': {
      'en': 'Home',
      'pt': 'Home',
    },
  },
  // changePassword
  {
    'xaee0s7p': {
      'en': 'Change Password',
      'pt': 'Mudar senha',
    },
    'qwmql022': {
      'en':
          'Enter the email associated with your account and we will send you link to reset your password.',
      'pt':
          'Digite o e-mail associado à sua conta e enviaremos um link para redefinir sua senha.',
    },
    '1cni885e': {
      'en': 'Email Address',
      'pt': 'Endereço de email',
    },
    'm7ad2huo': {
      'en': 'Enter your email...',
      'pt': 'Digite seu e-mail...',
    },
    'x72cfg07': {
      'en': 'Send Reset Link',
      'pt': 'Enviar link de redefinição',
    },
    'q8le0hr0': {
      'en': 'Home',
      'pt': 'Home',
    },
  },
  // notificationsSettings
  {
    'bmgc9lm5': {
      'en': 'Notifications',
      'pt': 'Notificações',
    },
    '8gy8e847': {
      'en':
          'Choose what notifcations you want to recieve below and we will update the settings.',
      'pt':
          'Escolha abaixo quais notificações você deseja receber e atualizaremos as configurações.',
    },
    'cf7y7ikc': {
      'en': 'Push Notifications',
      'pt': 'Notificações via push',
    },
    'cz72qq9f': {
      'en':
          'Receive Push notifications from our application on a semi regular basis.',
      'pt':
          'Receba notificações Push do nosso aplicativo de forma semi-regular.',
    },
    'o0dscrin': {
      'en': 'Email Notifications',
      'pt': 'Notificações por e-mail',
    },
    'fqktqbys': {
      'en':
          'Receive email notifications from our marketing team about new features.',
      'pt':
          'Receba notificações por e-mail de nossa equipe de marketing sobre novos recursos.',
    },
    'kst4kfvl': {
      'en': 'Location Services',
      'pt': 'Serviços de localização',
    },
    '67c3gg57': {
      'en':
          'Allow us to track your location, this helps keep track of spending and keeps you safe.',
      'pt':
          'Permita-nos rastrear sua localização, isso ajuda a acompanhar os gastos e mantém você seguro.',
    },
    'ehitjgdg': {
      'en': 'Save Changes',
      'pt': 'Salvar alterações',
    },
    '71ff5wzy': {
      'en': 'Home',
      'pt': 'Home',
    },
  },
  // tutorial_PROFILE
  {
    'w30j8s83': {
      'en': 'Tutorial',
      'pt': 'Tutorial',
    },
    'zxaoocuq': {
      'en': 'Create Budgets',
      'pt': 'Criar orçamentos',
    },
    'uxdvb4rt': {
      'en':
          'Create budgets that you can tie transactions too in order for easy tracking.',
      'pt':
          'Crie orçamentos que você também possa vincular transações para facilitar o rastreamento.',
    },
    'w9z81684': {
      'en': 'Keep Track of Spending',
      'pt': 'Acompanhe os gastos',
    },
    '0gatn67a': {
      'en':
          'Easily add transactions and associate them with budgets that have been created.',
      'pt':
          'Adicione transações facilmente e associe-as aos orçamentos que foram criados.',
    },
    'lxita7kh': {
      'en': 'Budget Analysis',
      'pt': 'Análise de orçamento',
    },
    'vv709whs': {
      'en': 'Know where your budgets are and how they can be adjusted.',
      'pt': 'Saiba onde estão seus orçamentos e como eles podem ser ajustados.',
    },
    'huzktmfl': {
      'en': 'Home',
      'pt': 'Home',
    },
  },
  // privacyPolicy
  {
    '5slhebvy': {
      'en': 'Privacy Policy',
      'pt': 'Política de Privacidade',
    },
    'ju6gdq3k': {
      'en': 'How we use your data',
      'pt': 'Como usamos seus dados',
    },
    'op7kmlm7': {
      'en':
          'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Accumsan sit amet nulla facilisi morbi tempus. Non consectetur a erat nam. Donec ultrices tincidunt arcu non sodales. Velit sed ullamcorper morbi tincidunt. Molestie a iaculis at erat pellentesque adipiscing. Mauris nunc congue nisi vitae. Nisl tincidunt eget nullam non nisi. Faucibus nisl tincidunt eget nullam non nisi est. Leo duis ut diam quam nulla.\n\nEuismod lacinia at quis risus sed vulputate odio. Velit dignissim sodales ut eu sem integer vitae justo eget. Risus feugiat in ante metus. Leo vel orci porta non pulvinar neque laoreet suspendisse interdum. Suscipit tellus mauris a diam maecenas sed enim ut sem. Sem integer vitae justo eget magna fermentum iaculis eu. Lacinia at quis risus sed. Faucibus purus in massa tempor. Leo a diam sollicitudin tempor id eu. Nisi scelerisque eu ultrices vitae auctor. Vulputate dignissim suspendisse in est ante in. Enim neque volutpat ac tincidunt vitae semper quis. Ipsum dolor sit amet consectetur adipiscing elit.\n\nEt malesuada fames ac turpis egestas maecenas pharetra convallis. Sed sed risus pretium quam vulputate. Elit pellentesque habitant morbi tristique senectus et. Viverra maecenas accumsan lacus vel facilisis volutpat est. Sit amet mattis vulputate enim nulla. Nisi lacus sed viverra tellus in hac habitasse. Sit amet risus nullam eget felis eget nunc lobortis. Pretium lectus quam id leo in vitae. Adipiscing diam donec adipiscing tristique. Commodo sed egestas egestas fringilla. Ipsum dolor sit amet consectetur adipiscing. Ipsum dolor sit amet consectetur adipiscing elit pellentesque habitant morbi. Montes nascetur ridiculus mus mauris. Ut etiam sit amet nisl purus in. Arcu ac tortor dignissim convallis aenean et tortor at. Ornare suspendisse sed nisi lacus sed viverra.',
      'pt':
          'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Accumsan sit amet nulla facilisi morbi tempus. Non consectetur a erat nam. Donec ultrices tincidunt arcu non sodales. Velit sed ullamcorper morbi tincidunt. Molestie a iaculis em erat pellentesque adipiscing. Mauris nunc congue nisi vitae. Nisl tincidunt eget nullam non nisi. Faucibus nisl tincidunt eget nullam non nisi est. Leo duis ut diam quam nulla. Euismod lacinia em quis risus sed vulputate odio. Velit dignissim sodales ut eu sem integer vitae justo eget. Risus feugiat in ante metus. Leo vel orci porta non pulvinar neque laoreet suspendisse interdum. Suscipit tellus mauris a diam mecenas sed enim ut sem. Sem integer vitae justo eget magna fermentum iaculis eu. Lacinia em quis risus sed. Faucibus purus in massa tempor. Leo a diam sollicitudin tempor id eu. Nisi scelerisque eu ultrices vitae auctor. Vulputate dignissim suspendisse in est ante in. Enim neque volutpat ac tincidunt vitae semper quis. Ipsum dolor sit amet consectetur adipiscing elit. Et maleuada fames ac turpis egestas maecenas pharetra convallis. Sed sed risus pretium quam vulputate. Elit pellentesque habitant morbi tristique senectus et. Viverra mecenas accumsan lacus vel facilisis volutpat est. Sit amet mattis vulputate enim nulla. Nisi lacus sed viverra tellus em hac habitasse. Sente-se amet risus nullam eget felis eget nunc lobortis. Pretium lectus quam id leo in vitae. Adipiscing diam donec adipiscing tristique. Commodo sed egestas egestas fringilla. Ipsum dolor sit amet consectetur adipiscing. Ipsum dolor sit amet consectetur adipiscing elit pellentesque habitant morbi. Montes nascetur ridiculus mus mauris. Ut etiam sit amet nisl purus in. Arcu ac tortor dignissim convallis aenean et tortor at. Ornare suspendisse sed nisi lacus sed viverra.',
    },
    'gmvrgywd': {
      'en': 'Home',
      'pt': 'Home',
    },
  },
  // homePage
  {
    'q73zmuhz': {
      'en': 'Welcome,',
      'pt': 'Bem vindo,',
    },
    'ojwyh901': {
      'en': 'Your latest updates are below.',
      'pt': 'Suas atualizações mais recentes estão abaixo.',
    },
    'cthjhqii': {
      'en': 'Balance',
      'pt': 'Saldo Total',
    },
    'sdg0xfgr': {
      'en': 'Quick Service',
      'pt': 'Serviço rápido',
    },
    'gx6sqbfm': {
      'en': 'Payment',
      'pt': 'Transações',
    },
    'jtb0rgmn': {
      'en': 'Activity',
      'pt': 'Bancos',
    },
    '94s7pnxx': {
      'en': 'News',
      'pt': 'Notícia',
    },
    '5izbezka': {
      'en': 'Transaction',
      'pt': 'Transação',
    },
    'o1v2jcuq': {
      'en': '',
      'pt': '',
    },
  },
  // budget_DELETE
  {
    'wdbzrn6x': {
      'en': 'Delete Budget',
      'pt': 'Excluir orçamento',
    },
    'daz0lkqh': {
      'en':
          'If you delete this budget, your transactions will no longer be associated with it.',
      'pt':
          'Se você excluir este orçamento, suas transações não serão mais associadas a ele.',
    },
    'ffqm694y': {
      'en': 'Delete Budget',
      'pt': 'Excluir orçamento',
    },
    'mhwvtssn': {
      'en': 'Tap above to remove this bude',
      'pt': 'Toque acima para remover este bude',
    },
    'jld1idod': {
      'en': 'Home',
      'pt': 'Home',
    },
  },
  // list_news
  {
    'sa61ytin': {
      'en': 'News',
      'pt': 'Notícias',
    },
    'kmabpss6': {
      'en': '•',
      'pt': '•',
    },
  },
  // Createbanco
  {
    'sah9a6fg': {
      'en': 'Create Bank',
      'pt': 'Criar Banco',
    },
    'k8zfylub': {
      'en': 'Bank Name',
      'pt': 'Nome do Banco',
    },
    'c11jdsdg': {
      'en': 'Money',
      'pt': 'Nome do Banco',
    },
    '0ewlrq44': {
      'en': 'Limit credit',
      'pt': 'Nome do Banco',
    },
    'zt2l5xot': {
      'en': 'Pay Day',
      'pt': 'Dia do pagamento',
    },
    'm47kj7jp': {
      'en': 'Choose Date',
      'pt': 'Escolha a data',
    },
    'nuy9qnr1': {
      'en': 'Do you have a Nubank bank? Use our API',
      'pt': 'Você tem um banco Nubank? Use nossa API',
    },
    'emrvvsw5': {
      'en': 'Click here to use',
      'pt': 'Clique aqui para usar',
    },
    '1sut43rj': {
      'en': 'Create Bank',
      'pt': 'Criar Banco',
    },
    's23djuxw': {
      'en': 'Tap above to complete request',
      'pt': 'Toque acima para concluir a solicitação',
    },
    'tui8p0d6': {
      'en': 'Please enter an amount',
      'pt': 'Por favor, insira um valor',
    },
    '09zl5ne6': {
      'en': 'Home',
      'pt': 'Home',
    },
  },
  // createnubank
  {
    'cyyf5ndj': {
      'en': 'Enter CPF:',
      'pt': 'Digite o CPF:',
    },
    '65it0xm6': {
      'en': 'CPF',
      'pt': 'CPF',
    },
    'w0oq59ko': {
      'en': 'Send email',
      'pt': 'Enviar email',
    },
    '68rovsm1': {
      'en': 'Code sent to email:',
      'pt': 'Codigo enviado ao email:',
    },
    'scd84rac': {
      'en': 'Code',
      'pt': 'Código',
    },
    '50bmiptg': {
      'en': 'Description',
      'pt': 'Descrição',
    },
    'h7ulkfjm': {
      'en': 'Complete',
      'pt': 'Completo',
    },
    'qzbq3rmg': {
      'en': 'Tap above to complete request',
      'pt': 'Toque acima para concluir a solicitação',
    },
    'odyg6wui': {
      'en': 'Please enter an amount',
      'pt': 'Por favor, insira um valor',
    },
    'ym6gwqo6': {
      'en': 'Home',
      'pt': 'Home',
    },
  },
  // criartransacaofixa
  {
    'jb5bd04k': {
      'en': 'Fixed Monthly Fee',
      'pt': 'Conta fixa mensal',
    },
    '9oh3m3vq': {
      'en': 'Name Transaction:',
      'pt': 'Nome da Transação:',
    },
    '5c4527xs': {
      'en': 'Choose the bank to cash:',
      'pt': 'Escolha o banco para debitar:',
    },
    'web4mgr8': {
      'en': 'Amount',
      'pt': 'Valor',
    },
    '63q7pcqe': {
      'en': 'Send Transfer',
      'pt': 'Salvar',
    },
    '9fyv9t4z': {
      'en': 'Tap above to complete transfer',
      'pt': 'Toque acima para salvar',
    },
    'ot2av8nw': {
      'en': 'Home',
      'pt': 'home',
    },
  },
  // editarfaturafixa
  {
    'eq897ak0': {
      'en': 'Edit transaction amount',
      'pt': 'Editar valor da transação',
    },
    'mwfraxga': {
      'en': '[Some hint text...]',
      'pt': '[Algum texto de dica...]',
    },
    'o8lv9xl0': {
      'en': '[Some hint text...]',
      'pt': '[Algum texto de dica...]',
    },
    '8drhhxx6': {
      'en': 'Discount monthly:\n',
      'pt': 'Descontar mensalmente:',
    },
    'hees1ak4': {
      'en': 'Deduct bank amount:\n',
      'pt': 'Descontar valor do banco:',
    },
    '6j75bgce': {
      'en': 'discount',
      'pt': 'Descontar',
    },
    'c8ik7ei5': {
      'en': 'Update Transaction',
      'pt': 'Atualizar transação',
    },
    'y59sj5zx': {
      'en': 'Tap above to save your changes.',
      'pt': 'Toque acima para salvar suas alterações.',
    },
    'xb0yoi6t': {
      'en': 'Please enter an amount',
      'pt': 'Por favor, insira um valor',
    },
    'f8ycs0m4': {
      'en': 'Home',
      'pt': 'Home',
    },
  },
  // listartransacaofixa
  {
    '6wqfbhwr': {
      'en': 'Fixed Invoices\n',
      'pt': 'Listar Transações',
    },
    '1x01y2ul': {
      'en': '',
      'pt': '',
    },
  },
  // my_banks
  {
    '7c7n5n38': {
      'en': 'My Banks',
      'pt': 'Meus bancos',
    },
    '1simoas9': {
      'en': 'Home',
      'pt': 'Home',
    },
  },
  // banco_detalhes
  {
    'vw3687vq': {
      'en': 'Transactions',
      'pt': 'Transações',
    },
    '5mwcmnei': {
      'en': 'Home',
      'pt': 'Home',
    },
  },
  // historico
  {
    '1bnq29io': {
      'en': 'Historic',
      'pt': 'Histórico',
    },
    'i65dttlz': {
      'en': '',
      'pt': '',
    },
  },
  // createnews
  {
    'rmga9wt1': {
      'en': 'Create News',
      'pt': 'Criar Notícias',
    },
    '8qgroxbu': {
      'en': 'Title',
      'pt': 'Título',
    },
    'bbx0dom7': {
      'en': 'Content',
      'pt': 'Conteúdo',
    },
    'gkj43h0j': {
      'en': 'Description',
      'pt': 'Descrição',
    },
    'twq1oxzw': {
      'en': 'Create News',
      'pt': 'Criar Notícia',
    },
    'vcnoqw6u': {
      'en': 'Tap above to complete request',
      'pt': 'Toque acima para concluir a solicitação',
    },
    'gyrzpcz7': {
      'en': 'Please enter an amount',
      'pt': 'Por favor, insira um valor',
    },
    'vel8x423': {
      'en': 'Home',
      'pt': 'Home',
    },
  },
  // Editar
  {
    'tpmbgrez': {
      'en': 'Edit Bank',
      'pt': 'Criar Banco',
    },
    'vutrfpi2': {
      'en': 'Bank Name',
      'pt': 'Nome do Banco',
    },
    'epf8jdpx': {
      'en': 'Money',
      'pt': 'Nome do Banco',
    },
    'ydmdvtu5': {
      'en': 'Limit credit',
      'pt': 'Nome do Banco',
    },
    'g3jj6sri': {
      'en': 'Pay Day',
      'pt': 'Dia do pagamento',
    },
    'zcflssgj': {
      'en': 'Choose Date',
      'pt': 'Escolha a data',
    },
    '81i3wsuu': {
      'en': 'Edit Bank',
      'pt': 'Criar Banco',
    },
    'id4q1w57': {
      'en': 'Tap above to complete request',
      'pt': 'Toque acima para concluir a solicitação',
    },
    'c511hvbl': {
      'en': 'Please enter an amount',
      'pt': 'Por favor, insira um valor',
    },
    '47rvy77z': {
      'en': 'Home',
      'pt': 'Home',
    },
  },
  // createType
  {
    'mag030sc': {
      'en': 'Create type',
      'pt': 'Criar tipo',
    },
    'wk22jh0t': {
      'en': 'Create a transaction type :',
      'pt': 'Crie um tipo de transação:',
    },
    'hn3696ou': {
      'en': 'Name type:',
      'pt': 'Nome do tipo:',
    },
    'd09ync1j': {
      'en': 'Name type',
      'pt': 'Nome do tipo:',
    },
    'dosz407b': {
      'en': 'Cancel',
      'pt': 'Cancelar',
    },
    'wt0hf8vv': {
      'en': 'Save Changes',
      'pt': 'Salvar alterações',
    },
  },
  // pagar
  {
    '7210y2e1': {
      'en': 'Pay installment:',
      'pt': 'Criar tipo',
    },
    'a8zvyxnx': {
      'en': 'Pay and cash',
      'pt': 'Salvar alterações',
    },
    'mnhd26yn': {
      'en': 'Pay',
      'pt': 'Salvar alterações',
    },
  },
  // Miscellaneous
  {
    'rjqbppg4': {
      'en': '',
      'pt': '',
    },
    'ffvdxi5p': {
      'en': '',
      'pt': '',
    },
    'znjwukpd': {
      'en': '',
      'pt': '',
    },
    'vjnovfn9': {
      'en': '',
      'pt': '',
    },
    'pgp0zgwu': {
      'en': '',
      'pt': '',
    },
    'broe92xt': {
      'en': '',
      'pt': '',
    },
    'dl0dli48': {
      'en': '',
      'pt': '',
    },
    '3aaf8jnx': {
      'en': '',
      'pt': '',
    },
    'ngnizvq8': {
      'en': '',
      'pt': '',
    },
    'qpvfcqms': {
      'en': '',
      'pt': '',
    },
    'a28rcqpu': {
      'en': '',
      'pt': '',
    },
    '9mtesfi3': {
      'en': '',
      'pt': '',
    },
    'qv0xv5jy': {
      'en': '',
      'pt': '',
    },
    'sbx8muma': {
      'en': '',
      'pt': '',
    },
    'cwpxcw4v': {
      'en': '',
      'pt': '',
    },
    '8qukadzl': {
      'en': '',
      'pt': '',
    },
    'dqojeqw7': {
      'en': '',
      'pt': '',
    },
    'iet9f86t': {
      'en': '',
      'pt': '',
    },
    '7s1pmusy': {
      'en': '',
      'pt': '',
    },
    'jo2p2xwk': {
      'en': '',
      'pt': '',
    },
    '1u4fqakf': {
      'en': '',
      'pt': '',
    },
    'ghn2mz5a': {
      'en': '',
      'pt': '',
    },
  },
].reduce((a, b) => a..addAll(b));
