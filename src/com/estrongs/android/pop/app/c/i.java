package com.estrongs.android.pop.app.c;

import android.content.ContentResolver;
import android.content.ContentValues;
import android.content.Context;
import android.database.Cursor;
import android.database.sqlite.SQLiteDatabase;
import android.graphics.Bitmap;
import android.provider.MediaStore.Audio.Media;
import com.estrongs.android.util.am;
import com.estrongs.android.util.ap;

public class i
{
  public long a = -1L;
  public String b;
  public long c;
  public long d;
  public String e;
  public String f;
  public String g;
  public long h = -1L;
  private String i;
  private boolean j = false;
  private Object k = new Object();
  private Bitmap l;
  
  public i(long paramLong1, String paramString1, long paramLong2, long paramLong3, String paramString2, String paramString3, String paramString4, long paramLong4)
  {
    a = paramLong1;
    b = paramString1;
    c = paramLong2;
    d = paramLong3;
    e = paramString2;
    f = paramString3;
    g = paramString4;
    h = paramLong4;
  }
  
  public i(String paramString, long paramLong)
  {
    b = paramString;
    d = paramLong;
  }
  
  public Bitmap a(Context paramContext)
  {
    if ((l != null) && (!l.isRecycled())) {
      return l;
    }
    Object localObject = ap.bV(b);
    try
    {
      localObject = paramContext.getContentResolver().query(MediaStore.Audio.Media.EXTERNAL_CONTENT_URI, new String[] { "_id", "album_id" }, "_data=?", new String[] { localObject }, null);
      if (localObject == null) {
        return null;
      }
    }
    catch (Exception paramContext)
    {
      return null;
    }
    if (((Cursor)localObject).moveToFirst()) {
      l = am.a(paramContext, ((Cursor)localObject).getLong(((Cursor)localObject).getColumnIndex("_id")), ((Cursor)localObject).getLong(((Cursor)localObject).getColumnIndex("album_id")));
    }
    ((Cursor)localObject).close();
    return l;
  }
  
  public String a()
  {
    if ((i == null) && (h != -1L))
    {
      long l1 = h;
      if (l1 <= 0L) {
        return "";
      }
      StringBuilder localStringBuilder = new StringBuilder();
      long l2 = l1 / 60000L;
      if (l2 < 10L) {
        localStringBuilder.append(0);
      }
      localStringBuilder.append(l2).append(':');
      l1 = (l1 - l2 * 60000L) / 1000L;
      if (l1 < 10L) {
        localStringBuilder.append(0);
      }
      localStringBuilder.append(l1);
      i = localStringBuilder.toString();
    }
    return i;
  }
  
  public String b(Context paramContext)
  {
    if (f != null) {}
    for (String str1 = f;; str1 = "")
    {
      String str2 = str1;
      if (g == null) {
        str2 = str1 + paramContext.getString(2131231045);
      }
      return str2;
    }
  }
  
  public void b()
  {
    if (a == -1L)
    {
      SQLiteDatabase localSQLiteDatabase = l.a().c();
      ContentValues localContentValues = new ContentValues();
      localContentValues.put("_data", b);
      localContentValues.put("playlist_id", Long.valueOf(c));
      localContentValues.put("play_order", Long.valueOf(d));
      localContentValues.put("title", e);
      localContentValues.put("album", f);
      localContentValues.put("artist", g);
      localContentValues.put("duration", Long.valueOf(h));
      a = localSQLiteDatabase.insert("audio_playlists_map", null, localContentValues);
    }
  }
  
  public boolean c()
  {
    return (j) || (e != null) || (f != null) || (g != null) || (h != -1L);
  }
  
  /* Error */
  public void d()
  {
    // Byte code:
    //   0: aconst_null
    //   1: astore 5
    //   3: aload_0
    //   4: getfield 36	com/estrongs/android/pop/app/c/i:k	Ljava/lang/Object;
    //   7: astore 6
    //   9: aload 6
    //   11: monitorenter
    //   12: aload_0
    //   13: invokevirtual 198	com/estrongs/android/pop/app/c/i:c	()Z
    //   16: ifeq +7 -> 23
    //   19: aload 6
    //   21: monitorexit
    //   22: return
    //   23: aload_0
    //   24: getfield 38	com/estrongs/android/pop/app/c/i:b	Ljava/lang/String;
    //   27: invokestatic 202	com/estrongs/android/util/ap:bl	(Ljava/lang/String;)Z
    //   30: istore_3
    //   31: iload_3
    //   32: ifeq +231 -> 263
    //   35: invokestatic 207	com/estrongs/android/pop/FexApplication:a	()Lcom/estrongs/android/pop/FexApplication;
    //   38: invokevirtual 208	com/estrongs/android/pop/FexApplication:getContentResolver	()Landroid/content/ContentResolver;
    //   41: astore 7
    //   43: getstatic 79	android/provider/MediaStore$Audio$Media:EXTERNAL_CONTENT_URI	Landroid/net/Uri;
    //   46: astore 5
    //   48: new 121	java/lang/StringBuilder
    //   51: dup
    //   52: invokespecial 122	java/lang/StringBuilder:<init>	()V
    //   55: ldc -46
    //   57: invokevirtual 145	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   60: aload_0
    //   61: getfield 38	com/estrongs/android/pop/app/c/i:b	Ljava/lang/String;
    //   64: invokestatic 215	android/database/DatabaseUtils:sqlEscapeString	(Ljava/lang/String;)Ljava/lang/String;
    //   67: invokevirtual 145	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   70: ldc 119
    //   72: invokevirtual 145	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   75: invokevirtual 141	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   78: astore 4
    //   80: aload 7
    //   82: aload 5
    //   84: iconst_4
    //   85: anewarray 81	java/lang/String
    //   88: dup
    //   89: iconst_0
    //   90: ldc -74
    //   92: aastore
    //   93: dup
    //   94: iconst_1
    //   95: ldc -72
    //   97: aastore
    //   98: dup
    //   99: iconst_2
    //   100: ldc -70
    //   102: aastore
    //   103: dup
    //   104: iconst_3
    //   105: ldc -68
    //   107: aastore
    //   108: aload 4
    //   110: aconst_null
    //   111: aconst_null
    //   112: invokevirtual 93	android/content/ContentResolver:query	(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    //   115: astore 7
    //   117: aload 7
    //   119: ifnull +135 -> 254
    //   122: aload 7
    //   124: invokeinterface 218 1 0
    //   129: ifeq +118 -> 247
    //   132: aload 7
    //   134: aload 7
    //   136: ldc -74
    //   138: invokeinterface 102 2 0
    //   143: invokeinterface 219 2 0
    //   148: astore 5
    //   150: aload 7
    //   152: aload 7
    //   154: ldc -72
    //   156: invokeinterface 102 2 0
    //   161: invokeinterface 219 2 0
    //   166: astore 8
    //   168: aload 7
    //   170: aload 7
    //   172: ldc -70
    //   174: invokeinterface 102 2 0
    //   179: invokeinterface 219 2 0
    //   184: astore 4
    //   186: aload 7
    //   188: aload 7
    //   190: ldc -68
    //   192: invokeinterface 102 2 0
    //   197: invokeinterface 106 2 0
    //   202: lstore_1
    //   203: aload_0
    //   204: aload 5
    //   206: putfield 44	com/estrongs/android/pop/app/c/i:e	Ljava/lang/String;
    //   209: aload_0
    //   210: aload 8
    //   212: putfield 46	com/estrongs/android/pop/app/c/i:f	Ljava/lang/String;
    //   215: aload_0
    //   216: aload 4
    //   218: putfield 48	com/estrongs/android/pop/app/c/i:g	Ljava/lang/String;
    //   221: aload_0
    //   222: lload_1
    //   223: putfield 32	com/estrongs/android/pop/app/c/i:h	J
    //   226: goto -104 -> 122
    //   229: astore 4
    //   231: aload_0
    //   232: iconst_1
    //   233: putfield 34	com/estrongs/android/pop/app/c/i:j	Z
    //   236: aload 4
    //   238: athrow
    //   239: astore 4
    //   241: aload 6
    //   243: monitorexit
    //   244: aload 4
    //   246: athrow
    //   247: aload 7
    //   249: invokeinterface 114 1 0
    //   254: aload_0
    //   255: iconst_1
    //   256: putfield 34	com/estrongs/android/pop/app/c/i:j	Z
    //   259: aload 6
    //   261: monitorexit
    //   262: return
    //   263: aload 5
    //   265: astore 4
    //   267: aload_0
    //   268: getfield 38	com/estrongs/android/pop/app/c/i:b	Ljava/lang/String;
    //   271: invokestatic 222	com/estrongs/android/util/ap:bH	(Ljava/lang/String;)Ljava/lang/String;
    //   274: astore 7
    //   276: aload 5
    //   278: astore 4
    //   280: aload 7
    //   282: ldc -32
    //   284: invokevirtual 227	java/lang/String:endsWith	(Ljava/lang/String;)Z
    //   287: istore_3
    //   288: iload_3
    //   289: ifne +24 -> 313
    //   292: aload_0
    //   293: iconst_1
    //   294: putfield 34	com/estrongs/android/pop/app/c/i:j	Z
    //   297: iconst_0
    //   298: ifeq +11 -> 309
    //   301: new 229	java/lang/NullPointerException
    //   304: dup
    //   305: invokespecial 230	java/lang/NullPointerException:<init>	()V
    //   308: athrow
    //   309: aload 6
    //   311: monitorexit
    //   312: return
    //   313: aload 5
    //   315: astore 4
    //   317: invokestatic 235	com/estrongs/fs/d:a	()Lcom/estrongs/fs/d;
    //   320: aload 7
    //   322: invokevirtual 238	com/estrongs/fs/d:e	(Ljava/lang/String;)Ljava/io/InputStream;
    //   325: astore 5
    //   327: aload 5
    //   329: ifnonnull +22 -> 351
    //   332: aload_0
    //   333: iconst_1
    //   334: putfield 34	com/estrongs/android/pop/app/c/i:j	Z
    //   337: aload 5
    //   339: ifnull +8 -> 347
    //   342: aload 5
    //   344: invokevirtual 241	java/io/InputStream:close	()V
    //   347: aload 6
    //   349: monitorexit
    //   350: return
    //   351: aload 5
    //   353: astore 4
    //   355: new 243	org/apache/tika/metadata/Metadata
    //   358: dup
    //   359: invokespecial 244	org/apache/tika/metadata/Metadata:<init>	()V
    //   362: astore 7
    //   364: aload 5
    //   366: astore 4
    //   368: new 246	org/apache/tika/parser/mp3/Mp3Parser
    //   371: dup
    //   372: invokespecial 247	org/apache/tika/parser/mp3/Mp3Parser:<init>	()V
    //   375: aload 5
    //   377: aload 7
    //   379: invokevirtual 251	org/apache/tika/parser/mp3/Mp3Parser:parse	(Ljava/io/InputStream;Lorg/apache/tika/metadata/Metadata;)V
    //   382: aload 5
    //   384: astore 4
    //   386: aload_0
    //   387: aload 7
    //   389: ldc -74
    //   391: invokevirtual 254	org/apache/tika/metadata/Metadata:get	(Ljava/lang/String;)Ljava/lang/String;
    //   394: putfield 44	com/estrongs/android/pop/app/c/i:e	Ljava/lang/String;
    //   397: aload 5
    //   399: astore 4
    //   401: aload_0
    //   402: aload 7
    //   404: ldc -70
    //   406: invokevirtual 254	org/apache/tika/metadata/Metadata:get	(Ljava/lang/String;)Ljava/lang/String;
    //   409: putfield 48	com/estrongs/android/pop/app/c/i:g	Ljava/lang/String;
    //   412: aload 5
    //   414: astore 4
    //   416: aload_0
    //   417: aload 7
    //   419: ldc_w 256
    //   422: invokevirtual 254	org/apache/tika/metadata/Metadata:get	(Ljava/lang/String;)Ljava/lang/String;
    //   425: putfield 46	com/estrongs/android/pop/app/c/i:f	Ljava/lang/String;
    //   428: aload 5
    //   430: astore 4
    //   432: aload 5
    //   434: invokevirtual 241	java/io/InputStream:close	()V
    //   437: aload 5
    //   439: astore 4
    //   441: invokestatic 155	com/estrongs/android/pop/app/c/l:a	()Lcom/estrongs/android/pop/app/c/l;
    //   444: invokevirtual 158	com/estrongs/android/pop/app/c/l:c	()Landroid/database/sqlite/SQLiteDatabase;
    //   447: astore 7
    //   449: aload 5
    //   451: astore 4
    //   453: new 160	android/content/ContentValues
    //   456: dup
    //   457: invokespecial 161	android/content/ContentValues:<init>	()V
    //   460: astore 8
    //   462: aload 5
    //   464: astore 4
    //   466: aload 8
    //   468: ldc -74
    //   470: aload_0
    //   471: getfield 44	com/estrongs/android/pop/app/c/i:e	Ljava/lang/String;
    //   474: invokevirtual 167	android/content/ContentValues:put	(Ljava/lang/String;Ljava/lang/String;)V
    //   477: aload 5
    //   479: astore 4
    //   481: aload 8
    //   483: ldc -72
    //   485: aload_0
    //   486: getfield 46	com/estrongs/android/pop/app/c/i:f	Ljava/lang/String;
    //   489: invokevirtual 167	android/content/ContentValues:put	(Ljava/lang/String;Ljava/lang/String;)V
    //   492: aload 5
    //   494: astore 4
    //   496: aload 8
    //   498: ldc -70
    //   500: aload_0
    //   501: getfield 48	com/estrongs/android/pop/app/c/i:g	Ljava/lang/String;
    //   504: invokevirtual 167	android/content/ContentValues:put	(Ljava/lang/String;Ljava/lang/String;)V
    //   507: aload 5
    //   509: astore 4
    //   511: aload 7
    //   513: ldc -66
    //   515: aload 8
    //   517: new 121	java/lang/StringBuilder
    //   520: dup
    //   521: invokespecial 122	java/lang/StringBuilder:<init>	()V
    //   524: ldc_w 258
    //   527: invokevirtual 145	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   530: aload_0
    //   531: getfield 30	com/estrongs/android/pop/app/c/i:a	J
    //   534: invokevirtual 133	java/lang/StringBuilder:append	(J)Ljava/lang/StringBuilder;
    //   537: invokevirtual 141	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   540: aconst_null
    //   541: invokevirtual 262	android/database/sqlite/SQLiteDatabase:update	(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    //   544: pop
    //   545: aload_0
    //   546: iconst_1
    //   547: putfield 34	com/estrongs/android/pop/app/c/i:j	Z
    //   550: aload 5
    //   552: ifnull -293 -> 259
    //   555: aload 5
    //   557: invokevirtual 241	java/io/InputStream:close	()V
    //   560: goto -301 -> 259
    //   563: astore 4
    //   565: goto -306 -> 259
    //   568: astore 5
    //   570: aload_0
    //   571: iconst_1
    //   572: putfield 34	com/estrongs/android/pop/app/c/i:j	Z
    //   575: aload 4
    //   577: ifnull +8 -> 585
    //   580: aload 4
    //   582: invokevirtual 241	java/io/InputStream:close	()V
    //   585: aload 5
    //   587: athrow
    //   588: astore 4
    //   590: goto -281 -> 309
    //   593: astore 4
    //   595: goto -248 -> 347
    //   598: astore 4
    //   600: goto -15 -> 585
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	603	0	this	i
    //   202	21	1	l1	long
    //   30	259	3	bool	boolean
    //   78	139	4	str	String
    //   229	8	4	localObject1	Object
    //   239	6	4	localObject2	Object
    //   265	245	4	localObject3	Object
    //   563	18	4	localException1	Exception
    //   588	1	4	localException2	Exception
    //   593	1	4	localException3	Exception
    //   598	1	4	localException4	Exception
    //   1	555	5	localObject4	Object
    //   568	18	5	localObject5	Object
    //   7	341	6	localObject6	Object
    //   41	471	7	localObject7	Object
    //   166	350	8	localObject8	Object
    // Exception table:
    //   from	to	target	type
    //   35	117	229	finally
    //   122	226	229	finally
    //   247	254	229	finally
    //   12	22	239	finally
    //   23	31	239	finally
    //   231	239	239	finally
    //   241	244	239	finally
    //   254	259	239	finally
    //   259	262	239	finally
    //   292	297	239	finally
    //   301	309	239	finally
    //   309	312	239	finally
    //   332	337	239	finally
    //   342	347	239	finally
    //   347	350	239	finally
    //   545	550	239	finally
    //   555	560	239	finally
    //   570	575	239	finally
    //   580	585	239	finally
    //   585	588	239	finally
    //   555	560	563	java/lang/Exception
    //   267	276	568	finally
    //   280	288	568	finally
    //   317	327	568	finally
    //   355	364	568	finally
    //   368	382	568	finally
    //   386	397	568	finally
    //   401	412	568	finally
    //   416	428	568	finally
    //   432	437	568	finally
    //   441	449	568	finally
    //   453	462	568	finally
    //   466	477	568	finally
    //   481	492	568	finally
    //   496	507	568	finally
    //   511	545	568	finally
    //   301	309	588	java/lang/Exception
    //   342	347	593	java/lang/Exception
    //   580	585	598	java/lang/Exception
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.pop.app.c.i
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */