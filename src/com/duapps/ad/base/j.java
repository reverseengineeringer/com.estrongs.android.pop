package com.duapps.ad.base;

import android.content.Context;
import com.nostra13.universalimageloader.cache.disc.impl.UnlimitedDiskCache;
import com.nostra13.universalimageloader.core.ImageLoader;
import com.nostra13.universalimageloader.core.ImageLoaderConfiguration.Builder;
import com.nostra13.universalimageloader.utils.StorageUtils;
import java.io.File;

public class j
{
  private static boolean a = false;
  private static boolean b = true;
  
  public static ImageLoader a(Context paramContext)
  {
    if ((b) && (!a)) {}
    try
    {
      if ((b) && (!a))
      {
        b(paramContext);
        a = true;
      }
      return ImageLoader.getInstance();
    }
    finally {}
  }
  
  private static void b(Context paramContext)
  {
    File localFile = StorageUtils.getOwnCacheDirectory(paramContext, "dianxin/imagecache/");
    paramContext = new ImageLoaderConfiguration.Builder(paramContext).diskCacheSize(10485760).discCache(new UnlimitedDiskCache(localFile)).build();
    ImageLoader.getInstance().init(paramContext);
  }
}

/* Location:
 * Qualified Name:     com.duapps.ad.base.j
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */