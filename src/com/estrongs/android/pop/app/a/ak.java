package com.estrongs.android.pop.app.a;

import android.content.ContentResolver;
import android.content.ContentValues;
import android.content.Context;
import android.database.Cursor;
import android.database.sqlite.SQLiteDatabase;
import android.graphics.Bitmap;
import android.provider.MediaStore.Audio.Media;
import com.estrongs.android.util.aj;
import com.estrongs.android.util.am;

public class ak
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
  
  public ak(long paramLong1, String paramString1, long paramLong2, long paramLong3, String paramString2, String paramString3, String paramString4, long paramLong4)
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
  
  public ak(String paramString, long paramLong)
  {
    b = paramString;
    d = paramLong;
  }
  
  public Bitmap a(Context paramContext)
  {
    if ((l != null) && (!l.isRecycled())) {
      return l;
    }
    Object localObject = am.bE(b);
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
      l = aj.a(paramContext, ((Cursor)localObject).getLong(((Cursor)localObject).getColumnIndex("_id")), ((Cursor)localObject).getLong(((Cursor)localObject).getColumnIndex("album_id")));
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
  
  public void b()
  {
    if (a == -1L)
    {
      SQLiteDatabase localSQLiteDatabase = an.a().c();
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
    //   4: getfield 36	com/estrongs/android/pop/app/a/ak:k	Ljava/lang/Object;
    //   7: astore 6
    //   9: aload 6
    //   11: monitorenter
    //   12: aload_0
    //   13: invokevirtual 189	com/estrongs/android/pop/app/a/ak:c	()Z
    //   16: ifeq +7 -> 23
    //   19: aload 6
    //   21: monitorexit
    //   22: return
    //   23: aload_0
    //   24: getfield 38	com/estrongs/android/pop/app/a/ak:b	Ljava/lang/String;
    //   27: invokestatic 193	com/estrongs/android/util/am:ba	(Ljava/lang/String;)Z
    //   30: istore_1
    //   31: iload_1
    //   32: ifeq +231 -> 263
    //   35: invokestatic 198	com/estrongs/android/pop/FexApplication:a	()Lcom/estrongs/android/pop/FexApplication;
    //   38: invokevirtual 199	com/estrongs/android/pop/FexApplication:getContentResolver	()Landroid/content/ContentResolver;
    //   41: astore 5
    //   43: getstatic 79	android/provider/MediaStore$Audio$Media:EXTERNAL_CONTENT_URI	Landroid/net/Uri;
    //   46: astore 7
    //   48: new 121	java/lang/StringBuilder
    //   51: dup
    //   52: invokespecial 122	java/lang/StringBuilder:<init>	()V
    //   55: ldc -55
    //   57: invokevirtual 204	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   60: aload_0
    //   61: getfield 38	com/estrongs/android/pop/app/a/ak:b	Ljava/lang/String;
    //   64: invokestatic 209	android/database/DatabaseUtils:sqlEscapeString	(Ljava/lang/String;)Ljava/lang/String;
    //   67: invokevirtual 204	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   70: ldc 119
    //   72: invokevirtual 204	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   75: invokevirtual 141	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   78: astore 4
    //   80: aload 5
    //   82: aload 7
    //   84: iconst_4
    //   85: anewarray 81	java/lang/String
    //   88: dup
    //   89: iconst_0
    //   90: ldc -83
    //   92: aastore
    //   93: dup
    //   94: iconst_1
    //   95: ldc -81
    //   97: aastore
    //   98: dup
    //   99: iconst_2
    //   100: ldc -79
    //   102: aastore
    //   103: dup
    //   104: iconst_3
    //   105: ldc -77
    //   107: aastore
    //   108: aload 4
    //   110: aconst_null
    //   111: aconst_null
    //   112: invokevirtual 93	android/content/ContentResolver:query	(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    //   115: astore 8
    //   117: aload 8
    //   119: ifnull +135 -> 254
    //   122: aload 8
    //   124: invokeinterface 212 1 0
    //   129: ifeq +118 -> 247
    //   132: aload 8
    //   134: aload 8
    //   136: ldc -83
    //   138: invokeinterface 102 2 0
    //   143: invokeinterface 216 2 0
    //   148: astore 5
    //   150: aload 8
    //   152: aload 8
    //   154: ldc -81
    //   156: invokeinterface 102 2 0
    //   161: invokeinterface 216 2 0
    //   166: astore 4
    //   168: aload 8
    //   170: aload 8
    //   172: ldc -79
    //   174: invokeinterface 102 2 0
    //   179: invokeinterface 216 2 0
    //   184: astore 7
    //   186: aload 8
    //   188: aload 8
    //   190: ldc -77
    //   192: invokeinterface 102 2 0
    //   197: invokeinterface 106 2 0
    //   202: lstore_2
    //   203: aload_0
    //   204: aload 5
    //   206: putfield 44	com/estrongs/android/pop/app/a/ak:e	Ljava/lang/String;
    //   209: aload_0
    //   210: aload 4
    //   212: putfield 46	com/estrongs/android/pop/app/a/ak:f	Ljava/lang/String;
    //   215: aload_0
    //   216: aload 7
    //   218: putfield 48	com/estrongs/android/pop/app/a/ak:g	Ljava/lang/String;
    //   221: aload_0
    //   222: lload_2
    //   223: putfield 32	com/estrongs/android/pop/app/a/ak:h	J
    //   226: goto -104 -> 122
    //   229: astore 4
    //   231: aload_0
    //   232: iconst_1
    //   233: putfield 34	com/estrongs/android/pop/app/a/ak:j	Z
    //   236: aload 4
    //   238: athrow
    //   239: astore 4
    //   241: aload 6
    //   243: monitorexit
    //   244: aload 4
    //   246: athrow
    //   247: aload 8
    //   249: invokeinterface 114 1 0
    //   254: aload_0
    //   255: iconst_1
    //   256: putfield 34	com/estrongs/android/pop/app/a/ak:j	Z
    //   259: aload 6
    //   261: monitorexit
    //   262: return
    //   263: aload 5
    //   265: astore 4
    //   267: aload_0
    //   268: getfield 38	com/estrongs/android/pop/app/a/ak:b	Ljava/lang/String;
    //   271: invokestatic 219	com/estrongs/android/util/am:bq	(Ljava/lang/String;)Ljava/lang/String;
    //   274: astore 7
    //   276: aload 5
    //   278: astore 4
    //   280: aload 7
    //   282: ldc -35
    //   284: invokevirtual 224	java/lang/String:endsWith	(Ljava/lang/String;)Z
    //   287: istore_1
    //   288: iload_1
    //   289: ifne +24 -> 313
    //   292: aload_0
    //   293: iconst_1
    //   294: putfield 34	com/estrongs/android/pop/app/a/ak:j	Z
    //   297: iconst_0
    //   298: ifeq +11 -> 309
    //   301: new 226	java/lang/NullPointerException
    //   304: dup
    //   305: invokespecial 227	java/lang/NullPointerException:<init>	()V
    //   308: athrow
    //   309: aload 6
    //   311: monitorexit
    //   312: return
    //   313: aload 5
    //   315: astore 4
    //   317: invokestatic 232	com/estrongs/fs/d:a	()Lcom/estrongs/fs/d;
    //   320: aload 7
    //   322: invokevirtual 235	com/estrongs/fs/d:e	(Ljava/lang/String;)Ljava/io/InputStream;
    //   325: astore 5
    //   327: aload 5
    //   329: ifnonnull +22 -> 351
    //   332: aload_0
    //   333: iconst_1
    //   334: putfield 34	com/estrongs/android/pop/app/a/ak:j	Z
    //   337: aload 5
    //   339: ifnull +8 -> 347
    //   342: aload 5
    //   344: invokevirtual 238	java/io/InputStream:close	()V
    //   347: aload 6
    //   349: monitorexit
    //   350: return
    //   351: aload 5
    //   353: astore 4
    //   355: new 240	org/apache/tika/metadata/Metadata
    //   358: dup
    //   359: invokespecial 241	org/apache/tika/metadata/Metadata:<init>	()V
    //   362: astore 7
    //   364: aload 5
    //   366: astore 4
    //   368: new 243	org/apache/tika/parser/mp3/Mp3Parser
    //   371: dup
    //   372: invokespecial 244	org/apache/tika/parser/mp3/Mp3Parser:<init>	()V
    //   375: aload 5
    //   377: aload 7
    //   379: invokevirtual 248	org/apache/tika/parser/mp3/Mp3Parser:parse	(Ljava/io/InputStream;Lorg/apache/tika/metadata/Metadata;)V
    //   382: aload 5
    //   384: astore 4
    //   386: aload_0
    //   387: aload 7
    //   389: ldc -83
    //   391: invokevirtual 251	org/apache/tika/metadata/Metadata:get	(Ljava/lang/String;)Ljava/lang/String;
    //   394: putfield 44	com/estrongs/android/pop/app/a/ak:e	Ljava/lang/String;
    //   397: aload 5
    //   399: astore 4
    //   401: aload_0
    //   402: aload 7
    //   404: ldc -79
    //   406: invokevirtual 251	org/apache/tika/metadata/Metadata:get	(Ljava/lang/String;)Ljava/lang/String;
    //   409: putfield 48	com/estrongs/android/pop/app/a/ak:g	Ljava/lang/String;
    //   412: aload 5
    //   414: astore 4
    //   416: aload_0
    //   417: aload 7
    //   419: ldc -3
    //   421: invokevirtual 251	org/apache/tika/metadata/Metadata:get	(Ljava/lang/String;)Ljava/lang/String;
    //   424: putfield 46	com/estrongs/android/pop/app/a/ak:f	Ljava/lang/String;
    //   427: aload 5
    //   429: astore 4
    //   431: aload 5
    //   433: invokevirtual 238	java/io/InputStream:close	()V
    //   436: aload 5
    //   438: astore 4
    //   440: invokestatic 146	com/estrongs/android/pop/app/a/an:a	()Lcom/estrongs/android/pop/app/a/an;
    //   443: invokevirtual 149	com/estrongs/android/pop/app/a/an:c	()Landroid/database/sqlite/SQLiteDatabase;
    //   446: astore 8
    //   448: aload 5
    //   450: astore 4
    //   452: new 151	android/content/ContentValues
    //   455: dup
    //   456: invokespecial 152	android/content/ContentValues:<init>	()V
    //   459: astore 7
    //   461: aload 5
    //   463: astore 4
    //   465: aload 7
    //   467: ldc -83
    //   469: aload_0
    //   470: getfield 44	com/estrongs/android/pop/app/a/ak:e	Ljava/lang/String;
    //   473: invokevirtual 158	android/content/ContentValues:put	(Ljava/lang/String;Ljava/lang/String;)V
    //   476: aload 5
    //   478: astore 4
    //   480: aload 7
    //   482: ldc -81
    //   484: aload_0
    //   485: getfield 46	com/estrongs/android/pop/app/a/ak:f	Ljava/lang/String;
    //   488: invokevirtual 158	android/content/ContentValues:put	(Ljava/lang/String;Ljava/lang/String;)V
    //   491: aload 5
    //   493: astore 4
    //   495: aload 7
    //   497: ldc -79
    //   499: aload_0
    //   500: getfield 48	com/estrongs/android/pop/app/a/ak:g	Ljava/lang/String;
    //   503: invokevirtual 158	android/content/ContentValues:put	(Ljava/lang/String;Ljava/lang/String;)V
    //   506: aload 5
    //   508: astore 4
    //   510: aload 8
    //   512: ldc -75
    //   514: aload 7
    //   516: new 121	java/lang/StringBuilder
    //   519: dup
    //   520: invokespecial 122	java/lang/StringBuilder:<init>	()V
    //   523: ldc -1
    //   525: invokevirtual 204	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   528: aload_0
    //   529: getfield 30	com/estrongs/android/pop/app/a/ak:a	J
    //   532: invokevirtual 133	java/lang/StringBuilder:append	(J)Ljava/lang/StringBuilder;
    //   535: invokevirtual 141	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   538: aconst_null
    //   539: invokevirtual 259	android/database/sqlite/SQLiteDatabase:update	(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    //   542: pop
    //   543: aload_0
    //   544: iconst_1
    //   545: putfield 34	com/estrongs/android/pop/app/a/ak:j	Z
    //   548: aload 5
    //   550: ifnull -291 -> 259
    //   553: aload 5
    //   555: invokevirtual 238	java/io/InputStream:close	()V
    //   558: goto -299 -> 259
    //   561: astore 4
    //   563: goto -304 -> 259
    //   566: astore 5
    //   568: aload_0
    //   569: iconst_1
    //   570: putfield 34	com/estrongs/android/pop/app/a/ak:j	Z
    //   573: aload 4
    //   575: ifnull +8 -> 583
    //   578: aload 4
    //   580: invokevirtual 238	java/io/InputStream:close	()V
    //   583: aload 5
    //   585: athrow
    //   586: astore 4
    //   588: goto -279 -> 309
    //   591: astore 4
    //   593: goto -246 -> 347
    //   596: astore 4
    //   598: goto -15 -> 583
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	601	0	this	ak
    //   30	259	1	bool	boolean
    //   202	21	2	l1	long
    //   78	133	4	str	String
    //   229	8	4	localObject1	Object
    //   239	6	4	localObject2	Object
    //   265	244	4	localObject3	Object
    //   561	18	4	localException1	Exception
    //   586	1	4	localException2	Exception
    //   591	1	4	localException3	Exception
    //   596	1	4	localException4	Exception
    //   1	553	5	localObject4	Object
    //   566	18	5	localObject5	Object
    //   7	341	6	localObject6	Object
    //   46	469	7	localObject7	Object
    //   115	396	8	localObject8	Object
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
    //   543	548	239	finally
    //   553	558	239	finally
    //   568	573	239	finally
    //   578	583	239	finally
    //   583	586	239	finally
    //   553	558	561	java/lang/Exception
    //   267	276	566	finally
    //   280	288	566	finally
    //   317	327	566	finally
    //   355	364	566	finally
    //   368	382	566	finally
    //   386	397	566	finally
    //   401	412	566	finally
    //   416	427	566	finally
    //   431	436	566	finally
    //   440	448	566	finally
    //   452	461	566	finally
    //   465	476	566	finally
    //   480	491	566	finally
    //   495	506	566	finally
    //   510	543	566	finally
    //   301	309	586	java/lang/Exception
    //   342	347	591	java/lang/Exception
    //   578	583	596	java/lang/Exception
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.pop.app.a.ak
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */