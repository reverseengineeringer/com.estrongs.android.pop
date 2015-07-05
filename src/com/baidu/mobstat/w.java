package com.baidu.mobstat;

import android.os.Handler;
import android.os.Message;
import java.io.File;
import java.io.FileOutputStream;
import java.io.InputStream;
import java.net.HttpURLConnection;
import java.net.URL;

class w
  implements Runnable
{
  Message a = Download.a(b).obtainMessage();
  
  w(Download paramDownload) {}
  
  public long a(String paramString, File paramFile)
  {
    l2 = 0L;
    localObject2 = null;
    try
    {
      paramString = (HttpURLConnection)new URL(paramString).openConnection();
      try
      {
        paramString.setRequestProperty("User-Agent", "PacificHttpClient");
        paramString.setConnectTimeout(10000);
        paramString.setReadTimeout(20000);
        i = paramString.getContentLength();
        if ((Download.c(b).length() == i) && (Download.c(b).lastModified() - System.currentTimeMillis() < 172800000L))
        {
          Download.a(b).sendEmptyMessage(Download.a);
          l1 = i;
          if (paramString != null) {
            paramString.disconnect();
          }
          if (0 != 0) {
            throw new NullPointerException();
          }
          if (0 != 0) {
            throw new NullPointerException();
          }
          return l1;
        }
        if (paramString.getResponseCode() != 404) {
          break label210;
        }
        Download.a(b).sendEmptyMessage(Download.b);
        throw new Exception("fail!");
      }
      finally
      {
        localObject1 = paramString;
        paramString = paramFile;
        paramFile = null;
      }
    }
    finally
    {
      try
      {
        paramFile = new FileOutputStream(paramFile, false);
      }
      finally
      {
        for (;;)
        {
          try
          {
            int i;
            localObject2 = new byte['က'];
            long l1 = 0L;
            int j = ((InputStream)localObject1).read((byte[])localObject2);
            if (j > 0)
            {
              paramFile.write((byte[])localObject2, 0, j);
              l1 += j;
              continue;
            }
            if (l1 != i)
            {
              Download.a(b).sendEmptyMessage(Download.b);
              l1 = l2;
              if (paramString != null) {
                paramString.disconnect();
              }
              if (localObject1 != null) {
                ((InputStream)localObject1).close();
              }
              if (paramFile != null) {
                paramFile.close();
              }
              return l1;
            }
            Download.a(b).sendEmptyMessage(Download.a);
            continue;
            paramString = finally;
            paramFile = null;
            localObject1 = null;
            continue;
          }
          finally
          {
            Object localObject3;
            localObject2 = localObject1;
            Object localObject1 = paramString;
            paramString = (String)localObject4;
          }
          paramFile = finally;
          localObject2 = paramString;
          paramString = paramFile;
          paramFile = null;
          localObject3 = localObject1;
          localObject1 = localObject2;
          localObject2 = localObject3;
        }
      }
    }
    if (localObject1 != null) {
      ((HttpURLConnection)localObject1).disconnect();
    }
    if (localObject2 != null) {
      ((InputStream)localObject2).close();
    }
    if (paramFile != null) {
      paramFile.close();
    }
    throw paramString;
    label210:
    if (i < 10)
    {
      Download.a(b).sendEmptyMessage(Download.b);
      throw new Exception("fail!");
    }
    localObject1 = paramString.getInputStream();
  }
  
  public void run()
  {
    Download.b(b, true);
    a.what = Download.a;
    try
    {
      a(Download.b(b), Download.c(b));
      return;
    }
    catch (Exception localException)
    {
      localException.printStackTrace();
      Download.a(b).sendEmptyMessage(Download.b);
    }
  }
}

/* Location:
 * Qualified Name:     com.baidu.mobstat.w
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */