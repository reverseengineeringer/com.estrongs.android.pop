package com.dianxinos.library.notify.download;

import android.os.Environment;
import android.os.SystemClock;
import android.text.TextUtils;
import com.dianxinos.library.dxbase.e;
import com.dianxinos.library.notify.c;
import com.dianxinos.library.notify.data.i;
import com.dianxinos.library.notify.f.a;
import com.dianxinos.library.notify.j.d;
import java.io.File;
import java.io.IOException;
import java.util.Random;

public class o
{
  public static Random a = new Random(SystemClock.uptimeMillis());
  
  static String a(String paramString1, String paramString2)
  {
    paramString2 = c.a(paramString2);
    boolean bool;
    if ((paramString2 == null) || (f == null)) {
      bool = false;
    }
    for (;;)
    {
      paramString2 = a.a(bool, null);
      if (!paramString2.exists()) {
        paramString2.mkdirs();
      }
      paramString1 = new File(paramString2, d.a(paramString1));
      if (!paramString1.exists()) {}
      try
      {
        paramString1.createNewFile();
        return paramString1.getAbsolutePath();
        bool = f.e();
      }
      catch (IOException paramString2)
      {
        for (;;)
        {
          paramString2.printStackTrace();
        }
      }
    }
  }
  
  static boolean a(String paramString, File paramFile)
  {
    paramString = paramString.replaceFirst("/+", "/");
    return (paramString.startsWith(Environment.getDownloadCacheDirectory().toString())) || (paramString.startsWith(paramFile.toString())) || (paramString.startsWith(Environment.getExternalStorageDirectory().toString()));
  }
  
  static String b(String paramString1, String paramString2)
  {
    paramString1 = new File(c.a(paramString1, paramString2));
    if (e.c) {
      com.dianxinos.library.dxbase.j.b("generateCompleteSaveFile fileName: " + paramString1.getAbsolutePath());
    }
    return paramString1.getAbsolutePath();
  }
  
  public static String c(String paramString1, String paramString2)
  {
    if ((TextUtils.isEmpty(paramString1)) || (TextUtils.isEmpty(paramString2))) {
      return null;
    }
    return paramString1 + paramString2;
  }
}

/* Location:
 * Qualified Name:     com.dianxinos.library.notify.download.o
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */