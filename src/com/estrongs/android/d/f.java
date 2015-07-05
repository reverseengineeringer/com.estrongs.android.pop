package com.estrongs.android.d;

import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.drawable.AnimationDrawable;
import android.graphics.drawable.BitmapDrawable;
import android.graphics.drawable.Drawable;
import android.util.Log;
import com.estrongs.android.pop.ac;
import com.estrongs.android.pop.z;
import com.estrongs.android.ui.theme.al;
import com.estrongs.android.util.am;
import com.estrongs.android.util.bc;
import com.estrongs.android.util.bd;
import com.estrongs.fs.h;
import com.estrongs.fs.impl.adb.a;
import com.estrongs.fs.m;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Hashtable;
import java.util.Iterator;
import java.util.List;
import java.util.Map.Entry;
import java.util.Set;

public class f
{
  public static int a = 0;
  private static f b;
  private static boolean d = false;
  private static HashMap<String, Drawable> e = new HashMap();
  private static HashMap<String, Integer> f = new HashMap();
  private static HashMap<String, Integer> g = new HashMap();
  private static Hashtable<String, i> h = new Hashtable();
  private static Hashtable<Drawable, i> i = new Hashtable();
  private static int j = 60;
  private static HashMap<String, j> k = new HashMap();
  private static int l = -1;
  private static int m;
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
      l = Integer.parseInt(str1);
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
        int n;
        localInvocationTargetException.printStackTrace();
        continue;
        if ((l >= 90) && (ac.a() >= 14))
        {
          n = 300;
        }
        else if (l >= 60)
        {
          n = 200;
          continue;
          j = 24;
        }
      }
    }
    f.put(String.valueOf(589841), Integer.valueOf(2130837647));
    f.put(String.valueOf(65536), Integer.valueOf(2130837647));
    f.put(String.valueOf(262192), Integer.valueOf(2130837665));
    f.put(String.valueOf(262193), Integer.valueOf(2130837651));
    f.put(String.valueOf(262199), Integer.valueOf(2130837661));
    f.put(String.valueOf(262224), Integer.valueOf(2130837665));
    f.put(String.valueOf(262228), Integer.valueOf(2130837651));
    f.put(String.valueOf(262226), Integer.valueOf(2130837661));
    f.put(String.valueOf(262225), Integer.valueOf(2130837665));
    f.put(String.valueOf(262229), Integer.valueOf(2130837651));
    f.put(String.valueOf(262227), Integer.valueOf(2130837661));
    f.put(String.valueOf(262208), Integer.valueOf(2130837649));
    f.put(String.valueOf(262194), Integer.valueOf(2130837654));
    f.put(String.valueOf(327737), Integer.valueOf(2130837658));
    f.put(String.valueOf(262204), Integer.valueOf(2130837650));
    f.put(String.valueOf(393291), Integer.valueOf(2130837663));
    f.put(String.valueOf(458753), Integer.valueOf(2130837652));
    f.put(String.valueOf(589825), Integer.valueOf(2130837914));
    f.put(String.valueOf(589840), Integer.valueOf(2130837655));
    f.put(m.O.c(), Integer.valueOf(2130837575));
    f.put(m.c.c(), Integer.valueOf(2130837870));
    f.put(m.i.c(), Integer.valueOf(2130837571));
    f.put(m.j.c(), Integer.valueOf(2130837572));
    f.put(m.k.c(), Integer.valueOf(2130837573));
    f.put(m.l.c(), Integer.valueOf(2130837574));
    f.put(m.m.c(), Integer.valueOf(2130837569));
    f.put(m.n.c(), Integer.valueOf(2130837570));
    f.put(m.r.c(), Integer.valueOf(2130837884));
    f.put(m.s.c(), Integer.valueOf(2130837875));
    f.put(m.t.c(), Integer.valueOf(2130837874));
    f.put(m.u.c(), Integer.valueOf(2130837878));
    f.put(m.v.c(), Integer.valueOf(2130837879));
    f.put(m.w.c(), Integer.valueOf(2130837885));
    f.put(m.q.c(), Integer.valueOf(2130837873));
    f.put(m.x.c(), Integer.valueOf(2130837883));
    f.put(m.y.c(), Integer.valueOf(2130837877));
    f.put(m.z.c(), Integer.valueOf(2130837882));
    f.put(m.B.c(), Integer.valueOf(2130837886));
    f.put(m.A.c(), Integer.valueOf(2130837881));
    f.put(m.C.c(), Integer.valueOf(2130837880));
    f.put(m.p.c(), Integer.valueOf(2130837870));
    f.put(m.G.c(), Integer.valueOf(2130837570));
    f.put(m.H.c(), Integer.valueOf(2130837549));
    f.put(m.I.c(), Integer.valueOf(2130837550));
    f.put(m.K.c(), Integer.valueOf(2130837551));
    f.put(m.L.c(), Integer.valueOf(2130838212));
    f.put(m.Q.c(), Integer.valueOf(2130837915));
    f.put(m.R.c(), Integer.valueOf(2130837916));
    f.put(m.S.c(), Integer.valueOf(2130837917));
    f.put(m.N.c(), Integer.valueOf(2130837867));
    f.put("-1", Integer.valueOf(2130837664));
    g.put(m.E.c(), Integer.valueOf(2130837918));
    g.put(m.d.c(), Integer.valueOf(2130837667));
    g.put(m.f.c(), Integer.valueOf(2130837672));
    g.put(m.e.c(), Integer.valueOf(2130838062));
    g.put(m.g.c(), Integer.valueOf(2130838268));
    g.put(m.h.c(), Integer.valueOf(2130838269));
    g.put(m.D.c(), Integer.valueOf(2130837868));
    g.put(m.o.c(), Integer.valueOf(2130838067));
    g.put(m.F.c(), Integer.valueOf(2130837928));
    g.put(m.T.c(), Integer.valueOf(2130837918));
    g.put(m.P.c(), Integer.valueOf(2130838266));
    if (l >= 24)
    {
      j = (l - 10) * 3;
      n = 120;
      if ((l >= 120) && (ac.a() >= 17))
      {
        n = 500;
        if (j > n) {
          j = n;
        }
        if (ac.a() <= 8) {
          j = 24;
        }
        m = -1;
        return;
      }
    }
  }
  
  private f(Context paramContext)
  {
    c = paramContext;
    a();
    a(new g(c));
    a(new o(c));
    a(new b(c));
    if (z.M) {
      a(new c(c));
    }
  }
  
  private Drawable a(int paramInt)
  {
    return al.a(c).a(paramInt);
  }
  
  public static Drawable a(h paramh, boolean paramBoolean)
  {
    return a(paramh, paramBoolean, new boolean[0]);
  }
  
  public static Drawable a(h paramh, boolean paramBoolean, boolean[] paramArrayOfBoolean)
  {
    Object localObject3;
    label385:
    for (int n = 0;; n = 1)
    {
      for (;;)
      {
        try
        {
          if ((d) || (i(paramh)) || (k(paramh))) {
            break label385;
          }
          if ((n == 0) || (b == null)) {
            return d(paramh);
          }
          String str = f(paramh);
          if (paramh.getFileType().a())
          {
            if (am.bb(paramh.getAbsolutePath()))
            {
              paramArrayOfBoolean = e.b((String)paramh.getExtra("device_name"));
              if (paramArrayOfBoolean != null) {
                return al.a(bc).c(paramArrayOfBoolean);
              }
            }
            return d(paramh);
          }
          synchronized (h)
          {
            if (h.size() > j) {
              f();
            }
            ??? = null;
            if (h.get(str) == null) {
              break;
            }
            localObject2 = hgeta;
            ??? = localObject2;
            if (localObject2 == null) {
              break;
            }
            if (paramBoolean)
            {
              paramh = (i)h.get(str);
              b += 1;
              return (Drawable)localObject2;
            }
          }
          if (paramArrayOfBoolean == null) {
            continue;
          }
        }
        catch (NullPointerException paramh)
        {
          paramh.printStackTrace();
          return (Drawable)e.get("-1");
        }
        if (paramArrayOfBoolean.length > 0) {
          paramArrayOfBoolean[0] = true;
        }
      }
      n = bc.a(paramh);
      Object localObject2 = (j)k.get(String.valueOf(n));
      if (localObject2 != null)
      {
        paramBoolean = paramh.shouldTryLoadThumbnail();
        if (paramBoolean)
        {
          try
          {
            localObject2 = ((j)localObject2).a(paramh);
            ??? = localObject2;
          }
          catch (Throwable localThrowable)
          {
            for (;;)
            {
              Log.w("IconManager", "Failed to generate thumbnail for " + paramh.getName(), localThrowable);
            }
            if (paramArrayOfBoolean == null) {
              break;
            }
          }
          localObject2 = ???;
          if (??? == null) {
            paramh.setShouldTryLoadThumbnail(false);
          }
        }
      }
      for (localObject2 = ???;; localObject3 = ???)
      {
        if (localObject2 == null) {
          return d(paramh);
        }
        if (paramArrayOfBoolean.length <= 0) {
          break;
        }
        paramArrayOfBoolean[0] = true;
        return localThrowable;
      }
    }
    return (Drawable)localObject3;
  }
  
  public static Drawable a(String paramString)
  {
    Object localObject1 = (Drawable)e.get(paramString);
    if (localObject1 != null) {
      return (Drawable)localObject1;
    }
    Drawable localDrawable;
    synchronized (e)
    {
      localDrawable = (Drawable)e.get(paramString);
      if (localDrawable != null) {
        return localDrawable;
      }
    }
    localObject1 = localDrawable;
    if (b != null)
    {
      if (!f.containsKey(paramString)) {
        break label102;
      }
      localObject1 = b.a(((Integer)f.get(paramString)).intValue());
    }
    for (;;)
    {
      if (localObject1 != null)
      {
        e.put(paramString, localObject1);
        return (Drawable)localObject1;
        label102:
        if (g.containsKey(paramString))
        {
          localObject1 = al.a(bc).g(((Integer)g.get(paramString)).intValue());
          continue;
        }
      }
      try
      {
        Integer localInteger = b(Integer.parseInt(paramString));
        localObject1 = localDrawable;
        if (localInteger == null) {
          continue;
        }
        localObject1 = b.a(localInteger.intValue());
      }
      catch (NumberFormatException localNumberFormatException)
      {
        Object localObject2 = localDrawable;
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
  
  public static void a(Drawable paramDrawable)
  {
    if (paramDrawable == null) {}
    do
    {
      return;
      paramDrawable = (i)i.get(paramDrawable);
    } while (paramDrawable == null);
    b -= 1;
  }
  
  public static void a(j paramj)
  {
    String[] arrayOfString = paramj.d();
    int i1 = arrayOfString.length;
    int n = 0;
    while (n < i1)
    {
      String str = arrayOfString[n];
      if (!bd.a(str)) {
        k.put(str, paramj);
      }
      n += 1;
    }
  }
  
  public static void a(h paramh, String paramString)
  {
    int n = bc.a(paramh);
    j localj = (j)k.get(String.valueOf(n));
    if (localj != null) {}
    try
    {
      localj.a(paramh, paramString);
      return;
    }
    catch (Throwable paramString)
    {
      Log.w("IconManager", "Failed to generate thumbnail for " + paramh.getName(), paramString);
    }
  }
  
  public static void a(String paramString, Drawable paramDrawable)
  {
    e.put(paramString, paramDrawable);
  }
  
  public static void a(String paramString, Drawable paramDrawable, boolean paramBoolean)
  {
    i locali2 = (i)h.get(paramString);
    i locali1;
    if (locali2 == null)
    {
      locali1 = new i();
      a = paramDrawable;
      if (!paramBoolean) {
        break label148;
      }
    }
    label148:
    for (int n = 1;; n = 0)
    {
      b = n;
      h.put(paramString, locali1);
      i.put(paramDrawable, locali1);
      return;
      i.remove(a);
      locali1 = locali2;
      if (paramDrawable == a) {
        break;
      }
      locali1 = locali2;
      if (a == null) {
        break;
      }
      Bitmap localBitmap = ((BitmapDrawable)a).getBitmap();
      locali1 = locali2;
      if (localBitmap == null) {
        break;
      }
      locali1 = locali2;
      if (localBitmap.isRecycled()) {
        break;
      }
      localBitmap.recycle();
      locali1 = locali2;
      break;
    }
  }
  
  public static void a(boolean paramBoolean)
  {
    d = paramBoolean;
  }
  
  public static boolean a(h paramh)
  {
    if ((d) || (i(paramh))) {}
    for (int n = 1; n == 0; n = 0) {
      return true;
    }
    paramh = f(paramh);
    return h.containsKey(paramh);
  }
  
  private static Integer b(int paramInt)
  {
    Integer localInteger = null;
    if (bc.a(paramInt)) {
      localInteger = Integer.valueOf(2130837659);
    }
    do
    {
      return localInteger;
      if (bc.e(paramInt)) {
        return Integer.valueOf(2130837657);
      }
      if (bc.g(paramInt)) {
        return Integer.valueOf(2130837656);
      }
      if (bc.j(paramInt)) {
        return Integer.valueOf(2130837662);
      }
    } while (!bc.k(paramInt));
    return Integer.valueOf(2130837666);
  }
  
  public static void b()
  {
    synchronized (h)
    {
      if (h == null) {
        break label108;
      }
      Iterator localIterator = h.entrySet().iterator();
      for (;;)
      {
        if (localIterator.hasNext())
        {
          Object localObject2 = ((Map.Entry)localIterator.next()).getValue();
          boolean bool = localObject2 instanceof BitmapDrawable;
          if (!bool) {
            continue;
          }
          try
          {
            localObject2 = ((BitmapDrawable)localObject2).getBitmap();
            if ((localObject2 != null) && (!((Bitmap)localObject2).isRecycled())) {
              ((Bitmap)localObject2).recycle();
            }
          }
          catch (Exception localException)
          {
            localException.printStackTrace();
          }
        }
      }
    }
    h.clear();
    i.clear();
    label108:
  }
  
  public static void b(Drawable paramDrawable)
  {
    if (paramDrawable == null) {}
    do
    {
      return;
      paramDrawable = (i)i.get(paramDrawable);
    } while (paramDrawable == null);
    b = 0;
    f();
  }
  
  public static boolean b(h paramh)
  {
    int n = bc.a(paramh);
    j localj = (j)k.get(String.valueOf(n));
    if (localj != null) {
      return localj.h(paramh);
    }
    return false;
  }
  
  public static boolean b(String paramString)
  {
    return k.containsKey(paramString);
  }
  
  public static void c()
  {
    synchronized (i)
    {
      if (i != null)
      {
        Iterator localIterator = i.entrySet().iterator();
        if (localIterator.hasNext()) {
          nextgetValueb = 0;
        }
      }
    }
  }
  
  public static boolean c(h paramh)
  {
    if ((paramh == null) || (paramh.getFileType().a())) {}
    String str;
    do
    {
      return false;
      str = paramh.getAbsolutePath();
    } while ((am.aV(str)) || ((!bc.b(paramh)) && (!bc.g(bc.a(paramh))) && (((!am.ba(str)) && (!am.K(str))) || (!k.containsKey(String.valueOf(bc.a(paramh)))))) || (bc.a(paramh) == 65558));
    return true;
  }
  
  public static Drawable d(h paramh)
  {
    String str = (String)paramh.getExtra("device_name");
    if (bd.b(str))
    {
      str = e.b(str);
      if (str != null) {
        return al.a(bc).c(str);
      }
    }
    if ((((paramh instanceof com.estrongs.fs.impl.b.c)) || ((paramh instanceof a))) && (!d())) {
      return al.a(bc).a(2130837648);
    }
    return a(j(paramh));
  }
  
  public static boolean d()
  {
    return d;
  }
  
  public static int e()
  {
    if (m == -1)
    {
      if (l < 128) {
        break label25;
      }
      m = 96;
    }
    for (;;)
    {
      return m;
      label25:
      if (l >= 64) {
        m = 64;
      } else if (l >= 32) {
        m = 48;
      } else {
        m = 32;
      }
    }
  }
  
  public static Drawable e(h paramh)
  {
    return a(paramh, false);
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
      } else if (bc.g(paramh.getAbsolutePath())) {
        str = String.valueOf(new StringBuilder().append("album_").append(am.bE(paramh.getAbsolutePath()).hashCode()).toString()) + paramh.lastModified();
      } else if (bc.h(paramh.getAbsolutePath())) {
        str = String.valueOf(new StringBuilder().append("video_").append(am.bE(paramh.getAbsolutePath()).hashCode()).toString()) + paramh.lastModified();
      } else {
        str = String.valueOf(am.bE(paramh.getAbsolutePath()).hashCode()) + paramh.lastModified();
      }
    }
  }
  
  private static void f()
  {
    ArrayList localArrayList = new ArrayList();
    Object localObject1 = h.keySet().iterator();
    Object localObject2;
    while (((Iterator)localObject1).hasNext())
    {
      localObject2 = (String)((Iterator)localObject1).next();
      if (hgetb <= 0) {
        localArrayList.add(localObject2);
      }
    }
    int n = 0;
    for (;;)
    {
      if (n < localArrayList.size())
      {
        localObject1 = (String)localArrayList.get(n);
        localObject1 = (i)h.remove(localObject1);
        try
        {
          i.remove(a);
          if ((a instanceof BitmapDrawable))
          {
            localObject2 = ((BitmapDrawable)a).getBitmap();
            if ((localObject2 != null) && (!((Bitmap)localObject2).isRecycled())) {
              ((Bitmap)localObject2).recycle();
            }
          }
          for (;;)
          {
            a = null;
            break;
            if ((a instanceof AnimationDrawable))
            {
              localObject2 = (AnimationDrawable)a;
              int i1 = 0;
              while (i1 < ((AnimationDrawable)localObject2).getNumberOfFrames())
              {
                ((BitmapDrawable)((AnimationDrawable)localObject2).getFrame(i1)).getBitmap().recycle();
                i1 += 1;
              }
            }
          }
          localArrayList.clear();
        }
        catch (Exception localException)
        {
          localException.printStackTrace();
        }
      }
      return;
      n += 1;
    }
  }
  
  public static int g(h paramh)
  {
    if (paramh.getFileType().a()) {
      return 2130837653;
    }
    String str = String.valueOf(bc.a(paramh));
    Integer localInteger = (Integer)f.get(str);
    paramh = localInteger;
    if (localInteger == null) {}
    try
    {
      paramh = b(Integer.parseInt(str));
      if (paramh != null) {
        return paramh.intValue();
      }
      return 2130837664;
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
    return e();
  }
  
  public static boolean i(h paramh)
  {
    return (paramh.getExtra("need_210_thumbnail") != null) && (((Boolean)paramh.getExtra("need_210_thumbnail")).booleanValue());
  }
  
  private static String j(h paramh)
  {
    if (paramh.getFileType().a()) {
      return paramh.getFileType().c();
    }
    if (am.t(paramh.getAbsolutePath())) {
      return String.valueOf(262194);
    }
    return "" + bc.a(paramh);
  }
  
  private static boolean k(h paramh)
  {
    paramh = paramh.getExtra("forece_thumbnail");
    return (paramh != null) && ((paramh instanceof Boolean)) && (((Boolean)paramh).booleanValue());
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
    e.put(m.a.c(), al.a(c).k());
    e.put("-1", a(2130837664));
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.d.f
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */