package com.estrongs.android.util;

import android.content.ContentResolver;
import android.content.ContentUris;
import android.content.ContentValues;
import android.content.Context;
import android.database.Cursor;
import android.graphics.Bitmap;
import android.graphics.Bitmap.Config;
import android.graphics.BitmapFactory;
import android.graphics.BitmapFactory.Options;
import android.net.Uri;
import android.os.ParcelFileDescriptor;
import android.provider.MediaStore.Audio.Media;
import android.webkit.MimeTypeMap;
import com.estrongs.fs.util.j;
import java.io.File;
import java.io.IOException;
import java.io.InputStream;

public class aj
{
  private static final Uri a = Uri.parse("content://media/external/audio/albumart");
  private static final BitmapFactory.Options b = new BitmapFactory.Options();
  
  public static Bitmap a(Context paramContext, long paramLong1, long paramLong2)
  {
    Object localObject2 = null;
    Object localObject1 = null;
    if (paramLong2 < 0L) {
      if (paramLong1 >= 0L)
      {
        localObject2 = b(paramContext, paramLong1, -1L);
        if (localObject2 == null) {}
      }
    }
    Object localObject3;
    for (;;)
    {
      return (Bitmap)localObject2;
      return null;
      Object localObject4 = paramContext.getContentResolver();
      Object localObject5 = ContentUris.withAppendedId(a, paramLong2);
      if (localObject5 != null) {
        try
        {
          localObject4 = ((ContentResolver)localObject4).openInputStream((Uri)localObject5);
          localObject1 = localObject4;
          localObject2 = localObject4;
          binPreferredConfig = Bitmap.Config.RGB_565;
          localObject1 = localObject4;
          localObject2 = localObject4;
          localObject5 = BitmapFactory.decodeStream((InputStream)localObject4, null, b);
          paramContext = (Context)localObject5;
          localObject2 = paramContext;
          if (localObject4 != null) {
            try
            {
              ((InputStream)localObject4).close();
              return paramContext;
            }
            catch (IOException localIOException1)
            {
              return paramContext;
            }
          }
        }
        catch (Exception localException)
        {
          localObject3 = localIOException1;
          localObject4 = b(paramContext, paramLong1, paramLong2);
          paramContext = (Context)localObject4;
          if (localObject4 != null)
          {
            paramContext = (Context)localObject4;
            localObject3 = localIOException1;
            if (((Bitmap)localObject4).getConfig() == null)
            {
              localObject3 = localIOException1;
              paramContext = ((Bitmap)localObject4).copy(Bitmap.Config.RGB_565, false);
            }
          }
          localObject3 = paramContext;
          if (localIOException1 != null) {
            try
            {
              localIOException1.close();
              return paramContext;
            }
            catch (IOException localIOException2)
            {
              return paramContext;
            }
          }
        }
        finally
        {
          if (localObject3 == null) {}
        }
      }
    }
    try
    {
      ((InputStream)localObject3).close();
      throw paramContext;
      return null;
    }
    catch (IOException localIOException3)
    {
      for (;;) {}
    }
  }
  
  public static Uri a(ContentResolver paramContentResolver, TypedMap paramTypedMap)
  {
    boolean bool2 = false;
    Object localObject2 = paramTypedMap.getString("_data");
    int i = paramTypedMap.getInt("android.intent.extra.ringtone.TYPE");
    long l = paramTypedMap.getLong("_size");
    paramTypedMap = am.d((String)localObject2);
    int j = paramTypedMap.lastIndexOf(".");
    Object localObject3;
    if (j == -1)
    {
      Object localObject1 = localObject2;
      if (((String)localObject2).startsWith("/sdcard/")) {
        localObject1 = am.bE((String)localObject2);
      }
      localObject3 = MimeTypeMap.getSingleton().getMimeTypeFromExtension(j.b((String)localObject1));
      localObject2 = localObject3;
      if (localObject3 == null) {
        localObject2 = "audio/*";
      }
      localObject3 = new ContentValues();
      ((ContentValues)localObject3).put("_data", (String)localObject1);
      ((ContentValues)localObject3).put("title", paramTypedMap);
      ((ContentValues)localObject3).put("_size", Long.valueOf(l));
      ((ContentValues)localObject3).put("mime_type", (String)localObject2);
      if (i != 1) {
        break label237;
      }
      bool1 = true;
      label146:
      ((ContentValues)localObject3).put("is_ringtone", Boolean.valueOf(bool1));
      if (i != 2) {
        break label243;
      }
    }
    label237:
    label243:
    for (boolean bool1 = true;; bool1 = false)
    {
      ((ContentValues)localObject3).put("is_notification", Boolean.valueOf(bool1));
      bool1 = bool2;
      if (i == 4) {
        bool1 = true;
      }
      ((ContentValues)localObject3).put("is_alarm", Boolean.valueOf(bool1));
      ((ContentValues)localObject3).put("is_music", Boolean.valueOf(true));
      paramTypedMap = MediaStore.Audio.Media.EXTERNAL_CONTENT_URI;
      try
      {
        paramContentResolver = paramContentResolver.insert(paramTypedMap, (ContentValues)localObject3);
        return paramContentResolver;
      }
      catch (Exception paramContentResolver)
      {
        paramContentResolver.printStackTrace();
      }
      paramTypedMap = paramTypedMap.substring(0, j);
      break;
      bool1 = false;
      break label146;
    }
    return null;
  }
  
  public static Uri a(ContentResolver paramContentResolver, String paramString, int paramInt)
  {
    Object localObject1 = paramString;
    if (paramString.startsWith("/sdcard/")) {
      localObject1 = am.bE(paramString);
    }
    if (paramInt == 1) {
      paramString = "is_ringtone";
    }
    for (;;)
    {
      Object localObject2 = MediaStore.Audio.Media.EXTERNAL_CONTENT_URI.toString();
      try
      {
        localCursor = paramContentResolver.query(MediaStore.Audio.Media.EXTERNAL_CONTENT_URI, new String[] { "_id", paramString }, "_data=?", new String[] { localObject1 }, null);
        if (localCursor != null) {}
        try
        {
          if (localCursor.getCount() == 0)
          {
            paramString = new File((String)localObject1);
            localObject2 = new TypedMap();
            ((TypedMap)localObject2).put("_data", localObject1);
            ((TypedMap)localObject2).put("android.intent.extra.ringtone.TYPE", Integer.valueOf(paramInt));
            ((TypedMap)localObject2).put("_size", Long.valueOf(paramString.length()));
            paramString = a(paramContentResolver, (TypedMap)localObject2);
            paramContentResolver = paramString;
            if (localCursor != null)
            {
              localCursor.close();
              paramContentResolver = paramString;
            }
          }
          for (;;)
          {
            return paramContentResolver;
            if (paramInt == 2)
            {
              paramString = "is_notification";
              break;
            }
            paramString = "is_alarm";
            break;
            localCursor.moveToFirst();
            int i = localCursor.getInt(0);
            if ((localCursor.getInt(1) == 0) && (paramInt != 0))
            {
              localObject1 = new ContentValues();
              ((ContentValues)localObject1).put(paramString, Boolean.valueOf(true));
            }
            try
            {
              paramContentResolver.update(MediaStore.Audio.Media.EXTERNAL_CONTENT_URI, (ContentValues)localObject1, "_id=" + i, null);
              paramString = Uri.parse((String)localObject2 + "/" + i);
              paramContentResolver = paramString;
              if (localCursor != null)
              {
                localCursor.close();
                return paramString;
              }
            }
            catch (Exception paramContentResolver)
            {
              for (;;)
              {
                paramContentResolver.printStackTrace();
              }
            }
          }
          if (localCursor == null) {
            break label328;
          }
        }
        finally {}
      }
      finally
      {
        Cursor localCursor = null;
      }
    }
    localCursor.close();
    label328:
    throw paramContentResolver;
  }
  
  private static Bitmap b(Context paramContext, long paramLong1, long paramLong2)
  {
    if ((paramLong2 < 0L) && (paramLong1 < 0L)) {
      throw new IllegalArgumentException("Must specify an album or a song id");
    }
    if (paramLong2 < 0L) {}
    try
    {
      localUri = Uri.parse("content://media/external/audio/media/" + paramLong1 + "/albumart");
      paramContext = paramContext.getContentResolver().openFileDescriptor(localUri, "r");
      if (paramContext == null) {
        break label122;
      }
      return BitmapFactory.decodeFileDescriptor(paramContext.getFileDescriptor());
    }
    catch (Exception paramContext) {}
    Uri localUri = ContentUris.withAppendedId(a, paramLong2);
    paramContext = paramContext.getContentResolver().openFileDescriptor(localUri, "r");
    if (paramContext != null)
    {
      paramContext = BitmapFactory.decodeFileDescriptor(paramContext.getFileDescriptor());
      return paramContext;
    }
    label122:
    return null;
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.util.aj
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */