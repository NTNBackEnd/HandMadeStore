package model.dao;

import model.bean.Product;
import model.bean.User;
import model.db.JDBIConnector;
import model.service.ImageService;

import java.util.*;
import java.util.stream.Collectors;

public class ProductDAO {
    //Tất cả các sản phẩm
    public static List<Product> getAll(){
        List<Product> product = JDBIConnector.me().withHandle(handle ->
                handle.createQuery("select * from product")
                        .mapToBean(Product.class)
                        .stream()
                        .toList()
        );
        return product;
    }
    public static Product getProductById(final String id) {
        Optional<Product> product = JDBIConnector.me().withHandle(handle ->
                handle.createQuery("select * from product where id= :id")
                        .bind("id", id)
                        .mapToBean(Product.class)
                        .stream()
                        .findFirst()
        );
        return product.isEmpty() ? null : product.get();
    }

    public static void deleteProduct(String product_id) {
        //delete products image
        ImageService.deleteProductImage(product_id);
        //delete order_details has products
        JDBIConnector.me().useHandle(handle ->
                handle.createUpdate("DELETE FROM order_details WHERE productId=?")
                        .bind(0, product_id)
                        .execute()
        );
        JDBIConnector.me().useHandle(handle ->
                handle.createUpdate("DELETE FROM product WHERE id=?")
                        .bind(0, product_id)
                        .execute()
        );
    }

    public static void switchIsSale(String product_id) {
        JDBIConnector.me().useHandle(handle ->
                handle.createUpdate("UPDATE product SET isSale = CASE WHEN isSale = 0 THEN 1 ELSE 0 END WHERE id=?")
                        .bind(0, product_id)
                        .execute()
        );
    }


    public static List<Product> listSixProduct(int offset) {
        try {
            List<Product> products = JDBIConnector.me().withHandle(handle ->
                    handle.createQuery("select * from product limit 6 offset :offset")
                            .bind("offset", offset)
                            .mapToBean(Product.class)
                            .stream().toList());

            return products;
        } catch (Exception e) {
            // Xử lý exception, ví dụ: log hoặc throw lại một exception khác.
            e.printStackTrace();
            return Collections.emptyList(); // hoặc return null tùy vào trường hợp
        }
    }

    public static List<Product> findByCategory(int categoryID) {
        List<Product> products = JDBIConnector.me().withHandle(handle ->
                handle.createQuery("select * from product where categoryId = :id")
                        .bind("id", categoryID)
                        .mapToBean(Product.class)
                        .stream()
                        .toList());
        return products;
    }

    public static List<Product> getTrueIsSaleProduct() {
        List<Product> products = JDBIConnector.me().withHandle(handle ->
                handle.createQuery("select * from product where isSale = 1")
                        .mapToBean(Product.class)
                        .stream()
                        .toList());
        return products;
    }

    public static List<Product> getFalseIsSaleProduct() {
        List<Product> products = JDBIConnector.me().withHandle(handle ->
                handle.createQuery("select * from product where isSale = 0")
                        .mapToBean(Product.class)
                        .stream()
                        .toList());
        return products;
    }

    public static List<Product> getTrueHasDiscountProduct() {
        List<Product> products = JDBIConnector.me().withHandle(handle ->
                handle.createQuery("select * from product where discountId IS NOT NULL")
                        .mapToBean(Product.class)
                        .stream()
                        .toList());
        return products;
    }

    public static List<Product> getFalseHasDiscountProduct() {
        List<Product> products = JDBIConnector.me().withHandle(handle ->
                handle.createQuery("select * from product where discountId IS NULL")
                        .mapToBean(Product.class)
                        .stream()
                        .toList());
        return products;
    }

    public static List<Product> getNullQuantityProduct() {
        List<Product> products = JDBIConnector.me().withHandle(handle ->
                handle.createQuery("select * from product where quantity = 0")
                        .mapToBean(Product.class)
                        .stream()
                        .toList());
        return products;
    }

    public static List<Product> getProductByDiscountId(String discountId) {
        List<Product> products = JDBIConnector.me().withHandle(handle ->
                handle.createQuery("select * from product where discountId = :id")
                        .bind("id", discountId)
                        .mapToBean(Product.class)
                        .stream()
                        .toList());
        return products;
    }

    public static List<Product> getProductBySubName(String subName) {
        List<Product> products = JDBIConnector.me().withHandle(handle ->
                handle.createQuery("select * from product where name like :subName")
                        .bind("subName", "%" + subName + "%")
                        .mapToBean(Product.class)
                        .stream()
                        .toList());
        return products;
    }
//    Sắp xếp theo giá tăng dần toàn bộ
    public static List<Product> sortProductAZ(){
        List<Product> productAZ = JDBIConnector.me().withHandle(handle ->
                handle.createQuery("SELECT * FROM product ORDER BY product.sellingPrice ASC")
                        .mapToBean(Product.class)
                        .stream()
                        .toList());
        return productAZ;
    }
    //    Sắp xếp theo giá giảm dần toàn bộ
    public static List<Product> sortProductZA(){
        List<Product> productZA = JDBIConnector.me().withHandle(handle ->
                handle.createQuery("SELECT * FROM product ORDER BY product.sellingPrice DESC")
                        .mapToBean(Product.class)
                        .stream()
                        .toList());
        return productZA;
    }
    //    Sắp xếp theo giá tăng dần theo category
    public static List<Product> sortProductByCategoryAZ(int Categoryid){
        List<Product> productAZ = JDBIConnector.me().withHandle(handle ->
                handle.createQuery("SELECT * FROM product WHERE categoryId = :id ORDER BY product.sellingPrice ASC")
                        .bind("id",Categoryid)
                        .mapToBean(Product.class)
                        .stream()
                        .toList());
        return productAZ;
    }
    //    Sắp xếp theo giá giảm dần theo category
    public static List<Product> sortProductByCategoryZA(int Categoryid){
        List<Product> productZA = JDBIConnector.me().withHandle(handle ->
                handle.createQuery("SELECT * FROM product WHERE categoryId = :id ORDER BY product.sellingPrice DESC")
                        .bind("id",Categoryid)
                        .mapToBean(Product.class)
                        .stream()
                        .toList());
        return productZA;
    }

    public static void removeDiscount(String product_id) {
        JDBIConnector.me().useHandle(handle ->
                handle.createUpdate("UPDATE product SET discountId = 'null' WHERE id=?")
                        .bind(0, product_id)
                        .execute()
        );
    }

    public static void setDiscountForProductList(String discountId, List<String> product_id_list) {
        if (product_id_list != null && !product_id_list.isEmpty()) {
            StringBuilder ids = new StringBuilder();
            for (int i = 0; i < product_id_list.size(); i++) {
                String id = product_id_list.get(i);
                ids.append("'" + id + "'");
                if (i != product_id_list.size() - 1)
                    ids.append(",");
            }
            System.out.println("thay đổi 1 số");
            JDBIConnector.me().useHandle(handle ->
                    handle.createUpdate(
                                    "UPDATE product " +
                                            "SET discountId = null WHERE id NOT IN (" + ids + ") AND discountId = :id "
                            )
                            .bind("id", discountId)
                            .execute()
            );

            JDBIConnector.me().useHandle(handle ->
                    handle.createUpdate(
                                    "UPDATE product " +
                                            "SET discountId = :id WHERE id IN (" + ids + ")"
                            )
                            .bind("id", discountId)
                            .execute()
            );
//            JDBIConnector.me().useHandle(handle ->
//                    handle.createUpdate(
//                                    "UPDATE product " +
//                                            "SET discountId = " +
//                                            "CASE " +
//                                            "WHEN id NOT IN (" + ids + ") AND discountId = :id THEN 'null' " +
//                                            "WHEN id IN (" + ids + ") THEN :id " +
//                                            "END"
//                            )
//                            .bind("id", discountId)
//                            .execute()
//            );
        } else {
            System.out.println("bỏ tất cả");
            JDBIConnector.me().useHandle(handle ->
                    handle.createUpdate(
                                    "UPDATE product " +
                                            "SET discountId = null WHERE discountId= :id"
                            )
                            .bind("id", discountId)
                            .execute()
            );
        }

    }

    public static void setNullDiscountForProductList(String discountId) {
        JDBIConnector.me().useHandle(handle ->
                handle.createUpdate(
                                "UPDATE product " +
                                        "SET discountId = null WHERE discountId=?"
                        ).bind(0, discountId)
                        .execute()
        );
    }

    public static void insertNewProduct(String name, String description, double costPrice, double sellingPrice, int quantity, String categoryId, List<String> imagesPath) {
        JDBIConnector.me().useHandle(handle -> {
                    int productId = handle.createUpdate("INSERT INTO product (name, description, costPrice, sellingPrice,quantity,categoryId) VALUES (:name, :description, :costPrice, :sellingPrice,:quantity,:categoryId)")
                            .bind("name", name)
                            .bind("description", description)
                            .bind("costPrice", costPrice)
                            .bind("sellingPrice", sellingPrice)
                            .bind("quantity", quantity)
                            .bind("categoryId", categoryId)
                            .executeAndReturnGeneratedKeys("id")
                            .mapTo(Integer.class).one();
                    int count = 0;
                    for (String imagePath : imagesPath) {
                        count++;
                        handle.createUpdate("INSERT INTO image (name, path, productId) VALUES (:name, :path, :productId)")
                                .bind("name", name + " - " + count)
                                .bind("path", imagePath)
                                .bind("productId", productId)
                                .executeAndReturnGeneratedKeys("id")
                                .mapTo(Integer.class).one();
                    }
                }
        );
    }

    public static void insertNewProduct(String name, String description, double costPrice, double sellingPrice, int quantity, String categoryId, String discountId, List<String> imagesPath) {
        JDBIConnector.me().useHandle(handle -> {
                    int productId = handle.createUpdate("INSERT INTO product (name, description, costPrice, sellingPrice,quantity,categoryId,discountId) VALUES (:name, :description, :costPrice, :sellingPrice,:quantity,:categoryId,:discountId)")
                            .bind("name", name)
                            .bind("description", description)
                            .bind("costPrice", costPrice)
                            .bind("sellingPrice", sellingPrice)
                            .bind("quantity", quantity)
                            .bind("categoryId", categoryId)
                            .bind("discountId", discountId)
                            .executeAndReturnGeneratedKeys("id")
                            .mapTo(Integer.class).one();

                    for (String imagePath : imagesPath) {
                        handle.createUpdate("INSERT INTO image (name, path, productId) VALUES (:name, :path, :productId)")
                                .bind("name", name)
                                .bind("path", imagePath)
                                .bind("productId", productId)
                                .executeAndReturnGeneratedKeys("id")
                                .mapTo(Integer.class).one();
                    }
                }
        );
    }

    public static void main(String[] args) {
//        insertNewProduct("Chuối Noel", "hahaha", 55000, 60000, 2, "5", "1", new ArrayList<String>());
        System.out.println(findByCategory(1));
    }

}
