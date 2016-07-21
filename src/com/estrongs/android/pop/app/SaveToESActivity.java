package com.estrongs.android.pop.app;

import android.os.Bundle;
import com.estrongs.android.j.c;
import com.estrongs.android.widget.f;

public class SaveToESActivity
  extends FileChooserActivity
{
  private c b = null;
  
  /* Error */
  private void b(String paramString)
  {
    // Byte code:
    //   0: aconst_null
    //   1: astore 5
    //   3: aconst_null
    //   4: astore 6
    //   6: aconst_null
    //   7: astore 4
    //   9: new 22	java/util/ArrayList
    //   12: dup
    //   13: invokespecial 23	java/util/ArrayList:<init>	()V
    //   16: astore 7
    //   18: aload_0
    //   19: invokevirtual 27	com/estrongs/android/pop/app/SaveToESActivity:getIntent	()Landroid/content/Intent;
    //   22: ldc 29
    //   24: invokevirtual 35	android/content/Intent:getStringArrayListExtra	(Ljava/lang/String;)Ljava/util/ArrayList;
    //   27: astore_3
    //   28: aload_3
    //   29: ifnull +43 -> 72
    //   32: iconst_0
    //   33: istore_2
    //   34: iload_2
    //   35: aload_3
    //   36: invokevirtual 39	java/util/ArrayList:size	()I
    //   39: if_icmpge +276 -> 315
    //   42: aload 7
    //   44: aload_0
    //   45: invokestatic 44	com/estrongs/fs/d:a	(Landroid/content/Context;)Lcom/estrongs/fs/d;
    //   48: aload_3
    //   49: iload_2
    //   50: invokevirtual 48	java/util/ArrayList:get	(I)Ljava/lang/Object;
    //   53: checkcast 50	java/lang/String
    //   56: invokevirtual 54	com/estrongs/fs/d:j	(Ljava/lang/String;)Lcom/estrongs/fs/h;
    //   59: invokeinterface 60 2 0
    //   64: pop
    //   65: iload_2
    //   66: iconst_1
    //   67: iadd
    //   68: istore_2
    //   69: goto -35 -> 34
    //   72: aload_0
    //   73: invokevirtual 27	com/estrongs/android/pop/app/SaveToESActivity:getIntent	()Landroid/content/Intent;
    //   76: invokevirtual 64	android/content/Intent:getAction	()Ljava/lang/String;
    //   79: astore_3
    //   80: aload_3
    //   81: ifnull +380 -> 461
    //   84: aload_3
    //   85: ldc 66
    //   87: invokevirtual 69	java/lang/String:equals	(Ljava/lang/Object;)Z
    //   90: ifeq +371 -> 461
    //   93: aload_0
    //   94: invokevirtual 27	com/estrongs/android/pop/app/SaveToESActivity:getIntent	()Landroid/content/Intent;
    //   97: ldc 71
    //   99: invokevirtual 75	android/content/Intent:getParcelableExtra	(Ljava/lang/String;)Landroid/os/Parcelable;
    //   102: checkcast 77	android/net/Uri
    //   105: astore 8
    //   107: aload 8
    //   109: ifnonnull +8 -> 117
    //   112: aload_0
    //   113: invokevirtual 80	com/estrongs/android/pop/app/SaveToESActivity:finish	()V
    //   116: return
    //   117: aload 8
    //   119: invokevirtual 83	android/net/Uri:getPath	()Ljava/lang/String;
    //   122: astore 5
    //   124: aload_0
    //   125: invokestatic 44	com/estrongs/fs/d:a	(Landroid/content/Context;)Lcom/estrongs/fs/d;
    //   128: astore 6
    //   130: aload 8
    //   132: invokevirtual 86	android/net/Uri:getScheme	()Ljava/lang/String;
    //   135: astore 9
    //   137: aload 5
    //   139: astore_3
    //   140: aload 9
    //   142: ifnull +159 -> 301
    //   145: aload 5
    //   147: astore_3
    //   148: aload 9
    //   150: ldc 88
    //   152: invokevirtual 92	java/lang/String:startsWith	(Ljava/lang/String;)Z
    //   155: ifeq +146 -> 301
    //   158: aload 8
    //   160: invokevirtual 95	android/net/Uri:getHost	()Ljava/lang/String;
    //   163: astore_3
    //   164: aload_3
    //   165: ldc 97
    //   167: invokevirtual 69	java/lang/String:equals	(Ljava/lang/Object;)Z
    //   170: ifne +34 -> 204
    //   173: ldc 99
    //   175: aload_3
    //   176: invokevirtual 69	java/lang/String:equals	(Ljava/lang/Object;)Z
    //   179: ifne +25 -> 204
    //   182: aload_0
    //   183: ldc 100
    //   185: iconst_1
    //   186: invokestatic 105	com/estrongs/android/ui/view/ak:a	(Landroid/content/Context;II)V
    //   189: aload_0
    //   190: invokevirtual 80	com/estrongs/android/pop/app/SaveToESActivity:finish	()V
    //   193: return
    //   194: astore_1
    //   195: aload_1
    //   196: invokevirtual 108	java/lang/Exception:printStackTrace	()V
    //   199: aload_0
    //   200: invokevirtual 80	com/estrongs/android/pop/app/SaveToESActivity:finish	()V
    //   203: return
    //   204: aload_0
    //   205: invokevirtual 112	com/estrongs/android/pop/app/SaveToESActivity:getContentResolver	()Landroid/content/ContentResolver;
    //   208: aload 8
    //   210: iconst_1
    //   211: anewarray 50	java/lang/String
    //   214: dup
    //   215: iconst_0
    //   216: ldc 114
    //   218: aastore
    //   219: aconst_null
    //   220: aconst_null
    //   221: aconst_null
    //   222: invokevirtual 120	android/content/ContentResolver:query	(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    //   225: astore_3
    //   226: aload_3
    //   227: astore 4
    //   229: aload 4
    //   231: ifnonnull +23 -> 254
    //   234: aload 4
    //   236: astore_3
    //   237: aload_0
    //   238: invokevirtual 80	com/estrongs/android/pop/app/SaveToESActivity:finish	()V
    //   241: aload 4
    //   243: ifnull +532 -> 775
    //   246: aload 4
    //   248: invokeinterface 125 1 0
    //   253: return
    //   254: aload 4
    //   256: astore_3
    //   257: aload 4
    //   259: invokeinterface 129 1 0
    //   264: pop
    //   265: aload 4
    //   267: astore_3
    //   268: aload 4
    //   270: aload 4
    //   272: ldc 114
    //   274: invokeinterface 133 2 0
    //   279: invokeinterface 137 2 0
    //   284: astore 5
    //   286: aload 4
    //   288: ifnull +481 -> 769
    //   291: aload 4
    //   293: invokeinterface 125 1 0
    //   298: aload 5
    //   300: astore_3
    //   301: aload 7
    //   303: aload 6
    //   305: aload_3
    //   306: invokevirtual 54	com/estrongs/fs/d:j	(Ljava/lang/String;)Lcom/estrongs/fs/h;
    //   309: invokeinterface 60 2 0
    //   314: pop
    //   315: aload 7
    //   317: invokeinterface 138 1 0
    //   322: ifle -123 -> 199
    //   325: new 140	com/estrongs/fs/b/r
    //   328: dup
    //   329: aload_0
    //   330: invokestatic 44	com/estrongs/fs/d:a	(Landroid/content/Context;)Lcom/estrongs/fs/d;
    //   333: aload 7
    //   335: aload_0
    //   336: invokestatic 44	com/estrongs/fs/d:a	(Landroid/content/Context;)Lcom/estrongs/fs/d;
    //   339: aload_1
    //   340: invokevirtual 54	com/estrongs/fs/d:j	(Ljava/lang/String;)Lcom/estrongs/fs/h;
    //   343: invokespecial 143	com/estrongs/fs/b/r:<init>	(Lcom/estrongs/fs/d;Ljava/util/List;Lcom/estrongs/fs/h;)V
    //   346: astore_3
    //   347: aload_3
    //   348: aload_0
    //   349: ldc -112
    //   351: invokevirtual 145	com/estrongs/android/pop/app/SaveToESActivity:getString	(I)Ljava/lang/String;
    //   354: iconst_1
    //   355: anewarray 147	java/lang/Object
    //   358: dup
    //   359: iconst_0
    //   360: aload_1
    //   361: invokestatic 153	com/estrongs/android/util/ap:cc	(Ljava/lang/String;)Ljava/lang/String;
    //   364: aastore
    //   365: invokestatic 157	java/lang/String:format	(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
    //   368: invokevirtual 160	com/estrongs/fs/b/r:setDescription	(Ljava/lang/String;)V
    //   371: aload_3
    //   372: new 162	com/estrongs/android/pop/m
    //   375: dup
    //   376: aload_0
    //   377: invokespecial 165	com/estrongs/android/pop/m:<init>	(Landroid/app/Activity;)V
    //   380: invokevirtual 169	com/estrongs/fs/b/r:setTaskDecisionListener	(Lcom/estrongs/a/a/a;)V
    //   383: aload_3
    //   384: iconst_1
    //   385: invokevirtual 172	com/estrongs/fs/b/r:a	(Z)V
    //   388: new 174	com/estrongs/android/ui/dialog/jh
    //   391: dup
    //   392: aload_0
    //   393: aload_0
    //   394: ldc -81
    //   396: invokevirtual 145	com/estrongs/android/pop/app/SaveToESActivity:getString	(I)Ljava/lang/String;
    //   399: aload_3
    //   400: invokespecial 178	com/estrongs/android/ui/dialog/jh:<init>	(Landroid/app/Activity;Ljava/lang/String;Lcom/estrongs/a/a;)V
    //   403: astore_1
    //   404: aload_1
    //   405: new 180	com/estrongs/android/pop/app/lj
    //   408: dup
    //   409: aload_0
    //   410: invokespecial 183	com/estrongs/android/pop/app/lj:<init>	(Lcom/estrongs/android/pop/app/SaveToESActivity;)V
    //   413: invokevirtual 187	com/estrongs/android/ui/dialog/jh:setOnDismissListener	(Landroid/content/DialogInterface$OnDismissListener;)V
    //   416: aload_1
    //   417: invokevirtual 190	com/estrongs/android/ui/dialog/jh:show	()V
    //   420: aload_3
    //   421: invokevirtual 193	com/estrongs/fs/b/r:execute	()V
    //   424: return
    //   425: astore_1
    //   426: aconst_null
    //   427: astore 4
    //   429: aload 4
    //   431: astore_3
    //   432: aload_0
    //   433: invokevirtual 80	com/estrongs/android/pop/app/SaveToESActivity:finish	()V
    //   436: aload 4
    //   438: ifnull +337 -> 775
    //   441: aload 4
    //   443: invokeinterface 125 1 0
    //   448: return
    //   449: aload_3
    //   450: ifnull +9 -> 459
    //   453: aload_3
    //   454: invokeinterface 125 1 0
    //   459: aload_1
    //   460: athrow
    //   461: aload_3
    //   462: ifnull +277 -> 739
    //   465: aload_3
    //   466: ldc -61
    //   468: invokevirtual 69	java/lang/String:equals	(Ljava/lang/Object;)Z
    //   471: ifeq +268 -> 739
    //   474: new 22	java/util/ArrayList
    //   477: dup
    //   478: invokespecial 23	java/util/ArrayList:<init>	()V
    //   481: pop
    //   482: aload_0
    //   483: invokevirtual 27	com/estrongs/android/pop/app/SaveToESActivity:getIntent	()Landroid/content/Intent;
    //   486: ldc 71
    //   488: invokevirtual 198	android/content/Intent:getParcelableArrayListExtra	(Ljava/lang/String;)Ljava/util/ArrayList;
    //   491: astore 8
    //   493: aload 8
    //   495: ifnonnull +288 -> 783
    //   498: aload_0
    //   499: invokevirtual 80	com/estrongs/android/pop/app/SaveToESActivity:finish	()V
    //   502: return
    //   503: iload_2
    //   504: aload 8
    //   506: invokevirtual 39	java/util/ArrayList:size	()I
    //   509: if_icmpge -194 -> 315
    //   512: aload 8
    //   514: iload_2
    //   515: invokevirtual 48	java/util/ArrayList:get	(I)Ljava/lang/Object;
    //   518: checkcast 77	android/net/Uri
    //   521: astore 10
    //   523: aload 10
    //   525: invokevirtual 83	android/net/Uri:getPath	()Ljava/lang/String;
    //   528: astore 4
    //   530: aload_0
    //   531: invokestatic 44	com/estrongs/fs/d:a	(Landroid/content/Context;)Lcom/estrongs/fs/d;
    //   534: astore 9
    //   536: aload 10
    //   538: invokevirtual 86	android/net/Uri:getScheme	()Ljava/lang/String;
    //   541: astore 11
    //   543: aload 4
    //   545: astore_3
    //   546: aload 11
    //   548: ifnull +137 -> 685
    //   551: aload 4
    //   553: astore_3
    //   554: aload 11
    //   556: ldc 88
    //   558: invokevirtual 92	java/lang/String:startsWith	(Ljava/lang/String;)Z
    //   561: ifeq +124 -> 685
    //   564: aload 10
    //   566: invokevirtual 95	android/net/Uri:getHost	()Ljava/lang/String;
    //   569: astore_3
    //   570: aload_3
    //   571: ldc 97
    //   573: invokevirtual 69	java/lang/String:equals	(Ljava/lang/Object;)Z
    //   576: ifne +24 -> 600
    //   579: ldc 99
    //   581: aload_3
    //   582: invokevirtual 69	java/lang/String:equals	(Ljava/lang/Object;)Z
    //   585: ifne +15 -> 600
    //   588: aload_0
    //   589: ldc 100
    //   591: iconst_1
    //   592: invokestatic 105	com/estrongs/android/ui/view/ak:a	(Landroid/content/Context;II)V
    //   595: aload_0
    //   596: invokevirtual 80	com/estrongs/android/pop/app/SaveToESActivity:finish	()V
    //   599: return
    //   600: aload 6
    //   602: astore_3
    //   603: aload_0
    //   604: invokevirtual 112	com/estrongs/android/pop/app/SaveToESActivity:getContentResolver	()Landroid/content/ContentResolver;
    //   607: aload 10
    //   609: iconst_1
    //   610: anewarray 50	java/lang/String
    //   613: dup
    //   614: iconst_0
    //   615: ldc 114
    //   617: aastore
    //   618: aconst_null
    //   619: aconst_null
    //   620: aconst_null
    //   621: invokevirtual 120	android/content/ContentResolver:query	(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    //   624: astore 4
    //   626: aload 4
    //   628: ifnonnull +20 -> 648
    //   631: aload_0
    //   632: invokevirtual 80	com/estrongs/android/pop/app/SaveToESActivity:finish	()V
    //   635: aload 4
    //   637: ifnull +138 -> 775
    //   640: aload 4
    //   642: invokeinterface 125 1 0
    //   647: return
    //   648: aload 4
    //   650: invokeinterface 129 1 0
    //   655: pop
    //   656: aload 4
    //   658: aload 4
    //   660: ldc 114
    //   662: invokeinterface 133 2 0
    //   667: invokeinterface 137 2 0
    //   672: astore_3
    //   673: aload 4
    //   675: ifnull +91 -> 766
    //   678: aload 4
    //   680: invokeinterface 125 1 0
    //   685: aload 7
    //   687: aload 9
    //   689: aload_3
    //   690: invokevirtual 54	com/estrongs/fs/d:j	(Ljava/lang/String;)Lcom/estrongs/fs/h;
    //   693: invokeinterface 60 2 0
    //   698: pop
    //   699: iload_2
    //   700: iconst_1
    //   701: iadd
    //   702: istore_2
    //   703: goto -200 -> 503
    //   706: astore_1
    //   707: aload 5
    //   709: astore_1
    //   710: aload_1
    //   711: astore_3
    //   712: aload_0
    //   713: invokevirtual 80	com/estrongs/android/pop/app/SaveToESActivity:finish	()V
    //   716: aload_1
    //   717: ifnull +58 -> 775
    //   720: aload_1
    //   721: invokeinterface 125 1 0
    //   726: return
    //   727: aload_3
    //   728: ifnull +9 -> 737
    //   731: aload_3
    //   732: invokeinterface 125 1 0
    //   737: aload_1
    //   738: athrow
    //   739: aload_0
    //   740: invokevirtual 80	com/estrongs/android/pop/app/SaveToESActivity:finish	()V
    //   743: return
    //   744: astore_1
    //   745: aload 4
    //   747: astore_3
    //   748: goto -21 -> 727
    //   751: astore_1
    //   752: aload 4
    //   754: astore_1
    //   755: goto -45 -> 710
    //   758: astore_1
    //   759: goto -310 -> 449
    //   762: astore_1
    //   763: goto -334 -> 429
    //   766: goto -81 -> 685
    //   769: aload 5
    //   771: astore_3
    //   772: goto -471 -> 301
    //   775: return
    //   776: astore_1
    //   777: aload 4
    //   779: astore_3
    //   780: goto -331 -> 449
    //   783: iconst_0
    //   784: istore_2
    //   785: goto -282 -> 503
    //   788: astore_1
    //   789: goto -62 -> 727
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	792	0	this	SaveToESActivity
    //   0	792	1	paramString	String
    //   33	752	2	i	int
    //   27	753	3	localObject1	Object
    //   7	771	4	localObject2	Object
    //   1	769	5	str1	String
    //   4	597	6	locald	com.estrongs.fs.d
    //   16	670	7	localArrayList	java.util.ArrayList
    //   105	408	8	localObject3	Object
    //   135	553	9	localObject4	Object
    //   521	87	10	localUri	android.net.Uri
    //   541	14	11	str2	String
    // Exception table:
    //   from	to	target	type
    //   18	28	194	java/lang/Exception
    //   34	65	194	java/lang/Exception
    //   72	80	194	java/lang/Exception
    //   84	107	194	java/lang/Exception
    //   112	116	194	java/lang/Exception
    //   117	137	194	java/lang/Exception
    //   148	193	194	java/lang/Exception
    //   246	253	194	java/lang/Exception
    //   291	298	194	java/lang/Exception
    //   301	315	194	java/lang/Exception
    //   315	424	194	java/lang/Exception
    //   441	448	194	java/lang/Exception
    //   453	459	194	java/lang/Exception
    //   459	461	194	java/lang/Exception
    //   465	493	194	java/lang/Exception
    //   498	502	194	java/lang/Exception
    //   503	543	194	java/lang/Exception
    //   554	599	194	java/lang/Exception
    //   640	647	194	java/lang/Exception
    //   678	685	194	java/lang/Exception
    //   685	699	194	java/lang/Exception
    //   720	726	194	java/lang/Exception
    //   731	737	194	java/lang/Exception
    //   737	739	194	java/lang/Exception
    //   739	743	194	java/lang/Exception
    //   204	226	425	java/lang/Exception
    //   603	626	706	java/lang/Exception
    //   631	635	744	finally
    //   648	673	744	finally
    //   631	635	751	java/lang/Exception
    //   648	673	751	java/lang/Exception
    //   237	241	758	finally
    //   257	265	758	finally
    //   268	286	758	finally
    //   432	436	758	finally
    //   237	241	762	java/lang/Exception
    //   257	265	762	java/lang/Exception
    //   268	286	762	java/lang/Exception
    //   204	226	776	finally
    //   603	626	788	finally
    //   712	716	788	finally
  }
  
  protected void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    if (a == null) {
      return;
    }
    b = c.a(this);
    try
    {
      b.d("act3");
      b.a("act3", "save_to_es");
      a.a(-1);
      a.b(getString(2131230720), new lh(this));
      a.c(getString(2131231265), null);
      return;
    }
    catch (Exception paramBundle)
    {
      for (;;)
      {
        paramBundle.printStackTrace();
      }
    }
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.pop.app.SaveToESActivity
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */