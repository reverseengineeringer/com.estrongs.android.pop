package com.estrongs.android.pop;

import android.database.sqlite.SQLiteDatabase;
import android.os.Environment;
import java.io.File;

public class b
{
  private static boolean a = true;
  private static boolean b = false;
  private static String c = null;
  private static Object d = new Object();
  
  private static String a(String paramString)
  {
    try
    {
      paramString = new File(paramString).getCanonicalPath();
      return paramString;
    }
    catch (Exception paramString)
    {
      paramString.printStackTrace();
    }
    return null;
  }
  
  public static void a()
  {
    synchronized (d)
    {
      b = false;
      c = null;
      c();
      return;
    }
  }
  
  public static String b()
  {
    synchronized (d)
    {
      c();
      if (c != null)
      {
        str = c;
        return str;
      }
      String str = Environment.getExternalStorageDirectory().getAbsolutePath();
      return str;
    }
  }
  
  /* Error */
  public static void c()
  {
    // Byte code:
    //   0: getstatic 17	com/estrongs/android/pop/b:b	Z
    //   3: ifeq +4 -> 7
    //   6: return
    //   7: iconst_1
    //   8: putstatic 17	com/estrongs/android/pop/b:b	Z
    //   11: ldc 55
    //   13: invokestatic 57	com/estrongs/android/pop/b:a	(Ljava/lang/String;)Ljava/lang/String;
    //   16: astore 5
    //   18: invokestatic 48	android/os/Environment:getExternalStorageDirectory	()Ljava/io/File;
    //   21: invokevirtual 51	java/io/File:getAbsolutePath	()Ljava/lang/String;
    //   24: astore 6
    //   26: aload 5
    //   28: ifnull +459 -> 487
    //   31: aload 6
    //   33: ifnull +454 -> 487
    //   36: new 30	java/io/File
    //   39: dup
    //   40: getstatic 61	com/estrongs/android/pop/a:b	Ljava/lang/String;
    //   43: invokespecial 33	java/io/File:<init>	(Ljava/lang/String;)V
    //   46: astore_3
    //   47: aload_3
    //   48: invokevirtual 65	java/io/File:exists	()Z
    //   51: ifne +56 -> 107
    //   54: aload_3
    //   55: invokevirtual 68	java/io/File:mkdirs	()Z
    //   58: pop
    //   59: invokestatic 73	com/estrongs/android/pop/FexApplication:a	()Lcom/estrongs/android/pop/FexApplication;
    //   62: invokestatic 78	com/estrongs/android/pop/ai:b	(Landroid/content/Context;)Lcom/estrongs/android/pop/ai;
    //   65: invokevirtual 81	com/estrongs/android/pop/ai:t	()Z
    //   68: ifne +12 -> 80
    //   71: invokestatic 73	com/estrongs/android/pop/FexApplication:a	()Lcom/estrongs/android/pop/FexApplication;
    //   74: invokestatic 78	com/estrongs/android/pop/ai:b	(Landroid/content/Context;)Lcom/estrongs/android/pop/ai;
    //   77: invokevirtual 84	com/estrongs/android/pop/ai:v	()V
    //   80: new 30	java/io/File
    //   83: dup
    //   84: getstatic 85	com/estrongs/android/pop/a:c	Ljava/lang/String;
    //   87: invokespecial 33	java/io/File:<init>	(Ljava/lang/String;)V
    //   90: invokevirtual 88	java/io/File:createNewFile	()Z
    //   93: pop
    //   94: invokestatic 73	com/estrongs/android/pop/FexApplication:a	()Lcom/estrongs/android/pop/FexApplication;
    //   97: invokestatic 93	com/estrongs/android/j/c:a	(Landroid/content/Context;)Lcom/estrongs/android/j/c;
    //   100: ldc 95
    //   102: ldc 97
    //   104: invokevirtual 100	com/estrongs/android/j/c:a	(Ljava/lang/String;Ljava/lang/String;)V
    //   107: invokestatic 73	com/estrongs/android/pop/FexApplication:a	()Lcom/estrongs/android/pop/FexApplication;
    //   110: invokestatic 78	com/estrongs/android/pop/ai:b	(Landroid/content/Context;)Lcom/estrongs/android/pop/ai;
    //   113: invokevirtual 81	com/estrongs/android/pop/ai:t	()Z
    //   116: ifne +12 -> 128
    //   119: invokestatic 73	com/estrongs/android/pop/FexApplication:a	()Lcom/estrongs/android/pop/FexApplication;
    //   122: invokestatic 78	com/estrongs/android/pop/ai:b	(Landroid/content/Context;)Lcom/estrongs/android/pop/ai;
    //   125: invokevirtual 103	com/estrongs/android/pop/ai:u	()V
    //   128: aload 5
    //   130: aload 6
    //   132: invokevirtual 109	java/lang/String:equals	(Ljava/lang/Object;)Z
    //   135: ifeq +29 -> 164
    //   138: iconst_1
    //   139: putstatic 15	com/estrongs/android/pop/b:a	Z
    //   142: aload 5
    //   144: putstatic 19	com/estrongs/android/pop/b:c	Ljava/lang/String;
    //   147: return
    //   148: astore_3
    //   149: aload_3
    //   150: invokevirtual 110	java/io/IOException:printStackTrace	()V
    //   153: goto -59 -> 94
    //   156: astore_3
    //   157: aload_3
    //   158: invokevirtual 40	java/lang/Exception:printStackTrace	()V
    //   161: goto -54 -> 107
    //   164: invokestatic 116	java/lang/System:currentTimeMillis	()J
    //   167: lstore_1
    //   168: new 30	java/io/File
    //   171: dup
    //   172: new 118	java/lang/StringBuilder
    //   175: dup
    //   176: invokespecial 119	java/lang/StringBuilder:<init>	()V
    //   179: aload 5
    //   181: invokevirtual 123	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   184: ldc 125
    //   186: invokevirtual 123	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   189: ldc 127
    //   191: invokevirtual 123	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   194: lload_1
    //   195: invokevirtual 130	java/lang/StringBuilder:append	(J)Ljava/lang/StringBuilder;
    //   198: invokevirtual 133	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   201: invokespecial 33	java/io/File:<init>	(Ljava/lang/String;)V
    //   204: astore 4
    //   206: aload 4
    //   208: astore_3
    //   209: aload 4
    //   211: invokevirtual 88	java/io/File:createNewFile	()Z
    //   214: pop
    //   215: aload 4
    //   217: astore_3
    //   218: new 30	java/io/File
    //   221: dup
    //   222: new 118	java/lang/StringBuilder
    //   225: dup
    //   226: invokespecial 119	java/lang/StringBuilder:<init>	()V
    //   229: getstatic 61	com/estrongs/android/pop/a:b	Ljava/lang/String;
    //   232: invokevirtual 123	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   235: ldc 127
    //   237: invokevirtual 123	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   240: lload_1
    //   241: invokevirtual 130	java/lang/StringBuilder:append	(J)Ljava/lang/StringBuilder;
    //   244: invokevirtual 133	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   247: invokespecial 33	java/io/File:<init>	(Ljava/lang/String;)V
    //   250: invokevirtual 65	java/io/File:exists	()Z
    //   253: ifeq +30 -> 283
    //   256: aload 4
    //   258: astore_3
    //   259: iconst_1
    //   260: putstatic 15	com/estrongs/android/pop/b:a	Z
    //   263: aload 4
    //   265: astore_3
    //   266: aload 6
    //   268: putstatic 19	com/estrongs/android/pop/b:c	Ljava/lang/String;
    //   271: aload 4
    //   273: ifnull -267 -> 6
    //   276: aload 4
    //   278: invokevirtual 136	java/io/File:delete	()Z
    //   281: pop
    //   282: return
    //   283: aload 4
    //   285: astore_3
    //   286: iconst_0
    //   287: putstatic 15	com/estrongs/android/pop/b:a	Z
    //   290: aload 4
    //   292: astore_3
    //   293: aconst_null
    //   294: putstatic 19	com/estrongs/android/pop/b:c	Ljava/lang/String;
    //   297: aload 4
    //   299: astore_3
    //   300: aload 5
    //   302: ldc -118
    //   304: invokevirtual 142	java/lang/String:equalsIgnoreCase	(Ljava/lang/String;)Z
    //   307: ifeq +148 -> 455
    //   310: iconst_0
    //   311: istore_0
    //   312: iload_0
    //   313: iconst_3
    //   314: if_icmpge +77 -> 391
    //   317: aload 4
    //   319: astore_3
    //   320: new 30	java/io/File
    //   323: dup
    //   324: new 118	java/lang/StringBuilder
    //   327: dup
    //   328: invokespecial 119	java/lang/StringBuilder:<init>	()V
    //   331: ldc -112
    //   333: invokevirtual 123	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   336: iload_0
    //   337: invokevirtual 147	java/lang/StringBuilder:append	(I)Ljava/lang/StringBuilder;
    //   340: ldc 125
    //   342: invokevirtual 123	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   345: ldc 127
    //   347: invokevirtual 123	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   350: lload_1
    //   351: invokevirtual 130	java/lang/StringBuilder:append	(J)Ljava/lang/StringBuilder;
    //   354: invokevirtual 133	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   357: invokespecial 33	java/io/File:<init>	(Ljava/lang/String;)V
    //   360: invokevirtual 65	java/io/File:exists	()Z
    //   363: ifeq +85 -> 448
    //   366: aload 4
    //   368: astore_3
    //   369: new 118	java/lang/StringBuilder
    //   372: dup
    //   373: invokespecial 119	java/lang/StringBuilder:<init>	()V
    //   376: ldc -112
    //   378: invokevirtual 123	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   381: iload_0
    //   382: invokevirtual 147	java/lang/StringBuilder:append	(I)Ljava/lang/StringBuilder;
    //   385: invokevirtual 133	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   388: putstatic 19	com/estrongs/android/pop/b:c	Ljava/lang/String;
    //   391: aload 4
    //   393: astore_3
    //   394: getstatic 19	com/estrongs/android/pop/b:c	Ljava/lang/String;
    //   397: ifnonnull -126 -> 271
    //   400: aload 4
    //   402: astore_3
    //   403: aload 5
    //   405: putstatic 19	com/estrongs/android/pop/b:c	Ljava/lang/String;
    //   408: goto -137 -> 271
    //   411: astore 5
    //   413: aload 4
    //   415: astore_3
    //   416: aload 5
    //   418: invokevirtual 40	java/lang/Exception:printStackTrace	()V
    //   421: aload 4
    //   423: astore_3
    //   424: iconst_1
    //   425: putstatic 15	com/estrongs/android/pop/b:a	Z
    //   428: aload 4
    //   430: astore_3
    //   431: aload 6
    //   433: putstatic 19	com/estrongs/android/pop/b:c	Ljava/lang/String;
    //   436: aload 4
    //   438: ifnull -432 -> 6
    //   441: aload 4
    //   443: invokevirtual 136	java/io/File:delete	()Z
    //   446: pop
    //   447: return
    //   448: iload_0
    //   449: iconst_1
    //   450: iadd
    //   451: istore_0
    //   452: goto -140 -> 312
    //   455: aload 4
    //   457: astore_3
    //   458: aload 5
    //   460: putstatic 19	com/estrongs/android/pop/b:c	Ljava/lang/String;
    //   463: goto -192 -> 271
    //   466: astore 5
    //   468: aload_3
    //   469: astore 4
    //   471: aload 5
    //   473: astore_3
    //   474: aload 4
    //   476: ifnull +9 -> 485
    //   479: aload 4
    //   481: invokevirtual 136	java/io/File:delete	()Z
    //   484: pop
    //   485: aload_3
    //   486: athrow
    //   487: aload 6
    //   489: ifnull +13 -> 502
    //   492: iconst_1
    //   493: putstatic 15	com/estrongs/android/pop/b:a	Z
    //   496: aload 6
    //   498: putstatic 19	com/estrongs/android/pop/b:c	Ljava/lang/String;
    //   501: return
    //   502: iconst_0
    //   503: putstatic 15	com/estrongs/android/pop/b:a	Z
    //   506: aload 5
    //   508: putstatic 19	com/estrongs/android/pop/b:c	Ljava/lang/String;
    //   511: return
    //   512: astore_3
    //   513: aconst_null
    //   514: astore 4
    //   516: goto -42 -> 474
    //   519: astore 5
    //   521: aconst_null
    //   522: astore 4
    //   524: goto -111 -> 413
    // Local variable table:
    //   start	length	slot	name	signature
    //   311	141	0	i	int
    //   167	184	1	l	long
    //   46	9	3	localFile	File
    //   148	2	3	localIOException	java.io.IOException
    //   156	2	3	localException1	Exception
    //   208	278	3	localObject1	Object
    //   512	1	3	localObject2	Object
    //   204	319	4	localObject3	Object
    //   16	388	5	str1	String
    //   411	48	5	localException2	Exception
    //   466	41	5	str2	String
    //   519	1	5	localException3	Exception
    //   24	473	6	str3	String
    // Exception table:
    //   from	to	target	type
    //   80	94	148	java/io/IOException
    //   94	107	156	java/lang/Exception
    //   209	215	411	java/lang/Exception
    //   218	256	411	java/lang/Exception
    //   259	263	411	java/lang/Exception
    //   266	271	411	java/lang/Exception
    //   286	290	411	java/lang/Exception
    //   293	297	411	java/lang/Exception
    //   300	310	411	java/lang/Exception
    //   320	366	411	java/lang/Exception
    //   369	391	411	java/lang/Exception
    //   394	400	411	java/lang/Exception
    //   403	408	411	java/lang/Exception
    //   458	463	411	java/lang/Exception
    //   209	215	466	finally
    //   218	256	466	finally
    //   259	263	466	finally
    //   266	271	466	finally
    //   286	290	466	finally
    //   293	297	466	finally
    //   300	310	466	finally
    //   320	366	466	finally
    //   369	391	466	finally
    //   394	400	466	finally
    //   403	408	466	finally
    //   416	421	466	finally
    //   424	428	466	finally
    //   431	436	466	finally
    //   458	463	466	finally
    //   164	206	512	finally
    //   164	206	519	java/lang/Exception
  }
  
  public static boolean d()
  {
    boolean bool1 = false;
    if (!a.f.startsWith("/sdcard")) {}
    for (;;)
    {
      return bool1;
      String str = a.f + "/testDB";
      try
      {
        File localFile = new File(a.f);
        if (!localFile.exists())
        {
          boolean bool2 = localFile.mkdirs();
          if (!bool2)
          {
            if (0 == 0) {
              continue;
            }
            try
            {
              throw new NullPointerException();
            }
            catch (Exception localException1)
            {
              localException1.printStackTrace();
              return false;
            }
          }
        }
        SQLiteDatabase localSQLiteDatabase = SQLiteDatabase.openOrCreateDatabase(localException1, null);
        bool1 = true;
        if (localSQLiteDatabase != null) {
          try
          {
            localSQLiteDatabase.close();
            return true;
          }
          catch (Exception localException2)
          {
            localException2.printStackTrace();
            return true;
          }
        }
      }
      catch (Exception localException3)
      {
        localException3.printStackTrace();
        if (0 != 0) {
          try
          {
            throw new NullPointerException();
          }
          catch (Exception localException4)
          {
            localException4.printStackTrace();
            return false;
          }
        }
      }
      finally
      {
        if (0 == 0) {}
      }
    }
    try
    {
      throw new NullPointerException();
      throw ((Throwable)localObject);
    }
    catch (Exception localException5)
    {
      for (;;)
      {
        localException5.printStackTrace();
      }
    }
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.pop.b
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */