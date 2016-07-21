package com.estrongs.fs.impl.local;

import android.content.ContentResolver;
import android.content.ContentValues;
import android.net.Uri;
import android.provider.MediaStore.Images.Media;
import android.provider.MediaStore.Video.Media;
import com.estrongs.android.pop.FexApplication;
import com.estrongs.android.util.g;
import java.io.File;

public class k
{
  public static boolean a = true;
  
  /* Error */
  private static Uri a(String paramString, int paramInt)
  {
    // Byte code:
    //   0: aconst_null
    //   1: astore_3
    //   2: invokestatic 19	com/estrongs/android/pop/FexApplication:a	()Lcom/estrongs/android/pop/FexApplication;
    //   5: invokevirtual 23	com/estrongs/android/pop/FexApplication:getContentResolver	()Landroid/content/ContentResolver;
    //   8: astore 9
    //   10: new 25	java/lang/StringBuilder
    //   13: dup
    //   14: invokespecial 28	java/lang/StringBuilder:<init>	()V
    //   17: aload_0
    //   18: invokevirtual 32	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   21: ldc 34
    //   23: invokevirtual 32	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   26: aload_0
    //   27: invokevirtual 40	java/lang/String:hashCode	()I
    //   30: invokevirtual 43	java/lang/StringBuilder:append	(I)Ljava/lang/StringBuilder;
    //   33: invokevirtual 47	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   36: astore 10
    //   38: ldc 49
    //   40: invokestatic 55	android/net/Uri:parse	(Ljava/lang/String;)Landroid/net/Uri;
    //   43: astore 11
    //   45: new 25	java/lang/StringBuilder
    //   48: dup
    //   49: invokespecial 28	java/lang/StringBuilder:<init>	()V
    //   52: ldc 57
    //   54: invokevirtual 32	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   57: iload_1
    //   58: invokevirtual 43	java/lang/StringBuilder:append	(I)Ljava/lang/StringBuilder;
    //   61: invokevirtual 47	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   64: invokestatic 55	android/net/Uri:parse	(Ljava/lang/String;)Landroid/net/Uri;
    //   67: astore 8
    //   69: aload 9
    //   71: aload 8
    //   73: iconst_1
    //   74: anewarray 36	java/lang/String
    //   77: dup
    //   78: iconst_0
    //   79: ldc 59
    //   81: aastore
    //   82: aconst_null
    //   83: aconst_null
    //   84: aconst_null
    //   85: invokevirtual 65	android/content/ContentResolver:query	(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    //   88: astore 5
    //   90: aload 5
    //   92: ifnull +31 -> 123
    //   95: aload 8
    //   97: astore_0
    //   98: aload 5
    //   100: astore 4
    //   102: aload 5
    //   104: astore 6
    //   106: aload 8
    //   108: astore_3
    //   109: aload 5
    //   111: astore 7
    //   113: aload 5
    //   115: invokeinterface 70 1 0
    //   120: ifne +169 -> 289
    //   123: aload 5
    //   125: astore 6
    //   127: aload 8
    //   129: astore_3
    //   130: aload 5
    //   132: astore 7
    //   134: new 72	android/content/ContentValues
    //   137: dup
    //   138: invokespecial 73	android/content/ContentValues:<init>	()V
    //   141: astore_0
    //   142: aload 5
    //   144: astore 6
    //   146: aload 8
    //   148: astore_3
    //   149: aload 5
    //   151: astore 7
    //   153: aload_0
    //   154: ldc 59
    //   156: aload 10
    //   158: invokevirtual 77	android/content/ContentValues:put	(Ljava/lang/String;Ljava/lang/String;)V
    //   161: aload 5
    //   163: astore 6
    //   165: aload 8
    //   167: astore_3
    //   168: aload 5
    //   170: astore 7
    //   172: aload_0
    //   173: ldc 79
    //   175: iload_1
    //   176: invokestatic 85	java/lang/Integer:valueOf	(I)Ljava/lang/Integer;
    //   179: invokevirtual 88	android/content/ContentValues:put	(Ljava/lang/String;Ljava/lang/Integer;)V
    //   182: aload 5
    //   184: astore 6
    //   186: aload 8
    //   188: astore_3
    //   189: aload 5
    //   191: astore 7
    //   193: aload 9
    //   195: aload 11
    //   197: aload_0
    //   198: invokevirtual 92	android/content/ContentResolver:insert	(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    //   201: astore_0
    //   202: aload 5
    //   204: ifnull +20 -> 224
    //   207: aload 5
    //   209: astore 6
    //   211: aload_0
    //   212: astore_3
    //   213: aload 5
    //   215: astore 7
    //   217: aload 5
    //   219: invokeinterface 95 1 0
    //   224: aload 5
    //   226: astore 6
    //   228: aload_0
    //   229: astore_3
    //   230: aload 5
    //   232: astore 7
    //   234: aload 9
    //   236: aload_0
    //   237: iconst_1
    //   238: anewarray 36	java/lang/String
    //   241: dup
    //   242: iconst_0
    //   243: ldc 59
    //   245: aastore
    //   246: aconst_null
    //   247: aconst_null
    //   248: aconst_null
    //   249: invokevirtual 65	android/content/ContentResolver:query	(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    //   252: astore 4
    //   254: aload 4
    //   256: ifnull +15 -> 271
    //   259: aload 4
    //   261: invokeinterface 70 1 0
    //   266: istore_1
    //   267: iload_1
    //   268: ifne +21 -> 289
    //   271: aload 4
    //   273: ifnull +10 -> 283
    //   276: aload 4
    //   278: invokeinterface 95 1 0
    //   283: aconst_null
    //   284: astore 5
    //   286: aload 5
    //   288: areturn
    //   289: aload 4
    //   291: astore 6
    //   293: aload_0
    //   294: astore_3
    //   295: aload 4
    //   297: astore 7
    //   299: aload 4
    //   301: invokeinterface 99 1 0
    //   306: pop
    //   307: aload 4
    //   309: astore 6
    //   311: aload_0
    //   312: astore_3
    //   313: aload 4
    //   315: astore 7
    //   317: aload 10
    //   319: aload 4
    //   321: iconst_0
    //   322: invokeinterface 103 2 0
    //   327: invokevirtual 107	java/lang/String:equals	(Ljava/lang/Object;)Z
    //   330: istore_2
    //   331: iload_2
    //   332: ifeq +20 -> 352
    //   335: aload_0
    //   336: astore 5
    //   338: aload 4
    //   340: ifnull -54 -> 286
    //   343: aload 4
    //   345: invokeinterface 95 1 0
    //   350: aload_0
    //   351: areturn
    //   352: aload 4
    //   354: astore 6
    //   356: aload_0
    //   357: astore_3
    //   358: aload 4
    //   360: astore 7
    //   362: new 72	android/content/ContentValues
    //   365: dup
    //   366: invokespecial 73	android/content/ContentValues:<init>	()V
    //   369: astore 5
    //   371: aload 4
    //   373: astore 6
    //   375: aload_0
    //   376: astore_3
    //   377: aload 4
    //   379: astore 7
    //   381: aload 5
    //   383: ldc 59
    //   385: aload 10
    //   387: invokevirtual 77	android/content/ContentValues:put	(Ljava/lang/String;Ljava/lang/String;)V
    //   390: aload 4
    //   392: astore 6
    //   394: aload_0
    //   395: astore_3
    //   396: aload 4
    //   398: astore 7
    //   400: aload 9
    //   402: aload_0
    //   403: aload 5
    //   405: aconst_null
    //   406: aconst_null
    //   407: invokevirtual 111	android/content/ContentResolver:update	(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    //   410: pop
    //   411: aload 4
    //   413: astore 6
    //   415: aload_0
    //   416: astore_3
    //   417: aload 4
    //   419: astore 7
    //   421: aload 4
    //   423: invokeinterface 95 1 0
    //   428: aload 4
    //   430: astore 6
    //   432: aload_0
    //   433: astore_3
    //   434: aload 4
    //   436: astore 7
    //   438: aload 9
    //   440: aload_0
    //   441: iconst_1
    //   442: anewarray 36	java/lang/String
    //   445: dup
    //   446: iconst_0
    //   447: ldc 59
    //   449: aastore
    //   450: aconst_null
    //   451: aconst_null
    //   452: aconst_null
    //   453: invokevirtual 65	android/content/ContentResolver:query	(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    //   456: astore 4
    //   458: aload 4
    //   460: ifnull +15 -> 475
    //   463: aload 4
    //   465: invokeinterface 70 1 0
    //   470: istore_1
    //   471: iload_1
    //   472: ifne +17 -> 489
    //   475: aload 4
    //   477: ifnull +10 -> 487
    //   480: aload 4
    //   482: invokeinterface 95 1 0
    //   487: aconst_null
    //   488: areturn
    //   489: aload 4
    //   491: invokeinterface 99 1 0
    //   496: pop
    //   497: aload 10
    //   499: aload 4
    //   501: iconst_0
    //   502: invokeinterface 103 2 0
    //   507: invokevirtual 107	java/lang/String:equals	(Ljava/lang/Object;)Z
    //   510: istore_2
    //   511: iload_2
    //   512: ifne +17 -> 529
    //   515: aload 4
    //   517: ifnull +10 -> 527
    //   520: aload 4
    //   522: invokeinterface 95 1 0
    //   527: aconst_null
    //   528: areturn
    //   529: aload_0
    //   530: astore 5
    //   532: aload 4
    //   534: ifnull -248 -> 286
    //   537: aload 4
    //   539: invokeinterface 95 1 0
    //   544: aload_0
    //   545: areturn
    //   546: astore_0
    //   547: aload 8
    //   549: astore_0
    //   550: aload_0
    //   551: astore 5
    //   553: aload_3
    //   554: ifnull -268 -> 286
    //   557: aload_3
    //   558: invokeinterface 95 1 0
    //   563: aload_0
    //   564: areturn
    //   565: astore_0
    //   566: aconst_null
    //   567: astore_3
    //   568: aload_3
    //   569: ifnull +9 -> 578
    //   572: aload_3
    //   573: invokeinterface 95 1 0
    //   578: aload_0
    //   579: athrow
    //   580: astore_0
    //   581: aload 6
    //   583: astore_3
    //   584: goto -16 -> 568
    //   587: astore_0
    //   588: aload 4
    //   590: astore_3
    //   591: goto -23 -> 568
    //   594: astore_0
    //   595: aload 4
    //   597: astore_3
    //   598: goto -30 -> 568
    //   601: astore_0
    //   602: aload_3
    //   603: astore_0
    //   604: aload 7
    //   606: astore_3
    //   607: goto -57 -> 550
    //   610: astore_3
    //   611: aload 4
    //   613: astore_3
    //   614: goto -64 -> 550
    //   617: astore_3
    //   618: aload 4
    //   620: astore_3
    //   621: goto -71 -> 550
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	624	0	paramString	String
    //   0	624	1	paramInt	int
    //   330	182	2	bool	boolean
    //   1	606	3	localObject1	Object
    //   610	1	3	localException1	Exception
    //   613	1	3	localObject2	Object
    //   617	1	3	localException2	Exception
    //   620	1	3	localObject3	Object
    //   100	519	4	localObject4	Object
    //   88	464	5	localObject5	Object
    //   104	478	6	localObject6	Object
    //   111	494	7	localObject7	Object
    //   67	481	8	localUri1	Uri
    //   8	431	9	localContentResolver	ContentResolver
    //   36	462	10	str	String
    //   43	153	11	localUri2	Uri
    // Exception table:
    //   from	to	target	type
    //   69	90	546	java/lang/Exception
    //   69	90	565	finally
    //   113	123	580	finally
    //   134	142	580	finally
    //   153	161	580	finally
    //   172	182	580	finally
    //   193	202	580	finally
    //   217	224	580	finally
    //   234	254	580	finally
    //   299	307	580	finally
    //   317	331	580	finally
    //   362	371	580	finally
    //   381	390	580	finally
    //   400	411	580	finally
    //   421	428	580	finally
    //   438	458	580	finally
    //   259	267	587	finally
    //   463	471	594	finally
    //   489	511	594	finally
    //   113	123	601	java/lang/Exception
    //   134	142	601	java/lang/Exception
    //   153	161	601	java/lang/Exception
    //   172	182	601	java/lang/Exception
    //   193	202	601	java/lang/Exception
    //   217	224	601	java/lang/Exception
    //   234	254	601	java/lang/Exception
    //   299	307	601	java/lang/Exception
    //   317	331	601	java/lang/Exception
    //   362	371	601	java/lang/Exception
    //   381	390	601	java/lang/Exception
    //   400	411	601	java/lang/Exception
    //   421	428	601	java/lang/Exception
    //   438	458	601	java/lang/Exception
    //   259	267	610	java/lang/Exception
    //   463	471	617	java/lang/Exception
    //   489	511	617	java/lang/Exception
  }
  
  /* Error */
  public static java.io.OutputStream a(String paramString, boolean paramBoolean)
  {
    // Byte code:
    //   0: getstatic 10	com/estrongs/fs/impl/local/k:a	Z
    //   3: ifne +5 -> 8
    //   6: aconst_null
    //   7: areturn
    //   8: invokestatic 19	com/estrongs/android/pop/FexApplication:a	()Lcom/estrongs/android/pop/FexApplication;
    //   11: invokevirtual 23	com/estrongs/android/pop/FexApplication:getContentResolver	()Landroid/content/ContentResolver;
    //   14: astore 4
    //   16: new 72	android/content/ContentValues
    //   19: dup
    //   20: invokespecial 73	android/content/ContentValues:<init>	()V
    //   23: astore 5
    //   25: aconst_null
    //   26: ldc 114
    //   28: ldc 116
    //   30: iconst_1
    //   31: anewarray 4	java/lang/Object
    //   34: dup
    //   35: iconst_0
    //   36: ldc 118
    //   38: aastore
    //   39: invokestatic 123	com/estrongs/android/util/g:a	(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;
    //   42: astore_3
    //   43: aload_3
    //   44: ifnonnull +15 -> 59
    //   47: iconst_0
    //   48: ifeq -42 -> 6
    //   51: new 125	java/lang/NullPointerException
    //   54: dup
    //   55: invokespecial 126	java/lang/NullPointerException:<init>	()V
    //   58: athrow
    //   59: aload_3
    //   60: checkcast 51	android/net/Uri
    //   63: astore 6
    //   65: aload 4
    //   67: aload 6
    //   69: iconst_1
    //   70: anewarray 36	java/lang/String
    //   73: dup
    //   74: iconst_0
    //   75: ldc -128
    //   77: aastore
    //   78: ldc -126
    //   80: iconst_1
    //   81: anewarray 36	java/lang/String
    //   84: dup
    //   85: iconst_0
    //   86: aload_0
    //   87: aastore
    //   88: aconst_null
    //   89: invokevirtual 65	android/content/ContentResolver:query	(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    //   92: astore_3
    //   93: aload_3
    //   94: ifnull +76 -> 170
    //   97: aload_3
    //   98: invokeinterface 70 1 0
    //   103: ifle +67 -> 170
    //   106: aload_3
    //   107: invokeinterface 99 1 0
    //   112: pop
    //   113: aload_3
    //   114: iconst_0
    //   115: invokeinterface 134 2 0
    //   120: istore_2
    //   121: iload_2
    //   122: ifle +190 -> 312
    //   125: aload 6
    //   127: iload_2
    //   128: i2l
    //   129: invokestatic 140	android/content/ContentUris:withAppendedId	(Landroid/net/Uri;J)Landroid/net/Uri;
    //   132: astore_0
    //   133: aload_0
    //   134: ifnull +103 -> 237
    //   137: iload_1
    //   138: ifeq +84 -> 222
    //   141: aload 4
    //   143: aload_0
    //   144: ldc -114
    //   146: invokevirtual 146	android/content/ContentResolver:openOutputStream	(Landroid/net/Uri;Ljava/lang/String;)Ljava/io/OutputStream;
    //   149: astore_0
    //   150: aload_0
    //   151: ifnull +86 -> 237
    //   154: iconst_1
    //   155: putstatic 10	com/estrongs/fs/impl/local/k:a	Z
    //   158: aload_3
    //   159: ifnull +9 -> 168
    //   162: aload_3
    //   163: invokeinterface 95 1 0
    //   168: aload_0
    //   169: areturn
    //   170: aload 5
    //   172: ldc 59
    //   174: aload_0
    //   175: invokevirtual 77	android/content/ContentValues:put	(Ljava/lang/String;Ljava/lang/String;)V
    //   178: aload 5
    //   180: ldc -108
    //   182: aload_0
    //   183: invokestatic 154	com/estrongs/android/util/ap:d	(Ljava/lang/String;)Ljava/lang/String;
    //   186: invokevirtual 77	android/content/ContentValues:put	(Ljava/lang/String;Ljava/lang/String;)V
    //   189: aload 5
    //   191: ldc -100
    //   193: iconst_0
    //   194: invokestatic 85	java/lang/Integer:valueOf	(I)Ljava/lang/Integer;
    //   197: invokevirtual 88	android/content/ContentValues:put	(Ljava/lang/String;Ljava/lang/Integer;)V
    //   200: aload 5
    //   202: ldc -98
    //   204: ldc -96
    //   206: invokevirtual 77	android/content/ContentValues:put	(Ljava/lang/String;Ljava/lang/String;)V
    //   209: aload 4
    //   211: aload 6
    //   213: aload 5
    //   215: invokevirtual 92	android/content/ContentResolver:insert	(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    //   218: astore_0
    //   219: goto -86 -> 133
    //   222: aload 4
    //   224: aload_0
    //   225: invokevirtual 163	android/content/ContentResolver:openOutputStream	(Landroid/net/Uri;)Ljava/io/OutputStream;
    //   228: astore_0
    //   229: goto -79 -> 150
    //   232: astore_0
    //   233: aload_0
    //   234: invokevirtual 166	java/lang/Exception:printStackTrace	()V
    //   237: aload_3
    //   238: ifnull +9 -> 247
    //   241: aload_3
    //   242: invokeinterface 95 1 0
    //   247: iconst_0
    //   248: putstatic 10	com/estrongs/fs/impl/local/k:a	Z
    //   251: aconst_null
    //   252: areturn
    //   253: astore_3
    //   254: aconst_null
    //   255: astore_0
    //   256: aload_3
    //   257: invokevirtual 166	java/lang/Exception:printStackTrace	()V
    //   260: aload_0
    //   261: ifnull -14 -> 247
    //   264: aload_0
    //   265: invokeinterface 95 1 0
    //   270: goto -23 -> 247
    //   273: astore_0
    //   274: aconst_null
    //   275: astore_3
    //   276: aload_3
    //   277: ifnull +9 -> 286
    //   280: aload_3
    //   281: invokeinterface 95 1 0
    //   286: aload_0
    //   287: athrow
    //   288: astore_0
    //   289: goto -13 -> 276
    //   292: astore 4
    //   294: aload_0
    //   295: astore_3
    //   296: aload 4
    //   298: astore_0
    //   299: goto -23 -> 276
    //   302: astore 4
    //   304: aload_3
    //   305: astore_0
    //   306: aload 4
    //   308: astore_3
    //   309: goto -53 -> 256
    //   312: aconst_null
    //   313: astore_0
    //   314: goto -181 -> 133
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	317	0	paramString	String
    //   0	317	1	paramBoolean	boolean
    //   120	8	2	i	int
    //   42	200	3	localObject1	Object
    //   253	4	3	localException1	Exception
    //   275	34	3	localObject2	Object
    //   14	209	4	localContentResolver	ContentResolver
    //   292	5	4	localObject3	Object
    //   302	5	4	localException2	Exception
    //   23	191	5	localContentValues	ContentValues
    //   63	149	6	localUri	Uri
    // Exception table:
    //   from	to	target	type
    //   141	150	232	java/lang/Exception
    //   154	158	232	java/lang/Exception
    //   222	229	232	java/lang/Exception
    //   8	43	253	java/lang/Exception
    //   59	93	253	java/lang/Exception
    //   8	43	273	finally
    //   59	93	273	finally
    //   97	121	288	finally
    //   125	133	288	finally
    //   141	150	288	finally
    //   154	158	288	finally
    //   170	219	288	finally
    //   222	229	288	finally
    //   233	237	288	finally
    //   256	260	292	finally
    //   97	121	302	java/lang/Exception
    //   125	133	302	java/lang/Exception
    //   170	219	302	java/lang/Exception
    //   233	237	302	java/lang/Exception
  }
  
  /* Error */
  public static void a()
  {
    // Byte code:
    //   0: invokestatic 19	com/estrongs/android/pop/FexApplication:a	()Lcom/estrongs/android/pop/FexApplication;
    //   3: invokevirtual 23	com/estrongs/android/pop/FexApplication:getContentResolver	()Landroid/content/ContentResolver;
    //   6: astore_3
    //   7: new 25	java/lang/StringBuilder
    //   10: dup
    //   11: invokespecial 28	java/lang/StringBuilder:<init>	()V
    //   14: invokestatic 171	com/estrongs/android/pop/b:b	()Ljava/lang/String;
    //   17: invokevirtual 32	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   20: ldc -83
    //   22: invokevirtual 32	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   25: ldc 34
    //   27: invokevirtual 32	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   30: ldc -81
    //   32: invokevirtual 32	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   35: invokevirtual 47	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   38: astore_2
    //   39: ldc -79
    //   41: invokestatic 55	android/net/Uri:parse	(Ljava/lang/String;)Landroid/net/Uri;
    //   44: astore 4
    //   46: aload_3
    //   47: aload 4
    //   49: iconst_3
    //   50: anewarray 36	java/lang/String
    //   53: dup
    //   54: iconst_0
    //   55: ldc -128
    //   57: aastore
    //   58: dup
    //   59: iconst_1
    //   60: ldc 79
    //   62: aastore
    //   63: dup
    //   64: iconst_2
    //   65: ldc -77
    //   67: aastore
    //   68: ldc -126
    //   70: iconst_1
    //   71: anewarray 36	java/lang/String
    //   74: dup
    //   75: iconst_0
    //   76: aload_2
    //   77: aastore
    //   78: aconst_null
    //   79: invokevirtual 65	android/content/ContentResolver:query	(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    //   82: astore_2
    //   83: aload_2
    //   84: ifnull +14 -> 98
    //   87: aload_2
    //   88: invokeinterface 70 1 0
    //   93: istore_0
    //   94: iload_0
    //   95: ifne +14 -> 109
    //   98: aload_2
    //   99: ifnull +9 -> 108
    //   102: aload_2
    //   103: invokeinterface 95 1 0
    //   108: return
    //   109: aload_2
    //   110: invokeinterface 99 1 0
    //   115: pop
    //   116: aload_2
    //   117: iconst_0
    //   118: invokeinterface 134 2 0
    //   123: istore_0
    //   124: aload_2
    //   125: iconst_1
    //   126: invokeinterface 134 2 0
    //   131: istore_1
    //   132: aload_3
    //   133: aload 4
    //   135: new 25	java/lang/StringBuilder
    //   138: dup
    //   139: invokespecial 28	java/lang/StringBuilder:<init>	()V
    //   142: ldc -75
    //   144: invokevirtual 32	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   147: iload_0
    //   148: invokevirtual 43	java/lang/StringBuilder:append	(I)Ljava/lang/StringBuilder;
    //   151: invokevirtual 47	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   154: aconst_null
    //   155: invokevirtual 185	android/content/ContentResolver:delete	(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    //   158: pop
    //   159: iload_1
    //   160: ifle +50 -> 210
    //   163: aload_3
    //   164: new 25	java/lang/StringBuilder
    //   167: dup
    //   168: invokespecial 28	java/lang/StringBuilder:<init>	()V
    //   171: ldc 57
    //   173: invokevirtual 32	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   176: iload_1
    //   177: invokevirtual 43	java/lang/StringBuilder:append	(I)Ljava/lang/StringBuilder;
    //   180: invokevirtual 47	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   183: invokestatic 55	android/net/Uri:parse	(Ljava/lang/String;)Landroid/net/Uri;
    //   186: new 25	java/lang/StringBuilder
    //   189: dup
    //   190: invokespecial 28	java/lang/StringBuilder:<init>	()V
    //   193: ldc -69
    //   195: invokevirtual 32	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   198: iload_1
    //   199: invokevirtual 43	java/lang/StringBuilder:append	(I)Ljava/lang/StringBuilder;
    //   202: invokevirtual 47	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   205: aconst_null
    //   206: invokevirtual 185	android/content/ContentResolver:delete	(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    //   209: pop
    //   210: aload_2
    //   211: ifnull -103 -> 108
    //   214: aload_2
    //   215: invokeinterface 95 1 0
    //   220: return
    //   221: astore_3
    //   222: aconst_null
    //   223: astore_2
    //   224: aload_3
    //   225: invokevirtual 166	java/lang/Exception:printStackTrace	()V
    //   228: aload_2
    //   229: ifnull -121 -> 108
    //   232: aload_2
    //   233: invokeinterface 95 1 0
    //   238: return
    //   239: astore_3
    //   240: aconst_null
    //   241: astore_2
    //   242: aload_2
    //   243: ifnull +9 -> 252
    //   246: aload_2
    //   247: invokeinterface 95 1 0
    //   252: aload_3
    //   253: athrow
    //   254: astore_3
    //   255: goto -13 -> 242
    //   258: astore_3
    //   259: goto -17 -> 242
    //   262: astore_3
    //   263: goto -39 -> 224
    //   266: astore 4
    //   268: goto -109 -> 159
    // Local variable table:
    //   start	length	slot	name	signature
    //   93	55	0	i	int
    //   131	68	1	j	int
    //   38	209	2	localObject1	Object
    //   6	158	3	localContentResolver	ContentResolver
    //   221	4	3	localException1	Exception
    //   239	14	3	localObject2	Object
    //   254	1	3	localObject3	Object
    //   258	1	3	localObject4	Object
    //   262	1	3	localException2	Exception
    //   44	90	4	localUri	Uri
    //   266	1	4	localException3	Exception
    // Exception table:
    //   from	to	target	type
    //   46	83	221	java/lang/Exception
    //   46	83	239	finally
    //   87	94	254	finally
    //   109	132	254	finally
    //   132	159	254	finally
    //   163	210	254	finally
    //   224	228	258	finally
    //   87	94	262	java/lang/Exception
    //   109	132	262	java/lang/Exception
    //   163	210	262	java/lang/Exception
    //   132	159	266	java/lang/Exception
  }
  
  /* Error */
  private static boolean a(String paramString)
  {
    // Byte code:
    //   0: getstatic 10	com/estrongs/fs/impl/local/k:a	Z
    //   3: ifne +5 -> 8
    //   6: iconst_0
    //   7: ireturn
    //   8: invokestatic 190	com/estrongs/fs/impl/local/k:b	()Z
    //   11: ifne +5 -> 16
    //   14: iconst_0
    //   15: ireturn
    //   16: aload_0
    //   17: invokestatic 193	com/estrongs/android/util/ap:bV	(Ljava/lang/String;)Ljava/lang/String;
    //   20: astore 4
    //   22: aload 4
    //   24: astore_3
    //   25: aload 4
    //   27: ldc 34
    //   29: invokevirtual 196	java/lang/String:endsWith	(Ljava/lang/String;)Z
    //   32: ifeq +17 -> 49
    //   35: aload 4
    //   37: iconst_0
    //   38: aload 4
    //   40: invokevirtual 199	java/lang/String:length	()I
    //   43: iconst_1
    //   44: isub
    //   45: invokevirtual 203	java/lang/String:substring	(II)Ljava/lang/String;
    //   48: astore_3
    //   49: invokestatic 206	com/estrongs/fs/impl/local/k:c	()I
    //   52: istore_1
    //   53: iload_1
    //   54: iconst_m1
    //   55: if_icmpne +5 -> 60
    //   58: iconst_0
    //   59: ireturn
    //   60: aload_3
    //   61: iload_1
    //   62: invokestatic 208	com/estrongs/fs/impl/local/k:a	(Ljava/lang/String;I)Landroid/net/Uri;
    //   65: astore 4
    //   67: aload 4
    //   69: ifnonnull +5 -> 74
    //   72: iconst_0
    //   73: ireturn
    //   74: invokestatic 19	com/estrongs/android/pop/FexApplication:a	()Lcom/estrongs/android/pop/FexApplication;
    //   77: invokevirtual 23	com/estrongs/android/pop/FexApplication:getContentResolver	()Landroid/content/ContentResolver;
    //   80: astore 5
    //   82: aload 5
    //   84: aload 4
    //   86: ldc -46
    //   88: invokevirtual 214	android/content/ContentResolver:openFileDescriptor	(Landroid/net/Uri;Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;
    //   91: astore 4
    //   93: aload 4
    //   95: ifnull +8 -> 103
    //   98: aload 4
    //   100: invokevirtual 217	android/os/ParcelFileDescriptor:close	()V
    //   103: new 219	java/io/File
    //   106: dup
    //   107: aload_0
    //   108: invokespecial 222	java/io/File:<init>	(Ljava/lang/String;)V
    //   111: invokevirtual 225	java/io/File:exists	()Z
    //   114: istore_2
    //   115: iload_2
    //   116: ifeq +33 -> 149
    //   119: new 25	java/lang/StringBuilder
    //   122: dup
    //   123: invokespecial 28	java/lang/StringBuilder:<init>	()V
    //   126: aload_3
    //   127: invokevirtual 32	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   130: ldc 34
    //   132: invokevirtual 32	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   135: aload_3
    //   136: invokevirtual 40	java/lang/String:hashCode	()I
    //   139: invokevirtual 43	java/lang/StringBuilder:append	(I)Ljava/lang/StringBuilder;
    //   142: invokevirtual 47	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   145: invokestatic 227	com/estrongs/fs/impl/local/k:c	(Ljava/lang/String;)Z
    //   148: pop
    //   149: iload_2
    //   150: ireturn
    //   151: astore_0
    //   152: aload_0
    //   153: athrow
    //   154: astore_0
    //   155: iconst_0
    //   156: ireturn
    //   157: astore 4
    //   159: goto -56 -> 103
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	162	0	paramString	String
    //   52	10	1	i	int
    //   114	36	2	bool	boolean
    //   24	112	3	localObject1	Object
    //   20	79	4	localObject2	Object
    //   157	1	4	localException	Exception
    //   80	3	5	localContentResolver	ContentResolver
    // Exception table:
    //   from	to	target	type
    //   49	53	151	finally
    //   60	67	151	finally
    //   74	82	151	finally
    //   82	93	151	finally
    //   98	103	151	finally
    //   103	115	151	finally
    //   119	149	151	finally
    //   49	53	154	java/lang/Exception
    //   60	67	154	java/lang/Exception
    //   74	82	154	java/lang/Exception
    //   103	115	154	java/lang/Exception
    //   119	149	154	java/lang/Exception
    //   82	93	157	java/lang/Exception
    //   98	103	157	java/lang/Exception
  }
  
  /* Error */
  private static boolean b()
  {
    // Byte code:
    //   0: new 219	java/io/File
    //   3: dup
    //   4: new 25	java/lang/StringBuilder
    //   7: dup
    //   8: invokespecial 28	java/lang/StringBuilder:<init>	()V
    //   11: getstatic 232	com/estrongs/android/pop/a:b	Ljava/lang/String;
    //   14: invokevirtual 32	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   17: ldc 34
    //   19: invokevirtual 32	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   22: ldc -81
    //   24: invokevirtual 32	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   27: invokevirtual 47	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   30: invokespecial 222	java/io/File:<init>	(Ljava/lang/String;)V
    //   33: astore_1
    //   34: new 219	java/io/File
    //   37: dup
    //   38: new 25	java/lang/StringBuilder
    //   41: dup
    //   42: invokespecial 28	java/lang/StringBuilder:<init>	()V
    //   45: getstatic 232	com/estrongs/android/pop/a:b	Ljava/lang/String;
    //   48: invokevirtual 32	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   51: ldc -22
    //   53: invokevirtual 32	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   56: invokevirtual 47	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   59: invokespecial 222	java/io/File:<init>	(Ljava/lang/String;)V
    //   62: astore_0
    //   63: aload_1
    //   64: invokevirtual 225	java/io/File:exists	()Z
    //   67: ifne +41 -> 108
    //   70: invokestatic 19	com/estrongs/android/pop/FexApplication:a	()Lcom/estrongs/android/pop/FexApplication;
    //   73: invokevirtual 238	com/estrongs/android/pop/FexApplication:getResources	()Landroid/content/res/Resources;
    //   76: ldc -17
    //   78: invokevirtual 245	android/content/res/Resources:openRawResource	(I)Ljava/io/InputStream;
    //   81: astore_2
    //   82: aload_2
    //   83: aload_1
    //   84: invokevirtual 248	java/io/File:getAbsolutePath	()Ljava/lang/String;
    //   87: iconst_m1
    //   88: invokestatic 253	com/estrongs/android/util/bk:a	(Ljava/io/InputStream;Ljava/lang/String;I)Z
    //   91: ifne +13 -> 104
    //   94: aload_2
    //   95: ifnull +62 -> 157
    //   98: aload_2
    //   99: invokevirtual 256	java/io/InputStream:close	()V
    //   102: iconst_0
    //   103: ireturn
    //   104: aload_2
    //   105: invokevirtual 256	java/io/InputStream:close	()V
    //   108: aload_0
    //   109: invokevirtual 225	java/io/File:exists	()Z
    //   112: ifne +42 -> 154
    //   115: invokestatic 19	com/estrongs/android/pop/FexApplication:a	()Lcom/estrongs/android/pop/FexApplication;
    //   118: invokevirtual 238	com/estrongs/android/pop/FexApplication:getResources	()Landroid/content/res/Resources;
    //   121: ldc_w 257
    //   124: invokevirtual 245	android/content/res/Resources:openRawResource	(I)Ljava/io/InputStream;
    //   127: astore_1
    //   128: aload_1
    //   129: aload_0
    //   130: invokevirtual 248	java/io/File:getAbsolutePath	()Ljava/lang/String;
    //   133: iconst_m1
    //   134: invokestatic 253	com/estrongs/android/util/bk:a	(Ljava/io/InputStream;Ljava/lang/String;I)Z
    //   137: ifne +13 -> 150
    //   140: aload_1
    //   141: ifnull +16 -> 157
    //   144: aload_1
    //   145: invokevirtual 256	java/io/InputStream:close	()V
    //   148: iconst_0
    //   149: ireturn
    //   150: aload_1
    //   151: invokevirtual 256	java/io/InputStream:close	()V
    //   154: iconst_1
    //   155: ireturn
    //   156: astore_0
    //   157: iconst_0
    //   158: ireturn
    //   159: astore_0
    //   160: iconst_0
    //   161: ireturn
    // Local variable table:
    //   start	length	slot	name	signature
    //   62	68	0	localFile	File
    //   156	1	0	localException1	Exception
    //   159	1	0	localException2	Exception
    //   33	118	1	localObject	Object
    //   81	24	2	localInputStream	java.io.InputStream
    // Exception table:
    //   from	to	target	type
    //   70	94	156	java/lang/Exception
    //   98	102	156	java/lang/Exception
    //   104	108	156	java/lang/Exception
    //   115	140	159	java/lang/Exception
    //   144	148	159	java/lang/Exception
    //   150	154	159	java/lang/Exception
  }
  
  private static boolean b(String paramString)
  {
    ContentResolver localContentResolver = FexApplication.a().getContentResolver();
    Uri localUri4 = MediaStore.Images.Media.EXTERNAL_CONTENT_URI;
    Uri localUri3 = MediaStore.Video.Media.EXTERNAL_CONTENT_URI;
    Uri localUri2;
    try
    {
      Uri localUri1 = (Uri)g.a(null, "android.provider.MediaStore$Files", "getContentUri", new String[] { "external" });
    }
    catch (Exception localException1)
    {
      for (;;)
      {
        try
        {
          i = localContentResolver.delete(localUri4, "_data=?", new String[] { paramString });
          if (i <= 0) {
            continue;
          }
          return true;
        }
        catch (Exception localException3)
        {
          try
          {
            int i = localContentResolver.delete(localUri3, "_data=?", new String[] { paramString });
            if (i <= 0) {
              continue;
            }
            return true;
          }
          catch (Exception localException2)
          {
            if (localUri2 == null) {
              break label114;
            }
          }
        }
        localException1 = localException1;
        localUri2 = null;
      }
    }
    try
    {
      localContentResolver.delete(localUri2, "_data=?", new String[] { paramString });
      label114:
      return false;
    }
    catch (Exception paramString)
    {
      for (;;) {}
    }
  }
  
  /* Error */
  public static boolean b(String paramString, boolean paramBoolean)
  {
    // Byte code:
    //   0: iconst_1
    //   1: istore_2
    //   2: iconst_1
    //   3: istore 4
    //   5: iconst_1
    //   6: istore 5
    //   8: iconst_1
    //   9: istore_3
    //   10: getstatic 10	com/estrongs/fs/impl/local/k:a	Z
    //   13: ifne +5 -> 18
    //   16: iconst_0
    //   17: ireturn
    //   18: iload_1
    //   19: ifne +24 -> 43
    //   22: aload_0
    //   23: iconst_0
    //   24: invokestatic 269	com/estrongs/fs/impl/local/k:a	(Ljava/lang/String;Z)Ljava/io/OutputStream;
    //   27: astore_0
    //   28: aload_0
    //   29: ifnull +366 -> 395
    //   32: iload 5
    //   34: istore_2
    //   35: aload_0
    //   36: invokevirtual 272	java/io/OutputStream:close	()V
    //   39: iload_3
    //   40: istore_1
    //   41: iload_1
    //   42: ireturn
    //   43: aload_0
    //   44: ldc 34
    //   46: invokevirtual 196	java/lang/String:endsWith	(Ljava/lang/String;)Z
    //   49: ifeq +148 -> 197
    //   52: new 25	java/lang/StringBuilder
    //   55: dup
    //   56: invokespecial 28	java/lang/StringBuilder:<init>	()V
    //   59: aload_0
    //   60: invokevirtual 32	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   63: aload_0
    //   64: invokevirtual 40	java/lang/String:hashCode	()I
    //   67: invokevirtual 43	java/lang/StringBuilder:append	(I)Ljava/lang/StringBuilder;
    //   70: ldc_w 274
    //   73: invokevirtual 32	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   76: invokevirtual 47	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   79: astore 6
    //   81: aload_0
    //   82: iconst_0
    //   83: aload_0
    //   84: invokevirtual 199	java/lang/String:length	()I
    //   87: iconst_1
    //   88: isub
    //   89: invokevirtual 203	java/lang/String:substring	(II)Ljava/lang/String;
    //   92: astore_0
    //   93: invokestatic 278	com/estrongs/android/pop/ac:a	()I
    //   96: bipush 18
    //   98: if_icmpge +292 -> 390
    //   101: invokestatic 19	com/estrongs/android/pop/FexApplication:a	()Lcom/estrongs/android/pop/FexApplication;
    //   104: invokevirtual 23	com/estrongs/android/pop/FexApplication:getContentResolver	()Landroid/content/ContentResolver;
    //   107: astore 7
    //   109: getstatic 263	android/provider/MediaStore$Images$Media:EXTERNAL_CONTENT_URI	Landroid/net/Uri;
    //   112: astore 8
    //   114: new 72	android/content/ContentValues
    //   117: dup
    //   118: invokespecial 73	android/content/ContentValues:<init>	()V
    //   121: astore 9
    //   123: aload 9
    //   125: ldc 59
    //   127: aload 6
    //   129: invokevirtual 77	android/content/ContentValues:put	(Ljava/lang/String;Ljava/lang/String;)V
    //   132: aload 7
    //   134: aload 8
    //   136: aload 9
    //   138: invokevirtual 92	android/content/ContentResolver:insert	(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    //   141: astore 6
    //   143: aload 6
    //   145: ifnull +245 -> 390
    //   148: aload 7
    //   150: aload 6
    //   152: aconst_null
    //   153: aconst_null
    //   154: invokevirtual 185	android/content/ContentResolver:delete	(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    //   157: pop
    //   158: iload_2
    //   159: istore_3
    //   160: iload_3
    //   161: istore_1
    //   162: aload_0
    //   163: ifnull -122 -> 41
    //   166: iload_3
    //   167: istore_2
    //   168: new 219	java/io/File
    //   171: dup
    //   172: aload_0
    //   173: invokespecial 222	java/io/File:<init>	(Ljava/lang/String;)V
    //   176: astore 6
    //   178: iload_3
    //   179: istore_2
    //   180: aload 6
    //   182: invokevirtual 225	java/io/File:exists	()Z
    //   185: ifne +101 -> 286
    //   188: iload_3
    //   189: istore_2
    //   190: aload_0
    //   191: invokestatic 280	com/estrongs/fs/impl/local/k:a	(Ljava/lang/String;)Z
    //   194: istore_1
    //   195: iload_1
    //   196: ireturn
    //   197: new 25	java/lang/StringBuilder
    //   200: dup
    //   201: invokespecial 28	java/lang/StringBuilder:<init>	()V
    //   204: aload_0
    //   205: invokevirtual 32	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   208: ldc 34
    //   210: invokevirtual 32	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   213: aload_0
    //   214: invokevirtual 40	java/lang/String:hashCode	()I
    //   217: invokevirtual 43	java/lang/StringBuilder:append	(I)Ljava/lang/StringBuilder;
    //   220: ldc_w 274
    //   223: invokevirtual 32	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   226: invokevirtual 47	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   229: astore 6
    //   231: goto -138 -> 93
    //   234: astore 6
    //   236: aload 6
    //   238: invokevirtual 166	java/lang/Exception:printStackTrace	()V
    //   241: iload_2
    //   242: istore_3
    //   243: goto -83 -> 160
    //   246: astore 6
    //   248: iload 4
    //   250: istore_3
    //   251: iload_3
    //   252: istore_1
    //   253: aload_0
    //   254: ifnull -213 -> 41
    //   257: iload_3
    //   258: istore_2
    //   259: new 219	java/io/File
    //   262: dup
    //   263: aload_0
    //   264: invokespecial 222	java/io/File:<init>	(Ljava/lang/String;)V
    //   267: astore 6
    //   269: iload_3
    //   270: istore_2
    //   271: aload 6
    //   273: invokevirtual 225	java/io/File:exists	()Z
    //   276: ifne +24 -> 300
    //   279: iload_3
    //   280: istore_2
    //   281: aload_0
    //   282: invokestatic 280	com/estrongs/fs/impl/local/k:a	(Ljava/lang/String;)Z
    //   285: ireturn
    //   286: iload_3
    //   287: istore_1
    //   288: iload_3
    //   289: istore_2
    //   290: aload 6
    //   292: invokevirtual 283	java/io/File:isDirectory	()Z
    //   295: ifne -254 -> 41
    //   298: iconst_0
    //   299: ireturn
    //   300: iload_3
    //   301: istore_2
    //   302: aload 6
    //   304: invokevirtual 283	java/io/File:isDirectory	()Z
    //   307: istore 4
    //   309: iload_3
    //   310: istore_1
    //   311: iload 4
    //   313: ifne -272 -> 41
    //   316: iconst_0
    //   317: ireturn
    //   318: astore 6
    //   320: iconst_0
    //   321: istore_1
    //   322: aload_0
    //   323: ifnull +34 -> 357
    //   326: new 219	java/io/File
    //   329: dup
    //   330: aload_0
    //   331: invokespecial 222	java/io/File:<init>	(Ljava/lang/String;)V
    //   334: astore 7
    //   336: aload 7
    //   338: invokevirtual 225	java/io/File:exists	()Z
    //   341: ifne +8 -> 349
    //   344: aload_0
    //   345: invokestatic 280	com/estrongs/fs/impl/local/k:a	(Ljava/lang/String;)Z
    //   348: ireturn
    //   349: aload 7
    //   351: invokevirtual 283	java/io/File:isDirectory	()Z
    //   354: ifeq -338 -> 16
    //   357: aload 6
    //   359: athrow
    //   360: astore_0
    //   361: goto -320 -> 41
    //   364: astore_0
    //   365: iconst_0
    //   366: istore_1
    //   367: goto -326 -> 41
    //   370: astore_0
    //   371: iload_2
    //   372: istore_1
    //   373: goto -332 -> 41
    //   376: astore 6
    //   378: iconst_1
    //   379: istore_1
    //   380: goto -58 -> 322
    //   383: astore 6
    //   385: iconst_0
    //   386: istore_3
    //   387: goto -136 -> 251
    //   390: iconst_0
    //   391: istore_3
    //   392: goto -232 -> 160
    //   395: iconst_0
    //   396: istore_1
    //   397: goto -356 -> 41
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	400	0	paramString	String
    //   0	400	1	paramBoolean	boolean
    //   1	371	2	bool1	boolean
    //   9	383	3	bool2	boolean
    //   3	309	4	bool3	boolean
    //   6	27	5	bool4	boolean
    //   79	151	6	localObject1	Object
    //   234	3	6	localException1	Exception
    //   246	1	6	localException2	Exception
    //   267	36	6	localFile	File
    //   318	40	6	localObject2	Object
    //   376	1	6	localObject3	Object
    //   383	1	6	localException3	Exception
    //   107	243	7	localObject4	Object
    //   112	23	8	localUri	Uri
    //   121	16	9	localContentValues	ContentValues
    // Exception table:
    //   from	to	target	type
    //   148	158	234	java/lang/Exception
    //   236	241	246	java/lang/Exception
    //   93	143	318	finally
    //   326	349	360	java/lang/Exception
    //   349	357	360	java/lang/Exception
    //   357	360	360	java/lang/Exception
    //   22	28	364	java/lang/Exception
    //   43	93	364	java/lang/Exception
    //   197	231	364	java/lang/Exception
    //   35	39	370	java/lang/Exception
    //   168	178	370	java/lang/Exception
    //   180	188	370	java/lang/Exception
    //   190	195	370	java/lang/Exception
    //   259	269	370	java/lang/Exception
    //   271	279	370	java/lang/Exception
    //   281	286	370	java/lang/Exception
    //   290	298	370	java/lang/Exception
    //   302	309	370	java/lang/Exception
    //   148	158	376	finally
    //   236	241	376	finally
    //   93	143	383	java/lang/Exception
  }
  
  /* Error */
  private static int c()
  {
    // Byte code:
    //   0: aconst_null
    //   1: astore 4
    //   3: invokestatic 19	com/estrongs/android/pop/FexApplication:a	()Lcom/estrongs/android/pop/FexApplication;
    //   6: invokevirtual 23	com/estrongs/android/pop/FexApplication:getContentResolver	()Landroid/content/ContentResolver;
    //   9: astore 6
    //   11: new 25	java/lang/StringBuilder
    //   14: dup
    //   15: invokespecial 28	java/lang/StringBuilder:<init>	()V
    //   18: invokestatic 171	com/estrongs/android/pop/b:b	()Ljava/lang/String;
    //   21: invokevirtual 32	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   24: ldc -83
    //   26: invokevirtual 32	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   29: ldc 34
    //   31: invokevirtual 32	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   34: ldc -81
    //   36: invokevirtual 32	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   39: invokevirtual 47	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   42: astore 7
    //   44: ldc -79
    //   46: invokestatic 55	android/net/Uri:parse	(Ljava/lang/String;)Landroid/net/Uri;
    //   49: astore 8
    //   51: aload 6
    //   53: aload 8
    //   55: iconst_3
    //   56: anewarray 36	java/lang/String
    //   59: dup
    //   60: iconst_0
    //   61: ldc -128
    //   63: aastore
    //   64: dup
    //   65: iconst_1
    //   66: ldc 79
    //   68: aastore
    //   69: dup
    //   70: iconst_2
    //   71: ldc -77
    //   73: aastore
    //   74: ldc -126
    //   76: iconst_1
    //   77: anewarray 36	java/lang/String
    //   80: dup
    //   81: iconst_0
    //   82: aload 7
    //   84: aastore
    //   85: aconst_null
    //   86: invokevirtual 65	android/content/ContentResolver:query	(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    //   89: astore_3
    //   90: aload_3
    //   91: ifnull +15 -> 106
    //   94: aload_3
    //   95: astore 4
    //   97: aload_3
    //   98: invokeinterface 70 1 0
    //   103: ifne +519 -> 622
    //   106: aload_3
    //   107: astore 4
    //   109: new 72	android/content/ContentValues
    //   112: dup
    //   113: invokespecial 73	android/content/ContentValues:<init>	()V
    //   116: astore 5
    //   118: aload_3
    //   119: astore 4
    //   121: aload 5
    //   123: ldc 59
    //   125: aload 7
    //   127: invokevirtual 77	android/content/ContentValues:put	(Ljava/lang/String;Ljava/lang/String;)V
    //   130: aload_3
    //   131: astore 4
    //   133: aload 5
    //   135: ldc -108
    //   137: ldc_w 285
    //   140: invokevirtual 77	android/content/ContentValues:put	(Ljava/lang/String;Ljava/lang/String;)V
    //   143: aload_3
    //   144: astore 4
    //   146: aload 5
    //   148: ldc -100
    //   150: sipush 1184
    //   153: invokestatic 85	java/lang/Integer:valueOf	(I)Ljava/lang/Integer;
    //   156: invokevirtual 88	android/content/ContentValues:put	(Ljava/lang/String;Ljava/lang/Integer;)V
    //   159: aload_3
    //   160: astore 4
    //   162: aload 5
    //   164: ldc -98
    //   166: ldc_w 287
    //   169: invokevirtual 77	android/content/ContentValues:put	(Ljava/lang/String;Ljava/lang/String;)V
    //   172: aload_3
    //   173: astore 4
    //   175: aload 5
    //   177: ldc_w 289
    //   180: iconst_1
    //   181: invokestatic 294	java/lang/Boolean:valueOf	(Z)Ljava/lang/Boolean;
    //   184: invokevirtual 297	android/content/ContentValues:put	(Ljava/lang/String;Ljava/lang/Boolean;)V
    //   187: aload_3
    //   188: astore 4
    //   190: aload 6
    //   192: aload 8
    //   194: aload 5
    //   196: invokevirtual 92	android/content/ContentResolver:insert	(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    //   199: pop
    //   200: aload_3
    //   201: ifnull +12 -> 213
    //   204: aload_3
    //   205: astore 4
    //   207: aload_3
    //   208: invokeinterface 95 1 0
    //   213: aload_3
    //   214: astore 4
    //   216: aload 6
    //   218: aload 8
    //   220: iconst_3
    //   221: anewarray 36	java/lang/String
    //   224: dup
    //   225: iconst_0
    //   226: ldc -128
    //   228: aastore
    //   229: dup
    //   230: iconst_1
    //   231: ldc 79
    //   233: aastore
    //   234: dup
    //   235: iconst_2
    //   236: ldc -77
    //   238: aastore
    //   239: ldc -126
    //   241: iconst_1
    //   242: anewarray 36	java/lang/String
    //   245: dup
    //   246: iconst_0
    //   247: aload 7
    //   249: aastore
    //   250: aconst_null
    //   251: invokevirtual 65	android/content/ContentResolver:query	(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    //   254: astore 5
    //   256: aload 5
    //   258: ifnull +15 -> 273
    //   261: aload 5
    //   263: invokeinterface 70 1 0
    //   268: istore_0
    //   269: iload_0
    //   270: ifne +17 -> 287
    //   273: aload 5
    //   275: ifnull +10 -> 285
    //   278: aload 5
    //   280: invokeinterface 95 1 0
    //   285: iconst_m1
    //   286: ireturn
    //   287: aload 5
    //   289: astore_3
    //   290: aload_3
    //   291: invokeinterface 99 1 0
    //   296: pop
    //   297: aload_3
    //   298: iconst_0
    //   299: invokeinterface 134 2 0
    //   304: istore_1
    //   305: aload_3
    //   306: iconst_1
    //   307: invokeinterface 134 2 0
    //   312: istore_0
    //   313: aload_3
    //   314: iconst_2
    //   315: invokeinterface 134 2 0
    //   320: istore_2
    //   321: iload_0
    //   322: ifeq +20 -> 342
    //   325: iload_2
    //   326: iconst_2
    //   327: if_icmpne +15 -> 342
    //   330: aload_3
    //   331: ifnull +9 -> 340
    //   334: aload_3
    //   335: invokeinterface 95 1 0
    //   340: iload_0
    //   341: ireturn
    //   342: new 72	android/content/ContentValues
    //   345: dup
    //   346: invokespecial 73	android/content/ContentValues:<init>	()V
    //   349: astore 4
    //   351: iload_0
    //   352: ifne +267 -> 619
    //   355: ldc_w 298
    //   358: istore_0
    //   359: aload 4
    //   361: ldc 79
    //   363: ldc_w 298
    //   366: invokestatic 85	java/lang/Integer:valueOf	(I)Ljava/lang/Integer;
    //   369: invokevirtual 88	android/content/ContentValues:put	(Ljava/lang/String;Ljava/lang/Integer;)V
    //   372: iload_2
    //   373: iconst_2
    //   374: if_icmpeq +14 -> 388
    //   377: aload 4
    //   379: ldc -77
    //   381: iconst_2
    //   382: invokestatic 85	java/lang/Integer:valueOf	(I)Ljava/lang/Integer;
    //   385: invokevirtual 88	android/content/ContentValues:put	(Ljava/lang/String;Ljava/lang/Integer;)V
    //   388: aload 6
    //   390: aload 8
    //   392: aload 4
    //   394: new 25	java/lang/StringBuilder
    //   397: dup
    //   398: invokespecial 28	java/lang/StringBuilder:<init>	()V
    //   401: ldc -75
    //   403: invokevirtual 32	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   406: iload_1
    //   407: invokevirtual 43	java/lang/StringBuilder:append	(I)Ljava/lang/StringBuilder;
    //   410: invokevirtual 47	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   413: aconst_null
    //   414: invokevirtual 111	android/content/ContentResolver:update	(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    //   417: pop
    //   418: aload_3
    //   419: invokeinterface 95 1 0
    //   424: aload 6
    //   426: aload 8
    //   428: iconst_3
    //   429: anewarray 36	java/lang/String
    //   432: dup
    //   433: iconst_0
    //   434: ldc -128
    //   436: aastore
    //   437: dup
    //   438: iconst_1
    //   439: ldc 79
    //   441: aastore
    //   442: dup
    //   443: iconst_2
    //   444: ldc -77
    //   446: aastore
    //   447: ldc -126
    //   449: iconst_1
    //   450: anewarray 36	java/lang/String
    //   453: dup
    //   454: iconst_0
    //   455: aload 7
    //   457: aastore
    //   458: aconst_null
    //   459: invokevirtual 65	android/content/ContentResolver:query	(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    //   462: astore 4
    //   464: aload 4
    //   466: astore_3
    //   467: aload_3
    //   468: astore 5
    //   470: aload_3
    //   471: invokeinterface 99 1 0
    //   476: pop
    //   477: aload_3
    //   478: astore 5
    //   480: aload_3
    //   481: iconst_1
    //   482: invokeinterface 134 2 0
    //   487: ifeq +19 -> 506
    //   490: aload_3
    //   491: astore 5
    //   493: aload_3
    //   494: iconst_2
    //   495: invokeinterface 134 2 0
    //   500: istore_1
    //   501: iload_1
    //   502: iconst_2
    //   503: if_icmpeq +15 -> 518
    //   506: aload_3
    //   507: ifnull +9 -> 516
    //   510: aload_3
    //   511: invokeinterface 95 1 0
    //   516: iconst_m1
    //   517: ireturn
    //   518: aload_3
    //   519: ifnull +9 -> 528
    //   522: aload_3
    //   523: invokeinterface 95 1 0
    //   528: iload_0
    //   529: ireturn
    //   530: astore 4
    //   532: aconst_null
    //   533: astore_3
    //   534: aload_3
    //   535: astore 5
    //   537: aload 4
    //   539: invokevirtual 166	java/lang/Exception:printStackTrace	()V
    //   542: aload_3
    //   543: ifnull +9 -> 552
    //   546: aload_3
    //   547: invokeinterface 95 1 0
    //   552: iconst_m1
    //   553: ireturn
    //   554: astore_3
    //   555: aload 4
    //   557: ifnull +10 -> 567
    //   560: aload 4
    //   562: invokeinterface 95 1 0
    //   567: aload_3
    //   568: athrow
    //   569: astore_3
    //   570: aload 5
    //   572: astore 4
    //   574: goto -19 -> 555
    //   577: astore 5
    //   579: aload_3
    //   580: astore 4
    //   582: aload 5
    //   584: astore_3
    //   585: goto -30 -> 555
    //   588: astore_3
    //   589: aload 5
    //   591: astore 4
    //   593: goto -38 -> 555
    //   596: astore 4
    //   598: goto -64 -> 534
    //   601: astore 4
    //   603: aload 5
    //   605: astore_3
    //   606: goto -72 -> 534
    //   609: astore 4
    //   611: goto -77 -> 534
    //   614: astore 4
    //   616: goto -82 -> 534
    //   619: goto -247 -> 372
    //   622: goto -332 -> 290
    // Local variable table:
    //   start	length	slot	name	signature
    //   268	261	0	i	int
    //   304	200	1	j	int
    //   320	55	2	k	int
    //   89	458	3	localObject1	Object
    //   554	14	3	localObject2	Object
    //   569	11	3	localObject3	Object
    //   584	1	3	localObject4	Object
    //   588	1	3	localObject5	Object
    //   605	1	3	localObject6	Object
    //   1	464	4	localObject7	Object
    //   530	31	4	localException1	Exception
    //   572	20	4	localObject8	Object
    //   596	1	4	localException2	Exception
    //   601	1	4	localException3	Exception
    //   609	1	4	localException4	Exception
    //   614	1	4	localException5	Exception
    //   116	455	5	localObject9	Object
    //   577	27	5	localObject10	Object
    //   9	416	6	localContentResolver	ContentResolver
    //   42	414	7	str	String
    //   49	378	8	localUri	Uri
    // Exception table:
    //   from	to	target	type
    //   51	90	530	java/lang/Exception
    //   51	90	554	finally
    //   97	106	554	finally
    //   109	118	554	finally
    //   121	130	554	finally
    //   133	143	554	finally
    //   146	159	554	finally
    //   162	172	554	finally
    //   175	187	554	finally
    //   190	200	554	finally
    //   207	213	554	finally
    //   216	256	554	finally
    //   261	269	569	finally
    //   290	321	577	finally
    //   342	351	577	finally
    //   359	372	577	finally
    //   377	388	577	finally
    //   388	464	577	finally
    //   470	477	588	finally
    //   480	490	588	finally
    //   493	501	588	finally
    //   537	542	588	finally
    //   97	106	596	java/lang/Exception
    //   109	118	596	java/lang/Exception
    //   121	130	596	java/lang/Exception
    //   133	143	596	java/lang/Exception
    //   146	159	596	java/lang/Exception
    //   162	172	596	java/lang/Exception
    //   175	187	596	java/lang/Exception
    //   190	200	596	java/lang/Exception
    //   207	213	596	java/lang/Exception
    //   216	256	596	java/lang/Exception
    //   261	269	601	java/lang/Exception
    //   290	321	609	java/lang/Exception
    //   342	351	609	java/lang/Exception
    //   359	372	609	java/lang/Exception
    //   377	388	609	java/lang/Exception
    //   388	464	609	java/lang/Exception
    //   470	477	614	java/lang/Exception
    //   480	490	614	java/lang/Exception
    //   493	501	614	java/lang/Exception
  }
  
  /* Error */
  private static boolean c(String paramString)
  {
    // Byte code:
    //   0: aconst_null
    //   1: astore 4
    //   3: invokestatic 19	com/estrongs/android/pop/FexApplication:a	()Lcom/estrongs/android/pop/FexApplication;
    //   6: invokevirtual 23	com/estrongs/android/pop/FexApplication:getContentResolver	()Landroid/content/ContentResolver;
    //   9: astore 8
    //   11: ldc 49
    //   13: invokestatic 55	android/net/Uri:parse	(Ljava/lang/String;)Landroid/net/Uri;
    //   16: astore 9
    //   18: ldc_w 300
    //   21: invokestatic 55	android/net/Uri:parse	(Ljava/lang/String;)Landroid/net/Uri;
    //   24: astore 7
    //   26: aload 8
    //   28: aload 7
    //   30: iconst_1
    //   31: anewarray 36	java/lang/String
    //   34: dup
    //   35: iconst_0
    //   36: ldc 59
    //   38: aastore
    //   39: aconst_null
    //   40: aconst_null
    //   41: aconst_null
    //   42: invokevirtual 65	android/content/ContentResolver:query	(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    //   45: astore 5
    //   47: aload 5
    //   49: ifnull +24 -> 73
    //   52: aload 5
    //   54: astore_3
    //   55: aload 5
    //   57: astore 4
    //   59: aload 5
    //   61: astore 6
    //   63: aload 5
    //   65: invokeinterface 70 1 0
    //   70: ifne +162 -> 232
    //   73: aload 5
    //   75: astore 4
    //   77: aload 5
    //   79: astore 6
    //   81: new 72	android/content/ContentValues
    //   84: dup
    //   85: invokespecial 73	android/content/ContentValues:<init>	()V
    //   88: astore_3
    //   89: aload 5
    //   91: astore 4
    //   93: aload 5
    //   95: astore 6
    //   97: aload_3
    //   98: ldc 59
    //   100: aload_0
    //   101: invokevirtual 77	android/content/ContentValues:put	(Ljava/lang/String;Ljava/lang/String;)V
    //   104: aload 5
    //   106: astore 4
    //   108: aload 5
    //   110: astore 6
    //   112: aload_3
    //   113: ldc 79
    //   115: ldc_w 301
    //   118: invokestatic 85	java/lang/Integer:valueOf	(I)Ljava/lang/Integer;
    //   121: invokevirtual 88	android/content/ContentValues:put	(Ljava/lang/String;Ljava/lang/Integer;)V
    //   124: aload 5
    //   126: astore 4
    //   128: aload 5
    //   130: astore 6
    //   132: aload 8
    //   134: aload 9
    //   136: aload_3
    //   137: invokevirtual 92	android/content/ContentResolver:insert	(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    //   140: astore 7
    //   142: aload 5
    //   144: ifnull +18 -> 162
    //   147: aload 5
    //   149: astore 4
    //   151: aload 5
    //   153: astore 6
    //   155: aload 5
    //   157: invokeinterface 95 1 0
    //   162: aload 5
    //   164: astore 4
    //   166: aload 5
    //   168: astore 6
    //   170: aload 8
    //   172: aload 7
    //   174: iconst_1
    //   175: anewarray 36	java/lang/String
    //   178: dup
    //   179: iconst_0
    //   180: ldc 59
    //   182: aastore
    //   183: aconst_null
    //   184: aconst_null
    //   185: aconst_null
    //   186: invokevirtual 65	android/content/ContentResolver:query	(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    //   189: astore 5
    //   191: aload 5
    //   193: ifnull +22 -> 215
    //   196: aload 5
    //   198: astore_3
    //   199: aload 5
    //   201: astore 4
    //   203: aload 5
    //   205: invokeinterface 70 1 0
    //   210: istore_1
    //   211: iload_1
    //   212: ifne +17 -> 229
    //   215: aload 5
    //   217: ifnull +10 -> 227
    //   220: aload 5
    //   222: invokeinterface 95 1 0
    //   227: iconst_0
    //   228: ireturn
    //   229: aload 5
    //   231: astore_3
    //   232: aload_3
    //   233: astore 4
    //   235: aload_3
    //   236: astore 6
    //   238: aload_3
    //   239: invokeinterface 99 1 0
    //   244: pop
    //   245: aload_3
    //   246: astore 4
    //   248: aload_3
    //   249: astore 6
    //   251: aload_0
    //   252: aload_3
    //   253: iconst_0
    //   254: invokeinterface 103 2 0
    //   259: invokevirtual 107	java/lang/String:equals	(Ljava/lang/Object;)Z
    //   262: ifne +184 -> 446
    //   265: aload_3
    //   266: astore 4
    //   268: aload_3
    //   269: astore 6
    //   271: new 72	android/content/ContentValues
    //   274: dup
    //   275: invokespecial 73	android/content/ContentValues:<init>	()V
    //   278: astore 5
    //   280: aload_3
    //   281: astore 4
    //   283: aload_3
    //   284: astore 6
    //   286: aload 5
    //   288: ldc 59
    //   290: aload_0
    //   291: invokevirtual 77	android/content/ContentValues:put	(Ljava/lang/String;Ljava/lang/String;)V
    //   294: aload_3
    //   295: astore 4
    //   297: aload_3
    //   298: astore 6
    //   300: aload 8
    //   302: aload 7
    //   304: aload 5
    //   306: aconst_null
    //   307: aconst_null
    //   308: invokevirtual 111	android/content/ContentResolver:update	(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    //   311: pop
    //   312: aload_3
    //   313: astore 4
    //   315: aload_3
    //   316: astore 6
    //   318: aload_3
    //   319: invokeinterface 95 1 0
    //   324: aload_3
    //   325: astore 4
    //   327: aload_3
    //   328: astore 6
    //   330: aload 8
    //   332: aload 7
    //   334: iconst_1
    //   335: anewarray 36	java/lang/String
    //   338: dup
    //   339: iconst_0
    //   340: ldc 59
    //   342: aastore
    //   343: aconst_null
    //   344: aconst_null
    //   345: aconst_null
    //   346: invokevirtual 65	android/content/ContentResolver:query	(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    //   349: astore 5
    //   351: aload 5
    //   353: ifnull +22 -> 375
    //   356: aload 5
    //   358: astore_3
    //   359: aload 5
    //   361: astore 4
    //   363: aload 5
    //   365: invokeinterface 70 1 0
    //   370: istore_1
    //   371: iload_1
    //   372: ifne +17 -> 389
    //   375: aload 5
    //   377: ifnull -150 -> 227
    //   380: aload 5
    //   382: invokeinterface 95 1 0
    //   387: iconst_0
    //   388: ireturn
    //   389: aload 5
    //   391: astore_3
    //   392: aload 5
    //   394: astore 4
    //   396: aload 5
    //   398: invokeinterface 99 1 0
    //   403: pop
    //   404: aload 5
    //   406: astore_3
    //   407: aload 5
    //   409: astore 4
    //   411: aload_0
    //   412: aload 5
    //   414: iconst_0
    //   415: invokeinterface 103 2 0
    //   420: invokevirtual 107	java/lang/String:equals	(Ljava/lang/Object;)Z
    //   423: istore_2
    //   424: aload 5
    //   426: astore 6
    //   428: iload_2
    //   429: ifne +20 -> 449
    //   432: aload 5
    //   434: ifnull -207 -> 227
    //   437: aload 5
    //   439: invokeinterface 95 1 0
    //   444: iconst_0
    //   445: ireturn
    //   446: aload_3
    //   447: astore 6
    //   449: aload 6
    //   451: astore_3
    //   452: aload 6
    //   454: astore 4
    //   456: aload 8
    //   458: aload 7
    //   460: aconst_null
    //   461: aconst_null
    //   462: invokevirtual 185	android/content/ContentResolver:delete	(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    //   465: pop
    //   466: aload 6
    //   468: astore_3
    //   469: aload 6
    //   471: astore 4
    //   473: new 219	java/io/File
    //   476: dup
    //   477: aload_0
    //   478: invokespecial 222	java/io/File:<init>	(Ljava/lang/String;)V
    //   481: invokevirtual 225	java/io/File:exists	()Z
    //   484: istore_2
    //   485: iload_2
    //   486: ifne +19 -> 505
    //   489: iconst_1
    //   490: istore_2
    //   491: aload 6
    //   493: ifnull +10 -> 503
    //   496: aload 6
    //   498: invokeinterface 95 1 0
    //   503: iload_2
    //   504: ireturn
    //   505: iconst_0
    //   506: istore_2
    //   507: goto -16 -> 491
    //   510: astore_0
    //   511: aconst_null
    //   512: astore_0
    //   513: aload_0
    //   514: ifnull -287 -> 227
    //   517: aload_0
    //   518: invokeinterface 95 1 0
    //   523: iconst_0
    //   524: ireturn
    //   525: astore_0
    //   526: aload 4
    //   528: ifnull +10 -> 538
    //   531: aload 4
    //   533: invokeinterface 95 1 0
    //   538: aload_0
    //   539: athrow
    //   540: astore_0
    //   541: aload_3
    //   542: astore 4
    //   544: goto -18 -> 526
    //   547: astore_0
    //   548: aload 6
    //   550: astore_0
    //   551: goto -38 -> 513
    //   554: astore_0
    //   555: aload 4
    //   557: astore_0
    //   558: goto -45 -> 513
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	561	0	paramString	String
    //   210	162	1	i	int
    //   423	84	2	bool	boolean
    //   54	488	3	localObject1	Object
    //   1	555	4	localObject2	Object
    //   45	393	5	localObject3	Object
    //   61	488	6	localObject4	Object
    //   24	435	7	localUri1	Uri
    //   9	448	8	localContentResolver	ContentResolver
    //   16	119	9	localUri2	Uri
    // Exception table:
    //   from	to	target	type
    //   26	47	510	java/lang/Exception
    //   26	47	525	finally
    //   63	73	525	finally
    //   81	89	525	finally
    //   97	104	525	finally
    //   112	124	525	finally
    //   132	142	525	finally
    //   155	162	525	finally
    //   170	191	525	finally
    //   238	245	525	finally
    //   251	265	525	finally
    //   271	280	525	finally
    //   286	294	525	finally
    //   300	312	525	finally
    //   318	324	525	finally
    //   330	351	525	finally
    //   203	211	540	finally
    //   363	371	540	finally
    //   396	404	540	finally
    //   411	424	540	finally
    //   456	466	540	finally
    //   473	485	540	finally
    //   63	73	547	java/lang/Exception
    //   81	89	547	java/lang/Exception
    //   97	104	547	java/lang/Exception
    //   112	124	547	java/lang/Exception
    //   132	142	547	java/lang/Exception
    //   155	162	547	java/lang/Exception
    //   170	191	547	java/lang/Exception
    //   238	245	547	java/lang/Exception
    //   251	265	547	java/lang/Exception
    //   271	280	547	java/lang/Exception
    //   286	294	547	java/lang/Exception
    //   300	312	547	java/lang/Exception
    //   318	324	547	java/lang/Exception
    //   330	351	547	java/lang/Exception
    //   203	211	554	java/lang/Exception
    //   363	371	554	java/lang/Exception
    //   396	404	554	java/lang/Exception
    //   411	424	554	java/lang/Exception
    //   456	466	554	java/lang/Exception
    //   473	485	554	java/lang/Exception
  }
  
  public static boolean c(String paramString, boolean paramBoolean)
  {
    boolean bool2 = true;
    boolean bool1 = true;
    Object localObject = null;
    try
    {
      if ((!a) && (!paramBoolean)) {
        return c(paramString);
      }
      if (b(paramString))
      {
        if (!new File(paramString).exists()) {
          return bool2;
        }
        return false;
      }
      localContentResolver = FexApplication.a().getContentResolver();
      localUri = MediaStore.Images.Media.EXTERNAL_CONTENT_URI;
      localContentValues = new ContentValues();
      localContentValues.put("_data", paramString);
    }
    catch (Exception localException1)
    {
      for (;;)
      {
        ContentResolver localContentResolver;
        Uri localUri;
        ContentValues localContentValues;
        label90:
        localException1.printStackTrace();
        bool1 = false;
      }
    }
    try
    {
      localUri = localContentResolver.insert(localUri, localContentValues);
      localObject = localUri;
    }
    catch (Exception localException2)
    {
      break label90;
    }
    if (localObject == null) {
      return false;
    }
    if (localContentResolver.delete((Uri)localObject, null, null) > 0)
    {
      bool2 = new File(paramString).exists();
      if (!bool2) {}
      for (;;)
      {
        bool2 = bool1;
        if (bool1) {
          break;
        }
        bool2 = bool1;
        if (paramBoolean) {
          break;
        }
        return c(paramString);
        bool1 = false;
      }
    }
    return bool2;
  }
}

/* Location:
 * Qualified Name:     com.estrongs.fs.impl.local.k
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */