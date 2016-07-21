package com.estrongs.a;

import android.util.SparseArray;
import com.estrongs.a.a.p;
import com.estrongs.fs.b.ad;
import com.estrongs.fs.b.ar;
import com.estrongs.fs.d;
import com.estrongs.fs.util.j;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;
import java.util.Iterator;
import java.util.List;
import org.json.JSONArray;
import org.json.JSONObject;

public class l
{
  private static final String b = j.a + "/task/" + "tasks.rpt";
  private static l c = null;
  public final p a = new m(this);
  private ArrayList<JSONObject> d = new ArrayList();
  private ArrayList<a> e = new ArrayList();
  private SparseArray<List<a>> f = new SparseArray();
  private o g = null;
  private Comparator<a> h = new n(this);
  
  private l()
  {
    d();
  }
  
  private a a(JSONObject paramJSONObject)
  {
    int i = paramJSONObject.optInt("task_type");
    if (6 == i) {
      return new ad(d.a(), paramJSONObject);
    }
    if (23 == i) {
      return new ar(d.a(), paramJSONObject);
    }
    return new a(paramJSONObject);
  }
  
  public static l a()
  {
    try
    {
      if (c == null) {
        c = new l();
      }
      l locall = c;
      return locall;
    }
    finally {}
  }
  
  private static JSONArray a(List<JSONObject> paramList)
  {
    localJSONArray = new JSONArray();
    try
    {
      paramList = paramList.iterator();
      while (paramList.hasNext()) {
        localJSONArray.put((JSONObject)paramList.next());
      }
      return localJSONArray;
    }
    catch (Exception paramList) {}
  }
  
  /* Error */
  private void c()
  {
    // Byte code:
    //   0: aconst_null
    //   1: astore 4
    //   3: aconst_null
    //   4: astore 5
    //   6: aconst_null
    //   7: astore_3
    //   8: aload 4
    //   10: astore_2
    //   11: aload 5
    //   13: astore_1
    //   14: aload_0
    //   15: getfield 57	com/estrongs/a/l:d	Ljava/util/ArrayList;
    //   18: astore 6
    //   20: aload 4
    //   22: astore_2
    //   23: aload 5
    //   25: astore_1
    //   26: aload 6
    //   28: monitorenter
    //   29: aload_3
    //   30: astore_2
    //   31: aload_0
    //   32: getfield 57	com/estrongs/a/l:d	Ljava/util/ArrayList;
    //   35: invokestatic 141	com/estrongs/a/l:a	(Ljava/util/List;)Lorg/json/JSONArray;
    //   38: astore 5
    //   40: aload_3
    //   41: astore_2
    //   42: new 143	java/io/File
    //   45: dup
    //   46: getstatic 48	com/estrongs/a/l:b	Ljava/lang/String;
    //   49: invokespecial 146	java/io/File:<init>	(Ljava/lang/String;)V
    //   52: astore 4
    //   54: aload 4
    //   56: astore_1
    //   57: aload_3
    //   58: astore_2
    //   59: aload 4
    //   61: invokevirtual 149	java/io/File:exists	()Z
    //   64: ifne +12 -> 76
    //   67: aload_3
    //   68: astore_2
    //   69: getstatic 48	com/estrongs/a/l:b	Ljava/lang/String;
    //   72: invokestatic 153	com/estrongs/fs/util/j:i	(Ljava/lang/String;)Ljava/io/File;
    //   75: astore_1
    //   76: aload_3
    //   77: astore_2
    //   78: new 155	java/io/OutputStreamWriter
    //   81: dup
    //   82: new 157	java/io/FileOutputStream
    //   85: dup
    //   86: aload_1
    //   87: invokespecial 160	java/io/FileOutputStream:<init>	(Ljava/io/File;)V
    //   90: invokespecial 163	java/io/OutputStreamWriter:<init>	(Ljava/io/OutputStream;)V
    //   93: astore_1
    //   94: aload_1
    //   95: aload 5
    //   97: invokevirtual 164	org/json/JSONArray:toString	()Ljava/lang/String;
    //   100: invokevirtual 167	java/io/OutputStreamWriter:write	(Ljava/lang/String;)V
    //   103: aload 6
    //   105: monitorexit
    //   106: aload_1
    //   107: invokestatic 170	com/estrongs/fs/util/j:a	(Ljava/io/Writer;)V
    //   110: return
    //   111: astore_3
    //   112: aload_2
    //   113: astore_1
    //   114: aload_1
    //   115: astore_2
    //   116: aload 6
    //   118: monitorexit
    //   119: aload_1
    //   120: astore_2
    //   121: aload_3
    //   122: athrow
    //   123: astore_1
    //   124: aload_2
    //   125: invokestatic 170	com/estrongs/fs/util/j:a	(Ljava/io/Writer;)V
    //   128: return
    //   129: astore_2
    //   130: aload_1
    //   131: invokestatic 170	com/estrongs/fs/util/j:a	(Ljava/io/Writer;)V
    //   134: aload_2
    //   135: athrow
    //   136: astore_3
    //   137: goto -23 -> 114
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	140	0	this	l
    //   13	107	1	localObject1	Object
    //   123	8	1	localIOException	java.io.IOException
    //   10	115	2	localObject2	Object
    //   129	6	2	localObject3	Object
    //   7	70	3	localObject4	Object
    //   111	11	3	localObject5	Object
    //   136	1	3	localObject6	Object
    //   1	59	4	localFile	java.io.File
    //   4	92	5	localJSONArray	JSONArray
    //   18	99	6	localArrayList	ArrayList
    // Exception table:
    //   from	to	target	type
    //   31	40	111	finally
    //   42	54	111	finally
    //   59	67	111	finally
    //   69	76	111	finally
    //   78	94	111	finally
    //   116	119	111	finally
    //   14	20	123	java/io/IOException
    //   26	29	123	java/io/IOException
    //   121	123	123	java/io/IOException
    //   14	20	129	finally
    //   26	29	129	finally
    //   121	123	129	finally
    //   94	106	136	finally
  }
  
  private void c(a parama, boolean paramBoolean)
  {
    parama.removeTaskStatusChangeListener(a);
    if (e.contains(parama))
    {
      if ((paramBoolean) && (parama.getTaskStatus() != 4) && (parama.getTaskStatus() != 5)) {
        parama.requestStop();
      }
      e.remove(parama);
    }
    synchronized (d)
    {
      for (;;)
      {
        Iterator localIterator = d.iterator();
        JSONObject localJSONObject;
        do
        {
          if (!localIterator.hasNext()) {
            break;
          }
          localJSONObject = (JSONObject)localIterator.next();
        } while (parama.getTaskId() != localJSONObject.optLong("task_id"));
        d.remove(localJSONObject);
        return;
        ??? = (List)f.get(parama.getTastType());
        if (??? != null) {
          ((List)???).remove(parama);
        }
      }
      return;
    }
  }
  
  /* Error */
  private void d()
  {
    // Byte code:
    //   0: getstatic 48	com/estrongs/a/l:b	Ljava/lang/String;
    //   3: invokestatic 212	com/estrongs/fs/util/j:j	(Ljava/lang/String;)Ljava/lang/StringBuffer;
    //   6: invokevirtual 215	java/lang/StringBuffer:toString	()Ljava/lang/String;
    //   9: astore_2
    //   10: aload_2
    //   11: invokestatic 220	com/estrongs/android/util/bk:a	(Ljava/lang/CharSequence;)Z
    //   14: ifeq +4 -> 18
    //   17: return
    //   18: new 114	org/json/JSONArray
    //   21: dup
    //   22: aload_2
    //   23: invokespecial 221	org/json/JSONArray:<init>	(Ljava/lang/String;)V
    //   26: astore_3
    //   27: iconst_0
    //   28: istore_1
    //   29: iload_1
    //   30: aload_3
    //   31: invokevirtual 224	org/json/JSONArray:length	()I
    //   34: if_icmpge +57 -> 91
    //   37: aload_3
    //   38: iload_1
    //   39: invokevirtual 228	org/json/JSONArray:optJSONObject	(I)Lorg/json/JSONObject;
    //   42: astore 4
    //   44: aload 4
    //   46: ifnonnull +6 -> 52
    //   49: goto +43 -> 92
    //   52: aload_0
    //   53: getfield 57	com/estrongs/a/l:d	Ljava/util/ArrayList;
    //   56: astore_2
    //   57: aload_2
    //   58: monitorenter
    //   59: aload_0
    //   60: getfield 57	com/estrongs/a/l:d	Ljava/util/ArrayList;
    //   63: aload 4
    //   65: invokevirtual 231	java/util/ArrayList:add	(Ljava/lang/Object;)Z
    //   68: pop
    //   69: aload_2
    //   70: monitorexit
    //   71: aload_0
    //   72: aload_0
    //   73: aload 4
    //   75: invokespecial 233	com/estrongs/a/l:a	(Lorg/json/JSONObject;)Lcom/estrongs/a/a;
    //   78: invokespecial 236	com/estrongs/a/l:d	(Lcom/estrongs/a/a;)V
    //   81: goto +11 -> 92
    //   84: astore_2
    //   85: return
    //   86: astore_3
    //   87: aload_2
    //   88: monitorexit
    //   89: aload_3
    //   90: athrow
    //   91: return
    //   92: iload_1
    //   93: iconst_1
    //   94: iadd
    //   95: istore_1
    //   96: goto -67 -> 29
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	99	0	this	l
    //   28	68	1	i	int
    //   84	4	2	localException	Exception
    //   26	12	3	localJSONArray	JSONArray
    //   86	4	3	localObject2	Object
    //   42	32	4	localJSONObject	JSONObject
    // Exception table:
    //   from	to	target	type
    //   0	17	84	java/lang/Exception
    //   18	27	84	java/lang/Exception
    //   29	44	84	java/lang/Exception
    //   52	59	84	java/lang/Exception
    //   71	81	84	java/lang/Exception
    //   89	91	84	java/lang/Exception
    //   59	71	86	finally
    //   87	89	86	finally
  }
  
  private void d(a parama)
  {
    parama.addTaskStatusChangeListener(a);
    e.add(parama);
  }
  
  public void a(a parama)
  {
    try
    {
      a(parama, true);
      return;
    }
    finally
    {
      parama = finally;
      throw parama;
    }
  }
  
  /* Error */
  public void a(a parama, boolean paramBoolean)
  {
    // Byte code:
    //   0: aload_0
    //   1: monitorenter
    //   2: aload_0
    //   3: getfield 59	com/estrongs/a/l:e	Ljava/util/ArrayList;
    //   6: aload_1
    //   7: invokevirtual 179	java/util/ArrayList:contains	(Ljava/lang/Object;)Z
    //   10: ifne +37 -> 47
    //   13: aload_0
    //   14: aload_1
    //   15: invokespecial 236	com/estrongs/a/l:d	(Lcom/estrongs/a/a;)V
    //   18: aload_0
    //   19: getfield 66	com/estrongs/a/l:g	Lcom/estrongs/a/o;
    //   22: ifnull +17 -> 39
    //   25: iload_2
    //   26: ifeq +13 -> 39
    //   29: aload_0
    //   30: getfield 66	com/estrongs/a/l:g	Lcom/estrongs/a/o;
    //   33: aload_1
    //   34: invokeinterface 245 2 0
    //   39: aload_0
    //   40: aload_1
    //   41: invokevirtual 247	com/estrongs/a/l:b	(Lcom/estrongs/a/a;)V
    //   44: aload_0
    //   45: monitorexit
    //   46: return
    //   47: aload_1
    //   48: aload_0
    //   49: getfield 73	com/estrongs/a/l:a	Lcom/estrongs/a/a/p;
    //   52: invokevirtual 239	com/estrongs/a/a:addTaskStatusChangeListener	(Lcom/estrongs/a/a/p;)V
    //   55: goto -11 -> 44
    //   58: astore_1
    //   59: aload_0
    //   60: monitorexit
    //   61: aload_1
    //   62: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	63	0	this	l
    //   0	63	1	parama	a
    //   0	63	2	paramBoolean	boolean
    // Exception table:
    //   from	to	target	type
    //   2	25	58	finally
    //   29	39	58	finally
    //   39	44	58	finally
    //   47	55	58	finally
  }
  
  public void a(o paramo)
  {
    g = paramo;
  }
  
  public List<a> b()
  {
    Collections.sort(e, h);
    return e;
  }
  
  public void b(a parama)
  {
    synchronized (d)
    {
      if (!d.contains(parama.summary())) {
        d.add(parama.summary());
      }
      c();
      return;
    }
  }
  
  public void b(a parama, boolean paramBoolean)
  {
    c(parama, false);
    if ((g != null) && (paramBoolean)) {
      g.b(parama);
    }
    c();
  }
  
  public void c(a parama)
  {
    b(parama, true);
  }
}

/* Location:
 * Qualified Name:     com.estrongs.a.l
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */