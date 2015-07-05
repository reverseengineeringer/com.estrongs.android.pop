package com.gmail.yuyang226.flickr;

import org.json.JSONObject;

public class b
  implements c
{
  private String a;
  private JSONObject b;
  private String c;
  private String d;
  private String e;
  
  public b(String paramString)
  {
    c = paramString;
    a(c);
  }
  
  public JSONObject a()
  {
    return b;
  }
  
  public void a(String paramString)
  {
    c = paramString;
    b = new JSONObject(paramString);
    a = b.getString("stat");
    if ((!"ok".equals(a)) && ("fail".equals(a)))
    {
      d = b.getString("code");
      e = b.getString("message");
    }
  }
  
  public boolean b()
  {
    return d != null;
  }
  
  public String c()
  {
    return d;
  }
  
  public String d()
  {
    return e;
  }
}

/* Location:
 * Qualified Name:     com.gmail.yuyang226.flickr.b
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */