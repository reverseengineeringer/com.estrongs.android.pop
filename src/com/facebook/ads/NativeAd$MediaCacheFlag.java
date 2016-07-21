package com.facebook.ads;

import java.util.EnumSet;

public enum NativeAd$MediaCacheFlag
{
  public static final EnumSet<MediaCacheFlag> ALL = EnumSet.allOf(MediaCacheFlag.class);
  private final long a;
  
  static
  {
    ICON = new MediaCacheFlag("ICON", 1, 1L);
    IMAGE = new MediaCacheFlag("IMAGE", 2, 2L);
    b = new MediaCacheFlag[] { NONE, ICON, IMAGE };
  }
  
  private NativeAd$MediaCacheFlag(long paramLong)
  {
    a = paramLong;
  }
  
  public long getCacheFlagValue()
  {
    return a;
  }
}

/* Location:
 * Qualified Name:     com.facebook.ads.NativeAd.MediaCacheFlag
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */