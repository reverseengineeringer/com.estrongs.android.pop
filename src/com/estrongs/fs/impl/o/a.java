package com.estrongs.fs.impl.o;

import android.os.Looper;
import com.estrongs.android.pop.view.FileExplorerActivity;
import com.estrongs.android.util.TypedMap;
import com.estrongs.android.util.am;
import com.estrongs.android.view.aw;
import com.estrongs.fs.h;
import com.estrongs.fs.i;
import com.estrongs.fs.k;
import java.io.File;
import java.io.InputStream;
import java.io.OutputStream;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;

public abstract class a
  implements k
{
  private Object a = new Object();
  
  private List<h> a()
  {
    ArrayList localArrayList1 = new ArrayList();
    localArrayList1.addAll(am.a());
    Collections.sort(localArrayList1);
    ArrayList localArrayList2 = new ArrayList();
    int i = 0;
    if (i < localArrayList1.size())
    {
      int j = 0;
      label45:
      if (j < i) {
        if (!((String)localArrayList1.get(i)).startsWith((String)localArrayList1.get(j))) {}
      }
      for (;;)
      {
        i += 1;
        break;
        j += 1;
        break label45;
        localArrayList2.addAll(e((String)localArrayList1.get(i)));
      }
    }
    return localArrayList2;
  }
  
  private List<h> e(String paramString)
  {
    StringBuilder localStringBuilder = new StringBuilder();
    localStringBuilder.append("searchPath").append("=").append(paramString);
    localStringBuilder.append("&&").append("category").append("=").append(c());
    localStringBuilder.append("&&").append("recursion").append("=").append("true");
    return com.estrongs.fs.d.a().a(paramString, localStringBuilder.toString(), null);
  }
  
  public h a(String paramString)
  {
    return null;
  }
  
  public OutputStream a(String paramString, TypedMap paramTypedMap)
  {
    return null;
  }
  
  public OutputStream a(String paramString, boolean paramBoolean)
  {
    return null;
  }
  
  public List<h> a(h paramh, i parami, TypedMap paramTypedMap)
  {
    parami = null;
    for (;;)
    {
      try
      {
        if ((new File(b()).exists()) && (!paramTypedMap.getBoolean("refresh")))
        {
          paramTypedMap = f();
          if (paramTypedMap == null)
          {
            paramh = parami;
            return paramh;
          }
          if (Looper.myLooper() == null) {
            Looper.prepare();
          }
          if (d())
          {
            Object localObject = FileExplorerActivity.J();
            paramh = parami;
            if (localObject == null) {
              continue;
            }
            localObject = ((FileExplorerActivity)localObject).y();
            paramh = parami;
            if (localObject == null) {
              continue;
            }
            new f(this, (aw)localObject, paramTypedMap).execute(new String[0]);
            a(false);
          }
        }
        else
        {
          paramh = a();
          a(paramh);
          continue;
        }
        paramh = paramTypedMap;
      }
      finally {}
    }
  }
  
  public void a(String paramString1, String paramString2)
  {
    new Thread(new e(this, paramString1, paramString2)).start();
  }
  
  protected void a(List<h> paramList)
  {
    new Thread(new b(this, paramList)).start();
  }
  
  protected abstract void a(boolean paramBoolean);
  
  protected abstract String b();
  
  protected void b(List<h> paramList)
  {
    ArrayList localArrayList = new ArrayList();
    int i = 0;
    while (i < paramList.size())
    {
      localArrayList.add(((h)paramList.get(i)).getAbsolutePath());
      i += 1;
    }
    c(localArrayList);
  }
  
  public boolean b(String paramString)
  {
    return false;
  }
  
  protected abstract String c();
  
  /* Error */
  protected void c(List<String> paramList)
  {
    // Byte code:
    //   0: aload_0
    //   1: getfield 14	com/estrongs/fs/impl/o/a:a	Ljava/lang/Object;
    //   4: astore 6
    //   6: aload 6
    //   8: monitorenter
    //   9: aconst_null
    //   10: astore 4
    //   12: aconst_null
    //   13: astore 5
    //   15: aload 4
    //   17: astore_3
    //   18: new 100	java/io/File
    //   21: dup
    //   22: aload_0
    //   23: invokevirtual 102	com/estrongs/fs/impl/o/a:b	()Ljava/lang/String;
    //   26: invokespecial 105	java/io/File:<init>	(Ljava/lang/String;)V
    //   29: invokevirtual 193	java/io/File:getParentFile	()Ljava/io/File;
    //   32: astore 7
    //   34: aload 4
    //   36: astore_3
    //   37: aload 7
    //   39: invokevirtual 109	java/io/File:exists	()Z
    //   42: ifne +12 -> 54
    //   45: aload 4
    //   47: astore_3
    //   48: aload 7
    //   50: invokevirtual 196	java/io/File:mkdirs	()Z
    //   53: pop
    //   54: aload 4
    //   56: astore_3
    //   57: new 198	java/io/PrintWriter
    //   60: dup
    //   61: new 200	java/io/OutputStreamWriter
    //   64: dup
    //   65: new 202	java/io/FileOutputStream
    //   68: dup
    //   69: aload_0
    //   70: invokevirtual 102	com/estrongs/fs/impl/o/a:b	()Ljava/lang/String;
    //   73: invokespecial 203	java/io/FileOutputStream:<init>	(Ljava/lang/String;)V
    //   76: invokespecial 206	java/io/OutputStreamWriter:<init>	(Ljava/io/OutputStream;)V
    //   79: invokespecial 209	java/io/PrintWriter:<init>	(Ljava/io/Writer;)V
    //   82: astore 4
    //   84: iconst_0
    //   85: istore_2
    //   86: iload_2
    //   87: aload_1
    //   88: invokeinterface 39 1 0
    //   93: if_icmpge +25 -> 118
    //   96: aload 4
    //   98: aload_1
    //   99: iload_2
    //   100: invokeinterface 43 2 0
    //   105: checkcast 45	java/lang/String
    //   108: invokevirtual 212	java/io/PrintWriter:println	(Ljava/lang/String;)V
    //   111: iload_2
    //   112: iconst_1
    //   113: iadd
    //   114: istore_2
    //   115: goto -29 -> 86
    //   118: aload 4
    //   120: ifnull +8 -> 128
    //   123: aload 4
    //   125: invokevirtual 215	java/io/PrintWriter:close	()V
    //   128: aload 6
    //   130: monitorexit
    //   131: return
    //   132: astore 4
    //   134: aload 5
    //   136: astore_1
    //   137: aload_1
    //   138: astore_3
    //   139: aload 4
    //   141: invokevirtual 218	java/io/FileNotFoundException:printStackTrace	()V
    //   144: aload_1
    //   145: ifnull -17 -> 128
    //   148: aload_1
    //   149: invokevirtual 215	java/io/PrintWriter:close	()V
    //   152: goto -24 -> 128
    //   155: astore_1
    //   156: aload 6
    //   158: monitorexit
    //   159: aload_1
    //   160: athrow
    //   161: astore_1
    //   162: aload_3
    //   163: ifnull +7 -> 170
    //   166: aload_3
    //   167: invokevirtual 215	java/io/PrintWriter:close	()V
    //   170: aload_1
    //   171: athrow
    //   172: astore_1
    //   173: aload 4
    //   175: astore_3
    //   176: goto -14 -> 162
    //   179: astore_3
    //   180: aload 4
    //   182: astore_1
    //   183: aload_3
    //   184: astore 4
    //   186: goto -49 -> 137
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	189	0	this	a
    //   0	189	1	paramList	List<String>
    //   85	30	2	i	int
    //   17	159	3	localObject1	Object
    //   179	5	3	localFileNotFoundException1	java.io.FileNotFoundException
    //   10	114	4	localPrintWriter	java.io.PrintWriter
    //   132	49	4	localFileNotFoundException2	java.io.FileNotFoundException
    //   184	1	4	localObject2	Object
    //   13	122	5	localObject3	Object
    //   4	153	6	localObject4	Object
    //   32	17	7	localFile	File
    // Exception table:
    //   from	to	target	type
    //   18	34	132	java/io/FileNotFoundException
    //   37	45	132	java/io/FileNotFoundException
    //   48	54	132	java/io/FileNotFoundException
    //   57	84	132	java/io/FileNotFoundException
    //   123	128	155	finally
    //   128	131	155	finally
    //   148	152	155	finally
    //   156	159	155	finally
    //   166	170	155	finally
    //   170	172	155	finally
    //   18	34	161	finally
    //   37	45	161	finally
    //   48	54	161	finally
    //   57	84	161	finally
    //   139	144	161	finally
    //   86	111	172	finally
    //   86	111	179	java/io/FileNotFoundException
  }
  
  public boolean c(String paramString)
  {
    return true;
  }
  
  public InputStream d(String paramString)
  {
    return null;
  }
  
  public void d(List<String> paramList)
  {
    new Thread(new c(this, paramList)).start();
  }
  
  protected abstract boolean d();
  
  public void e(List<String> paramList)
  {
    new Thread(new d(this, paramList)).start();
  }
  
  protected List<h> f()
  {
    List localList = g();
    ArrayList localArrayList = new ArrayList();
    com.estrongs.a.a locala = com.estrongs.a.a.getCurrentTask();
    int i = 0;
    while (i < localList.size())
    {
      if ((locala != null) && (locala.taskStopped())) {
        return null;
      }
      File localFile = new File((String)localList.get(i));
      if (localFile.exists()) {
        localArrayList.add(new com.estrongs.fs.impl.local.f(localFile));
      }
      i += 1;
    }
    return localArrayList;
  }
  
  /* Error */
  protected List<String> g()
  {
    // Byte code:
    //   0: invokestatic 235	com/estrongs/a/a:getCurrentTask	()Lcom/estrongs/a/a;
    //   3: astore 5
    //   5: aload_0
    //   6: getfield 14	com/estrongs/fs/impl/o/a:a	Ljava/lang/Object;
    //   9: astore 4
    //   11: aload 4
    //   13: monitorenter
    //   14: new 18	java/util/ArrayList
    //   17: dup
    //   18: invokespecial 19	java/util/ArrayList:<init>	()V
    //   21: astore_3
    //   22: new 247	java/io/BufferedReader
    //   25: dup
    //   26: new 249	java/io/InputStreamReader
    //   29: dup
    //   30: new 251	java/io/FileInputStream
    //   33: dup
    //   34: aload_0
    //   35: invokevirtual 102	com/estrongs/fs/impl/o/a:b	()Ljava/lang/String;
    //   38: invokespecial 252	java/io/FileInputStream:<init>	(Ljava/lang/String;)V
    //   41: invokespecial 255	java/io/InputStreamReader:<init>	(Ljava/io/InputStream;)V
    //   44: invokespecial 258	java/io/BufferedReader:<init>	(Ljava/io/Reader;)V
    //   47: astore_2
    //   48: aload_2
    //   49: astore_1
    //   50: aload_2
    //   51: invokevirtual 261	java/io/BufferedReader:readLine	()Ljava/lang/String;
    //   54: astore 6
    //   56: aload 6
    //   58: ifnull +91 -> 149
    //   61: aload 5
    //   63: ifnull +36 -> 99
    //   66: aload_2
    //   67: astore_1
    //   68: aload 5
    //   70: invokevirtual 238	com/estrongs/a/a:taskStopped	()Z
    //   73: ifeq +26 -> 99
    //   76: aload_2
    //   77: astore_1
    //   78: new 18	java/util/ArrayList
    //   81: dup
    //   82: invokespecial 19	java/util/ArrayList:<init>	()V
    //   85: astore_3
    //   86: aload_2
    //   87: ifnull +7 -> 94
    //   90: aload_2
    //   91: invokevirtual 262	java/io/BufferedReader:close	()V
    //   94: aload 4
    //   96: monitorexit
    //   97: aload_3
    //   98: areturn
    //   99: aload_2
    //   100: astore_1
    //   101: aload 6
    //   103: invokevirtual 265	java/lang/String:length	()I
    //   106: ifle -58 -> 48
    //   109: aload_2
    //   110: astore_1
    //   111: aload_3
    //   112: aload 6
    //   114: invokeinterface 185 2 0
    //   119: pop
    //   120: goto -72 -> 48
    //   123: astore_3
    //   124: aload_2
    //   125: astore_1
    //   126: aload_3
    //   127: invokevirtual 266	java/io/IOException:printStackTrace	()V
    //   130: aload_2
    //   131: ifnull +7 -> 138
    //   134: aload_2
    //   135: invokevirtual 262	java/io/BufferedReader:close	()V
    //   138: aload 4
    //   140: monitorexit
    //   141: new 18	java/util/ArrayList
    //   144: dup
    //   145: invokespecial 19	java/util/ArrayList:<init>	()V
    //   148: areturn
    //   149: aload_2
    //   150: ifnull +7 -> 157
    //   153: aload_2
    //   154: invokevirtual 262	java/io/BufferedReader:close	()V
    //   157: aload 4
    //   159: monitorexit
    //   160: aload_3
    //   161: areturn
    //   162: astore_1
    //   163: aload 4
    //   165: monitorexit
    //   166: aload_1
    //   167: athrow
    //   168: astore_2
    //   169: aconst_null
    //   170: astore_1
    //   171: aload_1
    //   172: ifnull +7 -> 179
    //   175: aload_1
    //   176: invokevirtual 262	java/io/BufferedReader:close	()V
    //   179: aload_2
    //   180: athrow
    //   181: astore_1
    //   182: goto -88 -> 94
    //   185: astore_1
    //   186: goto -29 -> 157
    //   189: astore_1
    //   190: goto -52 -> 138
    //   193: astore_1
    //   194: goto -15 -> 179
    //   197: astore_2
    //   198: goto -27 -> 171
    //   201: astore_3
    //   202: aconst_null
    //   203: astore_2
    //   204: goto -80 -> 124
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	207	0	this	a
    //   49	77	1	localBufferedReader1	java.io.BufferedReader
    //   162	5	1	localObject1	Object
    //   170	6	1	localObject2	Object
    //   181	1	1	localIOException1	java.io.IOException
    //   185	1	1	localIOException2	java.io.IOException
    //   189	1	1	localIOException3	java.io.IOException
    //   193	1	1	localIOException4	java.io.IOException
    //   47	107	2	localBufferedReader2	java.io.BufferedReader
    //   168	12	2	localObject3	Object
    //   197	1	2	localObject4	Object
    //   203	1	2	localObject5	Object
    //   21	91	3	localArrayList	ArrayList
    //   123	38	3	localIOException5	java.io.IOException
    //   201	1	3	localIOException6	java.io.IOException
    //   9	155	4	localObject6	Object
    //   3	66	5	locala	com.estrongs.a.a
    //   54	59	6	str	String
    // Exception table:
    //   from	to	target	type
    //   50	56	123	java/io/IOException
    //   68	76	123	java/io/IOException
    //   78	86	123	java/io/IOException
    //   101	109	123	java/io/IOException
    //   111	120	123	java/io/IOException
    //   14	22	162	finally
    //   90	94	162	finally
    //   94	97	162	finally
    //   134	138	162	finally
    //   138	141	162	finally
    //   153	157	162	finally
    //   157	160	162	finally
    //   163	166	162	finally
    //   175	179	162	finally
    //   179	181	162	finally
    //   22	48	168	finally
    //   90	94	181	java/io/IOException
    //   153	157	185	java/io/IOException
    //   134	138	189	java/io/IOException
    //   175	179	193	java/io/IOException
    //   50	56	197	finally
    //   68	76	197	finally
    //   78	86	197	finally
    //   101	109	197	finally
    //   111	120	197	finally
    //   126	130	197	finally
    //   22	48	201	java/io/IOException
  }
}

/* Location:
 * Qualified Name:     com.estrongs.fs.impl.o.a
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */