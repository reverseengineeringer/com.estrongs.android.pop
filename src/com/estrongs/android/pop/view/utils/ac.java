package com.estrongs.android.pop.view.utils;

import android.content.Context;
import com.estrongs.android.pop.FexApplication;
import com.estrongs.android.util.am;
import com.estrongs.fs.util.a.a;
import com.estrongs.fs.util.a.c;
import com.estrongs.fs.util.a.d;
import com.estrongs.fs.util.a.e;
import com.estrongs.fs.util.a.f;

public class ac
{
  private static volatile String a = com.estrongs.android.pop.ad.a(FexApplication.a()).x();
  private static volatile String b = com.estrongs.android.pop.ad.a(FexApplication.a()).z();
  
  public static ad a(Context paramContext, String paramString)
  {
    paramString = c(paramContext, paramString);
    paramContext = com.estrongs.android.pop.ad.a(paramContext);
    String str = paramContext.B(paramString);
    if ((paramString.equals("view_local_special")) && (!paramContext.C(paramString))) {
      return new ad(paramString, 0, 3, 1);
    }
    return a(paramString, str);
  }
  
  private static ad a(String paramString1, String paramString2)
  {
    int i = 1;
    paramString2 = new StringBuffer(paramString2);
    if (paramString2.length() != 4) {
      return d(paramString1);
    }
    int n = paramString2.charAt(0);
    int m = paramString2.charAt(1);
    int j = paramString2.charAt(2);
    int k = paramString2.charAt(3);
    if ((n == 50) && (m == 49)) {
      i = 5;
    }
    for (;;)
    {
      return new ad(paramString1, i, j - 48, k - 48);
      if ((n == 49) && (m == 49)) {
        i = 4;
      } else if ((n == 48) && (m == 49)) {
        i = 3;
      } else if ((n == 50) && (m == 50)) {
        i = 8;
      } else if ((n == 49) && (m == 50)) {
        i = 7;
      } else if ((n == 48) && (m == 50)) {
        i = 6;
      } else if ((n == 50) && (m == 48)) {
        i = 2;
      } else if ((n != 49) || (m != 48)) {
        i = 0;
      }
    }
  }
  
  public static a a(int paramInt1, int paramInt2)
  {
    if (paramInt2 == 0) {}
    for (boolean bool = true;; bool = false) {
      switch (paramInt1)
      {
      default: 
        return null;
      }
    }
    return new d(bool);
    return new f(bool);
    return new e(bool);
    return new c(bool);
  }
  
  private static String a(int paramInt1, int paramInt2, int paramInt3)
  {
    StringBuilder localStringBuilder = new StringBuilder();
    if (paramInt1 == 5)
    {
      localStringBuilder.append('2');
      localStringBuilder.append('1');
    }
    for (;;)
    {
      localStringBuilder.append((char)(paramInt2 + 48));
      localStringBuilder.append((char)(paramInt3 + 48));
      return localStringBuilder.toString();
      if (paramInt1 == 4)
      {
        localStringBuilder.append('1');
        localStringBuilder.append('1');
      }
      else if (paramInt1 == 3)
      {
        localStringBuilder.append('0');
        localStringBuilder.append('1');
      }
      else if (paramInt1 == 8)
      {
        localStringBuilder.append('2');
        localStringBuilder.append('2');
      }
      else if (paramInt1 == 7)
      {
        localStringBuilder.append('1');
        localStringBuilder.append('2');
      }
      else if (paramInt1 == 6)
      {
        localStringBuilder.append('0');
        localStringBuilder.append('2');
      }
      else if (paramInt1 == 2)
      {
        localStringBuilder.append('2');
        localStringBuilder.append('0');
      }
      else if (paramInt1 == 1)
      {
        localStringBuilder.append('1');
        localStringBuilder.append('0');
      }
      else
      {
        localStringBuilder.append('0');
        localStringBuilder.append('0');
      }
    }
  }
  
  private static void a(Context paramContext, ad paramad)
  {
    paramContext = com.estrongs.android.pop.ad.a(paramContext);
    String str = a(b, c, d);
    paramContext.f(a, str);
  }
  
  public static void a(Context paramContext, String paramString, int paramInt)
  {
    paramString = a(paramContext, paramString);
    b = paramInt;
    a(paramContext, paramString);
  }
  
  public static void a(Context paramContext, String paramString, int paramInt1, int paramInt2)
  {
    paramString = a(paramContext, paramString);
    c = paramInt1;
    d = paramInt2;
    a(paramContext, paramString);
  }
  
  public static void a(String paramString)
  {
    a = paramString;
  }
  
  public static boolean a(int paramInt)
  {
    return (paramInt == 6) || (paramInt == 7) || (paramInt == 8);
  }
  
  public static int b(Context paramContext, String paramString)
  {
    return ab;
  }
  
  public static void b(String paramString)
  {
    b = paramString;
  }
  
  private static String c(Context paramContext, String paramString)
  {
    paramContext = "view_local";
    int i = am.G(paramString);
    if (i == 1) {
      paramContext = "view_smb";
    }
    for (;;)
    {
      if (c(paramString)) {
        paramContext = "view_local_special";
      }
      return paramContext;
      if ((i == 2) || (i == 19) || (i == 20) || (i == 5)) {
        paramContext = "view_ftp";
      } else if (i == 3) {
        paramContext = "view_bt";
      } else if (i == 4) {
        paramContext = "view_net";
      } else if (i == 23) {
        paramContext = "view_pcs";
      } else if (i == 24) {
        paramContext = "view_app";
      } else if (i == 12) {
        paramContext = "view_music";
      } else if (i == 13) {
        paramContext = "view_pic";
      } else if (i == 14) {
        paramContext = "view_video";
      } else if (i == 16) {
        paramContext = "view_book";
      } else if ((i == 21) || (i == 22)) {
        paramContext = "view_webdav";
      } else if (i == 28) {
        paramContext = "view_compress";
      }
    }
  }
  
  public static boolean c(String paramString)
  {
    if ((paramString == null) || (!am.ba(paramString))) {}
    while ((!am.e(a, paramString)) && (!am.e(b, paramString))) {
      return false;
    }
    return true;
  }
  
  public static ad d(String paramString)
  {
    return new ad(paramString, 0, 0, 0);
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.pop.view.utils.ac
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */