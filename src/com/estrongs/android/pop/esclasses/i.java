package com.estrongs.android.pop.esclasses;

import android.content.Context;
import android.util.SparseArray;
import com.estrongs.android.pop.ac;
import com.estrongs.android.pop.ad;
import com.estrongs.android.pop.esclasses.a.w;
import com.estrongs.android.pop.z;
import java.util.HashMap;
import java.util.Locale;

public class i
{
  public static String a = null;
  private static j b = null;
  private static j[] c = null;
  private static boolean d = false;
  private static HashMap<String, Integer> e = new HashMap();
  private static HashMap<String, String> f = new HashMap();
  private static int[] g = { 2131232335, 2131232565, 2131231626, 2131231525, 2131231522, 2131231802, 2131231035 };
  private static int h = 204800;
  
  private static j a(Context paramContext, String paramString, boolean paramBoolean)
  {
    paramString = paramString.toLowerCase();
    for (;;)
    {
      try
      {
        localj = new j();
      }
      catch (Exception paramContext)
      {
        int j;
        int i;
        String[] arrayOfString;
        j[] arrayOfj;
        paramString = null;
        paramContext = null;
        continue;
      }
      try
      {
        b = w.a(paramString);
        j = w.b(paramString);
        a = new String[j][];
        i = 0;
        if (i < j)
        {
          a[i] = w.a(paramString, i);
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
        arrayOfj = new j[arrayOfString.length];
        i = 0;
        paramString = arrayOfj;
        try
        {
          if (i >= arrayOfj.length) {
            continue;
          }
          paramString = arrayOfj;
          arrayOfj[i] = a(paramContext, arrayOfString[i], false);
          if (arrayOfj[i] != null) {
            continue;
          }
          paramString = arrayOfj;
          throw new Exception();
        }
        catch (Exception paramContext)
        {
          paramContext = localj;
        }
      }
      catch (Exception paramContext)
      {
        paramContext = localj;
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
    paramString = arrayOfj;
    c = arrayOfj;
    paramContext = arrayOfj;
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
    return localj;
    return null;
  }
  
  public static String a(int paramInt1, int paramInt2)
  {
    if ((b == null) || (bb == null)) {
      return null;
    }
    synchronized (e)
    {
      Object localObject1 = bb.get(paramInt1);
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
              break label148;
            }
            localObject3 = localObject1;
            if (cb == null) {
              break label148;
            }
            localObject1 = cb.get(paramInt1);
            localObject3 = localObject1;
            if (localObject1 == null) {
              break label148;
            }
            localObject3 = localObject1;
          }
        }
      }
      if ((localObject3 == null) || (!(localObject3 instanceof String[]))) {
        break label187;
      }
      localObject1 = (String[])localObject3;
      if (localObject1.length == 1)
      {
        return localObject1[0];
        label148:
        i += 1;
        localObject1 = localObject3;
      }
    }
    if (localObject2.length == 2)
    {
      if (paramInt2 == 1) {
        return localObject2[0];
      }
      return localObject2[1];
    }
    return localObject2[0];
    label187:
    return null;
  }
  
  public static void a(Context paramContext)
  {
    String str1 = Locale.getDefault().getLanguage();
    String str2 = Locale.getDefault().getCountry();
    ??? = ad.a(paramContext).C();
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
 * Qualified Name:     com.estrongs.android.pop.esclasses.i
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */