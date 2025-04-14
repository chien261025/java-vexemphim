package com.example.demo.controller.admin;

import java.util.List;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestParam;

import com.example.demo.domain.Order;
import com.example.demo.service.OrderService;
import org.springframework.web.bind.annotation.PostMapping;

@Controller
public class OderController {

    private final OrderService orderService;

    public OderController(OrderService orderService) {
        this.orderService = orderService;
    }

    @GetMapping("/admin/order")
    public String getOrderPage(Model model) {
        List<Order> orders = this.orderService.getFindAllOrder();
        model.addAttribute("orders", orders);
        return "admin/order/showOrder";
    }

    @PostMapping("/formStatus/{id}")
    public String postFromStatus(Model model, @PathVariable long id, @RequestParam("status") String status) {
        long orderId = id;
        Order order = this.orderService.getFindId(orderId);
        order.setStatus(status);
        this.orderService.handleSaveOrder(order);
        return "redirect:/admin/order";
    }

}
