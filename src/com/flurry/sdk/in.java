package com.flurry.sdk;

import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.concurrent.atomic.AtomicInteger;

public class in
{
  private static final String a = io.class.getName();
  private long b;
  private long c;
  private long d;
  private ir e;
  private boolean f;
  private int g;
  private String h;
  private int i;
  private AtomicInteger j;
  private Map<Long, ij> k;
  
  public in(String paramString, boolean paramBoolean, long paramLong1, long paramLong2, ir paramir, Map<Long, ij> paramMap)
  {
    h = paramString;
    f = paramBoolean;
    b = paramLong1;
    d = paramLong2;
    e = paramir;
    c = System.currentTimeMillis();
    k = paramMap;
    if (paramMap != null)
    {
      paramString = paramMap.keySet().iterator();
      while (paramString.hasNext()) {
        ((ij)paramMap.get(paramString.next())).a(this);
      }
    }
    for (i = paramMap.size();; i = 0)
    {
      j = new AtomicInteger(0);
      return;
    }
  }
  
  public int a()
  {
    return g;
  }
  
  public void a(int paramInt)
  {
    g = paramInt;
  }
  
  public long b()
  {
    return b;
  }
  
  public String c()
  {
    return h;
  }
  
  public List<ij> d()
  {
    if (k != null) {
      return new ArrayList(k.values());
    }
    return Collections.emptyList();
  }
  
  public Map<Long, ij> e()
  {
    return k;
  }
  
  /* Error */
  public boolean f()
  {
    // Byte code:
    //   0: aload_0
    //   1: monitorenter
    //   2: aload_0
    //   3: getfield 104	com/flurry/sdk/in:j	Ljava/util/concurrent/atomic/AtomicInteger;
    //   6: invokevirtual 140	java/util/concurrent/atomic/AtomicInteger:intValue	()I
    //   9: istore_1
    //   10: aload_0
    //   11: getfield 97	com/flurry/sdk/in:i	I
    //   14: istore_2
    //   15: iload_1
    //   16: iload_2
    //   17: if_icmplt +9 -> 26
    //   20: iconst_1
    //   21: istore_3
    //   22: aload_0
    //   23: monitorexit
    //   24: iload_3
    //   25: ireturn
    //   26: iconst_0
    //   27: istore_3
    //   28: goto -6 -> 22
    //   31: astore 4
    //   33: aload_0
    //   34: monitorexit
    //   35: aload 4
    //   37: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	38	0	this	in
    //   9	9	1	m	int
    //   14	4	2	n	int
    //   21	7	3	bool	boolean
    //   31	5	4	localObject	Object
    // Exception table:
    //   from	to	target	type
    //   2	15	31	finally
  }
  
  public void g()
  {
    try
    {
      j.incrementAndGet();
      return;
    }
    finally
    {
      localObject = finally;
      throw ((Throwable)localObject);
    }
  }
  
  /* Error */
  public byte[] h()
  {
    // Byte code:
    //   0: aconst_null
    //   1: astore_1
    //   2: new 148	java/io/ByteArrayOutputStream
    //   5: dup
    //   6: invokespecial 149	java/io/ByteArrayOutputStream:<init>	()V
    //   9: astore_3
    //   10: new 151	java/io/DataOutputStream
    //   13: dup
    //   14: aload_3
    //   15: invokespecial 154	java/io/DataOutputStream:<init>	(Ljava/io/OutputStream;)V
    //   18: astore_2
    //   19: aload_2
    //   20: aload_0
    //   21: getfield 50	com/flurry/sdk/in:e	Lcom/flurry/sdk/ir;
    //   24: invokevirtual 158	com/flurry/sdk/ir:a	()I
    //   27: invokevirtual 161	java/io/DataOutputStream:writeShort	(I)V
    //   30: aload_2
    //   31: aload_0
    //   32: getfield 46	com/flurry/sdk/in:b	J
    //   35: invokevirtual 165	java/io/DataOutputStream:writeLong	(J)V
    //   38: aload_2
    //   39: aload_0
    //   40: getfield 48	com/flurry/sdk/in:d	J
    //   43: invokevirtual 165	java/io/DataOutputStream:writeLong	(J)V
    //   46: aload_2
    //   47: aload_0
    //   48: getfield 44	com/flurry/sdk/in:f	Z
    //   51: invokevirtual 169	java/io/DataOutputStream:writeBoolean	(Z)V
    //   54: aload_0
    //   55: getfield 44	com/flurry/sdk/in:f	Z
    //   58: ifeq +19 -> 77
    //   61: aload_2
    //   62: aload_0
    //   63: getfield 109	com/flurry/sdk/in:g	I
    //   66: invokevirtual 161	java/io/DataOutputStream:writeShort	(I)V
    //   69: aload_2
    //   70: aload_0
    //   71: getfield 42	com/flurry/sdk/in:h	Ljava/lang/String;
    //   74: invokevirtual 173	java/io/DataOutputStream:writeUTF	(Ljava/lang/String;)V
    //   77: aload_2
    //   78: aload_0
    //   79: getfield 60	com/flurry/sdk/in:k	Ljava/util/Map;
    //   82: invokeinterface 95 1 0
    //   87: invokevirtual 161	java/io/DataOutputStream:writeShort	(I)V
    //   90: aload_0
    //   91: getfield 60	com/flurry/sdk/in:k	Ljava/util/Map;
    //   94: ifnull +281 -> 375
    //   97: aload_0
    //   98: getfield 60	com/flurry/sdk/in:k	Ljava/util/Map;
    //   101: invokeinterface 176 1 0
    //   106: invokeinterface 72 1 0
    //   111: astore_1
    //   112: aload_1
    //   113: invokeinterface 78 1 0
    //   118: ifeq +257 -> 375
    //   121: aload_1
    //   122: invokeinterface 82 1 0
    //   127: checkcast 178	java/util/Map$Entry
    //   130: astore 4
    //   132: aload 4
    //   134: invokeinterface 181 1 0
    //   139: checkcast 88	com/flurry/sdk/ij
    //   142: astore 5
    //   144: aload_2
    //   145: aload 4
    //   147: invokeinterface 184 1 0
    //   152: checkcast 186	java/lang/Long
    //   155: invokevirtual 189	java/lang/Long:longValue	()J
    //   158: invokevirtual 165	java/io/DataOutputStream:writeLong	(J)V
    //   161: aload_2
    //   162: aload 5
    //   164: invokevirtual 192	com/flurry/sdk/ij:t	()Ljava/lang/String;
    //   167: invokevirtual 173	java/io/DataOutputStream:writeUTF	(Ljava/lang/String;)V
    //   170: aload_2
    //   171: aload 5
    //   173: getfield 195	com/flurry/sdk/ij:a	Ljava/util/ArrayList;
    //   176: invokevirtual 196	java/util/ArrayList:size	()I
    //   179: invokevirtual 161	java/io/DataOutputStream:writeShort	(I)V
    //   182: aload 5
    //   184: getfield 195	com/flurry/sdk/ij:a	Ljava/util/ArrayList;
    //   187: invokevirtual 197	java/util/ArrayList:iterator	()Ljava/util/Iterator;
    //   190: astore 4
    //   192: aload 4
    //   194: invokeinterface 78 1 0
    //   199: ifeq -87 -> 112
    //   202: aload 4
    //   204: invokeinterface 82 1 0
    //   209: checkcast 199	com/flurry/sdk/ik
    //   212: astore 5
    //   214: aload_2
    //   215: aload 5
    //   217: getfield 201	com/flurry/sdk/ik:a	I
    //   220: invokevirtual 161	java/io/DataOutputStream:writeShort	(I)V
    //   223: aload_2
    //   224: aload 5
    //   226: getfield 202	com/flurry/sdk/ik:b	J
    //   229: invokevirtual 165	java/io/DataOutputStream:writeLong	(J)V
    //   232: aload_2
    //   233: aload 5
    //   235: getfield 203	com/flurry/sdk/ik:c	J
    //   238: invokevirtual 165	java/io/DataOutputStream:writeLong	(J)V
    //   241: aload_2
    //   242: aload 5
    //   244: getfield 205	com/flurry/sdk/ik:d	Z
    //   247: invokevirtual 169	java/io/DataOutputStream:writeBoolean	(Z)V
    //   250: aload_2
    //   251: aload 5
    //   253: getfield 207	com/flurry/sdk/ik:e	I
    //   256: invokevirtual 161	java/io/DataOutputStream:writeShort	(I)V
    //   259: aload_2
    //   260: aload 5
    //   262: getfield 210	com/flurry/sdk/ik:f	Lcom/flurry/sdk/il;
    //   265: invokevirtual 213	com/flurry/sdk/il:a	()I
    //   268: invokevirtual 161	java/io/DataOutputStream:writeShort	(I)V
    //   271: aload 5
    //   273: getfield 207	com/flurry/sdk/ik:e	I
    //   276: sipush 200
    //   279: if_icmplt +14 -> 293
    //   282: aload 5
    //   284: getfield 207	com/flurry/sdk/ik:e	I
    //   287: sipush 400
    //   290: if_icmplt +34 -> 324
    //   293: aload 5
    //   295: getfield 215	com/flurry/sdk/ik:g	Ljava/lang/String;
    //   298: ifnull +26 -> 324
    //   301: aload 5
    //   303: getfield 215	com/flurry/sdk/ik:g	Ljava/lang/String;
    //   306: invokevirtual 220	java/lang/String:getBytes	()[B
    //   309: astore 6
    //   311: aload_2
    //   312: aload 6
    //   314: arraylength
    //   315: invokevirtual 161	java/io/DataOutputStream:writeShort	(I)V
    //   318: aload_2
    //   319: aload 6
    //   321: invokevirtual 224	java/io/DataOutputStream:write	([B)V
    //   324: aload_2
    //   325: aload 5
    //   327: getfield 226	com/flurry/sdk/ik:h	I
    //   330: invokevirtual 161	java/io/DataOutputStream:writeShort	(I)V
    //   333: aload_2
    //   334: aload 5
    //   336: getfield 228	com/flurry/sdk/ik:k	J
    //   339: l2i
    //   340: invokevirtual 231	java/io/DataOutputStream:writeInt	(I)V
    //   343: goto -151 -> 192
    //   346: astore_3
    //   347: aload_2
    //   348: astore_1
    //   349: aload_3
    //   350: astore_2
    //   351: bipush 6
    //   353: getstatic 35	com/flurry/sdk/in:a	Ljava/lang/String;
    //   356: ldc -23
    //   358: aload_2
    //   359: invokestatic 238	com/flurry/sdk/kg:a	(ILjava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    //   362: aload_2
    //   363: athrow
    //   364: astore_3
    //   365: aload_1
    //   366: astore_2
    //   367: aload_3
    //   368: astore_1
    //   369: aload_2
    //   370: invokestatic 243	com/flurry/sdk/lt:a	(Ljava/io/Closeable;)V
    //   373: aload_1
    //   374: athrow
    //   375: aload_3
    //   376: invokevirtual 246	java/io/ByteArrayOutputStream:toByteArray	()[B
    //   379: astore_1
    //   380: aload_2
    //   381: invokestatic 243	com/flurry/sdk/lt:a	(Ljava/io/Closeable;)V
    //   384: aload_1
    //   385: areturn
    //   386: astore_1
    //   387: aconst_null
    //   388: astore_2
    //   389: goto -20 -> 369
    //   392: astore_1
    //   393: goto -24 -> 369
    //   396: astore_2
    //   397: goto -46 -> 351
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	400	0	this	in
    //   1	384	1	localObject1	Object
    //   386	1	1	localObject2	Object
    //   392	1	1	localObject3	Object
    //   18	371	2	localObject4	Object
    //   396	1	2	localIOException1	java.io.IOException
    //   9	6	3	localByteArrayOutputStream	java.io.ByteArrayOutputStream
    //   346	4	3	localIOException2	java.io.IOException
    //   364	12	3	localObject5	Object
    //   130	73	4	localObject6	Object
    //   142	193	5	localObject7	Object
    //   309	11	6	arrayOfByte	byte[]
    // Exception table:
    //   from	to	target	type
    //   19	77	346	java/io/IOException
    //   77	112	346	java/io/IOException
    //   112	192	346	java/io/IOException
    //   192	293	346	java/io/IOException
    //   293	324	346	java/io/IOException
    //   324	343	346	java/io/IOException
    //   375	380	346	java/io/IOException
    //   351	364	364	finally
    //   2	19	386	finally
    //   19	77	392	finally
    //   77	112	392	finally
    //   112	192	392	finally
    //   192	293	392	finally
    //   293	324	392	finally
    //   324	343	392	finally
    //   375	380	392	finally
    //   2	19	396	java/io/IOException
  }
}

/* Location:
 * Qualified Name:     com.flurry.sdk.in
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */