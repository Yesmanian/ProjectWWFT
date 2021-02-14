package com.wwft.service.mail.impl;

import java.io.File;

import javax.mail.MessagingException;
import javax.mail.internet.MimeMessage;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.mail.javamail.JavaMailSender;
import org.springframework.mail.javamail.MimeMessageHelper;
import org.springframework.stereotype.Service;

import com.wwft.service.mail.MailService;

@Service("mailServiceImpl")
public class MailServiceImpl implements MailService {
	// org.springframework.mail.javamail.JavaMailSender

	@Autowired
	@Qualifier("javaMailSender")
	private JavaMailSender javaMailSender;
	public MailServiceImpl() {
		// TODO Auto-generated constructor stub
	}
	
	 public void setJavaMailSender(JavaMailSender javaMailSender) {
	        this.javaMailSender = javaMailSender;
	    }



	@Override
	public boolean send(String subject, String text, String from, String to, String filePath) throws Exception {
		
		// javax.mail.internet.MimeMessage
        MimeMessage message = javaMailSender.createMimeMessage();
        System.out.println("11111");

		
		try {
            // org.springframework.mail.javamail.MimeMessageHelper
            MimeMessageHelper helper = new MimeMessageHelper(message, true, "UTF-8");
            helper.setSubject(subject);
            helper.setText(text, true);
            helper.setFrom(from);
            helper.setTo(to);
            System.out.println("22222");
            // 梅何 颇老 贸府
            if (filePath != null) {
                File file = new File(filePath);
                System.out.println("333333");
                if (file.exists()) {
                    helper.addAttachment(file.getName(), new File(filePath));
                }
            }
            System.out.println("44444");
            javaMailSender.send(message);
            return true;
        } catch (MessagingException e) {
        	System.out.println("坷幅车唱 ?");
            e.printStackTrace();
        }
		 System.out.println("44444");
        return false;
    }


	}


