package com.example.demo.controller.admin;

import java.util.List;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestParam;

import com.example.demo.domain.Order;
import com.example.demo.domain.OrderDetail;
import com.example.demo.service.OrderService;

import jakarta.websocket.server.PathParam;

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

    @GetMapping("/admin/order/deleteOrder/{id}")
    public String getDeleteOrderPage(Model model, @PathVariable long id) {
        Order deleteOrder = new Order();
        deleteOrder.setId(id);
        model.addAttribute("deleteOrder", deleteOrder);
        return "admin/order/deleteOrder";
    }

    @PostMapping("/admin/order/deleteOrder")
    public String postDeleteOrderPage(Model model, @ModelAttribute("deleteOrder") Order deleteOrder) {
        this.orderService.handleDeleteOrder(deleteOrder.getId());
        return "redirect:/admin/order";
    }

    @GetMapping("/admin/order/viewOrder/{id}")
    public String getViewOrderPage(Model model, @PathVariable long id) {
        Order order = this.orderService.getFindId(id);
        if (order != null) {
            List<OrderDetail> orderDetails = order.getOrderDetails();
            model.addAttribute("orderDetails", orderDetails);

        }
        return "admin/order/viewOrder";
    }

    @GetMapping("/admin/order/editOrder/{id}")
    public String getEditOrderPage(Model model, @PathVariable long id) {
        Order editOrder = this.orderService.getFindId(id);
        model.addAttribute("editOrder", editOrder);
        return "admin/order/editOrder";
    }

    @PostMapping("/admin/order/editOrder")
    public String postEditOrderPage(Model model, @ModelAttribute("editOrder") Order editOrder) {
        Order updateOrder = this.orderService.getFindId(editOrder.getId());
        if (updateOrder != null) {
            updateOrder.setId(editOrder.getId());
            updateOrder.setUser(editOrder.getUser());
            updateOrder.setTotalPrice(editOrder.getTotalPrice());
            updateOrder.setOrderDetails(editOrder.getOrderDetails());
            updateOrder.setReceiverName(editOrder.getReceiverName());
            updateOrder.setReceiverPhone(editOrder.getReceiverPhone());
            updateOrder.setReceiverAddress(editOrder.getReceiverAddress());
            updateOrder.setStatus(editOrder.getStatus());
            this.orderService.handleSaveOrder(updateOrder);

        }
        return "redirect:/admin/order";
    }
}
