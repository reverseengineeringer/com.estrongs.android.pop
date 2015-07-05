package com.estrongs.android.util;

import android.content.ContentValues;
import android.database.sqlite.SQLiteDatabase;
import android.graphics.Bitmap;
import android.graphics.Bitmap.CompressFormat;
import android.net.Uri;
import com.estrongs.android.pop.FexApplication;
import com.estrongs.android.pop.ad;
import com.estrongs.android.pop.utils.aa;
import com.estrongs.android.pop.view.FileExplorerActivity;
import java.io.ByteArrayOutputStream;
import java.io.File;
import java.util.HashMap;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.Map.Entry;
import java.util.Set;

public class be
{
  private static String a = null;
  private static be b = null;
  private static int d = 0;
  private static LinkedList<bf> e = new LinkedList();
  private static HashMap<String, Bitmap> f = new HashMap();
  private SQLiteDatabase c = null;
  private boolean g = false;
  
  public static void a(String paramString)
  {
    a = paramString + "/";
  }
  
  private void a(LinkedList<bf> paramLinkedList, bf parambf, boolean paramBoolean)
  {
    if (paramLinkedList == null) {
      return;
    }
    if (paramBoolean)
    {
      paramLinkedList.addFirst(parambf);
      return;
    }
    paramLinkedList.addLast(parambf);
  }
  
  private static String b(String paramString)
  {
    File localFile = new File(paramString);
    if (!localFile.exists()) {
      localFile.mkdirs();
    }
    return paramString;
  }
  
  private static void b(int paramInt)
  {
    if (paramInt == 4) {
      return;
    }
    if (paramInt < 2) {}
    try
    {
      bc.execSQL("ALTER TABLE visit_history ADD isdir INTEGER");
      if (paramInt < 3) {
        l();
      }
      if (paramInt >= 4) {}
    }
    catch (Exception localException1)
    {
      try
      {
        bc.execSQL("ALTER TABLE visit_history ADD title TEXT");
        bc.execSQL("UPDATE cachedb_version SET dbver=4");
        return;
        localException1 = localException1;
        localException1.printStackTrace();
      }
      catch (Exception localException2)
      {
        for (;;)
        {
          localException2.printStackTrace();
        }
      }
    }
  }
  
  /* Error */
  public static be c()
  {
    // Byte code:
    //   0: aconst_null
    //   1: astore_0
    //   2: ldc 2
    //   4: monitorenter
    //   5: getstatic 26	com/estrongs/android/util/be:b	Lcom/estrongs/android/util/be;
    //   8: ifnonnull +225 -> 233
    //   11: getstatic 24	com/estrongs/android/util/be:a	Ljava/lang/String;
    //   14: ifnull +9 -> 23
    //   17: getstatic 112	com/estrongs/android/pop/z:ao	Z
    //   20: ifeq +16 -> 36
    //   23: new 2	com/estrongs/android/util/be
    //   26: dup
    //   27: invokespecial 113	com/estrongs/android/util/be:<init>	()V
    //   30: astore_0
    //   31: ldc 2
    //   33: monitorexit
    //   34: aload_0
    //   35: areturn
    //   36: getstatic 24	com/estrongs/android/util/be:a	Ljava/lang/String;
    //   39: invokestatic 115	com/estrongs/android/util/be:b	(Ljava/lang/String;)Ljava/lang/String;
    //   42: pop
    //   43: new 2	com/estrongs/android/util/be
    //   46: dup
    //   47: invokespecial 113	com/estrongs/android/util/be:<init>	()V
    //   50: putstatic 26	com/estrongs/android/util/be:b	Lcom/estrongs/android/util/be;
    //   53: getstatic 26	com/estrongs/android/util/be:b	Lcom/estrongs/android/util/be;
    //   56: new 49	java/lang/StringBuilder
    //   59: dup
    //   60: invokespecial 50	java/lang/StringBuilder:<init>	()V
    //   63: getstatic 24	com/estrongs/android/util/be:a	Ljava/lang/String;
    //   66: invokevirtual 54	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   69: ldc 117
    //   71: invokevirtual 54	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   74: invokevirtual 60	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   77: aconst_null
    //   78: invokestatic 121	android/database/sqlite/SQLiteDatabase:openOrCreateDatabase	(Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;)Landroid/database/sqlite/SQLiteDatabase;
    //   81: putfield 44	com/estrongs/android/util/be:c	Landroid/database/sqlite/SQLiteDatabase;
    //   84: getstatic 26	com/estrongs/android/util/be:b	Lcom/estrongs/android/util/be;
    //   87: getfield 44	com/estrongs/android/util/be:c	Landroid/database/sqlite/SQLiteDatabase;
    //   90: ifnonnull +140 -> 230
    //   93: new 73	java/io/File
    //   96: dup
    //   97: new 49	java/lang/StringBuilder
    //   100: dup
    //   101: invokespecial 50	java/lang/StringBuilder:<init>	()V
    //   104: getstatic 24	com/estrongs/android/util/be:a	Ljava/lang/String;
    //   107: invokevirtual 54	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   110: ldc 117
    //   112: invokevirtual 54	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   115: invokevirtual 60	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   118: invokespecial 75	java/io/File:<init>	(Ljava/lang/String;)V
    //   121: invokevirtual 124	java/io/File:delete	()Z
    //   124: pop
    //   125: getstatic 26	com/estrongs/android/util/be:b	Lcom/estrongs/android/util/be;
    //   128: new 49	java/lang/StringBuilder
    //   131: dup
    //   132: invokespecial 50	java/lang/StringBuilder:<init>	()V
    //   135: getstatic 24	com/estrongs/android/util/be:a	Ljava/lang/String;
    //   138: invokevirtual 54	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   141: ldc 117
    //   143: invokevirtual 54	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   146: invokevirtual 60	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   149: aconst_null
    //   150: invokestatic 121	android/database/sqlite/SQLiteDatabase:openOrCreateDatabase	(Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;)Landroid/database/sqlite/SQLiteDatabase;
    //   153: putfield 44	com/estrongs/android/util/be:c	Landroid/database/sqlite/SQLiteDatabase;
    //   156: getstatic 26	com/estrongs/android/util/be:b	Lcom/estrongs/android/util/be;
    //   159: getfield 44	com/estrongs/android/util/be:c	Landroid/database/sqlite/SQLiteDatabase;
    //   162: ifnonnull +68 -> 230
    //   165: aconst_null
    //   166: putstatic 26	com/estrongs/android/util/be:b	Lcom/estrongs/android/util/be;
    //   169: goto -138 -> 31
    //   172: astore_0
    //   173: aconst_null
    //   174: putstatic 26	com/estrongs/android/util/be:b	Lcom/estrongs/android/util/be;
    //   177: new 73	java/io/File
    //   180: dup
    //   181: new 49	java/lang/StringBuilder
    //   184: dup
    //   185: invokespecial 50	java/lang/StringBuilder:<init>	()V
    //   188: getstatic 24	com/estrongs/android/util/be:a	Ljava/lang/String;
    //   191: invokevirtual 54	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   194: ldc 117
    //   196: invokevirtual 54	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   199: invokevirtual 60	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   202: invokespecial 75	java/io/File:<init>	(Ljava/lang/String;)V
    //   205: invokevirtual 124	java/io/File:delete	()Z
    //   208: pop
    //   209: aload_0
    //   210: invokevirtual 125	android/database/sqlite/SQLiteDiskIOException:printStackTrace	()V
    //   213: new 2	com/estrongs/android/util/be
    //   216: dup
    //   217: invokespecial 113	com/estrongs/android/util/be:<init>	()V
    //   220: astore_0
    //   221: goto -190 -> 31
    //   224: astore_0
    //   225: ldc 2
    //   227: monitorexit
    //   228: aload_0
    //   229: athrow
    //   230: invokestatic 128	com/estrongs/android/util/be:j	()V
    //   233: getstatic 26	com/estrongs/android/util/be:b	Lcom/estrongs/android/util/be;
    //   236: astore_0
    //   237: goto -206 -> 31
    //   240: astore_0
    //   241: aconst_null
    //   242: putstatic 26	com/estrongs/android/util/be:b	Lcom/estrongs/android/util/be;
    //   245: new 73	java/io/File
    //   248: dup
    //   249: new 49	java/lang/StringBuilder
    //   252: dup
    //   253: invokespecial 50	java/lang/StringBuilder:<init>	()V
    //   256: getstatic 24	com/estrongs/android/util/be:a	Ljava/lang/String;
    //   259: invokevirtual 54	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   262: ldc 117
    //   264: invokevirtual 54	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   267: invokevirtual 60	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   270: invokespecial 75	java/io/File:<init>	(Ljava/lang/String;)V
    //   273: invokevirtual 124	java/io/File:delete	()Z
    //   276: pop
    //   277: new 2	com/estrongs/android/util/be
    //   280: dup
    //   281: invokespecial 113	com/estrongs/android/util/be:<init>	()V
    //   284: astore_0
    //   285: goto -254 -> 31
    //   288: astore_0
    //   289: aconst_null
    //   290: putstatic 26	com/estrongs/android/util/be:b	Lcom/estrongs/android/util/be;
    //   293: aload_0
    //   294: invokevirtual 102	java/lang/Exception:printStackTrace	()V
    //   297: new 2	com/estrongs/android/util/be
    //   300: dup
    //   301: invokespecial 113	com/estrongs/android/util/be:<init>	()V
    //   304: astore_0
    //   305: goto -274 -> 31
    // Local variable table:
    //   start	length	slot	name	signature
    //   1	34	0	localbe1	be
    //   172	38	0	localSQLiteDiskIOException	android.database.sqlite.SQLiteDiskIOException
    //   220	1	0	localbe2	be
    //   224	5	0	localObject	Object
    //   236	1	0	localbe3	be
    //   240	1	0	localStackOverflowError	StackOverflowError
    //   284	1	0	localbe4	be
    //   288	6	0	localException	Exception
    //   304	1	0	localbe5	be
    // Exception table:
    //   from	to	target	type
    //   36	169	172	android/database/sqlite/SQLiteDiskIOException
    //   230	233	172	android/database/sqlite/SQLiteDiskIOException
    //   5	23	224	finally
    //   23	31	224	finally
    //   36	169	224	finally
    //   173	221	224	finally
    //   230	233	224	finally
    //   233	237	224	finally
    //   241	285	224	finally
    //   289	305	224	finally
    //   36	169	240	java/lang/StackOverflowError
    //   230	233	240	java/lang/StackOverflowError
    //   36	169	288	java/lang/Exception
    //   230	233	288	java/lang/Exception
  }
  
  private static String c(String paramString)
  {
    if (paramString == null) {
      return "\"\"";
    }
    return "\"" + paramString + "\"";
  }
  
  private static void j()
  {
    try
    {
      bc.execSQL("CREATE TABLE IF NOT EXISTS visit_history (id INTEGER PRIMARY KEY,isdir INTEGER,title TEXT,path TEXT UNIQUE)");
      bc.execSQL("CREATE TABLE IF NOT EXISTS cachedb_version (dbver INTEGER UNIQUE)");
      bc.execSQL("CREATE TABLE IF NOT EXISTS web_icon (domain TEXT UNIQUE, icon BLOB)");
      b(k());
      return;
    }
    catch (Exception localException)
    {
      localException.printStackTrace();
    }
  }
  
  /* Error */
  private static int k()
  {
    // Byte code:
    //   0: getstatic 26	com/estrongs/android/util/be:b	Lcom/estrongs/android/util/be;
    //   3: getfield 44	com/estrongs/android/util/be:c	Landroid/database/sqlite/SQLiteDatabase;
    //   6: ldc -110
    //   8: iconst_1
    //   9: anewarray 148	java/lang/String
    //   12: dup
    //   13: iconst_0
    //   14: ldc -106
    //   16: aastore
    //   17: aconst_null
    //   18: aconst_null
    //   19: aconst_null
    //   20: aconst_null
    //   21: aconst_null
    //   22: invokevirtual 154	android/database/sqlite/SQLiteDatabase:query	(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    //   25: astore_3
    //   26: aload_3
    //   27: ifnull +14 -> 41
    //   30: aload_3
    //   31: astore_2
    //   32: aload_3
    //   33: invokeinterface 159 1 0
    //   38: ifne +34 -> 72
    //   41: aload_3
    //   42: astore_2
    //   43: getstatic 26	com/estrongs/android/util/be:b	Lcom/estrongs/android/util/be;
    //   46: getfield 44	com/estrongs/android/util/be:c	Landroid/database/sqlite/SQLiteDatabase;
    //   49: ldc -95
    //   51: invokevirtual 92	android/database/sqlite/SQLiteDatabase:execSQL	(Ljava/lang/String;)V
    //   54: iconst_4
    //   55: istore_1
    //   56: iload_1
    //   57: istore_0
    //   58: aload_3
    //   59: ifnull +11 -> 70
    //   62: aload_3
    //   63: invokeinterface 164 1 0
    //   68: iload_1
    //   69: istore_0
    //   70: iload_0
    //   71: ireturn
    //   72: aload_3
    //   73: astore_2
    //   74: aload_3
    //   75: invokeinterface 167 1 0
    //   80: pop
    //   81: aload_3
    //   82: astore_2
    //   83: aload_3
    //   84: iconst_0
    //   85: invokeinterface 171 2 0
    //   90: istore_1
    //   91: iload_1
    //   92: istore_0
    //   93: aload_3
    //   94: ifnull -24 -> 70
    //   97: aload_3
    //   98: invokeinterface 164 1 0
    //   103: iload_1
    //   104: ireturn
    //   105: astore 4
    //   107: aconst_null
    //   108: astore_3
    //   109: aload_3
    //   110: astore_2
    //   111: aload 4
    //   113: invokevirtual 102	java/lang/Exception:printStackTrace	()V
    //   116: aload_3
    //   117: ifnull +9 -> 126
    //   120: aload_3
    //   121: invokeinterface 164 1 0
    //   126: iconst_0
    //   127: ireturn
    //   128: astore_3
    //   129: aconst_null
    //   130: astore_2
    //   131: aload_2
    //   132: ifnull +9 -> 141
    //   135: aload_2
    //   136: invokeinterface 164 1 0
    //   141: aload_3
    //   142: athrow
    //   143: astore_3
    //   144: goto -13 -> 131
    //   147: astore 4
    //   149: goto -40 -> 109
    // Local variable table:
    //   start	length	slot	name	signature
    //   57	36	0	i	int
    //   55	49	1	j	int
    //   31	105	2	localCursor1	android.database.Cursor
    //   25	96	3	localCursor2	android.database.Cursor
    //   128	14	3	localObject1	Object
    //   143	1	3	localObject2	Object
    //   105	7	4	localException1	Exception
    //   147	1	4	localException2	Exception
    // Exception table:
    //   from	to	target	type
    //   0	26	105	java/lang/Exception
    //   0	26	128	finally
    //   32	41	143	finally
    //   43	54	143	finally
    //   74	81	143	finally
    //   83	91	143	finally
    //   111	116	143	finally
    //   32	41	147	java/lang/Exception
    //   43	54	147	java/lang/Exception
    //   74	81	147	java/lang/Exception
    //   83	91	147	java/lang/Exception
  }
  
  /* Error */
  private static void l()
  {
    // Byte code:
    //   0: getstatic 26	com/estrongs/android/util/be:b	Lcom/estrongs/android/util/be;
    //   3: ifnull +12 -> 15
    //   6: getstatic 26	com/estrongs/android/util/be:b	Lcom/estrongs/android/util/be;
    //   9: getfield 44	com/estrongs/android/util/be:c	Landroid/database/sqlite/SQLiteDatabase;
    //   12: ifnonnull +4 -> 16
    //   15: return
    //   16: getstatic 26	com/estrongs/android/util/be:b	Lcom/estrongs/android/util/be;
    //   19: getfield 44	com/estrongs/android/util/be:c	Landroid/database/sqlite/SQLiteDatabase;
    //   22: ldc 117
    //   24: iconst_2
    //   25: anewarray 148	java/lang/String
    //   28: dup
    //   29: iconst_0
    //   30: ldc -83
    //   32: aastore
    //   33: dup
    //   34: iconst_1
    //   35: ldc -81
    //   37: aastore
    //   38: aconst_null
    //   39: aconst_null
    //   40: aconst_null
    //   41: aconst_null
    //   42: aconst_null
    //   43: invokevirtual 154	android/database/sqlite/SQLiteDatabase:query	(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    //   46: astore_3
    //   47: aload_3
    //   48: ifnull +16 -> 64
    //   51: aload_3
    //   52: astore_2
    //   53: aload_3
    //   54: invokeinterface 159 1 0
    //   59: istore_0
    //   60: iload_0
    //   61: ifne +14 -> 75
    //   64: aload_3
    //   65: ifnull -50 -> 15
    //   68: aload_3
    //   69: invokeinterface 164 1 0
    //   74: return
    //   75: aload_3
    //   76: astore_2
    //   77: aload_3
    //   78: invokeinterface 167 1 0
    //   83: istore_1
    //   84: iload_1
    //   85: ifeq +133 -> 218
    //   88: aload_3
    //   89: astore_2
    //   90: aload_3
    //   91: iconst_1
    //   92: invokeinterface 179 2 0
    //   97: astore 4
    //   99: aload_3
    //   100: astore_2
    //   101: aload 4
    //   103: invokestatic 184	com/estrongs/android/util/am:bG	(Ljava/lang/String;)Ljava/lang/String;
    //   106: astore 5
    //   108: aload_3
    //   109: astore_2
    //   110: aload 5
    //   112: aload 4
    //   114: invokevirtual 188	java/lang/String:endsWith	(Ljava/lang/String;)Z
    //   117: ifne +89 -> 206
    //   120: aload_3
    //   121: astore_2
    //   122: new 49	java/lang/StringBuilder
    //   125: dup
    //   126: invokespecial 50	java/lang/StringBuilder:<init>	()V
    //   129: ldc -66
    //   131: invokevirtual 54	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   134: aload 5
    //   136: invokestatic 192	com/estrongs/android/util/be:c	(Ljava/lang/String;)Ljava/lang/String;
    //   139: invokevirtual 54	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   142: ldc -62
    //   144: invokevirtual 54	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   147: ldc -83
    //   149: invokevirtual 54	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   152: ldc -60
    //   154: invokevirtual 54	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   157: new 49	java/lang/StringBuilder
    //   160: dup
    //   161: invokespecial 50	java/lang/StringBuilder:<init>	()V
    //   164: ldc -58
    //   166: invokevirtual 54	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   169: aload_3
    //   170: iconst_0
    //   171: invokeinterface 171 2 0
    //   176: invokevirtual 201	java/lang/StringBuilder:append	(I)Ljava/lang/StringBuilder;
    //   179: invokevirtual 60	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   182: invokestatic 192	com/estrongs/android/util/be:c	(Ljava/lang/String;)Ljava/lang/String;
    //   185: invokevirtual 54	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   188: invokevirtual 60	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   191: astore 4
    //   193: aload_3
    //   194: astore_2
    //   195: getstatic 26	com/estrongs/android/util/be:b	Lcom/estrongs/android/util/be;
    //   198: getfield 44	com/estrongs/android/util/be:c	Landroid/database/sqlite/SQLiteDatabase;
    //   201: aload 4
    //   203: invokevirtual 92	android/database/sqlite/SQLiteDatabase:execSQL	(Ljava/lang/String;)V
    //   206: aload_3
    //   207: astore_2
    //   208: aload_3
    //   209: invokeinterface 204 1 0
    //   214: istore_1
    //   215: goto -131 -> 84
    //   218: aload_3
    //   219: ifnull -204 -> 15
    //   222: aload_3
    //   223: invokeinterface 164 1 0
    //   228: return
    //   229: astore 4
    //   231: aconst_null
    //   232: astore_3
    //   233: aload_3
    //   234: astore_2
    //   235: aload 4
    //   237: invokevirtual 102	java/lang/Exception:printStackTrace	()V
    //   240: aload_3
    //   241: ifnull -226 -> 15
    //   244: aload_3
    //   245: invokeinterface 164 1 0
    //   250: return
    //   251: astore_3
    //   252: aconst_null
    //   253: astore_2
    //   254: aload_2
    //   255: ifnull +9 -> 264
    //   258: aload_2
    //   259: invokeinterface 164 1 0
    //   264: aload_3
    //   265: athrow
    //   266: astore_3
    //   267: goto -13 -> 254
    //   270: astore 4
    //   272: goto -39 -> 233
    // Local variable table:
    //   start	length	slot	name	signature
    //   59	2	0	i	int
    //   83	132	1	bool	boolean
    //   52	207	2	localCursor1	android.database.Cursor
    //   46	199	3	localCursor2	android.database.Cursor
    //   251	14	3	localObject1	Object
    //   266	1	3	localObject2	Object
    //   97	105	4	str1	String
    //   229	7	4	localException1	Exception
    //   270	1	4	localException2	Exception
    //   106	29	5	str2	String
    // Exception table:
    //   from	to	target	type
    //   16	47	229	java/lang/Exception
    //   16	47	251	finally
    //   53	60	266	finally
    //   77	84	266	finally
    //   90	99	266	finally
    //   101	108	266	finally
    //   110	120	266	finally
    //   122	193	266	finally
    //   195	206	266	finally
    //   208	215	266	finally
    //   235	240	266	finally
    //   53	60	270	java/lang/Exception
    //   77	84	270	java/lang/Exception
    //   90	99	270	java/lang/Exception
    //   101	108	270	java/lang/Exception
    //   110	120	270	java/lang/Exception
    //   122	193	270	java/lang/Exception
    //   195	206	270	java/lang/Exception
    //   208	215	270	java/lang/Exception
  }
  
  /* Error */
  private void m()
  {
    // Byte code:
    //   0: getstatic 26	com/estrongs/android/util/be:b	Lcom/estrongs/android/util/be;
    //   3: ifnull +18 -> 21
    //   6: getstatic 26	com/estrongs/android/util/be:b	Lcom/estrongs/android/util/be;
    //   9: getfield 44	com/estrongs/android/util/be:c	Landroid/database/sqlite/SQLiteDatabase;
    //   12: ifnull +9 -> 21
    //   15: getstatic 28	com/estrongs/android/util/be:d	I
    //   18: ifne +4 -> 22
    //   21: return
    //   22: getstatic 26	com/estrongs/android/util/be:b	Lcom/estrongs/android/util/be;
    //   25: getfield 44	com/estrongs/android/util/be:c	Landroid/database/sqlite/SQLiteDatabase;
    //   28: ldc -49
    //   30: iconst_2
    //   31: anewarray 148	java/lang/String
    //   34: dup
    //   35: iconst_0
    //   36: ldc -47
    //   38: aastore
    //   39: dup
    //   40: iconst_1
    //   41: ldc -45
    //   43: aastore
    //   44: aconst_null
    //   45: aconst_null
    //   46: aconst_null
    //   47: aconst_null
    //   48: aconst_null
    //   49: invokevirtual 154	android/database/sqlite/SQLiteDatabase:query	(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    //   52: astore 4
    //   54: aload 4
    //   56: ifnull +18 -> 74
    //   59: aload 4
    //   61: astore_3
    //   62: aload 4
    //   64: invokeinterface 159 1 0
    //   69: istore_1
    //   70: iload_1
    //   71: ifne +16 -> 87
    //   74: aload 4
    //   76: ifnull -55 -> 21
    //   79: aload 4
    //   81: invokeinterface 164 1 0
    //   86: return
    //   87: aload 4
    //   89: astore_3
    //   90: aload 4
    //   92: invokeinterface 159 1 0
    //   97: istore_1
    //   98: iload_1
    //   99: bipush 20
    //   101: if_icmple +102 -> 203
    //   104: aload 4
    //   106: astore_3
    //   107: aload 4
    //   109: iload_1
    //   110: bipush 20
    //   112: isub
    //   113: invokeinterface 215 2 0
    //   118: istore_2
    //   119: aload 4
    //   121: astore_3
    //   122: getstatic 40	com/estrongs/android/util/be:f	Ljava/util/HashMap;
    //   125: invokevirtual 218	java/util/HashMap:clear	()V
    //   128: iload_2
    //   129: ifeq +88 -> 217
    //   132: aload 4
    //   134: astore_3
    //   135: aload 4
    //   137: iconst_1
    //   138: invokeinterface 222 2 0
    //   143: astore 5
    //   145: aload 5
    //   147: ifnull +136 -> 283
    //   150: aload 4
    //   152: astore_3
    //   153: aload 5
    //   155: iconst_0
    //   156: aload 5
    //   158: arraylength
    //   159: invokestatic 228	android/graphics/BitmapFactory:decodeByteArray	([BII)Landroid/graphics/Bitmap;
    //   162: astore 5
    //   164: aload 5
    //   166: ifnull +23 -> 189
    //   169: aload 4
    //   171: astore_3
    //   172: getstatic 40	com/estrongs/android/util/be:f	Ljava/util/HashMap;
    //   175: aload 4
    //   177: iconst_0
    //   178: invokeinterface 179 2 0
    //   183: aload 5
    //   185: invokevirtual 232	java/util/HashMap:put	(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    //   188: pop
    //   189: aload 4
    //   191: astore_3
    //   192: aload 4
    //   194: invokeinterface 204 1 0
    //   199: istore_2
    //   200: goto -72 -> 128
    //   203: aload 4
    //   205: astore_3
    //   206: aload 4
    //   208: invokeinterface 167 1 0
    //   213: istore_2
    //   214: goto -95 -> 119
    //   217: aload 4
    //   219: ifnull -198 -> 21
    //   222: aload 4
    //   224: invokeinterface 164 1 0
    //   229: return
    //   230: astore 5
    //   232: aconst_null
    //   233: astore 4
    //   235: aload 4
    //   237: astore_3
    //   238: aload 5
    //   240: invokevirtual 102	java/lang/Exception:printStackTrace	()V
    //   243: aload 4
    //   245: ifnull -224 -> 21
    //   248: aload 4
    //   250: invokeinterface 164 1 0
    //   255: return
    //   256: astore 4
    //   258: aconst_null
    //   259: astore_3
    //   260: aload_3
    //   261: ifnull +9 -> 270
    //   264: aload_3
    //   265: invokeinterface 164 1 0
    //   270: aload 4
    //   272: athrow
    //   273: astore 4
    //   275: goto -15 -> 260
    //   278: astore 5
    //   280: goto -45 -> 235
    //   283: aconst_null
    //   284: astore 5
    //   286: goto -122 -> 164
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	289	0	this	be
    //   69	44	1	i	int
    //   118	96	2	bool	boolean
    //   61	204	3	localCursor1	android.database.Cursor
    //   52	197	4	localCursor2	android.database.Cursor
    //   256	15	4	localObject1	Object
    //   273	1	4	localObject2	Object
    //   143	41	5	localObject3	Object
    //   230	9	5	localException1	Exception
    //   278	1	5	localException2	Exception
    //   284	1	5	localObject4	Object
    // Exception table:
    //   from	to	target	type
    //   22	54	230	java/lang/Exception
    //   22	54	256	finally
    //   62	70	273	finally
    //   90	98	273	finally
    //   107	119	273	finally
    //   122	128	273	finally
    //   135	145	273	finally
    //   153	164	273	finally
    //   172	189	273	finally
    //   192	200	273	finally
    //   206	214	273	finally
    //   238	243	273	finally
    //   62	70	278	java/lang/Exception
    //   90	98	278	java/lang/Exception
    //   107	119	278	java/lang/Exception
    //   122	128	278	java/lang/Exception
    //   135	145	278	java/lang/Exception
    //   153	164	278	java/lang/Exception
    //   172	189	278	java/lang/Exception
    //   192	200	278	java/lang/Exception
    //   206	214	278	java/lang/Exception
  }
  
  public Bitmap a(String paramString, Bitmap paramBitmap)
  {
    if (paramString == null) {
      return null;
    }
    for (;;)
    {
      try
      {
        synchronized (e)
        {
          paramString = Uri.parse(paramString).getHost();
          if (paramString == null) {
            return null;
          }
          if ((paramBitmap == null) || (f.containsKey(paramString))) {
            break label187;
          }
          if (f.size() <= 20) {
            break label221;
          }
          f.clear();
          i = 1;
          Iterator localIterator = e.iterator();
          if (localIterator.hasNext())
          {
            bf localbf = (bf)localIterator.next();
            if ((b != null) && (b.equals(paramString))) {
              e = paramBitmap;
            }
            if ((i == 0) || (b == null) || (e == null)) {
              continue;
            }
            f.put(b, e);
          }
        }
        f.put(paramString, paramBitmap);
      }
      catch (Exception paramString)
      {
        paramString.printStackTrace();
        return null;
      }
      return paramBitmap;
      label187:
      if (paramBitmap != null)
      {
        f.put(paramString, paramBitmap);
        return paramBitmap;
      }
      paramString = (Bitmap)f.get(paramString);
      return paramString;
      label221:
      int i = 0;
    }
  }
  
  public void a(int paramInt)
  {
    if (paramInt == d) {
      return;
    }
    synchronized (e)
    {
      d = paramInt;
      if (e.size() > d) {
        e.removeLast();
      }
    }
  }
  
  public void a(String arg1, String paramString2, int paramInt, Bitmap paramBitmap, boolean paramBoolean)
  {
    if (paramString2 == null) {
      break label4;
    }
    for (;;)
    {
      label4:
      return;
      if ((!ad.a(FexApplication.a()).g()) || (paramInt == 1))
      {
        int i = am.G(paramString2);
        if ((d == 0) || (am.aW(paramString2)) || (am.bg(paramString2)) || (i == 3) || (i == 13) || (i == 17) || (i == 24) || (i == 12) || (i == 14) || (i == 16) || (am.u(paramString2))) {
          break;
        }
      }
      try
      {
        localObject1 = FileExplorerActivity.J();
        if (localObject1 != null)
        {
          localObject1 = ((FileExplorerActivity)localObject1).y();
          if (localObject1 != null)
          {
            bool = aa.b(paramString2, localObject1.hashCode());
            if (bool) {
              continue;
            }
          }
        }
      }
      catch (Exception localException)
      {
        for (;;)
        {
          Object localObject1;
          bf localbf;
          localException.printStackTrace();
        }
        localObject2 = new bf();
        d = paramBitmap;
        a = paramString2;
        b = Uri.parse(paramString2).getHost();
        c = paramInt;
        e = localException;
        if (paramInt != 1) {
          break label398;
        }
      }
    }
    localObject1 = a(paramString2, paramBitmap);
    if (??? != null)
    {
      paramBitmap = ???;
      if (???.length() != 0) {}
    }
    else
    {
      paramBitmap = Uri.parse(paramString2).getHost();
    }
    Object localObject2;
    synchronized (e)
    {
      localObject2 = e.iterator();
      while (((Iterator)localObject2).hasNext())
      {
        localbf = (bf)((Iterator)localObject2).next();
        if ((a != null) && (a.equals(paramString2)))
        {
          e.remove(localbf);
          d = paramBitmap;
          c = paramInt;
          e = ((Bitmap)localObject1);
          e.addFirst(localbf);
          return;
        }
      }
    }
    label398:
    for (boolean bool = true;; bool = false)
    {
      f = bool;
      if (e.size() < d) {
        a(e, (bf)localObject2, paramBoolean);
      }
      for (;;)
      {
        return;
        if (paramBoolean)
        {
          e.removeLast();
          a(e, (bf)localObject2, paramBoolean);
        }
      }
    }
  }
  
  public void a(String paramString, boolean paramBoolean)
  {
    if ((ad.a(FexApplication.a()).g()) && (!paramBoolean)) {
      return;
    }
    if ((paramBoolean) && (!paramString.endsWith("/"))) {
      paramString = paramString + "/";
    }
    for (;;)
    {
      int i = 0;
      if (paramBoolean) {
        i = 1;
      }
      a(null, paramString, i, null, true);
      return;
    }
  }
  
  public boolean a()
  {
    return g;
  }
  
  public void b()
  {
    if (g == true) {
      return;
    }
    g = true;
    a(20);
    i();
  }
  
  public void d()
  {
    try
    {
      if (c != null)
      {
        b = null;
        c.close();
        c = null;
      }
      return;
    }
    catch (Exception localException) {}
  }
  
  public bf[] e()
  {
    bf[] arrayOfbf = new bf[e.size()];
    return (bf[])e.toArray(arrayOfbf);
  }
  
  public void f()
  {
    synchronized (e)
    {
      e.clear();
      return;
    }
  }
  
  public void g()
  {
    if (c == null) {
      return;
    }
    try
    {
      c.execSQL("DELETE FROM visit_history");
      return;
    }
    catch (Exception localException)
    {
      localException.printStackTrace();
    }
  }
  
  public void h()
  {
    if (c == null) {}
    for (;;)
    {
      return;
      try
      {
        g();
        Iterator localIterator1 = e.iterator();
        while (localIterator1.hasNext())
        {
          localObject = (bf)localIterator1.next();
          localContentValues = new ContentValues();
          localContentValues.put("title", d);
          localContentValues.put("isdir", Integer.valueOf(c));
          localContentValues.put("path", a);
          c.insert("visit_history", null, localContentValues);
        }
      }
      catch (Exception localException1)
      {
        try
        {
          Object localObject;
          ContentValues localContentValues;
          c.execSQL("DELETE FROM web_icon");
          Iterator localIterator2 = f.entrySet().iterator();
          for (;;)
          {
            boolean bool = localIterator2.hasNext();
            if (!bool) {
              break;
            }
            try
            {
              localObject = (Map.Entry)localIterator2.next();
              localContentValues = new ContentValues();
              localContentValues.put("domain", (String)((Map.Entry)localObject).getKey());
              ByteArrayOutputStream localByteArrayOutputStream = new ByteArrayOutputStream();
              ((Bitmap)((Map.Entry)localObject).getValue()).compress(Bitmap.CompressFormat.PNG, 100, localByteArrayOutputStream);
              localContentValues.put("icon", localByteArrayOutputStream.toByteArray());
              localByteArrayOutputStream.close();
              c.insert("web_icon", null, localContentValues);
            }
            catch (Exception localException3)
            {
              localException3.printStackTrace();
            }
          }
          return;
        }
        catch (Exception localException2) {}
      }
    }
  }
  
  /* Error */
  public void i()
  {
    // Byte code:
    //   0: aconst_null
    //   1: astore 5
    //   3: getstatic 26	com/estrongs/android/util/be:b	Lcom/estrongs/android/util/be;
    //   6: ifnull +18 -> 24
    //   9: getstatic 26	com/estrongs/android/util/be:b	Lcom/estrongs/android/util/be;
    //   12: getfield 44	com/estrongs/android/util/be:c	Landroid/database/sqlite/SQLiteDatabase;
    //   15: ifnull +9 -> 24
    //   18: getstatic 28	com/estrongs/android/util/be:d	I
    //   21: ifne +4 -> 25
    //   24: return
    //   25: aload_0
    //   26: invokespecial 429	com/estrongs/android/util/be:m	()V
    //   29: invokestatic 288	com/estrongs/android/pop/FexApplication:a	()Lcom/estrongs/android/pop/FexApplication;
    //   32: invokestatic 293	com/estrongs/android/pop/ad:a	(Landroid/content/Context;)Lcom/estrongs/android/pop/ad;
    //   35: invokevirtual 295	com/estrongs/android/pop/ad:g	()Z
    //   38: ifeq +248 -> 286
    //   41: ldc_w 431
    //   44: astore_3
    //   45: iconst_1
    //   46: anewarray 148	java/lang/String
    //   49: astore 4
    //   51: aload 4
    //   53: iconst_0
    //   54: ldc_w 433
    //   57: aastore
    //   58: getstatic 26	com/estrongs/android/util/be:b	Lcom/estrongs/android/util/be;
    //   61: getfield 44	com/estrongs/android/util/be:c	Landroid/database/sqlite/SQLiteDatabase;
    //   64: ldc 117
    //   66: iconst_3
    //   67: anewarray 148	java/lang/String
    //   70: dup
    //   71: iconst_0
    //   72: ldc -81
    //   74: aastore
    //   75: dup
    //   76: iconst_1
    //   77: ldc_w 376
    //   80: aastore
    //   81: dup
    //   82: iconst_2
    //   83: ldc_w 371
    //   86: aastore
    //   87: aload_3
    //   88: aload 4
    //   90: aconst_null
    //   91: aconst_null
    //   92: aconst_null
    //   93: invokevirtual 154	android/database/sqlite/SQLiteDatabase:query	(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    //   96: astore_3
    //   97: aload_3
    //   98: ifnull +14 -> 112
    //   101: aload_3
    //   102: invokeinterface 159 1 0
    //   107: istore_1
    //   108: iload_1
    //   109: ifne +14 -> 123
    //   112: aload_3
    //   113: ifnull -89 -> 24
    //   116: aload_3
    //   117: invokeinterface 164 1 0
    //   122: return
    //   123: aload_3
    //   124: invokeinterface 159 1 0
    //   129: istore_1
    //   130: iload_1
    //   131: getstatic 28	com/estrongs/android/util/be:d	I
    //   134: if_icmple +65 -> 199
    //   137: aload_3
    //   138: iload_1
    //   139: getstatic 28	com/estrongs/android/util/be:d	I
    //   142: isub
    //   143: invokeinterface 215 2 0
    //   148: istore_2
    //   149: getstatic 35	com/estrongs/android/util/be:e	Ljava/util/LinkedList;
    //   152: invokevirtual 361	java/util/LinkedList:clear	()V
    //   155: iload_2
    //   156: ifeq +53 -> 209
    //   159: aload_0
    //   160: aload_3
    //   161: iconst_2
    //   162: invokeinterface 179 2 0
    //   167: aload_3
    //   168: iconst_0
    //   169: invokeinterface 179 2 0
    //   174: invokestatic 436	com/estrongs/android/util/am:bH	(Ljava/lang/String;)Ljava/lang/String;
    //   177: aload_3
    //   178: iconst_1
    //   179: invokeinterface 171 2 0
    //   184: aconst_null
    //   185: iconst_0
    //   186: invokevirtual 347	com/estrongs/android/util/be:a	(Ljava/lang/String;Ljava/lang/String;ILandroid/graphics/Bitmap;Z)V
    //   189: aload_3
    //   190: invokeinterface 204 1 0
    //   195: istore_2
    //   196: goto -41 -> 155
    //   199: aload_3
    //   200: invokeinterface 167 1 0
    //   205: istore_2
    //   206: goto -57 -> 149
    //   209: aload_3
    //   210: ifnull -186 -> 24
    //   213: aload_3
    //   214: invokeinterface 164 1 0
    //   219: return
    //   220: astore 4
    //   222: aconst_null
    //   223: astore_3
    //   224: aload 4
    //   226: invokevirtual 102	java/lang/Exception:printStackTrace	()V
    //   229: aload_3
    //   230: ifnull -206 -> 24
    //   233: aload_3
    //   234: invokeinterface 164 1 0
    //   239: return
    //   240: astore_3
    //   241: aload 5
    //   243: astore 4
    //   245: aload 4
    //   247: ifnull +10 -> 257
    //   250: aload 4
    //   252: invokeinterface 164 1 0
    //   257: aload_3
    //   258: athrow
    //   259: astore 5
    //   261: aload_3
    //   262: astore 4
    //   264: aload 5
    //   266: astore_3
    //   267: goto -22 -> 245
    //   270: astore 5
    //   272: aload_3
    //   273: astore 4
    //   275: aload 5
    //   277: astore_3
    //   278: goto -33 -> 245
    //   281: astore 4
    //   283: goto -59 -> 224
    //   286: aconst_null
    //   287: astore 4
    //   289: aconst_null
    //   290: astore_3
    //   291: goto -233 -> 58
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	294	0	this	be
    //   107	36	1	i	int
    //   148	58	2	bool	boolean
    //   44	190	3	localObject1	Object
    //   240	22	3	localObject2	Object
    //   266	25	3	localObject3	Object
    //   49	40	4	arrayOfString	String[]
    //   220	5	4	localException1	Exception
    //   243	31	4	localObject4	Object
    //   281	1	4	localException2	Exception
    //   287	1	4	localObject5	Object
    //   1	241	5	localObject6	Object
    //   259	6	5	localObject7	Object
    //   270	6	5	localObject8	Object
    // Exception table:
    //   from	to	target	type
    //   29	41	220	java/lang/Exception
    //   45	51	220	java/lang/Exception
    //   58	97	220	java/lang/Exception
    //   29	41	240	finally
    //   45	51	240	finally
    //   58	97	240	finally
    //   101	108	259	finally
    //   123	149	259	finally
    //   149	155	259	finally
    //   159	196	259	finally
    //   199	206	259	finally
    //   224	229	270	finally
    //   101	108	281	java/lang/Exception
    //   123	149	281	java/lang/Exception
    //   149	155	281	java/lang/Exception
    //   159	196	281	java/lang/Exception
    //   199	206	281	java/lang/Exception
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.util.be
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */