package com.estrongs.android.h;

import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.Bitmap.CompressFormat;
import android.graphics.Bitmap.Config;
import android.graphics.BitmapFactory;
import android.graphics.BitmapFactory.Options;
import com.estrongs.android.pop.z;
import com.estrongs.android.util.ap;
import com.estrongs.android.util.bg;
import com.estrongs.fs.d;
import com.estrongs.fs.h;
import java.io.BufferedInputStream;
import java.io.InputStream;

public class g
  extends a
{
  private d b;
  
  public g(Context paramContext)
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
      paramOptions = BitmapFactory.decodeStream(paramInputStream, null, paramOptions);
      paramInputStream = paramOptions;
      if (paramOptions == null) {
        paramInputStream = BitmapFactory.decodeResource(a.getResources(), 2130837913);
      }
      return paramInputStream;
      bool = false;
    }
  }
  
  private InputStream i(h paramh)
  {
    String str = paramh.getAbsolutePath();
    InputStream localInputStream = b.k(str);
    paramh = localInputStream;
    if (localInputStream == null) {
      paramh = b.e(str);
    }
    if ((paramh != null) && (!paramh.markSupported())) {
      return new BufferedInputStream(paramh);
    }
    return paramh;
  }
  
  protected String a()
  {
    String str2 = ap.a(b(), ".thumbnails", true);
    String str1 = str2;
    if (str2 == null) {
      str1 = ap.a(a.getCacheDir(), ".thumbnails", false);
    }
    return str1;
  }
  
  /* Error */
  protected Bitmap c(h paramh)
  {
    // Byte code:
    //   0: aload_0
    //   1: aload_1
    //   2: invokespecial 139	com/estrongs/android/h/g:i	(Lcom/estrongs/fs/h;)Ljava/io/InputStream;
    //   5: astore_3
    //   6: aload_3
    //   7: ifnonnull +22 -> 29
    //   10: aload_3
    //   11: astore 4
    //   13: aload_3
    //   14: astore 5
    //   16: ldc -115
    //   18: ldc -113
    //   20: invokestatic 148	com/estrongs/android/util/l:e	(Ljava/lang/String;Ljava/lang/String;)V
    //   23: aload_3
    //   24: invokestatic 152	com/estrongs/fs/util/j:a	(Ljava/io/InputStream;)V
    //   27: aconst_null
    //   28: areturn
    //   29: aload_3
    //   30: astore 4
    //   32: aload_3
    //   33: astore 5
    //   35: new 22	android/graphics/BitmapFactory$Options
    //   38: dup
    //   39: invokespecial 155	android/graphics/BitmapFactory$Options:<init>	()V
    //   42: astore 6
    //   44: aload_3
    //   45: astore 4
    //   47: aload_3
    //   48: astore 5
    //   50: aload 6
    //   52: iconst_1
    //   53: putfield 56	android/graphics/BitmapFactory$Options:inJustDecodeBounds	Z
    //   56: aload_3
    //   57: astore 4
    //   59: aload_3
    //   60: astore 5
    //   62: aload_3
    //   63: invokevirtual 113	java/io/InputStream:markSupported	()Z
    //   66: ifeq +15 -> 81
    //   69: aload_3
    //   70: astore 4
    //   72: aload_3
    //   73: astore 5
    //   75: aload_3
    //   76: ldc -100
    //   78: invokevirtual 160	java/io/InputStream:mark	(I)V
    //   81: aload_3
    //   82: astore 4
    //   84: aload_3
    //   85: astore 5
    //   87: aload_3
    //   88: aconst_null
    //   89: aload 6
    //   91: invokestatic 78	android/graphics/BitmapFactory:decodeStream	(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    //   94: pop
    //   95: aload_3
    //   96: astore 4
    //   98: aload_3
    //   99: astore 5
    //   101: aload_3
    //   102: invokevirtual 113	java/io/InputStream:markSupported	()Z
    //   105: istore_2
    //   106: iload_2
    //   107: ifeq +64 -> 171
    //   110: aload_3
    //   111: astore 4
    //   113: aload_3
    //   114: astore 5
    //   116: aload_3
    //   117: invokevirtual 163	java/io/InputStream:reset	()V
    //   120: aload_3
    //   121: astore 4
    //   123: aload_3
    //   124: astore 5
    //   126: aload_0
    //   127: aload_3
    //   128: aload 6
    //   130: aload_1
    //   131: invokestatic 169	com/estrongs/android/h/f:h	(Lcom/estrongs/fs/h;)I
    //   134: invokespecial 171	com/estrongs/android/h/g:a	(Ljava/io/InputStream;Landroid/graphics/BitmapFactory$Options;I)Landroid/graphics/Bitmap;
    //   137: astore_1
    //   138: aload_3
    //   139: invokestatic 152	com/estrongs/fs/util/j:a	(Ljava/io/InputStream;)V
    //   142: aload_1
    //   143: areturn
    //   144: astore 4
    //   146: aload_3
    //   147: astore 4
    //   149: aload_3
    //   150: astore 5
    //   152: aload_3
    //   153: invokestatic 152	com/estrongs/fs/util/j:a	(Ljava/io/InputStream;)V
    //   156: aload_3
    //   157: astore 4
    //   159: aload_3
    //   160: astore 5
    //   162: aload_0
    //   163: aload_1
    //   164: invokespecial 139	com/estrongs/android/h/g:i	(Lcom/estrongs/fs/h;)Ljava/io/InputStream;
    //   167: astore_3
    //   168: goto -48 -> 120
    //   171: aload_3
    //   172: astore 4
    //   174: aload_3
    //   175: astore 5
    //   177: aload_3
    //   178: invokestatic 152	com/estrongs/fs/util/j:a	(Ljava/io/InputStream;)V
    //   181: aload_3
    //   182: astore 4
    //   184: aload_3
    //   185: astore 5
    //   187: aload_0
    //   188: aload_1
    //   189: invokespecial 139	com/estrongs/android/h/g:i	(Lcom/estrongs/fs/h;)Ljava/io/InputStream;
    //   192: astore_3
    //   193: goto -73 -> 120
    //   196: astore_1
    //   197: aconst_null
    //   198: astore 5
    //   200: aload 5
    //   202: astore 4
    //   204: ldc -115
    //   206: new 173	java/lang/StringBuilder
    //   209: dup
    //   210: invokespecial 174	java/lang/StringBuilder:<init>	()V
    //   213: ldc -80
    //   215: invokevirtual 180	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   218: aload_1
    //   219: invokevirtual 183	java/lang/Throwable:getMessage	()Ljava/lang/String;
    //   222: invokevirtual 180	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   225: invokevirtual 186	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   228: invokestatic 189	com/estrongs/android/util/l:d	(Ljava/lang/String;Ljava/lang/String;)V
    //   231: aload 5
    //   233: invokestatic 152	com/estrongs/fs/util/j:a	(Ljava/io/InputStream;)V
    //   236: aconst_null
    //   237: areturn
    //   238: astore_1
    //   239: aconst_null
    //   240: astore 4
    //   242: aload 4
    //   244: invokestatic 152	com/estrongs/fs/util/j:a	(Ljava/io/InputStream;)V
    //   247: aload_1
    //   248: athrow
    //   249: astore_1
    //   250: goto -8 -> 242
    //   253: astore_1
    //   254: goto -54 -> 200
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	257	0	this	g
    //   0	257	1	paramh	h
    //   105	2	2	bool	boolean
    //   5	188	3	localInputStream1	InputStream
    //   11	111	4	localInputStream2	InputStream
    //   144	1	4	localIOException	java.io.IOException
    //   147	96	4	localObject	Object
    //   14	218	5	localInputStream3	InputStream
    //   42	87	6	localOptions	BitmapFactory.Options
    // Exception table:
    //   from	to	target	type
    //   116	120	144	java/io/IOException
    //   0	6	196	java/lang/Throwable
    //   0	6	238	finally
    //   16	23	249	finally
    //   35	44	249	finally
    //   50	56	249	finally
    //   62	69	249	finally
    //   75	81	249	finally
    //   87	95	249	finally
    //   101	106	249	finally
    //   116	120	249	finally
    //   126	138	249	finally
    //   152	156	249	finally
    //   162	168	249	finally
    //   177	181	249	finally
    //   187	193	249	finally
    //   204	231	249	finally
    //   16	23	253	java/lang/Throwable
    //   35	44	253	java/lang/Throwable
    //   50	56	253	java/lang/Throwable
    //   62	69	253	java/lang/Throwable
    //   75	81	253	java/lang/Throwable
    //   87	95	253	java/lang/Throwable
    //   101	106	253	java/lang/Throwable
    //   116	120	253	java/lang/Throwable
    //   126	138	253	java/lang/Throwable
    //   152	156	253	java/lang/Throwable
    //   162	168	253	java/lang/Throwable
    //   177	181	253	java/lang/Throwable
    //   187	193	253	java/lang/Throwable
  }
  
  public String[] d()
  {
    return bg.j();
  }
  
  protected Bitmap.CompressFormat g(h paramh)
  {
    if (bg.e(paramh.getAbsolutePath())) {
      return Bitmap.CompressFormat.PNG;
    }
    return Bitmap.CompressFormat.JPEG;
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.h.g
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */