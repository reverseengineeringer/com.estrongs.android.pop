package com.estrongs.android.pop.esclasses;

import android.content.Context;
import android.util.SparseArray;
import com.estrongs.android.pop.ac;
import com.estrongs.android.pop.ad;
import com.estrongs.android.pop.esclasses.a.v;
import com.estrongs.android.pop.z;
import java.util.HashMap;
import java.util.Locale;

public class e
{
  public static String a = null;
  private static f b = null;
  private static f[] c = null;
  private static boolean d = false;
  private static HashMap<String, Integer> e = new HashMap();
  private static HashMap<String, String> f = new HashMap();
  private static int[] g = { 2131427477, 2131427507, 2131427565, 2131427672, 2131427675, 2131427882, 2131428668 };
  private static int h = 204800;
  
  private static f a(Context paramContext, String paramString, boolean paramBoolean)
  {
    paramString = paramString.toLowerCase();
    for (;;)
    {
      try
      {
        localf = new f();
      }
      catch (Exception paramContext)
      {
        int j;
        int i;
        String[] arrayOfString;
        f[] arrayOff;
        paramString = null;
        paramContext = null;
        continue;
      }
      try
      {
        b = v.a(paramString);
        j = v.b(paramString);
        a = new String[j][];
        i = 0;
        if (i < j)
        {
          a[i] = v.a(paramString, i);
          i += 1;
          continue;
        }
        if (!paramBoolean) {
          break label279;
        }
        paramString = (String)f.get(paramString.toLowerCase());
        if (paramString == null) {
          break label279;
        }
        arrayOfString = paramString.split(" ");
        arrayOff = new f[arrayOfString.length];
        i = 0;
        paramString = arrayOff;
        try
        {
          if (i >= arrayOff.length) {
            continue;
          }
          paramString = arrayOff;
          arrayOff[i] = a(paramContext, arrayOfString[i], false);
          if (arrayOff[i] != null) {
            continue;
          }
          paramString = arrayOff;
          throw new Exception();
        }
        catch (Exception paramContext)
        {
          paramContext = localf;
        }
      }
      catch (Exception paramContext)
      {
        paramContext = localf;
        paramString = null;
        continue;
        paramContext = null;
        continue;
      }
      if ((paramContext != null) && (b != null)) {
        b.clear();
      }
      if (paramString == null) {
        continue;
      }
      i = 0;
      if (i >= paramString.length) {
        continue;
      }
      if ((paramString[i] != null) && (b != null)) {
        b.clear();
      }
      i += 1;
      continue;
      i += 1;
    }
    paramString = arrayOff;
    c = arrayOff;
    paramContext = arrayOff;
    paramString = paramContext;
    if (b != null)
    {
      paramString = paramContext;
      paramContext = a;
      if (paramContext != null) {}
    }
    else
    {
      return null;
    }
    return localf;
    return null;
  }
  
  public static void a(Context paramContext)
  {
    String str1 = Locale.getDefault().getLanguage();
    String str2 = Locale.getDefault().getCountry();
    ??? = ad.a(paramContext).B();
    if (((String)???).equals("-1"))
    {
      d = true;
      if ("zh".equalsIgnoreCase(str1)) {
        if ("CN".equalsIgnoreCase(str2)) {
          ??? = "cn";
        }
      }
      for (;;)
      {
        str1 = ((String)???).toLowerCase();
        if ((a == null) || (!a.equalsIgnoreCase(str1))) {
          break;
        }
        return;
        ??? = "tw";
        continue;
        ??? = str1;
        if ("pt".equalsIgnoreCase(str1)) {
          if ("pt".equalsIgnoreCase(str2)) {
            ??? = "pt_pt";
          } else {
            ??? = "pt";
          }
        }
      }
    }
    if (((String)???).equalsIgnoreCase(str1)) {}
    for (d = true;; d = false) {
      break;
    }
    synchronized (e)
    {
      c();
      b = a(paramContext, str1, true);
      a = str1;
      return;
    }
  }
  
  public static boolean a()
  {
    return (a != null) && ((a.equals("ar")) || (a.equals("iw")) || (a.equals("fa")) || (a.equals("ug")));
  }
  
  public static boolean a(int paramInt)
  {
    boolean bool2 = false;
    int i = 0;
    for (;;)
    {
      boolean bool1 = bool2;
      if (i < g.length)
      {
        if (paramInt == g[i]) {
          bool1 = true;
        }
      }
      else {
        return bool1;
      }
      i += 1;
    }
  }
  
  public static String b(int paramInt)
  {
    if ((b == null) || (bb == null)) {
      return null;
    }
    for (;;)
    {
      int i;
      int j;
      label68:
      label93:
      int k;
      synchronized (e)
      {
        Object localObject1 = (Integer)bb.get(paramInt);
        if (localObject1 == null) {
          break label246;
        }
        i = ((Integer)localObject1).intValue();
        j = 0;
        break label252;
        localObject4 = ba[j][i];
        localObject1 = localObject4;
        if (localObject4 == null)
        {
          localObject1 = localObject4;
          if (c != null)
          {
            i = 0;
            localObject1 = localObject4;
            if (i >= c.length) {
              break label243;
            }
            if ((c[i] == null) || (cb == null)) {
              break label225;
            }
            localObject4 = (Integer)cb.get(paramInt);
            if (localObject4 == null) {
              break label240;
            }
            j = ((Integer)localObject4).intValue();
            k = 0;
            break label272;
            label153:
            localObject1 = ca[k][j];
            break label292;
          }
        }
        label170:
        localObject4 = localObject1;
        if (localObject1 != null)
        {
          localObject4 = localObject1;
          if (z.K)
          {
            localObject4 = localObject1;
            if (a(paramInt)) {
              localObject4 = ((String)localObject1).replaceAll("WLAN", "Wifi");
            }
          }
        }
        return (String)localObject4;
      }
      label225:
      Object localObject4 = localObject2;
      Object localObject3;
      label240:
      label243:
      label246:
      label252:
      label272:
      label292:
      do
      {
        i += 1;
        localObject3 = localObject4;
        break label93;
        break label292;
        break label170;
        localObject4 = null;
        break label68;
        while (i >= 800)
        {
          j += 1;
          i -= 800;
        }
        break;
        while (j >= 800)
        {
          k += 1;
          j -= 800;
        }
        break label153;
        localObject4 = localObject3;
      } while (localObject3 == null);
    }
  }
  
  public static boolean b()
  {
    return (d) && (ac.a() >= 17) && (a());
  }
  
  private static void c()
  {
    if ((b != null) && (bb != null))
    {
      bb.clear();
      if (c != null)
      {
        int i = 0;
        while (i < c.length)
        {
          if ((c[i] != null) && (cb != null)) {
            cb.clear();
          }
          i += 1;
        }
      }
    }
    b = null;
    c = null;
  }
  
  public static String[] c(int paramInt)
  {
    if ((b == null) || (bb == null)) {
      return null;
    }
    synchronized (e)
    {
      Object localObject1 = bb.get(paramInt);
      Object localObject3 = localObject1;
      int i;
      if (localObject1 == null)
      {
        localObject3 = localObject1;
        if (c != null)
        {
          i = 0;
          localObject3 = localObject1;
          if (i < c.length)
          {
            localObject3 = localObject1;
            if (c[i] == null) {
              break label128;
            }
            localObject3 = localObject1;
            if (cb == null) {
              break label128;
            }
            localObject1 = cb.get(paramInt);
            localObject3 = localObject1;
            if (localObject1 == null) {
              break label128;
            }
            localObject3 = localObject1;
          }
        }
      }
      if ((localObject3 != null) && ((localObject3 instanceof String[])))
      {
        return (String[])localObject3;
        label128:
        i += 1;
        localObject1 = localObject3;
      }
    }
    return null;
  }
  
  public static CharSequence[] d(int paramInt)
  {
    return c(paramInt);
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.pop.esclasses.e
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */