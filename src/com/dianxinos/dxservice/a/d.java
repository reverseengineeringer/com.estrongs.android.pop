package com.dianxinos.dxservice.a;

import android.database.sqlite.SQLiteDatabase;
import android.util.Log;

public class d
{
  /* Error */
  public static int a(SQLiteDatabase paramSQLiteDatabase)
  {
    // Byte code:
    //   0: iconst_0
    //   1: istore_3
    //   2: iconst_0
    //   3: istore_1
    //   4: aconst_null
    //   5: astore 6
    //   7: aconst_null
    //   8: astore 7
    //   10: aconst_null
    //   11: astore 8
    //   13: aconst_null
    //   14: astore 4
    //   16: aconst_null
    //   17: astore 5
    //   19: new 18	java/io/FileInputStream
    //   22: dup
    //   23: new 20	java/io/File
    //   26: dup
    //   27: aload_0
    //   28: invokevirtual 26	android/database/sqlite/SQLiteDatabase:getPath	()Ljava/lang/String;
    //   31: invokespecial 30	java/io/File:<init>	(Ljava/lang/String;)V
    //   34: invokespecial 33	java/io/FileInputStream:<init>	(Ljava/io/File;)V
    //   37: astore_0
    //   38: aload_0
    //   39: astore 4
    //   41: aload_0
    //   42: invokevirtual 37	java/io/FileInputStream:available	()I
    //   45: istore_2
    //   46: iload_2
    //   47: istore_1
    //   48: iload_1
    //   49: istore_2
    //   50: aload_0
    //   51: ifnull +9 -> 60
    //   54: aload_0
    //   55: invokevirtual 41	java/io/FileInputStream:close	()V
    //   58: iload_1
    //   59: istore_2
    //   60: iload_2
    //   61: ireturn
    //   62: astore 5
    //   64: aconst_null
    //   65: astore_0
    //   66: aload_0
    //   67: astore 4
    //   69: getstatic 47	com/dianxinos/dxservice/a/c:e	Z
    //   72: ifeq +16 -> 88
    //   75: aload_0
    //   76: astore 4
    //   78: ldc 49
    //   80: ldc 51
    //   82: aload 5
    //   84: invokestatic 56	android/util/Log:e	(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    //   87: pop
    //   88: iload_1
    //   89: istore_2
    //   90: aload_0
    //   91: ifnull -31 -> 60
    //   94: aload_0
    //   95: invokevirtual 41	java/io/FileInputStream:close	()V
    //   98: iconst_0
    //   99: ireturn
    //   100: astore_0
    //   101: iload_1
    //   102: istore_2
    //   103: getstatic 47	com/dianxinos/dxservice/a/c:e	Z
    //   106: ifeq -46 -> 60
    //   109: iload_3
    //   110: istore_1
    //   111: ldc 49
    //   113: ldc 58
    //   115: aload_0
    //   116: invokestatic 56	android/util/Log:e	(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    //   119: pop
    //   120: iload_1
    //   121: ireturn
    //   122: astore 4
    //   124: aload 5
    //   126: astore_0
    //   127: aload 4
    //   129: astore 5
    //   131: aload_0
    //   132: astore 4
    //   134: getstatic 47	com/dianxinos/dxservice/a/c:e	Z
    //   137: ifeq +16 -> 153
    //   140: aload_0
    //   141: astore 4
    //   143: ldc 49
    //   145: ldc 60
    //   147: aload 5
    //   149: invokestatic 56	android/util/Log:e	(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    //   152: pop
    //   153: iload_1
    //   154: istore_2
    //   155: aload_0
    //   156: ifnull -96 -> 60
    //   159: aload_0
    //   160: invokevirtual 41	java/io/FileInputStream:close	()V
    //   163: iconst_0
    //   164: ireturn
    //   165: astore_0
    //   166: iload_1
    //   167: istore_2
    //   168: getstatic 47	com/dianxinos/dxservice/a/c:e	Z
    //   171: ifeq -111 -> 60
    //   174: iload_3
    //   175: istore_1
    //   176: goto -65 -> 111
    //   179: astore 5
    //   181: aload 6
    //   183: astore_0
    //   184: aload_0
    //   185: astore 4
    //   187: getstatic 47	com/dianxinos/dxservice/a/c:e	Z
    //   190: ifeq +16 -> 206
    //   193: aload_0
    //   194: astore 4
    //   196: ldc 49
    //   198: ldc 62
    //   200: aload 5
    //   202: invokestatic 56	android/util/Log:e	(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    //   205: pop
    //   206: iload_1
    //   207: istore_2
    //   208: aload_0
    //   209: ifnull -149 -> 60
    //   212: aload_0
    //   213: invokevirtual 41	java/io/FileInputStream:close	()V
    //   216: iconst_0
    //   217: ireturn
    //   218: astore_0
    //   219: iload_1
    //   220: istore_2
    //   221: getstatic 47	com/dianxinos/dxservice/a/c:e	Z
    //   224: ifeq -164 -> 60
    //   227: iload_3
    //   228: istore_1
    //   229: goto -118 -> 111
    //   232: astore 5
    //   234: aload 7
    //   236: astore_0
    //   237: aload_0
    //   238: astore 4
    //   240: getstatic 47	com/dianxinos/dxservice/a/c:e	Z
    //   243: ifeq +16 -> 259
    //   246: aload_0
    //   247: astore 4
    //   249: ldc 49
    //   251: ldc 64
    //   253: aload 5
    //   255: invokestatic 56	android/util/Log:e	(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    //   258: pop
    //   259: iload_1
    //   260: istore_2
    //   261: aload_0
    //   262: ifnull -202 -> 60
    //   265: aload_0
    //   266: invokevirtual 41	java/io/FileInputStream:close	()V
    //   269: iconst_0
    //   270: ireturn
    //   271: astore_0
    //   272: iload_1
    //   273: istore_2
    //   274: getstatic 47	com/dianxinos/dxservice/a/c:e	Z
    //   277: ifeq -217 -> 60
    //   280: iload_3
    //   281: istore_1
    //   282: goto -171 -> 111
    //   285: astore 5
    //   287: aload 8
    //   289: astore_0
    //   290: aload_0
    //   291: astore 4
    //   293: getstatic 47	com/dianxinos/dxservice/a/c:e	Z
    //   296: ifeq +16 -> 312
    //   299: aload_0
    //   300: astore 4
    //   302: ldc 49
    //   304: ldc 66
    //   306: aload 5
    //   308: invokestatic 56	android/util/Log:e	(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    //   311: pop
    //   312: iload_1
    //   313: istore_2
    //   314: aload_0
    //   315: ifnull -255 -> 60
    //   318: aload_0
    //   319: invokevirtual 41	java/io/FileInputStream:close	()V
    //   322: iconst_0
    //   323: ireturn
    //   324: astore_0
    //   325: iload_1
    //   326: istore_2
    //   327: getstatic 47	com/dianxinos/dxservice/a/c:e	Z
    //   330: ifeq -270 -> 60
    //   333: iload_3
    //   334: istore_1
    //   335: goto -224 -> 111
    //   338: astore_0
    //   339: aload 4
    //   341: ifnull +8 -> 349
    //   344: aload 4
    //   346: invokevirtual 41	java/io/FileInputStream:close	()V
    //   349: aload_0
    //   350: athrow
    //   351: astore 4
    //   353: getstatic 47	com/dianxinos/dxservice/a/c:e	Z
    //   356: ifeq -7 -> 349
    //   359: ldc 49
    //   361: ldc 58
    //   363: aload 4
    //   365: invokestatic 56	android/util/Log:e	(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    //   368: pop
    //   369: goto -20 -> 349
    //   372: astore_0
    //   373: iload_1
    //   374: istore_2
    //   375: getstatic 47	com/dianxinos/dxservice/a/c:e	Z
    //   378: ifeq -318 -> 60
    //   381: goto -270 -> 111
    //   384: astore_0
    //   385: goto -46 -> 339
    //   388: astore 5
    //   390: goto -100 -> 290
    //   393: astore 5
    //   395: goto -158 -> 237
    //   398: astore 5
    //   400: goto -216 -> 184
    //   403: astore 5
    //   405: goto -274 -> 131
    //   408: astore 5
    //   410: goto -344 -> 66
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	413	0	paramSQLiteDatabase	SQLiteDatabase
    //   3	371	1	i	int
    //   45	330	2	j	int
    //   1	333	3	k	int
    //   14	63	4	localSQLiteDatabase1	SQLiteDatabase
    //   122	6	4	localSecurityException1	SecurityException
    //   132	213	4	localSQLiteDatabase2	SQLiteDatabase
    //   351	13	4	localIOException1	java.io.IOException
    //   17	1	5	localObject1	Object
    //   62	63	5	localFileNotFoundException1	java.io.FileNotFoundException
    //   129	19	5	localSecurityException2	SecurityException
    //   179	22	5	localNullPointerException1	NullPointerException
    //   232	22	5	localIOException2	java.io.IOException
    //   285	22	5	localException1	Exception
    //   388	1	5	localException2	Exception
    //   393	1	5	localIOException3	java.io.IOException
    //   398	1	5	localNullPointerException2	NullPointerException
    //   403	1	5	localSecurityException3	SecurityException
    //   408	1	5	localFileNotFoundException2	java.io.FileNotFoundException
    //   5	177	6	localObject2	Object
    //   8	227	7	localObject3	Object
    //   11	277	8	localObject4	Object
    // Exception table:
    //   from	to	target	type
    //   19	38	62	java/io/FileNotFoundException
    //   94	98	100	java/io/IOException
    //   19	38	122	java/lang/SecurityException
    //   159	163	165	java/io/IOException
    //   19	38	179	java/lang/NullPointerException
    //   212	216	218	java/io/IOException
    //   19	38	232	java/io/IOException
    //   265	269	271	java/io/IOException
    //   19	38	285	java/lang/Exception
    //   318	322	324	java/io/IOException
    //   19	38	338	finally
    //   134	140	338	finally
    //   143	153	338	finally
    //   187	193	338	finally
    //   196	206	338	finally
    //   240	246	338	finally
    //   249	259	338	finally
    //   293	299	338	finally
    //   302	312	338	finally
    //   344	349	351	java/io/IOException
    //   54	58	372	java/io/IOException
    //   41	46	384	finally
    //   69	75	384	finally
    //   78	88	384	finally
    //   41	46	388	java/lang/Exception
    //   41	46	393	java/io/IOException
    //   41	46	398	java/lang/NullPointerException
    //   41	46	403	java/lang/SecurityException
    //   41	46	408	java/io/FileNotFoundException
  }
  
  public static void b(SQLiteDatabase paramSQLiteDatabase)
  {
    if (paramSQLiteDatabase != null) {}
    try
    {
      paramSQLiteDatabase.close();
      return;
    }
    catch (Exception paramSQLiteDatabase)
    {
      while (!c.e) {}
      Log.e("stat.DBUtils", "Failed to close the db!", paramSQLiteDatabase);
    }
  }
}

/* Location:
 * Qualified Name:     com.dianxinos.dxservice.a.d
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */