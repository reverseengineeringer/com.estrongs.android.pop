package com.baidu.mobstat;

import android.content.Context;
import java.io.PrintWriter;
import java.io.StringWriter;
import java.io.Writer;
import org.json.JSONArray;
import org.json.JSONObject;

class bg
  implements Thread.UncaughtExceptionHandler
{
  private static final bg a = new bg();
  private Thread.UncaughtExceptionHandler b = null;
  private Context c = null;
  private bo d = new bo();
  
  public static bg a()
  {
    return a;
  }
  
  public void a(long paramLong, String paramString1, String paramString2, int paramInt)
  {
    if ((c == null) || (paramString1 == null) || (paramString1.trim().equals(""))) {
      return;
    }
    try
    {
      String str = CooperService.a().getAppVersionName(c);
      JSONObject localJSONObject = new JSONObject();
      localJSONObject.put("t", paramLong);
      localJSONObject.put("c", paramString1);
      localJSONObject.put("y", paramString2);
      localJSONObject.put("v", str);
      localJSONObject.put("ct", paramInt);
      paramString1 = new JSONArray();
      paramString1.put(localJSONObject);
      localJSONObject = new JSONObject();
      d.a(c, localJSONObject);
      localJSONObject.put("ss", 0);
      paramString2 = new JSONObject();
      paramString2.put("he", localJSONObject);
      paramString2.put("pr", new JSONArray());
      paramString2.put("ev", new JSONArray());
      paramString2.put("ex", paramString1);
      paramString1 = "__send_data_" + System.currentTimeMillis();
      cl.a(c, paramString1, paramString2.toString(), false);
      cr.a("Dump exception successlly");
      return;
    }
    catch (Exception paramString1)
    {
      cr.b(paramString1);
    }
  }
  
  public void a(Context paramContext)
  {
    if (b == null)
    {
      b = Thread.getDefaultUncaughtExceptionHandler();
      Thread.setDefaultUncaughtExceptionHandler(this);
    }
    if (c == null) {
      c = paramContext.getApplicationContext();
    }
    d.a(c);
  }
  
  public void uncaughtException(Thread paramThread, Throwable paramThrowable)
  {
    String str2 = paramThrowable.toString();
    Object localObject2 = "";
    Object localObject1 = localObject2;
    if (str2 != null)
    {
      localObject1 = localObject2;
      if (str2.equals("")) {}
    }
    for (;;)
    {
      try
      {
        localObject1 = str2.split(":");
        if (str2.length() <= 1) {
          continue;
        }
        localObject1 = localObject1[0];
      }
      catch (Exception localException)
      {
        cr.c(localException);
        String str1 = "";
        continue;
      }
      if (localObject1 != null)
      {
        localObject2 = localObject1;
        if (!((String)localObject1).equals("")) {}
      }
      else
      {
        localObject2 = str2;
      }
      localObject1 = new StringWriter();
      paramThrowable.printStackTrace(new PrintWriter((Writer)localObject1));
      localObject1 = localObject1.toString();
      cr.a((String)localObject1);
      a(System.currentTimeMillis(), (String)localObject1, (String)localObject2, 0);
      if (!b.equals(this)) {
        b.uncaughtException(paramThread, paramThrowable);
      }
      return;
      localObject1 = str2;
    }
  }
}

/* Location:
 * Qualified Name:     com.baidu.mobstat.bg
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */