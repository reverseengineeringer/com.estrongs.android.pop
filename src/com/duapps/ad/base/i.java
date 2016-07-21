package com.duapps.ad.base;

import android.content.Context;
import android.provider.Settings.Secure;
import android.text.TextUtils;
import com.dianxinos.DXStatService.a.a;
import com.dianxinos.DXStatService.stat.TokenManager;
import java.util.ArrayList;
import java.util.List;
import org.apache.http.NameValuePair;
import org.apache.http.message.BasicNameValuePair;

public final class i
{
  private static final List<NameValuePair> a = new ArrayList();
  private static boolean b = false;
  
  public static List<NameValuePair> a(Context paramContext, String paramString)
  {
    a(paramContext);
    ArrayList localArrayList = new ArrayList(a);
    String str = a.o(paramContext);
    if (!TextUtils.isEmpty(str)) {
      localArrayList.add(new BasicNameValuePair("op", str));
    }
    str = h.a(paramContext);
    if (!TextUtils.isEmpty(str)) {
      localArrayList.add(new BasicNameValuePair("goid", str));
    }
    localArrayList.add(new BasicNameValuePair("locale", a.r(paramContext)));
    localArrayList.add(new BasicNameValuePair("ntt", a.s(paramContext)));
    localArrayList.add(new BasicNameValuePair("ls", paramString));
    paramContext = b(paramContext);
    if (!TextUtils.isEmpty(paramContext)) {
      localArrayList.add(new BasicNameValuePair("aid", paramContext));
    }
    return localArrayList;
  }
  
  public static void a(Context paramContext)
  {
    try
    {
      if (b) {
        return;
      }
      a.add(new BasicNameValuePair("h", a.g(paramContext)));
      a.add(new BasicNameValuePair("w", a.h(paramContext)));
      a.add(new BasicNameValuePair("model", a.l(paramContext)));
      a.add(new BasicNameValuePair("vendor", a.k(paramContext)));
      a.add(new BasicNameValuePair("sdk", a.p(paramContext)));
      a.add(new BasicNameValuePair("dpi", a.q(paramContext)));
      a.add(new BasicNameValuePair("sv", "1.0.2"));
      a.add(new BasicNameValuePair("svn", "SELF-1.0.2"));
      a.add(new BasicNameValuePair("pkg", a.a(paramContext)));
      int i = a.j(paramContext);
      a.add(new BasicNameValuePair("v", String.valueOf(i)));
      a.add(new BasicNameValuePair("vn", a.i(paramContext)));
      paramContext = TokenManager.getToken(paramContext);
      if (!TextUtils.isEmpty(paramContext)) {
        a.add(new BasicNameValuePair("tk", paramContext));
      }
      b = true;
      return;
    }
    finally {}
  }
  
  public static String b(Context paramContext)
  {
    return Settings.Secure.getString(paramContext.getContentResolver(), "android_id");
  }
}

/* Location:
 * Qualified Name:     com.duapps.ad.base.i
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */