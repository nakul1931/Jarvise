class DataMap {
  static List<Map<String, dynamic>> get jarData => [
        {
          "id": 0,
          "title": "pool",
          "selected": true,
        },
        {
          "id": 1,
          "title": "savings",
          "selected": false,
        },
        {
          "id": 2,
          "title": "food",
          "selected": false,
        },
        {
          "id": 3,
          "title": "lock",
          "selected": false,
        }
      ];
  static List<Map<String, dynamic>> get specificJarData => [
        {
          "id": 0,
          "title": "pool",
          "balance": 0,
        },
        {
          "id": 1,
          "title": "savings",
          "balance": 150,
        },
        {
          "id": 2,
          "title": "food",
          "balance": 700,
        },
        {
          "id": 3,
          "title": "lock",
          "balance": 1200,
        },
      ];
  static List get totalBalance => [
        {
          "totalBalance": 2400,
        },
        {
          "totalBalance": 2000,
        }
      ];

}
