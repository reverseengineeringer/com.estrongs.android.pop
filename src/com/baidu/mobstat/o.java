package com.baidu.mobstat;

import org.json.JSONException;
import org.json.JSONObject;

public class o
{
  public boolean a;
  public int b;
  public String c;
  public JSONObject d = null;
  
  public int a()
  {
    return b;
  }
  
  public void a(int paramInt)
  {
    b = paramInt;
  }
  
  public void a(String paramString)
  {
    c = paramString;
    try
    {
      d = new JSONObject(c);
      return;
    }
    catch (JSONException paramString)
    {
      n.c("message to JSONObject error!! msg[" + c + "]");
      paramString.printStackTrace();
    }
  }
  
  public void a(boolean paramBoolean)
  {
    a = paramBoolean;
  }
  
  public boolean b()
  {
    return a;
  }
  
  public String c()
  {
    return c;
  }
  
  public JSONObject d()
  {
    if (d != null) {
      return d;
    }
    return null;
  }
}

/* Location:
 * Qualified Name:     com.baidu.mobstat.o
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */