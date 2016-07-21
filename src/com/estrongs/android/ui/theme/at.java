package com.estrongs.android.ui.theme;

import android.content.Context;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.content.res.Resources;
import android.content.res.Resources.NotFoundException;
import android.graphics.drawable.ColorDrawable;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.StateListDrawable;
import android.text.TextUtils;
import android.util.TypedValue;
import com.estrongs.android.h.f;
import com.estrongs.android.pop.FexApplication;
import com.estrongs.android.pop.a;
import com.estrongs.android.pop.ad;
import com.estrongs.android.pop.esclasses.p;
import com.estrongs.android.pop.utils.cu;
import com.estrongs.android.util.bl;
import com.estrongs.fs.w;
import java.io.File;
import java.io.InputStream;
import java.util.Iterator;
import java.util.List;

public class at
{
  private static at a = null;
  private Context b;
  private Context c;
  private al d;
  private List<al> e;
  
  private at(Context paramContext)
  {
    b = paramContext;
    c = paramContext;
    b();
  }
  
  public static at a(Context paramContext)
  {
    if (a == null) {
      a = new at(paramContext);
    }
    return a;
  }
  
  private boolean b(al paramal)
  {
    return h >= a.a();
  }
  
  public static void r()
  {
    if (a != null) {
      a.q();
    }
    a = null;
  }
  
  private void s()
  {
    try
    {
      q();
      File localFile = b.getFilesDir();
      localFile.mkdirs();
      if (localFile.exists())
      {
        localFile = new File(localFile.getAbsolutePath() + "/custom_background");
        if (localFile.exists()) {
          localFile.delete();
        }
      }
      return;
    }
    catch (Exception localException)
    {
      localException.printStackTrace();
    }
  }
  
  public Drawable a(int paramInt)
  {
    try
    {
      Drawable localDrawable = c(d(paramInt));
      if (localDrawable != null) {
        localDrawable.setChangingConfigurations(localDrawable.getChangingConfigurations() | 0x8);
      }
      return localDrawable;
    }
    catch (Exception localException)
    {
      for (;;)
      {
        if (b == null) {
          b = FexApplication.a();
        }
        Object localObject = b.getResources();
        if ((localObject instanceof p)) {
          localObject = ((p)localObject).a(paramInt, null);
        } else {
          localObject = ((Resources)localObject).getDrawable(paramInt);
        }
      }
    }
  }
  
  public Drawable a(int paramInt1, int paramInt2)
  {
    return a(a(paramInt1), a(paramInt2));
  }
  
  public Drawable a(Context paramContext, int paramInt)
  {
    return b(2130837904, paramInt);
  }
  
  public Drawable a(Context paramContext, String paramString)
  {
    int i = e(paramString);
    return bl.a(paramContext, a(2130837904), i);
  }
  
  public Drawable a(Drawable paramDrawable1, Drawable paramDrawable2)
  {
    return a(new au[] { new au(new int[] { 16842908, 16842919 }, paramDrawable2), new au(new int[] { 16842919 }, paramDrawable2), new au(new int[] { 16842908 }, paramDrawable2), new au(new int[0], paramDrawable1) });
  }
  
  public StateListDrawable a(au[] paramArrayOfau)
  {
    StateListDrawable localStateListDrawable = new StateListDrawable();
    int i = 0;
    while (i < paramArrayOfau.length)
    {
      au localau = paramArrayOfau[i];
      localStateListDrawable.addState(a, b);
      i += 1;
    }
    return localStateListDrawable;
  }
  
  public al a()
  {
    return d;
  }
  
  public InputStream a(int paramInt, TypedValue paramTypedValue)
  {
    try
    {
      Object localObject = b.getResources().getResourceEntryName(paramInt);
      int i = c.getResources().getIdentifier((String)localObject, "drawable", c.getPackageName());
      if ((c.getResources() instanceof p)) {
        return ((p)c.getResources()).a(i, paramTypedValue);
      }
      localObject = c.getResources().openRawResource(i, paramTypedValue);
      return (InputStream)localObject;
    }
    catch (Resources.NotFoundException localNotFoundException)
    {
      if ((b.getResources() instanceof p)) {
        return ((p)b.getResources()).a(paramInt, paramTypedValue);
      }
    }
    return b.getResources().openRawResource(paramInt, paramTypedValue);
  }
  
  public void a(al paramal)
  {
    c = paramal.a(b);
    if (d != null) {
      d.n();
    }
    d = paramal;
    d.e(b);
  }
  
  public void a(List<al> paramList)
  {
    if (paramList != null) {
      e = paramList;
    }
    if (e != null)
    {
      paramList = e.iterator();
      while (paramList.hasNext())
      {
        al localal = (al)paramList.next();
        if (c.getPackageName().equals(c)) {
          d = localal;
        }
      }
    }
  }
  
  public boolean a(PackageInfo paramPackageInfo)
  {
    Object localObject;
    al localal;
    if (paramPackageInfo != null)
    {
      localObject = packageName;
      if (e == null) {
        break label110;
      }
      Iterator localIterator = e.iterator();
      do
      {
        if (!localIterator.hasNext()) {
          break;
        }
        localal = (al)localIterator.next();
      } while (!((String)localObject).equals(c));
    }
    for (;;)
    {
      localObject = localal;
      if (localal == null)
      {
        localObject = new al();
        c = packageName;
        h = versionCode;
      }
      a((al)localObject);
      b(packageName);
      s();
      return true;
      return false;
      label110:
      localal = null;
    }
  }
  
  public boolean a(String paramString)
  {
    if (paramString == null) {
      return false;
    }
    return a(d(paramString));
  }
  
  public Drawable b(int paramInt)
  {
    Drawable localDrawable = a(paramInt);
    if (localDrawable != null) {
      localDrawable.setBounds(0, 0, localDrawable.getIntrinsicWidth(), localDrawable.getIntrinsicHeight());
    }
    return localDrawable;
  }
  
  public Drawable b(int paramInt1, int paramInt2)
  {
    paramInt2 = f(paramInt2);
    Drawable localDrawable = a(paramInt1);
    return bl.a(b, localDrawable, paramInt2);
  }
  
  public void b()
  {
    String str = ad.a(b).L();
    PackageInfo localPackageInfo = d(str);
    if (localPackageInfo != null)
    {
      al localal = new al();
      c = str;
      h = versionCode;
      if (b(localal)) {
        a(localal);
      }
    }
    for (;;)
    {
      f.a(w.a.c(), n());
      return;
      a(b.getPackageName());
      continue;
      a(b.getPackageName());
    }
  }
  
  public void b(String paramString)
  {
    ad.a(b).y(paramString);
  }
  
  public int c(int paramInt)
  {
    if (paramInt == 0) {
      return 0;
    }
    try
    {
      String str = d(paramInt);
      int i = c.getResources().getIdentifier(str, "color", c.getPackageName());
      i = c.getResources().getColor(i);
      return i;
    }
    catch (Resources.NotFoundException localNotFoundException) {}
    return b.getResources().getColor(paramInt);
  }
  
  public Drawable c(String paramString)
  {
    int i = c.getResources().getIdentifier(paramString, "drawable", c.getPackageName());
    if ((c.getResources() instanceof p)) {
      return ((p)c.getResources()).a(i, null);
    }
    return c.getResources().getDrawable(i);
  }
  
  public boolean c()
  {
    return c.getPackageName().equals(FexApplication.a().getPackageName());
  }
  
  public PackageInfo d(String paramString)
  {
    PackageManager localPackageManager = b.getPackageManager();
    try
    {
      paramString = localPackageManager.getPackageInfo(paramString, 129);
      return paramString;
    }
    catch (Exception paramString) {}
    return null;
  }
  
  public String d()
  {
    return c.getPackageName();
  }
  
  public String d(int paramInt)
  {
    return b.getResources().getResourceEntryName(paramInt);
  }
  
  public int e()
  {
    if (e == null) {}
    for (;;)
    {
      return 0;
      int i = 0;
      while (i < e.size())
      {
        al localal = (al)e.get(i);
        if (c.getPackageName().equals(c)) {
          return i;
        }
        i += 1;
      }
    }
  }
  
  public int e(String paramString)
  {
    if (TextUtils.isEmpty(paramString)) {
      return 0;
    }
    try
    {
      int i = c.getResources().getIdentifier(paramString, "color", c.getPackageName());
      return i;
    }
    catch (Resources.NotFoundException paramString) {}
    return 0;
  }
  
  public boolean e(int paramInt)
  {
    String str = d(paramInt);
    return d.a(b, str, true);
  }
  
  public int f(int paramInt)
  {
    if (paramInt == 0) {
      return 0;
    }
    try
    {
      String str = d(paramInt);
      int i = c.getResources().getIdentifier(str, "color", c.getPackageName());
      return i;
    }
    catch (Resources.NotFoundException localNotFoundException) {}
    return paramInt;
  }
  
  public Context f()
  {
    return c;
  }
  
  public Drawable g(int paramInt)
  {
    return b(paramInt, 2131558762);
  }
  
  public List<al> g()
  {
    return e;
  }
  
  public Drawable h()
  {
    return a(2130837672);
  }
  
  /* Error */
  public Drawable h(int paramInt)
  {
    // Byte code:
    //   0: aload_0
    //   1: getfield 170	com/estrongs/android/ui/theme/at:d	Lcom/estrongs/android/ui/theme/al;
    //   4: aload_0
    //   5: getfield 27	com/estrongs/android/ui/theme/at:c	Landroid/content/Context;
    //   8: iload_1
    //   9: invokevirtual 336	com/estrongs/android/ui/theme/al:a	(Landroid/content/Context;I)Landroid/graphics/drawable/BitmapDrawable;
    //   12: astore_3
    //   13: aload_3
    //   14: astore_2
    //   15: aload_3
    //   16: ifnonnull +9 -> 25
    //   19: aload_0
    //   20: iload_1
    //   21: invokevirtual 129	com/estrongs/android/ui/theme/at:a	(I)Landroid/graphics/drawable/Drawable;
    //   24: astore_2
    //   25: aload_2
    //   26: astore_3
    //   27: aload_2
    //   28: ifnonnull +10 -> 38
    //   31: aload_0
    //   32: ldc -122
    //   34: invokevirtual 129	com/estrongs/android/ui/theme/at:a	(I)Landroid/graphics/drawable/Drawable;
    //   37: astore_3
    //   38: aload_3
    //   39: areturn
    //   40: astore_2
    //   41: aload_0
    //   42: ldc -122
    //   44: invokevirtual 129	com/estrongs/android/ui/theme/at:a	(I)Landroid/graphics/drawable/Drawable;
    //   47: areturn
    //   48: astore_2
    //   49: aload_3
    //   50: astore_2
    //   51: goto -26 -> 25
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	54	0	this	at
    //   0	54	1	paramInt	int
    //   14	14	2	localObject1	Object
    //   40	1	2	localException1	Exception
    //   48	1	2	localException2	Exception
    //   50	1	2	localObject2	Object
    //   12	38	3	localObject3	Object
    // Exception table:
    //   from	to	target	type
    //   0	13	40	java/lang/Exception
    //   19	25	48	java/lang/Exception
  }
  
  public int i()
  {
    int i = d.i();
    if (i != Integer.MIN_VALUE) {
      return i;
    }
    return c(2131558623);
  }
  
  public Drawable j()
  {
    int i = d.k();
    if (i != Integer.MIN_VALUE) {
      return new ColorDrawable(i);
    }
    return a(2130837581);
  }
  
  public Drawable k()
  {
    int i = d.l();
    if (i != Integer.MIN_VALUE) {
      return new ColorDrawable(i);
    }
    return a(2130837577);
  }
  
  public int l()
  {
    int i = d.m();
    if (i != Integer.MIN_VALUE) {
      return i;
    }
    return c(2131558411);
  }
  
  public int m()
  {
    try
    {
      String str = d.h();
      if (str != null)
      {
        int i = b.getResources().getIdentifier(str, "drawable", b.getPackageName());
        if (i != -1) {
          return i;
        }
      }
    }
    catch (Exception localException) {}
    return 2130837904;
  }
  
  /* Error */
  public Drawable n()
  {
    // Byte code:
    //   0: aload_0
    //   1: getfield 170	com/estrongs/android/ui/theme/at:d	Lcom/estrongs/android/ui/theme/al;
    //   4: invokevirtual 362	com/estrongs/android/ui/theme/al:h	()Ljava/lang/String;
    //   7: astore_1
    //   8: aload_1
    //   9: ifnull +24 -> 33
    //   12: aload_0
    //   13: aload_0
    //   14: getfield 25	com/estrongs/android/ui/theme/at:b	Landroid/content/Context;
    //   17: aload_1
    //   18: invokevirtual 364	com/estrongs/android/ui/theme/at:a	(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    //   21: astore_1
    //   22: aload_1
    //   23: areturn
    //   24: astore_1
    //   25: aload_0
    //   26: ldc -122
    //   28: invokevirtual 129	com/estrongs/android/ui/theme/at:a	(I)Landroid/graphics/drawable/Drawable;
    //   31: areturn
    //   32: astore_1
    //   33: aload_0
    //   34: ldc -122
    //   36: invokevirtual 129	com/estrongs/android/ui/theme/at:a	(I)Landroid/graphics/drawable/Drawable;
    //   39: areturn
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	40	0	this	at
    //   7	16	1	localObject	Object
    //   24	1	1	localException1	Exception
    //   32	1	1	localException2	Exception
    // Exception table:
    //   from	to	target	type
    //   0	8	24	java/lang/Exception
    //   12	22	32	java/lang/Exception
  }
  
  public boolean o()
  {
    return !cu.a(b);
  }
  
  public boolean p()
  {
    return d.c();
  }
  
  public void q()
  {
    if (e != null)
    {
      int i = 0;
      while (i < e.size())
      {
        ((al)e.get(i)).n();
        i += 1;
      }
    }
    if (d != null) {
      d.n();
    }
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.ui.theme.at
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */