package com.example.demo.controller.admin;

import java.util.List;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

import com.example.demo.domain.Product;
import com.example.demo.domain.User;
import com.example.demo.service.ProductService;
import com.example.demo.service.UploadFileService;

@Controller
public class ProductController {

    private final ProductService productService;
    private final UploadFileService uploadFileService;

    public ProductController(ProductService productService,
            UploadFileService uploadFileService) {
        this.productService = productService;
        this.uploadFileService = uploadFileService;

    }

    // hiển thị dử liệu qua view
    @RequestMapping("/admin/product")
    public String getShowProduct(Model model) {
        List<Product> products = this.productService.getFindAllProduct();
        model.addAttribute("products", products);
        return "/admin/product/showProduct";
    }

    @GetMapping("/admin/product/createProduct")
    public String getCreate(Model model, Product newProduct) {
        model.addAttribute("newProduct", newProduct);
        return "/admin/product/createProduct";
    }

    // thêm sản phẩm
    @PostMapping("/admin/product/createProduct")
    public String getCreateProduct(Model model, @ModelAttribute("newProduct") Product newProduct,
            @RequestParam("productFile") MultipartFile file) {
        String productFile = this.uploadFileService.handleSaveUploadFile(file,
                "product");
        newProduct.setImage(productFile);
        this.productService.handleSaveProduct(newProduct);
        return "redirect:/admin/product ";
    }

    // xóa sản phẩm theo id
    // delete dử liệu
    @RequestMapping(value = "/admin/product/deleteProduct/{id}")
    public String getDeleteProductPage(Model model, @PathVariable long id) {
        model.addAttribute("id", id);
        Product product = new Product();
        product.setId(id);
        model.addAttribute("newProduct", product);
        return "/admin/product/deleteProduct";
    }

    @PostMapping("/admin/product/deleteProduct")
    public String postDeleteProduct(Model model, @ModelAttribute("newProduct") Product product) {
        this.productService.handleProductDelete(product.getId());
        return "redirect:/admin/product";
    }

    // update dử liệu của sản phẩm
    @RequestMapping(value = "/admin/product/editProduct/{id}")
    public String getEditProductPage(Model model, @PathVariable long id) {
        Product product = this.productService.getFindId(id);
        model.addAttribute("editProduct", product);
        return "/admin/product/editProduct";
    }

    @PostMapping("/admin/product/editProduct")
    public String postEditProduct(Model model, @ModelAttribute("editProduct") Product editProduct,
            @RequestParam("productFile") MultipartFile file) {

        Product updateProduct = this.productService.getFindId(editProduct.getId());
        String productFile = this.uploadFileService.handleSaveUploadFile(file, "product");
        if (updateProduct != null) {
            updateProduct.setName(editProduct.getName());
            updateProduct.setPrice(editProduct.getPrice());
            updateProduct.setDetailedDescription(editProduct.getDetailedDescription());
            updateProduct.setShortDescription(editProduct.getShortDescription());
            updateProduct.setQuantity(editProduct.getQuantity());
            updateProduct.setFactory(editProduct.getFactory());
            updateProduct.setImage(productFile);
            this.productService.handleSaveProduct(updateProduct);
        }

        return "redirect:/admin/product";
    }
}
