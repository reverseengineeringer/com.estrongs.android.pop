package com.estrongs.android.b.a;

import android.text.TextUtils;
import com.estrongs.android.b.a.a.b;
import com.estrongs.android.pop.app.a.a.e;
import com.estrongs.android.pop.app.unlock.s;
import com.estrongs.android.util.ap;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;

public class f
{
  static f d = new f();
  h a = null;
  k b = null;
  HashMap<String, o> c = new HashMap();
  
  f()
  {
    a(new com.estrongs.android.b.a.b.d());
    a(new com.estrongs.android.b.a.b.a.a());
    a(new com.estrongs.android.b.a.b.a());
    a(new com.estrongs.android.b.a.b.g());
    a(new e());
  }
  
  public static f a()
  {
    return d;
  }
  
  private void a(a parama, List<a> paramList, HashSet<String> paramHashSet)
  {
    i locali = (i)a.a.get(a);
    if (locali != null) {
      locali.a(b, paramList, paramHashSet);
    }
  }
  
  private void a(List<a> paramList)
  {
    com.estrongs.android.k.d locald = s.a().c();
    if (locald != null) {
      paramList.add(new com.estrongs.android.b.a.a.g("junk", locald));
    }
  }
  
  /* Error */
  public e a(String paramString1, String paramString2)
  {
    // Byte code:
    //   0: aload_0
    //   1: getfield 26	com/estrongs/android/b/a/f:b	Lcom/estrongs/android/b/a/k;
    //   4: ifnonnull +46 -> 50
    //   7: aload_0
    //   8: monitorenter
    //   9: new 99	com/estrongs/android/b/a/n
    //   12: dup
    //   13: invokespecial 100	com/estrongs/android/b/a/n:<init>	()V
    //   16: astore 4
    //   18: aload 4
    //   20: invokevirtual 102	com/estrongs/android/b/a/n:a	()V
    //   23: aload_0
    //   24: getfield 26	com/estrongs/android/b/a/f:b	Lcom/estrongs/android/b/a/k;
    //   27: ifnonnull +21 -> 48
    //   30: aload_0
    //   31: aload 4
    //   33: getfield 103	com/estrongs/android/b/a/n:a	Lcom/estrongs/android/b/a/h;
    //   36: putfield 24	com/estrongs/android/b/a/f:a	Lcom/estrongs/android/b/a/h;
    //   39: aload_0
    //   40: aload 4
    //   42: getfield 104	com/estrongs/android/b/a/n:b	Lcom/estrongs/android/b/a/k;
    //   45: putfield 26	com/estrongs/android/b/a/f:b	Lcom/estrongs/android/b/a/k;
    //   48: aload_0
    //   49: monitorexit
    //   50: aload_0
    //   51: monitorenter
    //   52: aload_0
    //   53: getfield 26	com/estrongs/android/b/a/f:b	Lcom/estrongs/android/b/a/k;
    //   56: aload_1
    //   57: invokevirtual 109	com/estrongs/android/b/a/k:a	(Ljava/lang/String;)Lcom/estrongs/android/b/a/j;
    //   60: astore_1
    //   61: aload_1
    //   62: ifnonnull +354 -> 416
    //   65: aload_2
    //   66: ifnonnull +12 -> 78
    //   69: aload_0
    //   70: monitorexit
    //   71: aconst_null
    //   72: areturn
    //   73: astore_1
    //   74: aload_0
    //   75: monitorexit
    //   76: aload_1
    //   77: athrow
    //   78: aload_0
    //   79: getfield 26	com/estrongs/android/b/a/f:b	Lcom/estrongs/android/b/a/k;
    //   82: aload_2
    //   83: invokevirtual 109	com/estrongs/android/b/a/k:a	(Ljava/lang/String;)Lcom/estrongs/android/b/a/j;
    //   86: astore_2
    //   87: aload_2
    //   88: ifnonnull +7 -> 95
    //   91: aload_0
    //   92: monitorexit
    //   93: aconst_null
    //   94: areturn
    //   95: new 111	java/util/ArrayList
    //   98: dup
    //   99: aload_2
    //   100: getfield 116	com/estrongs/android/b/a/j:b	Ljava/util/List;
    //   103: invokeinterface 120 1 0
    //   108: invokespecial 123	java/util/ArrayList:<init>	(I)V
    //   111: astore 4
    //   113: aload_2
    //   114: getfield 116	com/estrongs/android/b/a/j:b	Ljava/util/List;
    //   117: invokeinterface 127 1 0
    //   122: astore 5
    //   124: aload 5
    //   126: invokeinterface 133 1 0
    //   131: ifeq +69 -> 200
    //   134: aload 5
    //   136: invokeinterface 137 1 0
    //   141: checkcast 139	[Lcom/estrongs/android/b/a/a;
    //   144: astore_1
    //   145: aload_1
    //   146: arraylength
    //   147: iconst_1
    //   148: if_icmpne +28 -> 176
    //   151: aload_1
    //   152: iconst_0
    //   153: aaload
    //   154: astore_1
    //   155: aload_1
    //   156: ifnull -32 -> 124
    //   159: aload 4
    //   161: aload_1
    //   162: invokeinterface 95 2 0
    //   167: pop
    //   168: goto -44 -> 124
    //   171: astore_1
    //   172: aload_0
    //   173: monitorexit
    //   174: aload_1
    //   175: athrow
    //   176: aload_1
    //   177: arraylength
    //   178: iconst_1
    //   179: if_icmple +232 -> 411
    //   182: aload_1
    //   183: new 141	java/util/Random
    //   186: dup
    //   187: invokespecial 142	java/util/Random:<init>	()V
    //   190: aload_1
    //   191: arraylength
    //   192: invokevirtual 146	java/util/Random:nextInt	(I)I
    //   195: aaload
    //   196: astore_1
    //   197: goto -42 -> 155
    //   200: aload_2
    //   201: getfield 149	com/estrongs/android/b/a/j:c	Z
    //   204: ifeq +17 -> 221
    //   207: new 151	com/estrongs/android/b/a/e
    //   210: dup
    //   211: aload 4
    //   213: invokespecial 153	com/estrongs/android/b/a/e:<init>	(Ljava/util/List;)V
    //   216: astore_1
    //   217: aload_0
    //   218: monitorexit
    //   219: aload_1
    //   220: areturn
    //   221: new 155	java/util/HashSet
    //   224: dup
    //   225: invokespecial 156	java/util/HashSet:<init>	()V
    //   228: astore_1
    //   229: aload 4
    //   231: invokeinterface 127 1 0
    //   236: astore_2
    //   237: aload_2
    //   238: invokeinterface 133 1 0
    //   243: ifeq +35 -> 278
    //   246: aload_2
    //   247: invokeinterface 137 1 0
    //   252: checkcast 57	com/estrongs/android/b/a/a
    //   255: astore 5
    //   257: aload 5
    //   259: getfield 68	com/estrongs/android/b/a/a:b	Ljava/lang/String;
    //   262: ifnull -25 -> 237
    //   265: aload_1
    //   266: aload 5
    //   268: invokevirtual 160	com/estrongs/android/b/a/a:toString	()Ljava/lang/String;
    //   271: invokevirtual 161	java/util/HashSet:add	(Ljava/lang/Object;)Z
    //   274: pop
    //   275: goto -38 -> 237
    //   278: new 111	java/util/ArrayList
    //   281: dup
    //   282: aload 4
    //   284: invokeinterface 120 1 0
    //   289: invokespecial 123	java/util/ArrayList:<init>	(I)V
    //   292: astore_2
    //   293: aload 4
    //   295: invokeinterface 127 1 0
    //   300: astore 4
    //   302: aload 4
    //   304: invokeinterface 133 1 0
    //   309: ifeq +22 -> 331
    //   312: aload_0
    //   313: aload 4
    //   315: invokeinterface 137 1 0
    //   320: checkcast 57	com/estrongs/android/b/a/a
    //   323: aload_2
    //   324: aload_1
    //   325: invokespecial 163	com/estrongs/android/b/a/f:a	(Lcom/estrongs/android/b/a/a;Ljava/util/List;Ljava/util/HashSet;)V
    //   328: goto -26 -> 302
    //   331: getstatic 166	com/estrongs/android/pop/app/a/a:b	Ljava/lang/String;
    //   334: invokestatic 169	com/estrongs/android/pop/app/a/a:a	(Ljava/lang/String;)Z
    //   337: ifeq +56 -> 393
    //   340: aload_2
    //   341: invokeinterface 127 1 0
    //   346: astore_1
    //   347: aload_1
    //   348: invokeinterface 133 1 0
    //   353: ifeq +53 -> 406
    //   356: aload_1
    //   357: invokeinterface 137 1 0
    //   362: checkcast 57	com/estrongs/android/b/a/a
    //   365: invokevirtual 172	com/estrongs/android/b/a/a:l	()Ljava/lang/String;
    //   368: ldc -82
    //   370: if_acmpne -23 -> 347
    //   373: iconst_1
    //   374: istore_3
    //   375: aload_2
    //   376: iload_3
    //   377: new 57	com/estrongs/android/b/a/a
    //   380: dup
    //   381: ldc -80
    //   383: ldc -80
    //   385: invokespecial 179	com/estrongs/android/b/a/a:<init>	(Ljava/lang/String;Ljava/lang/String;)V
    //   388: invokeinterface 182 3 0
    //   393: new 151	com/estrongs/android/b/a/e
    //   396: dup
    //   397: aload_2
    //   398: invokespecial 153	com/estrongs/android/b/a/e:<init>	(Ljava/util/List;)V
    //   401: astore_1
    //   402: aload_0
    //   403: monitorexit
    //   404: aload_1
    //   405: areturn
    //   406: iconst_0
    //   407: istore_3
    //   408: goto -33 -> 375
    //   411: aconst_null
    //   412: astore_1
    //   413: goto -258 -> 155
    //   416: aload_1
    //   417: astore_2
    //   418: goto -331 -> 87
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	421	0	this	f
    //   0	421	1	paramString1	String
    //   0	421	2	paramString2	String
    //   374	34	3	i	int
    //   16	298	4	localObject1	Object
    //   122	145	5	localObject2	Object
    // Exception table:
    //   from	to	target	type
    //   9	48	73	finally
    //   48	50	73	finally
    //   74	76	73	finally
    //   52	61	171	finally
    //   69	71	171	finally
    //   78	87	171	finally
    //   91	93	171	finally
    //   95	124	171	finally
    //   124	151	171	finally
    //   159	168	171	finally
    //   172	174	171	finally
    //   176	197	171	finally
    //   200	219	171	finally
    //   221	237	171	finally
    //   237	275	171	finally
    //   278	302	171	finally
    //   302	328	171	finally
    //   331	347	171	finally
    //   347	373	171	finally
    //   375	393	171	finally
    //   393	404	171	finally
  }
  
  public o a(String paramString)
  {
    return (o)c.get(paramString);
  }
  
  public void a(o paramo)
  {
    c.put(paramo.a(), paramo);
  }
  
  public List<a> b(String paramString1, String paramString2)
  {
    ArrayList localArrayList = new ArrayList();
    a locala;
    if (b(paramString1))
    {
      locala = new a("pandect", "pandect");
      locala.a(paramString1);
      if (!c(paramString1))
      {
        locala.a(6);
        locala.d(paramString2);
        localArrayList.add(locala);
      }
    }
    else
    {
      if ((paramString1 != null) && (!ap.bl(paramString1))) {
        break label345;
      }
      a(localArrayList);
      localArrayList.add(new b("largefile", 2131231629, -1, -1, true, false, paramString1));
      localArrayList.add(new b("redundancy", 2131232259, 2131230952, 2130837753, false, false, paramString1));
      localArrayList.add(new b("duplicate", 2131231402, 2131230929, 2130837750, false, false, paramString1));
      localArrayList.add(new b("newcreate", 2131231842, -1, -1, true, false, paramString1));
      localArrayList.add(new com.estrongs.android.b.a.a.d("junk", false));
      localArrayList.add(new b("catalog", 2131231128, 2131230923, 2130837746, true, false, paramString1));
      if (b(paramString1)) {
        localArrayList.add(new b("appcatalog", 2131231126, 2131230925, -1, true, false, paramString1));
      }
      label261:
      if (com.estrongs.android.pop.app.a.a.a(com.estrongs.android.pop.app.a.a.b))
      {
        paramString1 = new a("charge_boost", "charge_boost");
        paramString1.a(9);
        paramString2 = localArrayList.iterator();
        do
        {
          if (!paramString2.hasNext()) {
            break;
          }
        } while (((a)paramString2.next()).l() != "ad");
      }
    }
    for (int i = 2;; i = 1)
    {
      localArrayList.add(i, paramString1);
      return localArrayList;
      locala.a(3);
      break;
      label345:
      if (ap.ai(paramString1))
      {
        a(localArrayList);
        localArrayList.add(new com.estrongs.android.b.a.a.a("sensitive_permission", 2131231029, paramString2));
        localArrayList.add(new com.estrongs.android.b.a.a.a("cache", 2131230991, paramString2));
        i = 2131231126;
        if (!TextUtils.isEmpty(paramString2)) {
          i = 2131231127;
        }
        localArrayList.add(new com.estrongs.android.b.a.a.a("appcatalog", i, paramString2));
        localArrayList.add(new com.estrongs.android.b.a.a.a("internal_storage", 2131231021, paramString2));
        break label261;
      }
      if (ap.V(paramString1))
      {
        a(localArrayList);
        localArrayList.add(new b("redundancy", 2131232259, 2131230953, 2130837753, false, false, paramString1));
        localArrayList.add(new b("duplicate", 2131231402, 2131230929, 2130837750, false, false, paramString1));
        localArrayList.add(new b("newcreate", 2131231842, -1, -1, true, false, paramString1));
        localArrayList.add(new b("allfile", 2131231128, 2131230923, 2130837746, true, false, paramString1));
        localArrayList.add(new b("apprelationfile", 2131231126, 2131230925, -1, true, false, paramString1));
        break label261;
      }
      if (ap.ae(paramString1))
      {
        a(localArrayList);
        localArrayList.add(new b("redundancy", 2131232259, 2131230953, 2130837753, false, false, paramString1));
        localArrayList.add(new b("duplicate", 2131231402, 2131230929, 2130837750, false, false, paramString1));
        localArrayList.add(new b("newcreate", 2131231842, -1, -1, true, false, paramString1));
        localArrayList.add(new b("allfile", 2131231128, 2131230923, 2130837746, true, false, paramString1));
        localArrayList.add(new b("apprelationfile", 2131231126, 2131230925, -1, true, false, paramString1));
        break label261;
      }
      if (ap.Z(paramString1))
      {
        a(localArrayList);
        localArrayList.add(new b("redundancy", 2131232259, 2131230953, 2130837753, false, false, paramString1));
        localArrayList.add(new b("duplicate", 2131231402, 2131230929, 2130837750, false, false, paramString1));
        localArrayList.add(new b("newcreate", 2131231842, -1, -1, true, false, paramString1));
        localArrayList.add(new b("allfile", 2131231128, 2131230923, 2130837746, true, true, paramString1));
        localArrayList.add(new b("apprelationfile", 2131231126, 2131230925, -1, true, false, paramString1));
        break label261;
      }
      if ((!ap.aY(paramString1)) && (!ap.X(paramString1))) {
        break label261;
      }
      a(localArrayList);
      localArrayList.add(new b("redundancy", 2131232259, 2131230953, 2130837753, false, false, paramString1));
      localArrayList.add(new b("duplicate", 2131231402, 2131230929, 2130837750, false, false, paramString1));
      localArrayList.add(new b("newcreate", 2131231842, -1, -1, true, false, paramString1));
      localArrayList.add(new b("allfile", 2131231128, 2131230923, 2130837746, true, false, paramString1));
      localArrayList.add(new b("apprelationfile", 2131231126, 2131230925, -1, true, false, paramString1));
      localArrayList.add(new b("similar_image", 2131232350, -1, -1, true, false, paramString1));
      break label261;
    }
  }
  
  public void b()
  {
    new g(this).start();
  }
  
  public boolean b(String paramString)
  {
    return (ap.a().contains(paramString)) || (ap.ai(paramString)) || (ap.V(paramString)) || (ap.bp(paramString)) || (ap.ae(paramString)) || (ap.Z(paramString)) || (ap.aY(paramString)) || (ap.X(paramString));
  }
  
  public boolean c(String paramString)
  {
    return (ap.a().contains(paramString)) || (ap.bp(paramString));
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.b.a.f
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */