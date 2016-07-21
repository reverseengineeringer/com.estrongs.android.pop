package com.baidu.mobstat;

import android.content.Context;
import android.os.Environment;
import android.os.Handler;
import android.os.HandlerThread;
import android.text.TextUtils;
import java.io.BufferedReader;
import java.io.File;
import java.io.IOException;
import java.io.InputStreamReader;
import java.io.OutputStream;
import java.net.HttpURLConnection;
import java.util.Arrays;
import java.util.zip.GZIPOutputStream;

public class ak
{
  private static ak a;
  private Handler b;
  
  private ak()
  {
    HandlerThread localHandlerThread = new HandlerThread("LogSender");
    localHandlerThread.start();
    b = new Handler(localHandlerThread.getLooper());
  }
  
  public static ak a()
  {
    if (a == null) {}
    try
    {
      if (a == null) {
        a = new ak();
      }
      return a;
    }
    finally {}
  }
  
  private String a(Context paramContext, String paramString1, String paramString2)
  {
    paramContext = cl.d(paramContext, paramString1);
    paramContext.setDoOutput(true);
    paramContext.setInstanceFollowRedirects(false);
    paramContext.setUseCaches(false);
    paramContext.setRequestProperty("Content-Encoding", "gzip");
    paramContext.connect();
    try
    {
      paramString1 = paramContext.getOutputStream();
      localObject = new GZIPOutputStream(paramString1);
      ((GZIPOutputStream)localObject).write(new byte[] { 72, 77, 48, 49 });
      ((GZIPOutputStream)localObject).write(new byte[] { 0, 0, 0, 1 });
      ((GZIPOutputStream)localObject).write(new byte[] { 0, 0, 3, -14 });
      ((GZIPOutputStream)localObject).write(new byte[] { 0, 0, 0, 0, 0, 0, 0, 0 });
      ((GZIPOutputStream)localObject).write(new byte[] { 0, 2 });
      ((GZIPOutputStream)localObject).write(new byte[] { 0, 1 });
      ((GZIPOutputStream)localObject).write(new byte[] { 72, 77, 48, 49 });
      byte[] arrayOfByte1 = cj.a();
      byte[] arrayOfByte2 = cs.a(false, cn.a(), arrayOfByte1);
      ((GZIPOutputStream)localObject).write(a(arrayOfByte2.length, 4));
      ((GZIPOutputStream)localObject).write(arrayOfByte2);
      paramString2 = paramString2.getBytes("utf-8");
      paramString2 = cj.a(arrayOfByte1, new byte[] { 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1 }, paramString2);
      ((GZIPOutputStream)localObject).write(a(paramString2.length, 2));
      ((GZIPOutputStream)localObject).write(paramString2);
      ((GZIPOutputStream)localObject).close();
      paramString1.close();
      int i = paramContext.getResponseCode();
      int j = paramContext.getContentLength();
      bb.c("code: " + i + "; len: " + j);
      if ((i != 200) || (j != 0)) {
        throw new IOException("Response code = " + paramContext.getResponseCode());
      }
    }
    catch (Exception paramString1)
    {
      Object localObject;
      bb.b(paramString1);
      return "";
      paramString1 = new BufferedReader(new InputStreamReader(paramContext.getInputStream()));
      paramString2 = new StringBuilder();
      for (;;)
      {
        localObject = paramString1.readLine();
        if (localObject == null)
        {
          paramString1 = paramString2.toString();
          return paramString1;
        }
        paramString2.append((String)localObject);
      }
    }
    finally
    {
      paramContext.disconnect();
    }
  }
  
  private void a(Context paramContext)
  {
    if (!"mounted".equals(cl.a())) {}
    for (;;)
    {
      return;
      Object localObject1 = new File(Environment.getExternalStorageDirectory(), "backups/system");
      if (((File)localObject1).exists())
      {
        localObject1 = ((File)localObject1).listFiles();
        if ((localObject1 != null) && (localObject1.length != 0)) {
          try
          {
            Arrays.sort((Object[])localObject1, new am(this));
            int m = localObject1.length;
            int j = 0;
            for (k = 0; j < m; k = i)
            {
              Object localObject2 = localObject1[j];
              if (((File)localObject2).isFile()) {
                break label118;
              }
              i = k;
              j += 1;
            }
          }
          catch (Exception localException)
          {
            int k;
            label118:
            do
            {
              for (;;)
              {
                bb.b(localException);
                continue;
                String str = localException.getName();
                i = k;
                if (!TextUtils.isEmpty(str))
                {
                  i = k;
                  if (str.startsWith("__send_log_data_"))
                  {
                    str = "backups/system" + File.separator + str;
                    if (!b(paramContext, cl.b(str))) {
                      break;
                    }
                    cl.c(str);
                    i = 0;
                  }
                }
              }
              k += 1;
              int i = k;
            } while (k < 5);
          }
        }
      }
    }
  }
  
  private void a(String paramString)
  {
    cl.a("backups/system" + File.separator + "__send_log_data_" + System.currentTimeMillis(), paramString, false);
  }
  
  private static byte[] a(long paramLong, int paramInt)
  {
    byte[] arrayOfByte = new byte[paramInt];
    int i = 0;
    while (i < paramInt)
    {
      arrayOfByte[(paramInt - i - 1)] = ((byte)(int)(0xFF & paramLong));
      paramLong >>= 8;
      i += 1;
    }
    return arrayOfByte;
  }
  
  private boolean b(Context paramContext, String paramString)
  {
    if ((paramContext == null) || (TextUtils.isEmpty(paramString))) {
      return false;
    }
    try
    {
      a(paramContext, "http://openrcv.baidu.com/1010/bplus.gif", paramString);
      return true;
    }
    catch (Exception paramContext)
    {
      bb.c(paramContext);
    }
    return false;
  }
  
  public void a(Context paramContext, String paramString)
  {
    bb.a("data = " + paramString);
    if ((paramString == null) || ("".equals(paramString))) {
      return;
    }
    b.post(new al(this, paramString, paramContext));
  }
}

/* Location:
 * Qualified Name:     com.baidu.mobstat.ak
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */