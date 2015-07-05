package com.estrongs.android.d;

import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.Bitmap.CompressFormat;
import android.graphics.Bitmap.Config;
import android.graphics.BitmapFactory;
import android.graphics.BitmapFactory.Options;
import com.estrongs.android.pop.z;
import com.estrongs.android.util.am;
import com.estrongs.android.util.bc;
import com.estrongs.fs.d;
import com.estrongs.fs.h;
import java.io.InputStream;

public class o
  extends a
{
  private static Bitmap b = null;
  private d c;
  
  public o(Context paramContext)
  {
    super(paramContext);
    c = d.a(paramContext);
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
  @android.annotation.TargetApi(8)
  protected Bitmap c(h paramh)
  {
    // Byte code:
    //   0: iconst_0
    //   1: istore_2
    //   2: aload_1
    //   3: invokeinterface 116 1 0
    //   8: astore 8
    //   10: aload_0
    //   11: getfield 25	com/estrongs/android/d/o:c	Lcom/estrongs/fs/d;
    //   14: aload 8
    //   16: invokevirtual 120	com/estrongs/fs/d:k	(Ljava/lang/String;)Ljava/io/InputStream;
    //   19: astore 4
    //   21: aload 4
    //   23: ifnull +343 -> 366
    //   26: aload 4
    //   28: astore_3
    //   29: aload 4
    //   31: astore 6
    //   33: new 28	android/graphics/BitmapFactory$Options
    //   36: dup
    //   37: invokespecial 122	android/graphics/BitmapFactory$Options:<init>	()V
    //   40: astore 7
    //   42: aload 4
    //   44: astore_3
    //   45: aload 4
    //   47: astore 6
    //   49: aload 7
    //   51: iconst_1
    //   52: putfield 62	android/graphics/BitmapFactory$Options:inJustDecodeBounds	Z
    //   55: aload 4
    //   57: astore 5
    //   59: aload 4
    //   61: astore_3
    //   62: aload 4
    //   64: astore 6
    //   66: aload 4
    //   68: invokevirtual 128	java/io/InputStream:markSupported	()Z
    //   71: ifne +21 -> 92
    //   74: aload 4
    //   76: astore_3
    //   77: aload 4
    //   79: astore 6
    //   81: new 130	java/io/BufferedInputStream
    //   84: dup
    //   85: aload 4
    //   87: invokespecial 133	java/io/BufferedInputStream:<init>	(Ljava/io/InputStream;)V
    //   90: astore 5
    //   92: aload 5
    //   94: astore_3
    //   95: aload 5
    //   97: astore 6
    //   99: aload 5
    //   101: ldc -122
    //   103: invokevirtual 138	java/io/InputStream:mark	(I)V
    //   106: aload 5
    //   108: astore_3
    //   109: aload 5
    //   111: astore 6
    //   113: aload 5
    //   115: aconst_null
    //   116: aload 7
    //   118: invokestatic 84	android/graphics/BitmapFactory:decodeStream	(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    //   121: pop
    //   122: aload 5
    //   124: astore_3
    //   125: aload 5
    //   127: astore 6
    //   129: aload 5
    //   131: invokevirtual 141	java/io/InputStream:reset	()V
    //   134: aload 5
    //   136: astore_3
    //   137: aload_0
    //   138: aload_3
    //   139: aload 7
    //   141: aload_1
    //   142: invokestatic 147	com/estrongs/android/d/f:h	(Lcom/estrongs/fs/h;)I
    //   145: invokespecial 149	com/estrongs/android/d/o:a	(Ljava/io/InputStream;Landroid/graphics/BitmapFactory$Options;I)Landroid/graphics/Bitmap;
    //   148: astore_1
    //   149: aload_1
    //   150: ifnonnull +318 -> 468
    //   153: aload_0
    //   154: getfield 98	com/estrongs/android/d/o:a	Landroid/content/Context;
    //   157: invokevirtual 153	android/content/Context:getResources	()Landroid/content/res/Resources;
    //   160: ldc -102
    //   162: invokestatic 158	android/graphics/BitmapFactory:decodeResource	(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;
    //   165: astore_1
    //   166: aload_3
    //   167: astore 4
    //   169: aload_1
    //   170: ifnull +288 -> 458
    //   173: iload_2
    //   174: ifeq +284 -> 458
    //   177: aload 4
    //   179: astore_3
    //   180: aload 4
    //   182: astore 6
    //   184: getstatic 12	com/estrongs/android/d/o:b	Landroid/graphics/Bitmap;
    //   187: ifnonnull +82 -> 269
    //   190: aload 4
    //   192: astore_3
    //   193: aload 4
    //   195: astore 6
    //   197: new 28	android/graphics/BitmapFactory$Options
    //   200: dup
    //   201: invokespecial 122	android/graphics/BitmapFactory$Options:<init>	()V
    //   204: astore 5
    //   206: aload 4
    //   208: astore_3
    //   209: aload 4
    //   211: astore 6
    //   213: aload 5
    //   215: iconst_0
    //   216: putfield 161	android/graphics/BitmapFactory$Options:inScaled	Z
    //   219: aload 4
    //   221: astore_3
    //   222: aload 4
    //   224: astore 6
    //   226: aload_0
    //   227: getfield 98	com/estrongs/android/d/o:a	Landroid/content/Context;
    //   230: invokevirtual 153	android/content/Context:getResources	()Landroid/content/res/Resources;
    //   233: ldc -94
    //   235: aload 5
    //   237: invokestatic 165	android/graphics/BitmapFactory:decodeResource	(Landroid/content/res/Resources;ILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    //   240: putstatic 12	com/estrongs/android/d/o:b	Landroid/graphics/Bitmap;
    //   243: aload 4
    //   245: astore_3
    //   246: aload 4
    //   248: astore 6
    //   250: getstatic 12	com/estrongs/android/d/o:b	Landroid/graphics/Bitmap;
    //   253: aload_0
    //   254: getfield 98	com/estrongs/android/d/o:a	Landroid/content/Context;
    //   257: invokevirtual 153	android/content/Context:getResources	()Landroid/content/res/Resources;
    //   260: invokevirtual 171	android/content/res/Resources:getDisplayMetrics	()Landroid/util/DisplayMetrics;
    //   263: getfield 176	android/util/DisplayMetrics:densityDpi	I
    //   266: invokevirtual 181	android/graphics/Bitmap:setDensity	(I)V
    //   269: aload 4
    //   271: astore_3
    //   272: aload 4
    //   274: astore 6
    //   276: aload_1
    //   277: getstatic 12	com/estrongs/android/d/o:b	Landroid/graphics/Bitmap;
    //   280: invokestatic 184	com/estrongs/android/d/o:a	(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    //   283: astore 5
    //   285: aload 4
    //   287: astore_3
    //   288: aload 4
    //   290: astore 6
    //   292: aload_1
    //   293: invokevirtual 187	android/graphics/Bitmap:recycle	()V
    //   296: aload 5
    //   298: astore_1
    //   299: aload 4
    //   301: invokestatic 191	com/estrongs/fs/util/j:a	(Ljava/io/InputStream;)V
    //   304: aload_1
    //   305: areturn
    //   306: astore_3
    //   307: aload 5
    //   309: astore_3
    //   310: aload 5
    //   312: astore 6
    //   314: aload 5
    //   316: invokestatic 191	com/estrongs/fs/util/j:a	(Ljava/io/InputStream;)V
    //   319: aload 5
    //   321: astore_3
    //   322: aload 5
    //   324: astore 6
    //   326: aload_0
    //   327: getfield 25	com/estrongs/android/d/o:c	Lcom/estrongs/fs/d;
    //   330: aload 8
    //   332: invokevirtual 120	com/estrongs/fs/d:k	(Ljava/lang/String;)Ljava/io/InputStream;
    //   335: astore 4
    //   337: aload 4
    //   339: ifnonnull +134 -> 473
    //   342: aload 4
    //   344: astore_3
    //   345: aload 4
    //   347: astore 6
    //   349: aload_0
    //   350: getfield 25	com/estrongs/android/d/o:c	Lcom/estrongs/fs/d;
    //   353: aload 8
    //   355: invokevirtual 194	com/estrongs/fs/d:e	(Ljava/lang/String;)Ljava/io/InputStream;
    //   358: astore 4
    //   360: aload 4
    //   362: astore_3
    //   363: goto -226 -> 137
    //   366: aload 4
    //   368: astore_3
    //   369: aload 4
    //   371: astore 6
    //   373: getstatic 199	android/os/Build$VERSION:SDK_INT	I
    //   376: bipush 8
    //   378: if_icmplt +83 -> 461
    //   381: aload 4
    //   383: astore_3
    //   384: aload 4
    //   386: astore 6
    //   388: aload 8
    //   390: iconst_3
    //   391: invokestatic 205	android/media/ThumbnailUtils:createVideoThumbnail	(Ljava/lang/String;I)Landroid/graphics/Bitmap;
    //   394: aload_1
    //   395: invokestatic 147	com/estrongs/android/d/f:h	(Lcom/estrongs/fs/h;)I
    //   398: aload_1
    //   399: invokestatic 147	com/estrongs/android/d/f:h	(Lcom/estrongs/fs/h;)I
    //   402: iconst_2
    //   403: invokestatic 209	android/media/ThumbnailUtils:extractThumbnail	(Landroid/graphics/Bitmap;III)Landroid/graphics/Bitmap;
    //   406: astore_1
    //   407: iconst_1
    //   408: istore_2
    //   409: goto -240 -> 169
    //   412: astore_1
    //   413: aconst_null
    //   414: astore_1
    //   415: aload_1
    //   416: invokestatic 191	com/estrongs/fs/util/j:a	(Ljava/io/InputStream;)V
    //   419: aconst_null
    //   420: areturn
    //   421: astore_1
    //   422: aconst_null
    //   423: astore_3
    //   424: aload_3
    //   425: invokestatic 191	com/estrongs/fs/util/j:a	(Ljava/io/InputStream;)V
    //   428: aload_1
    //   429: athrow
    //   430: astore_1
    //   431: goto -7 -> 424
    //   434: astore_1
    //   435: goto -11 -> 424
    //   438: astore_1
    //   439: aload 6
    //   441: astore_1
    //   442: goto -27 -> 415
    //   445: astore_1
    //   446: aload 6
    //   448: astore_1
    //   449: goto -34 -> 415
    //   452: astore_1
    //   453: aload_3
    //   454: astore_1
    //   455: goto -40 -> 415
    //   458: goto -159 -> 299
    //   461: iconst_1
    //   462: istore_2
    //   463: aconst_null
    //   464: astore_1
    //   465: goto -296 -> 169
    //   468: iconst_1
    //   469: istore_2
    //   470: goto -304 -> 166
    //   473: aload 4
    //   475: astore_3
    //   476: goto -339 -> 137
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	479	0	this	o
    //   0	479	1	paramh	h
    //   1	469	2	i	int
    //   28	260	3	localObject1	Object
    //   306	1	3	localIOException	java.io.IOException
    //   309	167	3	localObject2	Object
    //   19	455	4	localObject3	Object
    //   57	266	5	localObject4	Object
    //   31	416	6	localObject5	Object
    //   40	100	7	localOptions	BitmapFactory.Options
    //   8	381	8	str	String
    // Exception table:
    //   from	to	target	type
    //   129	134	306	java/io/IOException
    //   10	21	412	java/lang/Throwable
    //   10	21	421	finally
    //   33	42	430	finally
    //   49	55	430	finally
    //   66	74	430	finally
    //   81	92	430	finally
    //   99	106	430	finally
    //   113	122	430	finally
    //   129	134	430	finally
    //   184	190	430	finally
    //   197	206	430	finally
    //   213	219	430	finally
    //   226	243	430	finally
    //   250	269	430	finally
    //   276	285	430	finally
    //   292	296	430	finally
    //   314	319	430	finally
    //   326	337	430	finally
    //   349	360	430	finally
    //   373	381	430	finally
    //   388	407	430	finally
    //   137	149	434	finally
    //   153	166	434	finally
    //   33	42	438	java/lang/Throwable
    //   49	55	438	java/lang/Throwable
    //   66	74	438	java/lang/Throwable
    //   81	92	438	java/lang/Throwable
    //   349	360	438	java/lang/Throwable
    //   373	381	438	java/lang/Throwable
    //   388	407	438	java/lang/Throwable
    //   99	106	445	java/lang/Throwable
    //   113	122	445	java/lang/Throwable
    //   129	134	445	java/lang/Throwable
    //   184	190	445	java/lang/Throwable
    //   197	206	445	java/lang/Throwable
    //   213	219	445	java/lang/Throwable
    //   226	243	445	java/lang/Throwable
    //   250	269	445	java/lang/Throwable
    //   276	285	445	java/lang/Throwable
    //   292	296	445	java/lang/Throwable
    //   314	319	445	java/lang/Throwable
    //   326	337	445	java/lang/Throwable
    //   137	149	452	java/lang/Throwable
    //   153	166	452	java/lang/Throwable
  }
  
  public String[] d()
  {
    return bc.h();
  }
  
  protected Bitmap.CompressFormat g(h paramh)
  {
    return Bitmap.CompressFormat.JPEG;
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.d.o
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */