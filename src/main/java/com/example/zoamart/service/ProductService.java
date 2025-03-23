package com.example.zoamart.service;

import java.util.Date;
import java.util.List;
import java.util.Optional;
import java.util.stream.Collectors;

import org.springframework.stereotype.Service;
import org.springframework.web.bind.annotation.RequestParam;

import com.example.zoamart.domain.Cart;
import com.example.zoamart.domain.CartDetail;
import com.example.zoamart.domain.Order;
import com.example.zoamart.domain.OrderDetail;
import com.example.zoamart.domain.Product;
import com.example.zoamart.domain.User;
import com.example.zoamart.dto.ProductDTO;
import com.example.zoamart.mapper.ProductMapper;
import com.example.zoamart.repository.CartDetailRepository;
import com.example.zoamart.repository.CartRepository;
import com.example.zoamart.repository.OrderDetailRepository;
import com.example.zoamart.repository.OrderRepository;
import com.example.zoamart.repository.ProductRepository;
import com.example.zoamart.repository.UserRepository;

import jakarta.servlet.http.HttpSession;
import lombok.RequiredArgsConstructor;

@Service
@RequiredArgsConstructor
public class ProductService {

    private final ProductRepository productRepository;
    private final CartRepository cartRepository;
    private final CartDetailRepository cartDetailRepository;
    private final UserRepository userRepository;
    private final OrderRepository orderRepository;
    private final OrderDetailRepository orderDetailRepository;

    public ProductDTO handleSaveProduct(ProductDTO productDTO) {
        Product product = ProductMapper.PRODUCT_INSTANCE.toEntity(productDTO);
        Product savedProduct = productRepository.save(product);
        return ProductMapper.PRODUCT_INSTANCE.toDTO(savedProduct);
    }

    public List<ProductDTO> getAllProducts() {
        List<Product> products = productRepository.findAll();
        return products.stream()
                .map(ProductMapper.PRODUCT_INSTANCE::toDTO)
                .collect(Collectors.toList());
    }

    public ProductDTO getAProductById(Long id) {
        Product product = productRepository.findById(id)
                .orElseThrow(() -> new RuntimeException("Product not found"));
        return ProductMapper.PRODUCT_INSTANCE.toDTO(product);
    }

    public void deleteAProduct(long id) {
        this.productRepository.deleteById(id);
    }

    public List<ProductDTO> getLatestProducts() {
        List<Product> products = productRepository.findLatestProducts();
        return products.stream()
                .map(ProductMapper.PRODUCT_INSTANCE::toDTO)
                .collect(Collectors.toList());
    }

    public List<ProductDTO> getSoldOutProducts() {
        List<Product> products = productRepository.findSoldOutProducts();
        return products.stream()
                .map(ProductMapper.PRODUCT_INSTANCE::toDTO)
                .collect(Collectors.toList());
    }

    public List<ProductDTO> getTop10ProductsByParentCategory(Long parentId) {
        return productRepository.findTop10ProductsByParentCategory(parentId)
                .stream()
                .map(ProductMapper.PRODUCT_INSTANCE::toDTO)
                .collect(Collectors.toList());
    }

    public List<ProductDTO> getProductForDetail(Long productId) {
        return productRepository.findProductsDiscountPrice(productId)
                .stream()
                .map(ProductMapper.PRODUCT_INSTANCE::toDTO)
                .collect(Collectors.toList());
    }

    public void handleAddProductToCart(String email, long productId, int quantity, HttpSession session) {
        User user = this.userRepository.findByEmail(email).get();

        if (user != null) {
            Cart cart = this.cartRepository.findByUser(user); // xem có cart chưa

            if (cart == null) {
                Cart c = new Cart();
                c.setUser(user);
                c.setSum(0);

                cart = this.cartRepository.save(c);
            }

            Product product = this.productRepository.findById(productId).get();
            if (product != null) {
                CartDetail oldDetail = this.cartDetailRepository.findByCartAndProduct(cart, product);

                if (oldDetail == null) { // nếu sản phẩm chưa có trong giỏ hàng
                    CartDetail cartDetail = new CartDetail();
                    cartDetail.setCart(cart);
                    cartDetail.setProduct(product);
                    cartDetail.setPrice(product.getPrice());
                    cartDetail.setQuantity(quantity);
                    this.cartDetailRepository.save(cartDetail);

                    List<CartDetail> remaining = this.cartDetailRepository.findByCart(cart);
                    int sum = remaining.size();
                    cart.setSum(sum);
                    this.cartRepository.save(cart);
                    session.setAttribute("sum", sum);
                } else {
                    oldDetail.setQuantity(oldDetail.getQuantity() + quantity);
                    this.cartDetailRepository.save(oldDetail);
                }

            }

        }
    }

    public Cart fetchByUser(User user) {
        return this.cartRepository.findByUser(user);
    }

    public void handleRemoveCartDetail(long cartDetailId, HttpSession session) {
        Optional<CartDetail> cartDetail = this.cartDetailRepository.findById(cartDetailId);

        if (cartDetail.isPresent()) {
            CartDetail cd = cartDetail.get();
            Cart cart = cd.getCart();
            this.cartDetailRepository.deleteById(cartDetailId);

            List<CartDetail> remaining = this.cartDetailRepository.findByCart(cart);
            int newSum = remaining.size();
            if (newSum > 0) {
                cart.setSum(newSum);
                this.cartRepository.save(cart);
                session.setAttribute("sum", newSum);
            } else {
                session.setAttribute("sum", 0);
                cart.setSum(0);
            }

        }
    }

    public void handleRemoveAllCartDetail(long cartId, HttpSession session) {

        Optional<Cart> cart = this.cartRepository.findById(cartId);

        if (cart.isPresent()) {
            Cart c = cart.get();
            this.cartDetailRepository.deleteByCartId(cartId);

            session.setAttribute("sum", 0);
            c.setSum(0);
        }
    }

    public void handleUpdateCartBeforeCheckout(List<CartDetail> cartDetails) {
        for (CartDetail cd : cartDetails) {
            Optional<CartDetail> cdDetails = this.cartDetailRepository.findById(cd.getId());

            if (cdDetails.isPresent()) {
                CartDetail currenCd = cdDetails.get();
                currenCd.setQuantity(cd.getQuantity());
                this.cartDetailRepository.save(currenCd);
            }
        }
    }

    public void handlePlaceOrder(User user, HttpSession session, String receiverName, String receiverAddress,
            String receiverPhone, String receiverNote, int receiverTotalPrice) {

        Date date = new Date();
        Order order = new Order();
        order.setUser(user);
        order.setReceiverName(receiverName);
        order.setReceiverAddress(receiverAddress);
        order.setReceiverPhone(receiverPhone);
        order.setReceiverNote(receiverNote);
        order.setTotalPrice(receiverTotalPrice);
        order.setStatus("PENDING");
        order.setPaymentMethod(1);
        order.setCreatedAt(date);
        order = this.orderRepository.save(order);

        Cart cart = this.cartRepository.findByUser(user);
        if (cart != null) {
            List<CartDetail> cartDetails = cart.getCartDetails();

            if (cartDetails != null) {
                for (CartDetail cd : cartDetails) {
                    OrderDetail orderDetail = new OrderDetail();
                    orderDetail.setOrder(order);
                    orderDetail.setProduct(cd.getProduct());
                    orderDetail.setQuantity(cd.getQuantity());
                    orderDetail.setUnitPrice(cd.getPrice());
                    this.orderDetailRepository.save(orderDetail);
                }

                this.cartDetailRepository.deleteByCartId(cart.getId());

                session.setAttribute("sum", 0);
                cart.setSum(0);
            }
        }
    }

}
