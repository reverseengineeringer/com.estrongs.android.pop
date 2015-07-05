package com.baidu.sapi2.shell.response;

import com.baidu.sapi2.SapiAccount.ReloginCredentials;

public class SapiAccountResponse
  extends SapiResponse
{
  public String authSid;
  public String bduss = "";
  public String displayname = "";
  public String email = "";
  public boolean newReg;
  public String ptoken = "";
  public SapiAccount.ReloginCredentials reloginCredentials = new SapiAccount.ReloginCredentials();
  public String stoken = "";
  public String uid = "";
  public String username = "";
}

/* Location:
 * Qualified Name:     com.baidu.sapi2.shell.response.SapiAccountResponse
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */