package io.fooddelivery.service.implementation;

import io.fooddelivery.entity.CartProduct;
import io.fooddelivery.entity.CartUser;
import io.fooddelivery.entity.Product;
import io.fooddelivery.repository.CartProductRepository;
import io.fooddelivery.service.api.CartProductServiceApi;
import io.fooddelivery.service.api.ProductServiceApi;
import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;
import org.springframework.stereotype.Service;

import javax.transaction.Transactional;
import java.util.Date;
import java.util.List;
import java.util.Optional;

@Service
@Slf4j
@RequiredArgsConstructor
public class CartProductServiceImplementation implements CartProductServiceApi {

    private final CartProductRepository cartProductRepository;
    private final ProductServiceApi productServiceApi;



    @Override
    public CartProduct saveCardProduct(CartProduct cartProduct) {
        Product productFromCart = productServiceApi.getProductById(cartProduct.getProduct().getId());
        int currentCount = productFromCart.getCount();
        int currentCountOfBut = productFromCart.getCountOfBuy();;

        productFromCart.setCount(currentCount-cartProduct.getCount());
        productFromCart.setCountOfBuy(currentCountOfBut+1);

        if(productFromCart.getCount()==0){
            productFromCart.setStatus("Not available");
        }

        CartProduct cartProductSave = cartProductRepository.save(cartProduct);
        cartProductSave.setDateAdd(new Date());
        productServiceApi.updateProduct(productFromCart);

        log.info("Save product to user cart in {} " , new Date());
        return cartProductSave;
    }

    @Override
    public CartProduct deleteCartProduct(Long idCartProduct) {
        Optional<CartProduct> cartProductById = cartProductRepository.findById(idCartProduct);
        if(cartProductById.isPresent()){
            log.info("Delete product from cart in {}",new Date());
            Product productFromCart = cartProductById.get().getProduct();
            productFromCart.setCount(productFromCart.getCount()+cartProductById.get().getCount());
            productServiceApi.updateProduct(productFromCart);
            cartProductRepository.delete(cartProductById.get());
            return cartProductById.get();
        }else{
            log.info("Cart product id was not found in {}",new Date());
            return null;
        }
    }

    @Override
    public List<CartProduct> findCartProductByCartUser(CartUser cartUser) {
        log.info("Get all product by user cart in {}",new Date());
        return cartProductRepository.findCartProductByCartUser(cartUser);
    }

    @Override
    public int countProductsInCart(Long cartUserId) {
        log.info("Get count product in cart user with id - {} in {}",cartUserId,new Date());
        return cartProductRepository.countProductsInCart(cartUserId);
    }

    @Override
    public double calculateTotalPriceInCart(Long cartUserId) {
        log.info("Get total sum product in cart user with id - {} in {}",cartUserId,new Date());
        return cartProductRepository.calculateTotalPriceInCart(cartUserId);
    }

    @Transactional
    @Override
    public void clearCartProduct(Long idCart) {
        CartUser cartUser = CartUser.builder()
                .id(idCart)
                .build();
        log.warn("Delete all cart product by user cart id {} in {}",idCart,new Date());
        cartProductRepository.deleteAllByCartUser(cartUser);
    }
}
