package com.estrongs.android.util;

import android.content.Context;
import android.content.Intent;
import android.content.Intent.ShortcutIconResource;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageManager;
import android.content.res.Resources;
import android.graphics.Bitmap;
import android.graphics.Bitmap.Config;
import android.graphics.BitmapFactory;
import android.graphics.Canvas;
import android.graphics.Matrix;
import android.graphics.Paint;
import android.graphics.drawable.BitmapDrawable;
import android.graphics.drawable.Drawable;
import android.net.Uri;
import android.os.Parcelable;
import com.estrongs.android.appinfo.AppFolderInfoManager;
import com.estrongs.android.appinfo.q;
import com.estrongs.android.h.f;
import com.estrongs.android.pop.FexApplication;
import com.estrongs.android.pop.ad;
import com.estrongs.android.pop.app.b;
import com.estrongs.android.pop.app.shortcut.ShortcutFormat;
import com.estrongs.android.pop.view.FileExplorerActivity;
import com.estrongs.android.pop.view.utils.AppRunner;
import com.estrongs.android.pop.view.utils.n;
import com.estrongs.android.pop.view.utils.u;
import com.estrongs.android.ui.theme.at;
import com.estrongs.fs.h;
import com.estrongs.fs.impl.local.i;
import com.estrongs.fs.w;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.ObjectInputStream;
import java.io.ObjectOutputStream;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Comparator;
import java.util.List;

public class bc
{
  public static String a = "http://m.facebook.com";
  private static List<bf> b = new ArrayList();
  private static final Comparator<File> c = new be();
  
  public static Intent a(Context paramContext, Uri paramUri)
  {
    if (("http".equals(paramUri.getScheme())) || ("https".equals(paramUri.getScheme())))
    {
      paramContext = new Intent("android.intent.action.VIEW");
      paramContext.setData(paramUri);
    }
    Intent localIntent;
    do
    {
      return paramContext;
      if (paramUri.toString().endsWith("/"))
      {
        paramContext = new Intent("android.intent.action.VIEW");
        paramContext.addFlags(268435456);
        paramContext.addFlags(67108864);
        paramContext.setDataAndType(paramUri, "resource/folder");
        return paramContext;
      }
      if (!ap.bl(paramUri.toString())) {
        break;
      }
      localIntent = b.a(paramContext, paramUri.getPath());
      Object localObject = null;
      paramUri = ap.bR(ap.d(paramUri.getPath()));
      paramContext = (Context)localObject;
      if (paramUri != null)
      {
        paramContext = (Context)localObject;
        if (!"".equals(paramUri)) {
          paramContext = n.a(FexApplication.a(), paramUri);
        }
      }
      paramUri = paramContext;
      if (paramContext == null) {
        paramUri = AppRunner.a(FexApplication.a(), localIntent);
      }
      paramContext = localIntent;
    } while (paramUri == null);
    localIntent.setClassName(a, b);
    return localIntent;
    paramContext = new Intent("android.intent.action.VIEW");
    paramContext.setData(paramUri);
    return paramContext;
  }
  
  private static Intent a(PackageManager paramPackageManager, ApplicationInfo paramApplicationInfo)
  {
    try
    {
      Intent localIntent = ak.a(packageName, paramPackageManager);
      if (localIntent != null)
      {
        localIntent.addFlags(268435456);
        return localIntent;
      }
      paramPackageManager = paramPackageManager.getLaunchIntentForPackage(packageName);
      if (paramPackageManager != null)
      {
        paramPackageManager = paramPackageManager.cloneFilter();
        paramPackageManager.addFlags(268435456);
        return paramPackageManager;
      }
    }
    catch (Exception paramPackageManager)
    {
      return null;
    }
    return null;
  }
  
  public static Drawable a(Context paramContext, String paramString)
  {
    if (ap.bl(paramString)) {
      return f.c(i.b(paramString));
    }
    if (ap.v(paramString)) {
      return at.a(paramContext).a(2130838484);
    }
    if (paramString.endsWith("/"))
    {
      if ((ap.aL(paramString)) || (ap.aJ(paramString))) {
        return f.a(w.D.c());
      }
      if (ap.ci(paramString)) {
        return f.a(w.S.c());
      }
      return f.a(w.C.c());
    }
    return f.a(String.valueOf(bg.b(paramString)));
  }
  
  public static ShortcutFormat a(File paramFile)
  {
    return (ShortcutFormat)b(paramFile);
  }
  
  public static void a()
  {
    b.clear();
  }
  
  public static void a(Context paramContext, h paramh)
  {
    int j = f.g(paramh);
    int i = j;
    if (j == 2130837904) {
      i = at.a(paramContext).m();
    }
    Object localObject2 = paramh.getAbsolutePath();
    Object localObject1 = localObject2;
    if (paramh.getFileType().a())
    {
      localObject1 = localObject2;
      if (!((String)localObject2).endsWith("/")) {
        localObject1 = (String)localObject2 + "/";
      }
    }
    Intent localIntent;
    if (ap.v((String)localObject1))
    {
      localObject1 = a(paramContext, Uri.parse((String)localObject1));
      ((Intent)localObject1).setClass(FexApplication.a(), FileExplorerActivity.class);
      i = 2130837906;
      localIntent = new Intent();
      localIntent.putExtra("android.intent.extra.shortcut.INTENT", (Parcelable)localObject1);
      localIntent.putExtra("android.intent.extra.shortcut.NAME", paramh.getName());
      if (!ad.a(paramContext).aF()) {
        break label574;
      }
    }
    for (;;)
    {
      try
      {
        localObject1 = AppFolderInfoManager.d().a(paramContext, paramh, new bd());
        if (localObject1 == null) {
          continue;
        }
        localObject2 = ((BitmapDrawable)paramContext.getResources().getDrawable(i)).getBitmap().copy(Bitmap.Config.ARGB_8888, true);
        j = ((Bitmap)localObject2).getHeight();
        int k = ((Bitmap)localObject2).getHeight();
        if (!(localObject1 instanceof q)) {
          continue;
        }
        localObject1 = (q)localObject1;
        ((q)localObject1).setBounds(0, 0, ((q)localObject1).getIntrinsicWidth(), ((q)localObject1).getIntrinsicHeight());
        localObject1 = ((q)localObject1).a();
        if (localObject1 != null)
        {
          m = ((Bitmap)localObject1).getHeight();
          int n = ((Bitmap)localObject1).getHeight();
          if (n <= m) {
            continue;
          }
          f = k / 2 / n;
          Object localObject3 = new Matrix();
          ((Matrix)localObject3).postScale(f, f);
          localObject1 = Bitmap.createBitmap((Bitmap)localObject1, 0, 0, n, m, (Matrix)localObject3, true);
          k = ((Bitmap)localObject1).getHeight();
          localObject3 = new Canvas((Bitmap)localObject2);
          if (!AppFolderInfoManager.d().a(paramContext, paramh)) {
            break label597;
          }
          paramh = new Paint();
          paramh.setColorFilter(a.a);
          ((Canvas)localObject3).drawBitmap((Bitmap)localObject1, 0.0F, j - k, paramh);
          ((Bitmap)localObject1).recycle();
        }
        if (((Bitmap)localObject2).getWidth() <= 96) {
          break label591;
        }
        f = 96.0F / ((Bitmap)localObject2).getWidth();
        paramh = new Matrix();
        paramh.postScale(f, f);
        paramh = Bitmap.createBitmap((Bitmap)localObject2, 0, 0, ((Bitmap)localObject2).getWidth(), ((Bitmap)localObject2).getHeight(), paramh, true);
        ((Bitmap)localObject2).recycle();
        localIntent.putExtra("android.intent.extra.shortcut.ICON", paramh);
      }
      catch (Exception paramh)
      {
        int m;
        float f;
        localIntent.putExtra("android.intent.extra.shortcut.ICON_RESOURCE", Intent.ShortcutIconResource.fromContext(paramContext, i));
        continue;
      }
      localIntent.setAction("com.android.launcher.action.INSTALL_SHORTCUT");
      paramContext.sendBroadcast(localIntent);
      return;
      localObject1 = a(paramContext, Uri.parse(Uri.encode((String)localObject1, "/")));
      break;
      if ((localObject1 instanceof BitmapDrawable))
      {
        localObject1 = Bitmap.createBitmap(((BitmapDrawable)localObject1).getBitmap());
        continue;
        f = j / 2 / m;
        continue;
        localIntent.putExtra("android.intent.extra.shortcut.ICON_RESOURCE", Intent.ShortcutIconResource.fromContext(paramContext, i));
        continue;
        label574:
        localIntent.putExtra("android.intent.extra.shortcut.ICON_RESOURCE", Intent.ShortcutIconResource.fromContext(paramContext, i));
        continue;
        label591:
        paramh = (h)localObject2;
        continue;
        label597:
        paramh = null;
      }
      else
      {
        localObject1 = null;
      }
    }
  }
  
  public static void a(ShortcutFormat paramShortcutFormat, File paramFile)
  {
    a(paramShortcutFormat, paramFile);
  }
  
  public static void a(bf parambf)
  {
    b.add(parambf);
  }
  
  public static void a(Object paramObject, File paramFile)
  {
    paramFile = new ObjectOutputStream(new FileOutputStream(paramFile));
    paramFile.writeObject(paramObject);
    paramFile.flush();
    paramFile.close();
    b();
  }
  
  public static void a(String paramString, boolean paramBoolean, List<ShortcutFormat> paramList)
  {
    paramString = new File(paramString).listFiles();
    if (paramString != null)
    {
      Arrays.sort(paramString, c);
      int j = paramString.length;
      int i = 0;
      while (i < j)
      {
        Object localObject = paramString[i];
        if (((File)localObject).isFile()) {}
        try
        {
          localObject = a((File)localObject);
          deleteAble = true;
          paramList.add(localObject);
          if (paramBoolean) {
            ((ShortcutFormat)localObject).putAttribute("isPreload", "true");
          }
        }
        catch (Exception localException)
        {
          for (;;)
          {
            localException.printStackTrace();
          }
        }
        i += 1;
      }
    }
  }
  
  public static boolean a(Context paramContext, Intent paramIntent)
  {
    paramIntent.setAction("com.android.launcher.action.INSTALL_SHORTCUT");
    paramContext.sendBroadcast(paramIntent);
    return true;
  }
  
  public static boolean a(Context paramContext, ApplicationInfo paramApplicationInfo)
  {
    paramApplicationInfo = b(paramContext, paramApplicationInfo);
    if (paramApplicationInfo == null) {
      return false;
    }
    return a(paramContext, paramApplicationInfo);
  }
  
  public static boolean a(String paramString1, String paramString2)
  {
    ShortcutFormat localShortcutFormat = new ShortcutFormat();
    shortcutName = paramString1;
    targetLocation = paramString2;
    paramString1 = c();
    if (!paramString1.exists()) {
      paramString1.mkdirs();
    }
    paramString1 = new File(paramString1, shortcutName);
    paramString1.createNewFile();
    a(localShortcutFormat, paramString1);
    return true;
  }
  
  private static Intent b(Context paramContext, ApplicationInfo paramApplicationInfo)
  {
    PackageManager localPackageManager = paramContext.getPackageManager();
    Intent localIntent = new Intent();
    paramContext = a(paramContext.getPackageManager(), paramApplicationInfo);
    if (paramContext == null) {
      return null;
    }
    localIntent.putExtra("android.intent.extra.shortcut.INTENT", paramContext);
    paramContext = paramApplicationInfo.loadLabel(localPackageManager);
    if (paramContext != null) {
      paramContext = paramContext.toString().trim();
    }
    for (;;)
    {
      localIntent.putExtra("android.intent.extra.shortcut.NAME", paramContext);
      try
      {
        localIntent.putExtra("android.intent.extra.shortcut.ICON", BitmapFactory.decodeResource(localPackageManager.getResourcesForApplication(paramApplicationInfo), icon));
        localIntent.putExtra("duplicate", true);
        return localIntent;
        paramContext = packageName;
      }
      catch (Exception paramContext)
      {
        for (;;)
        {
          paramContext.printStackTrace();
        }
      }
    }
  }
  
  public static Intent b(Context paramContext, h paramh)
  {
    int i = f.g(paramh);
    Object localObject2 = paramh.getAbsolutePath();
    Object localObject1 = localObject2;
    if (paramh.getFileType().a())
    {
      localObject1 = localObject2;
      if (!((String)localObject2).endsWith("/")) {
        localObject1 = (String)localObject2 + "/";
      }
    }
    localObject1 = a(paramContext, Uri.parse(Uri.encode((String)localObject1, "/")));
    localObject2 = new Intent();
    ((Intent)localObject2).putExtra("android.intent.extra.shortcut.INTENT", (Parcelable)localObject1);
    ((Intent)localObject2).putExtra("android.intent.extra.shortcut.NAME", paramh.getName());
    ((Intent)localObject2).putExtra("android.intent.extra.shortcut.ICON_RESOURCE", Intent.ShortcutIconResource.fromContext(paramContext, i));
    ((Intent)localObject2).setAction("com.android.launcher.action.INSTALL_SHORTCUT");
    return (Intent)localObject2;
  }
  
  public static Object b(File paramFile)
  {
    paramFile = new ObjectInputStream(new FileInputStream(paramFile));
    Object localObject = paramFile.readObject();
    paramFile.close();
    return localObject;
  }
  
  public static void b()
  {
    int i = 0;
    try
    {
      while (i < b.size())
      {
        ((bf)b.get(i)).a();
        i += 1;
      }
      return;
    }
    catch (Exception localException) {}
  }
  
  public static File c()
  {
    File localFile = new File(com.estrongs.android.pop.a.n);
    if (!localFile.exists()) {
      localFile.mkdirs();
    }
    return localFile;
  }
  
  public static void c(File paramFile)
  {
    paramFile.delete();
    b();
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.util.bc
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */