package com.dianxinos.dxservice.a;

import android.content.Context;
import android.text.TextUtils;
import com.dianxinos.DXStatService.a.a;
import com.dianxinos.DXStatService.stat.TokenManager;
import java.util.Hashtable;
import java.util.Map;

public final class g
{
  public static Map<String, String> a(Context paramContext)
  {
    Hashtable localHashtable = new Hashtable();
    String str1 = a.d(paramContext);
    String str2 = a.c(paramContext);
    String str3 = a.m(paramContext);
    String str4 = a.b(paramContext);
    String str5 = a.c();
    String str6 = a.n(paramContext);
    String str7 = a.p(paramContext);
    String str8 = a.o(paramContext);
    String str9 = a.e(paramContext);
    String str10 = a.q(paramContext);
    String str11 = a.f(paramContext);
    String str12 = a.k(paramContext);
    String str13 = a.a();
    a(localHashtable, str1, "a");
    a(localHashtable, str2, "b");
    a(localHashtable, str3, "c");
    a(localHashtable, str4, "d");
    a(localHashtable, str5, "e");
    a(localHashtable, str6, "f");
    a(localHashtable, str7, "k");
    a(localHashtable, str8, "m");
    a(localHashtable, str9, "g");
    a(localHashtable, str10, "h");
    a(localHashtable, str11, "i");
    a(localHashtable, str12, "j");
    a(localHashtable, str13, "mmcid");
    a(localHashtable, TokenManager.a(paramContext), "etcunid");
    a(localHashtable, "NewToken", "etcunname");
    a(localHashtable, String.valueOf(TokenManager.b(paramContext)), "dt");
    return localHashtable;
  }
  
  private static void a(Map<String, String> paramMap, String paramString1, String paramString2)
  {
    if (!TextUtils.isEmpty(paramString1)) {
      paramMap.put(paramString2, paramString1);
    }
  }
}

/* Location:
 * Qualified Name:     com.dianxinos.dxservice.a.g
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */