package com.estrongs.android.pop.app.imageviewer;

import android.graphics.Bitmap;
import android.graphics.Rect;
import android.os.Bundle;

class i
  implements Runnable
{
  i(CropImage paramCropImage, Bundle paramBundle, Bitmap paramBitmap, Rect paramRect) {}
  
  /* Error */
  public void run()
  {
    // Byte code:
    //   0: aconst_null
    //   1: astore 6
    //   3: aconst_null
    //   4: astore 5
    //   6: iconst_1
    //   7: istore_2
    //   8: new 35	java/io/FileOutputStream
    //   11: dup
    //   12: aload_0
    //   13: getfield 20	com/estrongs/android/pop/app/imageviewer/i:a	Landroid/os/Bundle;
    //   16: ldc 37
    //   18: invokevirtual 43	android/os/Bundle:getString	(Ljava/lang/String;)Ljava/lang/String;
    //   21: invokespecial 46	java/io/FileOutputStream:<init>	(Ljava/lang/String;)V
    //   24: astore 4
    //   26: aload_0
    //   27: getfield 22	com/estrongs/android/pop/app/imageviewer/i:b	Landroid/graphics/Bitmap;
    //   30: getstatic 52	android/graphics/Bitmap$CompressFormat:PNG	Landroid/graphics/Bitmap$CompressFormat;
    //   33: bipush 90
    //   35: aload 4
    //   37: invokevirtual 58	android/graphics/Bitmap:compress	(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z
    //   40: pop
    //   41: aload 4
    //   43: invokevirtual 61	java/io/FileOutputStream:close	()V
    //   46: aload_0
    //   47: getfield 18	com/estrongs/android/pop/app/imageviewer/i:d	Lcom/estrongs/android/pop/app/imageviewer/CropImage;
    //   50: aload_0
    //   51: getfield 24	com/estrongs/android/pop/app/imageviewer/i:c	Landroid/graphics/Rect;
    //   54: aload_0
    //   55: getfield 18	com/estrongs/android/pop/app/imageviewer/i:d	Lcom/estrongs/android/pop/app/imageviewer/CropImage;
    //   58: invokestatic 67	com/estrongs/android/pop/app/imageviewer/CropImage:f	(Lcom/estrongs/android/pop/app/imageviewer/CropImage;)I
    //   61: aload_0
    //   62: getfield 18	com/estrongs/android/pop/app/imageviewer/i:d	Lcom/estrongs/android/pop/app/imageviewer/CropImage;
    //   65: invokestatic 70	com/estrongs/android/pop/app/imageviewer/CropImage:g	(Lcom/estrongs/android/pop/app/imageviewer/CropImage;)I
    //   68: invokestatic 73	com/estrongs/android/pop/app/imageviewer/CropImage:a	(Lcom/estrongs/android/pop/app/imageviewer/CropImage;Landroid/graphics/Rect;II)Landroid/graphics/Bitmap;
    //   71: astore_3
    //   72: aload_3
    //   73: ifnonnull +75 -> 148
    //   76: new 33	java/lang/Exception
    //   79: dup
    //   80: ldc 75
    //   82: invokespecial 76	java/lang/Exception:<init>	(Ljava/lang/String;)V
    //   85: athrow
    //   86: astore 4
    //   88: aload 4
    //   90: invokevirtual 79	java/lang/Throwable:printStackTrace	()V
    //   93: iconst_0
    //   94: istore_2
    //   95: aload_0
    //   96: getfield 18	com/estrongs/android/pop/app/imageviewer/i:d	Lcom/estrongs/android/pop/app/imageviewer/CropImage;
    //   99: invokestatic 82	com/estrongs/android/pop/app/imageviewer/CropImage:c	(Lcom/estrongs/android/pop/app/imageviewer/CropImage;)Landroid/graphics/Bitmap;
    //   102: invokevirtual 85	android/graphics/Bitmap:recycle	()V
    //   105: aload_3
    //   106: ifnull +7 -> 113
    //   109: aload_3
    //   110: invokevirtual 85	android/graphics/Bitmap:recycle	()V
    //   113: iload_2
    //   114: istore_1
    //   115: aload 5
    //   117: ifnull +10 -> 127
    //   120: aload 5
    //   122: invokevirtual 61	java/io/FileOutputStream:close	()V
    //   125: iload_2
    //   126: istore_1
    //   127: aload_0
    //   128: getfield 18	com/estrongs/android/pop/app/imageviewer/i:d	Lcom/estrongs/android/pop/app/imageviewer/CropImage;
    //   131: invokestatic 89	com/estrongs/android/pop/app/imageviewer/CropImage:e	(Lcom/estrongs/android/pop/app/imageviewer/CropImage;)Landroid/os/Handler;
    //   134: new 91	com/estrongs/android/pop/app/imageviewer/j
    //   137: dup
    //   138: aload_0
    //   139: iload_1
    //   140: invokespecial 94	com/estrongs/android/pop/app/imageviewer/j:<init>	(Lcom/estrongs/android/pop/app/imageviewer/i;Z)V
    //   143: invokevirtual 100	android/os/Handler:post	(Ljava/lang/Runnable;)Z
    //   146: pop
    //   147: return
    //   148: new 35	java/io/FileOutputStream
    //   151: dup
    //   152: aload_0
    //   153: getfield 20	com/estrongs/android/pop/app/imageviewer/i:a	Landroid/os/Bundle;
    //   156: ldc 102
    //   158: invokevirtual 43	android/os/Bundle:getString	(Ljava/lang/String;)Ljava/lang/String;
    //   161: invokespecial 46	java/io/FileOutputStream:<init>	(Ljava/lang/String;)V
    //   164: astore 4
    //   166: aload_3
    //   167: getstatic 52	android/graphics/Bitmap$CompressFormat:PNG	Landroid/graphics/Bitmap$CompressFormat;
    //   170: bipush 90
    //   172: aload 4
    //   174: invokevirtual 58	android/graphics/Bitmap:compress	(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z
    //   177: pop
    //   178: aload_0
    //   179: getfield 18	com/estrongs/android/pop/app/imageviewer/i:d	Lcom/estrongs/android/pop/app/imageviewer/CropImage;
    //   182: invokestatic 82	com/estrongs/android/pop/app/imageviewer/CropImage:c	(Lcom/estrongs/android/pop/app/imageviewer/CropImage;)Landroid/graphics/Bitmap;
    //   185: invokevirtual 85	android/graphics/Bitmap:recycle	()V
    //   188: aload_3
    //   189: ifnull +7 -> 196
    //   192: aload_3
    //   193: invokevirtual 85	android/graphics/Bitmap:recycle	()V
    //   196: iload_2
    //   197: istore_1
    //   198: aload 4
    //   200: ifnull -73 -> 127
    //   203: aload 4
    //   205: invokevirtual 61	java/io/FileOutputStream:close	()V
    //   208: iload_2
    //   209: istore_1
    //   210: goto -83 -> 127
    //   213: astore_3
    //   214: iload_2
    //   215: istore_1
    //   216: goto -89 -> 127
    //   219: astore_3
    //   220: aconst_null
    //   221: astore 4
    //   223: aload 6
    //   225: astore 5
    //   227: aload_0
    //   228: getfield 18	com/estrongs/android/pop/app/imageviewer/i:d	Lcom/estrongs/android/pop/app/imageviewer/CropImage;
    //   231: invokestatic 82	com/estrongs/android/pop/app/imageviewer/CropImage:c	(Lcom/estrongs/android/pop/app/imageviewer/CropImage;)Landroid/graphics/Bitmap;
    //   234: invokevirtual 85	android/graphics/Bitmap:recycle	()V
    //   237: aload 5
    //   239: ifnull +8 -> 247
    //   242: aload 5
    //   244: invokevirtual 85	android/graphics/Bitmap:recycle	()V
    //   247: aload 4
    //   249: ifnull +8 -> 257
    //   252: aload 4
    //   254: invokevirtual 61	java/io/FileOutputStream:close	()V
    //   257: aload_3
    //   258: athrow
    //   259: astore_3
    //   260: iload_2
    //   261: istore_1
    //   262: goto -135 -> 127
    //   265: astore 4
    //   267: goto -10 -> 257
    //   270: astore_3
    //   271: aload 6
    //   273: astore 5
    //   275: goto -48 -> 227
    //   278: astore 6
    //   280: aconst_null
    //   281: astore 4
    //   283: aload_3
    //   284: astore 5
    //   286: aload 6
    //   288: astore_3
    //   289: goto -62 -> 227
    //   292: astore 6
    //   294: aload_3
    //   295: astore 5
    //   297: aload 6
    //   299: astore_3
    //   300: goto -73 -> 227
    //   303: astore 6
    //   305: aload 5
    //   307: astore 4
    //   309: aload_3
    //   310: astore 5
    //   312: aload 6
    //   314: astore_3
    //   315: goto -88 -> 227
    //   318: astore 4
    //   320: aconst_null
    //   321: astore_3
    //   322: goto -234 -> 88
    //   325: astore_3
    //   326: aload 4
    //   328: astore 5
    //   330: aconst_null
    //   331: astore 6
    //   333: aload_3
    //   334: astore 4
    //   336: aload 6
    //   338: astore_3
    //   339: goto -251 -> 88
    //   342: astore 6
    //   344: aload 4
    //   346: astore 5
    //   348: aload 6
    //   350: astore 4
    //   352: goto -264 -> 88
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	355	0	this	i
    //   114	148	1	bool1	boolean
    //   7	254	2	bool2	boolean
    //   71	122	3	localBitmap	Bitmap
    //   213	1	3	localException1	Exception
    //   219	39	3	localObject1	Object
    //   259	1	3	localException2	Exception
    //   270	14	3	localObject2	Object
    //   288	34	3	localObject3	Object
    //   325	9	3	localThrowable1	Throwable
    //   338	1	3	localObject4	Object
    //   24	18	4	localFileOutputStream1	java.io.FileOutputStream
    //   86	3	4	localThrowable2	Throwable
    //   164	89	4	localFileOutputStream2	java.io.FileOutputStream
    //   265	1	4	localException3	Exception
    //   281	27	4	localObject5	Object
    //   318	9	4	localThrowable3	Throwable
    //   334	17	4	localObject6	Object
    //   4	343	5	localObject7	Object
    //   1	271	6	localObject8	Object
    //   278	9	6	localObject9	Object
    //   292	6	6	localObject10	Object
    //   303	10	6	localObject11	Object
    //   331	6	6	localObject12	Object
    //   342	7	6	localThrowable4	Throwable
    // Exception table:
    //   from	to	target	type
    //   76	86	86	java/lang/Throwable
    //   148	166	86	java/lang/Throwable
    //   203	208	213	java/lang/Exception
    //   8	26	219	finally
    //   46	72	219	finally
    //   120	125	259	java/lang/Exception
    //   252	257	265	java/lang/Exception
    //   26	46	270	finally
    //   76	86	278	finally
    //   148	166	278	finally
    //   166	178	292	finally
    //   88	93	303	finally
    //   8	26	318	java/lang/Throwable
    //   46	72	318	java/lang/Throwable
    //   26	46	325	java/lang/Throwable
    //   166	178	342	java/lang/Throwable
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.pop.app.imageviewer.i
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */