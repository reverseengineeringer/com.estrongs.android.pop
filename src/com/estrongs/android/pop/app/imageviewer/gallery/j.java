package com.estrongs.android.pop.app.imageviewer.gallery;

import android.content.ContentResolver;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory.Options;
import android.net.Uri;
import android.os.ParcelFileDescriptor;
import com.estrongs.android.pop.app.imageviewer.BitmapManager;
import com.estrongs.android.pop.app.imageviewer.ao;
import com.estrongs.android.util.l;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.InputStream;

public class j
  implements e
{
  private final Uri a;
  private final f b;
  private final ContentResolver c;
  private long d;
  private int e = 0;
  
  public j(f paramf, ContentResolver paramContentResolver, Uri paramUri)
  {
    this(paramf, paramContentResolver, paramUri, 0L);
  }
  
  public j(f paramf, ContentResolver paramContentResolver, Uri paramUri, long paramLong)
  {
    b = paramf;
    c = paramContentResolver;
    a = paramUri;
    d = paramLong;
  }
  
  private InputStream a()
  {
    try
    {
      if (a.getScheme().equals("file")) {
        return new FileInputStream(a.getPath());
      }
      InputStream localInputStream = c.openInputStream(a);
      return localInputStream;
    }
    catch (FileNotFoundException localFileNotFoundException) {}
    return null;
  }
  
  private ParcelFileDescriptor c()
  {
    try
    {
      if (a.getScheme().equals("file")) {
        return ParcelFileDescriptor.open(new File(a.getPath()), 268435456);
      }
      ParcelFileDescriptor localParcelFileDescriptor = c.openFileDescriptor(a, "r");
      return localParcelFileDescriptor;
    }
    catch (FileNotFoundException localFileNotFoundException) {}
    return null;
  }
  
  private BitmapFactory.Options e()
  {
    ParcelFileDescriptor localParcelFileDescriptor = c();
    if (localParcelFileDescriptor == null) {
      return null;
    }
    try
    {
      BitmapFactory.Options localOptions = new BitmapFactory.Options();
      inJustDecodeBounds = true;
      BitmapManager.a().a(localParcelFileDescriptor.getFileDescriptor(), localOptions);
      return localOptions;
    }
    finally
    {
      com.estrongs.fs.util.j.a(localParcelFileDescriptor);
    }
  }
  
  public Bitmap a(int paramInt1, int paramInt2)
  {
    return a(paramInt1, paramInt2, true, false);
  }
  
  public Bitmap a(int paramInt1, int paramInt2, boolean paramBoolean)
  {
    return a(paramInt1, paramInt2, paramBoolean, false);
  }
  
  public Bitmap a(int paramInt1, int paramInt2, boolean paramBoolean1, boolean paramBoolean2)
  {
    try
    {
      Bitmap localBitmap = ao.a(paramInt1, paramInt2, c(), paramBoolean2);
      return localBitmap;
    }
    catch (Exception localException)
    {
      l.c("UriImage", "got exception decoding bitmap ", localException);
    }
    return null;
  }
  
  public Bitmap a(boolean paramBoolean)
  {
    return a(320, 96000, paramBoolean);
  }
  
  public int b()
  {
    return e;
  }
  
  public String d()
  {
    return a.getPath();
  }
  
  public Uri f()
  {
    return a;
  }
  
  public InputStream g()
  {
    return a();
  }
  
  public Bitmap h()
  {
    return a(96, 9604, true);
  }
  
  public String i()
  {
    return a.getLastPathSegment();
  }
  
  public String k()
  {
    BitmapFactory.Options localOptions = e();
    if ((localOptions != null) && (outMimeType != null)) {
      return outMimeType;
    }
    return "";
  }
  
  public int l()
  {
    BitmapFactory.Options localOptions = e();
    if (localOptions != null) {
      return outHeight;
    }
    return 0;
  }
  
  public int m()
  {
    BitmapFactory.Options localOptions = e();
    if (localOptions != null) {
      return outWidth;
    }
    return 0;
  }
  
  public long o()
  {
    return d;
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.pop.app.imageviewer.gallery.j
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */