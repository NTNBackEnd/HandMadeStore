package model.service;

import model.bean.Discount;
import model.bean.Product;
import model.dao.ProductDAO;
import model.db.JDBIConnector;

import java.sql.Timestamp;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

public class ProductService {
    public static ProductService instance;

    public static ProductService getInstance() {
        if (instance == null) instance = new ProductService();
        return instance;
    }
    public List<Product> getAll() {
        return ProductDAO.getAll();
    }

    public Product getProductById(String id) {
        return ProductDAO.getProductById(id);
    }


    public double productPriceIncludeDiscount(Product p) {
        if (p != null) {
            Discount discountApplied = DiscountService.getInstance().getDiscountById(p.getDiscountId() + "");
            if (discountApplied != null) {
                Timestamp currentTimestamp = new Timestamp(new Date().getTime());
                if ((discountApplied.getStartDate().getTime() <= (currentTimestamp.getTime()))
                        && (currentTimestamp.getTime() <= (discountApplied.getEndDate().getTime()))) {
                    return p.getSellingPrice() * (1 - discountApplied.getPercentageOff());
                } else {
                    return p.getSellingPrice();
                }
            } else return p.getSellingPrice();
        }
        return 0;
    }

    public List<Product> sixProduct(int offset) {
        return ProductDAO.listSixProduct(offset);
    }

    public List<Product> getProductsByCategoryId(int category_id) {
        return ProductDAO.findByCategory(category_id);
    }

    public void deleteProduct(String product_id) {
        ProductDAO.deleteProduct(product_id);
    }

    public void switchIsSale(String product_id) {
        ProductDAO.switchIsSale(product_id);
    }

    public List<Product> getTrueIsSaleProduct() {
        return ProductDAO.getTrueIsSaleProduct();
    }

    public List<Product> getFalseIsSaleProduct() {
        return ProductDAO.getFalseIsSaleProduct();
    }

    public List<Product> getTrueHasDiscountProduct() {
        return ProductDAO.getTrueHasDiscountProduct();
    }

    public List<Product> getFalseHasDiscountProduct() {
        return ProductDAO.getFalseHasDiscountProduct();
    }

    public List<Product> getNullQuantityProduct() {
        return ProductDAO.getNullQuantityProduct();
    }

    public List<Product> getProductByAsName(String subName) {
        return ProductDAO.getProductBySubName(subName);
    }

    public List<Product> getProductByDiscountId(String discountId) {
        return ProductDAO.getProductByDiscountId(discountId);
    }

    public void removeDiscount(String product_id) {
        ProductDAO.removeDiscount(product_id);
    }

    public void setDiscountForProductList(String discountId, List<String> product_id_list) {
        ProductDAO.setDiscountForProductList(discountId, product_id_list);
    }

    public void setNullDiscountForProductList(String discountId) {
        ProductDAO.setNullDiscountForProductList(discountId);
    }

    public void insertNewProduct(String name, String description, double costPrice, double sellingPrice, int quantity, String categoryId, List<String> imagesPath) {
        ProductDAO.insertNewProduct(name, description, costPrice, sellingPrice, quantity, categoryId, imagesPath);
    }

    public void insertNewProduct(String name, String description, double costPrice, double sellingPrice, int quantity, String categoryId, String discountId, List<String> imagesPath) {
        ProductDAO.insertNewProduct(name, description, costPrice, sellingPrice, quantity, categoryId, discountId, imagesPath);
    }
    //Sắp xếp từ thấp đến cao
    public List<Product> sortProductsAZ(){
        return ProductDAO.sortProductAZ();
    }
    //sắp xếp từ cao đến thấp
    public List<Product> sortProductsZA(){
        return ProductDAO.sortProductZA();
    }

    public static void main(String[] args) {
        System.out.println(getInstance().getProductsByCategoryId(2));
    }
}
