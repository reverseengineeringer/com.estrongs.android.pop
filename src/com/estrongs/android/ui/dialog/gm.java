package com.estrongs.android.ui.dialog;

import com.estrongs.android.pop.a.i;

class gm
  implements i
{
  gm(gk paramgk) {}
  
  /* Error */
  public void a(String paramString)
  {
    // Byte code:
    //   0: aload_0
    //   1: getfield 12	com/estrongs/android/ui/dialog/gm:a	Lcom/estrongs/android/ui/dialog/gk;
    //   4: invokestatic 29	com/estrongs/android/ui/dialog/gk:d	(Lcom/estrongs/android/ui/dialog/gk;)Z
    //   7: ifeq +153 -> 160
    //   10: new 31	org/json/JSONObject
    //   13: dup
    //   14: aload_1
    //   15: invokespecial 33	org/json/JSONObject:<init>	(Ljava/lang/String;)V
    //   18: astore_1
    //   19: aload_0
    //   20: getfield 12	com/estrongs/android/ui/dialog/gm:a	Lcom/estrongs/android/ui/dialog/gk;
    //   23: aload_1
    //   24: ldc 35
    //   26: invokevirtual 39	org/json/JSONObject:getJSONArray	(Ljava/lang/String;)Lorg/json/JSONArray;
    //   29: invokestatic 42	com/estrongs/android/ui/dialog/gk:a	(Lcom/estrongs/android/ui/dialog/gk;Lorg/json/JSONArray;)Lorg/json/JSONArray;
    //   32: pop
    //   33: aload_0
    //   34: getfield 12	com/estrongs/android/ui/dialog/gm:a	Lcom/estrongs/android/ui/dialog/gk;
    //   37: invokestatic 46	com/estrongs/android/ui/dialog/gk:e	(Lcom/estrongs/android/ui/dialog/gk;)Landroid/content/Context;
    //   40: invokevirtual 52	android/content/Context:getPackageManager	()Landroid/content/pm/PackageManager;
    //   43: astore 7
    //   45: aload 7
    //   47: aload_0
    //   48: getfield 12	com/estrongs/android/ui/dialog/gm:a	Lcom/estrongs/android/ui/dialog/gk;
    //   51: invokestatic 56	com/estrongs/android/ui/dialog/gk:b	(Lcom/estrongs/android/ui/dialog/gk;)Ljava/lang/String;
    //   54: sipush 4096
    //   57: invokevirtual 62	android/content/pm/PackageManager:getPackageInfo	(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    //   60: astore 8
    //   62: new 64	org/json/JSONArray
    //   65: dup
    //   66: invokespecial 65	org/json/JSONArray:<init>	()V
    //   69: astore_1
    //   70: new 64	org/json/JSONArray
    //   73: dup
    //   74: invokespecial 65	org/json/JSONArray:<init>	()V
    //   77: astore 6
    //   79: aload 8
    //   81: getfield 71	android/content/pm/PackageInfo:requestedPermissions	[Ljava/lang/String;
    //   84: ifnull +177 -> 261
    //   87: aload 8
    //   89: getfield 71	android/content/pm/PackageInfo:requestedPermissions	[Ljava/lang/String;
    //   92: astore 8
    //   94: aload 8
    //   96: arraylength
    //   97: istore 5
    //   99: iconst_0
    //   100: istore_2
    //   101: goto +276 -> 377
    //   104: iload 4
    //   106: aload_0
    //   107: getfield 12	com/estrongs/android/ui/dialog/gm:a	Lcom/estrongs/android/ui/dialog/gk;
    //   110: invokestatic 75	com/estrongs/android/ui/dialog/gk:f	(Lcom/estrongs/android/ui/dialog/gk;)Lorg/json/JSONArray;
    //   113: invokevirtual 79	org/json/JSONArray:length	()I
    //   116: if_icmpge +68 -> 184
    //   119: aload_0
    //   120: getfield 12	com/estrongs/android/ui/dialog/gm:a	Lcom/estrongs/android/ui/dialog/gk;
    //   123: invokestatic 75	com/estrongs/android/ui/dialog/gk:f	(Lcom/estrongs/android/ui/dialog/gk;)Lorg/json/JSONArray;
    //   126: iload 4
    //   128: invokevirtual 83	org/json/JSONArray:getJSONObject	(I)Lorg/json/JSONObject;
    //   131: astore 10
    //   133: aload 9
    //   135: aload 10
    //   137: ldc 85
    //   139: invokevirtual 89	org/json/JSONObject:getString	(Ljava/lang/String;)Ljava/lang/String;
    //   142: invokevirtual 95	java/lang/String:equals	(Ljava/lang/Object;)Z
    //   145: ifeq +252 -> 397
    //   148: aload_1
    //   149: aload 10
    //   151: invokevirtual 99	org/json/JSONArray:put	(Ljava/lang/Object;)Lorg/json/JSONArray;
    //   154: pop
    //   155: iconst_1
    //   156: istore_3
    //   157: goto +240 -> 397
    //   160: aload_0
    //   161: getfield 12	com/estrongs/android/ui/dialog/gm:a	Lcom/estrongs/android/ui/dialog/gk;
    //   164: new 64	org/json/JSONArray
    //   167: dup
    //   168: invokespecial 65	org/json/JSONArray:<init>	()V
    //   171: invokestatic 42	com/estrongs/android/ui/dialog/gk:a	(Lcom/estrongs/android/ui/dialog/gk;Lorg/json/JSONArray;)Lorg/json/JSONArray;
    //   174: pop
    //   175: goto -142 -> 33
    //   178: astore_1
    //   179: aload_1
    //   180: invokevirtual 102	org/json/JSONException:printStackTrace	()V
    //   183: return
    //   184: iload_3
    //   185: ifne +50 -> 235
    //   188: new 31	org/json/JSONObject
    //   191: dup
    //   192: invokespecial 103	org/json/JSONObject:<init>	()V
    //   195: astore 10
    //   197: aload 10
    //   199: ldc 105
    //   201: aload 7
    //   203: aload 9
    //   205: iconst_0
    //   206: invokevirtual 109	android/content/pm/PackageManager:getPermissionInfo	(Ljava/lang/String;I)Landroid/content/pm/PermissionInfo;
    //   209: aload 7
    //   211: invokevirtual 115	android/content/pm/PermissionInfo:loadLabel	(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;
    //   214: invokevirtual 118	org/json/JSONObject:put	(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    //   217: pop
    //   218: aload 10
    //   220: ldc 120
    //   222: iconst_0
    //   223: invokevirtual 123	org/json/JSONObject:put	(Ljava/lang/String;I)Lorg/json/JSONObject;
    //   226: pop
    //   227: aload 6
    //   229: aload 10
    //   231: invokevirtual 99	org/json/JSONArray:put	(Ljava/lang/Object;)Lorg/json/JSONArray;
    //   234: pop
    //   235: iload_2
    //   236: iconst_1
    //   237: iadd
    //   238: istore_2
    //   239: goto +138 -> 377
    //   242: astore 9
    //   244: aload 9
    //   246: invokevirtual 124	android/content/pm/PackageManager$NameNotFoundException:printStackTrace	()V
    //   249: goto -14 -> 235
    //   252: astore_1
    //   253: aload_1
    //   254: invokevirtual 124	android/content/pm/PackageManager$NameNotFoundException:printStackTrace	()V
    //   257: return
    //   258: astore_1
    //   259: aload_1
    //   260: athrow
    //   261: iconst_0
    //   262: istore_2
    //   263: iload_2
    //   264: aload_0
    //   265: getfield 12	com/estrongs/android/ui/dialog/gm:a	Lcom/estrongs/android/ui/dialog/gk;
    //   268: invokestatic 75	com/estrongs/android/ui/dialog/gk:f	(Lcom/estrongs/android/ui/dialog/gk;)Lorg/json/JSONArray;
    //   271: invokevirtual 79	org/json/JSONArray:length	()I
    //   274: if_icmpge +139 -> 413
    //   277: aload_0
    //   278: getfield 12	com/estrongs/android/ui/dialog/gm:a	Lcom/estrongs/android/ui/dialog/gk;
    //   281: invokestatic 75	com/estrongs/android/ui/dialog/gk:f	(Lcom/estrongs/android/ui/dialog/gk;)Lorg/json/JSONArray;
    //   284: iload_2
    //   285: invokevirtual 83	org/json/JSONArray:getJSONObject	(I)Lorg/json/JSONObject;
    //   288: astore 7
    //   290: aload 7
    //   292: ldc 85
    //   294: invokevirtual 89	org/json/JSONObject:getString	(Ljava/lang/String;)Ljava/lang/String;
    //   297: ldc 126
    //   299: invokevirtual 95	java/lang/String:equals	(Ljava/lang/Object;)Z
    //   302: ifeq +104 -> 406
    //   305: aload_1
    //   306: aload 7
    //   308: invokevirtual 99	org/json/JSONArray:put	(Ljava/lang/Object;)Lorg/json/JSONArray;
    //   311: pop
    //   312: goto +94 -> 406
    //   315: iload_2
    //   316: aload 6
    //   318: invokevirtual 79	org/json/JSONArray:length	()I
    //   321: if_icmpge +21 -> 342
    //   324: aload_1
    //   325: aload 6
    //   327: iload_2
    //   328: invokevirtual 130	org/json/JSONArray:get	(I)Ljava/lang/Object;
    //   331: invokevirtual 99	org/json/JSONArray:put	(Ljava/lang/Object;)Lorg/json/JSONArray;
    //   334: pop
    //   335: iload_2
    //   336: iconst_1
    //   337: iadd
    //   338: istore_2
    //   339: goto -24 -> 315
    //   342: aload_0
    //   343: getfield 12	com/estrongs/android/ui/dialog/gm:a	Lcom/estrongs/android/ui/dialog/gk;
    //   346: aload_1
    //   347: invokestatic 42	com/estrongs/android/ui/dialog/gk:a	(Lcom/estrongs/android/ui/dialog/gk;Lorg/json/JSONArray;)Lorg/json/JSONArray;
    //   350: pop
    //   351: aload_0
    //   352: getfield 12	com/estrongs/android/ui/dialog/gm:a	Lcom/estrongs/android/ui/dialog/gk;
    //   355: invokestatic 134	com/estrongs/android/ui/dialog/gk:g	(Lcom/estrongs/android/ui/dialog/gk;)Landroid/os/Handler;
    //   358: new 136	com/estrongs/android/ui/dialog/gn
    //   361: dup
    //   362: aload_0
    //   363: invokespecial 139	com/estrongs/android/ui/dialog/gn:<init>	(Lcom/estrongs/android/ui/dialog/gm;)V
    //   366: invokevirtual 145	android/os/Handler:post	(Ljava/lang/Runnable;)Z
    //   369: pop
    //   370: return
    //   371: astore_1
    //   372: aload_1
    //   373: invokevirtual 146	java/lang/Exception:printStackTrace	()V
    //   376: return
    //   377: iload_2
    //   378: iload 5
    //   380: if_icmpge -119 -> 261
    //   383: aload 8
    //   385: iload_2
    //   386: aaload
    //   387: astore 9
    //   389: iconst_0
    //   390: istore 4
    //   392: iconst_0
    //   393: istore_3
    //   394: goto -290 -> 104
    //   397: iload 4
    //   399: iconst_1
    //   400: iadd
    //   401: istore 4
    //   403: goto -299 -> 104
    //   406: iload_2
    //   407: iconst_1
    //   408: iadd
    //   409: istore_2
    //   410: goto -147 -> 263
    //   413: iconst_0
    //   414: istore_2
    //   415: goto -100 -> 315
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	418	0	this	gm
    //   0	418	1	paramString	String
    //   100	315	2	i	int
    //   156	238	3	j	int
    //   104	298	4	k	int
    //   97	284	5	m	int
    //   77	249	6	localJSONArray	org.json.JSONArray
    //   43	264	7	localObject1	Object
    //   60	324	8	localObject2	Object
    //   133	71	9	str	String
    //   242	3	9	localNameNotFoundException	android.content.pm.PackageManager.NameNotFoundException
    //   387	1	9	localObject3	Object
    //   131	99	10	localJSONObject	org.json.JSONObject
    // Exception table:
    //   from	to	target	type
    //   0	33	178	org/json/JSONException
    //   33	99	178	org/json/JSONException
    //   104	133	178	org/json/JSONException
    //   133	155	178	org/json/JSONException
    //   160	175	178	org/json/JSONException
    //   188	197	178	org/json/JSONException
    //   197	235	178	org/json/JSONException
    //   244	249	178	org/json/JSONException
    //   263	312	178	org/json/JSONException
    //   315	335	178	org/json/JSONException
    //   342	370	178	org/json/JSONException
    //   197	235	242	android/content/pm/PackageManager$NameNotFoundException
    //   0	33	252	android/content/pm/PackageManager$NameNotFoundException
    //   33	99	252	android/content/pm/PackageManager$NameNotFoundException
    //   104	133	252	android/content/pm/PackageManager$NameNotFoundException
    //   133	155	252	android/content/pm/PackageManager$NameNotFoundException
    //   160	175	252	android/content/pm/PackageManager$NameNotFoundException
    //   188	197	252	android/content/pm/PackageManager$NameNotFoundException
    //   244	249	252	android/content/pm/PackageManager$NameNotFoundException
    //   263	312	252	android/content/pm/PackageManager$NameNotFoundException
    //   315	335	252	android/content/pm/PackageManager$NameNotFoundException
    //   342	370	252	android/content/pm/PackageManager$NameNotFoundException
    //   0	33	258	finally
    //   33	99	258	finally
    //   104	133	258	finally
    //   133	155	258	finally
    //   160	175	258	finally
    //   179	183	258	finally
    //   188	197	258	finally
    //   197	235	258	finally
    //   244	249	258	finally
    //   253	257	258	finally
    //   263	312	258	finally
    //   315	335	258	finally
    //   342	370	258	finally
    //   372	376	258	finally
    //   0	33	371	java/lang/Exception
    //   33	99	371	java/lang/Exception
    //   104	133	371	java/lang/Exception
    //   133	155	371	java/lang/Exception
    //   160	175	371	java/lang/Exception
    //   188	197	371	java/lang/Exception
    //   197	235	371	java/lang/Exception
    //   244	249	371	java/lang/Exception
    //   263	312	371	java/lang/Exception
    //   315	335	371	java/lang/Exception
    //   342	370	371	java/lang/Exception
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.ui.dialog.gm
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */