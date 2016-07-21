package com.estrongs.old.fs.impl.sftp;

import com.estrongs.android.util.TypedMap;
import com.estrongs.android.util.ap;
import com.estrongs.android.util.bk;
import com.estrongs.fs.FileSystemException;
import com.estrongs.fs.h;
import com.estrongs.fs.i;
import com.jcraft.jsch.ChannelSftp;
import com.jcraft.jsch.ChannelSftp.LsEntry;
import com.jcraft.jsch.JSch;
import com.jcraft.jsch.Session;
import com.jcraft.jsch.SftpATTRS;
import com.jcraft.jsch.SftpException;
import java.io.File;
import java.io.InputStream;
import java.io.OutputStream;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.List;
import java.util.Map.Entry;
import java.util.Set;
import java.util.Vector;

public class OldSFtpFileSystem
  implements com.estrongs.old.fs.a
{
  private static JSch b = new JSch();
  private static boolean c = false;
  private static HashMap<String, ArrayList<d>> d = new HashMap();
  private static OldSFtpFileSystem e = null;
  private HashMap<String, TypedMap> a = new HashMap();
  private HashMap<String, String> f = new HashMap();
  private TypedMap g = new TypedMap();
  
  /* Error */
  private d a(String paramString1, String paramString2, String paramString3, String paramString4)
  {
    // Byte code:
    //   0: aconst_null
    //   1: astore 11
    //   3: getstatic 37	com/estrongs/old/fs/impl/sftp/OldSFtpFileSystem:d	Ljava/util/HashMap;
    //   6: astore 6
    //   8: aload 6
    //   10: monitorenter
    //   11: getstatic 37	com/estrongs/old/fs/impl/sftp/OldSFtpFileSystem:d	Ljava/util/HashMap;
    //   14: new 55	java/lang/StringBuilder
    //   17: dup
    //   18: aload_1
    //   19: invokestatic 61	java/lang/String:valueOf	(Ljava/lang/Object;)Ljava/lang/String;
    //   22: invokespecial 64	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   25: ldc 66
    //   27: invokevirtual 70	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   30: aload_3
    //   31: invokevirtual 70	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   34: ldc 66
    //   36: invokevirtual 70	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   39: aload 4
    //   41: invokevirtual 70	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   44: invokevirtual 74	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   47: invokevirtual 78	java/util/HashMap:get	(Ljava/lang/Object;)Ljava/lang/Object;
    //   50: checkcast 80	java/util/ArrayList
    //   53: astore 5
    //   55: aload 5
    //   57: ifnonnull +631 -> 688
    //   60: new 80	java/util/ArrayList
    //   63: dup
    //   64: invokespecial 81	java/util/ArrayList:<init>	()V
    //   67: astore 5
    //   69: getstatic 37	com/estrongs/old/fs/impl/sftp/OldSFtpFileSystem:d	Ljava/util/HashMap;
    //   72: new 55	java/lang/StringBuilder
    //   75: dup
    //   76: aload_1
    //   77: invokestatic 61	java/lang/String:valueOf	(Ljava/lang/Object;)Ljava/lang/String;
    //   80: invokespecial 64	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   83: ldc 66
    //   85: invokevirtual 70	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   88: aload_3
    //   89: invokevirtual 70	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   92: ldc 66
    //   94: invokevirtual 70	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   97: aload 4
    //   99: invokevirtual 70	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   102: invokevirtual 74	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   105: aload 5
    //   107: invokevirtual 85	java/util/HashMap:put	(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    //   110: pop
    //   111: aload 6
    //   113: monitorexit
    //   114: ldc 87
    //   116: astore 7
    //   118: new 55	java/lang/StringBuilder
    //   121: dup
    //   122: ldc 89
    //   124: invokespecial 64	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   127: aload_1
    //   128: invokevirtual 70	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   131: ldc 91
    //   133: invokevirtual 70	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   136: aload_2
    //   137: invokevirtual 70	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   140: ldc 66
    //   142: invokevirtual 70	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   145: aload_3
    //   146: invokevirtual 70	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   149: astore 8
    //   151: aload 4
    //   153: ldc 93
    //   155: invokevirtual 97	java/lang/String:equals	(Ljava/lang/Object;)Z
    //   158: ifeq +262 -> 420
    //   161: ldc 99
    //   163: astore 6
    //   165: aload 8
    //   167: aload 6
    //   169: invokevirtual 70	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   172: ldc 101
    //   174: invokevirtual 70	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   177: invokevirtual 74	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   180: astore 6
    //   182: aload_0
    //   183: getfield 43	com/estrongs/old/fs/impl/sftp/OldSFtpFileSystem:a	Ljava/util/HashMap;
    //   186: aload 6
    //   188: invokevirtual 78	java/util/HashMap:get	(Ljava/lang/Object;)Ljava/lang/Object;
    //   191: checkcast 47	com/estrongs/android/util/TypedMap
    //   194: astore 12
    //   196: aload 7
    //   198: astore 6
    //   200: aload 12
    //   202: ifnull +14 -> 216
    //   205: aload 12
    //   207: ldc 103
    //   209: ldc 87
    //   211: invokevirtual 107	com/estrongs/android/util/TypedMap:getString	(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    //   214: astore 6
    //   216: aload 5
    //   218: invokevirtual 111	java/util/ArrayList:size	()I
    //   221: ifgt +221 -> 442
    //   224: new 113	com/estrongs/old/fs/impl/sftp/d
    //   227: dup
    //   228: aconst_null
    //   229: invokespecial 116	com/estrongs/old/fs/impl/sftp/d:<init>	(Lcom/estrongs/old/fs/impl/sftp/d;)V
    //   232: astore 5
    //   234: aload 5
    //   236: getstatic 30	com/estrongs/old/fs/impl/sftp/OldSFtpFileSystem:b	Lcom/jcraft/jsch/JSch;
    //   239: aload_1
    //   240: aload_3
    //   241: aload 4
    //   243: invokestatic 122	java/lang/Integer:parseInt	(Ljava/lang/String;)I
    //   246: invokevirtual 125	com/jcraft/jsch/JSch:a	(Ljava/lang/String;Ljava/lang/String;I)Lcom/jcraft/jsch/Session;
    //   249: putfield 128	com/estrongs/old/fs/impl/sftp/d:a	Lcom/jcraft/jsch/Session;
    //   252: new 130	com/estrongs/old/fs/impl/sftp/a
    //   255: dup
    //   256: aload_2
    //   257: invokespecial 131	com/estrongs/old/fs/impl/sftp/a:<init>	(Ljava/lang/String;)V
    //   260: astore_1
    //   261: aload 5
    //   263: getfield 128	com/estrongs/old/fs/impl/sftp/d:a	Lcom/jcraft/jsch/Session;
    //   266: aload_1
    //   267: invokevirtual 136	com/jcraft/jsch/Session:a	(Lcom/jcraft/jsch/UserInfo;)V
    //   270: aload 5
    //   272: getfield 128	com/estrongs/old/fs/impl/sftp/d:a	Lcom/jcraft/jsch/Session;
    //   275: sipush 30000
    //   278: invokevirtual 139	com/jcraft/jsch/Session:a	(I)V
    //   281: aload 5
    //   283: aload 5
    //   285: getfield 128	com/estrongs/old/fs/impl/sftp/d:a	Lcom/jcraft/jsch/Session;
    //   288: ldc -115
    //   290: invokevirtual 144	com/jcraft/jsch/Session:a	(Ljava/lang/String;)Lcom/jcraft/jsch/Channel;
    //   293: checkcast 146	com/jcraft/jsch/ChannelSftp
    //   296: putfield 149	com/estrongs/old/fs/impl/sftp/d:b	Lcom/jcraft/jsch/ChannelSftp;
    //   299: aload 5
    //   301: getfield 149	com/estrongs/old/fs/impl/sftp/d:b	Lcom/jcraft/jsch/ChannelSftp;
    //   304: sipush 30000
    //   307: invokevirtual 151	com/jcraft/jsch/ChannelSftp:b	(I)V
    //   310: getstatic 156	com/estrongs/android/util/e:a	[Ljava/lang/String;
    //   313: iconst_0
    //   314: aaload
    //   315: aload 6
    //   317: invokevirtual 97	java/lang/String:equals	(Ljava/lang/Object;)Z
    //   320: ifeq +362 -> 682
    //   323: aload 12
    //   325: ldc -98
    //   327: invokevirtual 161	com/estrongs/android/util/TypedMap:getString	(Ljava/lang/String;)Ljava/lang/String;
    //   330: ifnull +352 -> 682
    //   333: aload 12
    //   335: ldc -98
    //   337: invokevirtual 161	com/estrongs/android/util/TypedMap:getString	(Ljava/lang/String;)Ljava/lang/String;
    //   340: astore_1
    //   341: aload 5
    //   343: getfield 149	com/estrongs/old/fs/impl/sftp/d:b	Lcom/jcraft/jsch/ChannelSftp;
    //   346: aload_1
    //   347: invokevirtual 164	com/jcraft/jsch/ChannelSftp:j	(Ljava/lang/String;)V
    //   350: aload 5
    //   352: astore_1
    //   353: aload_1
    //   354: areturn
    //   355: astore_1
    //   356: aload 6
    //   358: monitorexit
    //   359: aload_1
    //   360: athrow
    //   361: astore_1
    //   362: aload 11
    //   364: astore_2
    //   365: aload_2
    //   366: ifnull +17 -> 383
    //   369: aload_2
    //   370: getfield 128	com/estrongs/old/fs/impl/sftp/d:a	Lcom/jcraft/jsch/Session;
    //   373: ifnull +10 -> 383
    //   376: aload_2
    //   377: getfield 128	com/estrongs/old/fs/impl/sftp/d:a	Lcom/jcraft/jsch/Session;
    //   380: invokevirtual 166	com/jcraft/jsch/Session:b	()V
    //   383: aload_1
    //   384: instanceof 168
    //   387: ifeq +267 -> 654
    //   390: aload_1
    //   391: invokevirtual 171	java/lang/Exception:getMessage	()Ljava/lang/String;
    //   394: ifnull +260 -> 654
    //   397: aload_1
    //   398: invokevirtual 171	java/lang/Exception:getMessage	()Ljava/lang/String;
    //   401: ldc -83
    //   403: invokevirtual 97	java/lang/String:equals	(Ljava/lang/Object;)Z
    //   406: ifeq +248 -> 654
    //   409: new 175	com/estrongs/android/exception/GeneralException
    //   412: dup
    //   413: getstatic 181	com/estrongs/android/exception/GeneralException$ERROR_CODE:ERROR_AUTHORIZATION	Lcom/estrongs/android/exception/GeneralException$ERROR_CODE;
    //   416: invokespecial 184	com/estrongs/android/exception/GeneralException:<init>	(Lcom/estrongs/android/exception/GeneralException$ERROR_CODE;)V
    //   419: athrow
    //   420: new 55	java/lang/StringBuilder
    //   423: dup
    //   424: ldc 91
    //   426: invokespecial 64	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   429: aload 4
    //   431: invokevirtual 70	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   434: invokevirtual 74	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   437: astore 6
    //   439: goto -274 -> 165
    //   442: aload 5
    //   444: monitorenter
    //   445: aload 5
    //   447: iconst_0
    //   448: invokevirtual 188	java/util/ArrayList:remove	(I)Ljava/lang/Object;
    //   451: checkcast 113	com/estrongs/old/fs/impl/sftp/d
    //   454: astore 7
    //   456: aload 7
    //   458: astore 9
    //   460: aload 5
    //   462: astore 10
    //   464: aload 5
    //   466: monitorexit
    //   467: aload 7
    //   469: astore 8
    //   471: aload 7
    //   473: getfield 149	com/estrongs/old/fs/impl/sftp/d:b	Lcom/jcraft/jsch/ChannelSftp;
    //   476: invokevirtual 192	com/jcraft/jsch/ChannelSftp:i	()Z
    //   479: ifeq +128 -> 607
    //   482: aload 7
    //   484: astore 8
    //   486: aload 7
    //   488: getfield 149	com/estrongs/old/fs/impl/sftp/d:b	Lcom/jcraft/jsch/ChannelSftp;
    //   491: aload 6
    //   493: invokevirtual 164	com/jcraft/jsch/ChannelSftp:j	(Ljava/lang/String;)V
    //   496: aload 7
    //   498: astore_1
    //   499: aload 7
    //   501: astore 8
    //   503: getstatic 156	com/estrongs/android/util/e:a	[Ljava/lang/String;
    //   506: iconst_0
    //   507: aaload
    //   508: aload 6
    //   510: invokevirtual 97	java/lang/String:equals	(Ljava/lang/Object;)Z
    //   513: ifeq -160 -> 353
    //   516: aload 7
    //   518: astore_1
    //   519: aload 7
    //   521: astore 8
    //   523: aload 12
    //   525: ldc -98
    //   527: invokevirtual 161	com/estrongs/android/util/TypedMap:getString	(Ljava/lang/String;)Ljava/lang/String;
    //   530: ifnull -177 -> 353
    //   533: aload 7
    //   535: astore_1
    //   536: aload 7
    //   538: astore 8
    //   540: aload 7
    //   542: getfield 149	com/estrongs/old/fs/impl/sftp/d:b	Lcom/jcraft/jsch/ChannelSftp;
    //   545: invokevirtual 195	com/jcraft/jsch/ChannelSftp:q	()Ljava/lang/String;
    //   548: aload 12
    //   550: ldc -98
    //   552: invokevirtual 161	com/estrongs/android/util/TypedMap:getString	(Ljava/lang/String;)Ljava/lang/String;
    //   555: invokevirtual 97	java/lang/String:equals	(Ljava/lang/Object;)Z
    //   558: ifne -205 -> 353
    //   561: aload 7
    //   563: astore 8
    //   565: aload 7
    //   567: getfield 149	com/estrongs/old/fs/impl/sftp/d:b	Lcom/jcraft/jsch/ChannelSftp;
    //   570: aload 12
    //   572: ldc -98
    //   574: invokevirtual 161	com/estrongs/android/util/TypedMap:getString	(Ljava/lang/String;)Ljava/lang/String;
    //   577: invokevirtual 164	com/jcraft/jsch/ChannelSftp:j	(Ljava/lang/String;)V
    //   580: aload 7
    //   582: areturn
    //   583: astore_1
    //   584: aload 8
    //   586: astore_2
    //   587: goto -222 -> 365
    //   590: astore_1
    //   591: aconst_null
    //   592: astore 8
    //   594: aload 8
    //   596: astore 9
    //   598: aload 5
    //   600: astore 10
    //   602: aload 5
    //   604: monitorexit
    //   605: aload_1
    //   606: athrow
    //   607: aload 7
    //   609: astore 8
    //   611: aload 7
    //   613: getfield 149	com/estrongs/old/fs/impl/sftp/d:b	Lcom/jcraft/jsch/ChannelSftp;
    //   616: invokevirtual 198	com/jcraft/jsch/ChannelSftp:h	()V
    //   619: aload 7
    //   621: astore 8
    //   623: aload 7
    //   625: getfield 128	com/estrongs/old/fs/impl/sftp/d:a	Lcom/jcraft/jsch/Session;
    //   628: invokevirtual 166	com/jcraft/jsch/Session:b	()V
    //   631: aload 7
    //   633: astore 8
    //   635: aload 7
    //   637: aconst_null
    //   638: putfield 149	com/estrongs/old/fs/impl/sftp/d:b	Lcom/jcraft/jsch/ChannelSftp;
    //   641: aload 7
    //   643: astore 8
    //   645: aload 7
    //   647: aconst_null
    //   648: putfield 128	com/estrongs/old/fs/impl/sftp/d:a	Lcom/jcraft/jsch/Session;
    //   651: goto -435 -> 216
    //   654: new 200	com/estrongs/fs/FileSystemException
    //   657: dup
    //   658: aload_1
    //   659: invokespecial 203	com/estrongs/fs/FileSystemException:<init>	(Ljava/lang/Throwable;)V
    //   662: athrow
    //   663: astore_1
    //   664: aload 5
    //   666: astore_2
    //   667: goto -302 -> 365
    //   670: astore_1
    //   671: aload 9
    //   673: astore 8
    //   675: aload 10
    //   677: astore 5
    //   679: goto -85 -> 594
    //   682: aload 6
    //   684: astore_1
    //   685: goto -344 -> 341
    //   688: goto -577 -> 111
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	691	0	this	OldSFtpFileSystem
    //   0	691	1	paramString1	String
    //   0	691	2	paramString2	String
    //   0	691	3	paramString3	String
    //   0	691	4	paramString4	String
    //   53	625	5	localObject1	Object
    //   6	677	6	localObject2	Object
    //   116	530	7	localObject3	Object
    //   149	525	8	localObject4	Object
    //   458	214	9	localObject5	Object
    //   462	214	10	localObject6	Object
    //   1	362	11	localObject7	Object
    //   194	377	12	localTypedMap	TypedMap
    // Exception table:
    //   from	to	target	type
    //   11	55	355	finally
    //   60	111	355	finally
    //   111	114	355	finally
    //   356	359	355	finally
    //   3	11	361	java/lang/Exception
    //   118	161	361	java/lang/Exception
    //   165	196	361	java/lang/Exception
    //   205	216	361	java/lang/Exception
    //   216	234	361	java/lang/Exception
    //   359	361	361	java/lang/Exception
    //   420	439	361	java/lang/Exception
    //   442	445	361	java/lang/Exception
    //   471	482	583	java/lang/Exception
    //   486	496	583	java/lang/Exception
    //   503	516	583	java/lang/Exception
    //   523	533	583	java/lang/Exception
    //   540	561	583	java/lang/Exception
    //   565	580	583	java/lang/Exception
    //   605	607	583	java/lang/Exception
    //   611	619	583	java/lang/Exception
    //   623	631	583	java/lang/Exception
    //   635	641	583	java/lang/Exception
    //   645	651	583	java/lang/Exception
    //   445	456	590	finally
    //   234	341	663	java/lang/Exception
    //   341	350	663	java/lang/Exception
    //   464	467	670	finally
    //   602	605	670	finally
  }
  
  private void a(d paramd)
  {
    if (paramd == null) {
      return;
    }
    b.h();
    a.b();
  }
  
  private boolean a(d paramd, String paramString)
  {
    com.estrongs.a.a locala = com.estrongs.a.a.getCurrentTask();
    boolean bool;
    do
    {
      try
      {
        b.b(paramString);
        Vector localVector = b.d(".");
        Iterator localIterator;
        if (localVector != null) {
          localIterator = localVector.iterator();
        }
        Object localObject2;
        do
        {
          if (!localIterator.hasNext())
          {
            if (localVector == null) {
              break;
            }
            b.g(paramString);
            locala.sendMessage(1, new Object[] { Long.valueOf(1L), "sftp://" + paramString });
            break;
          }
          localObject1 = localIterator.next();
          if ((locala != null) && (locala.taskStopped())) {
            return false;
          }
          localObject2 = (ChannelSftp.LsEntry)localObject1;
          localObject1 = ((ChannelSftp.LsEntry)localObject2).a();
          localObject2 = ((ChannelSftp.LsEntry)localObject2).b();
        } while (((localObject1 != null) && (((String)localObject1).equals("."))) || (((String)localObject1).equals("..")));
        Object localObject1 = paramString + (String)localObject1;
        if (((SftpATTRS)localObject2).d())
        {
          bool = a(paramd, localObject1 + "/");
        }
        else
        {
          b.f((String)localObject1);
          if (locala != null)
          {
            locala.sendMessage(2, new Object[] { Long.valueOf(((SftpATTRS)localObject2).g()), "sftp://" + (String)localObject1 });
            locala.sendMessage(1, new Object[] { Long.valueOf(1L), "sftp://" + (String)localObject1 });
          }
          bool = true;
        }
      }
      catch (SftpException paramd)
      {
        throw new FileSystemException(paramd);
      }
      return true;
    } while (bool);
    return false;
  }
  
  public static void b()
  {
    c = false;
  }
  
  private static void b(String paramString1, String paramString2, String paramString3, d paramd)
  {
    for (;;)
    {
      synchronized (d)
      {
        if (c) {
          return;
        }
        localArrayList = (ArrayList)d.get(paramString1 + "@" + paramString2 + "@" + paramString3);
        if (localArrayList == null) {}
      }
      ArrayList localArrayList = new ArrayList();
      localArrayList.add(paramd);
      d.put(paramString1 + "@" + paramString2 + "@" + paramString3, localArrayList);
    }
  }
  
  public static OldSFtpFileSystem c()
  {
    if (e == null) {
      e = new OldSFtpFileSystem();
    }
    return e;
  }
  
  private static void n(String paramString) {}
  
  public InputStream a(String paramString, long paramLong)
  {
    try
    {
      String str1 = ap.A(paramString);
      String str3 = ap.C(paramString);
      String str2 = ap.a(paramString);
      Object localObject2 = ap.y(paramString);
      Object localObject1 = localObject2;
      if (localObject2 == null) {
        localObject1 = "22";
      }
      localObject2 = a(str1, str3, str2, (String)localObject1);
      if (localObject2 == null) {
        return null;
      }
      paramString = ap.j(paramString);
      paramString = new b(b.a(paramString, null, paramLong), (d)localObject2, str1, str2, (String)localObject1);
      return paramString;
    }
    catch (Exception paramString)
    {
      throw new FileSystemException(paramString);
    }
  }
  
  public List<h> a(String paramString, i parami)
  {
    d locald = null;
    LinkedList localLinkedList = new LinkedList();
    com.estrongs.a.a locala = com.estrongs.a.a.getCurrentTask();
    if ((locala != null) && (locala.taskStopped())) {
      return localLinkedList;
    }
    Object localObject1 = locald;
    Object localObject2;
    Object localObject3;
    Object localObject4;
    String str3;
    Object localObject5;
    label799:
    label802:
    for (;;)
    {
      try
      {
        str4 = ap.A(paramString);
        localObject1 = locald;
        localObject2 = ap.C(paramString);
        localObject1 = locald;
        str5 = ap.a(paramString);
        localObject1 = locald;
        str2 = ap.y(paramString);
        if (str2 != null) {
          break label802;
        }
        str2 = "22";
        localObject1 = locald;
        locald = a(str4, (String)localObject2, str5, str2);
        if (locald == null)
        {
          if (locald != null) {}
          return null;
        }
        localObject1 = locald;
      }
      catch (SftpException parami)
      {
        String str4;
        String str5;
        String str2;
        String str6;
        Iterator localIterator;
        boolean bool;
        paramString = null;
      }
      finally
      {
        try
        {
          a(paramString);
          str1 = null;
          throw new FileSystemException(parami);
        }
        finally
        {
          String str1 = paramString;
          paramString = parami;
        }
        paramString = finally;
        if (str1 == null) {}
      }
      try
      {
        str6 = ap.j(paramString);
        localObject1 = locald;
        b.b(str6);
        localObject1 = locald;
        localObject3 = b.d(".");
        localObject2 = "UTF-8";
        localObject1 = locald;
        localObject4 = (TypedMap)a.get(ap.i(paramString));
        if (localObject4 != null)
        {
          localObject1 = locald;
          localObject2 = ((TypedMap)localObject4).getString("encode", "UTF-8");
        }
        localObject1 = locald;
        if (com.estrongs.android.util.e.a[0].equals(localObject2))
        {
          localObject1 = locald;
          if (!"UTF-8".equals(b.q()))
          {
            localObject1 = locald;
            ((TypedMap)localObject4).put("detectedEncoding", b.q());
          }
        }
        if (localObject3 != null)
        {
          localObject1 = locald;
          localIterator = ((Vector)localObject3).iterator();
          localObject1 = locald;
          bool = localIterator.hasNext();
          if (bool) {}
        }
        else
        {
          if (locald != null) {
            b(str4, str5, str2, locald);
          }
          return localLinkedList;
        }
        localObject1 = locald;
        localObject2 = localIterator.next();
        if (locala != null)
        {
          localObject1 = locald;
          if (locala.taskStopped())
          {
            if (locald == null) {
              break;
            }
            break;
          }
        }
        if (localObject2 == null) {
          continue;
        }
        localObject1 = locald;
        localObject2 = (ChannelSftp.LsEntry)localObject2;
        localObject1 = locald;
        if (paramString.endsWith("/")) {
          break label799;
        }
        localObject1 = locald;
        paramString = paramString + "/";
      }
      catch (SftpException parami)
      {
        paramString = locald;
        continue;
        localObject4 = str3;
        continue;
        localObject2 = localObject3;
        localObject3 = localObject5;
        continue;
        continue;
      }
      localObject1 = locald;
      str3 = ((ChannelSftp.LsEntry)localObject2).a();
      localObject1 = locald;
      if (!str3.equals("."))
      {
        localObject1 = locald;
        if (str3.equals("..")) {
          continue;
        }
        localObject1 = locald;
        localObject3 = ((ChannelSftp.LsEntry)localObject2).b();
        localObject5 = null;
        localObject1 = locald;
        bool = ((SftpATTRS)localObject3).e();
        if (bool)
        {
          localObject2 = localObject3;
          localObject1 = locald;
        }
      }
      else
      {
        try
        {
          if (!str6.endsWith("/")) {
            continue;
          }
          localObject2 = localObject3;
          localObject1 = locald;
          localObject4 = str6 + str3;
          localObject2 = localObject3;
          localObject1 = locald;
          localObject3 = b.i((String)localObject4);
          localObject2 = localObject3;
          localObject1 = locald;
          localObject4 = b.e((String)localObject4);
          localObject1 = localObject4;
          localObject2 = localObject3;
          localObject3 = localObject1;
        }
        catch (Exception localException)
        {
          localObject3 = localObject5;
          continue;
        }
        localObject1 = locald;
        if (((SftpATTRS)localObject2).d())
        {
          localObject1 = locald;
          if (!str3.endsWith("/"))
          {
            localObject1 = locald;
            localObject4 = str3 + "/";
            localObject1 = locald;
            localObject2 = new e((SftpATTRS)localObject2, paramString + (String)localObject4, (String)localObject3);
            if (parami != null)
            {
              localObject1 = locald;
              if (parami.a((h)localObject2))
              {
                localObject1 = locald;
                localLinkedList.add(localObject2);
              }
            }
            continue;
            localObject2 = localObject3;
            localObject1 = locald;
            localObject4 = str6 + "/" + str3;
            continue;
          }
        }
      }
    }
    return localLinkedList;
  }
  
  public void a()
  {
    ArrayList localArrayList;
    do
    {
      synchronized (d)
      {
        c = true;
        if (d.size() == 0) {
          return;
        }
        Iterator localIterator = d.entrySet().iterator();
        if (!localIterator.hasNext())
        {
          d.clear();
          return;
        }
      }
      localArrayList = (ArrayList)((Map.Entry)((Iterator)localObject).next()).getValue();
    } while (localArrayList == null);
    int i = 0;
    while (i < localArrayList.size())
    {
      d locald = (d)localArrayList.get(i);
      if ((locald != null) && (b != null) && (a != null))
      {
        b.h();
        a.b();
      }
      i += 1;
    }
  }
  
  public void a(TypedMap paramTypedMap)
  {
    Object localObject = (TypedMap)a.get(ap.i(paramTypedMap.getString("server")));
    if ((localObject != null) && (((TypedMap)localObject).getString("detectedEncoding") != null)) {
      paramTypedMap.put("detectedEncoding", ((TypedMap)localObject).getString("detectedEncoding"));
    }
    localObject = paramTypedMap.getString("server");
    a.put(ap.i((String)localObject), paramTypedMap);
    String str1 = paramTypedMap.getString("privatekey");
    paramTypedMap = paramTypedMap.getString("privatekey_passphrases");
    if (str1 != null) {}
    try
    {
      if (str1.length() == 0)
      {
        g.remove(localObject);
        paramTypedMap = (String)f.remove(localObject);
        if ((paramTypedMap == null) || (paramTypedMap.length() <= 0)) {
          return;
        }
        b.b(paramTypedMap);
        return;
      }
      if (!new File(str1).exists()) {
        break label260;
      }
      String str2 = (String)f.get(localObject);
      String str3 = g.getString((String)localObject, "");
      if ((str2 != null) && (str1.equalsIgnoreCase(str2)) && (str3.equalsIgnoreCase(paramTypedMap))) {
        return;
      }
      if (str2 != null) {
        b.b(str2);
      }
      f.put(localObject, str1);
      if (bk.a(paramTypedMap))
      {
        b.a(str1);
        return;
      }
    }
    catch (Exception paramTypedMap)
    {
      paramTypedMap.printStackTrace();
      return;
    }
    g.put((String)localObject, paramTypedMap);
    b.a(str1, paramTypedMap);
    return;
    label260:
    f.remove(localObject);
    g.remove(localObject);
    b.b(str1);
  }
  
  /* Error */
  public void a(String paramString, h paramh)
  {
    // Byte code:
    //   0: aconst_null
    //   1: astore 6
    //   3: aload_1
    //   4: invokestatic 283	com/estrongs/android/util/ap:A	(Ljava/lang/String;)Ljava/lang/String;
    //   7: astore 7
    //   9: aload_1
    //   10: invokestatic 286	com/estrongs/android/util/ap:C	(Ljava/lang/String;)Ljava/lang/String;
    //   13: astore 4
    //   15: aload_1
    //   16: invokestatic 288	com/estrongs/android/util/ap:a	(Ljava/lang/String;)Ljava/lang/String;
    //   19: astore 8
    //   21: aload_1
    //   22: invokestatic 291	com/estrongs/android/util/ap:y	(Ljava/lang/String;)Ljava/lang/String;
    //   25: astore_3
    //   26: aload_3
    //   27: astore 5
    //   29: aload_3
    //   30: ifnonnull +7 -> 37
    //   33: ldc 93
    //   35: astore 5
    //   37: aload_0
    //   38: aload 7
    //   40: aload 4
    //   42: aload 8
    //   44: aload 5
    //   46: invokespecial 293	com/estrongs/old/fs/impl/sftp/OldSFtpFileSystem:a	(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/estrongs/old/fs/impl/sftp/d;
    //   49: astore 4
    //   51: aload 4
    //   53: ifnonnull +9 -> 62
    //   56: aload 4
    //   58: ifnull +3 -> 61
    //   61: return
    //   62: aload 4
    //   64: astore_3
    //   65: aload_1
    //   66: invokestatic 295	com/estrongs/android/util/ap:j	(Ljava/lang/String;)Ljava/lang/String;
    //   69: astore_1
    //   70: aload 4
    //   72: astore_3
    //   73: aload 4
    //   75: getfield 149	com/estrongs/old/fs/impl/sftp/d:b	Lcom/jcraft/jsch/ChannelSftp;
    //   78: aload_1
    //   79: aload_2
    //   80: invokeinterface 400 1 0
    //   85: ldc2_w 401
    //   88: ldiv
    //   89: l2i
    //   90: invokevirtual 405	com/jcraft/jsch/ChannelSftp:a	(Ljava/lang/String;I)V
    //   93: aload 4
    //   95: ifnull -34 -> 61
    //   98: aload 7
    //   100: aload 8
    //   102: aload 5
    //   104: aload 4
    //   106: invokestatic 206	com/estrongs/old/fs/impl/sftp/OldSFtpFileSystem:b	(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/estrongs/old/fs/impl/sftp/d;)V
    //   109: return
    //   110: astore_1
    //   111: aconst_null
    //   112: astore 4
    //   114: aload 4
    //   116: astore_3
    //   117: aload_0
    //   118: aload 4
    //   120: invokespecial 338	com/estrongs/old/fs/impl/sftp/OldSFtpFileSystem:a	(Lcom/estrongs/old/fs/impl/sftp/d;)V
    //   123: new 200	com/estrongs/fs/FileSystemException
    //   126: dup
    //   127: aload_1
    //   128: invokespecial 203	com/estrongs/fs/FileSystemException:<init>	(Ljava/lang/Throwable;)V
    //   131: athrow
    //   132: astore_1
    //   133: aload 6
    //   135: astore_2
    //   136: aload_2
    //   137: ifnull +3 -> 140
    //   140: aload_1
    //   141: athrow
    //   142: astore_1
    //   143: aload_3
    //   144: astore_2
    //   145: goto -9 -> 136
    //   148: astore_1
    //   149: goto -35 -> 114
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	152	0	this	OldSFtpFileSystem
    //   0	152	1	paramString	String
    //   0	152	2	paramh	h
    //   25	119	3	localObject1	Object
    //   13	106	4	localObject2	Object
    //   27	76	5	localObject3	Object
    //   1	133	6	localObject4	Object
    //   7	92	7	str1	String
    //   19	82	8	str2	String
    // Exception table:
    //   from	to	target	type
    //   3	26	110	java/lang/Exception
    //   37	51	110	java/lang/Exception
    //   3	26	132	finally
    //   37	51	132	finally
    //   123	132	132	finally
    //   65	70	142	finally
    //   73	93	142	finally
    //   117	123	142	finally
    //   65	70	148	java/lang/Exception
    //   73	93	148	java/lang/Exception
  }
  
  /* Error */
  public boolean a(String paramString)
  {
    // Byte code:
    //   0: aload_1
    //   1: invokestatic 283	com/estrongs/android/util/ap:A	(Ljava/lang/String;)Ljava/lang/String;
    //   4: astore 6
    //   6: aload_1
    //   7: invokestatic 286	com/estrongs/android/util/ap:C	(Ljava/lang/String;)Ljava/lang/String;
    //   10: astore_2
    //   11: aload_1
    //   12: invokestatic 288	com/estrongs/android/util/ap:a	(Ljava/lang/String;)Ljava/lang/String;
    //   15: astore 7
    //   17: aload_1
    //   18: invokestatic 291	com/estrongs/android/util/ap:y	(Ljava/lang/String;)Ljava/lang/String;
    //   21: astore 4
    //   23: aload 4
    //   25: ifnonnull +158 -> 183
    //   28: ldc 93
    //   30: astore 4
    //   32: aload_0
    //   33: aload 6
    //   35: aload_2
    //   36: aload 7
    //   38: aload 4
    //   40: invokespecial 293	com/estrongs/old/fs/impl/sftp/OldSFtpFileSystem:a	(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/estrongs/old/fs/impl/sftp/d;
    //   43: astore_3
    //   44: aload_3
    //   45: ifnonnull +9 -> 54
    //   48: aload_3
    //   49: ifnull +3 -> 52
    //   52: iconst_0
    //   53: ireturn
    //   54: aload_3
    //   55: astore_2
    //   56: aload_1
    //   57: invokestatic 295	com/estrongs/android/util/ap:j	(Ljava/lang/String;)Ljava/lang/String;
    //   60: astore 5
    //   62: aload_3
    //   63: astore_2
    //   64: aload_1
    //   65: ldc 101
    //   67: invokevirtual 316	java/lang/String:endsWith	(Ljava/lang/String;)Z
    //   70: ifeq +60 -> 130
    //   73: aload 5
    //   75: astore_1
    //   76: aload_3
    //   77: astore_2
    //   78: aload 5
    //   80: ldc 101
    //   82: invokevirtual 316	java/lang/String:endsWith	(Ljava/lang/String;)Z
    //   85: ifeq +19 -> 104
    //   88: aload_3
    //   89: astore_2
    //   90: aload 5
    //   92: iconst_0
    //   93: aload 5
    //   95: invokevirtual 368	java/lang/String:length	()I
    //   98: iconst_1
    //   99: isub
    //   100: invokevirtual 409	java/lang/String:substring	(II)Ljava/lang/String;
    //   103: astore_1
    //   104: aload_3
    //   105: astore_2
    //   106: aload_3
    //   107: getfield 149	com/estrongs/old/fs/impl/sftp/d:b	Lcom/jcraft/jsch/ChannelSftp;
    //   110: aload_1
    //   111: invokevirtual 411	com/jcraft/jsch/ChannelSftp:h	(Ljava/lang/String;)V
    //   114: aload_3
    //   115: ifnull +13 -> 128
    //   118: aload 6
    //   120: aload 7
    //   122: aload 4
    //   124: aload_3
    //   125: invokestatic 206	com/estrongs/old/fs/impl/sftp/OldSFtpFileSystem:b	(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/estrongs/old/fs/impl/sftp/d;)V
    //   128: iconst_1
    //   129: ireturn
    //   130: aload_3
    //   131: astore_2
    //   132: aload_3
    //   133: getfield 149	com/estrongs/old/fs/impl/sftp/d:b	Lcom/jcraft/jsch/ChannelSftp;
    //   136: aload 5
    //   138: invokevirtual 414	com/jcraft/jsch/ChannelSftp:c	(Ljava/lang/String;)Ljava/io/OutputStream;
    //   141: invokevirtual 419	java/io/OutputStream:close	()V
    //   144: goto -30 -> 114
    //   147: astore_1
    //   148: aload_3
    //   149: astore_2
    //   150: aload_0
    //   151: aload_3
    //   152: invokespecial 338	com/estrongs/old/fs/impl/sftp/OldSFtpFileSystem:a	(Lcom/estrongs/old/fs/impl/sftp/d;)V
    //   155: new 200	com/estrongs/fs/FileSystemException
    //   158: dup
    //   159: aload_1
    //   160: invokespecial 203	com/estrongs/fs/FileSystemException:<init>	(Ljava/lang/Throwable;)V
    //   163: athrow
    //   164: astore_1
    //   165: aconst_null
    //   166: astore_2
    //   167: aload_2
    //   168: ifnull +3 -> 171
    //   171: aload_1
    //   172: athrow
    //   173: astore_1
    //   174: goto -7 -> 167
    //   177: astore_1
    //   178: aconst_null
    //   179: astore_3
    //   180: goto -32 -> 148
    //   183: goto -151 -> 32
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	186	0	this	OldSFtpFileSystem
    //   0	186	1	paramString	String
    //   10	158	2	localObject	Object
    //   43	137	3	locald	d
    //   21	102	4	str1	String
    //   60	77	5	str2	String
    //   4	115	6	str3	String
    //   15	106	7	str4	String
    // Exception table:
    //   from	to	target	type
    //   56	62	147	java/lang/Exception
    //   64	73	147	java/lang/Exception
    //   78	88	147	java/lang/Exception
    //   90	104	147	java/lang/Exception
    //   106	114	147	java/lang/Exception
    //   132	144	147	java/lang/Exception
    //   0	23	164	finally
    //   32	44	164	finally
    //   155	164	164	finally
    //   56	62	173	finally
    //   64	73	173	finally
    //   78	88	173	finally
    //   90	104	173	finally
    //   106	114	173	finally
    //   132	144	173	finally
    //   150	155	173	finally
    //   0	23	177	java/lang/Exception
    //   32	44	177	java/lang/Exception
  }
  
  /* Error */
  public boolean a(String paramString1, String paramString2)
  {
    // Byte code:
    //   0: aconst_null
    //   1: astore 6
    //   3: aload_1
    //   4: invokestatic 283	com/estrongs/android/util/ap:A	(Ljava/lang/String;)Ljava/lang/String;
    //   7: astore 7
    //   9: aload_1
    //   10: invokestatic 286	com/estrongs/android/util/ap:C	(Ljava/lang/String;)Ljava/lang/String;
    //   13: astore 4
    //   15: aload_1
    //   16: invokestatic 288	com/estrongs/android/util/ap:a	(Ljava/lang/String;)Ljava/lang/String;
    //   19: astore 8
    //   21: aload_1
    //   22: invokestatic 291	com/estrongs/android/util/ap:y	(Ljava/lang/String;)Ljava/lang/String;
    //   25: astore_3
    //   26: aload_3
    //   27: astore 5
    //   29: aload_3
    //   30: ifnonnull +7 -> 37
    //   33: ldc 93
    //   35: astore 5
    //   37: aload_0
    //   38: aload 7
    //   40: aload 4
    //   42: aload 8
    //   44: aload 5
    //   46: invokespecial 293	com/estrongs/old/fs/impl/sftp/OldSFtpFileSystem:a	(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/estrongs/old/fs/impl/sftp/d;
    //   49: astore 4
    //   51: aload 4
    //   53: ifnonnull +10 -> 63
    //   56: aload 4
    //   58: ifnull +3 -> 61
    //   61: iconst_0
    //   62: ireturn
    //   63: aload 4
    //   65: astore_3
    //   66: aload_1
    //   67: invokestatic 295	com/estrongs/android/util/ap:j	(Ljava/lang/String;)Ljava/lang/String;
    //   70: astore_1
    //   71: aload 4
    //   73: astore_3
    //   74: aload_2
    //   75: invokestatic 295	com/estrongs/android/util/ap:j	(Ljava/lang/String;)Ljava/lang/String;
    //   78: astore_2
    //   79: aload 4
    //   81: astore_3
    //   82: aload 4
    //   84: getfield 149	com/estrongs/old/fs/impl/sftp/d:b	Lcom/jcraft/jsch/ChannelSftp;
    //   87: aload_1
    //   88: aload_2
    //   89: invokevirtual 421	com/jcraft/jsch/ChannelSftp:a	(Ljava/lang/String;Ljava/lang/String;)V
    //   92: aload 4
    //   94: ifnull +14 -> 108
    //   97: aload 7
    //   99: aload 8
    //   101: aload 5
    //   103: aload 4
    //   105: invokestatic 206	com/estrongs/old/fs/impl/sftp/OldSFtpFileSystem:b	(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/estrongs/old/fs/impl/sftp/d;)V
    //   108: iconst_1
    //   109: ireturn
    //   110: astore_1
    //   111: aconst_null
    //   112: astore 4
    //   114: aload 4
    //   116: astore_3
    //   117: aload_0
    //   118: aload 4
    //   120: invokespecial 338	com/estrongs/old/fs/impl/sftp/OldSFtpFileSystem:a	(Lcom/estrongs/old/fs/impl/sftp/d;)V
    //   123: new 200	com/estrongs/fs/FileSystemException
    //   126: dup
    //   127: aload_1
    //   128: invokespecial 203	com/estrongs/fs/FileSystemException:<init>	(Ljava/lang/Throwable;)V
    //   131: athrow
    //   132: astore_1
    //   133: aload 6
    //   135: astore_2
    //   136: aload_2
    //   137: ifnull +3 -> 140
    //   140: aload_1
    //   141: athrow
    //   142: astore_1
    //   143: aload_3
    //   144: astore_2
    //   145: goto -9 -> 136
    //   148: astore_1
    //   149: goto -35 -> 114
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	152	0	this	OldSFtpFileSystem
    //   0	152	1	paramString1	String
    //   0	152	2	paramString2	String
    //   25	119	3	localObject1	Object
    //   13	106	4	localObject2	Object
    //   27	75	5	localObject3	Object
    //   1	133	6	localObject4	Object
    //   7	91	7	str1	String
    //   19	81	8	str2	String
    // Exception table:
    //   from	to	target	type
    //   3	26	110	java/lang/Exception
    //   37	51	110	java/lang/Exception
    //   3	26	132	finally
    //   37	51	132	finally
    //   123	132	132	finally
    //   66	71	142	finally
    //   74	79	142	finally
    //   82	92	142	finally
    //   117	123	142	finally
    //   66	71	148	java/lang/Exception
    //   74	79	148	java/lang/Exception
    //   82	92	148	java/lang/Exception
  }
  
  public boolean b(String paramString)
  {
    return g(paramString) != null;
  }
  
  public boolean b(String paramString1, String paramString2)
  {
    return a(paramString1, paramString2);
  }
  
  /* Error */
  public boolean c(String paramString)
  {
    // Byte code:
    //   0: iconst_0
    //   1: istore_3
    //   2: invokestatic 215	com/estrongs/a/a:getCurrentTask	()Lcom/estrongs/a/a;
    //   5: astore 7
    //   7: aload_1
    //   8: invokestatic 283	com/estrongs/android/util/ap:A	(Ljava/lang/String;)Ljava/lang/String;
    //   11: astore 8
    //   13: aload_1
    //   14: invokestatic 286	com/estrongs/android/util/ap:C	(Ljava/lang/String;)Ljava/lang/String;
    //   17: astore 4
    //   19: aload_1
    //   20: invokestatic 288	com/estrongs/android/util/ap:a	(Ljava/lang/String;)Ljava/lang/String;
    //   23: astore 9
    //   25: aload_1
    //   26: invokestatic 291	com/estrongs/android/util/ap:y	(Ljava/lang/String;)Ljava/lang/String;
    //   29: astore 6
    //   31: aload 6
    //   33: ifnonnull +291 -> 324
    //   36: ldc 93
    //   38: astore 6
    //   40: aload_0
    //   41: aload 8
    //   43: aload 4
    //   45: aload 9
    //   47: aload 6
    //   49: invokespecial 293	com/estrongs/old/fs/impl/sftp/OldSFtpFileSystem:a	(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/estrongs/old/fs/impl/sftp/d;
    //   52: astore 5
    //   54: aload 5
    //   56: ifnonnull +10 -> 66
    //   59: aload 5
    //   61: ifnull +3 -> 64
    //   64: iload_3
    //   65: ireturn
    //   66: aload 7
    //   68: ifnull +22 -> 90
    //   71: aload 5
    //   73: astore 4
    //   75: aload 7
    //   77: invokevirtual 251	com/estrongs/a/a:taskStopped	()Z
    //   80: ifeq +10 -> 90
    //   83: aload 5
    //   85: ifnull -21 -> 64
    //   88: iconst_0
    //   89: ireturn
    //   90: aload 5
    //   92: astore 4
    //   94: aload_1
    //   95: invokestatic 295	com/estrongs/android/util/ap:j	(Ljava/lang/String;)Ljava/lang/String;
    //   98: astore 10
    //   100: aload 5
    //   102: astore 4
    //   104: aload 5
    //   106: getfield 149	com/estrongs/old/fs/impl/sftp/d:b	Lcom/jcraft/jsch/ChannelSftp;
    //   109: aload 10
    //   111: invokevirtual 321	com/jcraft/jsch/ChannelSftp:i	(Ljava/lang/String;)Lcom/jcraft/jsch/SftpATTRS;
    //   114: astore 11
    //   116: aload 5
    //   118: astore 4
    //   120: aload 11
    //   122: invokevirtual 264	com/jcraft/jsch/SftpATTRS:d	()Z
    //   125: ifne +141 -> 266
    //   128: aload 7
    //   130: ifnull +89 -> 219
    //   133: aload 5
    //   135: astore 4
    //   137: aload 7
    //   139: iconst_1
    //   140: iconst_2
    //   141: anewarray 4	java/lang/Object
    //   144: dup
    //   145: iconst_0
    //   146: lconst_1
    //   147: invokestatic 240	java/lang/Long:valueOf	(J)Ljava/lang/Long;
    //   150: aastore
    //   151: dup
    //   152: iconst_1
    //   153: new 55	java/lang/StringBuilder
    //   156: dup
    //   157: ldc 89
    //   159: invokespecial 64	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   162: aload 10
    //   164: invokevirtual 70	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   167: invokevirtual 74	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   170: aastore
    //   171: invokevirtual 244	com/estrongs/a/a:sendMessage	(I[Ljava/lang/Object;)V
    //   174: aload 5
    //   176: astore 4
    //   178: aload 7
    //   180: iconst_2
    //   181: iconst_2
    //   182: anewarray 4	java/lang/Object
    //   185: dup
    //   186: iconst_0
    //   187: aload 11
    //   189: invokevirtual 271	com/jcraft/jsch/SftpATTRS:g	()J
    //   192: invokestatic 240	java/lang/Long:valueOf	(J)Ljava/lang/Long;
    //   195: aastore
    //   196: dup
    //   197: iconst_1
    //   198: new 55	java/lang/StringBuilder
    //   201: dup
    //   202: ldc 89
    //   204: invokespecial 64	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   207: aload 10
    //   209: invokevirtual 70	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   212: invokevirtual 74	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   215: aastore
    //   216: invokevirtual 244	com/estrongs/a/a:sendMessage	(I[Ljava/lang/Object;)V
    //   219: aload 5
    //   221: astore 4
    //   223: aload 5
    //   225: getfield 149	com/estrongs/old/fs/impl/sftp/d:b	Lcom/jcraft/jsch/ChannelSftp;
    //   228: aload 10
    //   230: invokevirtual 268	com/jcraft/jsch/ChannelSftp:f	(Ljava/lang/String;)V
    //   233: iconst_1
    //   234: istore_2
    //   235: aload 5
    //   237: astore 4
    //   239: aload_1
    //   240: invokestatic 429	com/estrongs/android/util/ap:bB	(Ljava/lang/String;)Ljava/lang/String;
    //   243: invokestatic 431	com/estrongs/old/fs/impl/sftp/OldSFtpFileSystem:n	(Ljava/lang/String;)V
    //   246: iload_2
    //   247: istore_3
    //   248: aload 5
    //   250: ifnull -186 -> 64
    //   253: aload 8
    //   255: aload 9
    //   257: aload 6
    //   259: aload 5
    //   261: invokestatic 206	com/estrongs/old/fs/impl/sftp/OldSFtpFileSystem:b	(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/estrongs/old/fs/impl/sftp/d;)V
    //   264: iload_2
    //   265: ireturn
    //   266: aload 5
    //   268: astore 4
    //   270: aload_0
    //   271: aload 5
    //   273: aload 10
    //   275: invokespecial 266	com/estrongs/old/fs/impl/sftp/OldSFtpFileSystem:a	(Lcom/estrongs/old/fs/impl/sftp/d;Ljava/lang/String;)Z
    //   278: istore_2
    //   279: goto -44 -> 235
    //   282: astore_1
    //   283: aconst_null
    //   284: astore 5
    //   286: aload 5
    //   288: astore 4
    //   290: aload_0
    //   291: aload 5
    //   293: invokespecial 338	com/estrongs/old/fs/impl/sftp/OldSFtpFileSystem:a	(Lcom/estrongs/old/fs/impl/sftp/d;)V
    //   296: new 200	com/estrongs/fs/FileSystemException
    //   299: dup
    //   300: aload_1
    //   301: invokespecial 203	com/estrongs/fs/FileSystemException:<init>	(Ljava/lang/Throwable;)V
    //   304: athrow
    //   305: astore_1
    //   306: aconst_null
    //   307: astore 4
    //   309: aload 4
    //   311: ifnull +3 -> 314
    //   314: aload_1
    //   315: athrow
    //   316: astore_1
    //   317: goto -8 -> 309
    //   320: astore_1
    //   321: goto -35 -> 286
    //   324: goto -284 -> 40
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	327	0	this	OldSFtpFileSystem
    //   0	327	1	paramString	String
    //   234	45	2	bool1	boolean
    //   1	247	3	bool2	boolean
    //   17	293	4	localObject	Object
    //   52	240	5	locald	d
    //   29	229	6	str1	String
    //   5	174	7	locala	com.estrongs.a.a
    //   11	243	8	str2	String
    //   23	233	9	str3	String
    //   98	176	10	str4	String
    //   114	74	11	localSftpATTRS	SftpATTRS
    // Exception table:
    //   from	to	target	type
    //   7	31	282	java/lang/Exception
    //   40	54	282	java/lang/Exception
    //   7	31	305	finally
    //   40	54	305	finally
    //   296	305	305	finally
    //   75	83	316	finally
    //   94	100	316	finally
    //   104	116	316	finally
    //   120	128	316	finally
    //   137	174	316	finally
    //   178	219	316	finally
    //   223	233	316	finally
    //   239	246	316	finally
    //   270	279	316	finally
    //   290	296	316	finally
    //   75	83	320	java/lang/Exception
    //   94	100	320	java/lang/Exception
    //   104	116	320	java/lang/Exception
    //   120	128	320	java/lang/Exception
    //   137	174	320	java/lang/Exception
    //   178	219	320	java/lang/Exception
    //   223	233	320	java/lang/Exception
    //   239	246	320	java/lang/Exception
    //   270	279	320	java/lang/Exception
  }
  
  /* Error */
  public boolean d(String paramString)
  {
    // Byte code:
    //   0: aconst_null
    //   1: astore 5
    //   3: aload_1
    //   4: invokestatic 283	com/estrongs/android/util/ap:A	(Ljava/lang/String;)Ljava/lang/String;
    //   7: astore 6
    //   9: aload_1
    //   10: invokestatic 286	com/estrongs/android/util/ap:C	(Ljava/lang/String;)Ljava/lang/String;
    //   13: astore_3
    //   14: aload_1
    //   15: invokestatic 288	com/estrongs/android/util/ap:a	(Ljava/lang/String;)Ljava/lang/String;
    //   18: astore 7
    //   20: aload_1
    //   21: invokestatic 291	com/estrongs/android/util/ap:y	(Ljava/lang/String;)Ljava/lang/String;
    //   24: astore_2
    //   25: aload_2
    //   26: astore 4
    //   28: aload_2
    //   29: ifnonnull +7 -> 36
    //   32: ldc 93
    //   34: astore 4
    //   36: aload_0
    //   37: aload 6
    //   39: aload_3
    //   40: aload 7
    //   42: aload 4
    //   44: invokespecial 293	com/estrongs/old/fs/impl/sftp/OldSFtpFileSystem:a	(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/estrongs/old/fs/impl/sftp/d;
    //   47: astore_3
    //   48: aload_3
    //   49: ifnonnull +9 -> 58
    //   52: aload_3
    //   53: ifnull +3 -> 56
    //   56: iconst_0
    //   57: ireturn
    //   58: aload_3
    //   59: astore_2
    //   60: aload_1
    //   61: invokestatic 295	com/estrongs/android/util/ap:j	(Ljava/lang/String;)Ljava/lang/String;
    //   64: astore_1
    //   65: aload_3
    //   66: astore_2
    //   67: aload_3
    //   68: getfield 149	com/estrongs/old/fs/impl/sftp/d:b	Lcom/jcraft/jsch/ChannelSftp;
    //   71: aload_1
    //   72: invokevirtual 411	com/jcraft/jsch/ChannelSftp:h	(Ljava/lang/String;)V
    //   75: aload_3
    //   76: ifnull +13 -> 89
    //   79: aload 6
    //   81: aload 7
    //   83: aload 4
    //   85: aload_3
    //   86: invokestatic 206	com/estrongs/old/fs/impl/sftp/OldSFtpFileSystem:b	(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/estrongs/old/fs/impl/sftp/d;)V
    //   89: iconst_1
    //   90: ireturn
    //   91: astore_1
    //   92: aconst_null
    //   93: astore_3
    //   94: aload_3
    //   95: astore_2
    //   96: aload_0
    //   97: aload_3
    //   98: invokespecial 338	com/estrongs/old/fs/impl/sftp/OldSFtpFileSystem:a	(Lcom/estrongs/old/fs/impl/sftp/d;)V
    //   101: new 200	com/estrongs/fs/FileSystemException
    //   104: dup
    //   105: aload_1
    //   106: invokespecial 203	com/estrongs/fs/FileSystemException:<init>	(Ljava/lang/Throwable;)V
    //   109: athrow
    //   110: astore_1
    //   111: aload 5
    //   113: astore_2
    //   114: aload_2
    //   115: ifnull +3 -> 118
    //   118: aload_1
    //   119: athrow
    //   120: astore_1
    //   121: goto -7 -> 114
    //   124: astore_1
    //   125: goto -31 -> 94
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	128	0	this	OldSFtpFileSystem
    //   0	128	1	paramString	String
    //   24	91	2	localObject1	Object
    //   13	85	3	localObject2	Object
    //   26	58	4	localObject3	Object
    //   1	111	5	localObject4	Object
    //   7	73	6	str1	String
    //   18	64	7	str2	String
    // Exception table:
    //   from	to	target	type
    //   3	25	91	java/lang/Exception
    //   36	48	91	java/lang/Exception
    //   3	25	110	finally
    //   36	48	110	finally
    //   101	110	110	finally
    //   60	65	120	finally
    //   67	75	120	finally
    //   96	101	120	finally
    //   60	65	124	java/lang/Exception
    //   67	75	124	java/lang/Exception
  }
  
  public long e(String paramString)
  {
    paramString = g(paramString);
    if (paramString == null) {
      return -1L;
    }
    return e;
  }
  
  public boolean f(String paramString)
  {
    paramString = g(paramString);
    if (paramString == null) {
      return false;
    }
    return d;
  }
  
  /* Error */
  public com.estrongs.fs.c g(String paramString)
  {
    // Byte code:
    //   0: iconst_0
    //   1: istore 4
    //   3: ldc 93
    //   5: astore 5
    //   7: aload_1
    //   8: invokestatic 283	com/estrongs/android/util/ap:A	(Ljava/lang/String;)Ljava/lang/String;
    //   11: astore 10
    //   13: aload_1
    //   14: invokestatic 286	com/estrongs/android/util/ap:C	(Ljava/lang/String;)Ljava/lang/String;
    //   17: astore 8
    //   19: aload_1
    //   20: invokestatic 288	com/estrongs/android/util/ap:a	(Ljava/lang/String;)Ljava/lang/String;
    //   23: astore 9
    //   25: aload 5
    //   27: astore 7
    //   29: aload_1
    //   30: invokestatic 291	com/estrongs/android/util/ap:y	(Ljava/lang/String;)Ljava/lang/String;
    //   33: astore 6
    //   35: aload 6
    //   37: astore 5
    //   39: aload 6
    //   41: ifnonnull +7 -> 48
    //   44: ldc 93
    //   46: astore 5
    //   48: aload 5
    //   50: astore 7
    //   52: aload_0
    //   53: aload 10
    //   55: aload 8
    //   57: aload 9
    //   59: aload 5
    //   61: invokespecial 293	com/estrongs/old/fs/impl/sftp/OldSFtpFileSystem:a	(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/estrongs/old/fs/impl/sftp/d;
    //   64: astore 8
    //   66: aload 8
    //   68: ifnonnull +10 -> 78
    //   71: aload 8
    //   73: ifnull +3 -> 76
    //   76: aconst_null
    //   77: areturn
    //   78: aload 8
    //   80: astore 7
    //   82: aload_1
    //   83: invokestatic 295	com/estrongs/android/util/ap:j	(Ljava/lang/String;)Ljava/lang/String;
    //   86: astore 6
    //   88: aload 8
    //   90: astore 7
    //   92: aload 8
    //   94: getfield 149	com/estrongs/old/fs/impl/sftp/d:b	Lcom/jcraft/jsch/ChannelSftp;
    //   97: aload 6
    //   99: invokevirtual 321	com/jcraft/jsch/ChannelSftp:i	(Ljava/lang/String;)Lcom/jcraft/jsch/SftpATTRS;
    //   102: astore 6
    //   104: aload 8
    //   106: astore 7
    //   108: new 436	com/estrongs/fs/c
    //   111: dup
    //   112: aload_1
    //   113: invokespecial 442	com/estrongs/fs/c:<init>	(Ljava/lang/String;)V
    //   116: astore 11
    //   118: aload 8
    //   120: astore 7
    //   122: aload 11
    //   124: aload 6
    //   126: invokevirtual 264	com/jcraft/jsch/SftpATTRS:d	()Z
    //   129: putfield 441	com/estrongs/fs/c:d	Z
    //   132: aload 8
    //   134: astore 7
    //   136: aload 11
    //   138: getfield 441	com/estrongs/fs/c:d	Z
    //   141: ifne +29 -> 170
    //   144: aload 8
    //   146: astore 7
    //   148: aload 11
    //   150: ldc_w 444
    //   153: putfield 447	com/estrongs/fs/c:c	Ljava/lang/String;
    //   156: aload 8
    //   158: astore 7
    //   160: aload 11
    //   162: aload 6
    //   164: invokevirtual 271	com/jcraft/jsch/SftpATTRS:g	()J
    //   167: putfield 439	com/estrongs/fs/c:e	J
    //   170: aload 8
    //   172: astore 7
    //   174: aload 11
    //   176: aload 6
    //   178: invokevirtual 450	com/jcraft/jsch/SftpATTRS:l	()I
    //   181: i2l
    //   182: putfield 452	com/estrongs/fs/c:j	J
    //   185: aload 8
    //   187: astore 7
    //   189: aload 11
    //   191: aload 11
    //   193: getfield 452	com/estrongs/fs/c:j	J
    //   196: ldc2_w 401
    //   199: lmul
    //   200: putfield 452	com/estrongs/fs/c:j	J
    //   203: aload 8
    //   205: astore 7
    //   207: aload 11
    //   209: lconst_0
    //   210: putfield 454	com/estrongs/fs/c:h	J
    //   213: aload 8
    //   215: astore 7
    //   217: aload 6
    //   219: invokevirtual 456	com/jcraft/jsch/SftpATTRS:j	()I
    //   222: sipush 256
    //   225: iand
    //   226: ifeq +144 -> 370
    //   229: iconst_1
    //   230: istore_3
    //   231: aload 8
    //   233: astore 7
    //   235: aload 11
    //   237: iload_3
    //   238: putfield 459	com/estrongs/fs/c:k	Z
    //   241: aload 8
    //   243: astore 7
    //   245: aload 6
    //   247: invokevirtual 456	com/jcraft/jsch/SftpATTRS:j	()I
    //   250: sipush 128
    //   253: iand
    //   254: ifeq +121 -> 375
    //   257: iconst_1
    //   258: istore_3
    //   259: aload 8
    //   261: astore 7
    //   263: aload 11
    //   265: iload_3
    //   266: putfield 461	com/estrongs/fs/c:l	Z
    //   269: aload 8
    //   271: astore 7
    //   273: aload_1
    //   274: invokestatic 463	com/estrongs/android/util/ap:d	(Ljava/lang/String;)Ljava/lang/String;
    //   277: astore 12
    //   279: aload 8
    //   281: astore 7
    //   283: aload 6
    //   285: invokevirtual 464	com/jcraft/jsch/SftpATTRS:a	()Ljava/lang/String;
    //   288: astore 6
    //   290: aload 6
    //   292: astore_1
    //   293: aload 6
    //   295: ifnull +14 -> 309
    //   298: aload 8
    //   300: astore 7
    //   302: aload 6
    //   304: iconst_1
    //   305: invokevirtual 467	java/lang/String:substring	(I)Ljava/lang/String;
    //   308: astore_1
    //   309: aload 8
    //   311: astore 7
    //   313: aload 11
    //   315: aload_1
    //   316: putfield 470	com/estrongs/fs/c:p	Ljava/lang/String;
    //   319: aload 12
    //   321: ifnull +59 -> 380
    //   324: aload 8
    //   326: astore 7
    //   328: aload 12
    //   330: ldc -37
    //   332: invokevirtual 473	java/lang/String:startsWith	(Ljava/lang/String;)Z
    //   335: ifne +45 -> 380
    //   338: iload 4
    //   340: istore_3
    //   341: aload 8
    //   343: astore 7
    //   345: aload 11
    //   347: iload_3
    //   348: putfield 476	com/estrongs/fs/c:m	Z
    //   351: aload 8
    //   353: ifnull +14 -> 367
    //   356: aload 10
    //   358: aload 9
    //   360: aload 5
    //   362: aload 8
    //   364: invokestatic 206	com/estrongs/old/fs/impl/sftp/OldSFtpFileSystem:b	(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/estrongs/old/fs/impl/sftp/d;)V
    //   367: aload 11
    //   369: areturn
    //   370: iconst_0
    //   371: istore_3
    //   372: goto -141 -> 231
    //   375: iconst_0
    //   376: istore_3
    //   377: goto -118 -> 259
    //   380: iconst_1
    //   381: istore_3
    //   382: goto -41 -> 341
    //   385: astore 6
    //   387: aconst_null
    //   388: astore 9
    //   390: aconst_null
    //   391: astore 10
    //   393: aconst_null
    //   394: astore_1
    //   395: aload_1
    //   396: astore 7
    //   398: aload 6
    //   400: getfield 480	com/jcraft/jsch/SftpException:id	I
    //   403: istore_2
    //   404: iload_2
    //   405: iconst_2
    //   406: if_icmpne +19 -> 425
    //   409: aload_1
    //   410: ifnull -334 -> 76
    //   413: aload 10
    //   415: aload 9
    //   417: aload 5
    //   419: aload_1
    //   420: invokestatic 206	com/estrongs/old/fs/impl/sftp/OldSFtpFileSystem:b	(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/estrongs/old/fs/impl/sftp/d;)V
    //   423: aconst_null
    //   424: areturn
    //   425: aload_1
    //   426: astore 7
    //   428: aload_0
    //   429: aload_1
    //   430: invokespecial 338	com/estrongs/old/fs/impl/sftp/OldSFtpFileSystem:a	(Lcom/estrongs/old/fs/impl/sftp/d;)V
    //   433: new 200	com/estrongs/fs/FileSystemException
    //   436: dup
    //   437: aload 6
    //   439: invokespecial 203	com/estrongs/fs/FileSystemException:<init>	(Ljava/lang/Throwable;)V
    //   442: athrow
    //   443: astore_1
    //   444: aconst_null
    //   445: astore 7
    //   447: aload 7
    //   449: ifnull +3 -> 452
    //   452: aload_1
    //   453: athrow
    //   454: astore_1
    //   455: goto -8 -> 447
    //   458: astore 6
    //   460: aconst_null
    //   461: astore 9
    //   463: aconst_null
    //   464: astore_1
    //   465: goto -70 -> 395
    //   468: astore 6
    //   470: aconst_null
    //   471: astore_1
    //   472: aload 7
    //   474: astore 5
    //   476: goto -81 -> 395
    //   479: astore 6
    //   481: aload 8
    //   483: astore_1
    //   484: goto -89 -> 395
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	487	0	this	OldSFtpFileSystem
    //   0	487	1	paramString	String
    //   403	4	2	i	int
    //   230	152	3	bool1	boolean
    //   1	338	4	bool2	boolean
    //   5	470	5	localObject1	Object
    //   33	270	6	localObject2	Object
    //   385	53	6	localSftpException1	SftpException
    //   458	1	6	localSftpException2	SftpException
    //   468	1	6	localSftpException3	SftpException
    //   479	1	6	localSftpException4	SftpException
    //   27	446	7	localObject3	Object
    //   17	465	8	localObject4	Object
    //   23	439	9	str1	String
    //   11	403	10	str2	String
    //   116	252	11	localc	com.estrongs.fs.c
    //   277	52	12	str3	String
    // Exception table:
    //   from	to	target	type
    //   7	13	385	com/jcraft/jsch/SftpException
    //   7	13	443	finally
    //   13	25	443	finally
    //   29	35	443	finally
    //   52	66	443	finally
    //   433	443	443	finally
    //   82	88	454	finally
    //   92	104	454	finally
    //   108	118	454	finally
    //   122	132	454	finally
    //   136	144	454	finally
    //   148	156	454	finally
    //   160	170	454	finally
    //   174	185	454	finally
    //   189	203	454	finally
    //   207	213	454	finally
    //   217	229	454	finally
    //   235	241	454	finally
    //   245	257	454	finally
    //   263	269	454	finally
    //   273	279	454	finally
    //   283	290	454	finally
    //   302	309	454	finally
    //   313	319	454	finally
    //   328	338	454	finally
    //   345	351	454	finally
    //   398	404	454	finally
    //   428	433	454	finally
    //   13	25	458	com/jcraft/jsch/SftpException
    //   29	35	468	com/jcraft/jsch/SftpException
    //   52	66	468	com/jcraft/jsch/SftpException
    //   82	88	479	com/jcraft/jsch/SftpException
    //   92	104	479	com/jcraft/jsch/SftpException
    //   108	118	479	com/jcraft/jsch/SftpException
    //   122	132	479	com/jcraft/jsch/SftpException
    //   136	144	479	com/jcraft/jsch/SftpException
    //   148	156	479	com/jcraft/jsch/SftpException
    //   160	170	479	com/jcraft/jsch/SftpException
    //   174	185	479	com/jcraft/jsch/SftpException
    //   189	203	479	com/jcraft/jsch/SftpException
    //   207	213	479	com/jcraft/jsch/SftpException
    //   217	229	479	com/jcraft/jsch/SftpException
    //   235	241	479	com/jcraft/jsch/SftpException
    //   245	257	479	com/jcraft/jsch/SftpException
    //   263	269	479	com/jcraft/jsch/SftpException
    //   273	279	479	com/jcraft/jsch/SftpException
    //   283	290	479	com/jcraft/jsch/SftpException
    //   302	309	479	com/jcraft/jsch/SftpException
    //   313	319	479	com/jcraft/jsch/SftpException
    //   328	338	479	com/jcraft/jsch/SftpException
    //   345	351	479	com/jcraft/jsch/SftpException
  }
  
  public InputStream i(String paramString)
  {
    return a(paramString, 0L);
  }
  
  public OutputStream j(String paramString)
  {
    try
    {
      String str1 = ap.A(paramString);
      String str3 = ap.C(paramString);
      String str2 = ap.a(paramString);
      Object localObject2 = ap.y(paramString);
      Object localObject1 = localObject2;
      if (localObject2 == null) {
        localObject1 = "22";
      }
      localObject2 = a(str1, str3, str2, (String)localObject1);
      if (localObject2 == null) {
        return null;
      }
      paramString = ap.j(paramString);
      paramString = new c(b.c(paramString), (d)localObject2, str1, str2, (String)localObject1);
      return paramString;
    }
    catch (Exception paramString)
    {
      throw new FileSystemException(paramString);
    }
  }
  
  public boolean k(String paramString)
  {
    return true;
  }
  
  /* Error */
  public String l(String paramString)
  {
    // Byte code:
    //   0: aconst_null
    //   1: astore_2
    //   2: aload_1
    //   3: invokestatic 283	com/estrongs/android/util/ap:A	(Ljava/lang/String;)Ljava/lang/String;
    //   6: astore 5
    //   8: aload_1
    //   9: invokestatic 286	com/estrongs/android/util/ap:C	(Ljava/lang/String;)Ljava/lang/String;
    //   12: astore 4
    //   14: aload_1
    //   15: invokestatic 288	com/estrongs/android/util/ap:a	(Ljava/lang/String;)Ljava/lang/String;
    //   18: astore 6
    //   20: aload_1
    //   21: invokestatic 291	com/estrongs/android/util/ap:y	(Ljava/lang/String;)Ljava/lang/String;
    //   24: astore_1
    //   25: aload_1
    //   26: astore_3
    //   27: aload_1
    //   28: ifnonnull +6 -> 34
    //   31: ldc 93
    //   33: astore_3
    //   34: aload_0
    //   35: aload 5
    //   37: aload 4
    //   39: aload 6
    //   41: aload_3
    //   42: invokespecial 293	com/estrongs/old/fs/impl/sftp/OldSFtpFileSystem:a	(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/estrongs/old/fs/impl/sftp/d;
    //   45: astore_1
    //   46: aload_1
    //   47: ifnonnull +9 -> 56
    //   50: aload_1
    //   51: ifnull +3 -> 54
    //   54: aload_2
    //   55: areturn
    //   56: aload_1
    //   57: astore_2
    //   58: aload_1
    //   59: getfield 149	com/estrongs/old/fs/impl/sftp/d:b	Lcom/jcraft/jsch/ChannelSftp;
    //   62: invokevirtual 495	com/jcraft/jsch/ChannelSftp:o	()Ljava/lang/String;
    //   65: astore 4
    //   67: aload 4
    //   69: astore_2
    //   70: aload_1
    //   71: ifnull -17 -> 54
    //   74: aload 5
    //   76: aload 6
    //   78: aload_3
    //   79: aload_1
    //   80: invokestatic 206	com/estrongs/old/fs/impl/sftp/OldSFtpFileSystem:b	(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/estrongs/old/fs/impl/sftp/d;)V
    //   83: aload 4
    //   85: areturn
    //   86: astore_3
    //   87: aconst_null
    //   88: astore_1
    //   89: aload_1
    //   90: astore_2
    //   91: aload_0
    //   92: aload_1
    //   93: invokespecial 338	com/estrongs/old/fs/impl/sftp/OldSFtpFileSystem:a	(Lcom/estrongs/old/fs/impl/sftp/d;)V
    //   96: aload_3
    //   97: invokevirtual 391	java/lang/Exception:printStackTrace	()V
    //   100: new 200	com/estrongs/fs/FileSystemException
    //   103: dup
    //   104: aload_3
    //   105: invokespecial 203	com/estrongs/fs/FileSystemException:<init>	(Ljava/lang/Throwable;)V
    //   108: athrow
    //   109: astore_1
    //   110: aconst_null
    //   111: astore_2
    //   112: aload_2
    //   113: ifnull +3 -> 116
    //   116: aload_1
    //   117: athrow
    //   118: astore_1
    //   119: goto -7 -> 112
    //   122: astore_3
    //   123: goto -34 -> 89
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	126	0	this	OldSFtpFileSystem
    //   0	126	1	paramString	String
    //   1	112	2	localObject	Object
    //   26	53	3	str1	String
    //   86	19	3	localException1	Exception
    //   122	1	3	localException2	Exception
    //   12	72	4	str2	String
    //   6	69	5	str3	String
    //   18	59	6	str4	String
    // Exception table:
    //   from	to	target	type
    //   2	25	86	java/lang/Exception
    //   34	46	86	java/lang/Exception
    //   2	25	109	finally
    //   34	46	109	finally
    //   96	109	109	finally
    //   58	67	118	finally
    //   91	96	118	finally
    //   58	67	122	java/lang/Exception
  }
  
  /* Error */
  public e m(String paramString)
  {
    // Byte code:
    //   0: iconst_0
    //   1: istore 4
    //   3: iconst_0
    //   4: istore 5
    //   6: iconst_0
    //   7: istore_2
    //   8: aload_1
    //   9: invokestatic 283	com/estrongs/android/util/ap:A	(Ljava/lang/String;)Ljava/lang/String;
    //   12: astore 7
    //   14: aload_1
    //   15: invokestatic 286	com/estrongs/android/util/ap:C	(Ljava/lang/String;)Ljava/lang/String;
    //   18: astore 10
    //   20: aload_1
    //   21: invokestatic 288	com/estrongs/android/util/ap:a	(Ljava/lang/String;)Ljava/lang/String;
    //   24: astore 8
    //   26: aload_1
    //   27: invokestatic 291	com/estrongs/android/util/ap:y	(Ljava/lang/String;)Ljava/lang/String;
    //   30: astore 9
    //   32: aload 9
    //   34: ifnonnull +471 -> 505
    //   37: ldc 93
    //   39: astore 9
    //   41: aload_0
    //   42: aload 7
    //   44: aload 10
    //   46: aload 8
    //   48: aload 9
    //   50: invokespecial 293	com/estrongs/old/fs/impl/sftp/OldSFtpFileSystem:a	(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/estrongs/old/fs/impl/sftp/d;
    //   53: astore 10
    //   55: aload 10
    //   57: ifnonnull +10 -> 67
    //   60: aload 10
    //   62: ifnull +3 -> 65
    //   65: aconst_null
    //   66: areturn
    //   67: iload 4
    //   69: istore_2
    //   70: iload 5
    //   72: istore_3
    //   73: aload_1
    //   74: invokestatic 295	com/estrongs/android/util/ap:j	(Ljava/lang/String;)Ljava/lang/String;
    //   77: astore 13
    //   79: iload 4
    //   81: istore_2
    //   82: iload 5
    //   84: istore_3
    //   85: aload 10
    //   87: getfield 149	com/estrongs/old/fs/impl/sftp/d:b	Lcom/jcraft/jsch/ChannelSftp;
    //   90: aload 13
    //   92: invokevirtual 321	com/jcraft/jsch/ChannelSftp:i	(Ljava/lang/String;)Lcom/jcraft/jsch/SftpATTRS;
    //   95: astore 11
    //   97: aload 11
    //   99: ifnonnull +10 -> 109
    //   102: aload 10
    //   104: ifnull -39 -> 65
    //   107: aconst_null
    //   108: areturn
    //   109: iload 4
    //   111: istore_2
    //   112: iload 5
    //   114: istore_3
    //   115: aload 11
    //   117: invokevirtual 318	com/jcraft/jsch/SftpATTRS:e	()Z
    //   120: istore 6
    //   122: iload 6
    //   124: ifeq +367 -> 491
    //   127: iload 4
    //   129: istore_2
    //   130: aload 10
    //   132: getfield 149	com/estrongs/old/fs/impl/sftp/d:b	Lcom/jcraft/jsch/ChannelSftp;
    //   135: aload 13
    //   137: invokevirtual 321	com/jcraft/jsch/ChannelSftp:i	(Ljava/lang/String;)Lcom/jcraft/jsch/SftpATTRS;
    //   140: astore 12
    //   142: aload 12
    //   144: astore 11
    //   146: iload 4
    //   148: istore_2
    //   149: aload 10
    //   151: getfield 149	com/estrongs/old/fs/impl/sftp/d:b	Lcom/jcraft/jsch/ChannelSftp;
    //   154: aload 13
    //   156: invokevirtual 323	com/jcraft/jsch/ChannelSftp:e	(Ljava/lang/String;)Ljava/lang/String;
    //   159: astore 13
    //   161: aload 13
    //   163: astore 11
    //   165: iconst_1
    //   166: istore_3
    //   167: iconst_1
    //   168: istore_2
    //   169: new 325	com/estrongs/old/fs/impl/sftp/e
    //   172: dup
    //   173: aload 12
    //   175: aload_1
    //   176: aload 11
    //   178: invokespecial 328	com/estrongs/old/fs/impl/sftp/e:<init>	(Lcom/jcraft/jsch/SftpATTRS;Ljava/lang/String;Ljava/lang/String;)V
    //   181: astore_1
    //   182: aload 10
    //   184: ifnull +14 -> 198
    //   187: aload 7
    //   189: aload 8
    //   191: aload 9
    //   193: aload 10
    //   195: invokestatic 206	com/estrongs/old/fs/impl/sftp/OldSFtpFileSystem:b	(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/estrongs/old/fs/impl/sftp/d;)V
    //   198: aload_1
    //   199: areturn
    //   200: astore 12
    //   202: aconst_null
    //   203: astore 13
    //   205: aload 11
    //   207: astore 12
    //   209: aload 13
    //   211: astore 11
    //   213: goto -48 -> 165
    //   216: astore_1
    //   217: aconst_null
    //   218: astore 7
    //   220: aconst_null
    //   221: astore 8
    //   223: aconst_null
    //   224: astore 9
    //   226: iconst_0
    //   227: istore_2
    //   228: ldc 93
    //   230: astore_1
    //   231: aload_0
    //   232: aload 9
    //   234: invokespecial 338	com/estrongs/old/fs/impl/sftp/OldSFtpFileSystem:a	(Lcom/estrongs/old/fs/impl/sftp/d;)V
    //   237: iconst_0
    //   238: ifeq -173 -> 65
    //   241: iload_2
    //   242: ifeq -177 -> 65
    //   245: aload 8
    //   247: aload 7
    //   249: aload_1
    //   250: aconst_null
    //   251: invokestatic 206	com/estrongs/old/fs/impl/sftp/OldSFtpFileSystem:b	(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/estrongs/old/fs/impl/sftp/d;)V
    //   254: aconst_null
    //   255: areturn
    //   256: astore_1
    //   257: aconst_null
    //   258: astore 8
    //   260: aconst_null
    //   261: astore 11
    //   263: aconst_null
    //   264: astore 7
    //   266: ldc 93
    //   268: astore 9
    //   270: aload 7
    //   272: ifnull +18 -> 290
    //   275: iload_2
    //   276: ifeq +14 -> 290
    //   279: aload 11
    //   281: aload 8
    //   283: aload 9
    //   285: aload 7
    //   287: invokestatic 206	com/estrongs/old/fs/impl/sftp/OldSFtpFileSystem:b	(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/estrongs/old/fs/impl/sftp/d;)V
    //   290: aload_1
    //   291: athrow
    //   292: astore_1
    //   293: aconst_null
    //   294: astore 8
    //   296: aconst_null
    //   297: astore 10
    //   299: ldc 93
    //   301: astore 9
    //   303: aload 7
    //   305: astore 11
    //   307: aload 10
    //   309: astore 7
    //   311: goto -41 -> 270
    //   314: astore_1
    //   315: aconst_null
    //   316: astore 10
    //   318: ldc 93
    //   320: astore 9
    //   322: aload 7
    //   324: astore 11
    //   326: aload 10
    //   328: astore 7
    //   330: goto -60 -> 270
    //   333: astore_1
    //   334: aconst_null
    //   335: astore 10
    //   337: aload 7
    //   339: astore 11
    //   341: aload 10
    //   343: astore 7
    //   345: goto -75 -> 270
    //   348: astore_1
    //   349: aload 7
    //   351: astore 11
    //   353: aload 10
    //   355: astore 7
    //   357: goto -87 -> 270
    //   360: astore 12
    //   362: aload 9
    //   364: astore 10
    //   366: aload 8
    //   368: astore 11
    //   370: aload_1
    //   371: astore 9
    //   373: aload 12
    //   375: astore_1
    //   376: aload 7
    //   378: astore 8
    //   380: aload 10
    //   382: astore 7
    //   384: goto -114 -> 270
    //   387: astore_1
    //   388: aconst_null
    //   389: astore 10
    //   391: aload 7
    //   393: astore 8
    //   395: aconst_null
    //   396: astore 9
    //   398: iconst_0
    //   399: istore_2
    //   400: ldc 93
    //   402: astore_1
    //   403: aload 10
    //   405: astore 7
    //   407: goto -176 -> 231
    //   410: astore_1
    //   411: aload 7
    //   413: astore 9
    //   415: aconst_null
    //   416: astore 10
    //   418: iconst_0
    //   419: istore_2
    //   420: ldc 93
    //   422: astore_1
    //   423: aload 8
    //   425: astore 7
    //   427: aload 9
    //   429: astore 8
    //   431: aload 10
    //   433: astore 9
    //   435: goto -204 -> 231
    //   438: astore_1
    //   439: iconst_0
    //   440: istore_2
    //   441: aload 9
    //   443: astore_1
    //   444: aload 7
    //   446: astore 9
    //   448: aconst_null
    //   449: astore 10
    //   451: aload 8
    //   453: astore 7
    //   455: aload 9
    //   457: astore 8
    //   459: aload 10
    //   461: astore 9
    //   463: goto -232 -> 231
    //   466: astore_1
    //   467: iload_3
    //   468: istore_2
    //   469: aload 9
    //   471: astore_1
    //   472: aload 7
    //   474: astore 9
    //   476: aload 8
    //   478: astore 7
    //   480: aload 9
    //   482: astore 8
    //   484: aload 10
    //   486: astore 9
    //   488: goto -257 -> 231
    //   491: aconst_null
    //   492: astore 13
    //   494: aload 11
    //   496: astore 12
    //   498: aload 13
    //   500: astore 11
    //   502: goto -337 -> 165
    //   505: goto -464 -> 41
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	508	0	this	OldSFtpFileSystem
    //   0	508	1	paramString	String
    //   7	462	2	i	int
    //   72	396	3	j	int
    //   1	146	4	k	int
    //   4	109	5	m	int
    //   120	3	6	bool	boolean
    //   12	467	7	localObject1	Object
    //   24	459	8	localObject2	Object
    //   30	457	9	localObject3	Object
    //   18	467	10	localObject4	Object
    //   95	406	11	localObject5	Object
    //   140	34	12	localSftpATTRS	SftpATTRS
    //   200	1	12	localException	Exception
    //   207	1	12	localObject6	Object
    //   360	14	12	localObject7	Object
    //   496	1	12	localObject8	Object
    //   77	422	13	str	String
    // Exception table:
    //   from	to	target	type
    //   130	142	200	java/lang/Exception
    //   149	161	200	java/lang/Exception
    //   8	14	216	java/lang/Exception
    //   8	14	256	finally
    //   14	26	292	finally
    //   26	32	314	finally
    //   41	55	333	finally
    //   73	79	348	finally
    //   85	97	348	finally
    //   115	122	348	finally
    //   130	142	348	finally
    //   149	161	348	finally
    //   169	182	348	finally
    //   231	237	360	finally
    //   14	26	387	java/lang/Exception
    //   26	32	410	java/lang/Exception
    //   41	55	438	java/lang/Exception
    //   73	79	466	java/lang/Exception
    //   85	97	466	java/lang/Exception
    //   115	122	466	java/lang/Exception
    //   169	182	466	java/lang/Exception
  }
}

/* Location:
 * Qualified Name:     com.estrongs.old.fs.impl.sftp.OldSFtpFileSystem
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */