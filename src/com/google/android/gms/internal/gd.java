package com.google.android.gms.internal;

import android.content.ActivityNotFoundException;
import android.content.Context;
import android.net.Uri;
import android.text.TextUtils;
import com.google.android.gms.ads.internal.ae;
import com.google.android.gms.ads.internal.j;
import com.google.android.gms.ads.internal.overlay.AdLauncherIntentInfoParcel;
import com.google.android.gms.ads.internal.util.client.b;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Map;

@me
public final class gd
  implements fq
{
  private final fy a;
  private final j b;
  private final jg c;
  
  public gd(fy paramfy, j paramj, jg paramjg)
  {
    a = paramfy;
    b = paramj;
    c = paramjg;
  }
  
  private static void a(Context paramContext, Map<String, String> paramMap)
  {
    if (TextUtils.isEmpty((String)paramMap.get("u")))
    {
      b.e("Destination url cannot be empty.");
      return;
    }
    paramMap = new gf().a(paramContext, paramMap);
    try
    {
      paramContext.startActivity(paramMap);
      return;
    }
    catch (ActivityNotFoundException paramContext)
    {
      b.e(paramContext.getMessage());
    }
  }
  
  private void a(boolean paramBoolean)
  {
    if (c != null) {
      c.a(paramBoolean);
    }
  }
  
  private static boolean a(Map<String, String> paramMap)
  {
    return "1".equals(paramMap.get("custom_close"));
  }
  
  private static int b(Map<String, String> paramMap)
  {
    paramMap = (String)paramMap.get("o");
    if (paramMap != null)
    {
      if ("p".equalsIgnoreCase(paramMap)) {
        return ae.g().b();
      }
      if ("l".equalsIgnoreCase(paramMap)) {
        return ae.g().a();
      }
      if ("c".equalsIgnoreCase(paramMap)) {
        return ae.g().c();
      }
    }
    return -1;
  }
  
  private static void b(qa paramqa, Map<String, String> paramMap)
  {
    paramMap = (String)paramMap.get("u");
    if (TextUtils.isEmpty(paramMap))
    {
      b.e("Destination url cannot be empty.");
      return;
    }
    new ge(paramqa, paramMap).g();
  }
  
  public void a(qa paramqa, Map<String, String> paramMap)
  {
    String str1 = (String)paramMap.get("a");
    if (str1 == null) {
      b.e("Action missing from an open GMSG.");
    }
    qb localqb;
    do
    {
      return;
      if ((b != null) && (!b.b()))
      {
        b.a((String)paramMap.get("u"));
        return;
      }
      localqb = paramqa.i();
      if ("expand".equalsIgnoreCase(str1))
      {
        if (paramqa.m())
        {
          b.e("Cannot expand WebView that is already expanded.");
          return;
        }
        a(false);
        localqb.a(a(paramMap), b(paramMap));
        return;
      }
      if ("webapp".equalsIgnoreCase(str1))
      {
        paramqa = (String)paramMap.get("u");
        a(false);
        if (paramqa != null)
        {
          localqb.a(a(paramMap), b(paramMap), paramqa);
          return;
        }
        localqb.a(a(paramMap), b(paramMap), (String)paramMap.get("html"), (String)paramMap.get("baseurl"));
        return;
      }
      if (!"in_app_purchase".equalsIgnoreCase(str1)) {
        break;
      }
      paramqa = (String)paramMap.get("product_id");
      paramMap = (String)paramMap.get("report_urls");
    } while (a == null);
    if ((paramMap != null) && (!paramMap.isEmpty()))
    {
      paramMap = paramMap.split(" ");
      a.a(paramqa, new ArrayList(Arrays.asList(paramMap)));
      return;
    }
    a.a(paramqa, new ArrayList());
    return;
    if (("app".equalsIgnoreCase(str1)) && ("true".equalsIgnoreCase((String)paramMap.get("play_store"))))
    {
      b(paramqa, paramMap);
      return;
    }
    if (("app".equalsIgnoreCase(str1)) && ("true".equalsIgnoreCase((String)paramMap.get("system_browser"))))
    {
      a(paramqa.getContext(), paramMap);
      return;
    }
    a(true);
    aj localaj = paramqa.k();
    str1 = (String)paramMap.get("u");
    String str2;
    if (!TextUtils.isEmpty(str1))
    {
      str2 = str1;
      if (localaj != null)
      {
        str2 = str1;
        if (localaj.b(Uri.parse(str1))) {
          str2 = ae.e().b(paramqa.getContext(), str1, paramqa.r());
        }
      }
    }
    for (paramqa = ae.e().a(paramqa, str2);; paramqa = str1)
    {
      localqb.a(new AdLauncherIntentInfoParcel((String)paramMap.get("i"), paramqa, (String)paramMap.get("m"), (String)paramMap.get("p"), (String)paramMap.get("c"), (String)paramMap.get("f"), (String)paramMap.get("e")));
      return;
    }
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.internal.gd
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */