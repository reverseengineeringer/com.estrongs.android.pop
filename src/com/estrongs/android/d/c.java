package com.estrongs.android.d;

import android.content.ContentResolver;
import android.content.Context;
import android.content.res.Resources;
import android.database.Cursor;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.graphics.BitmapFactory.Options;
import android.provider.MediaStore.Audio.Media;
import android.util.DisplayMetrics;
import com.estrongs.android.util.aj;
import com.estrongs.android.util.am;
import com.estrongs.fs.h;

public class c
  extends a
{
  private static Bitmap b = null;
  
  c(Context paramContext)
  {
    super(paramContext);
  }
  
  protected String a()
  {
    String str2 = am.a(b(), ".albumart", true);
    String str1 = str2;
    if (str2 == null) {
      str1 = am.a(a.getCacheDir(), ".albumart", false);
    }
    return str1;
  }
  
  protected Bitmap c(h paramh)
  {
    float f2 = 0.0F;
    Object localObject = paramh.getAbsolutePath();
    paramh = (h)localObject;
    if (((String)localObject).endsWith("/"))
    {
      paramh = (h)localObject;
      if (!((String)localObject).equals("/")) {
        paramh = ((String)localObject).substring(0, ((String)localObject).length() - 1);
      }
    }
    localObject = paramh;
    if (paramh.startsWith("file://")) {
      localObject = paramh.replaceAll("file://", "");
    }
    if (am.ba((String)localObject)) {}
    for (paramh = am.bE((String)localObject);; paramh = (h)localObject)
    {
      Cursor localCursor = a.getContentResolver().query(MediaStore.Audio.Media.EXTERNAL_CONTENT_URI, new String[] { "_id", "album_id", "album_key" }, "_data=?", new String[] { paramh }, null);
      float f1;
      if (localCursor.moveToFirst())
      {
        long l1 = localCursor.getLong(0);
        long l2 = localCursor.getLong(1);
        if (localCursor.getString(2) != null)
        {
          localObject = aj.a(a, l1, l2);
          int i = f.e();
          paramh = (h)localObject;
          if (localObject != null) {
            if (((Bitmap)localObject).getWidth() == i)
            {
              paramh = (h)localObject;
              if (((Bitmap)localObject).getHeight() == i) {}
            }
            else
            {
              f1 = ((Bitmap)localObject).getWidth();
              float f5 = ((Bitmap)localObject).getHeight();
              float f3 = i;
              float f4 = i;
              float f6 = Math.min(f1 / f3, f5 / f4);
              Bitmap localBitmap = Bitmap.createScaledBitmap((Bitmap)localObject, (int)(f1 / f6), (int)(f5 / f6), true);
              ((Bitmap)localObject).recycle();
              if (localBitmap.getWidth() < f3) {
                break label446;
              }
              f1 = (localBitmap.getWidth() - f3) / 2.0F;
              i = (int)f1;
              f1 = f2;
              if (localBitmap.getHeight() >= f4) {
                f1 = (localBitmap.getHeight() - f4) / 2.0F;
              }
              paramh = Bitmap.createBitmap(localBitmap, i, (int)f1, (int)f3, (int)f4);
              localBitmap.recycle();
            }
          }
        }
      }
      for (;;)
      {
        localCursor.close();
        localObject = paramh;
        if (paramh != null)
        {
          if (b == null)
          {
            localObject = new BitmapFactory.Options();
            inScaled = false;
            b = BitmapFactory.decodeResource(a.getResources(), 2130837866, (BitmapFactory.Options)localObject);
            b.setDensity(a.getResources().getDisplayMetrics().densityDpi);
          }
          localObject = a(paramh, b);
          paramh.recycle();
        }
        return (Bitmap)localObject;
        label446:
        f1 = 0.0F;
        break;
        paramh = null;
      }
    }
  }
  
  public String[] d()
  {
    return new String[] { "131104" };
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.d.c
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */