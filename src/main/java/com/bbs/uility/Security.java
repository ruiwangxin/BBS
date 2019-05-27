package com.bbs.uility;



import javax.imageio.ImageIO;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.awt.*;
import java.awt.image.BufferedImage;
import java.io.IOException;
import java.util.Random;

public class Security {
    static Integer width = 150;
    static Integer height = 50;
    public static void securityImage(HttpServletResponse response, HttpSession session) throws IOException {
        BufferedImage bi = new BufferedImage(width,height,BufferedImage.TYPE_3BYTE_BGR);
        Graphics gp = bi.getGraphics();
        gp.setColor(Color.GRAY);
        gp.fillRect(150,50,width,height);
        gp.setColor(Color.cyan);

        String codes = "QWERTYUIOPASDFGHJKLZXCVBNMqwertyuiopasdfghjklzxcvbnm1234567890";
        Random random = new Random();
        StringBuilder sb = new StringBuilder();
        for(int i = 1;i < 5 ;i++)
        {
            int codex = random.nextInt(codes.length());
            char code = codes.charAt(codex);
            sb.append(code);
            gp.setFont(new Font("Times New Roman", Font.ROMAN_BASELINE, 30));
            gp.drawString(code+"",width/5*i,height/2);
        }
        String code = sb.toString();
        session.setAttribute("code",code);
        System.out.println(code);
        ImageIO.write(bi,"jpg",response.getOutputStream());
    }
}
