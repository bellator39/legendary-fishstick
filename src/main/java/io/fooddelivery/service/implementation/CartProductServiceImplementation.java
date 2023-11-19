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


    @Transactional
    @Override
    public CartProduct saveCardProduct(CartProduct cartProduct) {
        Product productFromCart = cartProduct.getProduct();
        int currentCount = productFromCart.getCount();
        int currentCountOfBut = productFromCart.getCountOfBuy();;

        productFromCart.setCount(currentCount-cartProduct.getCount());
        productFromCart.setCountOfBuy(currentCountOfBut+1);

        if(productFromCart.getCount()==0){
            productFromCart.setStatus("Not available");
        }

        CartProduct cartProductSave = cartProductRepository.save(cartProduct);

        productServiceApi.updateProduct(productFromCart);
        return cartProductSave;
    }

    @Override
    public CartProduct deleteCartProduct(Long idCartProduct) {
        Optional<CartProduct> cartProductById = cartProductRepository.findById(idCartProduct);
        if(cartProductById.isPresent()){
            log.info("Delete product from cart in {}",new Date());
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
}
