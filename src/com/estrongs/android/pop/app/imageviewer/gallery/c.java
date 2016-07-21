package com.estrongs.android.pop.app.imageviewer.gallery;

import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.graphics.BitmapFactory.Options;
import android.net.Uri;
import android.os.ParcelFileDescriptor;
import com.estrongs.a.p;
import com.estrongs.android.pop.a;
import com.estrongs.android.util.ap;
import com.estrongs.fs.FileSystemException;
import com.estrongs.fs.b.r;
import com.estrongs.fs.d;
import com.estrongs.fs.h;
import com.estrongs.fs.util.j;
import com.estrongs.fs.z;
import java.io.File;
import java.io.FileNotFoundException;
import java.io.InputStream;

public class c
  implements e
{
  private final Uri a;
  private final f b;
  private d c;
  private com.estrongs.fs.c d;
  private BitmapFactory.Options e;
  private int f = 0;
  private h g = null;
  
  public c(f paramf, d paramd, h paramh)
  {
    this(paramf, paramd, paramh.getAbsolutePath());
    g = paramh;
  }
  
  public c(f paramf, d paramd, String paramString)
  {
    b = paramf;
    c = paramd;
    if ((ap.bl(paramString)) && (!paramString.startsWith("file://")))
    {
      a = Uri.fromFile(new File(paramString));
      return;
    }
    a = Uri.parse(paramString);
  }
  
  private static int a(BitmapFactory.Options paramOptions, int paramInt)
  {
    int m = outWidth;
    int k = outHeight;
    int j = Math.max(m / paramInt, k / paramInt);
    if (j <= 1) {}
    do
    {
      return 1;
      int i = j;
      if (j > 1)
      {
        i = j;
        if (m > paramInt)
        {
          i = j;
          if (m / j < paramInt) {
            i = j - 1;
          }
        }
      }
      j = i;
      if (i > 1)
      {
        j = i;
        if (k > paramInt)
        {
          j = i;
          if (k / i < paramInt) {
            j = i - 1;
          }
        }
      }
    } while (j <= 1);
    return j;
  }
  
  private BitmapFactory.Options a(InputStream paramInputStream)
  {
    BitmapFactory.Options localOptions = new BitmapFactory.Options();
    inJustDecodeBounds = true;
    BitmapFactory.decodeStream(paramInputStream, null, localOptions);
    return localOptions;
  }
  
  private ParcelFileDescriptor q()
  {
    try
    {
      if (ap.bl(a.toString())) {
        return ParcelFileDescriptor.open(new File(a.getPath()), 268435456);
      }
      if (ap.bm(a.toString()))
      {
        Object localObject = e();
        if (localObject != null)
        {
          localObject = ParcelFileDescriptor.open((File)localObject, 268435456);
          return (ParcelFileDescriptor)localObject;
        }
      }
    }
    catch (FileNotFoundException localFileNotFoundException) {}
    return null;
  }
  
  private long r()
  {
    if (g == null) {
      g = c.a(d(), false, true);
    }
    if (g != null) {
      return g.lastModified();
    }
    return 0L;
  }
  
  public Bitmap a(int paramInt1, int paramInt2)
  {
    return a(paramInt1, paramInt2, true, false);
  }
  
  public Bitmap a(int paramInt1, int paramInt2, boolean paramBoolean)
  {
    return a(paramInt1, paramInt2, paramBoolean, false);
  }
  
  /* Error */
  public Bitmap a(int paramInt1, int paramInt2, boolean paramBoolean1, boolean paramBoolean2)
  {
    // Byte code:
    //   0: iconst_0
    //   1: istore_3
    //   2: aconst_null
    //   3: astore 6
    //   5: aload_0
    //   6: invokespecial 150	com/estrongs/android/pop/app/imageviewer/gallery/c:q	()Landroid/os/ParcelFileDescriptor;
    //   9: astore 7
    //   11: aload 7
    //   13: ifnull +95 -> 108
    //   16: iload_1
    //   17: iload_2
    //   18: aload 7
    //   20: iload 4
    //   22: invokestatic 155	com/estrongs/android/pop/app/imageviewer/ao:a	(IILandroid/os/ParcelFileDescriptor;Z)Landroid/graphics/Bitmap;
    //   25: astore 5
    //   27: aload 7
    //   29: invokevirtual 158	android/os/ParcelFileDescriptor:close	()V
    //   32: aload 5
    //   34: astore 6
    //   36: aload 6
    //   38: areturn
    //   39: astore 6
    //   41: ldc -96
    //   43: ldc -94
    //   45: aload 6
    //   47: invokestatic 167	com/estrongs/android/util/l:c	(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    //   50: aload 5
    //   52: areturn
    //   53: astore 5
    //   55: ldc -96
    //   57: ldc -87
    //   59: aload 5
    //   61: invokestatic 167	com/estrongs/android/util/l:c	(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    //   64: aload 7
    //   66: invokevirtual 158	android/os/ParcelFileDescriptor:close	()V
    //   69: aconst_null
    //   70: areturn
    //   71: astore 5
    //   73: ldc -96
    //   75: ldc -94
    //   77: aload 5
    //   79: invokestatic 167	com/estrongs/android/util/l:c	(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    //   82: aconst_null
    //   83: areturn
    //   84: astore 5
    //   86: aload 7
    //   88: invokevirtual 158	android/os/ParcelFileDescriptor:close	()V
    //   91: aload 5
    //   93: athrow
    //   94: astore 6
    //   96: ldc -96
    //   98: ldc -94
    //   100: aload 6
    //   102: invokestatic 167	com/estrongs/android/util/l:c	(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    //   105: goto -14 -> 91
    //   108: aload_0
    //   109: getfield 43	com/estrongs/android/pop/app/imageviewer/gallery/c:c	Lcom/estrongs/fs/d;
    //   112: aload_0
    //   113: invokevirtual 127	com/estrongs/android/pop/app/imageviewer/gallery/c:d	()Ljava/lang/String;
    //   116: invokevirtual 172	com/estrongs/fs/d:e	(Ljava/lang/String;)Ljava/io/InputStream;
    //   119: astore 5
    //   121: aload 5
    //   123: ifnull -87 -> 36
    //   126: aload 5
    //   128: astore 6
    //   130: aload_0
    //   131: getfield 174	com/estrongs/android/pop/app/imageviewer/gallery/c:e	Landroid/graphics/BitmapFactory$Options;
    //   134: ifnonnull +31 -> 165
    //   137: aload_0
    //   138: aload_0
    //   139: aload 5
    //   141: invokespecial 176	com/estrongs/android/pop/app/imageviewer/gallery/c:a	(Ljava/io/InputStream;)Landroid/graphics/BitmapFactory$Options;
    //   144: putfield 174	com/estrongs/android/pop/app/imageviewer/gallery/c:e	Landroid/graphics/BitmapFactory$Options;
    //   147: aload 5
    //   149: invokestatic 181	com/estrongs/fs/util/j:a	(Ljava/io/InputStream;)V
    //   152: aload_0
    //   153: getfield 43	com/estrongs/android/pop/app/imageviewer/gallery/c:c	Lcom/estrongs/fs/d;
    //   156: aload_0
    //   157: invokevirtual 127	com/estrongs/android/pop/app/imageviewer/gallery/c:d	()Ljava/lang/String;
    //   160: invokevirtual 172	com/estrongs/fs/d:e	(Ljava/lang/String;)Ljava/io/InputStream;
    //   163: astore 6
    //   165: aload_0
    //   166: invokevirtual 127	com/estrongs/android/pop/app/imageviewer/gallery/c:d	()Ljava/lang/String;
    //   169: invokestatic 184	com/estrongs/android/util/ap:L	(Ljava/lang/String;)Z
    //   172: pop
    //   173: aload_0
    //   174: invokevirtual 127	com/estrongs/android/pop/app/imageviewer/gallery/c:d	()Ljava/lang/String;
    //   177: invokestatic 187	com/estrongs/android/util/ap:bg	(Ljava/lang/String;)Z
    //   180: pop
    //   181: aload_0
    //   182: getfield 174	com/estrongs/android/pop/app/imageviewer/gallery/c:e	Landroid/graphics/BitmapFactory$Options;
    //   185: aload_0
    //   186: getfield 174	com/estrongs/android/pop/app/imageviewer/gallery/c:e	Landroid/graphics/BitmapFactory$Options;
    //   189: sipush 800
    //   192: invokestatic 189	com/estrongs/android/pop/app/imageviewer/gallery/c:a	(Landroid/graphics/BitmapFactory$Options;I)I
    //   195: putfield 192	android/graphics/BitmapFactory$Options:inSampleSize	I
    //   198: aload_0
    //   199: getfield 174	com/estrongs/android/pop/app/imageviewer/gallery/c:e	Landroid/graphics/BitmapFactory$Options;
    //   202: iconst_0
    //   203: putfield 94	android/graphics/BitmapFactory$Options:inJustDecodeBounds	Z
    //   206: aload_0
    //   207: getfield 174	com/estrongs/android/pop/app/imageviewer/gallery/c:e	Landroid/graphics/BitmapFactory$Options;
    //   210: astore 5
    //   212: getstatic 197	com/estrongs/android/pop/z:x	Z
    //   215: ifne +5 -> 220
    //   218: iconst_1
    //   219: istore_3
    //   220: aload 5
    //   222: iload_3
    //   223: putfield 200	android/graphics/BitmapFactory$Options:inPurgeable	Z
    //   226: aload 6
    //   228: aconst_null
    //   229: aload_0
    //   230: getfield 174	com/estrongs/android/pop/app/imageviewer/gallery/c:e	Landroid/graphics/BitmapFactory$Options;
    //   233: invokestatic 100	android/graphics/BitmapFactory:decodeStream	(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    //   236: astore 5
    //   238: aload 6
    //   240: invokestatic 181	com/estrongs/fs/util/j:a	(Ljava/io/InputStream;)V
    //   243: aload 5
    //   245: areturn
    //   246: astore 5
    //   248: aload 5
    //   250: invokevirtual 203	com/estrongs/fs/FileSystemException:printStackTrace	()V
    //   253: aconst_null
    //   254: astore 5
    //   256: goto -135 -> 121
    //   259: astore 6
    //   261: aload 6
    //   263: invokevirtual 203	com/estrongs/fs/FileSystemException:printStackTrace	()V
    //   266: aload 5
    //   268: astore 6
    //   270: goto -105 -> 165
    //   273: astore 5
    //   275: aload 6
    //   277: invokestatic 181	com/estrongs/fs/util/j:a	(Ljava/io/InputStream;)V
    //   280: aconst_null
    //   281: astore 5
    //   283: goto -40 -> 243
    //   286: astore 5
    //   288: aload 6
    //   290: invokestatic 181	com/estrongs/fs/util/j:a	(Ljava/io/InputStream;)V
    //   293: aload 5
    //   295: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	296	0	this	c
    //   0	296	1	paramInt1	int
    //   0	296	2	paramInt2	int
    //   0	296	3	paramBoolean1	boolean
    //   0	296	4	paramBoolean2	boolean
    //   25	26	5	localBitmap	Bitmap
    //   53	7	5	localException	Exception
    //   71	7	5	localIOException1	java.io.IOException
    //   84	8	5	localObject1	Object
    //   119	125	5	localObject2	Object
    //   246	3	5	localFileSystemException1	FileSystemException
    //   254	13	5	localObject3	Object
    //   273	1	5	localOutOfMemoryError	OutOfMemoryError
    //   281	1	5	localObject4	Object
    //   286	8	5	localObject5	Object
    //   3	34	6	localObject6	Object
    //   39	7	6	localIOException2	java.io.IOException
    //   94	7	6	localIOException3	java.io.IOException
    //   128	111	6	localObject7	Object
    //   259	3	6	localFileSystemException2	FileSystemException
    //   268	21	6	localObject8	Object
    //   9	78	7	localParcelFileDescriptor	ParcelFileDescriptor
    // Exception table:
    //   from	to	target	type
    //   27	32	39	java/io/IOException
    //   16	27	53	java/lang/Exception
    //   64	69	71	java/io/IOException
    //   16	27	84	finally
    //   55	64	84	finally
    //   86	91	94	java/io/IOException
    //   108	121	246	com/estrongs/fs/FileSystemException
    //   152	165	259	com/estrongs/fs/FileSystemException
    //   226	238	273	java/lang/OutOfMemoryError
    //   226	238	286	finally
  }
  
  public Bitmap a(boolean paramBoolean)
  {
    return a(320, 96000, paramBoolean);
  }
  
  public h a()
  {
    return g;
  }
  
  protected void a(int paramInt)
  {
    if (f == paramInt) {
      return;
    }
    f = paramInt;
  }
  
  public int b()
  {
    return f;
  }
  
  public String c()
  {
    return ap.G(d());
  }
  
  public String d()
  {
    if ("file".equalsIgnoreCase(a.getScheme())) {
      return a.getPath();
    }
    return a.toString();
  }
  
  public File e()
  {
    File localFile = new File(a.f + "/remoteimg");
    if (!localFile.exists()) {
      localFile.mkdirs();
    }
    localFile = new File(localFile, d().hashCode() + "-" + r() + "." + j.b(d()));
    if (!localFile.exists())
    {
      r localr = new r(c, new z(d()), new z(localFile.getParentFile().getAbsolutePath()), localFile.getName());
      localr.execute(false);
      if (getTaskResulta != 0) {
        localFile.delete();
      }
    }
    return localFile;
  }
  
  public Uri f()
  {
    return a;
  }
  
  public InputStream g()
  {
    try
    {
      InputStream localInputStream = c.e(d());
      return localInputStream;
    }
    catch (Exception localException) {}
    return null;
  }
  
  public Bitmap h()
  {
    return a(true);
  }
  
  public String i()
  {
    return Uri.decode(a.getLastPathSegment());
  }
  
  public BitmapFactory.Options j()
  {
    if (e == null)
    {
      try
      {
        Object localObject = c.e(d());
        if (localObject == null)
        {
          localObject = new BitmapFactory.Options();
          return (BitmapFactory.Options)localObject;
        }
      }
      catch (Exception localException)
      {
        return new BitmapFactory.Options();
      }
      e = a(localException);
      j.a(localException);
    }
    return e;
  }
  
  public String k()
  {
    BitmapFactory.Options localOptions = j();
    if ((localOptions != null) && (outMimeType != null)) {
      return outMimeType;
    }
    return "";
  }
  
  public int l()
  {
    BitmapFactory.Options localOptions = j();
    if (localOptions != null) {
      return outHeight;
    }
    return 0;
  }
  
  public int m()
  {
    BitmapFactory.Options localOptions = j();
    if (localOptions != null) {
      return outWidth;
    }
    return 0;
  }
  
  public long n()
  {
    p();
    return d.e;
  }
  
  public long o()
  {
    p();
    return d.j;
  }
  
  public void p()
  {
    if ((d == null) || (d.j == 0L)) {}
    try
    {
      d = c.c(d());
      if (d == null) {
        d = new com.estrongs.fs.c(null);
      }
      return;
    }
    catch (FileSystemException localFileSystemException)
    {
      for (;;)
      {
        localFileSystemException.printStackTrace();
      }
    }
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.pop.app.imageviewer.gallery.c
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */