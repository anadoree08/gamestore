package com.anadoree08.gamestore.Controller;

import org.springframework.web.bind.annotation.GetMapping;

public class IndexController {

    //Rotas de navegação do site

    @GetMapping("/")
    public String getIndex(){
        return "index";
    }

    @GetMapping("/home")
    public String getHome(){
        return "index";
    }
    @GetMapping("game-add")
    public String getGameAdd(){
        return "/game/add";
    }

}
