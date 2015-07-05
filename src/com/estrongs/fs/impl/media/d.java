package com.estrongs.fs.impl.media;

import android.annotation.SuppressLint;
import android.content.ContentResolver;
import android.content.ContentValues;
import android.database.Cursor;
import android.database.DatabaseUtils;
import android.graphics.BitmapFactory.Options;
import android.media.ExifInterface;
import android.net.Uri;
import android.provider.MediaStore.Files;
import com.estrongs.android.pop.FexApplication;
import com.estrongs.android.pop.ad;
import com.estrongs.android.pop.app.b.q;
import com.estrongs.android.pop.app.b.r;
import com.estrongs.android.pop.app.b.v;
import com.estrongs.android.pop.utils.aa;
import com.estrongs.android.pop.utils.af;
import com.estrongs.android.pop.utils.cd;
import com.estrongs.android.util.TypedMap;
import com.estrongs.android.util.am;
import com.estrongs.android.util.bc;
import com.estrongs.fs.h;
import com.estrongs.fs.i;
import com.estrongs.fs.k;
import java.io.File;
import java.io.InputStream;
import java.io.OutputStream;
import java.text.ParsePosition;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Date;
import java.util.HashSet;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.TimeZone;

@SuppressLint({"NewApi"})
public abstract class d
  implements k
{
  private static final BitmapFactory.Options a = new BitmapFactory.Options();
  private static SimpleDateFormat b = new SimpleDateFormat("yyyy:MM:dd HH:mm:ss");
  
  static
  {
    b.setTimeZone(TimeZone.getTimeZone("UTC"));
  }
  
  public static int a(String paramString1, String paramString2)
  {
    try
    {
      ContentValues localContentValues = new ContentValues();
      localContentValues.put("_data", paramString2);
      paramString1 = "_data=" + DatabaseUtils.sqlEscapeString(paramString1);
      int i = FexApplication.a().getContentResolver().update(MediaStore.Files.getContentUri("external"), localContentValues, paramString1, null);
      return i;
    }
    catch (Exception paramString1)
    {
      paramString1.printStackTrace();
    }
    return 0;
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
          paramExifInterface = b.parse(paramExifInterface, (ParsePosition)localObject);
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
  
  public static List<h> a(String paramString1, String paramString2, i parami, String paramString3)
  {
    parami = q.b(paramString3);
    if (parami.containsKey("keyword")) {}
    for (Object localObject1 = q.a(Uri.decode((String)parami.get("keyword")));; localObject1 = null)
    {
      r localr = new r(false);
      if (parami.containsKey("keyword"))
      {
        paramString3 = new v(Uri.decode((String)parami.get("keyword")), true);
        localr.a(paramString3);
      }
      for (;;)
      {
        localr.a(am.l());
        af[] arrayOfaf = aa.f();
        String[] arrayOfString = aa.a(arrayOfaf);
        if (arrayOfaf.length > 500) {
          localr.a(new e(arrayOfaf, arrayOfString));
        }
        if (parami.containsKey("category")) {}
        for (Object localObject2 = (String)parami.get("category");; localObject2 = null)
        {
          long l2 = -1L;
          try
          {
            l1 = Long.parseLong((String)parami.get("minSize"));
            try
            {
              l3 = Long.parseLong((String)parami.get("maxSize"));
              l2 = l3;
            }
            catch (Exception localException3)
            {
              long l3;
              long l4;
              long l5;
              Uri localUri;
              StringBuffer localStringBuffer;
              Iterator localIterator;
              int i;
              String str;
              LinkedList localLinkedList;
              int j;
              boolean bool;
              for (;;) {}
            }
            l4 = -1L;
          }
          catch (Exception localException1)
          {
            try
            {
              l3 = Long.parseLong((String)parami.get("minDate"));
              try
              {
                l5 = Long.parseLong((String)parami.get("maxDate"));
                l4 = l5;
              }
              catch (Exception parami)
              {
                for (;;) {}
              }
              localUri = MediaStore.Files.getContentUri("external");
              localStringBuffer = new StringBuffer();
              if ("externalstorage://".equals(paramString2))
              {
                localStringBuffer.append("(");
                localIterator = am.a().iterator();
                i = 0;
                while (localIterator.hasNext())
                {
                  str = (String)localIterator.next();
                  if (i > 0) {
                    localStringBuffer.append(" or ");
                  }
                  parami = str;
                  if (!str.endsWith("/")) {
                    parami = str + "/";
                  }
                  localStringBuffer.append("_data").append(" like ").append(DatabaseUtils.sqlEscapeString(parami + "%/%"));
                  i += 1;
                  continue;
                  localException1 = localException1;
                  l1 = -1L;
                }
              }
            }
            catch (Exception localException2)
            {
              long l1;
              for (;;)
              {
                l3 = -1L;
              }
              localStringBuffer.append(')');
              localLinkedList = new LinkedList();
              if ("image".equals(localObject2)) {
                localStringBuffer.append(" and ").append("media_type=1");
              }
              for (;;)
              {
                label461:
                if ((arrayOfaf.length > 0) && (arrayOfaf.length <= 500))
                {
                  i = 0;
                  for (;;)
                  {
                    if (i < arrayOfaf.length) {
                      if (a)
                      {
                        localObject2 = am.bE(arrayOfString[i]);
                        parami = (i)localObject2;
                        if (((String)localObject2).endsWith("/")) {
                          parami = ((String)localObject2).substring(0, ((String)localObject2).length() - 1);
                        }
                        localStringBuffer.append(" and ").append("_data").append("!=").append(DatabaseUtils.sqlEscapeString(parami));
                        localStringBuffer.append(" and ").append("_data").append(" not like ").append(DatabaseUtils.sqlEscapeString(parami + "/" + "%"));
                        label613:
                        i += 1;
                        continue;
                        parami = paramString2;
                        if (!paramString2.endsWith("/")) {
                          parami = paramString2 + "/";
                        }
                        localStringBuffer.append("_data").append(" like ").append(DatabaseUtils.sqlEscapeString(parami + "%/%"));
                        paramString2 = parami;
                        break;
                        if ("music".equals(localObject2))
                        {
                          localStringBuffer.append(" and ").append("media_type=2");
                          break label461;
                        }
                        if ("video".equals(localObject2))
                        {
                          localStringBuffer.append(" and ").append("media_type=3");
                          break label461;
                        }
                        if ("apk".equals(localObject2))
                        {
                          localStringBuffer.append(" and ").append("_data").append(" like ").append(DatabaseUtils.sqlEscapeString("%.apk"));
                          break label461;
                        }
                        if (!"document".equals(localObject2)) {
                          break label461;
                        }
                        parami = bc.c();
                        if (parami == null) {
                          paramString1 = localLinkedList;
                        }
                      }
                    }
                  }
                }
              }
              for (;;)
              {
                return paramString1;
                parami = parami.split(";");
                if (parami.length <= 0) {
                  break;
                }
                localStringBuffer.append(" and (");
                i = 0;
                while (i < parami.length)
                {
                  if (i > 0) {
                    localStringBuffer.append(" or ");
                  }
                  localStringBuffer.append("_data").append(" like ").append(DatabaseUtils.sqlEscapeString("%" + parami[i]));
                  i += 1;
                }
                localStringBuffer.append(")");
                break;
                localStringBuffer.append(" and ").append("_data").append("!=").append(DatabaseUtils.sqlEscapeString(arrayOfString[i]));
                break label613;
                if (localObject1 != null)
                {
                  localStringBuffer.append(" and (");
                  if ("externalstorage://".equals(paramString2))
                  {
                    parami = am.a().iterator();
                    i = 0;
                    while (parami.hasNext())
                    {
                      localObject2 = (String)parami.next();
                      j = 0;
                      while (j < ((List)localObject1).size())
                      {
                        if (i > 0) {
                          localStringBuffer.append(" or ");
                        }
                        localStringBuffer.append("_data").append(" like ").append(DatabaseUtils.sqlEscapeString((String)localObject2 + "%" + (String)((List)localObject1).get(j) + "%"));
                        i += 1;
                        j += 1;
                      }
                    }
                  }
                  i = 0;
                  while (i < ((List)localObject1).size())
                  {
                    if (i > 0) {
                      localStringBuffer.append(" or ");
                    }
                    localStringBuffer.append("_data").append(" like ").append(DatabaseUtils.sqlEscapeString(paramString2 + "%" + (String)((List)localObject1).get(i) + "%"));
                    i += 1;
                  }
                  localStringBuffer.append(')');
                }
                if (l1 > -1L) {
                  localStringBuffer.append(" and ").append("_size>=" + l1);
                }
                if (l2 > -1L) {
                  localStringBuffer.append(" and ").append("_size<=" + l2);
                }
                if (l3 > -1L) {
                  localStringBuffer.append(" and ").append("date_modified>=" + l3);
                }
                if (l4 > -1L) {
                  localStringBuffer.append(" and ").append("date_modified<=" + l4);
                }
                if (!ad.a(FexApplication.a()).p()) {
                  localStringBuffer.append(" and ").append("_data").append(" not like ").append(DatabaseUtils.sqlEscapeString("%/.%"));
                }
                for (;;)
                {
                  try
                  {
                    parami = FexApplication.a().getContentResolver();
                    localObject1 = localStringBuffer.toString();
                    parami = parami.query(localUri, new String[] { "_data" }, (String)localObject1, null, null);
                    if (parami == null)
                    {
                      if (parami != null) {
                        parami.close();
                      }
                      return localLinkedList;
                    }
                  }
                  finally
                  {
                    parami = null;
                    continue;
                  }
                  try
                  {
                    localObject1 = com.estrongs.a.a.getCurrentTask();
                    if ("externalstorage://".equals(paramString2))
                    {
                      paramString1 = paramString1.substring(0, paramString1.indexOf("externalstorage://".replace("/", "#"))) + "#";
                      paramString2 = "/";
                      if (!parami.moveToNext()) {
                        continue;
                      }
                      if (localObject1 != null)
                      {
                        bool = ((com.estrongs.a.a)localObject1).taskStopped();
                        if (bool)
                        {
                          paramString1 = null;
                          return null;
                        }
                      }
                    }
                    else
                    {
                      paramString2 = am.bE(am.aY(paramString1));
                      continue;
                    }
                    localObject2 = new com.estrongs.fs.impl.local.f(new File(parami.getString(0)));
                    if (localr.a((h)localObject2))
                    {
                      localObject2 = new com.estrongs.fs.impl.n.a(paramString1, paramString2, (h)localObject2);
                      if (paramString3 != null) {
                        a = paramString3.a();
                      }
                      localLinkedList.add(localObject2);
                      continue;
                      Collections.sort(localLinkedList, new f());
                    }
                  }
                  finally
                  {
                    if (parami != null) {
                      parami.close();
                    }
                  }
                }
              }
              if (parami != null) {
                parami.close();
              }
              return localLinkedList;
            }
          }
        }
        paramString3 = null;
      }
    }
  }
  
  public static void a(List<String> paramList)
  {
    if (paramList.size() == 0) {
      return;
    }
    int i = 0;
    for (;;)
    {
      if (i >= paramList.size()) {
        break label62;
      }
      if (new File((String)paramList.get(i)).exists())
      {
        if (cd.a()) {
          break;
        }
        cd.b();
        return;
      }
      i += 1;
    }
    for (;;)
    {
      try
      {
        label62:
        StringBuffer localStringBuffer;
        String str1;
        if (paramList.size() % 100 == 0)
        {
          i = paramList.size() / 100;
          break label421;
          if (j >= i) {
            break;
          }
          localStringBuffer = new StringBuffer();
          if (j >= i - 1) {
            continue;
          }
          k = 100;
          break label426;
          if (m >= k) {
            break label393;
          }
          String str2 = am.bE((String)paramList.get(j * 100 + m));
          str1 = str2;
          if (!str2.endsWith("/")) {
            str1 = str2 + "/";
          }
          if (m != 0) {
            continue;
          }
          localStringBuffer.append("_data like " + DatabaseUtils.sqlEscapeString(new StringBuilder().append(str1).append("%").toString()));
          localStringBuffer.append(" or ").append("_data = " + DatabaseUtils.sqlEscapeString(str1.substring(0, str1.length() - 1)) + " and format=" + 12289);
          m += 1;
          continue;
        }
        i = paramList.size() / 100 + 1;
        break label421;
        int k = paramList.size() - (i - 1) * 100;
        break label426;
        localStringBuffer.append(" or ").append("_data like " + DatabaseUtils.sqlEscapeString(new StringBuilder().append(str1).append("%").toString()));
        continue;
        FexApplication.a().getContentResolver().delete(MediaStore.Files.getContentUri("external"), localStringBuffer.toString(), null);
      }
      catch (Exception paramList)
      {
        paramList.printStackTrace();
        return;
      }
      label393:
      j += 1;
      continue;
      label421:
      int j = 0;
      continue;
      label426:
      int m = 0;
    }
  }
  
  /* Error */
  public static void a(List<String> paramList, Set<String> paramSet)
  {
    // Byte code:
    //   0: aconst_null
    //   1: astore 17
    //   3: aconst_null
    //   4: astore 16
    //   6: aconst_null
    //   7: astore 15
    //   9: aconst_null
    //   10: astore 14
    //   12: aload 17
    //   14: astore 13
    //   16: aload 16
    //   18: astore 12
    //   20: invokestatic 81	com/estrongs/android/pop/FexApplication:a	()Lcom/estrongs/android/pop/FexApplication;
    //   23: invokevirtual 85	com/estrongs/android/pop/FexApplication:getContentResolver	()Landroid/content/ContentResolver;
    //   26: astore 24
    //   28: iconst_0
    //   29: istore_2
    //   30: aload 17
    //   32: astore 13
    //   34: aload 16
    //   36: astore 12
    //   38: iload_2
    //   39: aload_0
    //   40: invokeinterface 321 1 0
    //   45: if_icmpge +39 -> 84
    //   48: aload 17
    //   50: astore 13
    //   52: aload 16
    //   54: astore 12
    //   56: aload_0
    //   57: iload_2
    //   58: aload_0
    //   59: iload_2
    //   60: invokeinterface 324 2 0
    //   65: checkcast 154	java/lang/String
    //   68: invokestatic 275	com/estrongs/android/util/am:bE	(Ljava/lang/String;)Ljava/lang/String;
    //   71: invokeinterface 454 3 0
    //   76: pop
    //   77: iload_2
    //   78: iconst_1
    //   79: iadd
    //   80: istore_2
    //   81: goto -51 -> 30
    //   84: aload 17
    //   86: astore 13
    //   88: aload 16
    //   90: astore 12
    //   92: new 456	java/util/HashSet
    //   95: dup
    //   96: invokespecial 457	java/util/HashSet:<init>	()V
    //   99: astore 18
    //   101: aload_1
    //   102: ifnull +705 -> 807
    //   105: aconst_null
    //   106: astore 15
    //   108: iconst_0
    //   109: istore_2
    //   110: aload 17
    //   112: astore 13
    //   114: aload 16
    //   116: astore 12
    //   118: iload_2
    //   119: invokestatic 227	com/estrongs/android/util/am:a	()Ljava/util/List;
    //   122: invokeinterface 321 1 0
    //   127: if_icmpge +66 -> 193
    //   130: aload 17
    //   132: astore 13
    //   134: aload 16
    //   136: astore 12
    //   138: aload_1
    //   139: invokestatic 227	com/estrongs/android/util/am:a	()Ljava/util/List;
    //   142: iload_2
    //   143: invokeinterface 324 2 0
    //   148: invokeinterface 462 2 0
    //   153: ifeq +3515 -> 3668
    //   156: aload 17
    //   158: astore 13
    //   160: aload 16
    //   162: astore 12
    //   164: invokestatic 227	com/estrongs/android/util/am:a	()Ljava/util/List;
    //   167: iload_2
    //   168: invokeinterface 324 2 0
    //   173: checkcast 154	java/lang/String
    //   176: astore 15
    //   178: aload 15
    //   180: astore 12
    //   182: iload_2
    //   183: iconst_1
    //   184: iadd
    //   185: istore_2
    //   186: aload 12
    //   188: astore 15
    //   190: goto -80 -> 110
    //   193: iconst_m1
    //   194: istore_2
    //   195: aload 15
    //   197: ifnull +3463 -> 3660
    //   200: aload 16
    //   202: astore 12
    //   204: ldc 87
    //   206: invokestatic 93	android/provider/MediaStore$Files:getContentUri	(Ljava/lang/String;)Landroid/net/Uri;
    //   209: astore 13
    //   211: aload 16
    //   213: astore 12
    //   215: new 59	java/lang/StringBuilder
    //   218: dup
    //   219: invokespecial 60	java/lang/StringBuilder:<init>	()V
    //   222: ldc_w 431
    //   225: invokevirtual 66	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   228: new 59	java/lang/StringBuilder
    //   231: dup
    //   232: invokespecial 60	java/lang/StringBuilder:<init>	()V
    //   235: aload 15
    //   237: invokevirtual 66	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   240: ldc_w 289
    //   243: invokevirtual 66	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   246: invokevirtual 76	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   249: invokestatic 72	android/database/DatabaseUtils:sqlEscapeString	(Ljava/lang/String;)Ljava/lang/String;
    //   252: invokevirtual 66	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   255: ldc_w 464
    //   258: invokevirtual 66	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   261: invokevirtual 76	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   264: astore 17
    //   266: aload 16
    //   268: astore 12
    //   270: aload 24
    //   272: aload 13
    //   274: iconst_1
    //   275: anewarray 154	java/lang/String
    //   278: dup
    //   279: iconst_0
    //   280: ldc_w 466
    //   283: aastore
    //   284: aload 17
    //   286: aconst_null
    //   287: aconst_null
    //   288: invokevirtual 350	android/content/ContentResolver:query	(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    //   291: astore 13
    //   293: aload 13
    //   295: astore 12
    //   297: aload 12
    //   299: ifnull +3356 -> 3655
    //   302: aload 12
    //   304: invokeinterface 374 1 0
    //   309: ifeq +3341 -> 3650
    //   312: aload 12
    //   314: iconst_0
    //   315: invokeinterface 470 2 0
    //   320: istore_3
    //   321: iload_3
    //   322: istore_2
    //   323: aload 12
    //   325: invokeinterface 355 1 0
    //   330: aload 12
    //   332: astore 14
    //   334: aload 14
    //   336: astore 13
    //   338: aload 14
    //   340: astore 12
    //   342: new 213	java/lang/StringBuffer
    //   345: dup
    //   346: invokespecial 214	java/lang/StringBuffer:<init>	()V
    //   349: astore 16
    //   351: aload 14
    //   353: astore 13
    //   355: aload 14
    //   357: astore 12
    //   359: aload_1
    //   360: invokeinterface 471 1 0
    //   365: astore_1
    //   366: aload 14
    //   368: astore 13
    //   370: aload 14
    //   372: astore 12
    //   374: aload_1
    //   375: invokeinterface 239 1 0
    //   380: ifeq +142 -> 522
    //   383: aload 14
    //   385: astore 13
    //   387: aload 14
    //   389: astore 12
    //   391: aload_1
    //   392: invokeinterface 243 1 0
    //   397: checkcast 154	java/lang/String
    //   400: astore 17
    //   402: aload 14
    //   404: astore 13
    //   406: aload 14
    //   408: astore 12
    //   410: aload 17
    //   412: aload 15
    //   414: invokevirtual 219	java/lang/String:equals	(Ljava/lang/Object;)Z
    //   417: ifne -51 -> 366
    //   420: aload 14
    //   422: astore 13
    //   424: aload 14
    //   426: astore 12
    //   428: aload 16
    //   430: invokevirtual 472	java/lang/StringBuffer:length	()I
    //   433: ifne +46 -> 479
    //   436: aload 14
    //   438: astore 13
    //   440: aload 14
    //   442: astore 12
    //   444: aload 16
    //   446: aload 17
    //   448: invokestatic 72	android/database/DatabaseUtils:sqlEscapeString	(Ljava/lang/String;)Ljava/lang/String;
    //   451: invokevirtual 224	java/lang/StringBuffer:append	(Ljava/lang/String;)Ljava/lang/StringBuffer;
    //   454: pop
    //   455: goto -89 -> 366
    //   458: astore_0
    //   459: aload 13
    //   461: astore 12
    //   463: invokestatic 429	com/estrongs/android/pop/utils/cd:b	()V
    //   466: aload 13
    //   468: ifnull +10 -> 478
    //   471: aload 13
    //   473: invokeinterface 355 1 0
    //   478: return
    //   479: aload 14
    //   481: astore 13
    //   483: aload 14
    //   485: astore 12
    //   487: aload 16
    //   489: ldc_w 474
    //   492: invokevirtual 224	java/lang/StringBuffer:append	(Ljava/lang/String;)Ljava/lang/StringBuffer;
    //   495: aload 17
    //   497: invokestatic 72	android/database/DatabaseUtils:sqlEscapeString	(Ljava/lang/String;)Ljava/lang/String;
    //   500: invokevirtual 224	java/lang/StringBuffer:append	(Ljava/lang/String;)Ljava/lang/StringBuffer;
    //   503: pop
    //   504: goto -138 -> 366
    //   507: astore_0
    //   508: aload 12
    //   510: ifnull +10 -> 520
    //   513: aload 12
    //   515: invokeinterface 355 1 0
    //   520: aload_0
    //   521: athrow
    //   522: iload_2
    //   523: iconst_m1
    //   524: if_icmpne +119 -> 643
    //   527: aload 14
    //   529: astore 13
    //   531: aload 14
    //   533: astore 12
    //   535: new 59	java/lang/StringBuilder
    //   538: dup
    //   539: invokespecial 60	java/lang/StringBuilder:<init>	()V
    //   542: ldc_w 476
    //   545: invokevirtual 66	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   548: aload 16
    //   550: invokevirtual 346	java/lang/StringBuffer:toString	()Ljava/lang/String;
    //   553: invokevirtual 66	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   556: ldc_w 478
    //   559: invokevirtual 66	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   562: invokevirtual 76	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   565: astore_1
    //   566: aload 14
    //   568: astore 13
    //   570: aload 14
    //   572: astore 12
    //   574: aload 24
    //   576: ldc 87
    //   578: invokestatic 93	android/provider/MediaStore$Files:getContentUri	(Ljava/lang/String;)Landroid/net/Uri;
    //   581: iconst_1
    //   582: anewarray 154	java/lang/String
    //   585: dup
    //   586: iconst_0
    //   587: ldc 53
    //   589: aastore
    //   590: aload_1
    //   591: aconst_null
    //   592: aconst_null
    //   593: invokevirtual 350	android/content/ContentResolver:query	(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    //   596: astore_1
    //   597: aload_1
    //   598: astore 14
    //   600: aload_1
    //   601: ifnull +115 -> 716
    //   604: aload_1
    //   605: astore 13
    //   607: aload_1
    //   608: astore 12
    //   610: aload_1
    //   611: invokeinterface 374 1 0
    //   616: ifeq +85 -> 701
    //   619: aload_1
    //   620: astore 13
    //   622: aload_1
    //   623: astore 12
    //   625: aload 18
    //   627: aload_1
    //   628: iconst_0
    //   629: invokeinterface 388 2 0
    //   634: invokeinterface 479 2 0
    //   639: pop
    //   640: goto -36 -> 604
    //   643: aload 14
    //   645: astore 13
    //   647: aload 14
    //   649: astore 12
    //   651: new 59	java/lang/StringBuilder
    //   654: dup
    //   655: invokespecial 60	java/lang/StringBuilder:<init>	()V
    //   658: ldc_w 476
    //   661: invokevirtual 66	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   664: aload 16
    //   666: invokevirtual 346	java/lang/StringBuffer:toString	()Ljava/lang/String;
    //   669: invokevirtual 66	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   672: ldc_w 481
    //   675: invokevirtual 66	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   678: ldc_w 466
    //   681: invokevirtual 66	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   684: ldc_w 483
    //   687: invokevirtual 66	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   690: iload_2
    //   691: invokevirtual 438	java/lang/StringBuilder:append	(I)Ljava/lang/StringBuilder;
    //   694: invokevirtual 76	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   697: astore_1
    //   698: goto -132 -> 566
    //   701: aload_1
    //   702: astore 13
    //   704: aload_1
    //   705: astore 12
    //   707: aload_1
    //   708: invokeinterface 355 1 0
    //   713: aload_1
    //   714: astore 14
    //   716: aload 14
    //   718: astore 13
    //   720: aload 14
    //   722: astore 12
    //   724: aload 18
    //   726: invokeinterface 484 1 0
    //   731: ifle +425 -> 1156
    //   734: aload 14
    //   736: astore 13
    //   738: aload 14
    //   740: astore 12
    //   742: aload_0
    //   743: invokeinterface 233 1 0
    //   748: astore_1
    //   749: aload 14
    //   751: astore 13
    //   753: aload 14
    //   755: astore 12
    //   757: aload_1
    //   758: invokeinterface 239 1 0
    //   763: ifeq +393 -> 1156
    //   766: aload 14
    //   768: astore 13
    //   770: aload 14
    //   772: astore 12
    //   774: aload 18
    //   776: aload_1
    //   777: invokeinterface 243 1 0
    //   782: invokeinterface 462 2 0
    //   787: ifeq -38 -> 749
    //   790: aload 14
    //   792: astore 13
    //   794: aload 14
    //   796: astore 12
    //   798: aload_1
    //   799: invokeinterface 487 1 0
    //   804: goto -55 -> 749
    //   807: aload 17
    //   809: astore 13
    //   811: aload 16
    //   813: astore 12
    //   815: aload_0
    //   816: invokeinterface 321 1 0
    //   821: sipush 500
    //   824: irem
    //   825: ifne +120 -> 945
    //   828: aload 17
    //   830: astore 13
    //   832: aload 16
    //   834: astore 12
    //   836: aload_0
    //   837: invokeinterface 321 1 0
    //   842: sipush 500
    //   845: idiv
    //   846: istore_2
    //   847: goto +2828 -> 3675
    //   850: aload_1
    //   851: astore 14
    //   853: iload_3
    //   854: iload_2
    //   855: if_icmpge -139 -> 716
    //   858: aload_1
    //   859: astore 13
    //   861: aload_1
    //   862: astore 12
    //   864: new 213	java/lang/StringBuffer
    //   867: dup
    //   868: invokespecial 214	java/lang/StringBuffer:<init>	()V
    //   871: astore 14
    //   873: iload_3
    //   874: iload_2
    //   875: iconst_1
    //   876: isub
    //   877: if_icmpge +92 -> 969
    //   880: sipush 500
    //   883: istore 4
    //   885: goto +2798 -> 3683
    //   888: iload 5
    //   890: iload 4
    //   892: if_icmpge +128 -> 1020
    //   895: aload_1
    //   896: astore 13
    //   898: aload_1
    //   899: astore 12
    //   901: aload_0
    //   902: iload_3
    //   903: sipush 500
    //   906: imul
    //   907: iload 5
    //   909: iadd
    //   910: invokeinterface 324 2 0
    //   915: checkcast 154	java/lang/String
    //   918: astore 15
    //   920: iload 5
    //   922: ifne +72 -> 994
    //   925: aload_1
    //   926: astore 13
    //   928: aload_1
    //   929: astore 12
    //   931: aload 14
    //   933: aload 15
    //   935: invokestatic 72	android/database/DatabaseUtils:sqlEscapeString	(Ljava/lang/String;)Ljava/lang/String;
    //   938: invokevirtual 224	java/lang/StringBuffer:append	(Ljava/lang/String;)Ljava/lang/StringBuffer;
    //   941: pop
    //   942: goto +2747 -> 3689
    //   945: aload 17
    //   947: astore 13
    //   949: aload 16
    //   951: astore 12
    //   953: aload_0
    //   954: invokeinterface 321 1 0
    //   959: sipush 500
    //   962: idiv
    //   963: iconst_1
    //   964: iadd
    //   965: istore_2
    //   966: goto +2709 -> 3675
    //   969: aload_1
    //   970: astore 13
    //   972: aload_1
    //   973: astore 12
    //   975: aload_0
    //   976: invokeinterface 321 1 0
    //   981: iload_2
    //   982: iconst_1
    //   983: isub
    //   984: sipush 500
    //   987: imul
    //   988: isub
    //   989: istore 4
    //   991: goto +2692 -> 3683
    //   994: aload_1
    //   995: astore 13
    //   997: aload_1
    //   998: astore 12
    //   1000: aload 14
    //   1002: ldc_w 474
    //   1005: invokevirtual 224	java/lang/StringBuffer:append	(Ljava/lang/String;)Ljava/lang/StringBuffer;
    //   1008: aload 15
    //   1010: invokestatic 72	android/database/DatabaseUtils:sqlEscapeString	(Ljava/lang/String;)Ljava/lang/String;
    //   1013: invokevirtual 224	java/lang/StringBuffer:append	(Ljava/lang/String;)Ljava/lang/StringBuffer;
    //   1016: pop
    //   1017: goto +2672 -> 3689
    //   1020: aload_1
    //   1021: astore 13
    //   1023: aload_1
    //   1024: astore 12
    //   1026: ldc 87
    //   1028: invokestatic 93	android/provider/MediaStore$Files:getContentUri	(Ljava/lang/String;)Landroid/net/Uri;
    //   1031: astore 15
    //   1033: aload_1
    //   1034: astore 13
    //   1036: aload_1
    //   1037: astore 12
    //   1039: new 59	java/lang/StringBuilder
    //   1042: dup
    //   1043: invokespecial 60	java/lang/StringBuilder:<init>	()V
    //   1046: ldc_w 489
    //   1049: invokevirtual 66	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   1052: aload 14
    //   1054: invokevirtual 346	java/lang/StringBuffer:toString	()Ljava/lang/String;
    //   1057: invokevirtual 66	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   1060: ldc_w 318
    //   1063: invokevirtual 66	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   1066: invokevirtual 76	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   1069: astore 14
    //   1071: aload_1
    //   1072: astore 13
    //   1074: aload_1
    //   1075: astore 12
    //   1077: aload 24
    //   1079: aload 15
    //   1081: iconst_1
    //   1082: anewarray 154	java/lang/String
    //   1085: dup
    //   1086: iconst_0
    //   1087: ldc 53
    //   1089: aastore
    //   1090: aload 14
    //   1092: aconst_null
    //   1093: aconst_null
    //   1094: invokevirtual 350	android/content/ContentResolver:query	(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    //   1097: astore_1
    //   1098: aload_1
    //   1099: ifnull +2599 -> 3698
    //   1102: aload_1
    //   1103: astore 13
    //   1105: aload_1
    //   1106: astore 12
    //   1108: aload_1
    //   1109: invokeinterface 374 1 0
    //   1114: ifeq +27 -> 1141
    //   1117: aload_1
    //   1118: astore 13
    //   1120: aload_1
    //   1121: astore 12
    //   1123: aload 18
    //   1125: aload_1
    //   1126: iconst_0
    //   1127: invokeinterface 388 2 0
    //   1132: invokeinterface 479 2 0
    //   1137: pop
    //   1138: goto -36 -> 1102
    //   1141: aload_1
    //   1142: astore 13
    //   1144: aload_1
    //   1145: astore 12
    //   1147: aload_1
    //   1148: invokeinterface 355 1 0
    //   1153: goto +2545 -> 3698
    //   1156: aload 14
    //   1158: astore 13
    //   1160: aload 14
    //   1162: astore 12
    //   1164: aload_0
    //   1165: invokeinterface 321 1 0
    //   1170: istore_2
    //   1171: iload_2
    //   1172: ifne +16 -> 1188
    //   1175: aload 14
    //   1177: ifnull -699 -> 478
    //   1180: aload 14
    //   1182: invokeinterface 355 1 0
    //   1187: return
    //   1188: aload 14
    //   1190: astore 13
    //   1192: aload 14
    //   1194: astore 12
    //   1196: aload_0
    //   1197: invokeinterface 321 1 0
    //   1202: sipush 500
    //   1205: irem
    //   1206: ifne +164 -> 1370
    //   1209: aload 14
    //   1211: astore 13
    //   1213: aload 14
    //   1215: astore 12
    //   1217: aload_0
    //   1218: invokeinterface 321 1 0
    //   1223: sipush 500
    //   1226: idiv
    //   1227: istore_2
    //   1228: goto +2477 -> 3705
    //   1231: aload 14
    //   1233: astore 13
    //   1235: aload 14
    //   1237: astore 12
    //   1239: iload 4
    //   1241: anewarray 50	android/content/ContentValues
    //   1244: astore_1
    //   1245: iconst_0
    //   1246: istore 5
    //   1248: iload 5
    //   1250: iload 4
    //   1252: if_icmpge +348 -> 1600
    //   1255: aload 14
    //   1257: astore 13
    //   1259: aload 14
    //   1261: astore 12
    //   1263: aload_0
    //   1264: iload_3
    //   1265: sipush 500
    //   1268: imul
    //   1269: iload 5
    //   1271: iadd
    //   1272: invokeinterface 324 2 0
    //   1277: checkcast 154	java/lang/String
    //   1280: astore 15
    //   1282: aload 14
    //   1284: astore 13
    //   1286: aload 14
    //   1288: astore 12
    //   1290: aload_1
    //   1291: iload 5
    //   1293: new 50	android/content/ContentValues
    //   1296: dup
    //   1297: invokespecial 51	android/content/ContentValues:<init>	()V
    //   1300: aastore
    //   1301: aload 14
    //   1303: astore 13
    //   1305: aload 14
    //   1307: astore 12
    //   1309: aload_1
    //   1310: iload 5
    //   1312: aaload
    //   1313: ldc 53
    //   1315: aload 15
    //   1317: invokevirtual 57	android/content/ContentValues:put	(Ljava/lang/String;Ljava/lang/String;)V
    //   1320: aload 14
    //   1322: astore 13
    //   1324: aload 14
    //   1326: astore 12
    //   1328: new 384	java/io/File
    //   1331: dup
    //   1332: aload 15
    //   1334: invokespecial 389	java/io/File:<init>	(Ljava/lang/String;)V
    //   1337: invokevirtual 492	java/io/File:isDirectory	()Z
    //   1340: ifeq +81 -> 1421
    //   1343: aload 14
    //   1345: astore 13
    //   1347: aload 14
    //   1349: astore 12
    //   1351: aload_1
    //   1352: iload 5
    //   1354: aaload
    //   1355: ldc_w 494
    //   1358: sipush 12289
    //   1361: invokestatic 500	java/lang/Integer:valueOf	(I)Ljava/lang/Integer;
    //   1364: invokevirtual 503	android/content/ContentValues:put	(Ljava/lang/String;Ljava/lang/Integer;)V
    //   1367: goto +2360 -> 3727
    //   1370: aload 14
    //   1372: astore 13
    //   1374: aload 14
    //   1376: astore 12
    //   1378: aload_0
    //   1379: invokeinterface 321 1 0
    //   1384: sipush 500
    //   1387: idiv
    //   1388: iconst_1
    //   1389: iadd
    //   1390: istore_2
    //   1391: goto +2314 -> 3705
    //   1394: aload 14
    //   1396: astore 13
    //   1398: aload 14
    //   1400: astore 12
    //   1402: aload_0
    //   1403: invokeinterface 321 1 0
    //   1408: iload_2
    //   1409: iconst_1
    //   1410: isub
    //   1411: sipush 500
    //   1414: imul
    //   1415: isub
    //   1416: istore 4
    //   1418: goto -187 -> 1231
    //   1421: aload 14
    //   1423: astore 13
    //   1425: aload 14
    //   1427: astore 12
    //   1429: aload 15
    //   1431: invokestatic 506	com/estrongs/android/util/bc:S	(Ljava/lang/String;)Ljava/lang/String;
    //   1434: astore 16
    //   1436: ldc_w 508
    //   1439: aload 16
    //   1441: if_acmpeq +23 -> 1464
    //   1444: aload 14
    //   1446: astore 13
    //   1448: aload 14
    //   1450: astore 12
    //   1452: aload_1
    //   1453: iload 5
    //   1455: aaload
    //   1456: ldc_w 510
    //   1459: aload 16
    //   1461: invokevirtual 57	android/content/ContentValues:put	(Ljava/lang/String;Ljava/lang/String;)V
    //   1464: aload 14
    //   1466: astore 12
    //   1468: aload_1
    //   1469: iload 5
    //   1471: aaload
    //   1472: ldc_w 512
    //   1475: new 384	java/io/File
    //   1478: dup
    //   1479: aload 15
    //   1481: invokespecial 389	java/io/File:<init>	(Ljava/lang/String;)V
    //   1484: invokevirtual 514	java/io/File:length	()J
    //   1487: invokestatic 517	java/lang/Long:valueOf	(J)Ljava/lang/Long;
    //   1490: invokevirtual 520	android/content/ContentValues:put	(Ljava/lang/String;Ljava/lang/Long;)V
    //   1493: aload 14
    //   1495: astore 13
    //   1497: aload 14
    //   1499: astore 12
    //   1501: aload_1
    //   1502: iload 5
    //   1504: aaload
    //   1505: ldc_w 522
    //   1508: aload 15
    //   1510: invokestatic 526	com/estrongs/fs/util/j:a	(Ljava/lang/String;)Ljava/lang/String;
    //   1513: invokevirtual 57	android/content/ContentValues:put	(Ljava/lang/String;Ljava/lang/String;)V
    //   1516: aload 14
    //   1518: astore 13
    //   1520: aload 14
    //   1522: astore 12
    //   1524: aload_1
    //   1525: iload 5
    //   1527: aaload
    //   1528: ldc_w 528
    //   1531: aload 15
    //   1533: invokestatic 531	com/estrongs/android/util/am:d	(Ljava/lang/String;)Ljava/lang/String;
    //   1536: invokevirtual 57	android/content/ContentValues:put	(Ljava/lang/String;Ljava/lang/String;)V
    //   1539: aload 14
    //   1541: astore 13
    //   1543: aload 14
    //   1545: astore 12
    //   1547: aload 15
    //   1549: invokestatic 535	com/estrongs/fs/impl/media/a:b	(Ljava/lang/String;)Z
    //   1552: ifeq +2175 -> 3727
    //   1555: aload 14
    //   1557: astore 13
    //   1559: aload 14
    //   1561: astore 12
    //   1563: aload_1
    //   1564: iload 5
    //   1566: aaload
    //   1567: ldc_w 537
    //   1570: ldc_w 539
    //   1573: invokevirtual 57	android/content/ContentValues:put	(Ljava/lang/String;Ljava/lang/String;)V
    //   1576: aload 14
    //   1578: astore 13
    //   1580: aload 14
    //   1582: astore 12
    //   1584: aload_1
    //   1585: iload 5
    //   1587: aaload
    //   1588: ldc_w 541
    //   1591: ldc_w 543
    //   1594: invokevirtual 57	android/content/ContentValues:put	(Ljava/lang/String;Ljava/lang/String;)V
    //   1597: goto +2130 -> 3727
    //   1600: aload 14
    //   1602: astore 13
    //   1604: aload 14
    //   1606: astore 12
    //   1608: aload 24
    //   1610: ldc 87
    //   1612: invokestatic 93	android/provider/MediaStore$Files:getContentUri	(Ljava/lang/String;)Landroid/net/Uri;
    //   1615: aload_1
    //   1616: invokevirtual 547	android/content/ContentResolver:bulkInsert	(Landroid/net/Uri;[Landroid/content/ContentValues;)I
    //   1619: pop
    //   1620: iload_3
    //   1621: iconst_1
    //   1622: iadd
    //   1623: istore_3
    //   1624: goto +2083 -> 3707
    //   1627: aload 14
    //   1629: ifnull +18 -> 1647
    //   1632: aload 14
    //   1634: astore 13
    //   1636: aload 14
    //   1638: astore 12
    //   1640: aload 14
    //   1642: invokeinterface 355 1 0
    //   1647: aload 14
    //   1649: astore 13
    //   1651: aload 14
    //   1653: astore 12
    //   1655: new 549	android/media/MediaMetadataRetriever
    //   1658: dup
    //   1659: invokespecial 550	android/media/MediaMetadataRetriever:<init>	()V
    //   1662: astore 25
    //   1664: iconst_0
    //   1665: istore 4
    //   1667: aload 14
    //   1669: astore 13
    //   1671: aload 14
    //   1673: astore 12
    //   1675: iload 4
    //   1677: aload_0
    //   1678: invokeinterface 321 1 0
    //   1683: if_icmpge +1570 -> 3253
    //   1686: aload 14
    //   1688: astore 13
    //   1690: aload 14
    //   1692: astore 12
    //   1694: aload_0
    //   1695: iload 4
    //   1697: invokeinterface 324 2 0
    //   1702: checkcast 154	java/lang/String
    //   1705: astore 26
    //   1707: aload 14
    //   1709: astore 13
    //   1711: aload 14
    //   1713: astore 12
    //   1715: aload 26
    //   1717: invokestatic 552	com/estrongs/android/util/bc:b	(Ljava/lang/String;)I
    //   1720: istore_2
    //   1721: aload 14
    //   1723: astore 13
    //   1725: aload 14
    //   1727: astore 12
    //   1729: new 50	android/content/ContentValues
    //   1732: dup
    //   1733: invokespecial 51	android/content/ContentValues:<init>	()V
    //   1736: astore 27
    //   1738: aload 14
    //   1740: astore 13
    //   1742: aload 14
    //   1744: astore 12
    //   1746: aload 26
    //   1748: invokestatic 535	com/estrongs/fs/impl/media/a:b	(Ljava/lang/String;)Z
    //   1751: istore 6
    //   1753: aload 14
    //   1755: astore 13
    //   1757: aload 14
    //   1759: astore 12
    //   1761: aload 26
    //   1763: invokestatic 554	com/estrongs/fs/impl/media/a:c	(Ljava/lang/String;)Z
    //   1766: istore 7
    //   1768: iload 6
    //   1770: ifne +8 -> 1778
    //   1773: iload 7
    //   1775: ifeq +903 -> 2678
    //   1778: iload 6
    //   1780: ifeq +739 -> 2519
    //   1783: aload 14
    //   1785: astore 13
    //   1787: aload 14
    //   1789: astore 12
    //   1791: getstatic 560	android/provider/MediaStore$Audio$Media:EXTERNAL_CONTENT_URI	Landroid/net/Uri;
    //   1794: astore 15
    //   1796: aload 14
    //   1798: astore 12
    //   1800: aload 25
    //   1802: aload 26
    //   1804: invokevirtual 563	android/media/MediaMetadataRetriever:setDataSource	(Ljava/lang/String;)V
    //   1807: aload 14
    //   1809: astore 12
    //   1811: aload 25
    //   1813: bipush 7
    //   1815: invokevirtual 566	android/media/MediaMetadataRetriever:extractMetadata	(I)Ljava/lang/String;
    //   1818: astore 13
    //   1820: aload 14
    //   1822: astore 12
    //   1824: aload 25
    //   1826: iconst_1
    //   1827: invokevirtual 566	android/media/MediaMetadataRetriever:extractMetadata	(I)Ljava/lang/String;
    //   1830: astore 16
    //   1832: aload 14
    //   1834: astore 12
    //   1836: aload 25
    //   1838: bipush 12
    //   1840: invokevirtual 566	android/media/MediaMetadataRetriever:extractMetadata	(I)Ljava/lang/String;
    //   1843: astore 28
    //   1845: aload 14
    //   1847: astore 12
    //   1849: aload 25
    //   1851: iconst_2
    //   1852: invokevirtual 566	android/media/MediaMetadataRetriever:extractMetadata	(I)Ljava/lang/String;
    //   1855: astore 23
    //   1857: aload 14
    //   1859: astore 12
    //   1861: aload 25
    //   1863: bipush 9
    //   1865: invokevirtual 566	android/media/MediaMetadataRetriever:extractMetadata	(I)Ljava/lang/String;
    //   1868: astore 29
    //   1870: aload 13
    //   1872: ifnonnull +25 -> 1897
    //   1875: aload 16
    //   1877: ifnonnull +20 -> 1897
    //   1880: aload 23
    //   1882: astore 22
    //   1884: aload 16
    //   1886: astore 20
    //   1888: aload 13
    //   1890: astore 21
    //   1892: aload 23
    //   1894: ifnull +346 -> 2240
    //   1897: aconst_null
    //   1898: astore 17
    //   1900: aconst_null
    //   1901: astore 18
    //   1903: aconst_null
    //   1904: astore 19
    //   1906: iconst_0
    //   1907: istore_3
    //   1908: aload 13
    //   1910: ifnull +27 -> 1937
    //   1913: aload 14
    //   1915: astore 12
    //   1917: aload 13
    //   1919: ldc_w 568
    //   1922: invokevirtual 572	java/lang/String:getBytes	(Ljava/lang/String;)[B
    //   1925: astore 17
    //   1927: aload 14
    //   1929: astore 12
    //   1931: iconst_0
    //   1932: aload 17
    //   1934: arraylength
    //   1935: iadd
    //   1936: istore_3
    //   1937: iload_3
    //   1938: istore_2
    //   1939: aload 16
    //   1941: ifnull +27 -> 1968
    //   1944: aload 14
    //   1946: astore 12
    //   1948: aload 16
    //   1950: ldc_w 568
    //   1953: invokevirtual 572	java/lang/String:getBytes	(Ljava/lang/String;)[B
    //   1956: astore 18
    //   1958: aload 14
    //   1960: astore 12
    //   1962: iload_3
    //   1963: aload 18
    //   1965: arraylength
    //   1966: iadd
    //   1967: istore_2
    //   1968: iload_2
    //   1969: istore_3
    //   1970: aload 23
    //   1972: ifnull +27 -> 1999
    //   1975: aload 14
    //   1977: astore 12
    //   1979: aload 23
    //   1981: ldc_w 568
    //   1984: invokevirtual 572	java/lang/String:getBytes	(Ljava/lang/String;)[B
    //   1987: astore 19
    //   1989: aload 14
    //   1991: astore 12
    //   1993: iload_2
    //   1994: aload 19
    //   1996: arraylength
    //   1997: iadd
    //   1998: istore_3
    //   1999: aload 14
    //   2001: astore 12
    //   2003: iload_3
    //   2004: newarray <illegal type>
    //   2006: astore_1
    //   2007: iconst_0
    //   2008: istore_2
    //   2009: aload 13
    //   2011: ifnull +28 -> 2039
    //   2014: aload 14
    //   2016: astore 12
    //   2018: aload 17
    //   2020: iconst_0
    //   2021: aload_1
    //   2022: iconst_0
    //   2023: aload 17
    //   2025: arraylength
    //   2026: invokestatic 578	java/lang/System:arraycopy	(Ljava/lang/Object;ILjava/lang/Object;II)V
    //   2029: aload 14
    //   2031: astore 12
    //   2033: iconst_0
    //   2034: aload 17
    //   2036: arraylength
    //   2037: iadd
    //   2038: istore_2
    //   2039: iload_2
    //   2040: istore_3
    //   2041: aload 16
    //   2043: ifnull +28 -> 2071
    //   2046: aload 14
    //   2048: astore 12
    //   2050: aload 18
    //   2052: iconst_0
    //   2053: aload_1
    //   2054: iload_2
    //   2055: aload 18
    //   2057: arraylength
    //   2058: invokestatic 578	java/lang/System:arraycopy	(Ljava/lang/Object;ILjava/lang/Object;II)V
    //   2061: aload 14
    //   2063: astore 12
    //   2065: iload_2
    //   2066: aload 18
    //   2068: arraylength
    //   2069: iadd
    //   2070: istore_3
    //   2071: aload 23
    //   2073: ifnull +18 -> 2091
    //   2076: aload 14
    //   2078: astore 12
    //   2080: aload 19
    //   2082: iconst_0
    //   2083: aload_1
    //   2084: iload_3
    //   2085: aload 19
    //   2087: arraylength
    //   2088: invokestatic 578	java/lang/System:arraycopy	(Ljava/lang/Object;ILjava/lang/Object;II)V
    //   2091: aload 14
    //   2093: astore 12
    //   2095: aload_1
    //   2096: aload_1
    //   2097: arraylength
    //   2098: iconst_1
    //   2099: invokestatic 583	com/estrongs/android/util/f:a	([BIZ)Ljava/lang/String;
    //   2102: astore 30
    //   2104: aload 23
    //   2106: astore 22
    //   2108: aload 16
    //   2110: astore 20
    //   2112: aload 13
    //   2114: astore 21
    //   2116: aload 30
    //   2118: ifnull +122 -> 2240
    //   2121: aload 14
    //   2123: astore 12
    //   2125: aload 23
    //   2127: astore 22
    //   2129: aload 16
    //   2131: astore 20
    //   2133: aload 13
    //   2135: astore 21
    //   2137: getstatic 588	com/estrongs/fs/impl/media/b:f	Ljava/util/Set;
    //   2140: aload 30
    //   2142: invokeinterface 462 2 0
    //   2147: ifne +93 -> 2240
    //   2150: aload 13
    //   2152: astore_1
    //   2153: aload 13
    //   2155: ifnull +19 -> 2174
    //   2158: aload 14
    //   2160: astore 12
    //   2162: new 154	java/lang/String
    //   2165: dup
    //   2166: aload 17
    //   2168: aload 30
    //   2170: invokespecial 591	java/lang/String:<init>	([BLjava/lang/String;)V
    //   2173: astore_1
    //   2174: aload 16
    //   2176: astore 13
    //   2178: aload 16
    //   2180: ifnull +20 -> 2200
    //   2183: aload 14
    //   2185: astore 12
    //   2187: new 154	java/lang/String
    //   2190: dup
    //   2191: aload 18
    //   2193: aload 30
    //   2195: invokespecial 591	java/lang/String:<init>	([BLjava/lang/String;)V
    //   2198: astore 13
    //   2200: aload 23
    //   2202: astore 22
    //   2204: aload 13
    //   2206: astore 20
    //   2208: aload_1
    //   2209: astore 21
    //   2211: aload 23
    //   2213: ifnull +27 -> 2240
    //   2216: aload 14
    //   2218: astore 12
    //   2220: new 154	java/lang/String
    //   2223: dup
    //   2224: aload 19
    //   2226: aload 30
    //   2228: invokespecial 591	java/lang/String:<init>	([BLjava/lang/String;)V
    //   2231: astore 22
    //   2233: aload_1
    //   2234: astore 21
    //   2236: aload 13
    //   2238: astore 20
    //   2240: aload 21
    //   2242: ifnull +17 -> 2259
    //   2245: aload 14
    //   2247: astore 12
    //   2249: aload 27
    //   2251: ldc_w 522
    //   2254: aload 21
    //   2256: invokevirtual 57	android/content/ContentValues:put	(Ljava/lang/String;Ljava/lang/String;)V
    //   2259: aload 14
    //   2261: astore 12
    //   2263: aload 27
    //   2265: aload 26
    //   2267: aload 20
    //   2269: invokestatic 594	com/estrongs/fs/impl/media/b:a	(Landroid/content/ContentValues;Ljava/lang/String;Ljava/lang/String;)V
    //   2272: aload 28
    //   2274: ifnull +17 -> 2291
    //   2277: aload 14
    //   2279: astore 12
    //   2281: aload 27
    //   2283: ldc_w 510
    //   2286: aload 28
    //   2288: invokevirtual 57	android/content/ContentValues:put	(Ljava/lang/String;Ljava/lang/String;)V
    //   2291: aload 22
    //   2293: ifnull +242 -> 2535
    //   2296: aload 14
    //   2298: astore 12
    //   2300: aload 27
    //   2302: ldc_w 596
    //   2305: aload 22
    //   2307: invokevirtual 57	android/content/ContentValues:put	(Ljava/lang/String;Ljava/lang/String;)V
    //   2310: aload 29
    //   2312: ifnull +17 -> 2329
    //   2315: aload 14
    //   2317: astore 12
    //   2319: aload 27
    //   2321: ldc_w 541
    //   2324: aload 29
    //   2326: invokevirtual 57	android/content/ContentValues:put	(Ljava/lang/String;Ljava/lang/String;)V
    //   2329: iload 6
    //   2331: ifeq +273 -> 2604
    //   2334: aload 14
    //   2336: astore 12
    //   2338: aload 27
    //   2340: ldc_w 522
    //   2343: invokevirtual 598	android/content/ContentValues:containsKey	(Ljava/lang/String;)Z
    //   2346: ifne +20 -> 2366
    //   2349: aload 14
    //   2351: astore 12
    //   2353: aload 27
    //   2355: ldc_w 522
    //   2358: aload 26
    //   2360: invokestatic 526	com/estrongs/fs/util/j:a	(Ljava/lang/String;)Ljava/lang/String;
    //   2363: invokevirtual 57	android/content/ContentValues:put	(Ljava/lang/String;Ljava/lang/String;)V
    //   2366: aload 14
    //   2368: astore 12
    //   2370: aload 26
    //   2372: getstatic 601	com/estrongs/fs/impl/media/b:a	[Ljava/lang/String;
    //   2375: iconst_0
    //   2376: aaload
    //   2377: invokevirtual 371	java/lang/String:indexOf	(Ljava/lang/String;)I
    //   2380: ifgt +1356 -> 3736
    //   2383: aload 14
    //   2385: astore 12
    //   2387: aload 26
    //   2389: getstatic 601	com/estrongs/fs/impl/media/b:a	[Ljava/lang/String;
    //   2392: iconst_1
    //   2393: aaload
    //   2394: invokevirtual 371	java/lang/String:indexOf	(Ljava/lang/String;)I
    //   2397: ifle +195 -> 2592
    //   2400: goto +1336 -> 3736
    //   2403: aload 14
    //   2405: astore 12
    //   2407: aload 26
    //   2409: getstatic 603	com/estrongs/fs/impl/media/b:b	[Ljava/lang/String;
    //   2412: iconst_0
    //   2413: aaload
    //   2414: invokevirtual 371	java/lang/String:indexOf	(Ljava/lang/String;)I
    //   2417: ifgt +1325 -> 3742
    //   2420: aload 14
    //   2422: astore 12
    //   2424: aload 26
    //   2426: getstatic 603	com/estrongs/fs/impl/media/b:b	[Ljava/lang/String;
    //   2429: iconst_1
    //   2430: aaload
    //   2431: invokevirtual 371	java/lang/String:indexOf	(Ljava/lang/String;)I
    //   2434: ifle +164 -> 2598
    //   2437: goto +1305 -> 3742
    //   2440: aload 14
    //   2442: astore 12
    //   2444: aload 27
    //   2446: ldc_w 605
    //   2449: iload 6
    //   2451: invokestatic 610	java/lang/Boolean:valueOf	(Z)Ljava/lang/Boolean;
    //   2454: invokevirtual 613	android/content/ContentValues:put	(Ljava/lang/String;Ljava/lang/Boolean;)V
    //   2457: aload 14
    //   2459: astore 12
    //   2461: aload 27
    //   2463: ldc_w 615
    //   2466: iload 7
    //   2468: invokestatic 610	java/lang/Boolean:valueOf	(Z)Ljava/lang/Boolean;
    //   2471: invokevirtual 613	android/content/ContentValues:put	(Ljava/lang/String;Ljava/lang/Boolean;)V
    //   2474: aload 14
    //   2476: astore 13
    //   2478: aload 14
    //   2480: astore 12
    //   2482: aload 24
    //   2484: aload 15
    //   2486: aload 27
    //   2488: new 59	java/lang/StringBuilder
    //   2491: dup
    //   2492: invokespecial 60	java/lang/StringBuilder:<init>	()V
    //   2495: ldc 62
    //   2497: invokevirtual 66	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   2500: aload 26
    //   2502: invokestatic 72	android/database/DatabaseUtils:sqlEscapeString	(Ljava/lang/String;)Ljava/lang/String;
    //   2505: invokevirtual 66	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   2508: invokevirtual 76	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   2511: aconst_null
    //   2512: invokevirtual 99	android/content/ContentResolver:update	(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    //   2515: pop
    //   2516: goto +1232 -> 3748
    //   2519: aload 14
    //   2521: astore 13
    //   2523: aload 14
    //   2525: astore 12
    //   2527: getstatic 618	android/provider/MediaStore$Video$Media:EXTERNAL_CONTENT_URI	Landroid/net/Uri;
    //   2530: astore 15
    //   2532: goto -736 -> 1796
    //   2535: aload 14
    //   2537: astore 12
    //   2539: aload 27
    //   2541: ldc_w 596
    //   2544: ldc_w 620
    //   2547: invokevirtual 57	android/content/ContentValues:put	(Ljava/lang/String;Ljava/lang/String;)V
    //   2550: goto -240 -> 2310
    //   2553: astore_1
    //   2554: aload 14
    //   2556: astore 13
    //   2558: aload 14
    //   2560: astore 12
    //   2562: aload 27
    //   2564: aload 26
    //   2566: aconst_null
    //   2567: invokestatic 594	com/estrongs/fs/impl/media/b:a	(Landroid/content/ContentValues;Ljava/lang/String;Ljava/lang/String;)V
    //   2570: aload 14
    //   2572: astore 13
    //   2574: aload 14
    //   2576: astore 12
    //   2578: aload 27
    //   2580: ldc_w 596
    //   2583: ldc_w 620
    //   2586: invokevirtual 57	android/content/ContentValues:put	(Ljava/lang/String;Ljava/lang/String;)V
    //   2589: goto -115 -> 2474
    //   2592: iconst_0
    //   2593: istore 6
    //   2595: goto -192 -> 2403
    //   2598: iconst_0
    //   2599: istore 7
    //   2601: goto -161 -> 2440
    //   2604: aload 14
    //   2606: astore 12
    //   2608: invokestatic 625	com/estrongs/android/util/bd:h	()Z
    //   2611: ifeq -137 -> 2474
    //   2614: aload 14
    //   2616: astore 12
    //   2618: aload 25
    //   2620: bipush 18
    //   2622: invokevirtual 566	android/media/MediaMetadataRetriever:extractMetadata	(I)Ljava/lang/String;
    //   2625: astore_1
    //   2626: aload 14
    //   2628: astore 12
    //   2630: aload 25
    //   2632: bipush 19
    //   2634: invokevirtual 566	android/media/MediaMetadataRetriever:extractMetadata	(I)Ljava/lang/String;
    //   2637: astore 13
    //   2639: aload_1
    //   2640: ifnull +16 -> 2656
    //   2643: aload 14
    //   2645: astore 12
    //   2647: aload 27
    //   2649: ldc_w 627
    //   2652: aload_1
    //   2653: invokevirtual 57	android/content/ContentValues:put	(Ljava/lang/String;Ljava/lang/String;)V
    //   2656: aload 13
    //   2658: ifnull -184 -> 2474
    //   2661: aload 14
    //   2663: astore 12
    //   2665: aload 27
    //   2667: ldc_w 629
    //   2670: aload 13
    //   2672: invokevirtual 57	android/content/ContentValues:put	(Ljava/lang/String;Ljava/lang/String;)V
    //   2675: goto -201 -> 2474
    //   2678: aload 14
    //   2680: astore 13
    //   2682: aload 14
    //   2684: astore 12
    //   2686: aload 26
    //   2688: invokestatic 631	com/estrongs/fs/impl/media/a:a	(Ljava/lang/String;)Z
    //   2691: ifeq +1057 -> 3748
    //   2694: aload 14
    //   2696: astore 13
    //   2698: aload 14
    //   2700: astore 12
    //   2702: new 384	java/io/File
    //   2705: dup
    //   2706: aload 26
    //   2708: invokespecial 389	java/io/File:<init>	(Ljava/lang/String;)V
    //   2711: invokevirtual 634	java/io/File:lastModified	()J
    //   2714: lstore 8
    //   2716: aload 14
    //   2718: astore 13
    //   2720: aload 14
    //   2722: astore 12
    //   2724: invokestatic 637	com/estrongs/android/util/bd:g	()Z
    //   2727: istore 6
    //   2729: iload 6
    //   2731: ifeq +122 -> 2853
    //   2734: aload 14
    //   2736: astore 13
    //   2738: aload 14
    //   2740: astore 12
    //   2742: getstatic 22	com/estrongs/fs/impl/media/d:a	Landroid/graphics/BitmapFactory$Options;
    //   2745: iconst_0
    //   2746: putfield 640	android/graphics/BitmapFactory$Options:outWidth	I
    //   2749: aload 14
    //   2751: astore 13
    //   2753: aload 14
    //   2755: astore 12
    //   2757: getstatic 22	com/estrongs/fs/impl/media/d:a	Landroid/graphics/BitmapFactory$Options;
    //   2760: iconst_0
    //   2761: putfield 643	android/graphics/BitmapFactory$Options:outHeight	I
    //   2764: aload 14
    //   2766: astore 13
    //   2768: aload 14
    //   2770: astore 12
    //   2772: aload 26
    //   2774: getstatic 22	com/estrongs/fs/impl/media/d:a	Landroid/graphics/BitmapFactory$Options;
    //   2777: invokestatic 649	android/graphics/BitmapFactory:decodeFile	(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    //   2780: pop
    //   2781: aload 14
    //   2783: astore 13
    //   2785: aload 14
    //   2787: astore 12
    //   2789: getstatic 22	com/estrongs/fs/impl/media/d:a	Landroid/graphics/BitmapFactory$Options;
    //   2792: getfield 640	android/graphics/BitmapFactory$Options:outWidth	I
    //   2795: istore_3
    //   2796: aload 14
    //   2798: astore 13
    //   2800: aload 14
    //   2802: astore 12
    //   2804: getstatic 22	com/estrongs/fs/impl/media/d:a	Landroid/graphics/BitmapFactory$Options;
    //   2807: getfield 643	android/graphics/BitmapFactory$Options:outHeight	I
    //   2810: istore 5
    //   2812: aload 14
    //   2814: astore 13
    //   2816: aload 14
    //   2818: astore 12
    //   2820: aload 27
    //   2822: ldc_w 627
    //   2825: iload_3
    //   2826: invokestatic 500	java/lang/Integer:valueOf	(I)Ljava/lang/Integer;
    //   2829: invokevirtual 503	android/content/ContentValues:put	(Ljava/lang/String;Ljava/lang/Integer;)V
    //   2832: aload 14
    //   2834: astore 13
    //   2836: aload 14
    //   2838: astore 12
    //   2840: aload 27
    //   2842: ldc_w 629
    //   2845: iload 5
    //   2847: invokestatic 500	java/lang/Integer:valueOf	(I)Ljava/lang/Integer;
    //   2850: invokevirtual 503	android/content/ContentValues:put	(Ljava/lang/String;Ljava/lang/Integer;)V
    //   2853: iload_2
    //   2854: ldc_w 650
    //   2857: if_icmpeq +10 -> 2867
    //   2860: iload_2
    //   2861: ldc_w 651
    //   2864: if_icmpne +228 -> 3092
    //   2867: aload 14
    //   2869: astore 13
    //   2871: aload 14
    //   2873: astore 12
    //   2875: new 109	android/media/ExifInterface
    //   2878: dup
    //   2879: aload 26
    //   2881: invokespecial 652	android/media/ExifInterface:<init>	(Ljava/lang/String;)V
    //   2884: astore_1
    //   2885: aload_1
    //   2886: ifnull +206 -> 3092
    //   2889: aload 14
    //   2891: astore 13
    //   2893: aload 14
    //   2895: astore 12
    //   2897: iconst_2
    //   2898: newarray <illegal type>
    //   2900: astore 15
    //   2902: aload 14
    //   2904: astore 13
    //   2906: aload 14
    //   2908: astore 12
    //   2910: aload_1
    //   2911: aload 15
    //   2913: invokevirtual 656	android/media/ExifInterface:getLatLong	([F)Z
    //   2916: ifeq +49 -> 2965
    //   2919: aload 14
    //   2921: astore 13
    //   2923: aload 14
    //   2925: astore 12
    //   2927: aload 27
    //   2929: ldc_w 658
    //   2932: aload 15
    //   2934: iconst_0
    //   2935: faload
    //   2936: invokestatic 663	java/lang/Float:valueOf	(F)Ljava/lang/Float;
    //   2939: invokevirtual 666	android/content/ContentValues:put	(Ljava/lang/String;Ljava/lang/Float;)V
    //   2942: aload 14
    //   2944: astore 13
    //   2946: aload 14
    //   2948: astore 12
    //   2950: aload 27
    //   2952: ldc_w 668
    //   2955: aload 15
    //   2957: iconst_1
    //   2958: faload
    //   2959: invokestatic 663	java/lang/Float:valueOf	(F)Ljava/lang/Float;
    //   2962: invokevirtual 666	android/content/ContentValues:put	(Ljava/lang/String;Ljava/lang/Float;)V
    //   2965: aload 14
    //   2967: astore 13
    //   2969: aload 14
    //   2971: astore 12
    //   2973: aload_1
    //   2974: invokestatic 670	com/estrongs/fs/impl/media/d:a	(Landroid/media/ExifInterface;)J
    //   2977: lstore 10
    //   2979: lload 10
    //   2981: ldc2_w 115
    //   2984: lcmp
    //   2985: ifeq +178 -> 3163
    //   2988: aload 14
    //   2990: astore 13
    //   2992: aload 14
    //   2994: astore 12
    //   2996: aload 27
    //   2998: ldc_w 672
    //   3001: lload 10
    //   3003: invokestatic 517	java/lang/Long:valueOf	(J)Ljava/lang/Long;
    //   3006: invokevirtual 520	android/content/ContentValues:put	(Ljava/lang/String;Ljava/lang/Long;)V
    //   3009: aload 14
    //   3011: astore 13
    //   3013: aload 14
    //   3015: astore 12
    //   3017: aload_1
    //   3018: ldc_w 674
    //   3021: iconst_m1
    //   3022: invokevirtual 678	android/media/ExifInterface:getAttributeInt	(Ljava/lang/String;I)I
    //   3025: istore_2
    //   3026: iload_2
    //   3027: iconst_m1
    //   3028: if_icmpeq +64 -> 3092
    //   3031: iload_2
    //   3032: tableswitch	default:+725->3757, 3:+207->3239, 4:+725->3757, 5:+725->3757, 6:+201->3233, 7:+725->3757, 8:+214->3246
    //   3072: aload 14
    //   3074: astore 13
    //   3076: aload 14
    //   3078: astore 12
    //   3080: aload 27
    //   3082: ldc_w 680
    //   3085: iload_2
    //   3086: invokestatic 500	java/lang/Integer:valueOf	(I)Ljava/lang/Integer;
    //   3089: invokevirtual 503	android/content/ContentValues:put	(Ljava/lang/String;Ljava/lang/Integer;)V
    //   3092: aload 14
    //   3094: astore 13
    //   3096: aload 14
    //   3098: astore 12
    //   3100: aload 27
    //   3102: ldc_w 682
    //   3105: lload 8
    //   3107: ldc2_w 683
    //   3110: ldiv
    //   3111: invokestatic 517	java/lang/Long:valueOf	(J)Ljava/lang/Long;
    //   3114: invokevirtual 520	android/content/ContentValues:put	(Ljava/lang/String;Ljava/lang/Long;)V
    //   3117: aload 14
    //   3119: astore 13
    //   3121: aload 14
    //   3123: astore 12
    //   3125: aload 24
    //   3127: getstatic 687	android/provider/MediaStore$Images$Media:EXTERNAL_CONTENT_URI	Landroid/net/Uri;
    //   3130: aload 27
    //   3132: new 59	java/lang/StringBuilder
    //   3135: dup
    //   3136: invokespecial 60	java/lang/StringBuilder:<init>	()V
    //   3139: ldc 62
    //   3141: invokevirtual 66	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   3144: aload 26
    //   3146: invokestatic 72	android/database/DatabaseUtils:sqlEscapeString	(Ljava/lang/String;)Ljava/lang/String;
    //   3149: invokevirtual 66	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   3152: invokevirtual 76	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   3155: aconst_null
    //   3156: invokevirtual 99	android/content/ContentResolver:update	(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    //   3159: pop
    //   3160: goto +588 -> 3748
    //   3163: aload 14
    //   3165: astore 13
    //   3167: aload 14
    //   3169: astore 12
    //   3171: aload_1
    //   3172: invokestatic 689	com/estrongs/fs/impl/media/d:b	(Landroid/media/ExifInterface;)J
    //   3175: lstore 10
    //   3177: lload 10
    //   3179: ldc2_w 115
    //   3182: lcmp
    //   3183: ifeq -174 -> 3009
    //   3186: aload 14
    //   3188: astore 13
    //   3190: aload 14
    //   3192: astore 12
    //   3194: lload 8
    //   3196: lload 10
    //   3198: lsub
    //   3199: invokestatic 695	java/lang/Math:abs	(J)J
    //   3202: ldc2_w 696
    //   3205: lcmp
    //   3206: iflt -197 -> 3009
    //   3209: aload 14
    //   3211: astore 13
    //   3213: aload 14
    //   3215: astore 12
    //   3217: aload 27
    //   3219: ldc_w 672
    //   3222: lload 10
    //   3224: invokestatic 517	java/lang/Long:valueOf	(J)Ljava/lang/Long;
    //   3227: invokevirtual 520	android/content/ContentValues:put	(Ljava/lang/String;Ljava/lang/Long;)V
    //   3230: goto -221 -> 3009
    //   3233: bipush 90
    //   3235: istore_2
    //   3236: goto -164 -> 3072
    //   3239: sipush 180
    //   3242: istore_2
    //   3243: goto -171 -> 3072
    //   3246: sipush 270
    //   3249: istore_2
    //   3250: goto -178 -> 3072
    //   3253: aload 14
    //   3255: astore 13
    //   3257: aload 14
    //   3259: astore 12
    //   3261: aload 25
    //   3263: invokevirtual 700	android/media/MediaMetadataRetriever:release	()V
    //   3266: aload 14
    //   3268: astore 12
    //   3270: aload_0
    //   3271: invokeinterface 321 1 0
    //   3276: sipush 500
    //   3279: irem
    //   3280: ifne +133 -> 3413
    //   3283: aload 14
    //   3285: astore 12
    //   3287: aload_0
    //   3288: invokeinterface 321 1 0
    //   3293: sipush 500
    //   3296: idiv
    //   3297: istore_2
    //   3298: aload 14
    //   3300: astore 12
    //   3302: new 50	android/content/ContentValues
    //   3305: dup
    //   3306: invokespecial 51	android/content/ContentValues:<init>	()V
    //   3309: astore_1
    //   3310: aload 14
    //   3312: astore 12
    //   3314: aload_1
    //   3315: ldc_w 682
    //   3318: iconst_m1
    //   3319: invokestatic 500	java/lang/Integer:valueOf	(I)Ljava/lang/Integer;
    //   3322: invokevirtual 503	android/content/ContentValues:put	(Ljava/lang/String;Ljava/lang/Integer;)V
    //   3325: iconst_0
    //   3326: istore_3
    //   3327: iload_3
    //   3328: iload_2
    //   3329: if_icmpge +152 -> 3481
    //   3332: aload 14
    //   3334: astore 12
    //   3336: new 213	java/lang/StringBuffer
    //   3339: dup
    //   3340: invokespecial 214	java/lang/StringBuffer:<init>	()V
    //   3343: astore 13
    //   3345: iload_3
    //   3346: iload_2
    //   3347: iconst_1
    //   3348: isub
    //   3349: if_icmpge +84 -> 3433
    //   3352: sipush 500
    //   3355: istore 4
    //   3357: goto +411 -> 3768
    //   3360: iload 5
    //   3362: iload 4
    //   3364: if_icmpge +179 -> 3543
    //   3367: aload 14
    //   3369: astore 12
    //   3371: aload_0
    //   3372: iload_3
    //   3373: sipush 500
    //   3376: imul
    //   3377: iload 5
    //   3379: iadd
    //   3380: invokeinterface 324 2 0
    //   3385: checkcast 154	java/lang/String
    //   3388: astore 15
    //   3390: iload 5
    //   3392: ifne +64 -> 3456
    //   3395: aload 14
    //   3397: astore 12
    //   3399: aload 13
    //   3401: aload 15
    //   3403: invokestatic 72	android/database/DatabaseUtils:sqlEscapeString	(Ljava/lang/String;)Ljava/lang/String;
    //   3406: invokevirtual 224	java/lang/StringBuffer:append	(Ljava/lang/String;)Ljava/lang/StringBuffer;
    //   3409: pop
    //   3410: goto +364 -> 3774
    //   3413: aload 14
    //   3415: astore 12
    //   3417: aload_0
    //   3418: invokeinterface 321 1 0
    //   3423: sipush 500
    //   3426: idiv
    //   3427: iconst_1
    //   3428: iadd
    //   3429: istore_2
    //   3430: goto -132 -> 3298
    //   3433: aload 14
    //   3435: astore 12
    //   3437: aload_0
    //   3438: invokeinterface 321 1 0
    //   3443: iload_2
    //   3444: iconst_1
    //   3445: isub
    //   3446: sipush 500
    //   3449: imul
    //   3450: isub
    //   3451: istore 4
    //   3453: goto +315 -> 3768
    //   3456: aload 14
    //   3458: astore 12
    //   3460: aload 13
    //   3462: ldc_w 474
    //   3465: invokevirtual 224	java/lang/StringBuffer:append	(Ljava/lang/String;)Ljava/lang/StringBuffer;
    //   3468: aload 15
    //   3470: invokestatic 72	android/database/DatabaseUtils:sqlEscapeString	(Ljava/lang/String;)Ljava/lang/String;
    //   3473: invokevirtual 224	java/lang/StringBuffer:append	(Ljava/lang/String;)Ljava/lang/StringBuffer;
    //   3476: pop
    //   3477: goto +297 -> 3774
    //   3480: astore_1
    //   3481: aload 14
    //   3483: astore 13
    //   3485: aload 14
    //   3487: astore 12
    //   3489: getstatic 705	com/estrongs/android/pop/z:ac	Z
    //   3492: ifeq +105 -> 3597
    //   3495: iconst_0
    //   3496: istore_2
    //   3497: aload 14
    //   3499: astore 13
    //   3501: aload 14
    //   3503: astore 12
    //   3505: iload_2
    //   3506: aload_0
    //   3507: invokeinterface 321 1 0
    //   3512: if_icmpge +85 -> 3597
    //   3515: aload 14
    //   3517: astore 13
    //   3519: aload 14
    //   3521: astore 12
    //   3523: aload_0
    //   3524: iload_2
    //   3525: invokeinterface 324 2 0
    //   3530: checkcast 154	java/lang/String
    //   3533: invokestatic 707	com/estrongs/android/pop/utils/cd:b	(Ljava/lang/String;)V
    //   3536: iload_2
    //   3537: iconst_1
    //   3538: iadd
    //   3539: istore_2
    //   3540: goto -43 -> 3497
    //   3543: aload 14
    //   3545: astore 12
    //   3547: aload 24
    //   3549: ldc 87
    //   3551: invokestatic 93	android/provider/MediaStore$Files:getContentUri	(Ljava/lang/String;)Landroid/net/Uri;
    //   3554: aload_1
    //   3555: new 59	java/lang/StringBuilder
    //   3558: dup
    //   3559: invokespecial 60	java/lang/StringBuilder:<init>	()V
    //   3562: ldc_w 489
    //   3565: invokevirtual 66	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   3568: aload 13
    //   3570: invokevirtual 346	java/lang/StringBuffer:toString	()Ljava/lang/String;
    //   3573: invokevirtual 66	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   3576: ldc_w 318
    //   3579: invokevirtual 66	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   3582: invokevirtual 76	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   3585: aconst_null
    //   3586: invokevirtual 99	android/content/ContentResolver:update	(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    //   3589: pop
    //   3590: iload_3
    //   3591: iconst_1
    //   3592: iadd
    //   3593: istore_3
    //   3594: goto -267 -> 3327
    //   3597: aload 14
    //   3599: ifnull -3121 -> 478
    //   3602: aload 14
    //   3604: invokeinterface 355 1 0
    //   3609: return
    //   3610: astore_1
    //   3611: goto -345 -> 3266
    //   3614: astore_0
    //   3615: goto -3107 -> 508
    //   3618: astore_1
    //   3619: goto -766 -> 2853
    //   3622: astore 12
    //   3624: goto -2131 -> 1493
    //   3627: astore 12
    //   3629: goto -3295 -> 334
    //   3632: astore 13
    //   3634: aload 12
    //   3636: astore 14
    //   3638: goto -3304 -> 334
    //   3641: astore 13
    //   3643: aload 12
    //   3645: astore 14
    //   3647: goto -3313 -> 334
    //   3650: iconst_m1
    //   3651: istore_2
    //   3652: goto -3329 -> 323
    //   3655: iconst_m1
    //   3656: istore_2
    //   3657: goto -3327 -> 330
    //   3660: iconst_m1
    //   3661: istore_2
    //   3662: aconst_null
    //   3663: astore 12
    //   3665: goto -3335 -> 330
    //   3668: aload 15
    //   3670: astore 12
    //   3672: goto -3490 -> 182
    //   3675: iconst_0
    //   3676: istore_3
    //   3677: aload 15
    //   3679: astore_1
    //   3680: goto -2830 -> 850
    //   3683: iconst_0
    //   3684: istore 5
    //   3686: goto -2798 -> 888
    //   3689: iload 5
    //   3691: iconst_1
    //   3692: iadd
    //   3693: istore 5
    //   3695: goto -2807 -> 888
    //   3698: iload_3
    //   3699: iconst_1
    //   3700: iadd
    //   3701: istore_3
    //   3702: goto -2852 -> 850
    //   3705: iconst_0
    //   3706: istore_3
    //   3707: iload_3
    //   3708: iload_2
    //   3709: if_icmpge -2082 -> 1627
    //   3712: iload_3
    //   3713: iload_2
    //   3714: iconst_1
    //   3715: isub
    //   3716: if_icmpge -2322 -> 1394
    //   3719: sipush 500
    //   3722: istore 4
    //   3724: goto -2493 -> 1231
    //   3727: iload 5
    //   3729: iconst_1
    //   3730: iadd
    //   3731: istore 5
    //   3733: goto -2485 -> 1248
    //   3736: iconst_1
    //   3737: istore 6
    //   3739: goto -1336 -> 2403
    //   3742: iconst_1
    //   3743: istore 7
    //   3745: goto -1305 -> 2440
    //   3748: iload 4
    //   3750: iconst_1
    //   3751: iadd
    //   3752: istore 4
    //   3754: goto -2087 -> 1667
    //   3757: iconst_0
    //   3758: istore_2
    //   3759: goto -687 -> 3072
    //   3762: astore_1
    //   3763: aconst_null
    //   3764: astore_1
    //   3765: goto -880 -> 2885
    //   3768: iconst_0
    //   3769: istore 5
    //   3771: goto -411 -> 3360
    //   3774: iload 5
    //   3776: iconst_1
    //   3777: iadd
    //   3778: istore 5
    //   3780: goto -420 -> 3360
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	3783	0	paramList	List<String>
    //   0	3783	1	paramSet	Set<String>
    //   29	3730	2	i	int
    //   320	3397	3	j	int
    //   883	2870	4	k	int
    //   888	2891	5	m	int
    //   1751	1987	6	bool1	boolean
    //   1766	1978	7	bool2	boolean
    //   2714	481	8	l1	long
    //   2977	246	10	l2	long
    //   18	3528	12	localObject1	Object
    //   3622	1	12	localException1	Exception
    //   3627	17	12	localException2	Exception
    //   3663	8	12	localObject2	Object
    //   14	3555	13	localObject3	Object
    //   3632	1	13	localException3	Exception
    //   3641	1	13	localException4	Exception
    //   10	3636	14	localObject4	Object
    //   7	3671	15	localObject5	Object
    //   4	2175	16	localObject6	Object
    //   1	2166	17	localObject7	Object
    //   99	2093	18	localObject8	Object
    //   1904	321	19	arrayOfByte	byte[]
    //   1886	382	20	localObject9	Object
    //   1890	365	21	localObject10	Object
    //   1882	424	22	str1	String
    //   1855	357	23	str2	String
    //   26	3522	24	localContentResolver	ContentResolver
    //   1662	1600	25	localMediaMetadataRetriever	android.media.MediaMetadataRetriever
    //   1705	1440	26	str3	String
    //   1736	1482	27	localContentValues	ContentValues
    //   1843	444	28	str4	String
    //   1868	457	29	str5	String
    //   2102	125	30	str6	String
    // Exception table:
    //   from	to	target	type
    //   20	28	458	java/lang/Exception
    //   38	48	458	java/lang/Exception
    //   56	77	458	java/lang/Exception
    //   92	101	458	java/lang/Exception
    //   118	130	458	java/lang/Exception
    //   138	156	458	java/lang/Exception
    //   164	178	458	java/lang/Exception
    //   342	351	458	java/lang/Exception
    //   359	366	458	java/lang/Exception
    //   374	383	458	java/lang/Exception
    //   391	402	458	java/lang/Exception
    //   410	420	458	java/lang/Exception
    //   428	436	458	java/lang/Exception
    //   444	455	458	java/lang/Exception
    //   487	504	458	java/lang/Exception
    //   535	566	458	java/lang/Exception
    //   574	597	458	java/lang/Exception
    //   610	619	458	java/lang/Exception
    //   625	640	458	java/lang/Exception
    //   651	698	458	java/lang/Exception
    //   707	713	458	java/lang/Exception
    //   724	734	458	java/lang/Exception
    //   742	749	458	java/lang/Exception
    //   757	766	458	java/lang/Exception
    //   774	790	458	java/lang/Exception
    //   798	804	458	java/lang/Exception
    //   815	828	458	java/lang/Exception
    //   836	847	458	java/lang/Exception
    //   864	873	458	java/lang/Exception
    //   901	920	458	java/lang/Exception
    //   931	942	458	java/lang/Exception
    //   953	966	458	java/lang/Exception
    //   975	991	458	java/lang/Exception
    //   1000	1017	458	java/lang/Exception
    //   1026	1033	458	java/lang/Exception
    //   1039	1071	458	java/lang/Exception
    //   1077	1098	458	java/lang/Exception
    //   1108	1117	458	java/lang/Exception
    //   1123	1138	458	java/lang/Exception
    //   1147	1153	458	java/lang/Exception
    //   1164	1171	458	java/lang/Exception
    //   1196	1209	458	java/lang/Exception
    //   1217	1228	458	java/lang/Exception
    //   1239	1245	458	java/lang/Exception
    //   1263	1282	458	java/lang/Exception
    //   1290	1301	458	java/lang/Exception
    //   1309	1320	458	java/lang/Exception
    //   1328	1343	458	java/lang/Exception
    //   1351	1367	458	java/lang/Exception
    //   1378	1391	458	java/lang/Exception
    //   1402	1418	458	java/lang/Exception
    //   1429	1436	458	java/lang/Exception
    //   1452	1464	458	java/lang/Exception
    //   1501	1516	458	java/lang/Exception
    //   1524	1539	458	java/lang/Exception
    //   1547	1555	458	java/lang/Exception
    //   1563	1576	458	java/lang/Exception
    //   1584	1597	458	java/lang/Exception
    //   1608	1620	458	java/lang/Exception
    //   1640	1647	458	java/lang/Exception
    //   1655	1664	458	java/lang/Exception
    //   1675	1686	458	java/lang/Exception
    //   1694	1707	458	java/lang/Exception
    //   1715	1721	458	java/lang/Exception
    //   1729	1738	458	java/lang/Exception
    //   1746	1753	458	java/lang/Exception
    //   1761	1768	458	java/lang/Exception
    //   1791	1796	458	java/lang/Exception
    //   2482	2516	458	java/lang/Exception
    //   2527	2532	458	java/lang/Exception
    //   2562	2570	458	java/lang/Exception
    //   2578	2589	458	java/lang/Exception
    //   2686	2694	458	java/lang/Exception
    //   2702	2716	458	java/lang/Exception
    //   2724	2729	458	java/lang/Exception
    //   2742	2749	458	java/lang/Exception
    //   2757	2764	458	java/lang/Exception
    //   2772	2781	458	java/lang/Exception
    //   2789	2796	458	java/lang/Exception
    //   2804	2812	458	java/lang/Exception
    //   2820	2832	458	java/lang/Exception
    //   2840	2853	458	java/lang/Exception
    //   2875	2885	458	java/lang/Exception
    //   2897	2902	458	java/lang/Exception
    //   2910	2919	458	java/lang/Exception
    //   2927	2942	458	java/lang/Exception
    //   2950	2965	458	java/lang/Exception
    //   2973	2979	458	java/lang/Exception
    //   2996	3009	458	java/lang/Exception
    //   3017	3026	458	java/lang/Exception
    //   3080	3092	458	java/lang/Exception
    //   3100	3117	458	java/lang/Exception
    //   3125	3160	458	java/lang/Exception
    //   3171	3177	458	java/lang/Exception
    //   3194	3209	458	java/lang/Exception
    //   3217	3230	458	java/lang/Exception
    //   3261	3266	458	java/lang/Exception
    //   3489	3495	458	java/lang/Exception
    //   3505	3515	458	java/lang/Exception
    //   3523	3536	458	java/lang/Exception
    //   20	28	507	finally
    //   38	48	507	finally
    //   56	77	507	finally
    //   92	101	507	finally
    //   118	130	507	finally
    //   138	156	507	finally
    //   164	178	507	finally
    //   204	211	507	finally
    //   215	266	507	finally
    //   270	293	507	finally
    //   342	351	507	finally
    //   359	366	507	finally
    //   374	383	507	finally
    //   391	402	507	finally
    //   410	420	507	finally
    //   428	436	507	finally
    //   444	455	507	finally
    //   463	466	507	finally
    //   487	504	507	finally
    //   535	566	507	finally
    //   574	597	507	finally
    //   610	619	507	finally
    //   625	640	507	finally
    //   651	698	507	finally
    //   707	713	507	finally
    //   724	734	507	finally
    //   742	749	507	finally
    //   757	766	507	finally
    //   774	790	507	finally
    //   798	804	507	finally
    //   815	828	507	finally
    //   836	847	507	finally
    //   864	873	507	finally
    //   901	920	507	finally
    //   931	942	507	finally
    //   953	966	507	finally
    //   975	991	507	finally
    //   1000	1017	507	finally
    //   1026	1033	507	finally
    //   1039	1071	507	finally
    //   1077	1098	507	finally
    //   1108	1117	507	finally
    //   1123	1138	507	finally
    //   1147	1153	507	finally
    //   1164	1171	507	finally
    //   1196	1209	507	finally
    //   1217	1228	507	finally
    //   1239	1245	507	finally
    //   1263	1282	507	finally
    //   1290	1301	507	finally
    //   1309	1320	507	finally
    //   1328	1343	507	finally
    //   1351	1367	507	finally
    //   1378	1391	507	finally
    //   1402	1418	507	finally
    //   1429	1436	507	finally
    //   1452	1464	507	finally
    //   1468	1493	507	finally
    //   1501	1516	507	finally
    //   1524	1539	507	finally
    //   1547	1555	507	finally
    //   1563	1576	507	finally
    //   1584	1597	507	finally
    //   1608	1620	507	finally
    //   1640	1647	507	finally
    //   1655	1664	507	finally
    //   1675	1686	507	finally
    //   1694	1707	507	finally
    //   1715	1721	507	finally
    //   1729	1738	507	finally
    //   1746	1753	507	finally
    //   1761	1768	507	finally
    //   1791	1796	507	finally
    //   1800	1807	507	finally
    //   1811	1820	507	finally
    //   1824	1832	507	finally
    //   1836	1845	507	finally
    //   1849	1857	507	finally
    //   1861	1870	507	finally
    //   1917	1927	507	finally
    //   1931	1937	507	finally
    //   1948	1958	507	finally
    //   1962	1968	507	finally
    //   1979	1989	507	finally
    //   1993	1999	507	finally
    //   2003	2007	507	finally
    //   2018	2029	507	finally
    //   2033	2039	507	finally
    //   2050	2061	507	finally
    //   2065	2071	507	finally
    //   2080	2091	507	finally
    //   2095	2104	507	finally
    //   2137	2150	507	finally
    //   2162	2174	507	finally
    //   2187	2200	507	finally
    //   2220	2233	507	finally
    //   2249	2259	507	finally
    //   2263	2272	507	finally
    //   2281	2291	507	finally
    //   2300	2310	507	finally
    //   2319	2329	507	finally
    //   2338	2349	507	finally
    //   2353	2366	507	finally
    //   2370	2383	507	finally
    //   2387	2400	507	finally
    //   2407	2420	507	finally
    //   2424	2437	507	finally
    //   2444	2457	507	finally
    //   2461	2474	507	finally
    //   2482	2516	507	finally
    //   2527	2532	507	finally
    //   2539	2550	507	finally
    //   2562	2570	507	finally
    //   2578	2589	507	finally
    //   2608	2614	507	finally
    //   2618	2626	507	finally
    //   2630	2639	507	finally
    //   2647	2656	507	finally
    //   2665	2675	507	finally
    //   2686	2694	507	finally
    //   2702	2716	507	finally
    //   2724	2729	507	finally
    //   2742	2749	507	finally
    //   2757	2764	507	finally
    //   2772	2781	507	finally
    //   2789	2796	507	finally
    //   2804	2812	507	finally
    //   2820	2832	507	finally
    //   2840	2853	507	finally
    //   2875	2885	507	finally
    //   2897	2902	507	finally
    //   2910	2919	507	finally
    //   2927	2942	507	finally
    //   2950	2965	507	finally
    //   2973	2979	507	finally
    //   2996	3009	507	finally
    //   3017	3026	507	finally
    //   3080	3092	507	finally
    //   3100	3117	507	finally
    //   3125	3160	507	finally
    //   3171	3177	507	finally
    //   3194	3209	507	finally
    //   3217	3230	507	finally
    //   3261	3266	507	finally
    //   3270	3283	507	finally
    //   3287	3298	507	finally
    //   3302	3310	507	finally
    //   3314	3325	507	finally
    //   3336	3345	507	finally
    //   3371	3390	507	finally
    //   3399	3410	507	finally
    //   3417	3430	507	finally
    //   3437	3453	507	finally
    //   3460	3477	507	finally
    //   3489	3495	507	finally
    //   3505	3515	507	finally
    //   3523	3536	507	finally
    //   3547	3590	507	finally
    //   1800	1807	2553	java/lang/Exception
    //   1811	1820	2553	java/lang/Exception
    //   1824	1832	2553	java/lang/Exception
    //   1836	1845	2553	java/lang/Exception
    //   1849	1857	2553	java/lang/Exception
    //   1861	1870	2553	java/lang/Exception
    //   1917	1927	2553	java/lang/Exception
    //   1931	1937	2553	java/lang/Exception
    //   1948	1958	2553	java/lang/Exception
    //   1962	1968	2553	java/lang/Exception
    //   1979	1989	2553	java/lang/Exception
    //   1993	1999	2553	java/lang/Exception
    //   2003	2007	2553	java/lang/Exception
    //   2018	2029	2553	java/lang/Exception
    //   2033	2039	2553	java/lang/Exception
    //   2050	2061	2553	java/lang/Exception
    //   2065	2071	2553	java/lang/Exception
    //   2080	2091	2553	java/lang/Exception
    //   2095	2104	2553	java/lang/Exception
    //   2137	2150	2553	java/lang/Exception
    //   2162	2174	2553	java/lang/Exception
    //   2187	2200	2553	java/lang/Exception
    //   2220	2233	2553	java/lang/Exception
    //   2249	2259	2553	java/lang/Exception
    //   2263	2272	2553	java/lang/Exception
    //   2281	2291	2553	java/lang/Exception
    //   2300	2310	2553	java/lang/Exception
    //   2319	2329	2553	java/lang/Exception
    //   2338	2349	2553	java/lang/Exception
    //   2353	2366	2553	java/lang/Exception
    //   2370	2383	2553	java/lang/Exception
    //   2387	2400	2553	java/lang/Exception
    //   2407	2420	2553	java/lang/Exception
    //   2424	2437	2553	java/lang/Exception
    //   2444	2457	2553	java/lang/Exception
    //   2461	2474	2553	java/lang/Exception
    //   2539	2550	2553	java/lang/Exception
    //   2608	2614	2553	java/lang/Exception
    //   2618	2626	2553	java/lang/Exception
    //   2630	2639	2553	java/lang/Exception
    //   2647	2656	2553	java/lang/Exception
    //   2665	2675	2553	java/lang/Exception
    //   3270	3283	3480	java/lang/Exception
    //   3287	3298	3480	java/lang/Exception
    //   3302	3310	3480	java/lang/Exception
    //   3314	3325	3480	java/lang/Exception
    //   3336	3345	3480	java/lang/Exception
    //   3371	3390	3480	java/lang/Exception
    //   3399	3410	3480	java/lang/Exception
    //   3417	3430	3480	java/lang/Exception
    //   3437	3453	3480	java/lang/Exception
    //   3460	3477	3480	java/lang/Exception
    //   3547	3590	3480	java/lang/Exception
    //   3261	3266	3610	java/lang/RuntimeException
    //   302	321	3614	finally
    //   323	330	3614	finally
    //   2742	2749	3618	java/lang/Throwable
    //   2757	2764	3618	java/lang/Throwable
    //   2772	2781	3618	java/lang/Throwable
    //   2789	2796	3618	java/lang/Throwable
    //   2804	2812	3618	java/lang/Throwable
    //   2820	2832	3618	java/lang/Throwable
    //   2840	2853	3618	java/lang/Throwable
    //   1468	1493	3622	java/lang/Exception
    //   204	211	3627	java/lang/Exception
    //   215	266	3627	java/lang/Exception
    //   270	293	3627	java/lang/Exception
    //   302	321	3632	java/lang/Exception
    //   323	330	3641	java/lang/Exception
    //   2875	2885	3762	java/io/IOException
  }
  
  private static long b(ExifInterface paramExifInterface)
  {
    paramExifInterface = paramExifInterface.getAttribute("DateTime");
    if (paramExifInterface == null) {}
    for (;;)
    {
      return -1L;
      ParsePosition localParsePosition = new ParsePosition(0);
      try
      {
        paramExifInterface = b.parse(paramExifInterface, localParsePosition);
        if (paramExifInterface != null)
        {
          long l = paramExifInterface.getTime();
          return l;
        }
      }
      catch (IllegalArgumentException paramExifInterface) {}
    }
    return -1L;
  }
  
  public static void b(List<String> paramList)
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
          i = paramList.size() / 500;
          break label225;
          if (j >= i) {
            break;
          }
          localStringBuffer = new StringBuffer();
          if (j >= i - 1) {
            continue;
          }
          k = 500;
          break label230;
          if (m >= k) {
            break label172;
          }
          str = am.bE((String)paramList.get(j * 500 + m));
          if (m != 0) {
            continue;
          }
          localStringBuffer.append(DatabaseUtils.sqlEscapeString(str));
          break label236;
        }
        int i = paramList.size() / 500 + 1;
        break label225;
        int k = paramList.size() - (i - 1) * 500;
        break label230;
        localStringBuffer.append(",").append(DatabaseUtils.sqlEscapeString(str));
      }
      catch (Exception paramList)
      {
        paramList.printStackTrace();
        return;
      }
      label172:
      FexApplication.a().getContentResolver().delete(MediaStore.Files.getContentUri("external"), "_data IN (" + localStringBuffer.toString() + ")", null);
      j += 1;
      continue;
      label225:
      int j = 0;
      continue;
      label230:
      int m = 0;
      continue;
      label236:
      m += 1;
    }
  }
  
  public static void e(String paramString)
  {
    Object localObject = am.bE(paramString);
    paramString = (String)localObject;
    if (((String)localObject).endsWith("/")) {
      paramString = ((String)localObject).substring(0, ((String)localObject).length() - 1);
    }
    localObject = new ArrayList();
    HashSet localHashSet = new HashSet();
    ((List)localObject).add(paramString);
    localHashSet.add(am.bk(paramString));
    a((List)localObject, localHashSet);
  }
  
  public static int f(String paramString)
  {
    try
    {
      String str = am.bE(paramString);
      paramString = FexApplication.a().getContentResolver();
      str = "_data=" + DatabaseUtils.sqlEscapeString(str);
      int i = paramString.delete(MediaStore.Files.getContentUri("external"), str, null);
      return i;
    }
    catch (Exception paramString)
    {
      paramString.printStackTrace();
    }
    return 0;
  }
  
  public static void g(String paramString)
  {
    ArrayList localArrayList = new ArrayList();
    localArrayList.add(paramString);
    a(localArrayList);
  }
  
  protected abstract h a(com.estrongs.fs.impl.local.f paramf);
  
  public h a(String paramString)
  {
    return null;
  }
  
  public OutputStream a(String paramString, TypedMap paramTypedMap)
  {
    return null;
  }
  
  public OutputStream a(String paramString, boolean paramBoolean)
  {
    return null;
  }
  
  protected abstract String a();
  
  public List<h> a(h paramh, i parami, TypedMap paramTypedMap)
  {
    parami = null;
    if (!cd.a(paramTypedMap)) {
      return null;
    }
    Object localObject1 = aa.f();
    Object localObject2 = aa.a((af[])localObject1);
    r localr = new r(false);
    if (localObject1.length > 500) {
      localr.a(new g(this, (af[])localObject1, (String[])localObject2));
    }
    localr.a(am.l());
    StringBuffer localStringBuffer;
    if ((localObject1.length > 0) && (localObject1.length <= 500))
    {
      localStringBuffer = new StringBuffer();
      int i = 0;
      if (i < localObject1.length)
      {
        if (a)
        {
          paramTypedMap = localObject2[i];
          paramh = paramTypedMap;
          if (paramTypedMap.endsWith("/")) {
            paramh = paramTypedMap.substring(0, paramTypedMap.length() - 1);
          }
          if (localStringBuffer.length() > 0) {
            localStringBuffer.append(" and ");
          }
          localStringBuffer.append("_data").append("!=").append(DatabaseUtils.sqlEscapeString(paramh));
          localStringBuffer.append(" and ").append("_data").append(" not like ").append(DatabaseUtils.sqlEscapeString(paramh + "/" + "%"));
        }
        for (;;)
        {
          i += 1;
          break;
          if (localStringBuffer.length() > 0) {
            localStringBuffer.append(" and ");
          }
          localStringBuffer.append("_data").append("!=").append(DatabaseUtils.sqlEscapeString(localObject2[i]));
        }
      }
    }
    for (paramh = localStringBuffer.toString();; paramh = null)
    {
      localObject1 = MediaStore.Files.getContentUri("external");
      paramTypedMap = new LinkedList();
      localObject2 = a();
      if (localObject2 == null) {
        return paramTypedMap;
      }
      if (paramh == null)
      {
        paramh = "(" + (String)localObject2 + ")";
        if (ad.a(FexApplication.a()).p()) {
          break label623;
        }
        paramh = paramh + " and " + "_data" + " not like " + DatabaseUtils.sqlEscapeString("%/.%");
      }
      label623:
      for (;;)
      {
        try
        {
          paramh = FexApplication.a().getContentResolver().query((Uri)localObject1, new String[] { "_data", "date_modified" }, paramh, null, null);
          if (paramh == null)
          {
            if (paramh != null) {
              paramh.close();
            }
            return paramTypedMap;
            paramh = "(" + (String)localObject2 + ") and " + paramh;
          }
        }
        finally
        {
          continue;
        }
        try
        {
          parami = com.estrongs.a.a.getCurrentTask();
          if (paramh.moveToNext())
          {
            if (parami != null)
            {
              boolean bool = parami.taskStopped();
              if (bool)
              {
                if (paramh == null) {
                  break;
                }
                paramh.close();
                return null;
              }
            }
            localObject1 = new File(paramh.getString(0));
            if ((((File)localObject1).isDirectory()) || (!((File)localObject1).exists())) {
              continue;
            }
            localObject1 = new com.estrongs.fs.impl.local.f((File)localObject1);
            if (!localr.a((h)localObject1)) {
              continue;
            }
            paramTypedMap.add(a((com.estrongs.fs.impl.local.f)localObject1));
            continue;
          }
          if (paramh == null) {
            continue;
          }
        }
        finally
        {
          parami = paramh;
          paramh = paramTypedMap;
          if (parami != null) {
            parami.close();
          }
        }
        paramh.close();
        return paramTypedMap;
      }
    }
  }
  
  public boolean b(String paramString)
  {
    return false;
  }
  
  /* Error */
  public int c()
  {
    // Byte code:
    //   0: aconst_null
    //   1: astore 4
    //   3: ldc 87
    //   5: invokestatic 93	android/provider/MediaStore$Files:getContentUri	(Ljava/lang/String;)Landroid/net/Uri;
    //   8: astore_3
    //   9: aload_0
    //   10: invokevirtual 737	com/estrongs/fs/impl/media/d:a	()Ljava/lang/String;
    //   13: astore 5
    //   15: aload 5
    //   17: ifnonnull +19 -> 36
    //   20: iconst_0
    //   21: ifeq +11 -> 32
    //   24: new 744	java/lang/NullPointerException
    //   27: dup
    //   28: invokespecial 745	java/lang/NullPointerException:<init>	()V
    //   31: athrow
    //   32: iconst_m1
    //   33: istore_1
    //   34: iload_1
    //   35: ireturn
    //   36: new 59	java/lang/StringBuilder
    //   39: dup
    //   40: invokespecial 60	java/lang/StringBuilder:<init>	()V
    //   43: ldc -35
    //   45: invokevirtual 66	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   48: aload 5
    //   50: invokevirtual 66	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   53: ldc_w 318
    //   56: invokevirtual 66	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   59: invokevirtual 76	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   62: astore 5
    //   64: invokestatic 81	com/estrongs/android/pop/FexApplication:a	()Lcom/estrongs/android/pop/FexApplication;
    //   67: invokevirtual 85	com/estrongs/android/pop/FexApplication:getContentResolver	()Landroid/content/ContentResolver;
    //   70: aload_3
    //   71: iconst_1
    //   72: anewarray 154	java/lang/String
    //   75: dup
    //   76: iconst_0
    //   77: ldc_w 747
    //   80: aastore
    //   81: aload 5
    //   83: aconst_null
    //   84: aconst_null
    //   85: invokevirtual 350	android/content/ContentResolver:query	(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    //   88: astore_3
    //   89: aload_3
    //   90: ifnull +24 -> 114
    //   93: aload_3
    //   94: invokeinterface 750 1 0
    //   99: istore_2
    //   100: iload_2
    //   101: istore_1
    //   102: aload_3
    //   103: ifnull -69 -> 34
    //   106: aload_3
    //   107: invokeinterface 355 1 0
    //   112: iload_2
    //   113: ireturn
    //   114: aload_3
    //   115: ifnull +9 -> 124
    //   118: aload_3
    //   119: invokeinterface 355 1 0
    //   124: iconst_m1
    //   125: ireturn
    //   126: astore_3
    //   127: aconst_null
    //   128: astore_3
    //   129: aload_3
    //   130: ifnull +9 -> 139
    //   133: aload_3
    //   134: invokeinterface 355 1 0
    //   139: iconst_m1
    //   140: ireturn
    //   141: astore 5
    //   143: aload 4
    //   145: astore_3
    //   146: aload 5
    //   148: astore 4
    //   150: aload_3
    //   151: ifnull +9 -> 160
    //   154: aload_3
    //   155: invokeinterface 355 1 0
    //   160: aload 4
    //   162: athrow
    //   163: astore 4
    //   165: goto -15 -> 150
    //   168: astore 4
    //   170: goto -41 -> 129
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	173	0	this	d
    //   33	69	1	i	int
    //   99	14	2	j	int
    //   8	111	3	localObject1	Object
    //   126	1	3	localException1	Exception
    //   128	27	3	localObject2	Object
    //   1	160	4	localObject3	Object
    //   163	1	4	localObject4	Object
    //   168	1	4	localException2	Exception
    //   13	69	5	str	String
    //   141	6	5	localObject5	Object
    // Exception table:
    //   from	to	target	type
    //   3	15	126	java/lang/Exception
    //   36	89	126	java/lang/Exception
    //   3	15	141	finally
    //   36	89	141	finally
    //   93	100	163	finally
    //   93	100	168	java/lang/Exception
  }
  
  public boolean c(String paramString)
  {
    return false;
  }
  
  public InputStream d(String paramString)
  {
    return null;
  }
}

/* Location:
 * Qualified Name:     com.estrongs.fs.impl.media.d
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */