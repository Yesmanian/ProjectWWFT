
package com.wwft.service.domain;

import javax.mail.Authenticator;
import javax.mail.PasswordAuthentication;
 
public class MailAuth extends Authenticator{
    
    PasswordAuthentication pa;
    
    public MailAuth() {
        String mail_id = "gmail ���̵�";
        String mail_pw = "�н����� �Է�";
        
        pa = new PasswordAuthentication(mail_id, mail_pw);
    }
    
    public PasswordAuthentication getPasswordAuthentication() {
        return pa;
    }
}


