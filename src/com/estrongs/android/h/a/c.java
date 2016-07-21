package com.estrongs.android.h.a;

import android.content.Context;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.content.pm.PackageManager.NameNotFoundException;
import android.graphics.Bitmap;
import android.graphics.Bitmap.CompressFormat;
import android.graphics.Bitmap.Config;
import android.graphics.Canvas;
import android.graphics.drawable.Drawable;
import android.text.TextUtils;
import com.estrongs.android.h.e;
import com.estrongs.android.h.f;
import com.estrongs.android.h.i;
import com.estrongs.android.pop.FexApplication;
import com.estrongs.android.pop.ad;
import com.estrongs.android.ui.theme.at;
import com.estrongs.android.util.ap;
import com.estrongs.android.util.bg;
import com.estrongs.android.util.l;
import com.estrongs.android.view.eb;
import com.estrongs.fs.h;
import com.estrongs.fs.w;
import com.nostra13.universalimageloader.core.download.BaseImageDownloader;
import com.nostra13.universalimageloader.core.download.ImageDownloader.Scheme;
import java.io.ByteArrayInputStream;
import java.io.ByteArrayOutputStream;
import java.io.File;
import java.io.InputStream;
import java.util.HashMap;

public class c
  extends BaseImageDownloader
{
  public c(Context paramContext)
  {
    super(paramContext);
  }
  
  private Drawable a(h paramh)
  {
    if ((ad.a(FexApplication.a()).t()) || (f.i(paramh)) || (f.j(paramh))) {}
    for (int i = 1; i == 0; i = 0) {
      return f.c(paramh);
    }
    f.f(paramh);
    if (paramh.getFileType().a())
    {
      if (ap.bm(paramh.getAbsolutePath()))
      {
        String str = e.b((String)paramh.getExtra("device_name"));
        if (str != null) {
          return at.a(FexApplication.a()).c(str);
        }
      }
      return f.c(paramh);
    }
    return null;
  }
  
  private InputStream a(Drawable paramDrawable)
  {
    try
    {
      int i = paramDrawable.getIntrinsicWidth();
      int j = paramDrawable.getIntrinsicHeight();
      if (paramDrawable.getOpacity() != -1) {}
      for (Object localObject = Bitmap.Config.ARGB_8888;; localObject = Bitmap.Config.RGB_565)
      {
        localObject = Bitmap.createBitmap(i, j, (Bitmap.Config)localObject);
        Canvas localCanvas = new Canvas((Bitmap)localObject);
        paramDrawable.setBounds(0, 0, paramDrawable.getIntrinsicWidth(), paramDrawable.getIntrinsicHeight());
        paramDrawable.draw(localCanvas);
        paramDrawable = new ByteArrayOutputStream();
        ((Bitmap)localObject).compress(Bitmap.CompressFormat.PNG, 100, paramDrawable);
        return new ByteArrayInputStream(paramDrawable.toByteArray());
      }
      return null;
    }
    catch (Exception paramDrawable)
    {
      l.a(paramDrawable.toString());
    }
  }
  
  private InputStream a(String paramString, Object paramObject)
  {
    try
    {
      int i = Integer.parseInt(paramString.substring("folderIcon://".length()));
      paramObject = at.a(FexApplication.a()).h(i);
      if (paramObject != null)
      {
        paramObject = a((Drawable)paramObject);
        return (InputStream)paramObject;
      }
    }
    catch (Exception paramObject) {}
    return super.getStreamFromDrawable(paramString, null);
  }
  
  private boolean a(String paramString)
  {
    return (!TextUtils.isEmpty(paramString)) && (paramString.startsWith("folderIcon://"));
  }
  
  private InputStream b(String paramString, Object paramObject)
  {
    if (paramObject != null) {}
    for (;;)
    {
      try
      {
        if (!(paramObject instanceof h)) {
          break label73;
        }
        paramObject = f.c((h)paramObject);
        Object localObject = paramObject;
        if (paramObject == null)
        {
          int i = Integer.parseInt(paramString.substring("es_drawable://".length()));
          localObject = at.a(FexApplication.a()).a(i);
        }
        if (localObject != null)
        {
          paramObject = a((Drawable)localObject);
          return (InputStream)paramObject;
        }
      }
      catch (Exception paramObject) {}
      return super.getStreamFromDrawable(paramString, null);
      label73:
      paramObject = null;
    }
  }
  
  private boolean b(String paramString)
  {
    return (!TextUtils.isEmpty(paramString)) && (paramString.startsWith("es_drawable://"));
  }
  
  private InputStream c(String paramString, Object paramObject)
  {
    try
    {
      paramObject = paramString.substring("appIcon://".length());
      PackageManager localPackageManager = FexApplication.a().getPackageManager();
      paramObject = localPackageManager.getApplicationIcon(getPackageInfo0applicationInfo);
      if (paramObject != null)
      {
        paramObject = a((Drawable)paramObject);
        return (InputStream)paramObject;
      }
    }
    catch (Exception paramObject)
    {
      return super.getStreamFromDrawable(paramString, null);
    }
    catch (PackageManager.NameNotFoundException paramString) {}
    return null;
  }
  
  private boolean c(String paramString)
  {
    return (!TextUtils.isEmpty(paramString)) && (paramString.startsWith("appIcon://"));
  }
  
  protected InputStream a(String paramString, h paramh)
  {
    h localh = paramh;
    if (paramh.getFileType().a()) {
      if (!ap.aQ(paramh.getPath()))
      {
        localh = paramh;
        if (!ap.aY(paramh.getPath())) {}
      }
      else
      {
        localh = paramh;
        if (f.b()) {
          localh = eb.a(paramh, false);
        }
      }
    }
    paramh = a(localh);
    if (paramh != null) {
      paramString = a(paramh);
    }
    boolean bool;
    do
    {
      return paramString;
      bool = bg.c(localh.getAbsolutePath());
      paramh = paramString;
      if (!bool) {
        break;
      }
      paramh = paramString;
      if (!f.b()) {
        break;
      }
      localObject = ImageDownloader.Scheme.FILE.wrap(localh.getAbsolutePath());
      paramString = new File((String)localObject);
      paramh = (h)localObject;
      if (paramString == null) {
        break;
      }
      paramh = (h)localObject;
      if (!paramString.exists()) {
        break;
      }
      paramh = super.getStreamFromFile((String)localObject, null);
      paramString = paramh;
    } while (paramh != null);
    paramh = (h)localObject;
    int i = bg.a(localh);
    Object localObject = (i)f.a(FexApplication.a()).d().get(String.valueOf(i));
    if ((localObject != null) && (f.b()))
    {
      paramString = ((i)localObject).a(localh);
      if ((paramString != null) || ((localObject instanceof com.estrongs.android.h.c))) {
        break label288;
      }
      paramString = f.c(localh);
    }
    label288:
    for (;;)
    {
      if (paramString != null) {
        return a(paramString);
      }
      if ((bool) && (f.b())) {
        return super.getStreamFromFile(paramh, null);
      }
      paramh = f.c(localh);
      paramString = paramh;
      if (paramh == null) {
        paramString = at.a(FexApplication.a()).a(2130837924);
      }
      return a(paramString);
    }
  }
  
  public InputStream getStream(String paramString, Object paramObject)
  {
    h localh;
    if ((paramObject != null) && ((paramObject instanceof h))) {
      localh = (h)paramObject;
    }
    switch (d.a[ImageDownloader.Scheme.ofUri(paramString).ordinal()])
    {
    default: 
      if (a(paramString)) {
        return a(paramString, paramObject);
      }
      break;
    case 1: 
      return a(paramString, localh);
    }
    if (b(paramString)) {
      return b(paramString, paramObject);
    }
    if (c(paramString)) {
      return c(paramString, paramObject);
    }
    return super.getStream(paramString, paramObject);
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.h.a.c
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */