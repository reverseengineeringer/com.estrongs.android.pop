package com.dianxinos.library.notify.d;

import android.content.Context;
import com.dianxinos.library.dxbase.j;
import com.dianxinos.library.notify.c;
import com.dianxinos.library.notify.data.k;
import com.dianxinos.library.notify.i;
import com.dianxinos.library.notify.j.d;
import java.util.ArrayList;
import java.util.List;

public class e
{
  public static String a()
  {
    Object localObject = com.dianxinos.library.dxbase.e.a;
    if ("test".equals(localObject)) {
      return a(c.a(), "http://sandbox.duapps.com:8124/recommend/get");
    }
    if ("prod".equals(localObject))
    {
      if (c.b().equals("booster")) {
        return a(c.a(), "http://nrc.ds.duapps.com/get");
      }
      if (c.b().equals("battery")) {
        return a(c.a(), "http://nrc.sd.duapps.com/get");
      }
      String str = c.c();
      Context localContext = c.a();
      localObject = str;
      if (str == null) {
        localObject = "http://nrc.tapas.net/get";
      }
      return a(localContext, (String)localObject);
    }
    if ("dev".equals(localObject)) {
      return a(c.a(), "http://rec.in.tira.cn:8000/recommend/get");
    }
    return a(c.a(), "http://nrc.tapas.net/get");
  }
  
  private static String a(Context paramContext, String paramString)
  {
    String str = com.dianxinos.DXStatService.stat.a.a(paramContext, b());
    StringBuilder localStringBuilder = new StringBuilder(paramString);
    if (paramString.contains("?")) {
      localStringBuilder.append("&").append(str);
    }
    for (;;)
    {
      localStringBuilder.append("&platform=0");
      localStringBuilder.append("&lp=").append(com.dianxinos.library.notify.j.b.a(paramContext));
      localStringBuilder.append("&lastModified=").append(com.dianxinos.library.notify.h.b.c());
      localStringBuilder.append("&versionCode=").append(i.a());
      localStringBuilder.append("&pubkey=").append(c());
      paramContext = localStringBuilder.toString();
      if (com.dianxinos.library.dxbase.e.c) {
        j.b("url=" + paramContext);
      }
      return paramContext;
      localStringBuilder.append("?").append(str);
    }
  }
  
  private static List<String> b()
  {
    ArrayList localArrayList = new ArrayList();
    localArrayList.add("ie");
    localArrayList.add("is");
    return localArrayList;
  }
  
  private static String c()
  {
    int i = 0;
    byte[] arrayOfByte1 = d.a(com.dianxinos.library.dxbase.a.a(k.a(), 0));
    if (arrayOfByte1 == null) {
      return "";
    }
    byte[] arrayOfByte2 = new byte[4];
    while (i < 4)
    {
      arrayOfByte2[i] = arrayOfByte1[i];
      i += 1;
    }
    return com.dianxinos.library.dxbase.a.b(arrayOfByte2, 8);
  }
}

/* Location:
 * Qualified Name:     com.dianxinos.library.notify.d.e
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */