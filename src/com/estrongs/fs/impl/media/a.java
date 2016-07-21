package com.estrongs.fs.impl.media;

import com.estrongs.android.pop.FexApplication;
import com.estrongs.android.pop.utils.w;
import com.estrongs.android.ui.topclassify.c;
import com.estrongs.android.util.TypedMap;
import com.estrongs.android.util.ap;
import com.estrongs.fs.h;
import com.estrongs.fs.i;
import com.estrongs.fs.impl.c.d;
import java.io.File;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.List;
import java.util.Map;
import java.util.Set;

public abstract class a
{
  /* Error */
  private Map<d, List<String>> a()
  {
    // Byte code:
    //   0: aload_0
    //   1: monitorenter
    //   2: new 15	java/util/HashMap
    //   5: dup
    //   6: invokespecial 16	java/util/HashMap:<init>	()V
    //   9: astore_1
    //   10: new 18	com/estrongs/fs/impl/c/b
    //   13: dup
    //   14: invokespecial 19	com/estrongs/fs/impl/c/b:<init>	()V
    //   17: astore_2
    //   18: aload_2
    //   19: ldc 21
    //   21: invokevirtual 24	com/estrongs/fs/impl/c/b:a	(Ljava/lang/String;)V
    //   24: new 26	com/estrongs/fs/impl/c/a
    //   27: dup
    //   28: invokespecial 27	com/estrongs/fs/impl/c/a:<init>	()V
    //   31: astore_3
    //   32: aload_3
    //   33: aload_2
    //   34: new 29	com/estrongs/fs/j
    //   37: dup
    //   38: invokespecial 30	com/estrongs/fs/j:<init>	()V
    //   41: aconst_null
    //   42: invokevirtual 33	com/estrongs/fs/impl/c/a:a	(Lcom/estrongs/fs/h;Lcom/estrongs/fs/i;Lcom/estrongs/android/util/TypedMap;)Ljava/util/List;
    //   45: astore_2
    //   46: aload_2
    //   47: ifnull +162 -> 209
    //   50: aload_2
    //   51: invokeinterface 39 1 0
    //   56: astore_2
    //   57: aload_2
    //   58: invokeinterface 45 1 0
    //   63: ifeq +146 -> 209
    //   66: aload_2
    //   67: invokeinterface 49 1 0
    //   72: checkcast 51	com/estrongs/fs/h
    //   75: astore_3
    //   76: aload_3
    //   77: instanceof 53
    //   80: ifeq -23 -> 57
    //   83: aload_3
    //   84: checkcast 53	com/estrongs/fs/impl/c/d
    //   87: astore_3
    //   88: ldc 55
    //   90: new 57	java/lang/StringBuilder
    //   93: dup
    //   94: invokespecial 58	java/lang/StringBuilder:<init>	()V
    //   97: ldc 60
    //   99: invokevirtual 64	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   102: aload_3
    //   103: getfield 67	com/estrongs/fs/impl/c/d:a	Landroid/content/pm/ApplicationInfo;
    //   106: getfield 73	android/content/pm/ApplicationInfo:packageName	Ljava/lang/String;
    //   109: invokevirtual 64	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   112: invokevirtual 77	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   115: invokestatic 83	com/estrongs/android/util/l:e	(Ljava/lang/String;Ljava/lang/String;)V
    //   118: new 85	java/util/ArrayList
    //   121: dup
    //   122: invokespecial 86	java/util/ArrayList:<init>	()V
    //   125: astore 4
    //   127: aload_3
    //   128: getfield 90	com/estrongs/fs/impl/c/d:b	Ljava/util/List;
    //   131: invokeinterface 39 1 0
    //   136: astore 5
    //   138: aload 5
    //   140: invokeinterface 45 1 0
    //   145: ifeq +68 -> 213
    //   148: aload 5
    //   150: invokeinterface 49 1 0
    //   155: checkcast 18	com/estrongs/fs/impl/c/b
    //   158: astore 6
    //   160: ldc 55
    //   162: new 57	java/lang/StringBuilder
    //   165: dup
    //   166: invokespecial 58	java/lang/StringBuilder:<init>	()V
    //   169: ldc 92
    //   171: invokevirtual 64	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   174: aload 6
    //   176: invokevirtual 95	com/estrongs/fs/impl/c/b:getAbsolutePath	()Ljava/lang/String;
    //   179: invokevirtual 64	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   182: invokevirtual 77	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   185: invokestatic 83	com/estrongs/android/util/l:e	(Ljava/lang/String;Ljava/lang/String;)V
    //   188: aload 4
    //   190: aload 6
    //   192: invokevirtual 95	com/estrongs/fs/impl/c/b:getAbsolutePath	()Ljava/lang/String;
    //   195: invokeinterface 99 2 0
    //   200: pop
    //   201: goto -63 -> 138
    //   204: astore_2
    //   205: aload_2
    //   206: invokevirtual 102	java/lang/Exception:printStackTrace	()V
    //   209: aload_0
    //   210: monitorexit
    //   211: aload_1
    //   212: areturn
    //   213: aload_1
    //   214: aload_3
    //   215: aload 4
    //   217: invokestatic 107	com/estrongs/android/cleaner/j:a	(Ljava/util/List;)Ljava/util/List;
    //   220: invokeinterface 113 3 0
    //   225: pop
    //   226: goto -169 -> 57
    //   229: astore_1
    //   230: aload_0
    //   231: monitorexit
    //   232: aload_1
    //   233: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	234	0	this	a
    //   9	205	1	localHashMap	java.util.HashMap
    //   229	4	1	localObject1	Object
    //   17	50	2	localObject2	Object
    //   204	2	2	localException	Exception
    //   31	184	3	localObject3	Object
    //   125	91	4	localArrayList	ArrayList
    //   136	13	5	localIterator	Iterator
    //   158	33	6	localb	com.estrongs.fs.impl.c.b
    // Exception table:
    //   from	to	target	type
    //   32	46	204	java/lang/Exception
    //   50	57	204	java/lang/Exception
    //   57	138	204	java/lang/Exception
    //   138	201	204	java/lang/Exception
    //   213	226	204	java/lang/Exception
    //   2	32	229	finally
    //   32	46	229	finally
    //   50	57	229	finally
    //   57	138	229	finally
    //   138	201	229	finally
    //   205	209	229	finally
    //   213	226	229	finally
  }
  
  public List<h> a(h paramh, i parami, TypedMap paramTypedMap)
  {
    ArrayList localArrayList = new ArrayList();
    Object localObject1;
    Object localObject2;
    Map localMap;
    Iterator localIterator1;
    if ((paramh != null) && ((paramh instanceof c)))
    {
      localObject1 = (c)paramh;
      int i = ((c)localObject1).b();
      localObject2 = FexApplication.a().getString(((c)localObject1).a());
      if ((i == 20) && (((c)localObject1).c() != null))
      {
        paramh = ((c)localObject1).c().iterator();
        while (paramh.hasNext())
        {
          parami = (h)paramh.next();
          if (parami.exists()) {
            localArrayList.add(parami);
          }
        }
        return localArrayList;
      }
      if ((i == 2) || ((!"".equals(localObject2)) && (paramh.getPath().contains((CharSequence)localObject2))))
      {
        localObject2 = b(paramh, parami, paramTypedMap);
        localMap = a();
        localIterator1 = localMap.keySet().iterator();
      }
    }
    label259:
    label406:
    label407:
    for (;;)
    {
      d locald;
      LinkedList localLinkedList;
      if (localIterator1.hasNext())
      {
        locald = (d)localIterator1.next();
        localLinkedList = new LinkedList();
        paramTypedMap = null;
        Iterator localIterator2 = ((List)localMap.get(locald)).iterator();
        while (localIterator2.hasNext())
        {
          localObject1 = (String)localIterator2.next();
          Iterator localIterator3 = ((List)localObject2).iterator();
          parami = paramTypedMap;
          paramTypedMap = parami;
          if (localIterator3.hasNext())
          {
            paramTypedMap = (h)localIterator3.next();
            if (!ap.i((String)localObject1, paramTypedMap.getAbsolutePath())) {
              break label406;
            }
            localLinkedList.add(paramTypedMap);
            if (parami != null) {
              break label406;
            }
            parami = (i)localObject1;
          }
        }
      }
      for (;;)
      {
        break label259;
        if (localLinkedList.isEmpty()) {
          break label407;
        }
        parami = new c(paramh + File.separator + w.a(FexApplication.a().getPackageManager(), a), 20);
        parami.a(localLinkedList);
        parami.a(paramTypedMap);
        localArrayList.add(parami);
        break;
        return localArrayList;
        return b(paramh, parami, paramTypedMap);
      }
    }
  }
  
  public abstract List<h> b(h paramh, i parami, TypedMap paramTypedMap);
}

/* Location:
 * Qualified Name:     com.estrongs.fs.impl.media.a
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */