package com.estrongs.android.h;

import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.Bitmap.CompressFormat;
import android.graphics.BitmapFactory.Options;
import android.graphics.Matrix;
import android.os.MemoryFile;
import com.estrongs.android.h.a.e;
import com.estrongs.android.util.ap;
import com.estrongs.fs.FileSystemException;
import com.estrongs.fs.c;
import com.estrongs.fs.d;
import com.estrongs.fs.util.j;
import java.io.BufferedInputStream;
import java.io.File;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;

public class h
{
  private static h e;
  private d a;
  private Context b;
  private String c = null;
  private String d = null;
  
  protected h(Context paramContext)
  {
    b = paramContext;
    a();
    b();
    a = d.a(paramContext);
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
  
  /* Error */
  private Bitmap a(String paramString, BitmapFactory.Options paramOptions, int paramInt, InputStream paramInputStream)
  {
    // Byte code:
    //   0: aload_0
    //   1: aload_1
    //   2: aload 4
    //   4: invokespecial 58	com/estrongs/android/h/h:c	(Ljava/lang/String;Ljava/io/InputStream;)Landroid/os/MemoryFile;
    //   7: astore 5
    //   9: aload 5
    //   11: ifnull +17 -> 28
    //   14: aload 5
    //   16: invokevirtual 64	android/os/MemoryFile:getInputStream	()Ljava/io/InputStream;
    //   19: astore 4
    //   21: aload 4
    //   23: ifnonnull +15 -> 38
    //   26: aconst_null
    //   27: areturn
    //   28: aload_0
    //   29: aload_1
    //   30: invokespecial 67	com/estrongs/android/h/h:b	(Ljava/lang/String;)Ljava/io/InputStream;
    //   33: astore 4
    //   35: goto -14 -> 21
    //   38: aload 4
    //   40: invokevirtual 73	java/io/InputStream:markSupported	()Z
    //   43: ifeq +10 -> 53
    //   46: aload 4
    //   48: ldc 74
    //   50: invokevirtual 78	java/io/InputStream:mark	(I)V
    //   53: aload_2
    //   54: iconst_1
    //   55: putfield 82	android/graphics/BitmapFactory$Options:inJustDecodeBounds	Z
    //   58: aload 4
    //   60: aconst_null
    //   61: aload_2
    //   62: invokestatic 88	android/graphics/BitmapFactory:decodeStream	(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    //   65: pop
    //   66: aload 4
    //   68: invokevirtual 73	java/io/InputStream:markSupported	()Z
    //   71: ifeq +89 -> 160
    //   74: aload 4
    //   76: invokevirtual 91	java/io/InputStream:reset	()V
    //   79: aload_2
    //   80: aload_2
    //   81: iload_3
    //   82: invokestatic 93	com/estrongs/android/h/h:a	(Landroid/graphics/BitmapFactory$Options;I)I
    //   85: putfield 96	android/graphics/BitmapFactory$Options:inSampleSize	I
    //   88: aload_2
    //   89: iconst_0
    //   90: putfield 82	android/graphics/BitmapFactory$Options:inJustDecodeBounds	Z
    //   93: aload 4
    //   95: aconst_null
    //   96: aload_2
    //   97: invokestatic 88	android/graphics/BitmapFactory:decodeStream	(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    //   100: astore_1
    //   101: aload 4
    //   103: ifnull +8 -> 111
    //   106: aload 4
    //   108: invokevirtual 99	java/io/InputStream:close	()V
    //   111: aload 5
    //   113: ifnull +8 -> 121
    //   116: aload 5
    //   118: invokevirtual 100	android/os/MemoryFile:close	()V
    //   121: aload_1
    //   122: ifnonnull +67 -> 189
    //   125: aload_0
    //   126: getfield 24	com/estrongs/android/h/h:b	Landroid/content/Context;
    //   129: invokevirtual 106	android/content/Context:getResources	()Landroid/content/res/Resources;
    //   132: ldc 107
    //   134: invokestatic 111	android/graphics/BitmapFactory:decodeResource	(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;
    //   137: areturn
    //   138: astore 6
    //   140: aload 6
    //   142: invokevirtual 114	java/io/IOException:printStackTrace	()V
    //   145: aload 4
    //   147: invokevirtual 99	java/io/InputStream:close	()V
    //   150: aload_0
    //   151: aload_1
    //   152: invokespecial 67	com/estrongs/android/h/h:b	(Ljava/lang/String;)Ljava/io/InputStream;
    //   155: astore 4
    //   157: goto -78 -> 79
    //   160: aload 4
    //   162: invokevirtual 99	java/io/InputStream:close	()V
    //   165: aload_0
    //   166: aload_1
    //   167: invokespecial 67	com/estrongs/android/h/h:b	(Ljava/lang/String;)Ljava/io/InputStream;
    //   170: astore 4
    //   172: goto -93 -> 79
    //   175: astore 4
    //   177: goto -27 -> 150
    //   180: astore 4
    //   182: goto -17 -> 165
    //   185: astore_2
    //   186: goto -75 -> 111
    //   189: aload_1
    //   190: areturn
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	191	0	this	h
    //   0	191	1	paramString	String
    //   0	191	2	paramOptions	BitmapFactory.Options
    //   0	191	3	paramInt	int
    //   0	191	4	paramInputStream	InputStream
    //   7	110	5	localMemoryFile	MemoryFile
    //   138	3	6	localIOException	IOException
    // Exception table:
    //   from	to	target	type
    //   74	79	138	java/io/IOException
    //   145	150	175	java/io/IOException
    //   160	165	180	java/io/IOException
    //   106	111	185	java/io/IOException
  }
  
  public static h a(Context paramContext)
  {
    if (e == null)
    {
      if (paramContext == null) {
        return null;
      }
      e = new h(paramContext);
    }
    return e;
  }
  
  private String a(String paramString)
  {
    return c + "/" + paramString.hashCode();
  }
  
  private void a()
  {
    c = ap.a(b.getCacheDir(), ".thumbnails", false);
  }
  
  private void a(Bitmap paramBitmap, OutputStream paramOutputStream)
  {
    if (paramBitmap == null) {}
    for (;;)
    {
      return;
      int j = paramBitmap.getWidth();
      int i = paramBitmap.getHeight();
      j = Math.max(1, j);
      i = Math.max(1, i);
      float f;
      Object localObject;
      if (paramBitmap.getWidth() < paramBitmap.getHeight())
      {
        f = 48.0F / j;
        localObject = new Matrix();
        ((Matrix)localObject).setScale(f, f);
      }
      try
      {
        localObject = Bitmap.createBitmap(paramBitmap, 0, 0, j, i, (Matrix)localObject, true);
        if (localObject != null)
        {
          if (localObject != paramBitmap) {}
          ((Bitmap)localObject).compress(Bitmap.CompressFormat.PNG, 75, paramOutputStream);
          ((Bitmap)localObject).recycle();
          return;
        }
      }
      catch (IllegalArgumentException paramBitmap)
      {
        return;
        f = 48.0F / i;
      }
      catch (OutOfMemoryError paramBitmap)
      {
        paramBitmap.printStackTrace();
      }
    }
  }
  
  private InputStream b(String paramString)
  {
    return a.e(paramString);
  }
  
  private void b()
  {
    d = ap.a(b.getCacheDir(), ".apps", false);
  }
  
  private MemoryFile c(String paramString, InputStream paramInputStream)
  {
    int j = 0;
    Object localObject2 = paramInputStream;
    try
    {
      localObject1 = a.c(paramString);
      if (localObject1 == null)
      {
        localObject2 = paramInputStream;
        throw new IOException();
      }
    }
    catch (Throwable paramString)
    {
      Object localObject1;
      paramString.printStackTrace();
      try
      {
        ((InputStream)localObject2).close();
        return null;
      }
      catch (Exception paramString)
      {
        MemoryFile localMemoryFile;
        byte[] arrayOfByte;
        int i;
        return null;
      }
      localObject2 = paramInputStream;
      if (e > 0L)
      {
        localObject2 = paramInputStream;
        localMemoryFile = new MemoryFile(paramString, (int)e);
        localObject2 = paramInputStream;
        arrayOfByte = new byte[' '];
        localObject1 = paramInputStream;
        if (paramInputStream == null)
        {
          localObject2 = paramInputStream;
          localObject1 = a.e(paramString);
        }
        localObject2 = localObject1;
        paramString = (String)localObject1;
        if (!(localObject1 instanceof BufferedInputStream))
        {
          localObject2 = localObject1;
          paramString = new BufferedInputStream((InputStream)localObject1, 8192);
        }
        localObject2 = paramString;
        for (i = paramString.read(arrayOfByte); i > 0; i = paramString.read(arrayOfByte))
        {
          localObject2 = paramString;
          localMemoryFile.writeBytes(arrayOfByte, 0, j, i);
          j += i;
          localObject2 = paramString;
        }
        localObject2 = paramString;
        paramString.close();
        paramString = localMemoryFile;
      }
    }
    for (;;)
    {
      return paramString;
      paramString = null;
    }
  }
  
  public Bitmap a(int paramInt, String paramString, BitmapFactory.Options paramOptions)
  {
    return a(paramInt, paramString, paramOptions, null);
  }
  
  public Bitmap a(int paramInt, String paramString, BitmapFactory.Options paramOptions, InputStream paramInputStream)
  {
    BitmapFactory.Options localOptions = paramOptions;
    if (paramOptions == null) {
      localOptions = new BitmapFactory.Options();
    }
    try
    {
      paramString = a(paramString, localOptions, paramInt, paramInputStream);
      j.a(paramInputStream);
      return paramString;
    }
    catch (OutOfMemoryError paramString)
    {
      paramString = paramString;
      j.a(paramInputStream);
      return null;
    }
    catch (FileSystemException paramString)
    {
      paramString = paramString;
      j.a(paramInputStream);
      return null;
    }
    finally
    {
      paramString = finally;
      j.a(paramInputStream);
      throw paramString;
    }
  }
  
  public void a(String paramString, InputStream paramInputStream)
  {
    File localFile = new File(a(paramString));
    if (!localFile.exists())
    {
      if (!localFile.getParentFile().exists()) {
        a();
      }
      b(paramString, paramInputStream);
    }
  }
  
  public void b(String paramString, InputStream paramInputStream)
  {
    String str = a(paramString);
    try
    {
      paramString = a(64, paramString, null, paramInputStream);
      if (paramString != null)
      {
        paramInputStream = new FileOutputStream(str);
        a(paramString, paramInputStream);
        paramInputStream.close();
        e.b(str);
      }
      return;
    }
    catch (Exception paramString) {}catch (IOException paramString) {}catch (FileNotFoundException paramString) {}
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.h.h
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */