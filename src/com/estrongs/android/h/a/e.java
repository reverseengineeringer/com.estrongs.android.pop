package com.estrongs.android.h.a;

import android.graphics.Bitmap.Config;
import android.graphics.drawable.BitmapDrawable;
import android.graphics.drawable.Drawable;
import android.widget.ImageView;
import com.estrongs.android.appinfo.AppFolderInfoManager;
import com.estrongs.android.pop.FexApplication;
import com.estrongs.android.pop.esclasses.ESImageView;
import com.estrongs.android.ui.theme.at;
import com.estrongs.android.util.ap;
import com.estrongs.fs.h;
import com.estrongs.fs.util.j;
import com.estrongs.fs.w;
import com.nostra13.universalimageloader.cache.disc.impl.UnlimitedDiskCache;
import com.nostra13.universalimageloader.core.DisplayImageOptions;
import com.nostra13.universalimageloader.core.DisplayImageOptions.Builder;
import com.nostra13.universalimageloader.core.ImageLoader;
import com.nostra13.universalimageloader.core.ImageLoaderConfiguration;
import com.nostra13.universalimageloader.core.ImageLoaderConfiguration.Builder;
import com.nostra13.universalimageloader.core.assist.ImageScaleType;
import com.nostra13.universalimageloader.core.display.BitmapDisplayer;
import com.nostra13.universalimageloader.core.display.SimpleBitmapDisplayer;
import com.nostra13.universalimageloader.core.download.ImageDownloader.Scheme;
import java.io.File;
import java.util.List;
import java.util.Map;

public class e
{
  private static ImageLoader a;
  private static DisplayImageOptions b;
  private static DisplayImageOptions.Builder c;
  private static BitmapDisplayer d;
  private static BitmapDisplayer e;
  
  public static Drawable a(int paramInt)
  {
    return a(ImageDownloader.Scheme.DRAWABLE.wrap(String.valueOf(paramInt)));
  }
  
  public static Drawable a(String paramString)
  {
    try
    {
      paramString = a().loadImageSync(paramString);
      paramString = new BitmapDrawable(FexApplication.a().getResources(), paramString);
      return paramString;
    }
    catch (Exception paramString) {}
    return null;
  }
  
  public static ImageLoader a()
  {
    if (a != null) {
      return a;
    }
    f();
    ImageLoaderConfiguration localImageLoaderConfiguration = new ImageLoaderConfiguration.Builder(FexApplication.a()).imageDownloader(new c(FexApplication.a())).defaultDisplayImageOptions(b).memoryCacheSizePercentage(10).memoryCacheExtraOptions(320, 480).diskCache(new UnlimitedDiskCache(new File(com.estrongs.android.pop.a.b + "/" + ".image"))).build();
    a = ImageLoader.getInstance();
    a.init(localImageLoaderConfiguration);
    return a;
  }
  
  public static void a(int paramInt, ImageView paramImageView)
  {
    a("es_drawable://" + String.valueOf(paramInt), paramImageView, null, paramInt, true);
  }
  
  public static void a(int paramInt, ImageView paramImageView, h paramh)
  {
    if (paramh == null)
    {
      a(paramInt, paramImageView);
      return;
    }
    a("es_drawable://" + com.estrongs.android.h.f.k(paramh), paramImageView, paramh, paramInt, true);
  }
  
  public static void a(ImageView paramImageView, h paramh)
  {
    if ((paramh == null) || (!(paramImageView instanceof ESImageView))) {
      return;
    }
    at localat = at.a(FexApplication.a());
    ESImageView localESImageView = (ESImageView)paramImageView;
    if (((paramh instanceof com.estrongs.fs.impl.b.d)) && (((com.estrongs.fs.impl.b.d)paramh).f())) {
      localESImageView.a(localat.a(2130837641), 0.5F);
    }
    paramImageView = new g(paramh, paramImageView);
    Object localObject;
    if ((!com.estrongs.android.pop.z.ap) && (!(paramh instanceof com.estrongs.fs.impl.c.b)))
    {
      localObject = AppFolderInfoManager.d().a(FexApplication.a(), paramh, paramImageView);
      if (localObject != null) {
        localESImageView.a((Drawable)localObject, 0.5F);
      }
    }
    if ((paramh instanceof com.estrongs.fs.impl.c.d))
    {
      localObject = AppFolderInfoManager.d().a(FexApplication.a(), (h)b.get(0), paramImageView);
      if (localObject != null) {
        localESImageView.a((Drawable)localObject, 0.5F);
      }
    }
    if (AppFolderInfoManager.d().e(paramh))
    {
      localObject = AppFolderInfoManager.d().d(paramh);
      paramImageView = AppFolderInfoManager.d().a(FexApplication.a(), (h)localObject, paramImageView);
      if (paramImageView != null) {
        localESImageView.a(paramImageView, 0.5F);
      }
    }
    if (j.c(paramh))
    {
      localESImageView.setLeftCornerImage(localat.a(2130838243));
      if ((!(paramh instanceof com.estrongs.fs.impl.pcs.b)) || (!com.estrongs.android.ui.pcs.z.f())) {
        break label319;
      }
      localESImageView.c(localat.a(2130838248), 0.2F);
    }
    for (;;)
    {
      localESImageView.invalidate();
      return;
      if (paramh.isLink())
      {
        localESImageView.setLeftCornerImage(localat.a(2130838012));
        break;
      }
      if ((com.estrongs.fs.util.a.a.size() <= 0) || (!ap.bl(paramh.getAbsolutePath())) || (com.estrongs.fs.util.a.a.get(ap.bV(paramh.getAbsolutePath())) == null)) {
        break;
      }
      localESImageView.setLeftCornerImage(localat.a(2130837890));
      break;
      label319:
      localESImageView.setTopCornerImage(null);
    }
  }
  
  public static void a(h paramh, ImageView paramImageView)
  {
    a(paramh, paramImageView, com.estrongs.android.h.f.g(paramh));
  }
  
  public static void a(h paramh, ImageView paramImageView, int paramInt)
  {
    if (com.estrongs.android.h.f.b(paramh))
    {
      b(paramh.getAbsolutePath(), paramImageView, paramh, paramInt, true);
      return;
    }
    a(paramInt, paramImageView, paramh);
  }
  
  public static void a(String paramString, ImageView paramImageView)
  {
    a("appIcon://" + paramString, paramImageView, null, 2130837896, true);
  }
  
  public static void a(String paramString, ImageView paramImageView, h paramh)
  {
    b(ImageDownloader.Scheme.FILE.wrap(paramString), paramImageView, paramh, -1, true);
  }
  
  public static void a(String paramString, ImageView paramImageView, h paramh, int paramInt, boolean paramBoolean)
  {
    if (c == null)
    {
      c = b();
      c.considerExifParams(true);
    }
    c.extraForDownloader(paramh);
    c.cacheInMemory(paramBoolean).cacheOnDisk(false);
    if ((paramInt == -1) && (paramh != null)) {
      paramInt = com.estrongs.android.h.f.g(paramh);
    }
    for (;;)
    {
      if (paramInt == -1) {
        paramInt = 2130837924;
      }
      for (;;)
      {
        if (paramInt == 2130837909)
        {
          if (e == null) {
            e = new a();
          }
          c.displayer(e);
          if ((paramh == null) || (paramh.getFileType() != w.a)) {
            break label194;
          }
        }
        label194:
        for (Drawable localDrawable = at.a(FexApplication.a()).n();; localDrawable = at.a(FexApplication.a()).a(paramInt))
        {
          paramImageView.setImageDrawable(localDrawable);
          paramImageView.setTag(paramh);
          c.showImageOnFail(paramInt);
          a().displayImage(paramString, paramImageView, c.build(), new f());
          return;
          if (d == null) {
            d = new SimpleBitmapDisplayer();
          }
          c.displayer(d);
          break;
        }
      }
    }
  }
  
  public static Drawable b(int paramInt)
  {
    return a("folderIcon://" + paramInt);
  }
  
  public static Drawable b(String paramString)
  {
    return a(ImageDownloader.Scheme.FILE.wrap(paramString));
  }
  
  public static DisplayImageOptions.Builder b()
  {
    f();
    return new DisplayImageOptions.Builder().cloneFrom(b);
  }
  
  public static void b(String paramString, ImageView paramImageView, h paramh, int paramInt, boolean paramBoolean)
  {
    a(ImageDownloader.Scheme.FILE.wrap(paramString), paramImageView, paramh, paramInt, paramBoolean);
  }
  
  public static void c()
  {
    a().clearMemoryCache();
  }
  
  public static void d()
  {
    a().clearDiskCache();
  }
  
  public static void e()
  {
    c();
    d();
  }
  
  private static void f()
  {
    if (b == null) {
      b = new DisplayImageOptions.Builder().bitmapConfig(Bitmap.Config.RGB_565).imageScaleType(ImageScaleType.IN_SAMPLE_INT).considerExifParams(true).cacheInMemory(true).cacheOnDisk(false).build();
    }
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.h.a.e
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */