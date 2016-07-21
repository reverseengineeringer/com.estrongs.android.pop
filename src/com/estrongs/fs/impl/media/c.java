package com.estrongs.fs.impl.media;

import android.content.ContentResolver;
import android.content.ContentValues;
import android.content.Context;
import android.database.Cursor;
import android.database.DatabaseUtils;
import android.media.ExifInterface;
import android.net.Uri;
import android.provider.MediaStore.Audio.Media;
import com.estrongs.a.b.o;
import com.estrongs.android.pop.FexApplication;
import com.estrongs.android.pop.app.f.r;
import com.estrongs.android.pop.utils.ad;
import com.estrongs.android.pop.utils.aj;
import com.estrongs.android.pop.utils.cm;
import com.estrongs.android.util.TypedMap;
import com.estrongs.android.util.am;
import com.estrongs.android.util.ap;
import com.estrongs.fs.h;
import com.estrongs.fs.i;
import java.io.File;
import java.text.ParsePosition;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Date;
import java.util.HashSet;
import java.util.LinkedList;
import java.util.List;
import java.util.Set;
import java.util.TimeZone;

public abstract class c
  extends a
{
  public static final String[] a = { "/Ringtones/", "/ringtones/" };
  public static final String[] b = { "/Notifications/", "/notifications/" };
  protected static Set<String> f = new HashSet();
  private static SimpleDateFormat i;
  protected Uri c;
  protected String d;
  protected String e;
  private o<String> g;
  private Context h;
  
  static
  {
    f.add("windows-1252");
    i = new SimpleDateFormat("yyyy:MM:dd HH:mm:ss");
    i.setTimeZone(TimeZone.getTimeZone("UTC"));
  }
  
  private static long a(ExifInterface paramExifInterface)
  {
    Object localObject = paramExifInterface.getAttribute("GPSDateStamp");
    paramExifInterface = paramExifInterface.getAttribute("GPSTimeStamp");
    if ((localObject == null) || (paramExifInterface == null)) {}
    for (;;)
    {
      return -1L;
      paramExifInterface = (String)localObject + ' ' + paramExifInterface;
      if (paramExifInterface != null)
      {
        localObject = new ParsePosition(0);
        try
        {
          paramExifInterface = i.parse(paramExifInterface, (ParsePosition)localObject);
          if (paramExifInterface != null)
          {
            long l = paramExifInterface.getTime();
            return l;
          }
        }
        catch (IllegalArgumentException paramExifInterface) {}
      }
    }
    return -1L;
  }
  
  public static void a(ContentValues paramContentValues, String paramString1, String paramString2)
  {
    int j;
    int k;
    if ((paramString2 == null) || (paramString2.length() == 0))
    {
      int m = paramString1.lastIndexOf('/');
      if (m >= 0)
      {
        j = 0;
        k = paramString1.indexOf('/', j + 1);
        if ((k >= 0) && (k < m)) {
          break label86;
        }
        if (j != 0) {
          paramContentValues.put("album", paramString1.substring(j + 1, m));
        }
      }
    }
    for (;;)
    {
      if (!paramContentValues.containsKey("album")) {
        paramContentValues.put("album", "<unknown>");
      }
      return;
      label86:
      j = k;
      break;
      paramContentValues.put("album", paramString2);
    }
  }
  
  private boolean a(Context paramContext, List<h> paramList, i parami, o<String> paramo)
  {
    com.estrongs.a.a locala = null;
    h localh = null;
    Object localObject3 = ad.f();
    String[] arrayOfString = ad.a((aj[])localObject3);
    r localr;
    if (localObject3.length > 500)
    {
      localr = new r(false);
      localr.a(new d(this, (aj[])localObject3, arrayOfString));
    }
    for (;;)
    {
      StringBuffer localStringBuffer;
      Object localObject2;
      if ((localObject3.length > 0) && (localObject3.length <= 500))
      {
        localStringBuffer = new StringBuffer();
        int j = 0;
        if (j < localObject3.length)
        {
          if (a)
          {
            localObject2 = arrayOfString[j];
            localObject1 = localObject2;
            if (((String)localObject2).endsWith("/")) {
              localObject1 = ((String)localObject2).substring(0, ((String)localObject2).length() - 1);
            }
            if (localStringBuffer.length() > 0) {
              localStringBuffer.append(" and ");
            }
            localStringBuffer.append(d).append("!=").append(DatabaseUtils.sqlEscapeString((String)localObject1));
            localStringBuffer.append(" and ").append(d).append(" not like ").append(DatabaseUtils.sqlEscapeString((String)localObject1 + "/" + "%"));
          }
          for (;;)
          {
            j += 1;
            break;
            if (localStringBuffer.length() > 0) {
              localStringBuffer.append(" and ");
            }
            localStringBuffer.append(d).append("!=").append(DatabaseUtils.sqlEscapeString(arrayOfString[j]));
          }
        }
      }
      for (Object localObject1 = localStringBuffer.toString();; localObject1 = null)
      {
        if ((a() != null) && (a().length() > 0)) {
          if (localObject1 == null) {
            localObject1 = "(" + a() + ")";
          }
        }
        for (localObject2 = localObject1;; localObject2 = localObject1)
        {
          localObject3 = paramContext.getContentResolver();
          paramContext = localh;
          localObject1 = locala;
          try
          {
            localObject2 = ((ContentResolver)localObject3).query(c, null, (String)localObject2, null, e);
            if (localObject2 != null)
            {
              paramContext = (Context)localObject2;
              localObject1 = localObject2;
              locala = com.estrongs.a.a.getCurrentTask();
              if (locala != null)
              {
                paramContext = (Context)localObject2;
                localObject1 = localObject2;
                locala.sendMessage(6, new Object[] { Long.valueOf(((Cursor)localObject2).getCount()) });
              }
              boolean bool;
              label611:
              label633:
              do
              {
                do
                {
                  do
                  {
                    paramContext = (Context)localObject2;
                    localObject1 = localObject2;
                    if (!((Cursor)localObject2).moveToNext()) {
                      break label694;
                    }
                    if (locala != null)
                    {
                      paramContext = (Context)localObject2;
                      localObject1 = localObject2;
                      bool = locala.taskStopped();
                      if (bool)
                      {
                        return false;
                        localObject1 = "(" + a() + ") and " + (String)localObject1;
                        break;
                      }
                    }
                    if (locala != null)
                    {
                      paramContext = (Context)localObject2;
                      localObject1 = localObject2;
                      locala.sendMessage(7, new Object[] { Long.valueOf(1L) });
                    }
                    paramContext = (Context)localObject2;
                    localObject1 = localObject2;
                    localh = a(new File(((Cursor)localObject2).getString(((Cursor)localObject2).getColumnIndexOrThrow(d))));
                    if (localr == null) {
                      break label611;
                    }
                    paramContext = (Context)localObject2;
                    localObject1 = localObject2;
                  } while (!localr.a(localh));
                  if (parami == null) {
                    break label633;
                  }
                  paramContext = (Context)localObject2;
                  localObject1 = localObject2;
                } while (!parami.a(localh));
                paramContext = (Context)localObject2;
                localObject1 = localObject2;
                paramList.add(localh);
                paramContext = (Context)localObject2;
                localObject1 = localObject2;
                paramo.a(localh.getAbsolutePath(), new long[0]);
                paramContext = (Context)localObject2;
                localObject1 = localObject2;
                bool = paramo.a();
              } while (!bool);
            }
          }
          catch (Exception paramList)
          {
            for (;;)
            {
              label694:
              if (paramContext != null) {
                paramContext.close();
              }
            }
          }
          finally
          {
            if (localObject1 == null) {
              continue;
            }
            ((Cursor)localObject1).close();
          }
          return true;
        }
      }
      localr = null;
    }
  }
  
  public static Uri d(String paramString)
  {
    Object localObject1 = FexApplication.a().getContentResolver();
    Object localObject4 = ap.bV(paramString);
    Object localObject5 = MediaStore.Audio.Media.EXTERNAL_CONTENT_URI.toString();
    try
    {
      paramString = ((ContentResolver)localObject1).query(MediaStore.Audio.Media.EXTERNAL_CONTENT_URI, new String[] { "_id" }, "_data=?", new String[] { localObject4 }, null);
      TypedMap localTypedMap;
      int j;
      if ((paramString == null) || (paramString != null)) {
        paramString.close();
      }
    }
    finally
    {
      try
      {
        if (paramString.getCount() == 0)
        {
          localObject5 = new File((String)localObject4);
          localTypedMap = new TypedMap();
          localTypedMap.put("_data", localObject4);
          localTypedMap.put("_size", Long.valueOf(((File)localObject5).length()));
          localObject4 = am.a((ContentResolver)localObject1, localTypedMap);
          localObject1 = localObject4;
          if (paramString != null)
          {
            paramString.close();
            localObject1 = localObject4;
          }
        }
        do
        {
          return (Uri)localObject1;
          paramString.moveToFirst();
          j = paramString.getInt(0);
          localObject4 = Uri.parse((String)localObject5 + "/" + j);
          localObject1 = localObject4;
        } while (paramString == null);
        paramString.close();
        return (Uri)localObject4;
      }
      finally
      {
        for (;;) {}
      }
      localObject2 = finally;
      paramString = null;
    }
    throw ((Throwable)localObject2);
  }
  
  protected abstract h a(File paramFile);
  
  protected abstract String a();
  
  public List<h> a(Context paramContext, h paramh, i parami, o<String> paramo, TypedMap paramTypedMap)
  {
    g = paramo;
    h = paramContext;
    try
    {
      paramContext = super.a(paramh, parami, paramTypedMap);
      return paramContext;
    }
    catch (Exception paramContext)
    {
      paramContext.printStackTrace();
    }
    return Collections.EMPTY_LIST;
  }
  
  public void a(String paramString)
  {
    ArrayList localArrayList = new ArrayList();
    localArrayList.add(paramString);
    a(localArrayList);
  }
  
  /* Error */
  @android.annotation.SuppressLint({"NewApi"})
  public void a(List<String> paramList)
  {
    // Byte code:
    //   0: invokestatic 308	com/estrongs/android/pop/FexApplication:a	()Lcom/estrongs/android/pop/FexApplication;
    //   3: invokevirtual 309	com/estrongs/android/pop/FexApplication:getContentResolver	()Landroid/content/ContentResolver;
    //   6: astore 23
    //   8: iconst_0
    //   9: istore_2
    //   10: iload_2
    //   11: aload_1
    //   12: invokeinterface 388 1 0
    //   17: if_icmpge +31 -> 48
    //   20: aload_1
    //   21: iload_2
    //   22: aload_1
    //   23: iload_2
    //   24: invokeinterface 392 2 0
    //   29: checkcast 26	java/lang/String
    //   32: invokestatic 314	com/estrongs/android/util/ap:bV	(Ljava/lang/String;)Ljava/lang/String;
    //   35: invokeinterface 396 3 0
    //   40: pop
    //   41: iload_2
    //   42: iconst_1
    //   43: iadd
    //   44: istore_2
    //   45: goto -35 -> 10
    //   48: new 40	java/util/HashSet
    //   51: dup
    //   52: invokespecial 43	java/util/HashSet:<init>	()V
    //   55: astore 14
    //   57: aload_1
    //   58: invokeinterface 388 1 0
    //   63: sipush 500
    //   66: irem
    //   67: ifne +99 -> 166
    //   70: aload_1
    //   71: invokeinterface 388 1 0
    //   76: sipush 500
    //   79: idiv
    //   80: istore_2
    //   81: iconst_0
    //   82: istore_3
    //   83: aconst_null
    //   84: astore 12
    //   86: iload_3
    //   87: iload_2
    //   88: if_icmpge +272 -> 360
    //   91: new 177	java/lang/StringBuffer
    //   94: dup
    //   95: invokespecial 178	java/lang/StringBuffer:<init>	()V
    //   98: astore 13
    //   100: iload_3
    //   101: iload_2
    //   102: iconst_1
    //   103: isub
    //   104: if_icmpge +80 -> 184
    //   107: sipush 500
    //   110: istore 4
    //   112: goto +1909 -> 2021
    //   115: iload 5
    //   117: iload 4
    //   119: if_icmpge +122 -> 241
    //   122: aload_1
    //   123: iload_3
    //   124: sipush 500
    //   127: imul
    //   128: iload 5
    //   130: iadd
    //   131: invokeinterface 392 2 0
    //   136: checkcast 26	java/lang/String
    //   139: astore 15
    //   141: iload 5
    //   143: ifne +60 -> 203
    //   146: aload 13
    //   148: aload 15
    //   150: invokestatic 203	android/database/DatabaseUtils:sqlEscapeString	(Ljava/lang/String;)Ljava/lang/String;
    //   153: invokevirtual 194	java/lang/StringBuffer:append	(Ljava/lang/String;)Ljava/lang/StringBuffer;
    //   156: pop
    //   157: iload 5
    //   159: iconst_1
    //   160: iadd
    //   161: istore 5
    //   163: goto -48 -> 115
    //   166: aload_1
    //   167: invokeinterface 388 1 0
    //   172: sipush 500
    //   175: idiv
    //   176: istore_2
    //   177: iload_2
    //   178: iconst_1
    //   179: iadd
    //   180: istore_2
    //   181: goto -100 -> 81
    //   184: aload_1
    //   185: invokeinterface 388 1 0
    //   190: iload_2
    //   191: iconst_1
    //   192: isub
    //   193: sipush 500
    //   196: imul
    //   197: isub
    //   198: istore 4
    //   200: goto +1821 -> 2021
    //   203: aload 13
    //   205: ldc_w 398
    //   208: invokevirtual 194	java/lang/StringBuffer:append	(Ljava/lang/String;)Ljava/lang/StringBuffer;
    //   211: aload 15
    //   213: invokestatic 203	android/database/DatabaseUtils:sqlEscapeString	(Ljava/lang/String;)Ljava/lang/String;
    //   216: invokevirtual 194	java/lang/StringBuffer:append	(Ljava/lang/String;)Ljava/lang/StringBuffer;
    //   219: pop
    //   220: goto -63 -> 157
    //   223: astore_1
    //   224: aload 12
    //   226: astore_1
    //   227: invokestatic 402	com/estrongs/android/pop/utils/cm:b	()V
    //   230: aload_1
    //   231: ifnull +9 -> 240
    //   234: aload_1
    //   235: invokeinterface 263 1 0
    //   240: return
    //   241: aload_0
    //   242: getfield 222	com/estrongs/fs/impl/media/c:c	Landroid/net/Uri;
    //   245: astore 15
    //   247: new 93	java/lang/StringBuilder
    //   250: dup
    //   251: invokespecial 94	java/lang/StringBuilder:<init>	()V
    //   254: aload_0
    //   255: getfield 196	com/estrongs/fs/impl/media/c:d	Ljava/lang/String;
    //   258: invokevirtual 98	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   261: ldc_w 404
    //   264: invokevirtual 98	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   267: aload 13
    //   269: invokevirtual 208	java/lang/StringBuffer:toString	()Ljava/lang/String;
    //   272: invokevirtual 98	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   275: ldc -42
    //   277: invokevirtual 98	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   280: invokevirtual 105	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   283: astore 13
    //   285: aload 23
    //   287: aload 15
    //   289: iconst_1
    //   290: anewarray 26	java/lang/String
    //   293: dup
    //   294: iconst_0
    //   295: ldc_w 331
    //   298: aastore
    //   299: aload 13
    //   301: aconst_null
    //   302: aconst_null
    //   303: invokevirtual 230	android/content/ContentResolver:query	(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    //   306: astore 13
    //   308: aload 13
    //   310: ifnull +39 -> 349
    //   313: aload 13
    //   315: invokeinterface 257 1 0
    //   320: ifeq +22 -> 342
    //   323: aload 14
    //   325: aload 13
    //   327: iconst_0
    //   328: invokeinterface 275 2 0
    //   333: invokeinterface 53 2 0
    //   338: pop
    //   339: goto -26 -> 313
    //   342: aload 13
    //   344: invokeinterface 263 1 0
    //   349: iload_3
    //   350: iconst_1
    //   351: iadd
    //   352: istore_3
    //   353: aload 13
    //   355: astore 12
    //   357: goto -271 -> 86
    //   360: aload 14
    //   362: invokeinterface 405 1 0
    //   367: ifle +63 -> 430
    //   370: aload_1
    //   371: invokeinterface 409 1 0
    //   376: astore 13
    //   378: aload 13
    //   380: invokeinterface 414 1 0
    //   385: ifeq +45 -> 430
    //   388: aload 14
    //   390: aload 13
    //   392: invokeinterface 418 1 0
    //   397: invokeinterface 421 2 0
    //   402: ifeq -24 -> 378
    //   405: aload 13
    //   407: invokeinterface 424 1 0
    //   412: goto -34 -> 378
    //   415: astore_1
    //   416: aload 12
    //   418: ifnull +10 -> 428
    //   421: aload 12
    //   423: invokeinterface 263 1 0
    //   428: aload_1
    //   429: athrow
    //   430: aload_1
    //   431: invokeinterface 409 1 0
    //   436: astore 13
    //   438: aload 13
    //   440: invokeinterface 414 1 0
    //   445: ifeq +32 -> 477
    //   448: aload 13
    //   450: invokeinterface 418 1 0
    //   455: checkcast 26	java/lang/String
    //   458: ldc_w 426
    //   461: invokevirtual 429	java/lang/String:contains	(Ljava/lang/CharSequence;)Z
    //   464: ifeq -26 -> 438
    //   467: aload 13
    //   469: invokeinterface 424 1 0
    //   474: goto -36 -> 438
    //   477: aload_1
    //   478: invokeinterface 388 1 0
    //   483: istore_2
    //   484: iload_2
    //   485: ifne +16 -> 501
    //   488: aload 12
    //   490: ifnull -250 -> 240
    //   493: aload 12
    //   495: invokeinterface 263 1 0
    //   500: return
    //   501: aload_1
    //   502: invokeinterface 388 1 0
    //   507: sipush 500
    //   510: irem
    //   511: ifne +293 -> 804
    //   514: aload_1
    //   515: invokeinterface 388 1 0
    //   520: sipush 500
    //   523: idiv
    //   524: istore_2
    //   525: goto +1509 -> 2034
    //   528: iload 4
    //   530: anewarray 141	android/content/ContentValues
    //   533: astore 13
    //   535: iconst_0
    //   536: istore 5
    //   538: iload 5
    //   540: iload 4
    //   542: if_icmpge +297 -> 839
    //   545: aload_1
    //   546: iload_3
    //   547: sipush 500
    //   550: imul
    //   551: iload 5
    //   553: iadd
    //   554: invokeinterface 392 2 0
    //   559: checkcast 26	java/lang/String
    //   562: astore 14
    //   564: aload 13
    //   566: iload 5
    //   568: new 141	android/content/ContentValues
    //   571: dup
    //   572: invokespecial 430	android/content/ContentValues:<init>	()V
    //   575: aastore
    //   576: aload 13
    //   578: iload 5
    //   580: aaload
    //   581: aload_0
    //   582: getfield 196	com/estrongs/fs/impl/media/c:d	Ljava/lang/String;
    //   585: aload 14
    //   587: invokevirtual 145	android/content/ContentValues:put	(Ljava/lang/String;Ljava/lang/String;)V
    //   590: aload 14
    //   592: invokestatic 435	com/estrongs/android/util/bg:U	(Ljava/lang/String;)Ljava/lang/String;
    //   595: astore 15
    //   597: ldc_w 437
    //   600: aload 15
    //   602: if_acmpeq +16 -> 618
    //   605: aload 13
    //   607: iload 5
    //   609: aaload
    //   610: ldc_w 439
    //   613: aload 15
    //   615: invokevirtual 145	android/content/ContentValues:put	(Ljava/lang/String;Ljava/lang/String;)V
    //   618: aload 13
    //   620: iload 5
    //   622: aaload
    //   623: ldc_w 336
    //   626: new 267	java/io/File
    //   629: dup
    //   630: aload 14
    //   632: invokespecial 276	java/io/File:<init>	(Ljava/lang/String;)V
    //   635: invokevirtual 338	java/io/File:length	()J
    //   638: invokestatic 249	java/lang/Long:valueOf	(J)Ljava/lang/Long;
    //   641: invokevirtual 442	android/content/ContentValues:put	(Ljava/lang/String;Ljava/lang/Long;)V
    //   644: aload 13
    //   646: iload 5
    //   648: aaload
    //   649: ldc_w 444
    //   652: aload 14
    //   654: invokestatic 448	com/estrongs/fs/util/j:a	(Ljava/lang/String;)Ljava/lang/String;
    //   657: invokevirtual 145	android/content/ContentValues:put	(Ljava/lang/String;Ljava/lang/String;)V
    //   660: aload 13
    //   662: iload 5
    //   664: aaload
    //   665: ldc_w 450
    //   668: aload 14
    //   670: invokestatic 452	com/estrongs/android/util/ap:d	(Ljava/lang/String;)Ljava/lang/String;
    //   673: invokevirtual 145	android/content/ContentValues:put	(Ljava/lang/String;Ljava/lang/String;)V
    //   676: aload_0
    //   677: instanceof 454
    //   680: ifeq +1388 -> 2068
    //   683: aload 13
    //   685: iload 5
    //   687: aaload
    //   688: ldc_w 456
    //   691: ldc_w 458
    //   694: invokevirtual 145	android/content/ContentValues:put	(Ljava/lang/String;Ljava/lang/String;)V
    //   697: aload 13
    //   699: iload 5
    //   701: aaload
    //   702: ldc_w 460
    //   705: ldc_w 462
    //   708: invokevirtual 145	android/content/ContentValues:put	(Ljava/lang/String;Ljava/lang/String;)V
    //   711: aload 14
    //   713: getstatic 32	com/estrongs/fs/impl/media/c:a	[Ljava/lang/String;
    //   716: iconst_0
    //   717: aaload
    //   718: invokevirtual 464	java/lang/String:indexOf	(Ljava/lang/String;)I
    //   721: ifgt +1335 -> 2056
    //   724: aload 14
    //   726: getstatic 32	com/estrongs/fs/impl/media/c:a	[Ljava/lang/String;
    //   729: iconst_1
    //   730: aaload
    //   731: invokevirtual 464	java/lang/String:indexOf	(Ljava/lang/String;)I
    //   734: ifle +1343 -> 2077
    //   737: goto +1319 -> 2056
    //   740: aload 14
    //   742: getstatic 38	com/estrongs/fs/impl/media/c:b	[Ljava/lang/String;
    //   745: iconst_0
    //   746: aaload
    //   747: invokevirtual 464	java/lang/String:indexOf	(Ljava/lang/String;)I
    //   750: ifgt +1312 -> 2062
    //   753: aload 14
    //   755: getstatic 38	com/estrongs/fs/impl/media/c:b	[Ljava/lang/String;
    //   758: iconst_1
    //   759: aaload
    //   760: invokevirtual 464	java/lang/String:indexOf	(Ljava/lang/String;)I
    //   763: ifle +1320 -> 2083
    //   766: goto +1296 -> 2062
    //   769: aload 13
    //   771: iload 5
    //   773: aaload
    //   774: ldc_w 466
    //   777: iload 6
    //   779: invokestatic 471	java/lang/Boolean:valueOf	(Z)Ljava/lang/Boolean;
    //   782: invokevirtual 474	android/content/ContentValues:put	(Ljava/lang/String;Ljava/lang/Boolean;)V
    //   785: aload 13
    //   787: iload 5
    //   789: aaload
    //   790: ldc_w 476
    //   793: iload 7
    //   795: invokestatic 471	java/lang/Boolean:valueOf	(Z)Ljava/lang/Boolean;
    //   798: invokevirtual 474	android/content/ContentValues:put	(Ljava/lang/String;Ljava/lang/Boolean;)V
    //   801: goto +1267 -> 2068
    //   804: aload_1
    //   805: invokeinterface 388 1 0
    //   810: sipush 500
    //   813: idiv
    //   814: iconst_1
    //   815: iadd
    //   816: istore_2
    //   817: goto +1217 -> 2034
    //   820: aload_1
    //   821: invokeinterface 388 1 0
    //   826: iload_2
    //   827: iconst_1
    //   828: isub
    //   829: sipush 500
    //   832: imul
    //   833: isub
    //   834: istore 4
    //   836: goto -308 -> 528
    //   839: aload 23
    //   841: aload_0
    //   842: getfield 222	com/estrongs/fs/impl/media/c:c	Landroid/net/Uri;
    //   845: aload 13
    //   847: invokevirtual 480	android/content/ContentResolver:bulkInsert	(Landroid/net/Uri;[Landroid/content/ContentValues;)I
    //   850: pop
    //   851: iload_3
    //   852: iconst_1
    //   853: iadd
    //   854: istore_3
    //   855: goto +1181 -> 2036
    //   858: invokestatic 484	com/estrongs/android/util/bk:e	()Z
    //   861: ifeq +1087 -> 1948
    //   864: new 486	android/media/MediaMetadataRetriever
    //   867: dup
    //   868: invokespecial 487	android/media/MediaMetadataRetriever:<init>	()V
    //   871: astore 24
    //   873: iconst_0
    //   874: istore 4
    //   876: iload 4
    //   878: aload_1
    //   879: invokeinterface 388 1 0
    //   884: if_icmpge +809 -> 1693
    //   887: aload_1
    //   888: iload 4
    //   890: invokeinterface 392 2 0
    //   895: checkcast 26	java/lang/String
    //   898: astore 25
    //   900: aload 25
    //   902: invokestatic 489	com/estrongs/android/util/bg:b	(Ljava/lang/String;)I
    //   905: istore_2
    //   906: new 141	android/content/ContentValues
    //   909: dup
    //   910: invokespecial 430	android/content/ContentValues:<init>	()V
    //   913: astore 26
    //   915: aload_0
    //   916: instanceof 454
    //   919: ifne +14 -> 933
    //   922: aload_0
    //   923: instanceof 491
    //   926: istore 6
    //   928: iload 6
    //   930: ifeq +516 -> 1446
    //   933: aload 24
    //   935: aload 25
    //   937: invokevirtual 494	android/media/MediaMetadataRetriever:setDataSource	(Ljava/lang/String;)V
    //   940: aload 24
    //   942: bipush 7
    //   944: invokevirtual 497	android/media/MediaMetadataRetriever:extractMetadata	(I)Ljava/lang/String;
    //   947: astore 14
    //   949: aload 24
    //   951: iconst_1
    //   952: invokevirtual 497	android/media/MediaMetadataRetriever:extractMetadata	(I)Ljava/lang/String;
    //   955: astore 15
    //   957: aload 24
    //   959: bipush 12
    //   961: invokevirtual 497	android/media/MediaMetadataRetriever:extractMetadata	(I)Ljava/lang/String;
    //   964: astore 27
    //   966: aload 24
    //   968: iconst_2
    //   969: invokevirtual 497	android/media/MediaMetadataRetriever:extractMetadata	(I)Ljava/lang/String;
    //   972: astore 22
    //   974: aload 24
    //   976: bipush 9
    //   978: invokevirtual 497	android/media/MediaMetadataRetriever:extractMetadata	(I)Ljava/lang/String;
    //   981: astore 28
    //   983: aload 14
    //   985: ifnonnull +25 -> 1010
    //   988: aload 15
    //   990: ifnonnull +20 -> 1010
    //   993: aload 22
    //   995: astore 21
    //   997: aload 15
    //   999: astore 19
    //   1001: aload 14
    //   1003: astore 20
    //   1005: aload 22
    //   1007: ifnull +288 -> 1295
    //   1010: aconst_null
    //   1011: astore 16
    //   1013: aconst_null
    //   1014: astore 17
    //   1016: aconst_null
    //   1017: astore 18
    //   1019: iconst_0
    //   1020: istore_3
    //   1021: aload 14
    //   1023: ifnull +19 -> 1042
    //   1026: aload 14
    //   1028: ldc_w 499
    //   1031: invokevirtual 503	java/lang/String:getBytes	(Ljava/lang/String;)[B
    //   1034: astore 16
    //   1036: iconst_0
    //   1037: aload 16
    //   1039: arraylength
    //   1040: iadd
    //   1041: istore_3
    //   1042: iload_3
    //   1043: istore_2
    //   1044: aload 15
    //   1046: ifnull +19 -> 1065
    //   1049: aload 15
    //   1051: ldc_w 499
    //   1054: invokevirtual 503	java/lang/String:getBytes	(Ljava/lang/String;)[B
    //   1057: astore 17
    //   1059: iload_3
    //   1060: aload 17
    //   1062: arraylength
    //   1063: iadd
    //   1064: istore_2
    //   1065: iload_2
    //   1066: istore_3
    //   1067: aload 22
    //   1069: ifnull +19 -> 1088
    //   1072: aload 22
    //   1074: ldc_w 499
    //   1077: invokevirtual 503	java/lang/String:getBytes	(Ljava/lang/String;)[B
    //   1080: astore 18
    //   1082: iload_2
    //   1083: aload 18
    //   1085: arraylength
    //   1086: iadd
    //   1087: istore_3
    //   1088: iload_3
    //   1089: newarray <illegal type>
    //   1091: astore 13
    //   1093: iconst_0
    //   1094: istore_2
    //   1095: aload 14
    //   1097: ifnull +21 -> 1118
    //   1100: aload 16
    //   1102: iconst_0
    //   1103: aload 13
    //   1105: iconst_0
    //   1106: aload 16
    //   1108: arraylength
    //   1109: invokestatic 509	java/lang/System:arraycopy	(Ljava/lang/Object;ILjava/lang/Object;II)V
    //   1112: iconst_0
    //   1113: aload 16
    //   1115: arraylength
    //   1116: iadd
    //   1117: istore_2
    //   1118: iload_2
    //   1119: istore_3
    //   1120: aload 15
    //   1122: ifnull +21 -> 1143
    //   1125: aload 17
    //   1127: iconst_0
    //   1128: aload 13
    //   1130: iload_2
    //   1131: aload 17
    //   1133: arraylength
    //   1134: invokestatic 509	java/lang/System:arraycopy	(Ljava/lang/Object;ILjava/lang/Object;II)V
    //   1137: iload_2
    //   1138: aload 17
    //   1140: arraylength
    //   1141: iadd
    //   1142: istore_3
    //   1143: aload 22
    //   1145: ifnull +15 -> 1160
    //   1148: aload 18
    //   1150: iconst_0
    //   1151: aload 13
    //   1153: iload_3
    //   1154: aload 18
    //   1156: arraylength
    //   1157: invokestatic 509	java/lang/System:arraycopy	(Ljava/lang/Object;ILjava/lang/Object;II)V
    //   1160: aload 13
    //   1162: aload 13
    //   1164: arraylength
    //   1165: iconst_1
    //   1166: invokestatic 514	com/estrongs/android/util/e:a	([BIZ)Ljava/lang/String;
    //   1169: astore 29
    //   1171: aload 22
    //   1173: astore 21
    //   1175: aload 15
    //   1177: astore 19
    //   1179: aload 14
    //   1181: astore 20
    //   1183: aload 29
    //   1185: ifnull +110 -> 1295
    //   1188: aload 22
    //   1190: astore 21
    //   1192: aload 15
    //   1194: astore 19
    //   1196: aload 14
    //   1198: astore 20
    //   1200: getstatic 45	com/estrongs/fs/impl/media/c:f	Ljava/util/Set;
    //   1203: aload 29
    //   1205: invokeinterface 421 2 0
    //   1210: ifne +85 -> 1295
    //   1213: aload 14
    //   1215: astore 13
    //   1217: aload 14
    //   1219: ifnull +16 -> 1235
    //   1222: new 26	java/lang/String
    //   1225: dup
    //   1226: aload 16
    //   1228: aload 29
    //   1230: invokespecial 517	java/lang/String:<init>	([BLjava/lang/String;)V
    //   1233: astore 13
    //   1235: aload 15
    //   1237: astore 14
    //   1239: aload 15
    //   1241: ifnull +16 -> 1257
    //   1244: new 26	java/lang/String
    //   1247: dup
    //   1248: aload 17
    //   1250: aload 29
    //   1252: invokespecial 517	java/lang/String:<init>	([BLjava/lang/String;)V
    //   1255: astore 14
    //   1257: aload 22
    //   1259: astore 21
    //   1261: aload 14
    //   1263: astore 19
    //   1265: aload 13
    //   1267: astore 20
    //   1269: aload 22
    //   1271: ifnull +24 -> 1295
    //   1274: new 26	java/lang/String
    //   1277: dup
    //   1278: aload 18
    //   1280: aload 29
    //   1282: invokespecial 517	java/lang/String:<init>	([BLjava/lang/String;)V
    //   1285: astore 21
    //   1287: aload 13
    //   1289: astore 20
    //   1291: aload 14
    //   1293: astore 19
    //   1295: aload 20
    //   1297: ifnull +13 -> 1310
    //   1300: aload 26
    //   1302: ldc_w 444
    //   1305: aload 20
    //   1307: invokevirtual 145	android/content/ContentValues:put	(Ljava/lang/String;Ljava/lang/String;)V
    //   1310: aload 26
    //   1312: aload 25
    //   1314: aload 19
    //   1316: invokestatic 519	com/estrongs/fs/impl/media/c:a	(Landroid/content/ContentValues;Ljava/lang/String;Ljava/lang/String;)V
    //   1319: aload 27
    //   1321: ifnull +13 -> 1334
    //   1324: aload 26
    //   1326: ldc_w 439
    //   1329: aload 27
    //   1331: invokevirtual 145	android/content/ContentValues:put	(Ljava/lang/String;Ljava/lang/String;)V
    //   1334: aload 21
    //   1336: ifnull +74 -> 1410
    //   1339: aload 26
    //   1341: ldc_w 521
    //   1344: aload 21
    //   1346: invokevirtual 145	android/content/ContentValues:put	(Ljava/lang/String;Ljava/lang/String;)V
    //   1349: aload 28
    //   1351: ifnull +13 -> 1364
    //   1354: aload 26
    //   1356: ldc_w 460
    //   1359: aload 28
    //   1361: invokevirtual 145	android/content/ContentValues:put	(Ljava/lang/String;Ljava/lang/String;)V
    //   1364: aload 23
    //   1366: aload_0
    //   1367: getfield 222	com/estrongs/fs/impl/media/c:c	Landroid/net/Uri;
    //   1370: aload 26
    //   1372: new 93	java/lang/StringBuilder
    //   1375: dup
    //   1376: invokespecial 94	java/lang/StringBuilder:<init>	()V
    //   1379: ldc_w 523
    //   1382: invokevirtual 98	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   1385: aload 25
    //   1387: invokestatic 203	android/database/DatabaseUtils:sqlEscapeString	(Ljava/lang/String;)Ljava/lang/String;
    //   1390: invokevirtual 98	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   1393: invokevirtual 105	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   1396: aconst_null
    //   1397: invokevirtual 527	android/content/ContentResolver:update	(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    //   1400: pop
    //   1401: iload 4
    //   1403: iconst_1
    //   1404: iadd
    //   1405: istore 4
    //   1407: goto -531 -> 876
    //   1410: aload 26
    //   1412: ldc_w 521
    //   1415: ldc -105
    //   1417: invokevirtual 145	android/content/ContentValues:put	(Ljava/lang/String;Ljava/lang/String;)V
    //   1420: goto -71 -> 1349
    //   1423: astore 13
    //   1425: aload 26
    //   1427: aload 25
    //   1429: aconst_null
    //   1430: invokestatic 519	com/estrongs/fs/impl/media/c:a	(Landroid/content/ContentValues;Ljava/lang/String;Ljava/lang/String;)V
    //   1433: aload 26
    //   1435: ldc_w 521
    //   1438: ldc -105
    //   1440: invokevirtual 145	android/content/ContentValues:put	(Ljava/lang/String;Ljava/lang/String;)V
    //   1443: goto -79 -> 1364
    //   1446: aload_0
    //   1447: instanceof 529
    //   1450: ifeq -49 -> 1401
    //   1453: new 267	java/io/File
    //   1456: dup
    //   1457: aload 25
    //   1459: invokespecial 276	java/io/File:<init>	(Ljava/lang/String;)V
    //   1462: invokevirtual 532	java/io/File:lastModified	()J
    //   1465: lstore 8
    //   1467: iload_2
    //   1468: ldc_w 533
    //   1471: if_icmpeq +10 -> 1481
    //   1474: iload_2
    //   1475: ldc_w 534
    //   1478: if_icmpne +158 -> 1636
    //   1481: new 83	android/media/ExifInterface
    //   1484: dup
    //   1485: aload 25
    //   1487: invokespecial 535	android/media/ExifInterface:<init>	(Ljava/lang/String;)V
    //   1490: astore 13
    //   1492: aload 13
    //   1494: ifnull +142 -> 1636
    //   1497: iconst_2
    //   1498: newarray <illegal type>
    //   1500: astore 14
    //   1502: aload 13
    //   1504: aload 14
    //   1506: invokevirtual 539	android/media/ExifInterface:getLatLong	([F)Z
    //   1509: ifeq +33 -> 1542
    //   1512: aload 26
    //   1514: ldc_w 541
    //   1517: aload 14
    //   1519: iconst_0
    //   1520: faload
    //   1521: invokestatic 546	java/lang/Float:valueOf	(F)Ljava/lang/Float;
    //   1524: invokevirtual 549	android/content/ContentValues:put	(Ljava/lang/String;Ljava/lang/Float;)V
    //   1527: aload 26
    //   1529: ldc_w 551
    //   1532: aload 14
    //   1534: iconst_1
    //   1535: faload
    //   1536: invokestatic 546	java/lang/Float:valueOf	(F)Ljava/lang/Float;
    //   1539: invokevirtual 549	android/content/ContentValues:put	(Ljava/lang/String;Ljava/lang/Float;)V
    //   1542: aload 13
    //   1544: invokestatic 553	com/estrongs/fs/impl/media/c:a	(Landroid/media/ExifInterface;)J
    //   1547: lstore 10
    //   1549: lload 10
    //   1551: ldc2_w 90
    //   1554: lcmp
    //   1555: ifeq +16 -> 1571
    //   1558: aload 26
    //   1560: ldc_w 555
    //   1563: lload 10
    //   1565: invokestatic 249	java/lang/Long:valueOf	(J)Ljava/lang/Long;
    //   1568: invokevirtual 442	android/content/ContentValues:put	(Ljava/lang/String;Ljava/lang/Long;)V
    //   1571: aload 13
    //   1573: ldc_w 557
    //   1576: iconst_m1
    //   1577: invokevirtual 561	android/media/ExifInterface:getAttributeInt	(Ljava/lang/String;I)I
    //   1580: istore_2
    //   1581: iload_2
    //   1582: iconst_m1
    //   1583: if_icmpeq +53 -> 1636
    //   1586: iload_2
    //   1587: tableswitch	default:+502->2089, 3:+521->2108, 4:+502->2089, 5:+502->2089, 6:+515->2102, 7:+502->2089, 8:+528->2115
    //   1624: aload 26
    //   1626: ldc_w 563
    //   1629: iload_2
    //   1630: invokestatic 568	java/lang/Integer:valueOf	(I)Ljava/lang/Integer;
    //   1633: invokevirtual 571	android/content/ContentValues:put	(Ljava/lang/String;Ljava/lang/Integer;)V
    //   1636: aload 26
    //   1638: ldc_w 573
    //   1641: lload 8
    //   1643: ldc2_w 574
    //   1646: ldiv
    //   1647: invokestatic 249	java/lang/Long:valueOf	(J)Ljava/lang/Long;
    //   1650: invokevirtual 442	android/content/ContentValues:put	(Ljava/lang/String;Ljava/lang/Long;)V
    //   1653: aload 23
    //   1655: aload_0
    //   1656: getfield 222	com/estrongs/fs/impl/media/c:c	Landroid/net/Uri;
    //   1659: aload 26
    //   1661: new 93	java/lang/StringBuilder
    //   1664: dup
    //   1665: invokespecial 94	java/lang/StringBuilder:<init>	()V
    //   1668: ldc_w 523
    //   1671: invokevirtual 98	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   1674: aload 25
    //   1676: invokestatic 203	android/database/DatabaseUtils:sqlEscapeString	(Ljava/lang/String;)Ljava/lang/String;
    //   1679: invokevirtual 98	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   1682: invokevirtual 105	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   1685: aconst_null
    //   1686: invokevirtual 527	android/content/ContentResolver:update	(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    //   1689: pop
    //   1690: goto -289 -> 1401
    //   1693: aload_0
    //   1694: instanceof 529
    //   1697: istore 6
    //   1699: iload 6
    //   1701: ifeq +180 -> 1881
    //   1704: aload_1
    //   1705: invokeinterface 388 1 0
    //   1710: sipush 500
    //   1713: irem
    //   1714: ifne +111 -> 1825
    //   1717: aload_1
    //   1718: invokeinterface 388 1 0
    //   1723: sipush 500
    //   1726: idiv
    //   1727: istore_2
    //   1728: new 141	android/content/ContentValues
    //   1731: dup
    //   1732: invokespecial 430	android/content/ContentValues:<init>	()V
    //   1735: astore 13
    //   1737: aload 13
    //   1739: ldc_w 573
    //   1742: iconst_m1
    //   1743: invokestatic 568	java/lang/Integer:valueOf	(I)Ljava/lang/Integer;
    //   1746: invokevirtual 571	android/content/ContentValues:put	(Ljava/lang/String;Ljava/lang/Integer;)V
    //   1749: iconst_0
    //   1750: istore_3
    //   1751: iload_3
    //   1752: iload_2
    //   1753: if_icmpge +128 -> 1881
    //   1756: new 177	java/lang/StringBuffer
    //   1759: dup
    //   1760: invokespecial 178	java/lang/StringBuffer:<init>	()V
    //   1763: astore 14
    //   1765: iload_3
    //   1766: iload_2
    //   1767: iconst_1
    //   1768: isub
    //   1769: if_icmpge +72 -> 1841
    //   1772: sipush 500
    //   1775: istore 4
    //   1777: goto +345 -> 2122
    //   1780: iload 5
    //   1782: iload 4
    //   1784: if_icmpge +115 -> 1899
    //   1787: aload_1
    //   1788: iload_3
    //   1789: sipush 500
    //   1792: imul
    //   1793: iload 5
    //   1795: iadd
    //   1796: invokeinterface 392 2 0
    //   1801: checkcast 26	java/lang/String
    //   1804: astore 15
    //   1806: iload 5
    //   1808: ifne +52 -> 1860
    //   1811: aload 14
    //   1813: aload 15
    //   1815: invokestatic 203	android/database/DatabaseUtils:sqlEscapeString	(Ljava/lang/String;)Ljava/lang/String;
    //   1818: invokevirtual 194	java/lang/StringBuffer:append	(Ljava/lang/String;)Ljava/lang/StringBuffer;
    //   1821: pop
    //   1822: goto +306 -> 2128
    //   1825: aload_1
    //   1826: invokeinterface 388 1 0
    //   1831: sipush 500
    //   1834: idiv
    //   1835: iconst_1
    //   1836: iadd
    //   1837: istore_2
    //   1838: goto -110 -> 1728
    //   1841: aload_1
    //   1842: invokeinterface 388 1 0
    //   1847: iload_2
    //   1848: iconst_1
    //   1849: isub
    //   1850: sipush 500
    //   1853: imul
    //   1854: isub
    //   1855: istore 4
    //   1857: goto +265 -> 2122
    //   1860: aload 14
    //   1862: ldc_w 398
    //   1865: invokevirtual 194	java/lang/StringBuffer:append	(Ljava/lang/String;)Ljava/lang/StringBuffer;
    //   1868: aload 15
    //   1870: invokestatic 203	android/database/DatabaseUtils:sqlEscapeString	(Ljava/lang/String;)Ljava/lang/String;
    //   1873: invokevirtual 194	java/lang/StringBuffer:append	(Ljava/lang/String;)Ljava/lang/StringBuffer;
    //   1876: pop
    //   1877: goto +251 -> 2128
    //   1880: astore_1
    //   1881: aload 24
    //   1883: invokevirtual 578	android/media/MediaMetadataRetriever:release	()V
    //   1886: aload 12
    //   1888: ifnull -1648 -> 240
    //   1891: aload 12
    //   1893: invokeinterface 263 1 0
    //   1898: return
    //   1899: aload 23
    //   1901: aload_0
    //   1902: getfield 222	com/estrongs/fs/impl/media/c:c	Landroid/net/Uri;
    //   1905: aload 13
    //   1907: new 93	java/lang/StringBuilder
    //   1910: dup
    //   1911: invokespecial 94	java/lang/StringBuilder:<init>	()V
    //   1914: ldc_w 580
    //   1917: invokevirtual 98	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   1920: aload 14
    //   1922: invokevirtual 208	java/lang/StringBuffer:toString	()Ljava/lang/String;
    //   1925: invokevirtual 98	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   1928: ldc -42
    //   1930: invokevirtual 98	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   1933: invokevirtual 105	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   1936: aconst_null
    //   1937: invokevirtual 527	android/content/ContentResolver:update	(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    //   1940: pop
    //   1941: iload_3
    //   1942: iconst_1
    //   1943: iadd
    //   1944: istore_3
    //   1945: goto -194 -> 1751
    //   1948: iconst_0
    //   1949: istore_2
    //   1950: iload_2
    //   1951: aload_1
    //   1952: invokeinterface 388 1 0
    //   1957: if_icmpge -71 -> 1886
    //   1960: aload_1
    //   1961: iload_2
    //   1962: invokeinterface 392 2 0
    //   1967: checkcast 26	java/lang/String
    //   1970: invokestatic 582	com/estrongs/android/pop/utils/cm:b	(Ljava/lang/String;)V
    //   1973: iload_2
    //   1974: iconst_1
    //   1975: iadd
    //   1976: istore_2
    //   1977: goto -27 -> 1950
    //   1980: astore_1
    //   1981: goto -95 -> 1886
    //   1984: astore_1
    //   1985: aconst_null
    //   1986: astore 12
    //   1988: goto -1572 -> 416
    //   1991: astore_1
    //   1992: aload 13
    //   1994: astore 12
    //   1996: goto -1580 -> 416
    //   1999: astore 13
    //   2001: aload_1
    //   2002: astore 12
    //   2004: aload 13
    //   2006: astore_1
    //   2007: goto -1591 -> 416
    //   2010: astore_1
    //   2011: aconst_null
    //   2012: astore_1
    //   2013: goto -1786 -> 227
    //   2016: astore 15
    //   2018: goto -1374 -> 644
    //   2021: iconst_0
    //   2022: istore 5
    //   2024: goto -1909 -> 115
    //   2027: astore_1
    //   2028: aload 13
    //   2030: astore_1
    //   2031: goto -1804 -> 227
    //   2034: iconst_0
    //   2035: istore_3
    //   2036: iload_3
    //   2037: iload_2
    //   2038: if_icmpge -1180 -> 858
    //   2041: iload_3
    //   2042: iload_2
    //   2043: iconst_1
    //   2044: isub
    //   2045: if_icmpge -1225 -> 820
    //   2048: sipush 500
    //   2051: istore 4
    //   2053: goto -1525 -> 528
    //   2056: iconst_1
    //   2057: istore 6
    //   2059: goto -1319 -> 740
    //   2062: iconst_1
    //   2063: istore 7
    //   2065: goto -1296 -> 769
    //   2068: iload 5
    //   2070: iconst_1
    //   2071: iadd
    //   2072: istore 5
    //   2074: goto -1536 -> 538
    //   2077: iconst_0
    //   2078: istore 6
    //   2080: goto -1340 -> 740
    //   2083: iconst_0
    //   2084: istore 7
    //   2086: goto -1317 -> 769
    //   2089: iconst_0
    //   2090: istore_2
    //   2091: goto -467 -> 1624
    //   2094: astore 13
    //   2096: aconst_null
    //   2097: astore 13
    //   2099: goto -607 -> 1492
    //   2102: bipush 90
    //   2104: istore_2
    //   2105: goto -481 -> 1624
    //   2108: sipush 180
    //   2111: istore_2
    //   2112: goto -488 -> 1624
    //   2115: sipush 270
    //   2118: istore_2
    //   2119: goto -495 -> 1624
    //   2122: iconst_0
    //   2123: istore 5
    //   2125: goto -345 -> 1780
    //   2128: iload 5
    //   2130: iconst_1
    //   2131: iadd
    //   2132: istore 5
    //   2134: goto -354 -> 1780
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	2137	0	this	c
    //   0	2137	1	paramList	List<String>
    //   9	2110	2	j	int
    //   82	1964	3	k	int
    //   110	1942	4	m	int
    //   115	2018	5	n	int
    //   777	1302	6	bool1	boolean
    //   793	1292	7	bool2	boolean
    //   1465	177	8	l1	long
    //   1547	17	10	l2	long
    //   84	1919	12	localObject1	Object
    //   98	1190	13	localObject2	Object
    //   1423	1	13	localException1	Exception
    //   1490	503	13	localObject3	Object
    //   1999	30	13	localObject4	Object
    //   2094	1	13	localIOException	java.io.IOException
    //   2097	1	13	localObject5	Object
    //   55	1866	14	localObject6	Object
    //   139	1730	15	localObject7	Object
    //   2016	1	15	localException2	Exception
    //   1011	216	16	arrayOfByte1	byte[]
    //   1014	235	17	arrayOfByte2	byte[]
    //   1017	262	18	arrayOfByte3	byte[]
    //   999	316	19	localObject8	Object
    //   1003	303	20	localObject9	Object
    //   995	350	21	str1	String
    //   972	298	22	str2	String
    //   6	1894	23	localContentResolver	ContentResolver
    //   871	1011	24	localMediaMetadataRetriever	android.media.MediaMetadataRetriever
    //   898	777	25	str3	String
    //   913	747	26	localContentValues	ContentValues
    //   964	366	27	str4	String
    //   981	379	28	str5	String
    //   1169	112	29	str6	String
    // Exception table:
    //   from	to	target	type
    //   91	100	223	java/lang/Exception
    //   122	141	223	java/lang/Exception
    //   146	157	223	java/lang/Exception
    //   184	200	223	java/lang/Exception
    //   203	220	223	java/lang/Exception
    //   241	308	223	java/lang/Exception
    //   360	378	223	java/lang/Exception
    //   378	412	223	java/lang/Exception
    //   430	438	223	java/lang/Exception
    //   438	474	223	java/lang/Exception
    //   477	484	223	java/lang/Exception
    //   501	525	223	java/lang/Exception
    //   528	535	223	java/lang/Exception
    //   545	597	223	java/lang/Exception
    //   605	618	223	java/lang/Exception
    //   644	737	223	java/lang/Exception
    //   740	766	223	java/lang/Exception
    //   769	801	223	java/lang/Exception
    //   804	817	223	java/lang/Exception
    //   820	836	223	java/lang/Exception
    //   839	851	223	java/lang/Exception
    //   858	873	223	java/lang/Exception
    //   876	928	223	java/lang/Exception
    //   1364	1401	223	java/lang/Exception
    //   1425	1443	223	java/lang/Exception
    //   1446	1467	223	java/lang/Exception
    //   1481	1492	223	java/lang/Exception
    //   1497	1542	223	java/lang/Exception
    //   1542	1549	223	java/lang/Exception
    //   1558	1571	223	java/lang/Exception
    //   1571	1581	223	java/lang/Exception
    //   1624	1636	223	java/lang/Exception
    //   1636	1690	223	java/lang/Exception
    //   1693	1699	223	java/lang/Exception
    //   1881	1886	223	java/lang/Exception
    //   1950	1973	223	java/lang/Exception
    //   91	100	415	finally
    //   122	141	415	finally
    //   146	157	415	finally
    //   184	200	415	finally
    //   203	220	415	finally
    //   241	308	415	finally
    //   360	378	415	finally
    //   378	412	415	finally
    //   430	438	415	finally
    //   438	474	415	finally
    //   477	484	415	finally
    //   501	525	415	finally
    //   528	535	415	finally
    //   545	597	415	finally
    //   605	618	415	finally
    //   618	644	415	finally
    //   644	737	415	finally
    //   740	766	415	finally
    //   769	801	415	finally
    //   804	817	415	finally
    //   820	836	415	finally
    //   839	851	415	finally
    //   858	873	415	finally
    //   876	928	415	finally
    //   933	983	415	finally
    //   1026	1042	415	finally
    //   1049	1065	415	finally
    //   1072	1088	415	finally
    //   1088	1093	415	finally
    //   1100	1118	415	finally
    //   1125	1143	415	finally
    //   1148	1160	415	finally
    //   1160	1171	415	finally
    //   1200	1213	415	finally
    //   1222	1235	415	finally
    //   1244	1257	415	finally
    //   1274	1287	415	finally
    //   1300	1310	415	finally
    //   1310	1319	415	finally
    //   1324	1334	415	finally
    //   1339	1349	415	finally
    //   1354	1364	415	finally
    //   1364	1401	415	finally
    //   1410	1420	415	finally
    //   1425	1443	415	finally
    //   1446	1467	415	finally
    //   1481	1492	415	finally
    //   1497	1542	415	finally
    //   1542	1549	415	finally
    //   1558	1571	415	finally
    //   1571	1581	415	finally
    //   1624	1636	415	finally
    //   1636	1690	415	finally
    //   1693	1699	415	finally
    //   1704	1728	415	finally
    //   1728	1749	415	finally
    //   1756	1765	415	finally
    //   1787	1806	415	finally
    //   1811	1822	415	finally
    //   1825	1838	415	finally
    //   1841	1857	415	finally
    //   1860	1877	415	finally
    //   1881	1886	415	finally
    //   1899	1941	415	finally
    //   1950	1973	415	finally
    //   933	983	1423	java/lang/Exception
    //   1026	1042	1423	java/lang/Exception
    //   1049	1065	1423	java/lang/Exception
    //   1072	1088	1423	java/lang/Exception
    //   1088	1093	1423	java/lang/Exception
    //   1100	1118	1423	java/lang/Exception
    //   1125	1143	1423	java/lang/Exception
    //   1148	1160	1423	java/lang/Exception
    //   1160	1171	1423	java/lang/Exception
    //   1200	1213	1423	java/lang/Exception
    //   1222	1235	1423	java/lang/Exception
    //   1244	1257	1423	java/lang/Exception
    //   1274	1287	1423	java/lang/Exception
    //   1300	1310	1423	java/lang/Exception
    //   1310	1319	1423	java/lang/Exception
    //   1324	1334	1423	java/lang/Exception
    //   1339	1349	1423	java/lang/Exception
    //   1354	1364	1423	java/lang/Exception
    //   1410	1420	1423	java/lang/Exception
    //   1704	1728	1880	java/lang/Exception
    //   1728	1749	1880	java/lang/Exception
    //   1756	1765	1880	java/lang/Exception
    //   1787	1806	1880	java/lang/Exception
    //   1811	1822	1880	java/lang/Exception
    //   1825	1838	1880	java/lang/Exception
    //   1841	1857	1880	java/lang/Exception
    //   1860	1877	1880	java/lang/Exception
    //   1899	1941	1880	java/lang/Exception
    //   1881	1886	1980	java/lang/RuntimeException
    //   0	8	1984	finally
    //   10	41	1984	finally
    //   48	81	1984	finally
    //   166	177	1984	finally
    //   313	339	1991	finally
    //   342	349	1991	finally
    //   227	230	1999	finally
    //   0	8	2010	java/lang/Exception
    //   10	41	2010	java/lang/Exception
    //   48	81	2010	java/lang/Exception
    //   166	177	2010	java/lang/Exception
    //   618	644	2016	java/lang/Exception
    //   313	339	2027	java/lang/Exception
    //   342	349	2027	java/lang/Exception
    //   1481	1492	2094	java/io/IOException
  }
  
  public int b(String paramString)
  {
    try
    {
      String str = ap.bV(paramString);
      paramString = FexApplication.a().getContentResolver();
      str = d + "=" + DatabaseUtils.sqlEscapeString(str);
      int j = paramString.delete(c, str, null);
      return j;
    }
    catch (Exception paramString)
    {
      paramString.printStackTrace();
    }
    return 0;
  }
  
  public List<h> b(h paramh, i parami, TypedMap paramTypedMap)
  {
    if (!cm.a(paramTypedMap)) {}
    do
    {
      return null;
      paramh = new LinkedList();
    } while (!a(h, paramh, parami, g));
    return paramh;
  }
  
  public void b(List<String> paramList)
  {
    if (paramList.size() == 0) {
      return;
    }
    int j = 0;
    for (;;)
    {
      if (j >= paramList.size()) {
        break label62;
      }
      if (new File((String)paramList.get(j)).exists())
      {
        if (cm.a()) {
          break;
        }
        cm.b();
        return;
      }
      j += 1;
    }
    for (;;)
    {
      label62:
      StringBuffer localStringBuffer;
      try
      {
        String str1;
        if (paramList.size() % 500 == 0)
        {
          j = paramList.size() / 500;
          break label378;
          if (k >= j) {
            break;
          }
          localStringBuffer = new StringBuffer();
          if (k >= j - 1) {
            continue;
          }
          m = 500;
          break label383;
          if (n >= m) {
            break label351;
          }
          String str2 = ap.bV((String)paramList.get(k * 500 + n));
          str1 = str2;
          if (!str2.endsWith("/")) {
            str1 = str2 + "/";
          }
          if (n != 0) {
            continue;
          }
          localStringBuffer.append(d + " like " + DatabaseUtils.sqlEscapeString(new StringBuilder().append(str1).append("%").toString()));
          break label389;
        }
        j = paramList.size() / 500 + 1;
        break label378;
        int m = paramList.size() - (j - 1) * 500;
        break label383;
        localStringBuffer.append(" or ").append(d + " like " + DatabaseUtils.sqlEscapeString(new StringBuilder().append(str1).append("%").toString()));
      }
      catch (Exception paramList)
      {
        paramList.printStackTrace();
        return;
      }
      label351:
      FexApplication.a().getContentResolver().delete(c, localStringBuffer.toString(), null);
      k += 1;
      continue;
      label378:
      int k = 0;
      continue;
      label383:
      int n = 0;
      continue;
      label389:
      n += 1;
    }
  }
  
  public void c(String paramString)
  {
    ArrayList localArrayList = new ArrayList();
    localArrayList.add(paramString);
    b(localArrayList);
  }
  
  public void c(List<String> paramList)
  {
    if (paramList.size() == 0) {
      return;
    }
    for (;;)
    {
      StringBuffer localStringBuffer;
      try
      {
        String str;
        if (paramList.size() % 500 == 0)
        {
          j = paramList.size() / 500;
          break label233;
          if (k >= j) {
            break;
          }
          localStringBuffer = new StringBuffer();
          if (k >= j - 1) {
            continue;
          }
          m = 500;
          break label238;
          if (n >= m) {
            break label175;
          }
          str = ap.bV((String)paramList.get(k * 500 + n));
          if (n != 0) {
            continue;
          }
          localStringBuffer.append(DatabaseUtils.sqlEscapeString(str));
          break label244;
        }
        int j = paramList.size() / 500 + 1;
        break label233;
        int m = paramList.size() - (j - 1) * 500;
        break label238;
        localStringBuffer.append(",").append(DatabaseUtils.sqlEscapeString(str));
      }
      catch (Exception paramList)
      {
        paramList.printStackTrace();
        return;
      }
      label175:
      FexApplication.a().getContentResolver().delete(c, d + " IN (" + localStringBuffer.toString() + ")", null);
      k += 1;
      continue;
      label233:
      int k = 0;
      continue;
      label238:
      int n = 0;
      continue;
      label244:
      n += 1;
    }
  }
}

/* Location:
 * Qualified Name:     com.estrongs.fs.impl.media.c
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */