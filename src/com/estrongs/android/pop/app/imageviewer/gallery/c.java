package com.estrongs.android.pop.app.imageviewer.gallery;

import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.graphics.BitmapFactory.Options;
import android.net.Uri;
import android.os.ParcelFileDescriptor;
import com.estrongs.a.p;
import com.estrongs.android.pop.a;
import com.estrongs.android.util.am;
import com.estrongs.fs.FileSystemException;
import com.estrongs.fs.b.r;
import com.estrongs.fs.d;
import com.estrongs.fs.h;
import com.estrongs.fs.o;
import com.estrongs.fs.util.j;
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
    if ((am.ba(paramString)) && (!paramString.startsWith("file://")))
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
      if (am.ba(a.toString())) {
        return ParcelFileDescriptor.open(new File(a.getPath()), 268435456);
      }
      if (am.bb(a.toString()))
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
    //   13: ifnull +99 -> 112
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
    //   47: invokestatic 167	android/util/Log:e	(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    //   50: pop
    //   51: aload 5
    //   53: areturn
    //   54: astore 5
    //   56: ldc -96
    //   58: ldc -87
    //   60: aload 5
    //   62: invokestatic 167	android/util/Log:e	(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    //   65: pop
    //   66: aload 7
    //   68: invokevirtual 158	android/os/ParcelFileDescriptor:close	()V
    //   71: aconst_null
    //   72: areturn
    //   73: astore 5
    //   75: ldc -96
    //   77: ldc -94
    //   79: aload 5
    //   81: invokestatic 167	android/util/Log:e	(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    //   84: pop
    //   85: aconst_null
    //   86: areturn
    //   87: astore 5
    //   89: aload 7
    //   91: invokevirtual 158	android/os/ParcelFileDescriptor:close	()V
    //   94: aload 5
    //   96: athrow
    //   97: astore 6
    //   99: ldc -96
    //   101: ldc -94
    //   103: aload 6
    //   105: invokestatic 167	android/util/Log:e	(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    //   108: pop
    //   109: goto -15 -> 94
    //   112: aload_0
    //   113: getfield 43	com/estrongs/android/pop/app/imageviewer/gallery/c:c	Lcom/estrongs/fs/d;
    //   116: aload_0
    //   117: invokevirtual 127	com/estrongs/android/pop/app/imageviewer/gallery/c:d	()Ljava/lang/String;
    //   120: invokevirtual 172	com/estrongs/fs/d:e	(Ljava/lang/String;)Ljava/io/InputStream;
    //   123: astore 5
    //   125: aload 5
    //   127: ifnull -91 -> 36
    //   130: aload 5
    //   132: astore 6
    //   134: aload_0
    //   135: getfield 174	com/estrongs/android/pop/app/imageviewer/gallery/c:e	Landroid/graphics/BitmapFactory$Options;
    //   138: ifnonnull +31 -> 169
    //   141: aload_0
    //   142: aload_0
    //   143: aload 5
    //   145: invokespecial 176	com/estrongs/android/pop/app/imageviewer/gallery/c:a	(Ljava/io/InputStream;)Landroid/graphics/BitmapFactory$Options;
    //   148: putfield 174	com/estrongs/android/pop/app/imageviewer/gallery/c:e	Landroid/graphics/BitmapFactory$Options;
    //   151: aload 5
    //   153: invokestatic 181	com/estrongs/fs/util/j:a	(Ljava/io/InputStream;)V
    //   156: aload_0
    //   157: getfield 43	com/estrongs/android/pop/app/imageviewer/gallery/c:c	Lcom/estrongs/fs/d;
    //   160: aload_0
    //   161: invokevirtual 127	com/estrongs/android/pop/app/imageviewer/gallery/c:d	()Ljava/lang/String;
    //   164: invokevirtual 172	com/estrongs/fs/d:e	(Ljava/lang/String;)Ljava/io/InputStream;
    //   167: astore 6
    //   169: aload_0
    //   170: invokevirtual 127	com/estrongs/android/pop/app/imageviewer/gallery/c:d	()Ljava/lang/String;
    //   173: invokestatic 184	com/estrongs/android/util/am:J	(Ljava/lang/String;)Z
    //   176: pop
    //   177: aload_0
    //   178: invokevirtual 127	com/estrongs/android/pop/app/imageviewer/gallery/c:d	()Ljava/lang/String;
    //   181: invokestatic 187	com/estrongs/android/util/am:aV	(Ljava/lang/String;)Z
    //   184: pop
    //   185: aload_0
    //   186: getfield 174	com/estrongs/android/pop/app/imageviewer/gallery/c:e	Landroid/graphics/BitmapFactory$Options;
    //   189: aload_0
    //   190: getfield 174	com/estrongs/android/pop/app/imageviewer/gallery/c:e	Landroid/graphics/BitmapFactory$Options;
    //   193: sipush 800
    //   196: invokestatic 189	com/estrongs/android/pop/app/imageviewer/gallery/c:a	(Landroid/graphics/BitmapFactory$Options;I)I
    //   199: putfield 192	android/graphics/BitmapFactory$Options:inSampleSize	I
    //   202: aload_0
    //   203: getfield 174	com/estrongs/android/pop/app/imageviewer/gallery/c:e	Landroid/graphics/BitmapFactory$Options;
    //   206: iconst_0
    //   207: putfield 94	android/graphics/BitmapFactory$Options:inJustDecodeBounds	Z
    //   210: aload_0
    //   211: getfield 174	com/estrongs/android/pop/app/imageviewer/gallery/c:e	Landroid/graphics/BitmapFactory$Options;
    //   214: astore 5
    //   216: getstatic 197	com/estrongs/android/pop/z:x	Z
    //   219: ifne +5 -> 224
    //   222: iconst_1
    //   223: istore_3
    //   224: aload 5
    //   226: iload_3
    //   227: putfield 200	android/graphics/BitmapFactory$Options:inPurgeable	Z
    //   230: aload 6
    //   232: aconst_null
    //   233: aload_0
    //   234: getfield 174	com/estrongs/android/pop/app/imageviewer/gallery/c:e	Landroid/graphics/BitmapFactory$Options;
    //   237: invokestatic 100	android/graphics/BitmapFactory:decodeStream	(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    //   240: astore 5
    //   242: aload 6
    //   244: invokestatic 181	com/estrongs/fs/util/j:a	(Ljava/io/InputStream;)V
    //   247: aload 5
    //   249: areturn
    //   250: astore 5
    //   252: aload 5
    //   254: invokevirtual 203	com/estrongs/fs/FileSystemException:printStackTrace	()V
    //   257: aconst_null
    //   258: astore 5
    //   260: goto -135 -> 125
    //   263: astore 6
    //   265: aload 6
    //   267: invokevirtual 203	com/estrongs/fs/FileSystemException:printStackTrace	()V
    //   270: aload 5
    //   272: astore 6
    //   274: goto -105 -> 169
    //   277: astore 5
    //   279: aload 6
    //   281: invokestatic 181	com/estrongs/fs/util/j:a	(Ljava/io/InputStream;)V
    //   284: aconst_null
    //   285: astore 5
    //   287: goto -40 -> 247
    //   290: astore 5
    //   292: aload 6
    //   294: invokestatic 181	com/estrongs/fs/util/j:a	(Ljava/io/InputStream;)V
    //   297: aload 5
    //   299: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	300	0	this	c
    //   0	300	1	paramInt1	int
    //   0	300	2	paramInt2	int
    //   0	300	3	paramBoolean1	boolean
    //   0	300	4	paramBoolean2	boolean
    //   25	27	5	localBitmap	Bitmap
    //   54	7	5	localException	Exception
    //   73	7	5	localIOException1	java.io.IOException
    //   87	8	5	localObject1	Object
    //   123	125	5	localObject2	Object
    //   250	3	5	localFileSystemException1	FileSystemException
    //   258	13	5	localObject3	Object
    //   277	1	5	localOutOfMemoryError	OutOfMemoryError
    //   285	1	5	localObject4	Object
    //   290	8	5	localObject5	Object
    //   3	34	6	localObject6	Object
    //   39	7	6	localIOException2	java.io.IOException
    //   97	7	6	localIOException3	java.io.IOException
    //   132	111	6	localObject7	Object
    //   263	3	6	localFileSystemException2	FileSystemException
    //   272	21	6	localObject8	Object
    //   9	81	7	localParcelFileDescriptor	ParcelFileDescriptor
    // Exception table:
    //   from	to	target	type
    //   27	32	39	java/io/IOException
    //   16	27	54	java/lang/Exception
    //   66	71	73	java/io/IOException
    //   16	27	87	finally
    //   56	66	87	finally
    //   89	94	97	java/io/IOException
    //   112	125	250	com/estrongs/fs/FileSystemException
    //   156	169	263	com/estrongs/fs/FileSystemException
    //   230	242	277	java/lang/OutOfMemoryError
    //   230	242	290	finally
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
    return am.E(d());
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
    File localFile = new File(a.d + "/remoteimg");
    if (!localFile.exists()) {
      localFile.mkdirs();
    }
    localFile = new File(localFile, d().hashCode() + "-" + r() + "." + j.b(d()));
    if (!localFile.exists())
    {
      r localr = new r(c, new o(d()), new o(localFile.getParentFile().getAbsolutePath()), localFile.getName());
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