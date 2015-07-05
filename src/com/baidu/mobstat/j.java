package com.baidu.mobstat;

import android.content.Context;
import org.json.JSONObject;

public class j
  extends h
{
  public j(Context paramContext, String paramString)
  {
    super(paramContext, paramString);
    c = getClass().getName();
  }
  
  protected void b()
  {
    try
    {
      d.put("logID", g.a(a).d());
      return;
    }
    catch (Exception localException)
    {
      localException.printStackTrace();
    }
  }
}

/* Location:
 * Qualified Name:     com.baidu.mobstat.j
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */