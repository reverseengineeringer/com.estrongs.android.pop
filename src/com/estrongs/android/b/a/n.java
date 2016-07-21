package com.estrongs.android.b.a;

import com.estrongs.android.b.a.a.c;
import com.estrongs.android.b.a.a.e;
import com.estrongs.android.b.a.a.f;
import java.io.File;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map.Entry;
import java.util.Set;
import org.json.JSONArray;
import org.json.JSONObject;

class n
{
  h a = new h();
  k b = new k();
  
  /* Error */
  private boolean g()
  {
    // Byte code:
    //   0: invokestatic 35	com/estrongs/android/pop/FexApplication:a	()Lcom/estrongs/android/pop/FexApplication;
    //   3: invokestatic 40	com/estrongs/android/pop/ad:a	(Landroid/content/Context;)Lcom/estrongs/android/pop/ad;
    //   6: invokevirtual 44	com/estrongs/android/pop/ad:bg	()J
    //   9: lstore_3
    //   10: ldc 46
    //   12: bipush 12
    //   14: invokestatic 51	com/estrongs/android/i/a:a	(Ljava/lang/String;I)I
    //   17: istore_1
    //   18: invokestatic 56	java/lang/System:currentTimeMillis	()J
    //   21: lload_3
    //   22: lsub
    //   23: iload_1
    //   24: ldc 57
    //   26: imul
    //   27: i2l
    //   28: lcmp
    //   29: ifge +9 -> 38
    //   32: iconst_0
    //   33: istore 6
    //   35: iload 6
    //   37: ireturn
    //   38: new 59	java/io/File
    //   41: dup
    //   42: new 61	java/lang/StringBuilder
    //   45: dup
    //   46: invokespecial 62	java/lang/StringBuilder:<init>	()V
    //   49: getstatic 67	com/estrongs/android/pop/a:b	Ljava/lang/String;
    //   52: invokevirtual 71	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   55: ldc 73
    //   57: invokevirtual 71	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   60: invokevirtual 77	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   63: invokespecial 80	java/io/File:<init>	(Ljava/lang/String;)V
    //   66: astore 9
    //   68: aload 9
    //   70: invokevirtual 83	java/io/File:exists	()Z
    //   73: ifeq +13 -> 86
    //   76: aload 9
    //   78: invokestatic 88	com/estrongs/fs/util/j:a	(Ljava/io/File;)Z
    //   81: ifne +5 -> 86
    //   84: iconst_0
    //   85: ireturn
    //   86: aload 9
    //   88: invokevirtual 91	java/io/File:mkdirs	()Z
    //   91: ifne +5 -> 96
    //   94: iconst_0
    //   95: ireturn
    //   96: aload_0
    //   97: invokevirtual 94	com/estrongs/android/b/a/n:f	()Z
    //   100: istore 6
    //   102: iload 6
    //   104: ifeq +360 -> 464
    //   107: aload_0
    //   108: getfield 17	com/estrongs/android/b/a/n:a	Lcom/estrongs/android/b/a/h;
    //   111: getfield 97	com/estrongs/android/b/a/h:a	Ljava/util/HashMap;
    //   114: invokevirtual 103	java/util/HashMap:entrySet	()Ljava/util/Set;
    //   117: invokeinterface 109 1 0
    //   122: astore 7
    //   124: aload 7
    //   126: invokeinterface 114 1 0
    //   131: ifeq +333 -> 464
    //   134: aload 7
    //   136: invokeinterface 118 1 0
    //   141: checkcast 120	java/util/Map$Entry
    //   144: invokeinterface 123 1 0
    //   149: checkcast 125	com/estrongs/android/b/a/i
    //   152: astore 8
    //   154: aload 8
    //   156: getfield 128	com/estrongs/android/b/a/i:b	Z
    //   159: ifeq -35 -> 124
    //   162: aload_0
    //   163: aload 8
    //   165: invokevirtual 131	com/estrongs/android/b/a/n:b	(Lcom/estrongs/android/b/a/i;)Z
    //   168: ifne -44 -> 124
    //   171: iconst_0
    //   172: istore 6
    //   174: iload 6
    //   176: istore 5
    //   178: iload 6
    //   180: ifeq +28 -> 208
    //   183: aload 9
    //   185: invokevirtual 135	java/io/File:list	()[Ljava/lang/String;
    //   188: astore 7
    //   190: aload 7
    //   192: ifnull +13 -> 205
    //   195: iload 6
    //   197: istore 5
    //   199: aload 7
    //   201: arraylength
    //   202: ifne +6 -> 208
    //   205: iconst_0
    //   206: istore 5
    //   208: iload 5
    //   210: ifeq +227 -> 437
    //   213: new 59	java/io/File
    //   216: dup
    //   217: new 61	java/lang/StringBuilder
    //   220: dup
    //   221: invokespecial 62	java/lang/StringBuilder:<init>	()V
    //   224: getstatic 67	com/estrongs/android/pop/a:b	Ljava/lang/String;
    //   227: invokevirtual 71	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   230: ldc -119
    //   232: invokevirtual 71	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   235: invokevirtual 77	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   238: invokespecial 80	java/io/File:<init>	(Ljava/lang/String;)V
    //   241: astore 10
    //   243: aload 10
    //   245: invokevirtual 141	java/io/File:listFiles	()[Ljava/io/File;
    //   248: astore 11
    //   250: iload 5
    //   252: istore 6
    //   254: aload 11
    //   256: ifnull +87 -> 343
    //   259: aload 11
    //   261: arraylength
    //   262: istore_2
    //   263: iconst_0
    //   264: istore_1
    //   265: iload 5
    //   267: istore 6
    //   269: iload_1
    //   270: iload_2
    //   271: if_icmpge +72 -> 343
    //   274: aload 11
    //   276: iload_1
    //   277: aaload
    //   278: astore 7
    //   280: new 59	java/io/File
    //   283: dup
    //   284: aload 9
    //   286: aload 7
    //   288: invokevirtual 144	java/io/File:getName	()Ljava/lang/String;
    //   291: invokespecial 147	java/io/File:<init>	(Ljava/io/File;Ljava/lang/String;)V
    //   294: astore 12
    //   296: iload 5
    //   298: istore 6
    //   300: aload 12
    //   302: invokevirtual 83	java/io/File:exists	()Z
    //   305: ifne +33 -> 338
    //   308: aconst_null
    //   309: astore 8
    //   311: new 149	java/io/FileInputStream
    //   314: dup
    //   315: aload 7
    //   317: invokespecial 152	java/io/FileInputStream:<init>	(Ljava/io/File;)V
    //   320: astore 7
    //   322: aload 7
    //   324: aload 12
    //   326: invokestatic 155	com/estrongs/fs/util/j:a	(Ljava/io/InputStream;Ljava/io/File;)V
    //   329: aload 7
    //   331: invokestatic 158	com/estrongs/fs/util/j:a	(Ljava/io/InputStream;)V
    //   334: iload 5
    //   336: istore 6
    //   338: iload 6
    //   340: ifne +86 -> 426
    //   343: aload 10
    //   345: invokevirtual 83	java/io/File:exists	()Z
    //   348: ifeq +10 -> 358
    //   351: aload 10
    //   353: invokestatic 88	com/estrongs/fs/util/j:a	(Ljava/io/File;)Z
    //   356: istore 6
    //   358: iload 6
    //   360: istore 5
    //   362: iload 6
    //   364: ifeq +12 -> 376
    //   367: aload 9
    //   369: aload 10
    //   371: invokevirtual 161	java/io/File:renameTo	(Ljava/io/File;)Z
    //   374: istore 5
    //   376: iload 5
    //   378: istore 6
    //   380: iload 5
    //   382: ifeq -347 -> 35
    //   385: invokestatic 35	com/estrongs/android/pop/FexApplication:a	()Lcom/estrongs/android/pop/FexApplication;
    //   388: invokestatic 40	com/estrongs/android/pop/ad:a	(Landroid/content/Context;)Lcom/estrongs/android/pop/ad;
    //   391: invokestatic 56	java/lang/System:currentTimeMillis	()J
    //   394: invokevirtual 165	com/estrongs/android/pop/ad:k	(J)V
    //   397: iload 5
    //   399: ireturn
    //   400: astore 7
    //   402: aconst_null
    //   403: astore 7
    //   405: aload 7
    //   407: invokestatic 158	com/estrongs/fs/util/j:a	(Ljava/io/InputStream;)V
    //   410: iconst_0
    //   411: istore 6
    //   413: goto -75 -> 338
    //   416: astore 7
    //   418: aload 8
    //   420: invokestatic 158	com/estrongs/fs/util/j:a	(Ljava/io/InputStream;)V
    //   423: aload 7
    //   425: athrow
    //   426: iload_1
    //   427: iconst_1
    //   428: iadd
    //   429: istore_1
    //   430: iload 6
    //   432: istore 5
    //   434: goto -169 -> 265
    //   437: aload 9
    //   439: invokestatic 88	com/estrongs/fs/util/j:a	(Ljava/io/File;)Z
    //   442: pop
    //   443: goto -67 -> 376
    //   446: astore 9
    //   448: aload 7
    //   450: astore 8
    //   452: aload 9
    //   454: astore 7
    //   456: goto -38 -> 418
    //   459: astore 8
    //   461: goto -56 -> 405
    //   464: goto -290 -> 174
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	467	0	this	n
    //   17	413	1	i	int
    //   262	10	2	j	int
    //   9	13	3	l	long
    //   176	257	5	bool1	boolean
    //   33	398	6	bool2	boolean
    //   122	208	7	localObject1	Object
    //   400	1	7	localException1	Exception
    //   403	3	7	localInputStream	java.io.InputStream
    //   416	33	7	localObject2	Object
    //   454	1	7	localObject3	Object
    //   152	299	8	localObject4	Object
    //   459	1	8	localException2	Exception
    //   66	372	9	localFile1	File
    //   446	7	9	localObject5	Object
    //   241	129	10	localFile2	File
    //   248	27	11	arrayOfFile	File[]
    //   294	31	12	localFile3	File
    // Exception table:
    //   from	to	target	type
    //   311	322	400	java/lang/Exception
    //   311	322	416	finally
    //   322	329	446	finally
    //   322	329	459	java/lang/Exception
  }
  
  void a()
  {
    a = new h();
    b = new k();
    d();
    e();
  }
  
  void a(i parami)
  {
    Object localObject = com.estrongs.fs.util.j.e(new File(com.estrongs.android.pop.a.b + "/cards/cards_" + a));
    if (localObject != null) {
      try
      {
        localObject = new JSONObject((String)localObject);
        c = ((JSONObject)localObject).getString("hash");
        localObject = ((JSONObject)localObject).getJSONArray("cards");
        int i = 0;
        int j = ((JSONArray)localObject).length();
        while (i < j)
        {
          parami.a(p.a(((JSONArray)localObject).getJSONObject(i)));
          i += 1;
        }
        return;
      }
      catch (Exception parami)
      {
        parami.printStackTrace();
      }
    }
  }
  
  void b()
  {
    a = new h();
    b = new k();
    d();
    c();
    Iterator localIterator = a.a.entrySet().iterator();
    while (localIterator.hasNext())
    {
      i locali = (i)((Map.Entry)localIterator.next()).getValue();
      if (b) {
        a(locali);
      }
    }
    a.a();
  }
  
  boolean b(i parami)
  {
    String str2 = "http://www.estrongs.com/console/service/cards/?t=" + a;
    String str1 = str2;
    if (c != null) {
      str1 = str2 + "&h=" + b.a;
    }
    return l.a(str1, com.estrongs.android.pop.a.b + "/cards_update/cards_" + a);
  }
  
  void c()
  {
    e();
    for (;;)
    {
      Object localObject2;
      int j;
      int i;
      Object localObject4;
      Object localObject3;
      try
      {
        Object localObject1 = com.estrongs.fs.util.j.e(new File(com.estrongs.android.pop.a.b + "/cards/lists"));
        if (localObject1 != null)
        {
          localObject1 = new JSONObject((String)localObject1);
          b.a = ((JSONObject)localObject1).getString("hash");
          localObject1 = ((JSONObject)localObject1).getJSONObject("content");
          localObject2 = ((JSONObject)localObject1).getJSONArray("types");
          j = ((JSONArray)localObject2).length();
          i = 0;
          if (i >= j) {
            break label204;
          }
          localObject4 = ((JSONArray)localObject2).getJSONObject(i);
          localObject3 = ((JSONObject)localObject4).getString("type");
          if (((JSONObject)localObject4).optInt("hasCards", 0) != 1) {
            break label394;
          }
          bool = true;
          localObject4 = (i)a.a.get(localObject3);
          if (localObject4 == null)
          {
            localObject3 = new i((String)localObject3, bool);
            a.a.put(a, localObject3);
          }
          else
          {
            b = bool;
          }
        }
      }
      catch (Exception localException)
      {
        localException.printStackTrace();
      }
      for (;;)
      {
        return;
        label204:
        JSONArray localJSONArray = localException.getJSONArray("lists");
        int m = localJSONArray.length();
        i = 0;
        while (i < m)
        {
          localObject2 = localJSONArray.getJSONObject(i);
          localObject3 = ((JSONObject)localObject2).getString("name");
          localObject2 = ((JSONObject)localObject2).getJSONArray("items");
          localObject3 = new j((String)localObject3);
          int n = ((JSONArray)localObject2).length();
          j = 0;
          while (j < n)
          {
            localObject4 = ((JSONArray)localObject2).getJSONArray(j);
            a[] arrayOfa = new a[((JSONArray)localObject4).length()];
            int i1 = ((JSONArray)localObject4).length();
            int k = 0;
            while (k < i1)
            {
              JSONObject localJSONObject = ((JSONArray)localObject4).getJSONObject(k);
              arrayOfa[k] = new a(localJSONObject.getString("type"), localJSONObject.optString("key"));
              k += 1;
            }
            ((j)localObject3).a(arrayOfa);
            j += 1;
          }
          b.a((j)localObject3);
          i += 1;
        }
      }
      i += 1;
      continue;
      label394:
      boolean bool = false;
    }
  }
  
  void d()
  {
    a.a(new i("ad", false));
    i locali = new i("rate", false);
    locali.a(new e("cardRate", 2131231202, 2131231201, 2131231200, 2130838053, ""));
    a.a(locali);
    locali = new i("function", true);
    locali.a(new c("cloud", 2131231117, 2131231116, 2131231115, 2130838066, 2130838047, "page@net://"));
    locali.a(new c("music", 2131231022, 2131231120, 2131231119, 2130838077, 0, "intent@com.estrongs.android.pop.view.FileExplorerActivity?action=open_music_player"));
    locali.a(new c("app", 2131230985, 2131231114, 2131231113, 2130838004, 0, "page@app://user"));
    locali.a(new c("sdanalyst", 2131231365, 2131231122, 2131231121, 2130838038, 0, "intent@com.estrongs.android.SHOW_DISK_USAGE"));
    a.a(locali);
    locali = new i("recommend", true);
    locali.a(new f("com.estrongs.locker", 2131230984, 2131231203, 2130838002, 2130838046, 2131231204, null, "com.estrongs.locker", "intent@applocker", 1));
    a.a(locali);
  }
  
  void e()
  {
    b.a = null;
    j localj = new j("default-clean");
    localj.a(new a[] { new a("rate", "cardRate") });
    localj.a(new a[] { new a("recommend", null) });
    localj.a(new a[] { new a("function", null) });
    localj.a(new a[] { new a("function", null) });
    localj.a(new a[] { new a("function", null) });
    localj.a(new a[] { new a("function", null) });
    b.a(localj);
  }
  
  boolean f()
  {
    String str = "http://www.estrongs.com/console/service/cards/?t=-";
    if (b.a != null) {
      str = "http://www.estrongs.com/console/service/cards/?t=-" + "&h=" + b.a;
    }
    return l.a(str, com.estrongs.android.pop.a.b + "/cards_update/lists");
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.b.a.n
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */