package com.estrongs.android.h;

import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.Bitmap.CompressFormat;
import android.graphics.Bitmap.Config;
import android.graphics.BitmapFactory;
import android.graphics.BitmapFactory.Options;
import android.graphics.Canvas;
import android.graphics.Matrix;
import android.graphics.drawable.BitmapDrawable;
import android.graphics.drawable.Drawable;
import com.estrongs.android.pop.utils.cm;
import com.estrongs.android.pop.z;
import com.estrongs.android.util.ap;
import com.estrongs.fs.h;
import java.io.File;

public abstract class a
  implements i
{
  protected Context a;
  private String b;
  
  protected a(Context paramContext)
  {
    a = paramContext;
    b = a();
  }
  
  public static Bitmap a(Bitmap paramBitmap1, Bitmap paramBitmap2)
  {
    if ((paramBitmap1 == null) || (paramBitmap2 == null)) {
      return null;
    }
    int i = paramBitmap1.getWidth();
    int j = paramBitmap1.getHeight();
    int k = paramBitmap2.getWidth();
    int m = paramBitmap2.getHeight();
    Bitmap localBitmap = Bitmap.createBitmap(i, j, Bitmap.Config.ARGB_8888);
    Canvas localCanvas = new Canvas(localBitmap);
    localCanvas.drawBitmap(paramBitmap1, 0.0F, 0.0F, null);
    localCanvas.drawBitmap(paramBitmap2, (i - k) / 2, (j - m) / 2, null);
    localCanvas.save(31);
    localCanvas.restore();
    return localBitmap;
  }
  
  /* Error */
  private void a(Bitmap paramBitmap, String paramString, Bitmap.CompressFormat paramCompressFormat)
  {
    // Byte code:
    //   0: aload_1
    //   1: ifnonnull +4 -> 5
    //   4: return
    //   5: new 62	java/io/FileOutputStream
    //   8: dup
    //   9: aload_2
    //   10: invokespecial 65	java/io/FileOutputStream:<init>	(Ljava/lang/String;)V
    //   13: astore_2
    //   14: aload_1
    //   15: aload_3
    //   16: aload_0
    //   17: invokevirtual 68	com/estrongs/android/h/a:c	()I
    //   20: aload_2
    //   21: invokevirtual 72	android/graphics/Bitmap:compress	(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z
    //   24: pop
    //   25: aload_2
    //   26: invokestatic 77	com/estrongs/fs/util/j:a	(Ljava/io/OutputStream;)V
    //   29: return
    //   30: astore_1
    //   31: aconst_null
    //   32: astore_2
    //   33: aload_2
    //   34: invokestatic 77	com/estrongs/fs/util/j:a	(Ljava/io/OutputStream;)V
    //   37: aload_1
    //   38: athrow
    //   39: astore_1
    //   40: goto -7 -> 33
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	43	0	this	a
    //   0	43	1	paramBitmap	Bitmap
    //   0	43	2	paramString	String
    //   0	43	3	paramCompressFormat	Bitmap.CompressFormat
    // Exception table:
    //   from	to	target	type
    //   5	14	30	finally
    //   14	25	39	finally
  }
  
  /* Error */
  public static void a(String paramString1, String paramString2)
  {
    // Byte code:
    //   0: aconst_null
    //   1: astore_2
    //   2: new 82	java/io/File
    //   5: dup
    //   6: aload_1
    //   7: invokespecial 83	java/io/File:<init>	(Ljava/lang/String;)V
    //   10: invokevirtual 87	java/io/File:delete	()Z
    //   13: pop
    //   14: new 89	java/io/FileInputStream
    //   17: dup
    //   18: new 82	java/io/File
    //   21: dup
    //   22: aload_0
    //   23: invokespecial 83	java/io/File:<init>	(Ljava/lang/String;)V
    //   26: invokespecial 92	java/io/FileInputStream:<init>	(Ljava/io/File;)V
    //   29: astore_0
    //   30: aload_0
    //   31: new 82	java/io/File
    //   34: dup
    //   35: aload_1
    //   36: invokespecial 83	java/io/File:<init>	(Ljava/lang/String;)V
    //   39: invokestatic 95	com/estrongs/fs/util/j:a	(Ljava/io/InputStream;Ljava/io/File;)V
    //   42: aload_0
    //   43: invokestatic 98	com/estrongs/fs/util/j:a	(Ljava/io/InputStream;)V
    //   46: return
    //   47: astore_0
    //   48: aconst_null
    //   49: astore_0
    //   50: aload_0
    //   51: invokestatic 98	com/estrongs/fs/util/j:a	(Ljava/io/InputStream;)V
    //   54: return
    //   55: astore_1
    //   56: aload_2
    //   57: astore_0
    //   58: aload_0
    //   59: invokestatic 98	com/estrongs/fs/util/j:a	(Ljava/io/InputStream;)V
    //   62: aload_1
    //   63: athrow
    //   64: astore_1
    //   65: goto -7 -> 58
    //   68: astore_1
    //   69: goto -19 -> 50
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	72	0	paramString1	String
    //   0	72	1	paramString2	String
    //   1	56	2	localObject	Object
    // Exception table:
    //   from	to	target	type
    //   2	30	47	java/lang/Exception
    //   2	30	55	finally
    //   30	42	64	finally
    //   30	42	68	java/lang/Exception
  }
  
  private Drawable i(h paramh)
  {
    for (boolean bool = true;; bool = false) {
      for (;;)
      {
        Object localObject;
        try
        {
          localObject = new BitmapFactory.Options();
          inInputShareable = true;
          if (z.x) {
            break;
          }
          inPurgeable = bool;
          inJustDecodeBounds = false;
          inDither = false;
          inTempStorage = new byte['䀀'];
          inPreferredConfig = Bitmap.Config.RGB_565;
          localObject = BitmapFactory.decodeFile(d(paramh).getAbsolutePath(), (BitmapFactory.Options)localObject);
          if (localObject == null) {
            return null;
          }
          int i = cm.c(paramh.getAbsolutePath());
          if (i != 0)
          {
            paramh = new Matrix();
            paramh.setRotate(i);
            paramh = Bitmap.createBitmap((Bitmap)localObject, 0, 0, ((Bitmap)localObject).getWidth(), ((Bitmap)localObject).getHeight(), paramh, false);
            ((Bitmap)localObject).recycle();
            paramh = new BitmapDrawable(a.getResources(), paramh);
            return paramh;
          }
        }
        catch (Throwable paramh)
        {
          return null;
        }
        paramh = (h)localObject;
      }
    }
  }
  
  public Bitmap a(Bitmap paramBitmap, int paramInt1, int paramInt2)
  {
    int i = paramBitmap.getWidth();
    int j = paramBitmap.getHeight();
    float f1 = paramInt1 / i;
    float f2 = paramInt2 / j;
    Matrix localMatrix = new Matrix();
    localMatrix.postScale(f1, f2);
    return Bitmap.createBitmap(paramBitmap, 0, 0, i, j, localMatrix, true);
  }
  
  public Drawable a(h paramh)
  {
    boolean bool2 = false;
    if (!b(paramh)) {
      return null;
    }
    File localFile2 = d(paramh);
    Object localObject3;
    try
    {
      if (localFile2.exists()) {
        break label283;
      }
      boolean bool1 = bool2;
      if (!f.i(paramh))
      {
        File localFile1 = new File(a(paramh.getAbsolutePath()));
        bool1 = bool2;
        if (localFile1.exists())
        {
          bool2 = localFile1.renameTo(localFile2.getAbsoluteFile());
          bool1 = bool2;
          if (!bool2)
          {
            localFile1.delete();
            bool1 = bool2;
          }
        }
      }
      if (bool1) {
        break label283;
      }
      localObject3 = c(paramh);
      if (localObject3 == null) {
        return null;
      }
    }
    finally {}
    int i;
    Bitmap localBitmap;
    if (paramh.getAbsolutePath().endsWith(".wbmp"))
    {
      i = f.h(paramh);
      localBitmap = a((Bitmap)localObject3, i, i);
      localObject2 = localBitmap;
      if (localBitmap != localObject3) {
        ((Bitmap)localObject3).recycle();
      }
    }
    for (Object localObject2 = localBitmap;; localObject2 = localThrowable) {
      try
      {
        a((Bitmap)localObject2, localFile2.getAbsolutePath(), g(paramh));
        if (!((Bitmap)localObject2).isRecycled())
        {
          i = cm.c(paramh.getAbsolutePath());
          if (i != 0)
          {
            localObject3 = new Matrix();
            ((Matrix)localObject3).setRotate(i);
            localObject3 = Bitmap.createBitmap((Bitmap)localObject2, 0, 0, ((Bitmap)localObject2).getWidth(), ((Bitmap)localObject2).getHeight(), (Matrix)localObject3, false);
            ((Bitmap)localObject2).recycle();
            localObject2 = localObject3;
            localObject2 = new BitmapDrawable(a.getResources(), (Bitmap)localObject2);
            return (Drawable)localObject2;
          }
        }
        else
        {
          label283:
          return i(paramh);
        }
      }
      catch (Throwable localThrowable)
      {
        for (;;) {}
      }
    }
  }
  
  public Drawable a(h paramh, String paramString)
  {
    paramh = f(paramh);
    paramString = a(paramString);
    if (new File(paramh).exists()) {
      a(paramh, paramString);
    }
    return null;
  }
  
  protected abstract String a();
  
  protected String a(String paramString)
  {
    return b + "/" + String.valueOf(paramString.hashCode());
  }
  
  protected File b()
  {
    return new File(com.estrongs.android.pop.a.a);
  }
  
  protected boolean b(h paramh)
  {
    return true;
  }
  
  protected int c()
  {
    return 50;
  }
  
  protected abstract Bitmap c(h paramh);
  
  protected File d(h paramh)
  {
    return new File(e(paramh));
  }
  
  protected String e(h paramh)
  {
    return b + "/" + f.f(paramh);
  }
  
  protected String f(h paramh)
  {
    return b + "/" + String.valueOf(ap.bV(paramh.getAbsolutePath()).hashCode()) + paramh.lastModified();
  }
  
  protected Bitmap.CompressFormat g(h paramh)
  {
    return Bitmap.CompressFormat.JPEG;
  }
  
  public boolean h(h paramh)
  {
    if ((com.estrongs.fs.impl.local.i.a(a(paramh.getAbsolutePath()))) && (!f.i(paramh)))
    {
      if (com.estrongs.fs.impl.local.i.a(e(paramh))) {
        new File(e(paramh)).delete();
      }
      return true;
    }
    return com.estrongs.fs.impl.local.i.a(e(paramh));
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.h.a
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */