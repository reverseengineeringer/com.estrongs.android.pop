package com.baidu.sapi2.shell.response;

public class GetUserInfoResponse
  extends SapiResponse
{
  public String displayname;
  public boolean incompleteUser;
  public String portrait;
  public String secureEmail;
  public String secureMobile;
  public String uid;
  public String username;
  
  public String toString()
  {
    return "GetUserInfoResponse{username='" + username + '\'' + ", displayname='" + displayname + '\'' + ", uid='" + uid + '\'' + ", secureMobile='" + secureMobile + '\'' + ", secureEmail='" + secureEmail + '\'' + ", incompleteUser=" + incompleteUser + ", portrait='" + portrait + '\'' + '}';
  }
}

/* Location:
 * Qualified Name:     com.baidu.sapi2.shell.response.GetUserInfoResponse
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */