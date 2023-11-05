sealed class HomeABKeys {
  static const account = 'account';
  static const services = 'services';
  static const servicesGrid = 'servicesGrid';
  static const myCards = 'myCards';
  static const offers = 'offers';
  static const creditCard = 'creditCard';
  static const loans = 'loans';
  static const follow = 'follow';
  static const searchOffers = 'searchOffers';
  static const divider = 'divider';
}

sealed class HomeABOrders {
  static const defaultOrder = '''
      ${HomeABKeys.account},
      ${HomeABKeys.services},
      ${HomeABKeys.myCards},
      ${HomeABKeys.offers},
      ${HomeABKeys.divider},
      ${HomeABKeys.creditCard},
      ${HomeABKeys.divider},
      ${HomeABKeys.loans},
      ${HomeABKeys.divider},
      ${HomeABKeys.follow},
      ${HomeABKeys.divider},
      ${HomeABKeys.searchOffers}
    ''';

  static const defaultOrder1 =
      'account,services,myCards,offers,divider,creditCard,divider,loans,divider,follow,divider,searchOffers';

  static const defaultOrder2 =
      'account,services,offers,myCards,divider,creditCard,divider,loans,divider,follow,divider,searchOffers';

  static const defaultOrder3 =
      'account,myCards,offers,services,divider,creditCard,divider,loans,divider,follow,divider,searchOffers';

  static const defaultOrder4 =
      'account,servicesGrid,myCards,offers,divider,creditCard,divider,loans,divider,follow,divider,searchOffers';
}
