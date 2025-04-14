package com.example.demo.service;

import java.util.List;
import java.util.Optional;

import org.springframework.stereotype.Service;

import com.example.demo.domain.Cart;
import com.example.demo.domain.CartDetail;
import com.example.demo.domain.Product;
import com.example.demo.domain.User;
import com.example.demo.repository.CartDetailRepository;
import com.example.demo.repository.CartRepository;
import com.example.demo.repository.ProductRepository;

import jakarta.servlet.http.HttpSession;

@Service
public class ProductService {

    private final UserService userService;
    private final ProductRepository productRepository;
    private final CartRepository cartRepository;
    private final CartDetailRepository cartDetailRepository;

    public ProductService(ProductRepository productRepository, UserService userService,
            CartRepository cartRepository, CartDetailRepository cartDetailRepository) {
        this.cartDetailRepository = cartDetailRepository;
        this.cartRepository = cartRepository;
        this.userService = userService;
        this.productRepository = productRepository;
    }

    public void handleSaveProduct(Product product) {
        this.productRepository.save(product);
    }

    public List<Product> getFindAllProduct() {
        List<Product> products = this.productRepository.findAll();
        return products;
    }

    public void handleProductDelete(long id) {
        this.productRepository.deleteById(id);
    }

    public Product getFindId(long id) {
        Product product = this.productRepository.findById(id);
        return product;
    }

    public void addProductToCart(long productId, String email, HttpSession session) {
        User user = this.userService.getFindEmail(email);
        Cart cart = this.cartRepository.findByUser(user);
        if (cart == null) {
            cart = new Cart();
            cart.setSum(0);
            cart.setUser(user);
            cart = this.cartRepository.save(cart);
        }
        Product product = this.productRepository.findById(productId);
        if (product != null) {
            CartDetail check = this.cartDetailRepository.findByProductAndCart(product, cart);
            if (check == null) {
                CartDetail cd = new CartDetail();
                cd.setProduct(product);
                cd.setCart(cart);
                cd.setPrice(product.getPrice());
                cd.setQuantity(1);
                this.cartDetailRepository.save(cd);
            } else {
                check.setQuantity(check.getQuantity() + 1);
                this.cartDetailRepository.save(check);
            }
        }
    }

    public void deleteCartDetail(Long cartDetailId, HttpSession session) {
        Optional<CartDetail> cartDetail = this.cartDetailRepository.findById(cartDetailId);
        if (cartDetail.isPresent()) {
            CartDetail cd = cartDetail.get();
            Cart cart = cd.getCart();

            // Xóa CartDetail khỏi cơ sở dữ liệu
            this.cartDetailRepository.deleteById(cartDetailId);
            System.out.println("Xóa thành công sản phẩm khỏi giỏ hàng");
            // Cập nhật lại tổng số sản phẩm trong giỏ hàng (sum)
            long newSum = this.cartDetailRepository.countByCartId(cart.getId()); // Đếm số sản phẩm còn lại trong giỏ
                                                                                 // hàng

            if (newSum > 0) {
                cart.setSum(newSum); // Cập nhật lại sum cho giỏ hàng
                session.setAttribute("sum", newSum); // Cập nhật lại session
            } else {
                // Nếu không còn sản phẩm trong giỏ hàng, xóa giỏ hàng và cập nhật session
                this.cartRepository.delete(cart); // Xóa giỏ hàng
                session.setAttribute("sum", 0); // Giỏ hàng trống, sum = 0
            }
        }
    }

    //
}
