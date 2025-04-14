package com.example.demo.controller.client;

import java.security.Principal;
import java.util.ArrayList;
import java.util.List;

import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.example.demo.domain.Cart;
import com.example.demo.domain.CartDetail;
import com.example.demo.domain.User;
import com.example.demo.service.CartService;
import com.example.demo.service.OrderService;
import com.example.demo.service.ProductService;
import com.example.demo.service.UserService;

import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpSession;

@Controller
public class CartController {

    private final ProductService productService;
    private final UserService userService;
    private final CartService cartService;
    private final OrderService orderService;

    public CartController(ProductService productService, UserService userService,
            CartService cartService, OrderService orderService) {
        this.orderService = orderService;
        this.cartService = cartService;
        this.userService = userService;
        this.productService = productService;
    }

    @GetMapping("/cart")
    public String getCartPage(Model model, HttpServletRequest request) {
        String email = null;
        Object principal = SecurityContextHolder.getContext().getAuthentication().getPrincipal();

        if (principal instanceof UserDetails) {
            email = ((UserDetails) principal).getUsername(); // Thông thường, email sẽ là username
        }
        User user = this.userService.getFindEmail(email);
        Cart cart = this.cartService.findByUser(user);
        List<CartDetail> cartDetails = cart == null ? new ArrayList<CartDetail>() : cart.getCartDetails();
        double totalPrice = 0;
        for (CartDetail cartDetail : cartDetails) {
            totalPrice += cartDetail.getProduct().getPrice() * cartDetail.getQuantity();
        }

        model.addAttribute("cartDetails", cartDetails);
        model.addAttribute("cart", cart);
        model.addAttribute("totalPrice", totalPrice);
        return "client/cart/showCart";
    }

    @PostMapping("add-product-to-cart/{id}")
    public String postAddProductToCart(Model model, @PathVariable("id") Long id, HttpServletRequest request) {
        HttpSession session = request.getSession(false);
        long productId = id;
        String email = null;
        Object principal = SecurityContextHolder.getContext().getAuthentication().getPrincipal();

        if (principal instanceof UserDetails) {
            email = ((UserDetails) principal).getUsername(); // Thông thường, email sẽ là username
        }
        this.productService.addProductToCart(productId, email, session);
        return "redirect:/"; // Trả về trang homepage sau khi thêm sản phẩm vào giỏ hàng
    }

    @GetMapping("/checkout")
    public String getCheckoutPage(Model model) {
        String email = null;
        Object principal = SecurityContextHolder.getContext().getAuthentication().getPrincipal();

        if (principal instanceof UserDetails) {
            email = ((UserDetails) principal).getUsername(); // Thông thường, email sẽ là username
        }
        User user = this.userService.getFindEmail(email);
        Cart Cart = this.cartService.findByUser(user);
        List<CartDetail> cartDetails = Cart.getCartDetails();
        double totalPrice = 0;
        for (CartDetail cartDetail : cartDetails) {
            totalPrice += cartDetail.getProduct().getPrice() * cartDetail.getQuantity();
        }
        model.addAttribute("cartDetails", cartDetails);
        model.addAttribute("cart", Cart);
        model.addAttribute("totalPrice", totalPrice);
        return "client/cart/checkout";
    }

    @PostMapping("/cart/delete/{id}")
    public String deleteCartDetail(@PathVariable("id") Long id,
            HttpServletRequest request) {
        HttpSession session = request.getSession(false);
        long cartDetailId = id;
        this.productService.deleteCartDetail(cartDetailId, session);
        return "redirect:/cart";
    }

    @PostMapping("/cart/update")
    public String updateCart(
            @RequestParam("ids") List<Long> ids,
            @RequestParam("quantities") List<Integer> quantities,
            Principal principal) {

        if (principal == null || ids == null || quantities == null || ids.size() != quantities.size()) {
            return "redirect:/cart";
        }

        String email = principal.getName();
        User user = userService.getFindEmail(email);
        Cart cart = cartService.findByUser(user);

        for (int i = 0; i < ids.size(); i++) {
            Long cartDetailId = ids.get(i);
            Integer quantity = quantities.get(i);

            if (quantity <= 0)
                continue;

            cartService.updateCartItemQuantity(cartDetailId, quantity);
        }

        return "redirect:/cart";
    }

    @RequestMapping(value = "/cart/placeOrder", method = RequestMethod.POST)
    public String postPlaceOrder(
            @RequestParam("receiverName") String receiverName,
            @RequestParam("receiverPhone") String receiverPhone,
            @RequestParam("receiverAddress") String receiverAddress,
            HttpServletRequest request) {
        HttpSession session = request.getSession(false);
        Object principal = SecurityContextHolder.getContext().getAuthentication().getPrincipal();
        if (principal instanceof UserDetails) {
            String username = ((UserDetails) principal).getUsername();
            Long userId = userService.getUserIdByUsername(username);
            User user = new User();
            user.setId(userId);
            this.orderService.handlePlaceOrder(user, receiverName, receiverPhone, receiverAddress, session);

        }

        return "redirect:/thankyou";
    }

    @GetMapping("/thankyou")
    public String getThankYouPage(Model model) {
        return "client/cart/thankyou";
    }
}
