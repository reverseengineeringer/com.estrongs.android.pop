package com.baidu.sapi2.shell.response;

import com.baidu.sapi2.utils.enums.SocialType;

public class SocialResponse
  extends SapiAccountResponse
{
  public String baiduUname = "";
  public boolean isBinded = false;
  public String socialPortraitUrl = "";
  public SocialType socialType = SocialType.UNKNOWN;
  public String socialUname = "";
}

/* Location:
 * Qualified Name:     com.baidu.sapi2.shell.response.SocialResponse
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */