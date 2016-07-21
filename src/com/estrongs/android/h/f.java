package com.estrongs.android.h;

import android.content.Context;
import android.graphics.drawable.Drawable;
import com.estrongs.android.pop.ac;
import com.estrongs.android.pop.z;
import com.estrongs.android.ui.theme.at;
import com.estrongs.android.util.ap;
import com.estrongs.android.util.bg;
import com.estrongs.android.util.bk;
import com.estrongs.android.util.l;
import com.estrongs.fs.h;
import com.estrongs.fs.impl.b.d;
import com.estrongs.fs.w;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Set;

public class f
{
  public static int a = 0;
  private static f b;
  private static boolean d = false;
  private static HashMap<String, Drawable> e = new HashMap();
  private static HashMap<String, Integer> f = new HashMap();
  private static HashMap<String, Integer> g = new HashMap();
  private static int h = 60;
  private static HashMap<String, i> i = new HashMap();
  private static int j = -1;
  private static int k;
  private Context c;
  
  static
  {
    try
    {
      String str2 = (String)Class.forName("android.os.SystemProperties").getMethod("get", new Class[] { String.class }).invoke(null, new Object[] { "dalvik.vm.heapsize" });
      String str1 = str2;
      if (str2.toUpperCase().endsWith("M")) {
        str1 = str2.substring(0, str2.length() - 1);
      }
      j = Integer.parseInt(str1);
    }
    catch (ClassNotFoundException localClassNotFoundException)
    {
      for (;;)
      {
        localClassNotFoundException.printStackTrace();
      }
    }
    catch (NoSuchMethodException localNoSuchMethodException)
    {
      for (;;)
      {
        localNoSuchMethodException.printStackTrace();
      }
    }
    catch (IllegalArgumentException localIllegalArgumentException)
    {
      for (;;)
      {
        localIllegalArgumentException.printStackTrace();
      }
    }
    catch (IllegalAccessException localIllegalAccessException)
    {
      for (;;)
      {
        localIllegalAccessException.printStackTrace();
      }
    }
    catch (InvocationTargetException localInvocationTargetException)
    {
      for (;;)
      {
        int m;
        localInvocationTargetException.printStackTrace();
        continue;
        if ((j >= 90) && (ac.a() >= 14))
        {
          m = 300;
        }
        else if (j >= 60)
        {
          m = 200;
          continue;
          h = 24;
        }
      }
    }
    f.put(String.valueOf(589841), Integer.valueOf(2130837895));
    f.put(String.valueOf(65536), Integer.valueOf(2130837895));
    f.put(String.valueOf(262192), Integer.valueOf(2130837925));
    f.put(String.valueOf(262193), Integer.valueOf(2130837902));
    f.put(String.valueOf(262199), Integer.valueOf(2130837914));
    f.put(String.valueOf(262224), Integer.valueOf(2130837925));
    f.put(String.valueOf(262228), Integer.valueOf(2130837902));
    f.put(String.valueOf(262226), Integer.valueOf(2130837914));
    f.put(String.valueOf(262225), Integer.valueOf(2130837925));
    f.put(String.valueOf(262229), Integer.valueOf(2130837902));
    f.put(String.valueOf(262227), Integer.valueOf(2130837914));
    f.put(String.valueOf(262208), Integer.valueOf(2130837897));
    f.put(String.valueOf(262194), Integer.valueOf(2130837906));
    f.put(String.valueOf(327737), Integer.valueOf(2130837911));
    f.put(String.valueOf(262204), Integer.valueOf(2130837901));
    f.put(String.valueOf(393291), Integer.valueOf(2130837916));
    f.put(String.valueOf(458753), Integer.valueOf(2130837903));
    f.put(String.valueOf(589825), Integer.valueOf(2130838238));
    f.put(String.valueOf(589840), Integer.valueOf(2130837907));
    f.put(w.N.c(), Integer.valueOf(2130837923));
    f.put(w.c.c(), Integer.valueOf(2130837910));
    f.put(w.i.c(), Integer.valueOf(2130837919));
    f.put(w.j.c(), Integer.valueOf(2130837920));
    f.put(w.k.c(), Integer.valueOf(2130837921));
    f.put(w.l.c(), Integer.valueOf(2130837922));
    f.put(w.m.c(), Integer.valueOf(2130837917));
    f.put(w.n.c(), Integer.valueOf(2130837918));
    f.put(w.r.c(), Integer.valueOf(2130838184));
    f.put(w.s.c(), Integer.valueOf(2130838176));
    f.put(w.t.c(), Integer.valueOf(2130838175));
    f.put(w.u.c(), Integer.valueOf(2130838179));
    f.put(w.v.c(), Integer.valueOf(2130838185));
    f.put(w.q.c(), Integer.valueOf(2130838174));
    f.put(w.w.c(), Integer.valueOf(2130838183));
    f.put(w.x.c(), Integer.valueOf(2130838178));
    f.put(w.y.c(), Integer.valueOf(2130838182));
    f.put(w.A.c(), Integer.valueOf(2130838186));
    f.put(w.z.c(), Integer.valueOf(2130838181));
    f.put(w.B.c(), Integer.valueOf(2130838180));
    f.put(w.p.c(), Integer.valueOf(2130837910));
    f.put(w.F.c(), Integer.valueOf(2130837918));
    f.put(w.G.c(), Integer.valueOf(2130837658));
    f.put(w.H.c(), Integer.valueOf(2130837659));
    f.put(w.J.c(), Integer.valueOf(2130837660));
    f.put(w.K.c(), Integer.valueOf(2130838572));
    f.put(w.P.c(), Integer.valueOf(2130837898));
    f.put(w.Q.c(), Integer.valueOf(2130837899));
    f.put(w.R.c(), Integer.valueOf(2130837900));
    f.put(w.M.c(), Integer.valueOf(2130838167));
    f.put("-1", Integer.valueOf(2130837924));
    f.put(String.valueOf(327741), Integer.valueOf(2130837925));
    f.put(String.valueOf(593920), Integer.valueOf(2130837902));
    f.put(String.valueOf(593921), Integer.valueOf(2130837914));
    f.put(String.valueOf(598016), Integer.valueOf(2130837901));
    f.put(String.valueOf(598017), Integer.valueOf(2130837901));
    f.put(String.valueOf(598018), Integer.valueOf(2130837901));
    f.put(String.valueOf(598019), Integer.valueOf(2130837901));
    f.put(String.valueOf(598020), Integer.valueOf(2130837901));
    f.put(String.valueOf(393292), Integer.valueOf(2130837901));
    f.put(String.valueOf(598020), Integer.valueOf(2130837901));
    f.put(String.valueOf(524292), Integer.valueOf(2130837901));
    f.put(String.valueOf(524293), Integer.valueOf(2130837901));
    f.put(String.valueOf(524290), Integer.valueOf(2130837901));
    g.put(w.D.c(), Integer.valueOf(2130838239));
    g.put(w.d.c(), Integer.valueOf(2130837927));
    g.put(w.f.c(), Integer.valueOf(2130837932));
    g.put(w.e.c(), Integer.valueOf(2130838434));
    g.put(w.g.c(), Integer.valueOf(2130838661));
    g.put(w.h.c(), Integer.valueOf(2130838662));
    g.put(w.C.c(), Integer.valueOf(2130838168));
    g.put(w.o.c(), Integer.valueOf(2130838443));
    g.put(w.E.c(), Integer.valueOf(2130838249));
    g.put(w.S.c(), Integer.valueOf(2130838239));
    g.put(w.O.c(), Integer.valueOf(2130838648));
    if (j >= 24)
    {
      h = (j - 10) * 3;
      m = 120;
      if ((j >= 120) && (ac.a() >= 17))
      {
        m = 500;
        if (h > m) {
          h = m;
        }
        if (ac.a() <= 8) {
          h = 24;
        }
        k = -1;
        return;
      }
    }
  }
  
  private f(Context paramContext)
  {
    c = paramContext;
    a();
    a(new g(c));
    a(new j(c));
    a(new b(c));
    if (z.M) {
      a(new c(c));
    }
  }
  
  private Drawable a(int paramInt)
  {
    return at.a(c).a(paramInt);
  }
  
  public static Drawable a(h paramh, boolean paramBoolean)
  {
    return a(paramh, paramBoolean, new boolean[0]);
  }
  
  public static Drawable a(h paramh, boolean paramBoolean, boolean[] paramArrayOfBoolean)
  {
    Object localObject3;
    for (int m = 0;; m = 1) {
      for (;;)
      {
        try
        {
          if ((d) || (i(paramh)) || (j(paramh))) {
            break;
          }
          if ((m == 0) || (b == null)) {
            return c(paramh);
          }
          f(paramh);
          if (paramh.getFileType().a())
          {
            if (ap.bm(paramh.getAbsolutePath()))
            {
              paramArrayOfBoolean = e.b((String)paramh.getExtra("device_name"));
              if (paramArrayOfBoolean != null) {
                return at.a(bc).c(paramArrayOfBoolean);
              }
            }
            return c(paramh);
          }
          m = bg.a(paramh);
          Object localObject1 = (i)i.get(String.valueOf(m));
          if (localObject1 != null)
          {
            paramBoolean = paramh.shouldTryLoadThumbnail();
            if (paramBoolean)
            {
              try
              {
                localObject1 = ((i)localObject1).a(paramh);
                localObject3 = localObject1;
                if (localObject1 == null)
                {
                  paramh.setShouldTryLoadThumbnail(false);
                  localObject3 = localObject1;
                }
                if (localObject3 == null) {
                  return c(paramh);
                }
              }
              catch (Throwable localThrowable)
              {
                l.b("IconManager", "Failed to generate thumbnail for " + paramh.getName(), localThrowable);
                Object localObject2 = null;
                continue;
                if (paramArrayOfBoolean == null) {
                  break label270;
                }
              }
              if (paramArrayOfBoolean.length <= 0) {
                break label270;
              }
              paramArrayOfBoolean[0] = true;
              return (Drawable)localObject3;
            }
          }
        }
        catch (NullPointerException paramh)
        {
          paramh.printStackTrace();
          return (Drawable)e.get("-1");
        }
        localObject3 = null;
      }
    }
    label270:
    return (Drawable)localObject3;
  }
  
  public static Drawable a(String paramString)
  {
    Object localObject = (Drawable)e.get(paramString);
    if (localObject != null) {
      return (Drawable)localObject;
    }
    Drawable localDrawable;
    synchronized (e)
    {
      localDrawable = (Drawable)e.get(paramString);
      if (localDrawable != null) {
        return localDrawable;
      }
    }
    localObject = localDrawable;
    if (b != null)
    {
      if (!f.containsKey(paramString)) {
        break label90;
      }
      localObject = com.estrongs.android.h.a.e.a(((Integer)f.get(paramString)).intValue());
    }
    for (;;)
    {
      if (localObject != null)
      {
        return (Drawable)localObject;
        label90:
        if (g.containsKey(paramString))
        {
          localObject = com.estrongs.android.h.a.e.b(((Integer)g.get(paramString)).intValue());
          continue;
        }
      }
      try
      {
        paramString = b(Integer.parseInt(paramString));
        localObject = localDrawable;
        if (paramString == null) {
          continue;
        }
        localObject = com.estrongs.android.h.a.e.a(paramString.intValue());
      }
      catch (NumberFormatException paramString)
      {
        localObject = localDrawable;
      }
      return (Drawable)e.get("-1");
    }
  }
  
  public static f a(Context paramContext)
  {
    if (b == null) {
      b = new f(paramContext);
    }
    return b;
  }
  
  public static void a(i parami)
  {
    String[] arrayOfString = parami.d();
    int n = arrayOfString.length;
    int m = 0;
    while (m < n)
    {
      String str = arrayOfString[m];
      if (!bk.a(str)) {
        i.put(str, parami);
      }
      m += 1;
    }
  }
  
  public static void a(h paramh, String paramString)
  {
    int m = bg.a(paramh);
    i locali = (i)i.get(String.valueOf(m));
    if (locali != null) {}
    try
    {
      locali.a(paramh, paramString);
      return;
    }
    catch (Throwable paramString)
    {
      l.b("IconManager", "Failed to generate thumbnail for " + paramh.getName(), paramString);
    }
  }
  
  public static void a(String paramString, Drawable paramDrawable)
  {
    e.put(paramString, paramDrawable);
  }
  
  public static void a(boolean paramBoolean)
  {
    d = paramBoolean;
  }
  
  public static boolean a(h paramh)
  {
    int m = bg.a(paramh);
    i locali = (i)i.get(String.valueOf(m));
    if (locali != null) {
      return locali.h(paramh);
    }
    return false;
  }
  
  private static Integer b(int paramInt)
  {
    Integer localInteger = null;
    if (bg.a(paramInt)) {
      localInteger = Integer.valueOf(2130837912);
    }
    do
    {
      return localInteger;
      if (bg.e(paramInt)) {
        return Integer.valueOf(2130837909);
      }
      if (bg.g(paramInt)) {
        return Integer.valueOf(2130837908);
      }
      if (bg.j(paramInt)) {
        return Integer.valueOf(2130837915);
      }
    } while (!bg.k(paramInt));
    return Integer.valueOf(2130837926);
  }
  
  public static boolean b()
  {
    return d;
  }
  
  public static boolean b(h paramh)
  {
    if ((paramh == null) || (paramh.getFileType().a())) {}
    String str;
    do
    {
      return false;
      str = paramh.getAbsolutePath();
    } while ((ap.bg(str)) || ((!bg.b(paramh)) && (!bg.g(bg.a(paramh))) && (((!ap.bl(str)) && (!ap.M(str))) || (!i.containsKey(String.valueOf(bg.a(paramh)))))) || (bg.a(paramh) == 65558));
    return true;
  }
  
  public static boolean b(String paramString)
  {
    return i.containsKey(paramString);
  }
  
  public static int c()
  {
    if (k == -1)
    {
      if (j < 128) {
        break label25;
      }
      k = 96;
    }
    for (;;)
    {
      return k;
      label25:
      if (j >= 64) {
        k = 64;
      } else if (j >= 32) {
        k = 48;
      } else {
        k = 32;
      }
    }
  }
  
  public static Drawable c(h paramh)
  {
    String str = (String)paramh.getExtra("device_name");
    if (bk.b(str))
    {
      str = e.b(str);
      if (str != null) {
        return at.a(bc).c(str);
      }
    }
    if ((paramh instanceof com.estrongs.fs.impl.b.a)) {
      return ((com.estrongs.fs.impl.b.a)paramh).a();
    }
    if ((((paramh instanceof d)) || ((paramh instanceof com.estrongs.fs.impl.adb.a))) && (!b())) {
      return at.a(bc).a(2130837896);
    }
    return a(e(paramh));
  }
  
  public static String c(String paramString)
  {
    if (f.containsKey(paramString)) {
      return String.valueOf(f.get(paramString));
    }
    if (g.containsKey(paramString)) {
      return String.valueOf(g.get(paramString));
    }
    try
    {
      Object localObject = b(Integer.parseInt(paramString));
      if (localObject != null)
      {
        localObject = String.valueOf(localObject);
        return (String)localObject;
      }
      return String.valueOf(e.get("-1"));
    }
    catch (NumberFormatException localNumberFormatException) {}
    return paramString;
  }
  
  public static Drawable d(h paramh)
  {
    return a(paramh, false);
  }
  
  public static String e(h paramh)
  {
    if (paramh.getFileType().a()) {
      return paramh.getFileType().c();
    }
    if (ap.v(paramh.getAbsolutePath())) {
      return String.valueOf(262194);
    }
    return "" + bg.a(paramh);
  }
  
  public static String f(h paramh)
  {
    String str = null;
    if (paramh.getExtra("item_icon_file_name") != null) {
      str = (String)paramh.getExtra("item_icon_file_name");
    }
    if (str != null) {
      return str;
    }
    if (paramh.getFileType().a()) {
      str = paramh.getFileType().c();
    }
    for (;;)
    {
      paramh.putExtra("item_icon_file_name", str);
      return str;
      if (i(paramh)) {
        str = String.valueOf(new StringBuilder().append("210_").append(paramh.getPath()).toString().hashCode()) + paramh.lastModified();
      } else if (bg.g(paramh.getAbsolutePath())) {
        str = String.valueOf(new StringBuilder().append("album_").append(ap.bV(paramh.getAbsolutePath()).hashCode()).toString()) + paramh.lastModified();
      } else if (bg.h(paramh.getAbsolutePath())) {
        str = String.valueOf(new StringBuilder().append("video_").append(ap.bV(paramh.getAbsolutePath()).hashCode()).toString()) + paramh.lastModified();
      } else {
        str = String.valueOf(ap.bV(paramh.getAbsolutePath()).hashCode()) + paramh.lastModified();
      }
    }
  }
  
  public static int g(h paramh)
  {
    if ((paramh instanceof com.estrongs.fs.impl.pcs.b)) {
      return 2130837899;
    }
    if (paramh.getFileType().a()) {
      return 2130837904;
    }
    String str = String.valueOf(bg.a(paramh));
    Integer localInteger = (Integer)f.get(str);
    paramh = localInteger;
    if (localInteger == null) {}
    try
    {
      paramh = b(Integer.parseInt(str));
      if (paramh != null) {
        return paramh.intValue();
      }
      return 2130837924;
    }
    catch (NumberFormatException paramh)
    {
      for (;;)
      {
        paramh = localInteger;
      }
    }
  }
  
  public static int h(h paramh)
  {
    if (i(paramh)) {
      return 210;
    }
    return c();
  }
  
  public static boolean i(h paramh)
  {
    return (paramh.getExtra("need_210_thumbnail") != null) && (((Boolean)paramh.getExtra("need_210_thumbnail")).booleanValue());
  }
  
  public static boolean j(h paramh)
  {
    paramh = paramh.getExtra("forece_thumbnail");
    return (paramh != null) && ((paramh instanceof Boolean)) && (((Boolean)paramh).booleanValue());
  }
  
  public static String k(h paramh)
  {
    String str = (String)paramh.getExtra("device_name");
    if ((bk.b(str)) && (e.b(str) != null)) {
      return paramh.getAbsolutePath();
    }
    if ((paramh instanceof com.estrongs.fs.impl.b.a)) {
      return paramh.getAbsolutePath();
    }
    if ((((paramh instanceof d)) || ((paramh instanceof com.estrongs.fs.impl.adb.a))) && (!b())) {
      return String.valueOf(2130837896);
    }
    return c(e(paramh));
  }
  
  public void a()
  {
    synchronized (e)
    {
      Iterator localIterator = g.keySet().iterator();
      if (localIterator.hasNext())
      {
        String str = (String)localIterator.next();
        e.remove(str);
      }
    }
    e.clear();
    e.put(w.a.c(), at.a(c).n());
    e.put("-1", a(2130837924));
  }
  
  public HashMap<String, i> d()
  {
    return i;
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.h.f
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */