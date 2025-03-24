package com.example.zoamart.controller.client;

import java.util.Date;
import java.util.List;

import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.example.zoamart.domain.Order;
import com.example.zoamart.domain.User;
import com.example.zoamart.dto.UserDTO;
import com.example.zoamart.service.OrderService;
import com.example.zoamart.service.UserService;

import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpSession;
import lombok.RequiredArgsConstructor;

@Controller
@RequiredArgsConstructor
public class CustomerController {

    private final UserService userService;
    private final OrderService orderService;

    private final PasswordEncoder passwordEncoder;

    @GetMapping("/customer")
    public String getAccountPage(Model model, HttpServletRequest request) {
        HttpSession session = request.getSession(false);

        long userId = (long) session.getAttribute("id");
        User user = new User();
        user.setId(userId);

        List<Order> orders = this.orderService.getAllOrdersByUser(user);
        model.addAttribute("orders", orders);

        UserDTO userDto = this.userService.getUserById(userId);

        model.addAttribute("newUser", userDto);

        if (!model.containsAttribute("imageNotification")) {
            model.addAttribute("imageNotification", "02.png");
            model.addAttribute("titleNotification", "Quản lý tài khoản");
            model.addAttribute("desNotification",
                    "Bạn có thể cập nhật thông tin cá nhân, đổi mật khẩu hoặc đăng xuất tại đây");
        }

        return "client/customer/show";
    }

    @PostMapping("/customer")
    public String updateAccountPage(Model model, HttpServletRequest request, RedirectAttributes redirectAttributes,
            @RequestParam("fullName") String fullName,
            @RequestParam("email") String email, @RequestParam("address") String address,
            @RequestParam("phone") String phone, @RequestParam("oldPass") String oldPass,
            @RequestParam("newPass") String newPass) {

        HttpSession session = request.getSession(false);

        long userId = (long) session.getAttribute("id");

        UserDTO user = this.userService.getUserById(userId);

        Date ldt = new Date();
        if (!oldPass.isEmpty()) {
            if (!passwordEncoder.matches(oldPass, user.getPassword())) {
                redirectAttributes.addFlashAttribute("imageNotification", "04.png");
                redirectAttributes.addFlashAttribute("titleNotification",
                        "Oops! Có vẻ bạn đã nhập sai mật khẩu");
                redirectAttributes.addFlashAttribute("desNotification",
                        "Vui lòng kiểm tra lại mật khẩu cũ của bạn. Nếu bạn quên, hãy thử khôi phục mật khẩu hoặc liên hệ hỗ trợ.");
                return "redirect:/customer";
            }
        }
        if (user != null) {
            user.setFullName(fullName);
            user.setEmail(email);
            user.setPhone(phone);
            user.setAddress(address);
            user.setUpdatedAt(ldt);
            if (!newPass.isEmpty()) {
                user.setPassword(this.passwordEncoder.encode(newPass));
            }
            this.userService.handleSaveUser(user);
        }

        return "redirect:/customer";
    }

    @GetMapping("/customer/order/{id}")
    public String getOrderDetailPage(Model model, @PathVariable long id) {
        Order order = this.orderService.getOrderById(id).get();
        model.addAttribute("order", order);
        model.addAttribute("id", id);
        model.addAttribute("orderDetails", order.getOrderDetails());
        return "client/customer/detail";
    }
}
