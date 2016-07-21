package com.flurry.sdk;

public class ea
{
  private static final String a = ea.class.getName();
  
  public static String a()
  {
    return "https://www.tumblr.com/oauth/access_token";
  }
  
  public static String a(eg parameg)
  {
    return String.format("https://www.tumblr.com/oauth/authorize?oauth_token=%s", new Object[] { parameg.a() });
  }
  
  public static String a(String paramString)
  {
    paramString = "https://api.tumblr.com/v2/blog/" + c(paramString) + "/post";
    kg.a(3, a, "Post Url: " + paramString);
    return paramString;
  }
  
  public static String b()
  {
    return "https://www.tumblr.com/oauth/request_token";
  }
  
  public static String b(String paramString)
  {
    return "https://api.tumblr.com/v2/blog/" + c(paramString) + "/avatar";
  }
  
  public static String c()
  {
    return "https://api.tumblr.com/v2/user/info";
  }
  
  private static String c(String paramString)
  {
    return paramString + ".tumblr.com";
  }
}

/* Location:
 * Qualified Name:     com.flurry.sdk.ea
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */