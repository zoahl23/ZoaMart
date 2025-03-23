package com.example.zoamart.controller.client;

import java.util.ArrayList;
import java.util.List;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;

import com.example.zoamart.domain.Cart;
import com.example.zoamart.domain.CartDetail;
import com.example.zoamart.domain.User;
import com.example.zoamart.dto.ProductDTO;
import com.example.zoamart.service.ProductService;

import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpSession;
import lombok.RequiredArgsConstructor;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
@RequiredArgsConstructor
public class ItemController {

    private final ProductService productService;

    @GetMapping("/product/{id}")
    public String getProductPage(Model model, @PathVariable long id) {
        ProductDTO product = this.productService.getAProductById(id);
        model.addAttribute("product", product);

        List<ProductDTO> products = this.productService
                .getProductForDetail(Long.valueOf(id));
        model.addAttribute("products", products);
        return "client/product/detail";
    }

    @PostMapping("/add-product-to-cart/{id}")
    public String addProductToCart(@PathVariable long id,
            @RequestParam(name = "quantity", defaultValue = "1") int quantity,
            HttpServletRequest request) {

        HttpSession session = request.getSession(false);
        String email = (String) session.getAttribute("email");

        long productId = id;

        this.productService.handleAddProductToCart(email, productId, quantity, session);

        return "redirect:/";
    }

    @PostMapping("/add-product-detail-to-cart/{id}")
    public String addProductDetailToCart(@PathVariable long id,
            @RequestParam(name = "quantity", defaultValue = "1") int quantity,
            HttpServletRequest request) {

        HttpSession session = request.getSession(false);
        String email = (String) session.getAttribute("email");

        long productId = id;

        this.productService.handleAddProductToCart(email, productId, quantity, session);

        return "redirect:/product/{id}";
    }

    @GetMapping("/cart")
    public String getCartPage(Model model, HttpServletRequest request) {
        User user = new User();
        HttpSession session = request.getSession(false);

        long userId = (long) session.getAttribute("id");
        user.setId(userId);

        Cart cart = this.productService.fetchByUser(user);
        List<CartDetail> cartDetails = new ArrayList<>();
        int totalPrice = 0;

        if (cart != null && cart.getCartDetails() != null) {
            cartDetails = cart.getCartDetails();
            for (CartDetail cd : cartDetails) {
                totalPrice += cd.getPrice() * cd.getQuantity();
            }
        }

        model.addAttribute("cartDetails", cartDetails);
        model.addAttribute("totalPrice", totalPrice);
        model.addAttribute("cart", cart);
        return "client/cart/show";
    }

    @PostMapping("/delete-product-in-cart/{id}")
    public String deleteProductInCart(@PathVariable long id,
            HttpServletRequest request) {

        HttpSession session = request.getSession(false);

        this.productService.handleRemoveCartDetail(id, session);

        return "redirect:/cart";
    }

    @PostMapping("/delete-all-product-in-cart/{id}")
    public String deleteAllProductInCart(@PathVariable long id,
            HttpServletRequest request) {

        HttpSession session = request.getSession(false);

        this.productService.handleRemoveAllCartDetail(id, session);

        return "redirect:/cart";
    }

    @PostMapping("/confirm-checkout")
    public String getCheckOutPage(@ModelAttribute("cart") Cart cart) {

        List<CartDetail> cartDetails = cart == null ? new ArrayList<CartDetail>() : cart.getCartDetails();
        this.productService.handleUpdateCartBeforeCheckout(cartDetails);

        return "redirect:/checkout";
    }

    @GetMapping("/checkout")
    public String getCheckoutPage(Model model, HttpServletRequest request) {
        User user = new User();
        HttpSession session = request.getSession(false);

        long userId = (long) session.getAttribute("id");
        user.setId(userId);

        Cart cart = this.productService.fetchByUser(user);
        List<CartDetail> cartDetails = new ArrayList<>();
        int totalPrice = 0;

        if (cart != null && cart.getCartDetails() != null) {
            cartDetails = cart.getCartDetails();
            for (CartDetail cd : cartDetails) {
                totalPrice += cd.getPrice() * cd.getQuantity();
            }
        }

        model.addAttribute("cartDetails", cartDetails);
        model.addAttribute("totalPrice", totalPrice);
        return "client/cart/checkout";
    }

    @PostMapping("/place-order")
    public String handlePlaceOrder(HttpServletRequest request,
            @RequestParam("receiverName") String receiverName,
            @RequestParam("receiverAddress") String receiverAddress,
            @RequestParam("receiverPhone") String receiverPhone,
            @RequestParam("receiverNote") String receiverNote,
            @RequestParam("receiverTotalPrice") int receiverTotalPrice) {

        User user = new User();
        HttpSession session = request.getSession(false);

        long userId = (long) session.getAttribute("id");
        user.setId(userId);

        this.productService.handlePlaceOrder(user, session, receiverName, receiverAddress, receiverPhone, receiverNote,
                receiverTotalPrice);

        return "redirect:/thanks";
    }

    @GetMapping("/thanks")
    public String getThankYouPage(Model model) {
        return "client/cart/thanks";
    }

}
