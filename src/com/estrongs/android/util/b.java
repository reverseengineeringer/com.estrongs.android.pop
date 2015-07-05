package com.estrongs.android.util;

import android.graphics.ColorMatrix;
import android.graphics.ColorMatrixColorFilter;
import android.graphics.drawable.Drawable;

public class b
{
  static ColorMatrixColorFilter a;
  
  static
  {
    ColorMatrix localColorMatrix = new ColorMatrix();
    localColorMatrix.setSaturation(0.0F);
    a = new ColorMatrixColorFilter(localColorMatrix);
  }
  
  public static void a(Drawable paramDrawable)
  {
    if (paramDrawable == null) {
      return;
    }
    paramDrawable.setColorFilter(a);
  }
  
  /* Error */
  public static boolean a(android.graphics.Bitmap paramBitmap, String paramString, android.graphics.Bitmap.CompressFormat paramCompressFormat, int paramInt)
  {
    // Byte code:
    //   0: new 37	java/io/FileOutputStream
    //   3: dup
    //   4: aload_1
    //   5: invokespecial 40	java/io/FileOutputStream:<init>	(Ljava/lang/String;)V
    //   8: astore 4
    //   10: aload 4
    //   12: astore_1
    //   13: aload_0
    //   14: aload_2
    //   15: iload_3
    //   16: aload 4
    //   18: invokevirtual 46	android/graphics/Bitmap:compress	(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z
    //   21: pop
    //   22: aload 4
    //   24: invokestatic 51	com/estrongs/fs/util/j:a	(Ljava/io/OutputStream;)V
    //   27: iconst_1
    //   28: ireturn
    //   29: astore_2
    //   30: aconst_null
    //   31: astore_0
    //   32: aload_0
    //   33: astore_1
    //   34: aload_2
    //   35: invokevirtual 54	java/lang/Exception:printStackTrace	()V
    //   38: aload_0
    //   39: invokestatic 51	com/estrongs/fs/util/j:a	(Ljava/io/OutputStream;)V
    //   42: iconst_0
    //   43: ireturn
    //   44: astore_0
    //   45: aconst_null
    //   46: astore_1
    //   47: aload_1
    //   48: invokestatic 51	com/estrongs/fs/util/j:a	(Ljava/io/OutputStream;)V
    //   51: aload_0
    //   52: athrow
    //   53: astore_0
    //   54: goto -7 -> 47
    //   57: astore_2
    //   58: aload 4
    //   60: astore_0
    //   61: goto -29 -> 32
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	64	0	paramBitmap	android.graphics.Bitmap
    //   0	64	1	paramString	String
    //   0	64	2	paramCompressFormat	android.graphics.Bitmap.CompressFormat
    //   0	64	3	paramInt	int
    //   8	51	4	localFileOutputStream	java.io.FileOutputStream
    // Exception table:
    //   from	to	target	type
    //   0	10	29	java/lang/Exception
    //   0	10	44	finally
    //   13	22	53	finally
    //   34	38	53	finally
    //   13	22	57	java/lang/Exception
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.util.b
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */