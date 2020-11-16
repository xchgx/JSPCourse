/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package no11.beike;

/**
 *
 * @author 陈老师
 */
public class Question {

    private String no01;
    private String no02;

    public String getNo01() {
        return no01;
    }

    public void setNo01(String no01) {
        this.no01 = no01;
    }

    public String getNo02() {
        return no02;
    }

    public void setNo02(String no02) {
        this.no02 = no02;
    }
 
    public boolean isRightByNo1() {
        return "b".equalsIgnoreCase(no01);
    }

    public boolean isRightByNo2() {
        return "a".equalsIgnoreCase(no02);
    }

    public int getCountRight() {
        int count = 0;
        if (isRightByNo1()) {
            count++;
        }
        if (isRightByNo2()) {
            count++;
        }
        return count;
    }
}
