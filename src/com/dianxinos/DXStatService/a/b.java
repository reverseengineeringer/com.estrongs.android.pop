package com.dianxinos.DXStatService.a;

import android.util.Log;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;

public class b
{
  public static boolean a = false;
  public static boolean b = a;
  public static boolean c = a;
  public static boolean d = a;
  
  public static String a(String paramString)
  {
    try
    {
      Class localClass = Class.forName("android.os.SystemProperties");
      paramString = (String)localClass.getMethod("get", new Class[] { String.class }).invoke(localClass, new Object[] { paramString });
      return paramString;
    }
    catch (ClassNotFoundException paramString)
    {
      if (a) {
        Log.w("DXBase.Helper", "getSystemProperty has ClassNotFoundException", paramString);
      }
      return "";
    }
    catch (SecurityException paramString)
    {
      for (;;)
      {
        if (a) {
          Log.w("DXBase.Helper", "getSystemProperty has SecurityException", paramString);
        }
      }
    }
    catch (NoSuchMethodException paramString)
    {
      for (;;)
      {
        if (a) {
          Log.w("DXBase.Helper", "getSystemProperty has NoSuchMethodException", paramString);
        }
      }
    }
    catch (IllegalArgumentException paramString)
    {
      for (;;)
      {
        if (a) {
          Log.w("DXBase.Helper", "getSystemProperty has IllegalArgumentException", paramString);
        }
      }
    }
    catch (IllegalAccessException paramString)
    {
      for (;;)
      {
        if (a) {
          Log.w("DXBase.Helper", "getSystemProperty has IllegalAccessException", paramString);
        }
      }
    }
    catch (InvocationTargetException paramString)
    {
      for (;;)
      {
        if (a) {
          Log.w("DXBase.Helper", "getSystemProperty has InvocationTargetException", paramString);
        }
      }
    }
  }
  
  /* Error */
  public static String b(String paramString)
  {
    // Byte code:
    //   0: aconst_null
    //   1: astore_2
    //   2: new 83	java/io/BufferedReader
    //   5: dup
    //   6: new 85	java/io/FileReader
    //   9: dup
    //   10: new 87	java/io/File
    //   13: dup
    //   14: aload_0
    //   15: invokespecial 91	java/io/File:<init>	(Ljava/lang/String;)V
    //   18: invokespecial 94	java/io/FileReader:<init>	(Ljava/io/File;)V
    //   21: invokespecial 97	java/io/BufferedReader:<init>	(Ljava/io/Reader;)V
    //   24: astore_1
    //   25: aload_1
    //   26: astore_2
    //   27: new 99	java/lang/StringBuilder
    //   30: dup
    //   31: invokespecial 101	java/lang/StringBuilder:<init>	()V
    //   34: astore_3
    //   35: aload_1
    //   36: astore_2
    //   37: aload_1
    //   38: invokevirtual 105	java/io/BufferedReader:readLine	()Ljava/lang/String;
    //   41: astore 4
    //   43: aload 4
    //   45: ifnull +69 -> 114
    //   48: aload_1
    //   49: astore_2
    //   50: aload_3
    //   51: aload 4
    //   53: invokevirtual 109	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   56: pop
    //   57: aload_1
    //   58: astore_2
    //   59: aload_3
    //   60: ldc 111
    //   62: invokevirtual 109	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   65: pop
    //   66: goto -31 -> 35
    //   69: astore_2
    //   70: getstatic 15	com/dianxinos/DXStatService/a/b:b	Z
    //   73: ifeq +28 -> 101
    //   76: ldc 57
    //   78: new 99	java/lang/StringBuilder
    //   81: dup
    //   82: invokespecial 101	java/lang/StringBuilder:<init>	()V
    //   85: aload_0
    //   86: invokevirtual 109	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   89: ldc 113
    //   91: invokevirtual 109	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   94: invokevirtual 116	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   97: invokestatic 119	android/util/Log:w	(Ljava/lang/String;Ljava/lang/String;)I
    //   100: pop
    //   101: aload_1
    //   102: ifnull +7 -> 109
    //   105: aload_1
    //   106: invokevirtual 122	java/io/BufferedReader:close	()V
    //   109: ldc 67
    //   111: astore_0
    //   112: aload_0
    //   113: areturn
    //   114: aload_1
    //   115: astore_2
    //   116: aload_3
    //   117: invokevirtual 116	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   120: astore_3
    //   121: aload_3
    //   122: astore_2
    //   123: aload_2
    //   124: astore_0
    //   125: aload_1
    //   126: ifnull -14 -> 112
    //   129: aload_1
    //   130: invokevirtual 122	java/io/BufferedReader:close	()V
    //   133: aload_2
    //   134: areturn
    //   135: astore_1
    //   136: aload_2
    //   137: astore_0
    //   138: getstatic 15	com/dianxinos/DXStatService/a/b:b	Z
    //   141: ifeq -29 -> 112
    //   144: ldc 57
    //   146: ldc 124
    //   148: aload_1
    //   149: invokestatic 127	android/util/Log:e	(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    //   152: pop
    //   153: aload_2
    //   154: areturn
    //   155: astore_0
    //   156: getstatic 15	com/dianxinos/DXStatService/a/b:b	Z
    //   159: ifeq -50 -> 109
    //   162: ldc 57
    //   164: ldc 124
    //   166: aload_0
    //   167: invokestatic 127	android/util/Log:e	(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    //   170: pop
    //   171: goto -62 -> 109
    //   174: astore_0
    //   175: aconst_null
    //   176: astore_1
    //   177: aload_1
    //   178: astore_2
    //   179: getstatic 15	com/dianxinos/DXStatService/a/b:b	Z
    //   182: ifeq +14 -> 196
    //   185: aload_1
    //   186: astore_2
    //   187: ldc 57
    //   189: ldc 124
    //   191: aload_0
    //   192: invokestatic 127	android/util/Log:e	(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    //   195: pop
    //   196: aload_1
    //   197: ifnull -88 -> 109
    //   200: aload_1
    //   201: invokevirtual 122	java/io/BufferedReader:close	()V
    //   204: goto -95 -> 109
    //   207: astore_0
    //   208: getstatic 15	com/dianxinos/DXStatService/a/b:b	Z
    //   211: ifeq -102 -> 109
    //   214: ldc 57
    //   216: ldc 124
    //   218: aload_0
    //   219: invokestatic 127	android/util/Log:e	(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    //   222: pop
    //   223: goto -114 -> 109
    //   226: astore_0
    //   227: aconst_null
    //   228: astore_2
    //   229: aload_2
    //   230: ifnull +7 -> 237
    //   233: aload_2
    //   234: invokevirtual 122	java/io/BufferedReader:close	()V
    //   237: aload_0
    //   238: athrow
    //   239: astore_1
    //   240: getstatic 15	com/dianxinos/DXStatService/a/b:b	Z
    //   243: ifeq -6 -> 237
    //   246: ldc 57
    //   248: ldc 124
    //   250: aload_1
    //   251: invokestatic 127	android/util/Log:e	(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    //   254: pop
    //   255: goto -18 -> 237
    //   258: astore_0
    //   259: goto -30 -> 229
    //   262: astore_0
    //   263: aload_1
    //   264: astore_2
    //   265: goto -36 -> 229
    //   268: astore_0
    //   269: goto -92 -> 177
    //   272: astore_1
    //   273: aload_2
    //   274: astore_1
    //   275: goto -205 -> 70
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	278	0	paramString	String
    //   24	106	1	localBufferedReader	java.io.BufferedReader
    //   135	14	1	localIOException1	java.io.IOException
    //   176	25	1	localObject1	Object
    //   239	25	1	localIOException2	java.io.IOException
    //   272	1	1	localFileNotFoundException1	java.io.FileNotFoundException
    //   274	1	1	localObject2	Object
    //   1	58	2	localObject3	Object
    //   69	1	2	localFileNotFoundException2	java.io.FileNotFoundException
    //   115	159	2	localObject4	Object
    //   34	88	3	localObject5	Object
    //   41	11	4	str	String
    // Exception table:
    //   from	to	target	type
    //   27	35	69	java/io/FileNotFoundException
    //   37	43	69	java/io/FileNotFoundException
    //   50	57	69	java/io/FileNotFoundException
    //   59	66	69	java/io/FileNotFoundException
    //   116	121	69	java/io/FileNotFoundException
    //   129	133	135	java/io/IOException
    //   105	109	155	java/io/IOException
    //   2	25	174	java/io/IOException
    //   200	204	207	java/io/IOException
    //   2	25	226	finally
    //   233	237	239	java/io/IOException
    //   27	35	258	finally
    //   37	43	258	finally
    //   50	57	258	finally
    //   59	66	258	finally
    //   116	121	258	finally
    //   179	185	258	finally
    //   187	196	258	finally
    //   70	101	262	finally
    //   27	35	268	java/io/IOException
    //   37	43	268	java/io/IOException
    //   50	57	268	java/io/IOException
    //   59	66	268	java/io/IOException
    //   116	121	268	java/io/IOException
    //   2	25	272	java/io/FileNotFoundException
  }
}

/* Location:
 * Qualified Name:     com.dianxinos.DXStatService.a.b
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */