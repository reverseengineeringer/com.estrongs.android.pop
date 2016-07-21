package com.estrongs.android.pop.app.compress.a;

import android.database.DatabaseUtils;
import android.database.sqlite.SQLiteDatabase;
import android.text.TextUtils;
import com.estrongs.android.util.ap;

public class d
{
  /* Error */
  public static e a(String paramString)
  {
    // Byte code:
    //   0: aload_0
    //   1: invokestatic 14	android/text/TextUtils:isEmpty	(Ljava/lang/CharSequence;)Z
    //   4: ifeq +5 -> 9
    //   7: aconst_null
    //   8: areturn
    //   9: aload_0
    //   10: invokestatic 20	com/estrongs/android/util/ap:bV	(Ljava/lang/String;)Ljava/lang/String;
    //   13: astore 5
    //   15: invokestatic 25	com/estrongs/android/pop/app/compress/a/a:a	()Lcom/estrongs/android/pop/app/compress/a/a;
    //   18: invokevirtual 29	com/estrongs/android/pop/app/compress/a/a:b	()Landroid/database/sqlite/SQLiteDatabase;
    //   21: ldc 31
    //   23: aconst_null
    //   24: new 33	java/lang/StringBuilder
    //   27: dup
    //   28: invokespecial 37	java/lang/StringBuilder:<init>	()V
    //   31: ldc 39
    //   33: invokevirtual 43	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   36: aload 5
    //   38: invokestatic 48	android/database/DatabaseUtils:sqlEscapeString	(Ljava/lang/String;)Ljava/lang/String;
    //   41: invokevirtual 43	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   44: invokevirtual 52	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   47: aconst_null
    //   48: aconst_null
    //   49: aconst_null
    //   50: aconst_null
    //   51: invokevirtual 58	android/database/sqlite/SQLiteDatabase:query	(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    //   54: astore_0
    //   55: aload_0
    //   56: ifnull +122 -> 178
    //   59: aload_0
    //   60: invokeinterface 64 1 0
    //   65: ifeq +113 -> 178
    //   68: aload_0
    //   69: aload_0
    //   70: ldc 66
    //   72: invokeinterface 70 2 0
    //   77: invokeinterface 74 2 0
    //   82: lstore_2
    //   83: aload_0
    //   84: aload_0
    //   85: ldc 76
    //   87: invokeinterface 70 2 0
    //   92: invokeinterface 80 2 0
    //   97: astore 6
    //   99: aload_0
    //   100: aload_0
    //   101: ldc 82
    //   103: invokeinterface 70 2 0
    //   108: invokeinterface 86 2 0
    //   113: istore_1
    //   114: new 88	com/estrongs/android/pop/app/compress/a/e
    //   117: dup
    //   118: invokespecial 89	com/estrongs/android/pop/app/compress/a/e:<init>	()V
    //   121: astore_0
    //   122: aload_0
    //   123: lload_2
    //   124: putfield 92	com/estrongs/android/pop/app/compress/a/e:a	J
    //   127: aload_0
    //   128: aload 5
    //   130: putfield 95	com/estrongs/android/pop/app/compress/a/e:b	Ljava/lang/String;
    //   133: aload_0
    //   134: aload 6
    //   136: putfield 98	com/estrongs/android/pop/app/compress/a/e:c	Ljava/lang/String;
    //   139: iload_1
    //   140: iconst_1
    //   141: if_icmpne +14 -> 155
    //   144: iconst_1
    //   145: istore 4
    //   147: aload_0
    //   148: iload 4
    //   150: putfield 102	com/estrongs/android/pop/app/compress/a/e:d	Z
    //   153: aload_0
    //   154: areturn
    //   155: iconst_0
    //   156: istore 4
    //   158: goto -11 -> 147
    //   161: astore 5
    //   163: aconst_null
    //   164: astore_0
    //   165: aload 5
    //   167: invokevirtual 105	java/lang/Exception:printStackTrace	()V
    //   170: goto -17 -> 153
    //   173: astore 5
    //   175: goto -10 -> 165
    //   178: aconst_null
    //   179: astore_0
    //   180: goto -27 -> 153
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	183	0	paramString	String
    //   113	29	1	i	int
    //   82	42	2	l	long
    //   145	12	4	bool	boolean
    //   13	116	5	str1	String
    //   161	5	5	localException1	Exception
    //   173	1	5	localException2	Exception
    //   97	38	6	str2	String
    // Exception table:
    //   from	to	target	type
    //   9	55	161	java/lang/Exception
    //   59	122	161	java/lang/Exception
    //   122	139	173	java/lang/Exception
    //   147	153	173	java/lang/Exception
  }
  
  public static void a(String paramString1, String paramString2, boolean paramBoolean)
  {
    if ((TextUtils.isEmpty(paramString1)) || (TextUtils.isEmpty(paramString2))) {
      return;
    }
    for (;;)
    {
      try
      {
        paramString1 = ap.bV(paramString1);
        String str = ap.bV(paramString2);
        paramString2 = a.a().c();
        paramString1 = new StringBuilder().append("replace into archive_lists (archive_path,unzip_path,zip_status) values (").append(DatabaseUtils.sqlEscapeString(paramString1)).append(",").append("").append(DatabaseUtils.sqlEscapeString(str)).append(",").append("");
        if (paramBoolean)
        {
          i = 1;
          paramString2.execSQL(i + " );");
          return;
        }
      }
      catch (Exception paramString1)
      {
        paramString1.printStackTrace();
        return;
      }
      int i = 0;
    }
  }
  
  public static void b(String paramString)
  {
    if (TextUtils.isEmpty(paramString)) {
      return;
    }
    try
    {
      paramString = ap.bV(paramString);
      a.a().c().execSQL("delete from archive_lists where archive_path = " + DatabaseUtils.sqlEscapeString(paramString) + "" + ";");
      return;
    }
    catch (Exception paramString)
    {
      paramString.printStackTrace();
    }
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.pop.app.compress.a.d
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */