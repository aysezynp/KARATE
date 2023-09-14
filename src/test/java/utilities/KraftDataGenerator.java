package utilities;

import com.github.javafaker.Faker;
import org.junit.Test;
import java.util.*;

public class KraftDataGenerator {
    /**
      {
     "name": "test1300",
     "email": "test1300@krafttechexlab.com",
     "password": "123467"
     }
     */

    @Test

    public static Map<String,Object> createUser(){
        Faker faker=new Faker();
        String username=faker.name().fullName();
        String userEmail=faker.internet().emailAddress();
        String password=faker.internet().password();
        Map<String,Object>map=new HashMap<>();
        map.put("name",username);
        map.put("email",userEmail);
        map.put("password",password);
        return map;
    }





}
