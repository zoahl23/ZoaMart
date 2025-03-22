package com.example.zoamart.mapper;

import org.mapstruct.AfterMapping;
import org.mapstruct.Mapper;
import org.mapstruct.Mapping;
import org.mapstruct.MappingTarget;
import org.mapstruct.factory.Mappers;

import com.example.zoamart.domain.Cart;
import com.example.zoamart.domain.Role;
import com.example.zoamart.domain.User;
import com.example.zoamart.dto.UserDTO;

@Mapper
public interface UserMapper {
    UserMapper USER_INSTANCE = Mappers.getMapper(UserMapper.class);

    @Mapping(source = "role.id", target = "roleId")
    @Mapping(source = "role.name", target = "roleName")
    @Mapping(source = "cart.id", target = "cartId")
    @Mapping(source = "cart.sum", target = "cartSum")
    UserDTO toDTO(User user);

    @Mapping(source = "roleId", target = "role.id")
    @Mapping(source = "roleName", target = "role.name")
    @Mapping(target = "cart", ignore = true)
    @Mapping(target = "orders", ignore = true)
    @Mapping(target = "reviews", ignore = true)
    User toEntity(UserDTO userDTO);

    default Role map(long roleId, String roleName) {
        Role role = new Role();
        role.setId(roleId);
        role.setName(roleName);
        return role;
    }

    @AfterMapping
    default void mapCart(UserDTO dto, @MappingTarget User entity) {
        if (dto.getCartId() != null || dto.getCartSum() != 0) {
            Cart cart = new Cart();
            cart.setId(dto.getCartId());
            cart.setSum(dto.getCartSum());
            cart.setUser(entity);
            entity.setCart(cart);
        }
    }
}
