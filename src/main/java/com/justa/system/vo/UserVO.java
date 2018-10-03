package com.justa.system.vo;

import com.justa.system.domain.UserDO;

/**
 * 
 * @ClassName: UserVO
 * @Description: 密码修改VO
 * @author soar
 * @date 2018年1月13日 下午11:45:58
 *
 */
public class UserVO {
    
    @Override
    public String toString() {
        return "UserVO [pwdOld=" + pwdOld + ", userDO=" + userDO + ", pwdNew=" + pwdNew + "]";
    }

    /**
     * 旧密码.
     */
    private String pwdOld; 
    /**
     * 更新的用户对象.
     */
    private UserDO userDO; 
    /**
     * 新密码
     */
    private String pwdNew;

    /**
     * 设定旧密码. <br />
     *
     * @param pwdOld
     *            旧密码
     */
    public void setPwdOld(String pwdOld) {

        this.pwdOld = pwdOld;
    }

    /**
     * 取得旧密码. <br />
     *
     * @return 旧密码
     */
    public String getPwdOld() {

        return pwdOld;
    }

    /**
     * 设定更新的用户对象. <br />
     *
     * @param userDO
     *            更新的用户对象
     */
    public void setUserDO(UserDO userDO) {

        this.userDO = userDO;
    }

    /**
     * 取得更新的用户对象. <br />
     *
     * @return 更新的用户对象
     */
    public UserDO getUserDO() {

        return userDO;
    }

    /**
     * 设定新密码. <br />
     *
     * @param pwdNew
     *            新密码
     */
    public void setPwdNew(String pwdNew) {

        this.pwdNew = pwdNew;
    }

    /**
     * 取得新密码. <br />
     *
     * @return 新密码
     */
    public String getPwdNew() {

        return pwdNew;
    }
    
    
}
