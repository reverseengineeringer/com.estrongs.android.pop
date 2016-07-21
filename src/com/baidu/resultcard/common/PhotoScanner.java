package com.baidu.resultcard.common;

import android.content.ContentResolver;
import android.content.Context;
import android.database.Cursor;
import android.net.Uri;
import android.os.Handler;
import android.provider.MediaStore.Images.Media;
import android.text.TextUtils;
import com.baidu.resultcard.CardLibrary;
import com.baidu.scenery.dispatcher.RuleUtils;
import com.baidu.scenery.utils.LogHelper;
import com.dianxinos.library.dxbase.o;
import java.io.File;
import java.util.HashSet;
import java.util.Iterator;
import java.util.Set;
import java.util.concurrent.ConcurrentHashMap;

public class PhotoScanner
{
  private static PhotoScanner sInstance;
  private Context mContext;
  private Handler mHandler;
  private ConcurrentHashMap<Long, Integer> mImageMap = new ConcurrentHashMap();
  private HashSet<Long> mRemoveSet = new HashSet();
  private volatile long mRemoveTimeStamp = 0L;
  
  private PhotoScanner(Context paramContext)
  {
    mContext = paramContext;
    mHandler = new Handler(o.c());
  }
  
  private void __initPhotoNum()
  {
    Object localObject1 = MediaStore.Images.Media.EXTERNAL_CONTENT_URI;
    localObject1 = mContext.getContentResolver().query((Uri)localObject1, new String[] { "_data" }, "mime_type != ? AND (_data LIKE  ? OR _data LIKE  ? OR _data LIKE ?)", new String[] { "image/gif", "%/DCIM/CAMERA/%", "%/DCIM/___MEDIA%", "%/DCIM/___ANDRO%" }, null);
    if (CardLibrary.sDebug)
    {
      LogHelper.d("SDKCard", "PhotoScanner cursor = " + localObject1);
      LogHelper.d("SDKCard", "PhotoScanner cursor.count = " + ((Cursor)localObject1).getCount());
    }
    if ((localObject1 == null) || (((Cursor)localObject1).getCount() <= 0)) {}
    do
    {
      return;
      if (mImageMap.size() > 0) {
        mImageMap.clear();
      }
      long l1 = PhotoDbAdapter.getInstance(mContext).query(mImageMap);
      for (;;)
      {
        try
        {
          if (!((Cursor)localObject1).moveToNext()) {
            break;
          }
          String str = ((Cursor)localObject1).getString(((Cursor)localObject1).getColumnIndexOrThrow("_data"));
          if (!TextUtils.isEmpty(str))
          {
            if (CardLibrary.sDebug) {
              LogHelper.d("SDKCard", "PhotoScanner path " + str);
            }
            File localFile = new File(str);
            if ((localFile.exists()) && (RuleUtils.isFaceImage(mContext, str)))
            {
              long l2 = localFile.lastModified();
              if (l2 > l1)
              {
                long l3 = l2 / 86400000L;
                int i = (int)(System.currentTimeMillis() / 86400000L - l3);
                if ((i >= 0) && (i <= 20))
                {
                  PhotoDbAdapter.getInstance(mContext).insert(l2, str);
                  if (mImageMap.containsKey(Long.valueOf(l3))) {
                    mImageMap.put(Long.valueOf(l3), Integer.valueOf(((Integer)mImageMap.get(Long.valueOf(l3))).intValue() + 1));
                  } else {
                    mImageMap.put(Long.valueOf(l3), Integer.valueOf(1));
                  }
                }
              }
            }
          }
        }
        finally
        {
          if (localObject1 != null) {
            ((Cursor)localObject1).close();
          }
        }
      }
    } while (localObject1 == null);
    ((Cursor)localObject1).close();
  }
  
  public static PhotoScanner getInstance(Context paramContext)
  {
    if (sInstance == null) {}
    try
    {
      if (sInstance == null) {
        sInstance = new PhotoScanner(paramContext);
      }
      return sInstance;
    }
    finally {}
  }
  
  public int getPhotoNum(int paramInt)
  {
    long l1 = System.currentTimeMillis();
    long l2 = l1 / 86400000L;
    HashSet localHashSet = new HashSet();
    ??? = mImageMap.keySet().iterator();
    int i = 0;
    if (((Iterator)???).hasNext())
    {
      Long localLong = (Long)((Iterator)???).next();
      if (l2 - localLong.longValue() < paramInt) {
        i = ((Integer)mImageMap.get(localLong)).intValue() + i;
      }
      for (;;)
      {
        break;
        localHashSet.add(localLong);
      }
    }
    mRemoveTimeStamp = (l1 - paramInt * 86400000L);
    synchronized (mRemoveSet)
    {
      mRemoveSet.clear();
      mRemoveSet.addAll(localHashSet);
      return i;
    }
  }
  
  public void initPhotoNum()
  {
    new Thread(new PhotoScanner.1(this)).start();
  }
  
  public void updatePhotoNum(long paramLong, String arg3)
  {
    long l = paramLong / 86400000L;
    if (mImageMap.containsKey(Long.valueOf(l))) {
      mImageMap.put(Long.valueOf(l), Integer.valueOf(((Integer)mImageMap.get(Long.valueOf(l))).intValue() + 1));
    }
    for (;;)
    {
      mHandler.post(new PhotoScanner.2(this, paramLong, ???));
      synchronized (mRemoveSet)
      {
        if (mRemoveSet.size() <= 0) {
          break label171;
        }
        Iterator localIterator = mRemoveSet.iterator();
        if (!localIterator.hasNext()) {
          break;
        }
        Long localLong = (Long)localIterator.next();
        mImageMap.remove(localLong);
      }
      mImageMap.put(Long.valueOf(l), Integer.valueOf(1));
    }
    mRemoveSet.clear();
    label171:
    if (mRemoveTimeStamp > 0L)
    {
      paramLong = mRemoveTimeStamp;
      mHandler.post(new PhotoScanner.3(this, paramLong));
      mRemoveTimeStamp = 0L;
    }
  }
}

/* Location:
 * Qualified Name:     com.baidu.resultcard.common.PhotoScanner
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */