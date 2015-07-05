package com.baidu.sapi2.utils.enums;

public enum SocialType
{
  private int a;
  private String b;
  
  static
  {
    RENREN = new SocialType("RENREN", 1, 1, "人人");
    SINA_WEIBO = new SocialType("SINA_WEIBO", 2, 2, "新浪微博");
    TENCENT_WEIBO = new SocialType("TENCENT_WEIBO", 3, 4, "腾讯微博");
    QZONE = new SocialType("QZONE", 4, 15, "QQ空间");
  }
  
  private SocialType(int paramInt, String paramString)
  {
    a = paramInt;
    b = paramString;
  }
  
  public static SocialType getSocialType(int paramInt)
  {
    switch (paramInt)
    {
    default: 
      return UNKNOWN;
    case 1: 
      return RENREN;
    case 2: 
      return SINA_WEIBO;
    case 4: 
      return TENCENT_WEIBO;
    case 15: 
      return QQ;
    }
    return WEIXIN;
  }
  
  public String getName()
  {
    return b;
  }
  
  public int getType()
  {
    return a;
  }
}

/* Location:
 * Qualified Name:     com.baidu.sapi2.utils.enums.SocialType
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */