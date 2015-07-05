package com.baidu.sapi2.utils.enums;

public enum QrLoginAction
{
  private String a;
  
  static
  {
    LOGIN = new QrLoginAction("LOGIN", 1, "login");
  }
  
  private QrLoginAction(String paramString)
  {
    a = paramString;
  }
  
  public String getName()
  {
    return a;
  }
}

/* Location:
 * Qualified Name:     com.baidu.sapi2.utils.enums.QrLoginAction
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */