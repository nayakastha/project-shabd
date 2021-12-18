class CategorieModel {
  String? imageAssetUrl;
  String? categorieName;
}

List<CategorieModel> getCategories() {
  List<CategorieModel> myCategories = <CategorieModel>[];
  CategorieModel categorieModel;

  categorieModel = CategorieModel();
  categorieModel.categorieName = "Local";
  categorieModel.imageAssetUrl =
      "https://images.unsplash.com/photo-1520451214409-ba3eed10dc52?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1502&q=80";
  myCategories.add(categorieModel);

  categorieModel = CategorieModel();
  categorieModel.categorieName = "State";
  categorieModel.imageAssetUrl =
      "https://images.unsplash.com/photo-1593847794002-a67998d742fc?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1507&q=80";
  myCategories.add(categorieModel);
  //1
  categorieModel = CategorieModel();
  categorieModel.categorieName = "National";
  categorieModel.imageAssetUrl =
      "https://images.unsplash.com/photo-1532375810709-75b1da00537c?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1507&q=80";
  myCategories.add(categorieModel);

  categorieModel = CategorieModel();
  categorieModel.categorieName = "International";
  categorieModel.imageAssetUrl =
      "https://images.unsplash.com/photo-1552764217-6d34d9795ab9?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1507&q=80";
  myCategories.add(categorieModel);

  categorieModel = CategorieModel();
  categorieModel.categorieName = "Business";
  categorieModel.imageAssetUrl =
      "https://images.unsplash.com/photo-1507679799987-c73779587ccf?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1502&q=80";
  myCategories.add(categorieModel);

  //2
  categorieModel = CategorieModel();
  categorieModel.categorieName = "Entertainment";
  categorieModel.imageAssetUrl =
      "https://images.unsplash.com/photo-1522869635100-9f4c5e86aa37?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1500&q=80";
  myCategories.add(categorieModel);

  //3
  categorieModel = CategorieModel();
  categorieModel.categorieName = "General";
  categorieModel.imageAssetUrl =
      "https://images.unsplash.com/photo-1495020689067-958852a7765e?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=800&q=60";
  myCategories.add(categorieModel);

  //4
  categorieModel = CategorieModel();
  categorieModel.categorieName = "Health";
  categorieModel.imageAssetUrl =
      "https://images.unsplash.com/photo-1494390248081-4e521a5940db?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1595&q=80";
  myCategories.add(categorieModel);

  //5
  categorieModel = CategorieModel();
  categorieModel.categorieName = "Science";
  categorieModel.imageAssetUrl =
      "https://images.unsplash.com/photo-1554475901-4538ddfbccc2?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1504&q=80";
  myCategories.add(categorieModel);

  //5
  categorieModel = CategorieModel();
  categorieModel.categorieName = "Sports";
  categorieModel.imageAssetUrl =
      "https://images.unsplash.com/photo-1495563923587-bdc4282494d0?ixlib=rb-1.2.1&auto=format&fit=crop&w=1500&q=80";
  myCategories.add(categorieModel);

  //5
  categorieModel = CategorieModel();
  categorieModel.categorieName = "Technology";
  categorieModel.imageAssetUrl =
      "https://images.unsplash.com/photo-1519389950473-47ba0277781c?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1500&q=80";
  myCategories.add(categorieModel);

  return myCategories;
}
