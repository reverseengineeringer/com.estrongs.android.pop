package com.baidu.sapi2.utils.enums;

public enum BindType
{
  private String a = "";
  private String b;
  private String c;
  
  private BindType(String paramString1, String paramString2, String paramString3)
  {
    a = paramString1;
    b = paramString2;
    c = paramString3;
  }
  
  public String getCallbackPage()
  {
    return b;
  }
  
  public String getFinishBindPage()
  {
    return c;
  }
  
  public String getName()
  {
    return a;
  }
}

/* Location:
 * Qualified Name:     com.baidu.sapi2.utils.enums.BindType
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */