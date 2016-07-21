package com.appsflyer.cache;

import java.util.Scanner;

public class RequestCacheData
{
  private String a;
  private String b;
  private String c;
  private String d;
  
  public RequestCacheData(String paramString1, String paramString2, String paramString3)
  {
    c = paramString1;
    b = paramString2;
    a = paramString3;
  }
  
  public RequestCacheData(char[] paramArrayOfChar)
  {
    paramArrayOfChar = new Scanner(new String(paramArrayOfChar));
    while (paramArrayOfChar.hasNextLine())
    {
      String str = paramArrayOfChar.nextLine();
      if (str.startsWith("url=")) {
        c = str.substring("url=".length()).trim();
      } else if (str.startsWith("version=")) {
        a = str.substring("version=".length()).trim();
      } else if (str.startsWith("data=")) {
        b = str.substring("data=".length()).trim();
      }
    }
    paramArrayOfChar.close();
  }
  
  public String a()
  {
    return a;
  }
  
  public void a(String paramString)
  {
    d = paramString;
  }
  
  public String b()
  {
    return b;
  }
  
  public String c()
  {
    return c;
  }
  
  public String d()
  {
    return d;
  }
}

/* Location:
 * Qualified Name:     com.appsflyer.cache.RequestCacheData
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */