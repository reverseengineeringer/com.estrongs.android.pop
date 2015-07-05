package com.estrongs.android.d;

import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.Bitmap.CompressFormat;
import android.graphics.Bitmap.Config;
import android.graphics.BitmapFactory;
import android.graphics.BitmapFactory.Options;
import com.estrongs.android.pop.z;
import com.estrongs.android.util.am;
import com.estrongs.fs.d;
import com.estrongs.fs.h;
import com.estrongs.fs.impl.adb.c;
import java.io.BufferedInputStream;
import java.io.InputStream;

public class b
  extends a
{
  private d b;
  
  public b(Context paramContext)
  {
    super(paramContext);
    b = d.a(paramContext);
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
  
  private Bitmap a(InputStream paramInputStream, BitmapFactory.Options paramOptions, int paramInt)
  {
    boolean bool = true;
    inSampleSize = a(paramOptions, paramInt);
    inInputShareable = true;
    if (!z.x) {}
    for (;;)
    {
      inPurgeable = bool;
      inJustDecodeBounds = false;
      inDither = false;
      inTempStorage = new byte['䀀'];
      inPreferredConfig = Bitmap.Config.RGB_565;
      return BitmapFactory.decodeStream(paramInputStream, null, paramOptions);
      bool = false;
    }
  }
  
  private InputStream i(h paramh)
  {
    paramh = c.b(paramh);
    if ((paramh != null) && (!paramh.markSupported())) {
      return new BufferedInputStream(paramh);
    }
    return paramh;
  }
  
  protected String a()
  {
    String str2 = am.a(b(), ".thumbnails", true);
    String str1 = str2;
    if (str2 == null) {
      str1 = am.a(a.getCacheDir(), ".thumbnails", false);
    }
    return str1;
  }
  
  /* Error */
  protected Bitmap c(h paramh)
  {
    // Byte code:
    //   0: aload_0
    //   1: aload_1
    //   2: invokespecial 122	com/estrongs/android/d/b:i	(Lcom/estrongs/fs/h;)Ljava/io/InputStream;
    //   5: astore_3
    //   6: aload_3
    //   7: ifnonnull +23 -> 30
    //   10: aload_3
    //   11: astore 4
    //   13: aload_3
    //   14: astore 5
    //   16: ldc 124
    //   18: ldc 126
    //   20: invokestatic 132	android/util/Log:e	(Ljava/lang/String;Ljava/lang/String;)I
    //   23: pop
    //   24: aload_3
    //   25: invokestatic 136	com/estrongs/fs/util/j:a	(Ljava/io/InputStream;)V
    //   28: aconst_null
    //   29: areturn
    //   30: aload_3
    //   31: astore 4
    //   33: aload_3
    //   34: astore 5
    //   36: new 22	android/graphics/BitmapFactory$Options
    //   39: dup
    //   40: invokespecial 139	android/graphics/BitmapFactory$Options:<init>	()V
    //   43: astore 6
    //   45: aload_3
    //   46: astore 4
    //   48: aload_3
    //   49: astore 5
    //   51: aload 6
    //   53: iconst_1
    //   54: putfield 56	android/graphics/BitmapFactory$Options:inJustDecodeBounds	Z
    //   57: aload_3
    //   58: astore 4
    //   60: aload_3
    //   61: astore 5
    //   63: aload_3
    //   64: invokevirtual 90	java/io/InputStream:markSupported	()Z
    //   67: ifeq +15 -> 82
    //   70: aload_3
    //   71: astore 4
    //   73: aload_3
    //   74: astore 5
    //   76: aload_3
    //   77: ldc -116
    //   79: invokevirtual 144	java/io/InputStream:mark	(I)V
    //   82: aload_3
    //   83: astore 4
    //   85: aload_3
    //   86: astore 5
    //   88: aload_3
    //   89: aconst_null
    //   90: aload 6
    //   92: invokestatic 78	android/graphics/BitmapFactory:decodeStream	(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    //   95: pop
    //   96: aload_3
    //   97: astore 4
    //   99: aload_3
    //   100: astore 5
    //   102: aload_3
    //   103: invokevirtual 90	java/io/InputStream:markSupported	()Z
    //   106: istore_2
    //   107: iload_2
    //   108: ifeq +64 -> 172
    //   111: aload_3
    //   112: astore 4
    //   114: aload_3
    //   115: astore 5
    //   117: aload_3
    //   118: invokevirtual 147	java/io/InputStream:reset	()V
    //   121: aload_3
    //   122: astore 4
    //   124: aload_3
    //   125: astore 5
    //   127: aload_0
    //   128: aload_3
    //   129: aload 6
    //   131: aload_1
    //   132: invokestatic 153	com/estrongs/android/d/f:h	(Lcom/estrongs/fs/h;)I
    //   135: invokespecial 155	com/estrongs/android/d/b:a	(Ljava/io/InputStream;Landroid/graphics/BitmapFactory$Options;I)Landroid/graphics/Bitmap;
    //   138: astore_1
    //   139: aload_3
    //   140: invokestatic 136	com/estrongs/fs/util/j:a	(Ljava/io/InputStream;)V
    //   143: aload_1
    //   144: areturn
    //   145: astore 4
    //   147: aload_3
    //   148: astore 4
    //   150: aload_3
    //   151: astore 5
    //   153: aload_3
    //   154: invokestatic 136	com/estrongs/fs/util/j:a	(Ljava/io/InputStream;)V
    //   157: aload_3
    //   158: astore 4
    //   160: aload_3
    //   161: astore 5
    //   163: aload_0
    //   164: aload_1
    //   165: invokespecial 122	com/estrongs/android/d/b:i	(Lcom/estrongs/fs/h;)Ljava/io/InputStream;
    //   168: astore_3
    //   169: goto -48 -> 121
    //   172: aload_3
    //   173: astore 4
    //   175: aload_3
    //   176: astore 5
    //   178: aload_3
    //   179: invokestatic 136	com/estrongs/fs/util/j:a	(Ljava/io/InputStream;)V
    //   182: aload_3
    //   183: astore 4
    //   185: aload_3
    //   186: astore 5
    //   188: aload_0
    //   189: aload_1
    //   190: invokespecial 122	com/estrongs/android/d/b:i	(Lcom/estrongs/fs/h;)Ljava/io/InputStream;
    //   193: astore_3
    //   194: goto -73 -> 121
    //   197: astore_1
    //   198: aconst_null
    //   199: astore 5
    //   201: aload 5
    //   203: astore 4
    //   205: ldc 124
    //   207: new 157	java/lang/StringBuilder
    //   210: dup
    //   211: invokespecial 158	java/lang/StringBuilder:<init>	()V
    //   214: ldc -96
    //   216: invokevirtual 164	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   219: aload_1
    //   220: invokevirtual 167	java/lang/Throwable:getMessage	()Ljava/lang/String;
    //   223: invokevirtual 164	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   226: invokevirtual 170	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   229: invokestatic 173	android/util/Log:w	(Ljava/lang/String;Ljava/lang/String;)I
    //   232: pop
    //   233: aload 5
    //   235: invokestatic 136	com/estrongs/fs/util/j:a	(Ljava/io/InputStream;)V
    //   238: aconst_null
    //   239: areturn
    //   240: astore_1
    //   241: aconst_null
    //   242: astore 4
    //   244: aload 4
    //   246: invokestatic 136	com/estrongs/fs/util/j:a	(Ljava/io/InputStream;)V
    //   249: aload_1
    //   250: athrow
    //   251: astore_1
    //   252: goto -8 -> 244
    //   255: astore_1
    //   256: goto -55 -> 201
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	259	0	this	b
    //   0	259	1	paramh	h
    //   106	2	2	bool	boolean
    //   5	189	3	localInputStream1	InputStream
    //   11	112	4	localInputStream2	InputStream
    //   145	1	4	localIOException	java.io.IOException
    //   148	97	4	localObject	Object
    //   14	220	5	localInputStream3	InputStream
    //   43	87	6	localOptions	BitmapFactory.Options
    // Exception table:
    //   from	to	target	type
    //   117	121	145	java/io/IOException
    //   0	6	197	java/lang/Throwable
    //   0	6	240	finally
    //   16	24	251	finally
    //   36	45	251	finally
    //   51	57	251	finally
    //   63	70	251	finally
    //   76	82	251	finally
    //   88	96	251	finally
    //   102	107	251	finally
    //   117	121	251	finally
    //   127	139	251	finally
    //   153	157	251	finally
    //   163	169	251	finally
    //   178	182	251	finally
    //   188	194	251	finally
    //   205	233	251	finally
    //   16	24	255	java/lang/Throwable
    //   36	45	255	java/lang/Throwable
    //   51	57	255	java/lang/Throwable
    //   63	70	255	java/lang/Throwable
    //   76	82	255	java/lang/Throwable
    //   88	96	255	java/lang/Throwable
    //   102	107	255	java/lang/Throwable
    //   117	121	255	java/lang/Throwable
    //   127	139	255	java/lang/Throwable
    //   153	157	255	java/lang/Throwable
    //   163	169	255	java/lang/Throwable
    //   178	182	255	java/lang/Throwable
    //   188	194	255	java/lang/Throwable
  }
  
  public String[] d()
  {
    return new String[] { "589841" };
  }
  
  protected Bitmap.CompressFormat g(h paramh)
  {
    return Bitmap.CompressFormat.PNG;
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.d.b
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */