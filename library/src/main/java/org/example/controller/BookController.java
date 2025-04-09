package org.example.controller;

import org.example.model.Books;
import org.example.model.User;
import org.example.service.BookService;
import org.example.service.UserSerivce;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import java.util.List;

@Controller
@RequestMapping("/book")
public class BookController {
    @Autowired
    @Qualifier("bookServiceImp")
    private BookService bookService;

    @Autowired
    @Qualifier("userServiceImp")
    private UserSerivce userSerivce;

    //展示登录页面
    @RequestMapping("/login")
    public String loginPaper(){
        return "login";
    }


//用户登录
    @PostMapping("/authenticate")
    public String authenticate(User user,Model model){
        boolean b = userSerivce.validateUser(user);
        if (b){
            model.addAttribute("username",user.getUsername());
            return "redirect:/book/allBook";
        }
        else {
            model.addAttribute("error","账号或者密码错误");
            return "login";
        }
    }


//    用户注册页面
    @RequestMapping("/toresign")
    public String toresign(){
        return "resign";
    }



    @RequestMapping("/resign")
    //用户注册
    public String resign(Model model,User user){
        boolean b = userSerivce.validateUsername(user.getUsername());
        if (b){
            model.addAttribute("error","该账号已存在");
            return "resign";
        }
        else {
            userSerivce.insetUser(user);
            return "redirect:/book/login";
        }
    }





    //展示所有书籍页面
    @RequestMapping("/allBook")
    public String toList(Model model){
        List<Books> list = bookService.selectBooks();
        model.addAttribute("list",list);
        return "allBook";
    }



//    添加书籍页面
    @RequestMapping("/toAddBook")
    public String toAddPaper(){
        return "addBook";
    }


    //添加书籍请求
    @RequestMapping("/addBook")
    public String addBook(Books books){
        bookService.insertBooks(books);
        return "redirect:/book/allBook";//重定向请求
    }



//    进入修改页面
    @RequestMapping("/toUpdateBook")
    public String toUpdateBook(Model model,@RequestParam("id") int id) {
        Books books = bookService.selectBooksId(id);
        model.addAttribute("book",books );
        return "updateBook";
    }




//修改返回allbook页面
    @RequestMapping("/updateBook")
    public String updateBook(Model model, Books book) {
        bookService.updateBooks(book);
        Books books = bookService.selectBooksId(book.getId());
        model.addAttribute("books", books);
        return "redirect:/book/allBook";
    }



//    删除
    @RequestMapping("/delete/{bookId}")
    public String deleteBook(@PathVariable("bookId")  int id){
        bookService.delectBooks(id);
        return "redirect:/book/allBook";
    }


}
