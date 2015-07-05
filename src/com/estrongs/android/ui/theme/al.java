package com.estrongs.android.ui.theme;

import android.content.Context;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.content.pm.PackageManager.NameNotFoundException;
import android.content.res.Resources;
import android.content.res.Resources.NotFoundException;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.graphics.Shader.TileMode;
import android.graphics.drawable.BitmapDrawable;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.StateListDrawable;
import android.util.TypedValue;
import com.estrongs.android.d.f;
import com.estrongs.android.pop.FexApplication;
import com.estrongs.android.pop.a;
import com.estrongs.android.pop.ad;
import com.estrongs.android.pop.esclasses.k;
import com.estrongs.fs.m;
import java.io.File;
import java.io.InputStream;
import java.util.Iterator;
import java.util.List;

public class al
{
  private static al a = null;
  private Context b;
  private Context c;
  private ai d;
  private List<ai> e;
  
  private al(Context paramContext)
  {
    b = paramContext;
    c = paramContext;
    b();
  }
  
  public static al a(Context paramContext)
  {
    if (a == null) {
      a = new al(paramContext);
    }
    return a;
  }
  
  private boolean b(ai paramai)
  {
    return g >= a.a();
  }
  
  public static void m()
  {
    if (a != null) {
      a.l();
    }
    a = null;
  }
  
  private void n()
  {
    try
    {
      l();
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
      Drawable localDrawable = c(e(paramInt));
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
        if ((localObject instanceof k)) {
          localObject = ((k)localObject).a(paramInt, null);
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
  
  public Drawable a(Drawable paramDrawable1, Drawable paramDrawable2)
  {
    return a(new am[] { new am(new int[] { 16842908, 16842919 }, paramDrawable2), new am(new int[] { 16842919 }, paramDrawable2), new am(new int[] { 16842908 }, paramDrawable2), new am(new int[0], paramDrawable1) });
  }
  
  public StateListDrawable a(am[] paramArrayOfam)
  {
    StateListDrawable localStateListDrawable = new StateListDrawable();
    int i = 0;
    while (i < paramArrayOfam.length)
    {
      am localam = paramArrayOfam[i];
      localStateListDrawable.addState(a, b);
      i += 1;
    }
    return localStateListDrawable;
  }
  
  public ai a()
  {
    return d;
  }
  
  public InputStream a(int paramInt, TypedValue paramTypedValue)
  {
    try
    {
      Object localObject = b.getResources().getResourceEntryName(paramInt);
      int i = c.getResources().getIdentifier((String)localObject, "drawable", c.getPackageName());
      if ((c.getResources() instanceof k)) {
        return ((k)c.getResources()).a(i, paramTypedValue);
      }
      localObject = c.getResources().openRawResource(i, paramTypedValue);
      return (InputStream)localObject;
    }
    catch (Resources.NotFoundException localNotFoundException)
    {
      if ((b.getResources() instanceof k)) {
        return ((k)b.getResources()).a(paramInt, paramTypedValue);
      }
    }
    return b.getResources().openRawResource(paramInt, paramTypedValue);
  }
  
  public void a(ai paramai)
  {
    c = paramai.a(b);
    if (d != null) {
      d.k();
    }
    d = paramai;
    d.e();
  }
  
  public void a(List<ai> paramList)
  {
    if (paramList != null) {
      e = paramList;
    }
    if (e != null)
    {
      paramList = e.iterator();
      while (paramList.hasNext())
      {
        ai localai = (ai)paramList.next();
        if (c.getPackageName().equals(b)) {
          d = localai;
        }
      }
    }
  }
  
  public boolean a(PackageInfo paramPackageInfo)
  {
    Object localObject;
    ai localai;
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
        localai = (ai)localIterator.next();
      } while (!((String)localObject).equals(b));
    }
    for (;;)
    {
      localObject = localai;
      if (localai == null)
      {
        localObject = new ai();
        b = packageName;
        g = versionCode;
      }
      a((ai)localObject);
      b(packageName);
      n();
      return true;
      return false;
      label110:
      localai = null;
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
    try
    {
      localObject = e(paramInt);
      int i = c.getResources().getIdentifier((String)localObject, "drawable", c.getPackageName());
      Bitmap localBitmap2 = BitmapFactory.decodeResource(c.getResources(), i);
      localObject = localBitmap2;
      if (localBitmap2 == null) {
        localObject = BitmapFactory.decodeResource(b.getResources(), paramInt);
      }
    }
    catch (Exception localException)
    {
      for (;;)
      {
        Object localObject;
        Bitmap localBitmap1 = BitmapFactory.decodeResource(b.getResources(), paramInt);
      }
    }
    localObject = new BitmapDrawable(b.getResources(), (Bitmap)localObject);
    ((BitmapDrawable)localObject).setTileModeXY(Shader.TileMode.REPEAT, Shader.TileMode.REPEAT);
    return (Drawable)localObject;
  }
  
  public void b()
  {
    String str = ad.a(b).K();
    PackageInfo localPackageInfo = d(str);
    if (localPackageInfo != null)
    {
      ai localai = new ai();
      b = str;
      g = versionCode;
      if (b(localai)) {
        a(localai);
      }
    }
    for (;;)
    {
      f.a(m.a.c(), k());
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
  
  public Drawable c(int paramInt)
  {
    Drawable localDrawable = a(paramInt);
    if (localDrawable != null) {
      localDrawable.setBounds(0, 0, localDrawable.getIntrinsicWidth(), localDrawable.getIntrinsicHeight());
    }
    return localDrawable;
  }
  
  public Drawable c(String paramString)
  {
    int i = c.getResources().getIdentifier(paramString, "drawable", c.getPackageName());
    if ((c.getResources() instanceof k)) {
      return ((k)c.getResources()).a(i, null);
    }
    return c.getResources().getDrawable(i);
  }
  
  public boolean c()
  {
    return c.getPackageName().equals(FexApplication.a().getPackageName());
  }
  
  public int d(int paramInt)
  {
    if (paramInt == 0) {
      return 0;
    }
    try
    {
      String str = e(paramInt);
      int i = c.getResources().getIdentifier(str, "color", c.getPackageName());
      i = c.getResources().getColor(i);
      return i;
    }
    catch (Resources.NotFoundException localNotFoundException) {}
    return b.getResources().getColor(paramInt);
  }
  
  public PackageInfo d(String paramString)
  {
    PackageManager localPackageManager = b.getPackageManager();
    try
    {
      paramString = localPackageManager.getPackageInfo(paramString, 1);
      return paramString;
    }
    catch (PackageManager.NameNotFoundException paramString) {}
    return null;
  }
  
  public String d()
  {
    return c.getPackageName();
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
        ai localai = (ai)e.get(i);
        if (c.getPackageName().equals(b)) {
          return i;
        }
        i += 1;
      }
    }
  }
  
  public String e(int paramInt)
  {
    return b.getResources().getResourceEntryName(paramInt);
  }
  
  public Context f()
  {
    return c;
  }
  
  public void f(int paramInt)
  {
    String str = e(paramInt);
    d.a(b, str, true);
  }
  
  /* Error */
  public Drawable g(int paramInt)
  {
    // Byte code:
    //   0: aload_0
    //   1: getfield 157	com/estrongs/android/ui/theme/al:d	Lcom/estrongs/android/ui/theme/ai;
    //   4: aload_0
    //   5: getfield 27	com/estrongs/android/ui/theme/al:c	Landroid/content/Context;
    //   8: iload_1
    //   9: invokevirtual 332	com/estrongs/android/ui/theme/ai:a	(Landroid/content/Context;I)Landroid/graphics/drawable/BitmapDrawable;
    //   12: astore_3
    //   13: aload_3
    //   14: astore_2
    //   15: aload_3
    //   16: ifnonnull +9 -> 25
    //   19: aload_0
    //   20: iload_1
    //   21: invokevirtual 129	com/estrongs/android/ui/theme/al:a	(I)Landroid/graphics/drawable/Drawable;
    //   24: astore_2
    //   25: aload_2
    //   26: astore_3
    //   27: aload_2
    //   28: ifnonnull +11 -> 39
    //   31: aload_0
    //   32: ldc_w 333
    //   35: invokevirtual 129	com/estrongs/android/ui/theme/al:a	(I)Landroid/graphics/drawable/Drawable;
    //   38: astore_3
    //   39: aload_3
    //   40: areturn
    //   41: astore_2
    //   42: aload_0
    //   43: ldc_w 333
    //   46: invokevirtual 129	com/estrongs/android/ui/theme/al:a	(I)Landroid/graphics/drawable/Drawable;
    //   49: areturn
    //   50: astore_2
    //   51: aload_3
    //   52: astore_2
    //   53: goto -28 -> 25
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	56	0	this	al
    //   0	56	1	paramInt	int
    //   14	14	2	localObject1	Object
    //   41	1	2	localException1	Exception
    //   50	1	2	localException2	Exception
    //   52	1	2	localObject2	Object
    //   12	40	3	localObject3	Object
    // Exception table:
    //   from	to	target	type
    //   0	13	41	java/lang/Exception
    //   19	25	50	java/lang/Exception
  }
  
  public List<ai> g()
  {
    return e;
  }
  
  public Drawable h()
  {
    Drawable localDrawable = d.h();
    if (localDrawable != null) {
      return localDrawable;
    }
    return a(2130837558);
  }
  
  public int i()
  {
    int i = d.i();
    if (i != Integer.MIN_VALUE) {
      return i;
    }
    return d(2131230724);
  }
  
  public int j()
  {
    String str = d.g();
    if (str != null)
    {
      int i = b.getResources().getIdentifier(str, "drawable", b.getPackageName());
      if (i != -1) {
        return i;
      }
    }
    return 2130837653;
  }
  
  /* Error */
  public Drawable k()
  {
    // Byte code:
    //   0: aload_0
    //   1: getfield 157	com/estrongs/android/ui/theme/al:d	Lcom/estrongs/android/ui/theme/ai;
    //   4: invokevirtual 349	com/estrongs/android/ui/theme/ai:g	()Ljava/lang/String;
    //   7: astore_1
    //   8: aload_1
    //   9: ifnull +21 -> 30
    //   12: aload_0
    //   13: aload_1
    //   14: invokevirtual 98	com/estrongs/android/ui/theme/al:c	(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    //   17: astore_1
    //   18: aload_1
    //   19: areturn
    //   20: astore_1
    //   21: aload_0
    //   22: ldc_w 333
    //   25: invokevirtual 129	com/estrongs/android/ui/theme/al:a	(I)Landroid/graphics/drawable/Drawable;
    //   28: areturn
    //   29: astore_1
    //   30: aload_0
    //   31: ldc_w 333
    //   34: invokevirtual 129	com/estrongs/android/ui/theme/al:a	(I)Landroid/graphics/drawable/Drawable;
    //   37: areturn
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	38	0	this	al
    //   7	12	1	localObject	Object
    //   20	1	1	localException1	Exception
    //   29	1	1	localException2	Exception
    // Exception table:
    //   from	to	target	type
    //   0	8	20	java/lang/Exception
    //   12	18	29	java/lang/Exception
  }
  
  public void l()
  {
    if (e != null)
    {
      int i = 0;
      while (i < e.size())
      {
        ((ai)e.get(i)).k();
        i += 1;
      }
    }
    if (d != null) {
      d.k();
    }
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.ui.theme.al
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */