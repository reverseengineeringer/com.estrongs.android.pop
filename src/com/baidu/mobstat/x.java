package com.baidu.mobstat;

import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

public enum x
{
  private int f;
  
  private x(int paramInt)
  {
    f = paramInt;
  }
  
  private int a(List<String> paramList, ArrayList<Long> paramArrayList, ArrayList<v> paramArrayList1, int paramInt1, int paramInt2)
  {
    int k = 0;
    int m = c();
    int j = 0;
    int i = paramInt2;
    paramInt2 = m;
    if (paramInt2 > 0)
    {
      if (paramInt2 >= i) {
        break label182;
      }
      i = paramInt2;
    }
    label182:
    for (;;)
    {
      Object localObject1 = a(i, j);
      if ((j == 0) && (((ArrayList)localObject1).size() != 0)) {
        paramArrayList1.add((v)((ArrayList)localObject1).get(0));
      }
      localObject1 = ((ArrayList)localObject1).iterator();
      for (;;)
      {
        Object localObject2;
        long l;
        if (((Iterator)localObject1).hasNext())
        {
          localObject2 = (v)((Iterator)localObject1).next();
          l = ((v)localObject2).a();
          localObject2 = ((v)localObject2).b();
          m = ((String)localObject2).length();
          if (k + m <= paramInt1) {}
        }
        else
        {
          paramInt2 -= i;
          j += i;
          break;
        }
        paramArrayList.add(Long.valueOf(l));
        paramList.add(localObject2);
        k += m;
      }
      return k;
    }
  }
  
  private int c()
  {
    localObject3 = null;
    localObject1 = null;
    try
    {
      w localw = a();
      localObject1 = localw;
      localObject3 = localw;
      if (localw.a())
      {
        localObject1 = localw;
        localObject3 = localw;
        int i = localw.b();
        if (localw != null) {
          localw.close();
        }
        return i;
      }
      if (localw != null) {
        localw.close();
      }
    }
    catch (Exception localException)
    {
      for (;;)
      {
        localObject3 = localObject1;
        bb.b(localException);
        if (localObject1 != null) {
          ((w)localObject1).close();
        }
      }
    }
    finally
    {
      if (localObject3 == null) {
        break label89;
      }
      ((w)localObject3).close();
    }
    return 0;
  }
  
  /* Error */
  public int a(ArrayList<Long> paramArrayList)
  {
    // Byte code:
    //   0: iconst_0
    //   1: istore_2
    //   2: iconst_0
    //   3: istore 5
    //   5: iconst_0
    //   6: istore 4
    //   8: aload_0
    //   9: monitorenter
    //   10: iload 4
    //   12: istore_3
    //   13: aload_1
    //   14: ifnull +15 -> 29
    //   17: aload_1
    //   18: invokevirtual 79	java/util/ArrayList:size	()I
    //   21: istore_3
    //   22: iload_3
    //   23: ifne +10 -> 33
    //   26: iload 4
    //   28: istore_3
    //   29: aload_0
    //   30: monitorexit
    //   31: iload_3
    //   32: ireturn
    //   33: aconst_null
    //   34: astore 8
    //   36: aconst_null
    //   37: astore 7
    //   39: iload 5
    //   41: istore_3
    //   42: aload_0
    //   43: invokevirtual 129	com/baidu/mobstat/x:a	()Lcom/baidu/mobstat/w;
    //   46: astore 9
    //   48: iload 5
    //   50: istore_3
    //   51: aload 9
    //   53: astore 7
    //   55: aload 9
    //   57: astore 8
    //   59: aload 9
    //   61: invokevirtual 133	com/baidu/mobstat/w:a	()Z
    //   64: istore 6
    //   66: iload 6
    //   68: ifne +27 -> 95
    //   71: iload 4
    //   73: istore_3
    //   74: aload 9
    //   76: ifnull -47 -> 29
    //   79: aload 9
    //   81: invokevirtual 138	com/baidu/mobstat/w:close	()V
    //   84: iload 4
    //   86: istore_3
    //   87: goto -58 -> 29
    //   90: astore_1
    //   91: aload_0
    //   92: monitorexit
    //   93: aload_1
    //   94: athrow
    //   95: iload 5
    //   97: istore_3
    //   98: aload 9
    //   100: astore 7
    //   102: aload 9
    //   104: astore 8
    //   106: aload_1
    //   107: invokevirtual 79	java/util/ArrayList:size	()I
    //   110: istore 5
    //   112: iconst_0
    //   113: istore 4
    //   115: iload 4
    //   117: iload 5
    //   119: if_icmpge +54 -> 173
    //   122: iload_2
    //   123: istore_3
    //   124: aload 9
    //   126: astore 7
    //   128: aload 9
    //   130: astore 8
    //   132: aload 9
    //   134: aload_1
    //   135: iload 4
    //   137: invokevirtual 83	java/util/ArrayList:get	(I)Ljava/lang/Object;
    //   140: checkcast 116	java/lang/Long
    //   143: invokevirtual 157	java/lang/Long:longValue	()J
    //   146: invokevirtual 160	com/baidu/mobstat/w:b	(J)Z
    //   149: istore 6
    //   151: iload 6
    //   153: ifne +77 -> 230
    //   156: iload_2
    //   157: istore_3
    //   158: aload 9
    //   160: ifnull -131 -> 29
    //   163: aload 9
    //   165: invokevirtual 138	com/baidu/mobstat/w:close	()V
    //   168: iload_2
    //   169: istore_3
    //   170: goto -141 -> 29
    //   173: aload 9
    //   175: ifnull +52 -> 227
    //   178: aload 9
    //   180: invokevirtual 138	com/baidu/mobstat/w:close	()V
    //   183: iload_2
    //   184: istore_3
    //   185: goto -156 -> 29
    //   188: astore_1
    //   189: aload 7
    //   191: astore 8
    //   193: aload_1
    //   194: invokestatic 143	com/baidu/mobstat/bb:b	(Ljava/lang/Throwable;)V
    //   197: iload_3
    //   198: istore_2
    //   199: aload 7
    //   201: ifnull -18 -> 183
    //   204: aload 7
    //   206: invokevirtual 138	com/baidu/mobstat/w:close	()V
    //   209: iload_3
    //   210: istore_2
    //   211: goto -28 -> 183
    //   214: astore_1
    //   215: aload 8
    //   217: ifnull +8 -> 225
    //   220: aload 8
    //   222: invokevirtual 138	com/baidu/mobstat/w:close	()V
    //   225: aload_1
    //   226: athrow
    //   227: goto -44 -> 183
    //   230: iload 4
    //   232: iconst_1
    //   233: iadd
    //   234: istore 4
    //   236: iload_2
    //   237: iconst_1
    //   238: iadd
    //   239: istore_2
    //   240: goto -125 -> 115
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	243	0	this	x
    //   0	243	1	paramArrayList	ArrayList<Long>
    //   1	239	2	i	int
    //   12	198	3	j	int
    //   6	229	4	k	int
    //   3	117	5	m	int
    //   64	88	6	bool	boolean
    //   37	168	7	localObject1	Object
    //   34	187	8	localObject2	Object
    //   46	133	9	localw	w
    // Exception table:
    //   from	to	target	type
    //   17	22	90	finally
    //   79	84	90	finally
    //   163	168	90	finally
    //   178	183	90	finally
    //   204	209	90	finally
    //   220	225	90	finally
    //   225	227	90	finally
    //   42	48	188	java/lang/Exception
    //   59	66	188	java/lang/Exception
    //   106	112	188	java/lang/Exception
    //   132	151	188	java/lang/Exception
    //   42	48	214	finally
    //   59	66	214	finally
    //   106	112	214	finally
    //   132	151	214	finally
    //   193	197	214	finally
  }
  
  public long a(long paramLong, String paramString)
  {
    l = -1L;
    localObject2 = null;
    localObject1 = null;
    for (;;)
    {
      try
      {
        localw = a();
        localObject1 = localw;
        localObject2 = localw;
        boolean bool = localw.a();
        if (!bool)
        {
          paramLong = l;
          if (localw == null) {}
        }
      }
      catch (Exception paramString)
      {
        w localw;
        localObject2 = localObject1;
        bb.b(paramString);
        paramLong = l;
        if (localObject1 == null) {
          continue;
        }
        ((w)localObject1).close();
        paramLong = l;
        continue;
      }
      finally
      {
        if (localObject2 == null) {
          continue;
        }
        ((w)localObject2).close();
      }
      try
      {
        localw.close();
        paramLong = l;
        return paramLong;
      }
      finally {}
      localObject1 = localw;
      localObject2 = localw;
      paramLong = localw.a(String.valueOf(paramLong), paramString);
      l = paramLong;
      paramLong = l;
      if (localw != null)
      {
        localw.close();
        paramLong = l;
      }
    }
  }
  
  public abstract w a();
  
  public ArrayList<v> a(int paramInt1, int paramInt2)
  {
    for (;;)
    {
      w localw;
      boolean bool;
      try
      {
        localArrayList1 = new ArrayList();
        localObject4 = null;
        localObject1 = null;
      }
      finally {}
      try
      {
        localw = a();
        localObject1 = localw;
        localObject4 = localw;
        bool = localw.a();
        if (bool) {
          continue;
        }
        localObject4 = localArrayList1;
        if (localw != null)
        {
          localw.close();
          localObject4 = localArrayList1;
        }
      }
      catch (Exception localException)
      {
        localObject4 = localObject2;
        bb.b(localException);
        localObject4 = localArrayList1;
        if (localObject2 == null) {
          continue;
        }
        ((w)localObject2).close();
        localObject4 = localArrayList1;
        continue;
      }
      finally
      {
        if (localObject4 == null) {
          break label157;
        }
        ((w)localObject4).close();
      }
      return (ArrayList<v>)localObject4;
      Object localObject1 = localw;
      localObject4 = localw;
      ArrayList localArrayList2 = localw.a(paramInt1, paramInt2);
      localObject1 = localArrayList2;
      localObject4 = localObject1;
      if (localw != null)
      {
        localw.close();
        localObject4 = localObject1;
      }
    }
  }
  
  public List<String> a(int paramInt)
  {
    try
    {
      ArrayList localArrayList = new ArrayList();
      Object localObject1 = new ArrayList();
      Object localObject3 = new ArrayList();
      a(localArrayList, (ArrayList)localObject1, (ArrayList)localObject3, paramInt, 500);
      if ((((ArrayList)localObject3).size() != 0) && (localArrayList.size() == 0) && (((ArrayList)localObject1).size() == 0))
      {
        localObject3 = (v)((ArrayList)localObject3).get(0);
        long l = ((v)localObject3).a();
        localObject3 = ((v)localObject3).b();
        ((ArrayList)localObject1).add(Long.valueOf(l));
        localArrayList.add(localObject3);
      }
      paramInt = a((ArrayList)localObject1);
      localObject1 = localArrayList;
      if (paramInt != localArrayList.size()) {
        localObject1 = localArrayList.subList(0, paramInt);
      }
      return (List<String>)localObject1;
    }
    finally {}
  }
  
  /* Error */
  public boolean b()
  {
    // Byte code:
    //   0: aload_0
    //   1: monitorenter
    //   2: aload_0
    //   3: invokespecial 71	com/baidu/mobstat/x:c	()I
    //   6: istore_1
    //   7: iload_1
    //   8: ifne +9 -> 17
    //   11: iconst_1
    //   12: istore_2
    //   13: aload_0
    //   14: monitorexit
    //   15: iload_2
    //   16: ireturn
    //   17: iconst_0
    //   18: istore_2
    //   19: goto -6 -> 13
    //   22: astore_3
    //   23: aload_0
    //   24: monitorexit
    //   25: aload_3
    //   26: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	27	0	this	x
    //   6	2	1	i	int
    //   12	7	2	bool	boolean
    //   22	4	3	localObject	Object
    // Exception table:
    //   from	to	target	type
    //   2	7	22	finally
  }
  
  /* Error */
  public boolean b(int paramInt)
  {
    // Byte code:
    //   0: aload_0
    //   1: monitorenter
    //   2: aload_0
    //   3: invokespecial 71	com/baidu/mobstat/x:c	()I
    //   6: istore_2
    //   7: iload_2
    //   8: iload_1
    //   9: if_icmplt +9 -> 18
    //   12: iconst_1
    //   13: istore_3
    //   14: aload_0
    //   15: monitorexit
    //   16: iload_3
    //   17: ireturn
    //   18: iconst_0
    //   19: istore_3
    //   20: goto -6 -> 14
    //   23: astore 4
    //   25: aload_0
    //   26: monitorexit
    //   27: aload 4
    //   29: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	30	0	this	x
    //   0	30	1	paramInt	int
    //   6	4	2	i	int
    //   13	7	3	bool	boolean
    //   23	5	4	localObject	Object
    // Exception table:
    //   from	to	target	type
    //   2	7	23	finally
  }
  
  public String toString()
  {
    return String.valueOf(f);
  }
}

/* Location:
 * Qualified Name:     com.baidu.mobstat.x
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */