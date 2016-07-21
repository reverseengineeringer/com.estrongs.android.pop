package com.dianxinos.DXStatService.stat;

import android.content.Context;
import android.text.TextUtils;
import android.util.Log;
import com.dianxinos.DXStatService.a.b;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Set;
import org.apache.http.NameValuePair;
import org.apache.http.client.utils.URLEncodedUtils;
import org.apache.http.message.BasicNameValuePair;

public final class a
{
  private static Map<String, String> a;
  private static String[] b = { "pkg", "lc", "model", "tk", "v", "vn" };
  
  public static String a(Context paramContext)
  {
    return b(paramContext, new ArrayList());
  }
  
  public static String a(Context paramContext, List<String> paramList)
  {
    return b(paramContext, paramList);
  }
  
  private static List<String> a(List<String> paramList)
  {
    String[] arrayOfString = b;
    int j = arrayOfString.length;
    int i = 0;
    while (i < j)
    {
      String str = arrayOfString[i];
      if (paramList.contains(str))
      {
        if (b.d) {
          Log.w("base.DXStatService", "Your excepts is illeage because you want remove the neededParams of UrlSuffix!");
        }
        paramList.remove(str);
      }
      i += 1;
    }
    return paramList;
  }
  
  private static Map<String, String> a(String paramString1, String paramString2, Map<String, String> paramMap)
  {
    if (!TextUtils.isEmpty(paramString2)) {
      paramMap.put(paramString1, paramString2);
    }
    return paramMap;
  }
  
  private static void a(String paramString1, String paramString2, List<NameValuePair> paramList)
  {
    if (!TextUtils.isEmpty(paramString2)) {
      paramList.add(new BasicNameValuePair(paramString1, paramString2));
    }
  }
  
  private static String b(Context paramContext, List<String> paramList)
  {
    Object localObject;
    HashMap localHashMap;
    try
    {
      localObject = a(paramList);
      paramList = new ArrayList();
      b(paramContext);
      localHashMap = new HashMap(a);
      a("ntt", com.dianxinos.DXStatService.a.a.s(paramContext), localHashMap);
      paramContext = ((List)localObject).iterator();
      while (paramContext.hasNext()) {
        localHashMap.remove((String)paramContext.next());
      }
      paramContext = localHashMap.keySet().iterator();
    }
    finally {}
    while (paramContext.hasNext())
    {
      localObject = (String)paramContext.next();
      a((String)localObject, (String)localHashMap.get(localObject), paramList);
    }
    paramContext = URLEncodedUtils.format(paramList, "UTF-8");
    return paramContext;
  }
  
  private static void b(Context paramContext)
  {
    if (a == null)
    {
      a = new HashMap();
      a("pkg", com.dianxinos.DXStatService.a.a.a(paramContext), a);
      a("h", com.dianxinos.DXStatService.a.a.g(paramContext), a);
      a("w", com.dianxinos.DXStatService.a.a.h(paramContext), a);
      a("v", String.valueOf(com.dianxinos.DXStatService.a.a.j(paramContext)), a);
      a("vn", com.dianxinos.DXStatService.a.a.i(paramContext), a);
      a("model", com.dianxinos.DXStatService.a.a.l(paramContext), a);
      a("vendor", com.dianxinos.DXStatService.a.a.k(paramContext), a);
      a("sdk", com.dianxinos.DXStatService.a.a.p(paramContext), a);
      a("dpi", com.dianxinos.DXStatService.a.a.q(paramContext), a);
      a("tk", TokenManager.getToken(paramContext), a);
      a("locale", com.dianxinos.DXStatService.a.a.r(paramContext), a);
      a("signmd5", com.dianxinos.DXStatService.a.a.t(paramContext), a);
    }
    if ((!TextUtils.isEmpty(com.dianxinos.DXStatService.a.a.n(paramContext))) && (!a.containsKey("op"))) {
      a("op", com.dianxinos.DXStatService.a.a.o(paramContext), a);
    }
    if (!a.containsKey("lc")) {
      a("lc", d.a(paramContext), a);
    }
  }
}

/* Location:
 * Qualified Name:     com.dianxinos.DXStatService.stat.a
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */