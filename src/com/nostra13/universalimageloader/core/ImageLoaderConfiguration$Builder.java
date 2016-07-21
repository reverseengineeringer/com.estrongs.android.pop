package com.nostra13.universalimageloader.core;

import android.content.Context;
import com.nostra13.universalimageloader.cache.disc.DiskCache;
import com.nostra13.universalimageloader.cache.disc.naming.FileNameGenerator;
import com.nostra13.universalimageloader.cache.memory.MemoryCache;
import com.nostra13.universalimageloader.cache.memory.impl.FuzzyKeyMemoryCache;
import com.nostra13.universalimageloader.core.assist.QueueProcessingType;
import com.nostra13.universalimageloader.core.decode.ImageDecoder;
import com.nostra13.universalimageloader.core.download.ImageDownloader;
import com.nostra13.universalimageloader.core.process.BitmapProcessor;
import com.nostra13.universalimageloader.utils.L;
import com.nostra13.universalimageloader.utils.MemoryCacheUtils;
import java.util.concurrent.Executor;

public class ImageLoaderConfiguration$Builder
{
  public static final QueueProcessingType DEFAULT_TASK_PROCESSING_TYPE = QueueProcessingType.FIFO;
  public static final int DEFAULT_THREAD_POOL_SIZE = 3;
  public static final int DEFAULT_THREAD_PRIORITY = 3;
  private static final String WARNING_OVERLAP_DISK_CACHE_NAME_GENERATOR = "diskCache() and diskCacheFileNameGenerator() calls overlap each other";
  private static final String WARNING_OVERLAP_DISK_CACHE_PARAMS = "diskCache(), diskCacheSize() and diskCacheFileCount calls overlap each other";
  private static final String WARNING_OVERLAP_EXECUTOR = "threadPoolSize(), threadPriority() and tasksProcessingOrder() calls can overlap taskExecutor() and taskExecutorForCachedImages() calls.";
  private static final String WARNING_OVERLAP_MEMORY_CACHE = "memoryCache() and memoryCacheSize() calls overlap each other";
  private Context context;
  private boolean customExecutor = false;
  private boolean customExecutorForCachedImages = false;
  private ImageDecoder decoder;
  private DisplayImageOptions defaultDisplayImageOptions = null;
  private boolean denyCacheImageMultipleSizesInMemory = false;
  private DiskCache diskCache = null;
  private int diskCacheFileCount = 0;
  private FileNameGenerator diskCacheFileNameGenerator = null;
  private long diskCacheSize = 0L;
  private ImageDownloader downloader = null;
  private int maxImageHeightForDiskCache = 0;
  private int maxImageHeightForMemoryCache = 0;
  private int maxImageWidthForDiskCache = 0;
  private int maxImageWidthForMemoryCache = 0;
  private MemoryCache memoryCache = null;
  private int memoryCacheSize = 0;
  private BitmapProcessor processorForDiskCache = null;
  private Executor taskExecutor = null;
  private Executor taskExecutorForCachedImages = null;
  private QueueProcessingType tasksProcessingType = DEFAULT_TASK_PROCESSING_TYPE;
  private int threadPoolSize = 3;
  private int threadPriority = 3;
  private boolean writeLogs = false;
  
  public ImageLoaderConfiguration$Builder(Context paramContext)
  {
    context = paramContext.getApplicationContext();
  }
  
  private void initEmptyFieldsWithDefaultValues()
  {
    if (taskExecutor == null)
    {
      taskExecutor = DefaultConfigurationFactory.createExecutor(threadPoolSize, threadPriority, tasksProcessingType);
      if (taskExecutorForCachedImages != null) {
        break label202;
      }
      taskExecutorForCachedImages = DefaultConfigurationFactory.createExecutor(threadPoolSize, threadPriority, tasksProcessingType);
    }
    for (;;)
    {
      if (diskCache == null)
      {
        if (diskCacheFileNameGenerator == null) {
          diskCacheFileNameGenerator = DefaultConfigurationFactory.createFileNameGenerator();
        }
        diskCache = DefaultConfigurationFactory.createDiskCache(context, diskCacheFileNameGenerator, diskCacheSize, diskCacheFileCount);
      }
      if (memoryCache == null) {
        memoryCache = DefaultConfigurationFactory.createMemoryCache(context, memoryCacheSize);
      }
      if (denyCacheImageMultipleSizesInMemory) {
        memoryCache = new FuzzyKeyMemoryCache(memoryCache, MemoryCacheUtils.createFuzzyKeyComparator());
      }
      if (downloader == null) {
        downloader = DefaultConfigurationFactory.createImageDownloader(context);
      }
      if (decoder == null) {
        decoder = DefaultConfigurationFactory.createImageDecoder(writeLogs);
      }
      if (defaultDisplayImageOptions == null) {
        defaultDisplayImageOptions = DisplayImageOptions.createSimple();
      }
      return;
      customExecutor = true;
      break;
      label202:
      customExecutorForCachedImages = true;
    }
  }
  
  public ImageLoaderConfiguration build()
  {
    initEmptyFieldsWithDefaultValues();
    return new ImageLoaderConfiguration(this, null);
  }
  
  public Builder defaultDisplayImageOptions(DisplayImageOptions paramDisplayImageOptions)
  {
    defaultDisplayImageOptions = paramDisplayImageOptions;
    return this;
  }
  
  public Builder denyCacheImageMultipleSizesInMemory()
  {
    denyCacheImageMultipleSizesInMemory = true;
    return this;
  }
  
  @Deprecated
  public Builder discCache(DiskCache paramDiskCache)
  {
    return diskCache(paramDiskCache);
  }
  
  @Deprecated
  public Builder discCacheExtraOptions(int paramInt1, int paramInt2, BitmapProcessor paramBitmapProcessor)
  {
    return diskCacheExtraOptions(paramInt1, paramInt2, paramBitmapProcessor);
  }
  
  @Deprecated
  public Builder discCacheFileCount(int paramInt)
  {
    return diskCacheFileCount(paramInt);
  }
  
  @Deprecated
  public Builder discCacheFileNameGenerator(FileNameGenerator paramFileNameGenerator)
  {
    return diskCacheFileNameGenerator(paramFileNameGenerator);
  }
  
  @Deprecated
  public Builder discCacheSize(int paramInt)
  {
    return diskCacheSize(paramInt);
  }
  
  public Builder diskCache(DiskCache paramDiskCache)
  {
    if ((diskCacheSize > 0L) || (diskCacheFileCount > 0)) {
      L.w("diskCache(), diskCacheSize() and diskCacheFileCount calls overlap each other", new Object[0]);
    }
    if (diskCacheFileNameGenerator != null) {
      L.w("diskCache() and diskCacheFileNameGenerator() calls overlap each other", new Object[0]);
    }
    diskCache = paramDiskCache;
    return this;
  }
  
  public Builder diskCacheExtraOptions(int paramInt1, int paramInt2, BitmapProcessor paramBitmapProcessor)
  {
    maxImageWidthForDiskCache = paramInt1;
    maxImageHeightForDiskCache = paramInt2;
    processorForDiskCache = paramBitmapProcessor;
    return this;
  }
  
  public Builder diskCacheFileCount(int paramInt)
  {
    if (paramInt <= 0) {
      throw new IllegalArgumentException("maxFileCount must be a positive number");
    }
    if (diskCache != null) {
      L.w("diskCache(), diskCacheSize() and diskCacheFileCount calls overlap each other", new Object[0]);
    }
    diskCacheFileCount = paramInt;
    return this;
  }
  
  public Builder diskCacheFileNameGenerator(FileNameGenerator paramFileNameGenerator)
  {
    if (diskCache != null) {
      L.w("diskCache() and diskCacheFileNameGenerator() calls overlap each other", new Object[0]);
    }
    diskCacheFileNameGenerator = paramFileNameGenerator;
    return this;
  }
  
  public Builder diskCacheSize(int paramInt)
  {
    if (paramInt <= 0) {
      throw new IllegalArgumentException("maxCacheSize must be a positive number");
    }
    if (diskCache != null) {
      L.w("diskCache(), diskCacheSize() and diskCacheFileCount calls overlap each other", new Object[0]);
    }
    diskCacheSize = paramInt;
    return this;
  }
  
  public Builder imageDecoder(ImageDecoder paramImageDecoder)
  {
    decoder = paramImageDecoder;
    return this;
  }
  
  public Builder imageDownloader(ImageDownloader paramImageDownloader)
  {
    downloader = paramImageDownloader;
    return this;
  }
  
  public Builder memoryCache(MemoryCache paramMemoryCache)
  {
    if (memoryCacheSize != 0) {
      L.w("memoryCache() and memoryCacheSize() calls overlap each other", new Object[0]);
    }
    memoryCache = paramMemoryCache;
    return this;
  }
  
  public Builder memoryCacheExtraOptions(int paramInt1, int paramInt2)
  {
    maxImageWidthForMemoryCache = paramInt1;
    maxImageHeightForMemoryCache = paramInt2;
    return this;
  }
  
  public Builder memoryCacheSize(int paramInt)
  {
    if (paramInt <= 0) {
      throw new IllegalArgumentException("memoryCacheSize must be a positive number");
    }
    if (memoryCache != null) {
      L.w("memoryCache() and memoryCacheSize() calls overlap each other", new Object[0]);
    }
    memoryCacheSize = paramInt;
    return this;
  }
  
  public Builder memoryCacheSizePercentage(int paramInt)
  {
    if ((paramInt <= 0) || (paramInt >= 100)) {
      throw new IllegalArgumentException("availableMemoryPercent must be in range (0 < % < 100)");
    }
    if (memoryCache != null) {
      L.w("memoryCache() and memoryCacheSize() calls overlap each other", new Object[0]);
    }
    memoryCacheSize = ((int)((float)Runtime.getRuntime().maxMemory() * (paramInt / 100.0F)));
    return this;
  }
  
  public Builder taskExecutor(Executor paramExecutor)
  {
    if ((threadPoolSize != 3) || (threadPriority != 3) || (tasksProcessingType != DEFAULT_TASK_PROCESSING_TYPE)) {
      L.w("threadPoolSize(), threadPriority() and tasksProcessingOrder() calls can overlap taskExecutor() and taskExecutorForCachedImages() calls.", new Object[0]);
    }
    taskExecutor = paramExecutor;
    return this;
  }
  
  public Builder taskExecutorForCachedImages(Executor paramExecutor)
  {
    if ((threadPoolSize != 3) || (threadPriority != 3) || (tasksProcessingType != DEFAULT_TASK_PROCESSING_TYPE)) {
      L.w("threadPoolSize(), threadPriority() and tasksProcessingOrder() calls can overlap taskExecutor() and taskExecutorForCachedImages() calls.", new Object[0]);
    }
    taskExecutorForCachedImages = paramExecutor;
    return this;
  }
  
  public Builder tasksProcessingOrder(QueueProcessingType paramQueueProcessingType)
  {
    if ((taskExecutor != null) || (taskExecutorForCachedImages != null)) {
      L.w("threadPoolSize(), threadPriority() and tasksProcessingOrder() calls can overlap taskExecutor() and taskExecutorForCachedImages() calls.", new Object[0]);
    }
    tasksProcessingType = paramQueueProcessingType;
    return this;
  }
  
  public Builder threadPoolSize(int paramInt)
  {
    if ((taskExecutor != null) || (taskExecutorForCachedImages != null)) {
      L.w("threadPoolSize(), threadPriority() and tasksProcessingOrder() calls can overlap taskExecutor() and taskExecutorForCachedImages() calls.", new Object[0]);
    }
    threadPoolSize = paramInt;
    return this;
  }
  
  public Builder threadPriority(int paramInt)
  {
    if ((taskExecutor != null) || (taskExecutorForCachedImages != null)) {
      L.w("threadPoolSize(), threadPriority() and tasksProcessingOrder() calls can overlap taskExecutor() and taskExecutorForCachedImages() calls.", new Object[0]);
    }
    if (paramInt < 1)
    {
      threadPriority = 1;
      return this;
    }
    if (paramInt > 10)
    {
      threadPriority = 10;
      return this;
    }
    threadPriority = paramInt;
    return this;
  }
  
  public Builder writeDebugLogs()
  {
    writeLogs = true;
    return this;
  }
}

/* Location:
 * Qualified Name:     com.nostra13.universalimageloader.core.ImageLoaderConfiguration.Builder
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */