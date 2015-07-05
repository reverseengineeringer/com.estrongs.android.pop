package com.estrongs.android.pop.view;

import android.content.BroadcastReceiver;

class ey
  extends BroadcastReceiver
{
  ey(FileExplorerActivity paramFileExplorerActivity) {}
  
  /* Error */
  public void onReceive(android.content.Context paramContext, android.content.Intent paramIntent)
  {
    // Byte code:
    //   0: aload_2
    //   1: invokevirtual 24	android/content/Intent:getAction	()Ljava/lang/String;
    //   4: astore 4
    //   6: ldc 26
    //   8: aload 4
    //   10: invokevirtual 32	java/lang/String:equals	(Ljava/lang/Object;)Z
    //   13: ifne +33 -> 46
    //   16: ldc 34
    //   18: aload 4
    //   20: invokevirtual 32	java/lang/String:equals	(Ljava/lang/Object;)Z
    //   23: ifne +23 -> 46
    //   26: ldc 36
    //   28: aload 4
    //   30: invokevirtual 32	java/lang/String:equals	(Ljava/lang/Object;)Z
    //   33: ifne +13 -> 46
    //   36: ldc 38
    //   38: aload 4
    //   40: invokevirtual 32	java/lang/String:equals	(Ljava/lang/Object;)Z
    //   43: ifeq +107 -> 150
    //   46: aload_0
    //   47: getfield 10	com/estrongs/android/pop/view/ey:a	Lcom/estrongs/android/pop/view/FileExplorerActivity;
    //   50: invokevirtual 43	com/estrongs/android/pop/view/FileExplorerActivity:N	()V
    //   53: ldc 26
    //   55: aload 4
    //   57: invokevirtual 32	java/lang/String:equals	(Ljava/lang/Object;)Z
    //   60: ifne +13 -> 73
    //   63: ldc 38
    //   65: aload 4
    //   67: invokevirtual 32	java/lang/String:equals	(Ljava/lang/Object;)Z
    //   70: ifeq +353 -> 423
    //   73: aload_0
    //   74: getfield 10	com/estrongs/android/pop/view/ey:a	Lcom/estrongs/android/pop/view/FileExplorerActivity;
    //   77: invokevirtual 47	com/estrongs/android/pop/view/FileExplorerActivity:Q	()Lcom/estrongs/android/pop/utils/c;
    //   80: aload_1
    //   81: aload_2
    //   82: invokevirtual 51	com/estrongs/android/pop/utils/c:a	(Landroid/content/Context;Landroid/content/Intent;)V
    //   85: aload_0
    //   86: getfield 10	com/estrongs/android/pop/view/ey:a	Lcom/estrongs/android/pop/view/FileExplorerActivity;
    //   89: invokevirtual 47	com/estrongs/android/pop/view/FileExplorerActivity:Q	()Lcom/estrongs/android/pop/utils/c;
    //   92: aload_1
    //   93: aload_2
    //   94: invokevirtual 54	com/estrongs/android/pop/utils/c:b	(Landroid/content/Context;Landroid/content/Intent;)V
    //   97: aload_0
    //   98: getfield 10	com/estrongs/android/pop/view/ey:a	Lcom/estrongs/android/pop/view/FileExplorerActivity;
    //   101: invokevirtual 58	com/estrongs/android/pop/view/FileExplorerActivity:getPackageManager	()Landroid/content/pm/PackageManager;
    //   104: iconst_1
    //   105: invokestatic 63	com/estrongs/android/util/ah:a	(Landroid/content/pm/PackageManager;Z)Ljava/util/List;
    //   108: pop
    //   109: getstatic 69	com/estrongs/android/pop/z:ap	Z
    //   112: ifne +30 -> 142
    //   115: aload_2
    //   116: invokevirtual 24	android/content/Intent:getAction	()Ljava/lang/String;
    //   119: ldc 26
    //   121: invokevirtual 32	java/lang/String:equals	(Ljava/lang/Object;)Z
    //   124: ifeq +332 -> 456
    //   127: aload_2
    //   128: invokevirtual 73	android/content/Intent:getData	()Landroid/net/Uri;
    //   131: invokevirtual 78	android/net/Uri:getSchemeSpecificPart	()Ljava/lang/String;
    //   134: astore_1
    //   135: invokestatic 84	com/estrongs/android/appinfo/AppFolderInfoManager:d	()Lcom/estrongs/android/appinfo/AppFolderInfoManager;
    //   138: aload_1
    //   139: invokevirtual 88	com/estrongs/android/appinfo/AppFolderInfoManager:c	(Ljava/lang/String;)V
    //   142: aload_0
    //   143: getfield 10	com/estrongs/android/pop/view/ey:a	Lcom/estrongs/android/pop/view/FileExplorerActivity;
    //   146: iconst_0
    //   147: invokevirtual 92	com/estrongs/android/pop/view/FileExplorerActivity:g	(Z)V
    //   150: ldc 34
    //   152: aload 4
    //   154: invokevirtual 32	java/lang/String:equals	(Ljava/lang/Object;)Z
    //   157: ifeq +344 -> 501
    //   160: aload_2
    //   161: invokevirtual 73	android/content/Intent:getData	()Landroid/net/Uri;
    //   164: invokevirtual 95	android/net/Uri:toString	()Ljava/lang/String;
    //   167: ldc 97
    //   169: invokevirtual 101	java/lang/String:indexOf	(Ljava/lang/String;)I
    //   172: iflt +329 -> 501
    //   175: new 103	java/util/ArrayList
    //   178: dup
    //   179: invokespecial 104	java/util/ArrayList:<init>	()V
    //   182: astore_1
    //   183: ldc 97
    //   185: invokestatic 109	com/estrongs/android/pop/utils/w:a	(Ljava/lang/String;)Z
    //   188: ifne +159 -> 347
    //   191: aload_1
    //   192: new 111	com/estrongs/fs/impl/local/f
    //   195: dup
    //   196: new 113	java/io/File
    //   199: dup
    //   200: new 115	java/lang/StringBuilder
    //   203: dup
    //   204: invokespecial 116	java/lang/StringBuilder:<init>	()V
    //   207: invokestatic 121	com/estrongs/android/util/am:i	()Ljava/lang/String;
    //   210: invokevirtual 125	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   213: ldc 97
    //   215: invokevirtual 125	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   218: ldc 127
    //   220: invokevirtual 125	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   223: ldc -127
    //   225: invokevirtual 125	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   228: invokevirtual 130	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   231: invokespecial 132	java/io/File:<init>	(Ljava/lang/String;)V
    //   234: invokespecial 135	com/estrongs/fs/impl/local/f:<init>	(Ljava/io/File;)V
    //   237: invokeinterface 140 2 0
    //   242: pop
    //   243: aload_1
    //   244: new 111	com/estrongs/fs/impl/local/f
    //   247: dup
    //   248: new 113	java/io/File
    //   251: dup
    //   252: new 115	java/lang/StringBuilder
    //   255: dup
    //   256: invokespecial 116	java/lang/StringBuilder:<init>	()V
    //   259: invokestatic 121	com/estrongs/android/util/am:i	()Ljava/lang/String;
    //   262: invokevirtual 125	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   265: ldc 97
    //   267: invokevirtual 125	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   270: ldc 127
    //   272: invokevirtual 125	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   275: ldc -114
    //   277: invokevirtual 125	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   280: invokevirtual 130	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   283: invokespecial 132	java/io/File:<init>	(Ljava/lang/String;)V
    //   286: invokespecial 135	com/estrongs/fs/impl/local/f:<init>	(Ljava/io/File;)V
    //   289: invokeinterface 140 2 0
    //   294: pop
    //   295: aload_1
    //   296: new 111	com/estrongs/fs/impl/local/f
    //   299: dup
    //   300: new 113	java/io/File
    //   303: dup
    //   304: new 115	java/lang/StringBuilder
    //   307: dup
    //   308: invokespecial 116	java/lang/StringBuilder:<init>	()V
    //   311: invokestatic 121	com/estrongs/android/util/am:i	()Ljava/lang/String;
    //   314: invokevirtual 125	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   317: ldc 97
    //   319: invokevirtual 125	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   322: ldc 127
    //   324: invokevirtual 125	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   327: ldc -112
    //   329: invokevirtual 125	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   332: invokevirtual 130	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   335: invokespecial 132	java/io/File:<init>	(Ljava/lang/String;)V
    //   338: invokespecial 135	com/estrongs/fs/impl/local/f:<init>	(Ljava/io/File;)V
    //   341: invokeinterface 140 2 0
    //   346: pop
    //   347: new 113	java/io/File
    //   350: dup
    //   351: new 115	java/lang/StringBuilder
    //   354: dup
    //   355: invokespecial 116	java/lang/StringBuilder:<init>	()V
    //   358: invokestatic 121	com/estrongs/android/util/am:i	()Ljava/lang/String;
    //   361: invokevirtual 125	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   364: ldc 97
    //   366: invokevirtual 125	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   369: invokevirtual 130	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   372: invokespecial 132	java/io/File:<init>	(Ljava/lang/String;)V
    //   375: new 146	com/estrongs/android/pop/view/ez
    //   378: dup
    //   379: aload_0
    //   380: invokespecial 149	com/estrongs/android/pop/view/ez:<init>	(Lcom/estrongs/android/pop/view/ey;)V
    //   383: invokevirtual 153	java/io/File:listFiles	(Ljava/io/FileFilter;)[Ljava/io/File;
    //   386: astore_2
    //   387: aload_2
    //   388: ifnull +98 -> 486
    //   391: iconst_0
    //   392: istore_3
    //   393: iload_3
    //   394: aload_2
    //   395: arraylength
    //   396: if_icmpge +90 -> 486
    //   399: aload_1
    //   400: new 111	com/estrongs/fs/impl/local/f
    //   403: dup
    //   404: aload_2
    //   405: iload_3
    //   406: aaload
    //   407: invokespecial 135	com/estrongs/fs/impl/local/f:<init>	(Ljava/io/File;)V
    //   410: invokeinterface 140 2 0
    //   415: pop
    //   416: iload_3
    //   417: iconst_1
    //   418: iadd
    //   419: istore_3
    //   420: goto -27 -> 393
    //   423: ldc 34
    //   425: aload 4
    //   427: invokevirtual 32	java/lang/String:equals	(Ljava/lang/Object;)Z
    //   430: ifeq -333 -> 97
    //   433: aload_0
    //   434: getfield 10	com/estrongs/android/pop/view/ey:a	Lcom/estrongs/android/pop/view/FileExplorerActivity;
    //   437: invokevirtual 47	com/estrongs/android/pop/view/FileExplorerActivity:Q	()Lcom/estrongs/android/pop/utils/c;
    //   440: aload_1
    //   441: aload_2
    //   442: invokevirtual 155	com/estrongs/android/pop/utils/c:c	(Landroid/content/Context;Landroid/content/Intent;)V
    //   445: goto -348 -> 97
    //   448: astore_1
    //   449: aload_1
    //   450: invokevirtual 158	java/lang/Exception:printStackTrace	()V
    //   453: goto -303 -> 150
    //   456: aload_2
    //   457: invokevirtual 24	android/content/Intent:getAction	()Ljava/lang/String;
    //   460: ldc 34
    //   462: invokevirtual 32	java/lang/String:equals	(Ljava/lang/Object;)Z
    //   465: ifeq -323 -> 142
    //   468: aload_2
    //   469: invokevirtual 73	android/content/Intent:getData	()Landroid/net/Uri;
    //   472: invokevirtual 78	android/net/Uri:getSchemeSpecificPart	()Ljava/lang/String;
    //   475: astore_1
    //   476: invokestatic 84	com/estrongs/android/appinfo/AppFolderInfoManager:d	()Lcom/estrongs/android/appinfo/AppFolderInfoManager;
    //   479: aload_1
    //   480: invokevirtual 160	com/estrongs/android/appinfo/AppFolderInfoManager:d	(Ljava/lang/String;)V
    //   483: goto -341 -> 142
    //   486: new 162	com/estrongs/fs/b/ab
    //   489: dup
    //   490: invokestatic 167	com/estrongs/fs/d:a	()Lcom/estrongs/fs/d;
    //   493: aload_1
    //   494: iconst_0
    //   495: invokespecial 170	com/estrongs/fs/b/ab:<init>	(Lcom/estrongs/fs/d;Ljava/util/List;Z)V
    //   498: invokevirtual 173	com/estrongs/fs/b/ab:execute	()V
    //   501: return
    //   502: astore_1
    //   503: aload_1
    //   504: invokevirtual 158	java/lang/Exception:printStackTrace	()V
    //   507: return
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	508	0	this	ey
    //   0	508	1	paramContext	android.content.Context
    //   0	508	2	paramIntent	android.content.Intent
    //   392	28	3	i	int
    //   4	422	4	str	String
    // Exception table:
    //   from	to	target	type
    //   46	73	448	java/lang/Exception
    //   73	97	448	java/lang/Exception
    //   97	142	448	java/lang/Exception
    //   142	150	448	java/lang/Exception
    //   423	445	448	java/lang/Exception
    //   456	483	448	java/lang/Exception
    //   150	347	502	java/lang/Exception
    //   347	387	502	java/lang/Exception
    //   393	416	502	java/lang/Exception
    //   486	501	502	java/lang/Exception
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.pop.view.ey
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */