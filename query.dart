return firebaseFirestore
              .collection('universities')
              .orderBy("title", descending: false)
              .where("type",
                  isEqualTo: filtersMap.containsKey("sort_by_public")
                      ? filtersMap["sort_by_public"]
                      : filtersMap.containsKey("sort_by_private")
                          ? filtersMap["sort_by_private"]
                          : null)
              .limitToLast(limit);
