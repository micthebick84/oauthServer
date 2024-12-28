package com.example.spring_oauth2_authorization_server.controller;

import com.example.spring_oauth2_authorization_server.dto.UserDTO;
import com.example.spring_oauth2_authorization_server.service.UserService;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

// 기본 로그인의 회원 가입을 위한 엔드포인트
@Controller
public class JoinController {

    private final UserService userService;

    public JoinController(UserService userService) {
        this.userService = userService;
    }

    // 회원 가입 페이징 응답
    @GetMapping("/join")
    public String joinPage() {
        return "join";
    }

    // 회원가입 Form으로 부터 dto 받는 프로세스
    @PostMapping("/join")
    public String join(UserDTO dto, RedirectAttributes redirectAttributes) {

        boolean success = userService.join(dto);
        if (success) {
            // 성공 메시지를 Flash Attribute로 추가
            redirectAttributes.addFlashAttribute("successMessage", "회원가입이 성공적으로 완료되었습니다. 로그인 페이지로 이동합니다.");
            return "redirect:/login"; // 로그인 페이지로 리디렉션
        } else {
            // 실패 메시지를 Flash Attribute로 추가
            redirectAttributes.addFlashAttribute("errorMessage", "회원가입에 실패했습니다. 사용자명이 이미 존재하거나, 다시 시도해주세요.");
            return "redirect:/join"; // 다시 가입 페이지로 리디렉션
        }
    }
}
