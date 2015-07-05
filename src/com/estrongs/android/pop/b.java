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
    //   0: aconst_null
    //   1: astore_3
    //   2: iconst_0
    //   3: istore_0
    //   4: getstatic 17	com/estrongs/android/pop/b:b	Z
    //   7: ifeq +4 -> 11
    //   10: return
    //   11: iconst_1
    //   12: putstatic 17	com/estrongs/android/pop/b:b	Z
    //   15: ldc 53
    //   17: invokestatic 55	com/estrongs/android/pop/b:a	(Ljava/lang/String;)Ljava/lang/String;
    //   20: astore 5
    //   22: invokestatic 48	android/os/Environment:getExternalStorageDirectory	()Ljava/io/File;
    //   25: invokevirtual 51	java/io/File:getAbsolutePath	()Ljava/lang/String;
    //   28: astore 6
    //   30: aload 5
    //   32: ifnull +328 -> 360
    //   35: aload 6
    //   37: ifnull +323 -> 360
    //   40: aload 5
    //   42: aload 6
    //   44: invokevirtual 61	java/lang/String:equals	(Ljava/lang/Object;)Z
    //   47: ifeq +13 -> 60
    //   50: iconst_1
    //   51: putstatic 15	com/estrongs/android/pop/b:a	Z
    //   54: aload 5
    //   56: putstatic 19	com/estrongs/android/pop/b:c	Ljava/lang/String;
    //   59: return
    //   60: new 30	java/io/File
    //   63: dup
    //   64: getstatic 65	com/estrongs/android/pop/a:b	Ljava/lang/String;
    //   67: invokespecial 33	java/io/File:<init>	(Ljava/lang/String;)V
    //   70: astore 4
    //   72: aload 4
    //   74: invokevirtual 69	java/io/File:exists	()Z
    //   77: ifne +9 -> 86
    //   80: aload 4
    //   82: invokevirtual 72	java/io/File:mkdirs	()Z
    //   85: pop
    //   86: invokestatic 78	java/lang/System:currentTimeMillis	()J
    //   89: lstore_1
    //   90: new 30	java/io/File
    //   93: dup
    //   94: new 80	java/lang/StringBuilder
    //   97: dup
    //   98: invokespecial 81	java/lang/StringBuilder:<init>	()V
    //   101: aload 5
    //   103: invokevirtual 85	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   106: ldc 87
    //   108: invokevirtual 85	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   111: ldc 89
    //   113: invokevirtual 85	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   116: lload_1
    //   117: invokevirtual 92	java/lang/StringBuilder:append	(J)Ljava/lang/StringBuilder;
    //   120: invokevirtual 95	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   123: invokespecial 33	java/io/File:<init>	(Ljava/lang/String;)V
    //   126: astore 4
    //   128: aload 4
    //   130: invokevirtual 98	java/io/File:createNewFile	()Z
    //   133: pop
    //   134: new 30	java/io/File
    //   137: dup
    //   138: new 80	java/lang/StringBuilder
    //   141: dup
    //   142: invokespecial 81	java/lang/StringBuilder:<init>	()V
    //   145: getstatic 65	com/estrongs/android/pop/a:b	Ljava/lang/String;
    //   148: invokevirtual 85	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   151: ldc 89
    //   153: invokevirtual 85	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   156: lload_1
    //   157: invokevirtual 92	java/lang/StringBuilder:append	(J)Ljava/lang/StringBuilder;
    //   160: invokevirtual 95	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   163: invokespecial 33	java/io/File:<init>	(Ljava/lang/String;)V
    //   166: invokevirtual 69	java/io/File:exists	()Z
    //   169: ifeq +24 -> 193
    //   172: iconst_1
    //   173: putstatic 15	com/estrongs/android/pop/b:a	Z
    //   176: aload 6
    //   178: putstatic 19	com/estrongs/android/pop/b:c	Ljava/lang/String;
    //   181: aload 4
    //   183: ifnull -173 -> 10
    //   186: aload 4
    //   188: invokevirtual 101	java/io/File:delete	()Z
    //   191: pop
    //   192: return
    //   193: iconst_0
    //   194: putstatic 15	com/estrongs/android/pop/b:a	Z
    //   197: aconst_null
    //   198: putstatic 19	com/estrongs/android/pop/b:c	Ljava/lang/String;
    //   201: aload 5
    //   203: ldc 103
    //   205: invokevirtual 107	java/lang/String:equalsIgnoreCase	(Ljava/lang/String;)Z
    //   208: ifeq +130 -> 338
    //   211: iload_0
    //   212: iconst_3
    //   213: if_icmpge +71 -> 284
    //   216: new 30	java/io/File
    //   219: dup
    //   220: new 80	java/lang/StringBuilder
    //   223: dup
    //   224: invokespecial 81	java/lang/StringBuilder:<init>	()V
    //   227: ldc 109
    //   229: invokevirtual 85	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   232: iload_0
    //   233: invokevirtual 112	java/lang/StringBuilder:append	(I)Ljava/lang/StringBuilder;
    //   236: ldc 87
    //   238: invokevirtual 85	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   241: ldc 89
    //   243: invokevirtual 85	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   246: lload_1
    //   247: invokevirtual 92	java/lang/StringBuilder:append	(J)Ljava/lang/StringBuilder;
    //   250: invokevirtual 95	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   253: invokespecial 33	java/io/File:<init>	(Ljava/lang/String;)V
    //   256: invokevirtual 69	java/io/File:exists	()Z
    //   259: ifeq +72 -> 331
    //   262: new 80	java/lang/StringBuilder
    //   265: dup
    //   266: invokespecial 81	java/lang/StringBuilder:<init>	()V
    //   269: ldc 109
    //   271: invokevirtual 85	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   274: iload_0
    //   275: invokevirtual 112	java/lang/StringBuilder:append	(I)Ljava/lang/StringBuilder;
    //   278: invokevirtual 95	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   281: putstatic 19	com/estrongs/android/pop/b:c	Ljava/lang/String;
    //   284: getstatic 19	com/estrongs/android/pop/b:c	Ljava/lang/String;
    //   287: ifnonnull -106 -> 181
    //   290: aload 5
    //   292: putstatic 19	com/estrongs/android/pop/b:c	Ljava/lang/String;
    //   295: goto -114 -> 181
    //   298: astore 5
    //   300: aload 4
    //   302: astore_3
    //   303: aload 5
    //   305: astore 4
    //   307: aload 4
    //   309: invokevirtual 40	java/lang/Exception:printStackTrace	()V
    //   312: iconst_1
    //   313: putstatic 15	com/estrongs/android/pop/b:a	Z
    //   316: aload 6
    //   318: putstatic 19	com/estrongs/android/pop/b:c	Ljava/lang/String;
    //   321: aload_3
    //   322: ifnull -312 -> 10
    //   325: aload_3
    //   326: invokevirtual 101	java/io/File:delete	()Z
    //   329: pop
    //   330: return
    //   331: iload_0
    //   332: iconst_1
    //   333: iadd
    //   334: istore_0
    //   335: goto -124 -> 211
    //   338: aload 5
    //   340: putstatic 19	com/estrongs/android/pop/b:c	Ljava/lang/String;
    //   343: goto -162 -> 181
    //   346: astore_3
    //   347: aload 4
    //   349: ifnull +9 -> 358
    //   352: aload 4
    //   354: invokevirtual 101	java/io/File:delete	()Z
    //   357: pop
    //   358: aload_3
    //   359: athrow
    //   360: aload 6
    //   362: ifnull +13 -> 375
    //   365: iconst_1
    //   366: putstatic 15	com/estrongs/android/pop/b:a	Z
    //   369: aload 6
    //   371: putstatic 19	com/estrongs/android/pop/b:c	Ljava/lang/String;
    //   374: return
    //   375: iconst_0
    //   376: putstatic 15	com/estrongs/android/pop/b:a	Z
    //   379: aload 5
    //   381: putstatic 19	com/estrongs/android/pop/b:c	Ljava/lang/String;
    //   384: return
    //   385: astore_3
    //   386: aconst_null
    //   387: astore 4
    //   389: goto -42 -> 347
    //   392: astore 5
    //   394: aload_3
    //   395: astore 4
    //   397: aload 5
    //   399: astore_3
    //   400: goto -53 -> 347
    //   403: astore 4
    //   405: goto -98 -> 307
    // Local variable table:
    //   start	length	slot	name	signature
    //   3	332	0	i	int
    //   89	158	1	l	long
    //   1	325	3	localObject1	Object
    //   346	13	3	localObject2	Object
    //   385	10	3	localObject3	Object
    //   399	1	3	localObject4	Object
    //   70	326	4	localObject5	Object
    //   403	1	4	localException1	Exception
    //   20	271	5	str1	String
    //   298	82	5	localException2	Exception
    //   392	6	5	localObject6	Object
    //   28	342	6	str2	String
    // Exception table:
    //   from	to	target	type
    //   128	181	298	java/lang/Exception
    //   193	211	298	java/lang/Exception
    //   216	284	298	java/lang/Exception
    //   284	295	298	java/lang/Exception
    //   338	343	298	java/lang/Exception
    //   128	181	346	finally
    //   193	211	346	finally
    //   216	284	346	finally
    //   284	295	346	finally
    //   338	343	346	finally
    //   60	86	385	finally
    //   86	128	385	finally
    //   307	321	392	finally
    //   60	86	403	java/lang/Exception
    //   86	128	403	java/lang/Exception
  }
  
  public static boolean d()
  {
    boolean bool1 = false;
    if (!a.d.startsWith("/sdcard")) {}
    for (;;)
    {
      return bool1;
      String str = a.d + "/testDB";
      try
      {
        File localFile = new File(a.d);
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
        SQLiteDatabase localSQLiteDatabase = SQLiteDatabase.openOrCreateDatabase(str, null);
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