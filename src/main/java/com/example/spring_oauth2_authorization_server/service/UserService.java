package com.example.spring_oauth2_authorization_server.service;

import com.example.spring_oauth2_authorization_server.dto.UserDTO;
import com.example.spring_oauth2_authorization_server.entity.UserEntity;
import com.example.spring_oauth2_authorization_server.repository.UserRepository;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Service;

@Service
public class UserService {

    private final UserRepository userRepository;
    private final BCryptPasswordEncoder bCryptPasswordEncoder;

    public UserService(UserRepository userRepository, BCryptPasswordEncoder bCryptPasswordEncoder) {
        this.userRepository = userRepository;
        this.bCryptPasswordEncoder = bCryptPasswordEncoder;
    }

    // 회원 가입 프로세스
    public boolean join(UserDTO dto) {

        if (userRepository.findByUsername(dto.getUsername()).isPresent()) {
            return false; // 사용자명이 이미 존재함
        }

        try {
            UserEntity entity = new UserEntity();
            entity.setUsername(dto.getUsername());
            entity.setPassword(bCryptPasswordEncoder.encode(dto.getPassword()));
            entity.setName(dto.getUsername());
//            entity.setPhone(dto.getPhone());
            entity.setEmail(dto.getEmail());
            entity.setRole("ADMIN");

            userRepository.save(entity);

            return true;
        }catch (Exception e){
            e.printStackTrace();
            return  false;
        }
    }
}
