package com.estrongs.android.pop.app.a;

import android.content.ContentResolver;
import android.database.Cursor;
import android.database.sqlite.SQLiteDatabase;
import android.provider.MediaStore.Audio.Media;
import com.estrongs.android.pop.FexApplication;
import com.estrongs.android.pop.ad;
import java.io.File;
import java.util.ArrayList;
import java.util.LinkedList;
import java.util.List;

public class ao
{
  private static ao b;
  private List<al> a = null;
  private al c = null;
  private al d = null;
  private boolean e = false;
  private ap f;
  private Object g = new Object();
  private boolean h = false;
  
  private ao()
  {
    String[] arrayOfString = aq.a(new aq(this));
    if ((arrayOfString == null) || (arrayOfString.length == 0)) {
      bool = true;
    }
    e = bool;
    j();
  }
  
  public static ao a()
  {
    if (b == null) {
      b = new ao();
    }
    return b;
  }
  
  public static void k()
  {
    b = null;
  }
  
  public al a(String paramString)
  {
    if (b(paramString)) {
      return null;
    }
    paramString = new al(paramString);
    a.add(paramString);
    paramString.e();
    return paramString;
  }
  
  public void a(al paramal)
  {
    c = paramal;
  }
  
  public void a(ap paramap)
  {
    f = paramap;
  }
  
  public void a(List<al> paramList)
  {
    a.removeAll(paramList);
    ArrayList localArrayList = new ArrayList();
    int i = 0;
    while (i < paramList.size())
    {
      if (geta != -1L) {
        localArrayList.add(paramList.get(i));
      }
      i += 1;
    }
    paramList = an.a().c();
    paramList.beginTransaction();
    for (;;)
    {
      StringBuffer localStringBuffer;
      try
      {
        long l;
        if (localArrayList.size() % 500 == 0)
        {
          i = localArrayList.size() / 500;
          break label339;
          if (j >= i) {
            break label330;
          }
          localStringBuffer = new StringBuffer();
          if (j < i - 1)
          {
            k = 500;
            break label344;
            if (m >= k) {
              break label251;
            }
            l = get500a;
            if (m != 0) {
              continue;
            }
            localStringBuffer.append(l);
            break label350;
          }
        }
        else
        {
          i = localArrayList.size() / 500 + 1;
          break label339;
        }
        int k = localArrayList.size() - (i - 1) * 500;
        break label344;
        localStringBuffer.append(",").append(l);
      }
      finally
      {
        paramList.endTransaction();
      }
      label251:
      paramList.delete("audio_playlists_map", "playlist_id IN (" + localStringBuffer.toString() + ")", null);
      paramList.delete("audio_playlists", "_id IN (" + localStringBuffer.toString() + ")", null);
      j += 1;
      continue;
      label330:
      paramList.setTransactionSuccessful();
      paramList.endTransaction();
      return;
      label339:
      int j = 0;
      continue;
      label344:
      int m = 0;
      continue;
      label350:
      m += 1;
    }
  }
  
  public al b()
  {
    if (c == null)
    {
      c = new al(2131428314);
      j().add(0, c);
    }
    return c;
  }
  
  public void b(al paramal)
  {
    LinkedList localLinkedList = new LinkedList();
    localLinkedList.add(paramal);
    a(localLinkedList);
  }
  
  public boolean b(String paramString)
  {
    if (paramString == null) {}
    for (;;)
    {
      return false;
      int i = 0;
      while (i < a.size())
      {
        if (paramString.equals(((al)a.get(i)).a())) {
          return true;
        }
        i += 1;
      }
    }
  }
  
  public boolean c()
  {
    return (c != null) && (a.contains(c));
  }
  
  public boolean d()
  {
    return h;
  }
  
  public al e()
  {
    Object localObject1;
    synchronized (g)
    {
      localObject1 = d;
      if (localObject1 != null) {}
    }
    try
    {
      d = new al(2131428246);
      boolean bool = ad.a(FexApplication.a()).ay();
      d.a(false);
      Cursor localCursor = FexApplication.a().getContentResolver().query(MediaStore.Audio.Media.EXTERNAL_CONTENT_URI, null, null, null, "title_key");
      int i;
      int j;
      String str;
      if (localCursor != null)
      {
        localObject1 = new String[''];
        i = localObject1.length;
        j = 0;
        if (localCursor.moveToNext())
        {
          str = localCursor.getString(localCursor.getColumnIndexOrThrow("_data"));
          i -= 1;
          if (i >= 0) {
            break label282;
          }
          String[] arrayOfString = new String[j + 128];
          i = arrayOfString.length - j - 1;
          System.arraycopy(localObject1, 0, arrayOfString, 0, j);
          localObject1 = arrayOfString;
        }
      }
      for (;;)
      {
        localObject1[j] = str;
        j += 1;
        break;
        i = 0;
        if (i < j)
        {
          if (bool) {}
          for (;;)
          {
            try
            {
              long l = new File(localObject1[i]).length();
              if (l < 512000) {
                i += 1;
              }
            }
            catch (Exception localException2) {}
            d.b(localObject1[i]);
          }
        }
      }
    }
    catch (Exception localException1)
    {
      localException1.printStackTrace();
      for (h = true;; h = true)
      {
        return d;
        localCursor.close();
      }
      localObject2 = finally;
      throw ((Throwable)localObject2);
    }
    finally
    {
      h = true;
    }
  }
  
  public void f()
  {
    d = null;
    h = false;
  }
  
  public void g()
  {
    c = null;
  }
  
  public boolean h()
  {
    return e;
  }
  
  public void i()
  {
    try
    {
      aq localaq = new aq(this);
      String[] arrayOfString1 = aq.a(localaq);
      if (arrayOfString1 != null)
      {
        int k = arrayOfString1.length;
        int i = 0;
        while (i < k)
        {
          String str = arrayOfString1[i];
          String[] arrayOfString2 = aq.a(localaq, str);
          al localal = new al(str);
          int m = arrayOfString2.length;
          int j = 0;
          while (j < m)
          {
            localal.b(arrayOfString2[j]);
            j += 1;
          }
          localal.e();
          a().j().add(localal);
          aq.b(localaq, str);
          i += 1;
        }
      }
      return;
    }
    catch (Exception localException) {}finally
    {
      e = true;
      if (f != null)
      {
        f.a();
        f = null;
      }
    }
  }
  
  /* Error */
  public List<al> j()
  {
    // Byte code:
    //   0: aload_0
    //   1: getfield 25	com/estrongs/android/pop/app/a/ao:a	Ljava/util/List;
    //   4: ifnull +8 -> 12
    //   7: aload_0
    //   8: getfield 25	com/estrongs/android/pop/app/a/ao:a	Ljava/util/List;
    //   11: areturn
    //   12: aload_0
    //   13: new 81	java/util/ArrayList
    //   16: dup
    //   17: invokespecial 82	java/util/ArrayList:<init>	()V
    //   20: putfield 25	com/estrongs/android/pop/app/a/ao:a	Ljava/util/List;
    //   23: invokestatic 100	com/estrongs/android/pop/app/a/an:a	()Lcom/estrongs/android/pop/app/a/an;
    //   26: invokevirtual 271	com/estrongs/android/pop/app/a/an:b	()Landroid/database/sqlite/SQLiteDatabase;
    //   29: astore_2
    //   30: aload_2
    //   31: ldc -110
    //   33: aconst_null
    //   34: aconst_null
    //   35: aconst_null
    //   36: aconst_null
    //   37: aconst_null
    //   38: aconst_null
    //   39: invokevirtual 274	android/database/sqlite/SQLiteDatabase:query	(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    //   42: astore_3
    //   43: aload_3
    //   44: ifnull +201 -> 245
    //   47: aload_3
    //   48: astore_2
    //   49: aload_3
    //   50: invokeinterface 220 1 0
    //   55: ifeq +190 -> 245
    //   58: aload_3
    //   59: astore_2
    //   60: aload_3
    //   61: aload_3
    //   62: ldc_w 276
    //   65: invokeinterface 279 2 0
    //   70: invokeinterface 283 2 0
    //   75: istore_1
    //   76: aload_3
    //   77: astore_2
    //   78: aload_3
    //   79: aload_3
    //   80: ldc_w 285
    //   83: invokeinterface 279 2 0
    //   88: invokeinterface 230 2 0
    //   93: astore 4
    //   95: aload_3
    //   96: astore_2
    //   97: aload_0
    //   98: getfield 25	com/estrongs/android/pop/app/a/ao:a	Ljava/util/List;
    //   101: new 59	com/estrongs/android/pop/app/a/al
    //   104: dup
    //   105: iload_1
    //   106: i2l
    //   107: aload 4
    //   109: invokespecial 288	com/estrongs/android/pop/app/a/al:<init>	(JLjava/lang/String;)V
    //   112: invokeinterface 68 2 0
    //   117: pop
    //   118: goto -71 -> 47
    //   121: astore 4
    //   123: aload_3
    //   124: astore_2
    //   125: invokestatic 290	com/estrongs/android/pop/app/a/an:e	()Ljava/lang/String;
    //   128: astore 5
    //   130: aload_3
    //   131: astore_2
    //   132: aload 5
    //   134: new 127	java/lang/StringBuilder
    //   137: dup
    //   138: invokespecial 128	java/lang/StringBuilder:<init>	()V
    //   141: new 238	java/io/File
    //   144: dup
    //   145: aload 5
    //   147: invokespecial 239	java/io/File:<init>	(Ljava/lang/String;)V
    //   150: invokevirtual 293	java/io/File:getParent	()Ljava/lang/String;
    //   153: invokevirtual 133	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   156: ldc_w 295
    //   159: invokevirtual 133	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   162: new 127	java/lang/StringBuilder
    //   165: dup
    //   166: invokespecial 128	java/lang/StringBuilder:<init>	()V
    //   169: new 238	java/io/File
    //   172: dup
    //   173: aload 5
    //   175: invokespecial 239	java/io/File:<init>	(Ljava/lang/String;)V
    //   178: invokevirtual 298	java/io/File:getName	()Ljava/lang/String;
    //   181: invokevirtual 133	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   184: ldc_w 300
    //   187: invokevirtual 133	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   190: invokevirtual 140	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   193: invokestatic 306	com/estrongs/fs/util/j:m	(Ljava/lang/String;)Ljava/lang/String;
    //   196: invokevirtual 133	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   199: invokevirtual 140	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   202: invokestatic 311	com/estrongs/fs/impl/local/h:a	(Ljava/lang/String;Ljava/lang/String;)Z
    //   205: pop
    //   206: aload_3
    //   207: astore_2
    //   208: invokestatic 100	com/estrongs/android/pop/app/a/an:a	()Lcom/estrongs/android/pop/app/a/an;
    //   211: pop
    //   212: aload_3
    //   213: astore_2
    //   214: invokestatic 313	com/estrongs/android/pop/app/a/an:d	()V
    //   217: aload_3
    //   218: astore_2
    //   219: invokestatic 100	com/estrongs/android/pop/app/a/an:a	()Lcom/estrongs/android/pop/app/a/an;
    //   222: pop
    //   223: aload_3
    //   224: astore_2
    //   225: aload 4
    //   227: invokevirtual 314	android/database/sqlite/SQLiteDatabaseCorruptException:printStackTrace	()V
    //   230: aload_3
    //   231: ifnull +9 -> 240
    //   234: aload_3
    //   235: invokeinterface 252 1 0
    //   240: aload_0
    //   241: getfield 25	com/estrongs/android/pop/app/a/ao:a	Ljava/util/List;
    //   244: areturn
    //   245: aload_3
    //   246: ifnull -6 -> 240
    //   249: aload_3
    //   250: invokeinterface 252 1 0
    //   255: goto -15 -> 240
    //   258: astore 4
    //   260: aconst_null
    //   261: astore_3
    //   262: aload_3
    //   263: astore_2
    //   264: aload 4
    //   266: invokevirtual 315	java/lang/IllegalStateException:printStackTrace	()V
    //   269: aload_3
    //   270: ifnull -30 -> 240
    //   273: aload_3
    //   274: invokeinterface 252 1 0
    //   279: goto -39 -> 240
    //   282: astore_3
    //   283: aconst_null
    //   284: astore_2
    //   285: aload_2
    //   286: ifnull +9 -> 295
    //   289: aload_2
    //   290: invokeinterface 252 1 0
    //   295: aload_3
    //   296: athrow
    //   297: astore_3
    //   298: goto -13 -> 285
    //   301: astore 4
    //   303: goto -41 -> 262
    //   306: astore_2
    //   307: goto -84 -> 223
    //   310: astore_2
    //   311: goto -105 -> 206
    //   314: astore 4
    //   316: aconst_null
    //   317: astore_3
    //   318: goto -195 -> 123
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	321	0	this	ao
    //   75	31	1	i	int
    //   29	261	2	localObject1	Object
    //   306	1	2	localException1	Exception
    //   310	1	2	localException2	Exception
    //   42	232	3	localCursor	Cursor
    //   282	14	3	localObject2	Object
    //   297	1	3	localObject3	Object
    //   317	1	3	localObject4	Object
    //   93	15	4	str1	String
    //   121	105	4	localSQLiteDatabaseCorruptException1	android.database.sqlite.SQLiteDatabaseCorruptException
    //   258	7	4	localIllegalStateException1	IllegalStateException
    //   301	1	4	localIllegalStateException2	IllegalStateException
    //   314	1	4	localSQLiteDatabaseCorruptException2	android.database.sqlite.SQLiteDatabaseCorruptException
    //   128	46	5	str2	String
    // Exception table:
    //   from	to	target	type
    //   49	58	121	android/database/sqlite/SQLiteDatabaseCorruptException
    //   60	76	121	android/database/sqlite/SQLiteDatabaseCorruptException
    //   78	95	121	android/database/sqlite/SQLiteDatabaseCorruptException
    //   97	118	121	android/database/sqlite/SQLiteDatabaseCorruptException
    //   30	43	258	java/lang/IllegalStateException
    //   30	43	282	finally
    //   49	58	297	finally
    //   60	76	297	finally
    //   78	95	297	finally
    //   97	118	297	finally
    //   125	130	297	finally
    //   132	206	297	finally
    //   208	212	297	finally
    //   214	217	297	finally
    //   219	223	297	finally
    //   225	230	297	finally
    //   264	269	297	finally
    //   49	58	301	java/lang/IllegalStateException
    //   60	76	301	java/lang/IllegalStateException
    //   78	95	301	java/lang/IllegalStateException
    //   97	118	301	java/lang/IllegalStateException
    //   208	212	306	java/lang/Exception
    //   214	217	306	java/lang/Exception
    //   219	223	306	java/lang/Exception
    //   125	130	310	java/lang/Exception
    //   132	206	310	java/lang/Exception
    //   30	43	314	android/database/sqlite/SQLiteDatabaseCorruptException
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.pop.app.a.ao
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */