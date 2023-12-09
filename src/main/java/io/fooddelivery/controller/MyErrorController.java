package io.fooddelivery.controller;

import javax.servlet.RequestDispatcher;
import javax.servlet.http.HttpServletRequest;
import org.springframework.boot.web.servlet.error.ErrorController;
import org.springframework.http.HttpStatus;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class MyErrorController implements ErrorController {

    @GetMapping("/error")
    public String handleError(HttpServletRequest request, Model model) {
        String errorMessage = "";

        Object status = request.getAttribute(RequestDispatcher.ERROR_STATUS_CODE);
        int statusCode = 0;
        if (status != null) {
            statusCode = Integer.parseInt(status.toString());
            if (statusCode == HttpStatus.NOT_FOUND.value()) {
                 errorMessage = "Page was now found! Try yet!";
            } else if (statusCode == HttpStatus.FORBIDDEN.value()) {
                 errorMessage = "You don't have enough access!";
            } else if (statusCode == HttpStatus.INTERNAL_SERVER_ERROR.value()) {
                 errorMessage = "Error with server try later!";
            }
        }
        model.addAttribute("statusCode",statusCode);
        model.addAttribute("errorMsg",errorMessage);
        return "error";
    }
}
