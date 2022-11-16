package com.corejava.immutable;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;
import java.util.stream.Collectors;

public final class Immutable {

    private String studentNo;
    
    List<String> subject;

    public String getStudentNo() {
        return studentNo;
    }
    
    Immutable(final String student) {
        this.studentNo = student;
        subject = Arrays.asList("maths90","science 85","social 82");
    }
    
    public Boolean doValidate() {
        System.out.println("stdNo:"+ this.studentNo);
        System.out.println("subject marks"+subject);
        return Boolean.TRUE;
    }
    
    public List<String> returnData(){
        List<String> cloned = new ArrayList<>();
      cloned.addAll(subject);
        return cloned;
        //return names.stream().collect(Collectors.toList());
    }

    public static void main(String[] args) {
    	Immutable std = new Immutable("75");
        List<String> res = std.returnData();
        res.add("123");
        System.out.println("cloned " + res);
        std.doValidate();
        
    }
}