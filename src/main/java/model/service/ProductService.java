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
            Discount discountApplied = DiscountService.getInstance().getDiscountById(p.getDiscountId());
            if (discountApplied != null) {
                Timestamp currentTimestamp = new Timestamp(new Date().getTime());
                if ((discountApplied.getStartDate().after(currentTimestamp) || discountApplied.getStartDate().equals(currentTimestamp))
                        && (currentTimestamp.before(discountApplied.getEndDate()) || currentTimestamp.equals(discountApplied.getEndDate()))) {
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

    public List<Product> getProductsByCategoryId(String category_id) {
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

    public static void main(String[] args) {
//        List<Product> products = ProductService.getInstance().sixProduct(0);
//        System.out.println(products);
        System.out.println(ProductService.getInstance().productPriceIncludeDiscount(ProductService.getInstance().getProductById("P02")));
    }
}
