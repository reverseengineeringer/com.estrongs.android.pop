package com.nostra13.universalimageloader.core;

import android.graphics.Bitmap;
import android.os.Handler;
import android.os.Looper;
import android.text.TextUtils;
import android.widget.ImageView;
import com.nostra13.universalimageloader.cache.disc.DiskCache;
import com.nostra13.universalimageloader.cache.memory.MemoryCache;
import com.nostra13.universalimageloader.core.assist.ImageSize;
import com.nostra13.universalimageloader.core.assist.LoadedFrom;
import com.nostra13.universalimageloader.core.assist.ViewScaleType;
import com.nostra13.universalimageloader.core.display.BitmapDisplayer;
import com.nostra13.universalimageloader.core.imageaware.ImageAware;
import com.nostra13.universalimageloader.core.imageaware.ImageViewAware;
import com.nostra13.universalimageloader.core.imageaware.NonViewAware;
import com.nostra13.universalimageloader.core.listener.ImageLoadingListener;
import com.nostra13.universalimageloader.core.listener.ImageLoadingProgressListener;
import com.nostra13.universalimageloader.core.listener.SimpleImageLoadingListener;
import com.nostra13.universalimageloader.utils.ImageSizeUtils;
import com.nostra13.universalimageloader.utils.L;
import com.nostra13.universalimageloader.utils.MemoryCacheUtils;

public class ImageLoader
{
  private static final String ERROR_INIT_CONFIG_WITH_NULL = "ImageLoader configuration can not be initialized with null";
  private static final String ERROR_NOT_INIT = "ImageLoader must be init with configuration before using";
  private static final String ERROR_WRONG_ARGUMENTS = "Wrong arguments were passed to displayImage() method (ImageView reference must not be null)";
  static final String LOG_DESTROY = "Destroy ImageLoader";
  static final String LOG_INIT_CONFIG = "Initialize ImageLoader with configuration";
  static final String LOG_LOAD_IMAGE_FROM_MEMORY_CACHE = "Load image from memory cache [%s]";
  public static final String TAG = ImageLoader.class.getSimpleName();
  private static final String WARNING_RE_INIT_CONFIG = "Try to initialize ImageLoader which had already been initialized before. To re-init ImageLoader with new configuration call ImageLoader.destroy() at first.";
  private static volatile ImageLoader instance;
  private ImageLoaderConfiguration configuration;
  private ImageLoadingListener defaultListener = new SimpleImageLoadingListener();
  private ImageLoaderEngine engine;
  
  private void checkConfiguration()
  {
    if (configuration == null) {
      throw new IllegalStateException("ImageLoader must be init with configuration before using");
    }
  }
  
  private static Handler defineHandler(DisplayImageOptions paramDisplayImageOptions)
  {
    Handler localHandler = paramDisplayImageOptions.getHandler();
    if (paramDisplayImageOptions.isSyncLoading()) {
      paramDisplayImageOptions = null;
    }
    do
    {
      do
      {
        return paramDisplayImageOptions;
        paramDisplayImageOptions = localHandler;
      } while (localHandler != null);
      paramDisplayImageOptions = localHandler;
    } while (Looper.myLooper() != Looper.getMainLooper());
    return new Handler();
  }
  
  public static ImageLoader getInstance()
  {
    if (instance == null) {}
    try
    {
      if (instance == null) {
        instance = new ImageLoader();
      }
      return instance;
    }
    finally {}
  }
  
  public void cancelDisplayTask(ImageView paramImageView)
  {
    engine.cancelDisplayTaskFor(new ImageViewAware(paramImageView));
  }
  
  public void cancelDisplayTask(ImageAware paramImageAware)
  {
    engine.cancelDisplayTaskFor(paramImageAware);
  }
  
  @Deprecated
  public void clearDiscCache()
  {
    clearDiskCache();
  }
  
  public void clearDiskCache()
  {
    checkConfiguration();
    configuration.diskCache.clear();
  }
  
  public void clearMemoryCache()
  {
    checkConfiguration();
    configuration.memoryCache.clear();
  }
  
  public void denyNetworkDownloads(boolean paramBoolean)
  {
    engine.denyNetworkDownloads(paramBoolean);
  }
  
  public void destroy()
  {
    if (configuration != null) {
      L.d("Destroy ImageLoader", new Object[0]);
    }
    stop();
    configuration.diskCache.close();
    engine = null;
    configuration = null;
  }
  
  public void displayImage(String paramString, ImageView paramImageView)
  {
    displayImage(paramString, new ImageViewAware(paramImageView), null, null, null);
  }
  
  public void displayImage(String paramString, ImageView paramImageView, DisplayImageOptions paramDisplayImageOptions)
  {
    displayImage(paramString, new ImageViewAware(paramImageView), paramDisplayImageOptions, null, null);
  }
  
  public void displayImage(String paramString, ImageView paramImageView, DisplayImageOptions paramDisplayImageOptions, ImageLoadingListener paramImageLoadingListener)
  {
    displayImage(paramString, paramImageView, paramDisplayImageOptions, paramImageLoadingListener, null);
  }
  
  public void displayImage(String paramString, ImageView paramImageView, DisplayImageOptions paramDisplayImageOptions, ImageLoadingListener paramImageLoadingListener, ImageLoadingProgressListener paramImageLoadingProgressListener)
  {
    displayImage(paramString, new ImageViewAware(paramImageView), paramDisplayImageOptions, paramImageLoadingListener, paramImageLoadingProgressListener);
  }
  
  public void displayImage(String paramString, ImageView paramImageView, ImageSize paramImageSize)
  {
    displayImage(paramString, new ImageViewAware(paramImageView), null, paramImageSize, null, null);
  }
  
  public void displayImage(String paramString, ImageView paramImageView, ImageLoadingListener paramImageLoadingListener)
  {
    displayImage(paramString, new ImageViewAware(paramImageView), null, paramImageLoadingListener, null);
  }
  
  public void displayImage(String paramString, ImageAware paramImageAware)
  {
    displayImage(paramString, paramImageAware, null, null, null);
  }
  
  public void displayImage(String paramString, ImageAware paramImageAware, DisplayImageOptions paramDisplayImageOptions)
  {
    displayImage(paramString, paramImageAware, paramDisplayImageOptions, null, null);
  }
  
  public void displayImage(String paramString, ImageAware paramImageAware, DisplayImageOptions paramDisplayImageOptions, ImageSize paramImageSize, ImageLoadingListener paramImageLoadingListener, ImageLoadingProgressListener paramImageLoadingProgressListener)
  {
    checkConfiguration();
    if (paramImageAware == null) {
      throw new IllegalArgumentException("Wrong arguments were passed to displayImage() method (ImageView reference must not be null)");
    }
    if (paramImageLoadingListener == null) {
      paramImageLoadingListener = defaultListener;
    }
    for (;;)
    {
      if (paramDisplayImageOptions == null) {
        paramDisplayImageOptions = configuration.defaultDisplayImageOptions;
      }
      for (;;)
      {
        if (TextUtils.isEmpty(paramString))
        {
          engine.cancelDisplayTaskFor(paramImageAware);
          paramImageLoadingListener.onLoadingStarted(paramString, paramImageAware.getWrappedView());
          if (paramDisplayImageOptions.shouldShowImageForEmptyUri()) {
            paramImageAware.setImageDrawable(paramDisplayImageOptions.getImageForEmptyUri(configuration.resources));
          }
          for (;;)
          {
            paramImageLoadingListener.onLoadingComplete(paramString, paramImageAware.getWrappedView(), null);
            return;
            paramImageAware.setImageDrawable(null);
          }
        }
        if (paramImageSize == null) {
          paramImageSize = ImageSizeUtils.defineTargetSizeForView(paramImageAware, configuration.getMaxImageSize());
        }
        for (;;)
        {
          String str = MemoryCacheUtils.generateKey(paramString, paramImageSize);
          engine.prepareDisplayTaskFor(paramImageAware, str);
          paramImageLoadingListener.onLoadingStarted(paramString, paramImageAware.getWrappedView());
          Bitmap localBitmap = configuration.memoryCache.get(str);
          if ((localBitmap != null) && (!localBitmap.isRecycled()))
          {
            L.d("Load image from memory cache [%s]", new Object[] { str });
            if (paramDisplayImageOptions.shouldPostProcess())
            {
              paramString = new ImageLoadingInfo(paramString, paramImageAware, paramImageSize, str, paramDisplayImageOptions, paramImageLoadingListener, paramImageLoadingProgressListener, engine.getLockForUri(paramString));
              paramString = new ProcessAndDisplayImageTask(engine, localBitmap, paramString, defineHandler(paramDisplayImageOptions));
              if (paramDisplayImageOptions.isSyncLoading())
              {
                paramString.run();
                return;
              }
              engine.submit(paramString);
              return;
            }
            paramDisplayImageOptions.getDisplayer().display(localBitmap, paramImageAware, LoadedFrom.MEMORY_CACHE);
            paramImageLoadingListener.onLoadingComplete(paramString, paramImageAware.getWrappedView(), localBitmap);
            return;
          }
          if (paramDisplayImageOptions.shouldShowImageOnLoading()) {
            paramImageAware.setImageDrawable(paramDisplayImageOptions.getImageOnLoading(configuration.resources));
          }
          for (;;)
          {
            paramString = new ImageLoadingInfo(paramString, paramImageAware, paramImageSize, str, paramDisplayImageOptions, paramImageLoadingListener, paramImageLoadingProgressListener, engine.getLockForUri(paramString));
            paramString = new LoadAndDisplayImageTask(engine, paramString, defineHandler(paramDisplayImageOptions));
            if (!paramDisplayImageOptions.isSyncLoading()) {
              break;
            }
            paramString.run();
            return;
            if (paramDisplayImageOptions.isResetViewBeforeLoading()) {
              paramImageAware.setImageDrawable(null);
            }
          }
          engine.submit(paramString);
          return;
        }
      }
    }
  }
  
  public void displayImage(String paramString, ImageAware paramImageAware, DisplayImageOptions paramDisplayImageOptions, ImageLoadingListener paramImageLoadingListener)
  {
    displayImage(paramString, paramImageAware, paramDisplayImageOptions, paramImageLoadingListener, null);
  }
  
  public void displayImage(String paramString, ImageAware paramImageAware, DisplayImageOptions paramDisplayImageOptions, ImageLoadingListener paramImageLoadingListener, ImageLoadingProgressListener paramImageLoadingProgressListener)
  {
    displayImage(paramString, paramImageAware, paramDisplayImageOptions, null, paramImageLoadingListener, paramImageLoadingProgressListener);
  }
  
  public void displayImage(String paramString, ImageAware paramImageAware, ImageLoadingListener paramImageLoadingListener)
  {
    displayImage(paramString, paramImageAware, null, paramImageLoadingListener, null);
  }
  
  @Deprecated
  public DiskCache getDiscCache()
  {
    return getDiskCache();
  }
  
  public DiskCache getDiskCache()
  {
    checkConfiguration();
    return configuration.diskCache;
  }
  
  public String getLoadingUriForView(ImageView paramImageView)
  {
    return engine.getLoadingUriForView(new ImageViewAware(paramImageView));
  }
  
  public String getLoadingUriForView(ImageAware paramImageAware)
  {
    return engine.getLoadingUriForView(paramImageAware);
  }
  
  public MemoryCache getMemoryCache()
  {
    checkConfiguration();
    return configuration.memoryCache;
  }
  
  public void handleSlowNetwork(boolean paramBoolean)
  {
    engine.handleSlowNetwork(paramBoolean);
  }
  
  public void init(ImageLoaderConfiguration paramImageLoaderConfiguration)
  {
    if (paramImageLoaderConfiguration == null) {
      try
      {
        throw new IllegalArgumentException("ImageLoader configuration can not be initialized with null");
      }
      finally {}
    }
    if (configuration == null)
    {
      L.d("Initialize ImageLoader with configuration", new Object[0]);
      engine = new ImageLoaderEngine(paramImageLoaderConfiguration);
      configuration = paramImageLoaderConfiguration;
    }
    for (;;)
    {
      return;
      L.w("Try to initialize ImageLoader which had already been initialized before. To re-init ImageLoader with new configuration call ImageLoader.destroy() at first.", new Object[0]);
    }
  }
  
  public boolean isInited()
  {
    return configuration != null;
  }
  
  public void loadImage(String paramString, DisplayImageOptions paramDisplayImageOptions, ImageLoadingListener paramImageLoadingListener)
  {
    loadImage(paramString, null, paramDisplayImageOptions, paramImageLoadingListener, null);
  }
  
  public void loadImage(String paramString, ImageSize paramImageSize, DisplayImageOptions paramDisplayImageOptions, ImageLoadingListener paramImageLoadingListener)
  {
    loadImage(paramString, paramImageSize, paramDisplayImageOptions, paramImageLoadingListener, null);
  }
  
  public void loadImage(String paramString, ImageSize paramImageSize, DisplayImageOptions paramDisplayImageOptions, ImageLoadingListener paramImageLoadingListener, ImageLoadingProgressListener paramImageLoadingProgressListener)
  {
    checkConfiguration();
    ImageSize localImageSize = paramImageSize;
    if (paramImageSize == null) {
      localImageSize = configuration.getMaxImageSize();
    }
    if (paramDisplayImageOptions == null) {}
    for (paramImageSize = configuration.defaultDisplayImageOptions;; paramImageSize = paramDisplayImageOptions)
    {
      displayImage(paramString, new NonViewAware(paramString, localImageSize, ViewScaleType.CROP), paramImageSize, paramImageLoadingListener, paramImageLoadingProgressListener);
      return;
    }
  }
  
  public void loadImage(String paramString, ImageSize paramImageSize, ImageLoadingListener paramImageLoadingListener)
  {
    loadImage(paramString, paramImageSize, null, paramImageLoadingListener, null);
  }
  
  public void loadImage(String paramString, ImageLoadingListener paramImageLoadingListener)
  {
    loadImage(paramString, null, null, paramImageLoadingListener, null);
  }
  
  public Bitmap loadImageSync(String paramString)
  {
    return loadImageSync(paramString, null, null);
  }
  
  public Bitmap loadImageSync(String paramString, DisplayImageOptions paramDisplayImageOptions)
  {
    return loadImageSync(paramString, null, paramDisplayImageOptions);
  }
  
  public Bitmap loadImageSync(String paramString, ImageSize paramImageSize)
  {
    return loadImageSync(paramString, paramImageSize, null);
  }
  
  public Bitmap loadImageSync(String paramString, ImageSize paramImageSize, DisplayImageOptions paramDisplayImageOptions)
  {
    Object localObject = paramDisplayImageOptions;
    if (paramDisplayImageOptions == null) {
      localObject = configuration.defaultDisplayImageOptions;
    }
    paramDisplayImageOptions = new DisplayImageOptions.Builder().cloneFrom((DisplayImageOptions)localObject).syncLoading(true).build();
    localObject = new ImageLoader.SyncImageLoadingListener(null);
    loadImage(paramString, paramImageSize, paramDisplayImageOptions, (ImageLoadingListener)localObject);
    return ((ImageLoader.SyncImageLoadingListener)localObject).getLoadedBitmap();
  }
  
  public void pause()
  {
    engine.pause();
  }
  
  public void resume()
  {
    engine.resume();
  }
  
  public void setDefaultLoadingListener(ImageLoadingListener paramImageLoadingListener)
  {
    Object localObject = paramImageLoadingListener;
    if (paramImageLoadingListener == null) {
      localObject = new SimpleImageLoadingListener();
    }
    defaultListener = ((ImageLoadingListener)localObject);
  }
  
  public void stop()
  {
    engine.stop();
  }
}

/* Location:
 * Qualified Name:     com.nostra13.universalimageloader.core.ImageLoader
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */