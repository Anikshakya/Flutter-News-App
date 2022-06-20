import '../model/category_model.dart';

List<CategoryModel> getCatagories() {
  var category = <CategoryModel>[];

  //1
  CategoryModel categoryModel = CategoryModel();
  categoryModel.categoryName = "General";
  categoryModel.imageUrl =
      "https://images.unsplash.com/photo-1524178232363-1fb2b075b655?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=870&q=80";
  category.add(categoryModel);

  //2
  CategoryModel categoryModel1 = CategoryModel();
  categoryModel1.categoryName = "Business";
  categoryModel1.imageUrl =
      "https://images.unsplash.com/photo-1503428593586-e225b39bddfe?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=870&q=80";
  category.add(categoryModel1);

  //3
  CategoryModel categoryModel2 = CategoryModel();
  categoryModel2.categoryName = "Health";
  categoryModel2.imageUrl =
      "https://images.unsplash.com/photo-1579684385127-1ef15d508118?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=580&q=80";
  category.add(categoryModel2);

  //4
  CategoryModel categoryModel3 = CategoryModel();
  categoryModel3.categoryName = "Science";
  categoryModel3.imageUrl =
      "https://images.unsplash.com/photo-1576086213369-97a306d36557?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1480&q=80";
  category.add(categoryModel3);

  //5
  CategoryModel categoryModel4 = CategoryModel();
  categoryModel4.categoryName = "Sports";
  categoryModel4.imageUrl =
      "https://images.unsplash.com/photo-1612872087720-bb876e2e67d1?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1007&q=80";
  category.add(categoryModel4);

  //6
  CategoryModel categoryModel5 = CategoryModel();
  categoryModel5.categoryName = "Technology";
  categoryModel5.imageUrl =
      "https://images.unsplash.com/photo-1518770660439-4636190af475?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=870&q=80";
  category.add(categoryModel5);

  return category;
}
