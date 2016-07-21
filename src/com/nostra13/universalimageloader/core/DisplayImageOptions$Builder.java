package com.nostra13.universalimageloader.core;

import android.graphics.Bitmap.Config;
import android.graphics.BitmapFactory.Options;
import android.graphics.drawable.Drawable;
import android.os.Handler;
import com.nostra13.universalimageloader.core.assist.ImageScaleType;
import com.nostra13.universalimageloader.core.display.BitmapDisplayer;
import com.nostra13.universalimageloader.core.process.BitmapProcessor;

public class DisplayImageOptions$Builder
{
  private boolean cacheInMemory = false;
  private boolean cacheOnDisk = false;
  private boolean considerExifParams = false;
  private BitmapFactory.Options decodingOptions = new BitmapFactory.Options();
  private int delayBeforeLoading = 0;
  private BitmapDisplayer displayer = DefaultConfigurationFactory.createBitmapDisplayer();
  private Object extraForDownloader = null;
  private Handler handler = null;
  private Drawable imageForEmptyUri = null;
  private Drawable imageOnFail = null;
  private Drawable imageOnLoading = null;
  private int imageResForEmptyUri = 0;
  private int imageResOnFail = 0;
  private int imageResOnLoading = 0;
  private ImageScaleType imageScaleType = ImageScaleType.IN_SAMPLE_POWER_OF_2;
  private boolean isSyncLoading = false;
  private BitmapProcessor postProcessor = null;
  private BitmapProcessor preProcessor = null;
  private boolean resetViewBeforeLoading = false;
  
  public Builder bitmapConfig(Bitmap.Config paramConfig)
  {
    if (paramConfig == null) {
      throw new IllegalArgumentException("bitmapConfig can't be null");
    }
    decodingOptions.inPreferredConfig = paramConfig;
    return this;
  }
  
  public DisplayImageOptions build()
  {
    return new DisplayImageOptions(this, null);
  }
  
  @Deprecated
  public Builder cacheInMemory()
  {
    cacheInMemory = true;
    return this;
  }
  
  public Builder cacheInMemory(boolean paramBoolean)
  {
    cacheInMemory = paramBoolean;
    return this;
  }
  
  @Deprecated
  public Builder cacheOnDisc()
  {
    return cacheOnDisk(true);
  }
  
  @Deprecated
  public Builder cacheOnDisc(boolean paramBoolean)
  {
    return cacheOnDisk(paramBoolean);
  }
  
  public Builder cacheOnDisk(boolean paramBoolean)
  {
    cacheOnDisk = paramBoolean;
    return this;
  }
  
  public Builder cloneFrom(DisplayImageOptions paramDisplayImageOptions)
  {
    imageResOnLoading = DisplayImageOptions.access$1900(paramDisplayImageOptions);
    imageResForEmptyUri = DisplayImageOptions.access$2000(paramDisplayImageOptions);
    imageResOnFail = DisplayImageOptions.access$2100(paramDisplayImageOptions);
    imageOnLoading = DisplayImageOptions.access$2200(paramDisplayImageOptions);
    imageForEmptyUri = DisplayImageOptions.access$2300(paramDisplayImageOptions);
    imageOnFail = DisplayImageOptions.access$2400(paramDisplayImageOptions);
    resetViewBeforeLoading = DisplayImageOptions.access$2500(paramDisplayImageOptions);
    cacheInMemory = DisplayImageOptions.access$2600(paramDisplayImageOptions);
    cacheOnDisk = DisplayImageOptions.access$2700(paramDisplayImageOptions);
    imageScaleType = DisplayImageOptions.access$2800(paramDisplayImageOptions);
    decodingOptions = DisplayImageOptions.access$2900(paramDisplayImageOptions);
    delayBeforeLoading = DisplayImageOptions.access$3000(paramDisplayImageOptions);
    considerExifParams = DisplayImageOptions.access$3100(paramDisplayImageOptions);
    extraForDownloader = DisplayImageOptions.access$3200(paramDisplayImageOptions);
    preProcessor = DisplayImageOptions.access$3300(paramDisplayImageOptions);
    postProcessor = DisplayImageOptions.access$3400(paramDisplayImageOptions);
    displayer = DisplayImageOptions.access$3500(paramDisplayImageOptions);
    handler = DisplayImageOptions.access$3600(paramDisplayImageOptions);
    isSyncLoading = DisplayImageOptions.access$3700(paramDisplayImageOptions);
    return this;
  }
  
  public Builder considerExifParams(boolean paramBoolean)
  {
    considerExifParams = paramBoolean;
    return this;
  }
  
  public Builder decodingOptions(BitmapFactory.Options paramOptions)
  {
    if (paramOptions == null) {
      throw new IllegalArgumentException("decodingOptions can't be null");
    }
    decodingOptions = paramOptions;
    return this;
  }
  
  public Builder delayBeforeLoading(int paramInt)
  {
    delayBeforeLoading = paramInt;
    return this;
  }
  
  public Builder displayer(BitmapDisplayer paramBitmapDisplayer)
  {
    if (paramBitmapDisplayer == null) {
      throw new IllegalArgumentException("displayer can't be null");
    }
    displayer = paramBitmapDisplayer;
    return this;
  }
  
  public Builder extraForDownloader(Object paramObject)
  {
    extraForDownloader = paramObject;
    return this;
  }
  
  public Builder handler(Handler paramHandler)
  {
    handler = paramHandler;
    return this;
  }
  
  public Builder imageScaleType(ImageScaleType paramImageScaleType)
  {
    imageScaleType = paramImageScaleType;
    return this;
  }
  
  public Builder postProcessor(BitmapProcessor paramBitmapProcessor)
  {
    postProcessor = paramBitmapProcessor;
    return this;
  }
  
  public Builder preProcessor(BitmapProcessor paramBitmapProcessor)
  {
    preProcessor = paramBitmapProcessor;
    return this;
  }
  
  public Builder resetViewBeforeLoading()
  {
    resetViewBeforeLoading = true;
    return this;
  }
  
  public Builder resetViewBeforeLoading(boolean paramBoolean)
  {
    resetViewBeforeLoading = paramBoolean;
    return this;
  }
  
  public Builder showImageForEmptyUri(int paramInt)
  {
    imageResForEmptyUri = paramInt;
    return this;
  }
  
  public Builder showImageForEmptyUri(Drawable paramDrawable)
  {
    imageForEmptyUri = paramDrawable;
    return this;
  }
  
  public Builder showImageOnFail(int paramInt)
  {
    imageResOnFail = paramInt;
    return this;
  }
  
  public Builder showImageOnFail(Drawable paramDrawable)
  {
    imageOnFail = paramDrawable;
    return this;
  }
  
  public Builder showImageOnLoading(int paramInt)
  {
    imageResOnLoading = paramInt;
    return this;
  }
  
  public Builder showImageOnLoading(Drawable paramDrawable)
  {
    imageOnLoading = paramDrawable;
    return this;
  }
  
  @Deprecated
  public Builder showStubImage(int paramInt)
  {
    imageResOnLoading = paramInt;
    return this;
  }
  
  Builder syncLoading(boolean paramBoolean)
  {
    isSyncLoading = paramBoolean;
    return this;
  }
}

/* Location:
 * Qualified Name:     com.nostra13.universalimageloader.core.DisplayImageOptions.Builder
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */