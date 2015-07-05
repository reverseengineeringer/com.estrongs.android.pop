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
import com.estrongs.android.appinfo.p;
import com.estrongs.android.d.f;
import com.estrongs.android.pop.FexApplication;
import com.estrongs.android.pop.a;
import com.estrongs.android.pop.ad;
import com.estrongs.android.pop.app.shortcut.ShortcutFormat;
import com.estrongs.android.pop.view.FileExplorerActivity;
import com.estrongs.android.pop.view.utils.n;
import com.estrongs.android.pop.view.utils.u;
import com.estrongs.android.ui.theme.al;
import com.estrongs.fs.m;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.ObjectInputStream;
import java.io.ObjectOutputStream;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Comparator;
import java.util.List;

public class ay
{
  public static String a = "http://m.facebook.com";
  private static List<bb> b = new ArrayList();
  private static final Comparator<File> c = new ba();
  
  public static Intent a(Context paramContext, Uri paramUri)
  {
    if (("http".equals(paramUri.getScheme())) || ("https".equals(paramUri.getScheme())))
    {
      paramContext = new Intent("android.intent.action.VIEW");
      paramContext.setData(paramUri);
      paramUri = paramContext;
    }
    Intent localIntent;
    do
    {
      return paramUri;
      if (paramUri.toString().endsWith("/"))
      {
        paramContext = new Intent("android.intent.action.VIEW");
        paramContext.addFlags(268435456);
        paramContext.addFlags(67108864);
        paramContext.setDataAndType(paramUri, "resource/folder");
        return paramContext;
      }
      if (!am.ba(paramUri.toString())) {
        break;
      }
      localIntent = com.estrongs.android.pop.app.b.a(paramContext, paramUri.getPath());
      Object localObject = null;
      paramUri = am.bA(am.d(paramUri.getPath()));
      paramContext = (Context)localObject;
      if (paramUri != null)
      {
        paramContext = (Context)localObject;
        if (!"".equals(paramUri)) {
          paramContext = n.a(FexApplication.a(), paramUri);
        }
      }
      paramUri = localIntent;
    } while (paramContext == null);
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
      Intent localIntent = ah.a(packageName, paramPackageManager);
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
    if (am.ba(paramString)) {
      return f.d(com.estrongs.fs.impl.local.h.b(paramString));
    }
    if (am.t(paramString)) {
      return al.a(paramContext).a(2130838105);
    }
    if (paramString.endsWith("/"))
    {
      if ((am.aB(paramString)) || (am.az(paramString))) {
        return f.a(m.E.c());
      }
      if (am.bQ(paramString)) {
        return f.a(m.T.c());
      }
      return f.a(m.D.c());
    }
    return f.a(String.valueOf(bc.b(paramString)));
  }
  
  public static ShortcutFormat a(File paramFile)
  {
    return (ShortcutFormat)b(paramFile);
  }
  
  public static void a()
  {
    b.clear();
  }
  
  public static void a(Context paramContext, com.estrongs.fs.h paramh)
  {
    int j = f.g(paramh);
    int i = j;
    if (j == 2130837653) {
      i = al.a(paramContext).j();
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
    if (am.t((String)localObject1))
    {
      localObject1 = a(paramContext, Uri.parse((String)localObject1));
      ((Intent)localObject1).setClass(FexApplication.a(), FileExplorerActivity.class);
      i = 2130837654;
      localIntent = new Intent();
      localIntent.putExtra("android.intent.extra.shortcut.INTENT", (Parcelable)localObject1);
      localIntent.putExtra("android.intent.extra.shortcut.NAME", paramh.getName());
      if (!ad.a(paramContext).aE()) {
        break label573;
      }
    }
    for (;;)
    {
      try
      {
        localObject1 = AppFolderInfoManager.d().a(paramContext, paramh, new az());
        if (localObject1 == null) {
          continue;
        }
        localObject2 = ((BitmapDrawable)paramContext.getResources().getDrawable(i)).getBitmap().copy(Bitmap.Config.ARGB_8888, true);
        j = ((Bitmap)localObject2).getHeight();
        int k = ((Bitmap)localObject2).getHeight();
        if (!(localObject1 instanceof p)) {
          continue;
        }
        localObject1 = (p)localObject1;
        ((p)localObject1).setBounds(0, 0, ((p)localObject1).getIntrinsicWidth(), ((p)localObject1).getIntrinsicHeight());
        localObject1 = ((p)localObject1).a();
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
            break label596;
          }
          paramh = new Paint();
          paramh.setColorFilter(b.a);
          ((Canvas)localObject3).drawBitmap((Bitmap)localObject1, 0.0F, j - k, paramh);
          ((Bitmap)localObject1).recycle();
        }
        if (((Bitmap)localObject2).getWidth() <= 96) {
          break label590;
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
        label573:
        localIntent.putExtra("android.intent.extra.shortcut.ICON_RESOURCE", Intent.ShortcutIconResource.fromContext(paramContext, i));
        continue;
        label590:
        paramh = (com.estrongs.fs.h)localObject2;
        continue;
        label596:
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
  
  public static void a(bb parambb)
  {
    b.add(parambb);
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
  
  public static Intent b(Context paramContext, com.estrongs.fs.h paramh)
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
        ((bb)b.get(i)).a();
        i += 1;
      }
      return;
    }
    catch (Exception localException) {}
  }
  
  public static File c()
  {
    File localFile = new File(a.k);
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
 * Qualified Name:     com.estrongs.android.util.ay
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */