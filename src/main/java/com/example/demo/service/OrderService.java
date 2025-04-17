package com.example.demo.service;

import java.util.ArrayList;
import java.util.List;
import org.springframework.security.authentication.dao.DaoAuthenticationProvider;
import org.springframework.stereotype.Service;

import com.example.demo.domain.Cart;
import com.example.demo.domain.CartDetail;
import com.example.demo.domain.Order;
import com.example.demo.domain.OrderDetail;
import com.example.demo.domain.User;
import com.example.demo.repository.CartDetailRepository;
import com.example.demo.repository.CartRepository;
import com.example.demo.repository.OrderDetailRepository;
import com.example.demo.repository.OrderRepository;
import jakarta.servlet.http.HttpSession;

@Service
public class OrderService {

    private final DaoAuthenticationProvider authProvider;

    private final CartDetailRepository cartDetailRepository;
    private final OrderDetailRepository orderDetailRepository;
    private final OrderRepository orderRepository;
    private final CartRepository cartRepository;

    public OrderService(CartRepository cartRepository, OrderRepository orderRepository,
            OrderDetailRepository orderDetailRepository, CartDetailRepository cartDetailRepository,
            DaoAuthenticationProvider authProvider) {
        this.cartRepository = cartRepository;
        this.orderRepository = orderRepository;
        this.orderDetailRepository = orderDetailRepository;
        this.cartDetailRepository = cartDetailRepository;
        this.authProvider = authProvider;
    }

    public void handlePlaceOrder(User user, String receiverName, String receiverPhone, String receiverAddress,
            HttpSession session) {
        Cart cart = this.cartRepository.findByUser(user);
        if (cart != null) {
            List<CartDetail> cartDetails = cart.getCartDetails();
            if (cartDetails != null) {
                Order order = new Order();
                OrderDetail orderDetail = new OrderDetail();
                for (CartDetail cartDetail : cartDetails) {
                    orderDetail.setOrder(order);
                    orderDetail.setProduct(cartDetail.getProduct());
                    orderDetail.setQuantity(cartDetail.getQuantity());
                    orderDetail.setPrice(cartDetail.getPrice());

                }
                order.setUser(user);
                order.setReceiverName(receiverName);
                order.setReceiverPhone(receiverPhone);
                order.setReceiverAddress(receiverAddress);
                order.setStatus("PENDING");
                double totalPrice = 0.0;
                for (CartDetail cartDetail : cartDetails) {
                    totalPrice += cartDetail.getPrice() * cartDetail.getQuantity();
                }
                order.setTotalPrice(totalPrice);
                order.setOrderDetails(new ArrayList<>());
                this.orderRepository.save(order);
                orderDetail.setOrder(order);
                this.orderDetailRepository.save(orderDetail);
                this.cartDetailRepository.deleteAll(cartDetails);
                this.cartRepository.deleteById(cart.getId());
                session.setAttribute("sum", 0);
            }
        }
    }

    public List<Order> getFindAllOrder() {
        List<Order> orders = this.orderRepository.findAll();
        return orders;
    }

    public Order getFindId(long id) {
        Order order = this.orderRepository.findById(id);
        return order;
    }

    public void handleSaveOrder(Order order) {
        this.orderRepository.save(order);
    }

    public void handleDeleteOrder(long id) {
        Order order = this.orderRepository.findById(id);
        List<OrderDetail> orderDetails = order.getOrderDetails();
        if (orderDetails != null) {
            for (OrderDetail detail : orderDetails) {
                this.orderDetailRepository.delete(detail);
            }
        }
        this.orderRepository.deleteById(id);
    }

    public List<Order> getOrderByUser(User user) {
        return this.orderRepository.findByUser(user);
    }
}
