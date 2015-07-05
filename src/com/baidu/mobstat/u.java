package com.baidu.mobstat;

import android.content.Context;
import com.baidu.mobstat.util.e;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.PrintWriter;
import java.io.StringWriter;
import java.io.Writer;
import org.json.JSONArray;
import org.json.JSONObject;

class u
  implements Thread.UncaughtExceptionHandler
{
  private static u a = new u();
  private Thread.UncaughtExceptionHandler b = null;
  private Context c = null;
  
  public static u a()
  {
    return a;
  }
  
  private void a(long paramLong, String paramString1, String paramString2)
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
      paramString2 = b(c);
      paramString1 = paramString2;
      if (paramString2 == null) {
        paramString1 = new JSONArray();
      }
      paramString1.put(localJSONObject);
      paramString2 = c.openFileOutput("__local_except_cache.json", 0);
      paramString2.write(paramString1.toString().getBytes());
      paramString2.flush();
      paramString2.close();
      e.a("SDKCrashHandler", "Save Exception String Successlly");
      return;
    }
    catch (Exception paramString1)
    {
      e.a("SDKCrashHandler", paramString1);
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
  }
  
  protected JSONArray b(Context paramContext)
  {
    Object localObject = null;
    if (paramContext == null) {}
    File localFile;
    StringBuffer localStringBuffer;
    for (;;)
    {
      return null;
      localFile = new File(paramContext.getFilesDir(), "__local_except_cache.json");
      try
      {
        if (localFile.exists())
        {
          paramContext = paramContext.openFileInput("__local_except_cache.json");
          localStringBuffer = new StringBuffer();
          byte[] arrayOfByte = new byte['Ѐ'];
          for (;;)
          {
            int i = paramContext.read(arrayOfByte);
            if (i == -1) {
              break;
            }
            localStringBuffer.append(new String(arrayOfByte, 0, i));
          }
          try
          {
            localFile.delete();
            return paramContext;
          }
          catch (Exception localException)
          {
            e.a("SDKCrashHandler", localException);
            return paramContext;
          }
        }
      }
      catch (Exception paramContext)
      {
        e.a("SDKCrashHandler", paramContext);
        paramContext = (Context)localObject;
      }
    }
    paramContext.close();
    if (localStringBuffer.length() != 0) {}
    for (paramContext = new JSONArray(localStringBuffer.toString());; paramContext = null) {
      break;
    }
  }
  
  public void uncaughtException(Thread paramThread, Throwable paramThrowable)
  {
    Object localObject2 = paramThrowable.toString();
    localObject3 = "";
    Object localObject1 = localObject3;
    if (localObject2 != null)
    {
      localObject1 = localObject3;
      if (((String)localObject2).equals("")) {}
    }
    for (;;)
    {
      try
      {
        localObject1 = ((String)localObject2).split(":");
        if (((String)localObject2).length() <= 1) {
          continue;
        }
        localObject1 = localObject1[0];
      }
      catch (Exception localException)
      {
        e.c(localException);
        String str = "";
        continue;
        localObject3 = str;
        continue;
      }
      localObject3 = localObject2;
      if (localObject1 != null)
      {
        if (!((String)localObject1).equals("")) {
          continue;
        }
        localObject3 = localObject2;
      }
      localObject1 = new StringWriter();
      localObject2 = new PrintWriter((Writer)localObject1);
      paramThrowable.printStackTrace((PrintWriter)localObject2);
      ((PrintWriter)localObject2).close();
      localObject1 = localObject1.toString();
      e.a("SDKCrashHandler", (String)localObject1);
      a(System.currentTimeMillis(), (String)localObject1, (String)localObject3);
      if (!b.equals(this)) {
        b.uncaughtException(paramThread, paramThrowable);
      }
      throw new RuntimeException(paramThrowable);
      localObject1 = localObject2;
    }
  }
}

/* Location:
 * Qualified Name:     com.baidu.mobstat.u
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */