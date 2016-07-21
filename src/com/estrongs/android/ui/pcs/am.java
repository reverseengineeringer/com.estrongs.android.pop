package com.estrongs.android.ui.pcs;

import android.content.Context;
import com.estrongs.android.pop.ad;
import com.estrongs.android.pop.utils.cl;
import com.estrongs.android.util.ap;
import com.estrongs.fs.impl.o.b;

public class am
{
  public static String a(Context paramContext, String paramString)
  {
    return a(paramContext, paramString, false, null, null);
  }
  
  public static String a(Context paramContext, String paramString1, boolean paramBoolean, String paramString2, String paramString3)
  {
    if (paramString1 != null)
    {
      paramString1 = b.f("pcs", paramString1);
      if (paramString1 != null)
      {
        if (paramBoolean)
        {
          if (paramString2 != null) {
            ad.a(paramContext).a(paramString2, false);
          }
          a(paramContext, paramString1, paramString3);
        }
        return paramString1 + ":fake";
      }
    }
    return null;
  }
  
  private static void a(Context paramContext, String paramString1, String paramString2)
  {
    String str2 = ap.a("pcs", paramString1, "fake", "/files");
    String str1 = paramString1;
    if (paramString2 != null)
    {
      str1 = paramString1;
      if (paramString2.length() > 0) {
        str1 = paramString2;
      }
    }
    ad.a(paramContext).a(str2, str1);
  }
  
  public static boolean a(Context paramContext)
  {
    return cl.a();
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.ui.pcs.am
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */