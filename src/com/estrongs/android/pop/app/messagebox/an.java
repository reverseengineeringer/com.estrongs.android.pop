package com.estrongs.android.pop.app.messagebox;

import android.graphics.Bitmap;
import android.os.Environment;
import java.io.File;

public class an
{
  public static Bitmap a(String paramString)
  {
    if (!Environment.getExternalStorageState().equals("mounted")) {
      return null;
    }
    return c(paramString);
  }
  
  public static boolean a(String paramString1, String paramString2)
  {
    return new File(paramString1 + paramString2).exists();
  }
  
  /* Error */
  public static boolean a(String paramString1, String paramString2, Bitmap paramBitmap, long paramLong)
  {
    // Byte code:
    //   0: aconst_null
    //   1: astore 7
    //   3: aconst_null
    //   4: astore 8
    //   6: iconst_0
    //   7: istore 6
    //   9: invokestatic 12	android/os/Environment:getExternalStorageState	()Ljava/lang/String;
    //   12: ldc 14
    //   14: invokevirtual 20	java/lang/String:equals	(Ljava/lang/Object;)Z
    //   17: ifne +10 -> 27
    //   20: iload 6
    //   22: istore 5
    //   24: iload 5
    //   26: ireturn
    //   27: aload_0
    //   28: invokestatic 54	com/estrongs/android/pop/app/messagebox/an:b	(Ljava/lang/String;)Z
    //   31: pop
    //   32: new 27	java/io/File
    //   35: dup
    //   36: new 29	java/lang/StringBuilder
    //   39: dup
    //   40: invokespecial 33	java/lang/StringBuilder:<init>	()V
    //   43: aload_0
    //   44: invokevirtual 37	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   47: aload_1
    //   48: invokevirtual 37	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   51: invokevirtual 40	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   54: invokespecial 43	java/io/File:<init>	(Ljava/lang/String;)V
    //   57: astore 9
    //   59: iload 6
    //   61: istore 5
    //   63: aload_2
    //   64: ifnull -40 -> 24
    //   67: aload 9
    //   69: invokevirtual 47	java/io/File:exists	()Z
    //   72: ifeq +9 -> 81
    //   75: aload 9
    //   77: invokevirtual 57	java/io/File:delete	()Z
    //   80: pop
    //   81: aload 9
    //   83: invokevirtual 60	java/io/File:createNewFile	()Z
    //   86: pop
    //   87: new 62	java/io/FileOutputStream
    //   90: dup
    //   91: aload 9
    //   93: invokespecial 65	java/io/FileOutputStream:<init>	(Ljava/io/File;)V
    //   96: astore_1
    //   97: aload_2
    //   98: getstatic 71	android/graphics/Bitmap$CompressFormat:PNG	Landroid/graphics/Bitmap$CompressFormat;
    //   101: bipush 100
    //   103: aload_1
    //   104: invokevirtual 77	android/graphics/Bitmap:compress	(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z
    //   107: pop
    //   108: aload_1
    //   109: invokevirtual 80	java/io/FileOutputStream:flush	()V
    //   112: aload_1
    //   113: invokevirtual 83	java/io/FileOutputStream:close	()V
    //   116: new 85	java/io/FileInputStream
    //   119: dup
    //   120: aload 9
    //   122: invokespecial 86	java/io/FileInputStream:<init>	(Ljava/io/File;)V
    //   125: astore_0
    //   126: aload_0
    //   127: invokevirtual 90	java/io/FileInputStream:available	()I
    //   130: ifne +17 -> 147
    //   133: aload 9
    //   135: invokevirtual 47	java/io/File:exists	()Z
    //   138: ifeq +9 -> 147
    //   141: aload 9
    //   143: invokevirtual 57	java/io/File:delete	()Z
    //   146: pop
    //   147: lload_3
    //   148: lconst_0
    //   149: lcmp
    //   150: ifle +10 -> 160
    //   153: aload 9
    //   155: lload_3
    //   156: invokevirtual 94	java/io/File:setLastModified	(J)Z
    //   159: pop
    //   160: iconst_1
    //   161: istore 5
    //   163: aload_0
    //   164: ifnull +7 -> 171
    //   167: aload_0
    //   168: invokevirtual 95	java/io/FileInputStream:close	()V
    //   171: aload_1
    //   172: ifnull -148 -> 24
    //   175: aload_1
    //   176: invokevirtual 83	java/io/FileOutputStream:close	()V
    //   179: iconst_1
    //   180: ireturn
    //   181: astore_0
    //   182: ldc 97
    //   184: ldc 99
    //   186: aload_0
    //   187: invokestatic 105	android/util/Log:e	(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    //   190: pop
    //   191: iconst_1
    //   192: ireturn
    //   193: astore_0
    //   194: ldc 97
    //   196: ldc 99
    //   198: aload_0
    //   199: invokestatic 105	android/util/Log:e	(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    //   202: pop
    //   203: goto -32 -> 171
    //   206: astore_2
    //   207: aconst_null
    //   208: astore_0
    //   209: aload 8
    //   211: astore_1
    //   212: ldc 97
    //   214: ldc 99
    //   216: aload_2
    //   217: invokestatic 105	android/util/Log:e	(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    //   220: pop
    //   221: aload_0
    //   222: ifnull +7 -> 229
    //   225: aload_0
    //   226: invokevirtual 95	java/io/FileInputStream:close	()V
    //   229: iload 6
    //   231: istore 5
    //   233: aload_1
    //   234: ifnull -210 -> 24
    //   237: aload_1
    //   238: invokevirtual 83	java/io/FileOutputStream:close	()V
    //   241: iconst_0
    //   242: ireturn
    //   243: astore_0
    //   244: ldc 97
    //   246: ldc 99
    //   248: aload_0
    //   249: invokestatic 105	android/util/Log:e	(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    //   252: pop
    //   253: iconst_0
    //   254: ireturn
    //   255: astore_0
    //   256: ldc 97
    //   258: ldc 99
    //   260: aload_0
    //   261: invokestatic 105	android/util/Log:e	(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    //   264: pop
    //   265: goto -36 -> 229
    //   268: astore_0
    //   269: aconst_null
    //   270: astore_1
    //   271: aload 7
    //   273: astore_2
    //   274: aload_2
    //   275: ifnull +7 -> 282
    //   278: aload_2
    //   279: invokevirtual 95	java/io/FileInputStream:close	()V
    //   282: aload_1
    //   283: ifnull +7 -> 290
    //   286: aload_1
    //   287: invokevirtual 83	java/io/FileOutputStream:close	()V
    //   290: aload_0
    //   291: athrow
    //   292: astore_2
    //   293: ldc 97
    //   295: ldc 99
    //   297: aload_2
    //   298: invokestatic 105	android/util/Log:e	(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    //   301: pop
    //   302: goto -20 -> 282
    //   305: astore_1
    //   306: ldc 97
    //   308: ldc 99
    //   310: aload_1
    //   311: invokestatic 105	android/util/Log:e	(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    //   314: pop
    //   315: goto -25 -> 290
    //   318: astore_0
    //   319: aload 7
    //   321: astore_2
    //   322: goto -48 -> 274
    //   325: astore 7
    //   327: aload_0
    //   328: astore_2
    //   329: aload 7
    //   331: astore_0
    //   332: goto -58 -> 274
    //   335: astore 7
    //   337: aload_0
    //   338: astore_2
    //   339: aload 7
    //   341: astore_0
    //   342: goto -68 -> 274
    //   345: astore_2
    //   346: aconst_null
    //   347: astore_0
    //   348: goto -136 -> 212
    //   351: astore_2
    //   352: goto -140 -> 212
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	355	0	paramString1	String
    //   0	355	1	paramString2	String
    //   0	355	2	paramBitmap	Bitmap
    //   0	355	3	paramLong	long
    //   22	210	5	bool1	boolean
    //   7	223	6	bool2	boolean
    //   1	319	7	localObject1	Object
    //   325	5	7	localObject2	Object
    //   335	5	7	localObject3	Object
    //   4	206	8	localObject4	Object
    //   57	97	9	localFile	File
    // Exception table:
    //   from	to	target	type
    //   175	179	181	java/io/IOException
    //   167	171	193	java/io/IOException
    //   81	97	206	java/io/IOException
    //   237	241	243	java/io/IOException
    //   225	229	255	java/io/IOException
    //   81	97	268	finally
    //   278	282	292	java/io/IOException
    //   286	290	305	java/io/IOException
    //   97	126	318	finally
    //   126	147	325	finally
    //   153	160	325	finally
    //   212	221	335	finally
    //   97	126	345	java/io/IOException
    //   126	147	351	java/io/IOException
    //   153	160	351	java/io/IOException
  }
  
  public static void b(String paramString1, String paramString2)
  {
    new File(paramString1, paramString2).delete();
  }
  
  private static boolean b(String paramString)
  {
    if (!Environment.getExternalStorageState().equals("mounted")) {
      return false;
    }
    paramString = new File(paramString);
    if (paramString.exists()) {
      if (!paramString.isDirectory()) {
        paramString.mkdirs();
      }
    }
    for (;;)
    {
      return true;
      paramString.mkdirs();
    }
  }
  
  /* Error */
  private static Bitmap c(String paramString)
  {
    // Byte code:
    //   0: aconst_null
    //   1: astore_3
    //   2: new 118	android/graphics/BitmapFactory$Options
    //   5: dup
    //   6: invokespecial 119	android/graphics/BitmapFactory$Options:<init>	()V
    //   9: astore_2
    //   10: aload_2
    //   11: getstatic 125	android/graphics/Bitmap$Config:RGB_565	Landroid/graphics/Bitmap$Config;
    //   14: putfield 128	android/graphics/BitmapFactory$Options:inPreferredConfig	Landroid/graphics/Bitmap$Config;
    //   17: aload_2
    //   18: iconst_1
    //   19: putfield 132	android/graphics/BitmapFactory$Options:inPurgeable	Z
    //   22: aload_2
    //   23: iconst_1
    //   24: putfield 135	android/graphics/BitmapFactory$Options:inInputShareable	Z
    //   27: new 85	java/io/FileInputStream
    //   30: dup
    //   31: aload_0
    //   32: invokespecial 136	java/io/FileInputStream:<init>	(Ljava/lang/String;)V
    //   35: astore_1
    //   36: aload_1
    //   37: astore_0
    //   38: aload_1
    //   39: aconst_null
    //   40: aload_2
    //   41: invokestatic 142	android/graphics/BitmapFactory:decodeStream	(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    //   44: astore_2
    //   45: aload_2
    //   46: astore_0
    //   47: aload_0
    //   48: astore_2
    //   49: aload_1
    //   50: ifnull +9 -> 59
    //   53: aload_1
    //   54: invokevirtual 95	java/io/FileInputStream:close	()V
    //   57: aload_0
    //   58: astore_2
    //   59: aload_2
    //   60: areturn
    //   61: astore_1
    //   62: aload_1
    //   63: invokevirtual 145	java/io/IOException:printStackTrace	()V
    //   66: ldc 97
    //   68: ldc 99
    //   70: aload_1
    //   71: invokestatic 105	android/util/Log:e	(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    //   74: pop
    //   75: aload_0
    //   76: areturn
    //   77: astore_2
    //   78: aconst_null
    //   79: astore_1
    //   80: aload_1
    //   81: astore_0
    //   82: ldc 97
    //   84: ldc -109
    //   86: aload_2
    //   87: invokestatic 105	android/util/Log:e	(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    //   90: pop
    //   91: aload_3
    //   92: astore_2
    //   93: aload_1
    //   94: ifnull -35 -> 59
    //   97: aload_1
    //   98: invokevirtual 95	java/io/FileInputStream:close	()V
    //   101: aconst_null
    //   102: areturn
    //   103: astore_0
    //   104: aload_0
    //   105: invokevirtual 145	java/io/IOException:printStackTrace	()V
    //   108: ldc 97
    //   110: ldc 99
    //   112: aload_0
    //   113: invokestatic 105	android/util/Log:e	(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    //   116: pop
    //   117: aconst_null
    //   118: areturn
    //   119: astore_1
    //   120: aconst_null
    //   121: astore_0
    //   122: aload_0
    //   123: ifnull +7 -> 130
    //   126: aload_0
    //   127: invokevirtual 95	java/io/FileInputStream:close	()V
    //   130: aload_1
    //   131: athrow
    //   132: astore_0
    //   133: aload_0
    //   134: invokevirtual 145	java/io/IOException:printStackTrace	()V
    //   137: ldc 97
    //   139: ldc 99
    //   141: aload_0
    //   142: invokestatic 105	android/util/Log:e	(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    //   145: pop
    //   146: goto -16 -> 130
    //   149: astore_1
    //   150: goto -28 -> 122
    //   153: astore_2
    //   154: goto -74 -> 80
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	157	0	paramString	String
    //   35	19	1	localFileInputStream	java.io.FileInputStream
    //   61	10	1	localIOException	java.io.IOException
    //   79	19	1	localObject1	Object
    //   119	12	1	localObject2	Object
    //   149	1	1	localObject3	Object
    //   9	51	2	localObject4	Object
    //   77	10	2	localFileNotFoundException1	java.io.FileNotFoundException
    //   92	1	2	localObject5	Object
    //   153	1	2	localFileNotFoundException2	java.io.FileNotFoundException
    //   1	91	3	localObject6	Object
    // Exception table:
    //   from	to	target	type
    //   53	57	61	java/io/IOException
    //   27	36	77	java/io/FileNotFoundException
    //   97	101	103	java/io/IOException
    //   27	36	119	finally
    //   126	130	132	java/io/IOException
    //   38	45	149	finally
    //   82	91	149	finally
    //   38	45	153	java/io/FileNotFoundException
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.pop.app.messagebox.an
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */