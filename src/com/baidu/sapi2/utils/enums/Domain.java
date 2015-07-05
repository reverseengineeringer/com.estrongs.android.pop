package com.baidu.sapi2.utils.enums;

public enum Domain
{
  private String a;
  private String b;
  private String c;
  private String d;
  private String e;
  
  private Domain(String paramString1, String paramString2, String paramString3, String paramString4, String paramString5)
  {
    a = paramString1;
    b = paramString2;
    c = paramString3;
    d = paramString4;
    e = paramString5;
  }
  
  public String getConfigUrl()
  {
    return d;
  }
  
  public String getDeviceUrl()
  {
    return c;
  }
  
  public String getPortraitUrl()
  {
    return e;
  }
  
  public String getURL()
  {
    return a;
  }
  
  public String getWap()
  {
    return b;
  }
}

/* Location:
 * Qualified Name:     com.baidu.sapi2.utils.enums.Domain
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */