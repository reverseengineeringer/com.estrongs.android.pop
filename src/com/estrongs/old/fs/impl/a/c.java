package com.estrongs.old.fs.impl.a;

import com.estrongs.android.exception.GeneralException;
import com.estrongs.android.exception.GeneralException.ERROR_CODE;
import com.estrongs.android.util.TypedMap;
import com.estrongs.android.util.am;
import com.estrongs.fs.FileSystemException;
import com.estrongs.fs.h;
import com.estrongs.fs.i;
import java.io.IOException;
import java.io.InputStream;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.List;
import java.util.Map.Entry;
import java.util.Set;
import org.apache.commons.net.ftp.FTPClient;
import org.apache.commons.net.ftp.FTPConnectionClosedException;
import org.apache.commons.net.ftp.FTPFile;
import org.apache.commons.net.ftp.FTPListParseEngine;

public class c
  implements com.estrongs.old.fs.a
{
  private static boolean a = false;
  private static c b = null;
  private static HashMap<String, ArrayList<g>> c = new HashMap();
  private HashMap<String, TypedMap> d = new HashMap();
  
  private void a(FTPClient paramFTPClient)
  {
    if (paramFTPClient == null) {
      return;
    }
    try
    {
      paramFTPClient.logout();
      paramFTPClient.disconnect();
      return;
    }
    catch (IOException paramFTPClient) {}
  }
  
  private boolean a(FTPClient paramFTPClient, String paramString)
  {
    com.estrongs.a.a locala = com.estrongs.a.a.getCurrentTask();
    int i;
    boolean bool1;
    for (;;)
    {
      int j;
      try
      {
        paramFTPClient.changeWorkingDirectory(paramString);
        arrayOfFTPFile = paramFTPClient.listFiles(".");
        if ((arrayOfFTPFile != null) && (arrayOfFTPFile.length != 0) && ((arrayOfFTPFile.length != 1) || (!arrayOfFTPFile[0].getName().equals(".")))) {
          break label300;
        }
        arrayOfFTPFile = paramFTPClient.listFiles();
        if (arrayOfFTPFile != null)
        {
          j = arrayOfFTPFile.length;
          i = 0;
          break label303;
        }
        if (arrayOfFTPFile == null) {
          break label298;
        }
        bool1 = paramFTPClient.removeDirectory(paramString);
        if (locala == null) {
          break;
        }
        locala.sendMessage(1, new Object[] { Long.valueOf(1L), "ftp://" + paramString });
        return bool1;
      }
      catch (IOException paramFTPClient)
      {
        FTPFile[] arrayOfFTPFile;
        FTPFile localFTPFile;
        String str;
        boolean bool2;
        throw new FileSystemException(paramFTPClient);
      }
      localFTPFile = arrayOfFTPFile[i];
      if ((locala != null) && (locala.taskStopped())) {
        return false;
      }
      if (m(localFTPFile.getName())) {
        break label315;
      }
      str = paramString + localFTPFile.getName();
      if (localFTPFile.isDirectory())
      {
        bool1 = a(paramFTPClient, str + "/");
        break label322;
      }
      bool2 = paramFTPClient.deleteFile(str);
      bool1 = bool2;
      if (locala == null) {
        break label322;
      }
      locala.sendMessage(1, new Object[] { Long.valueOf(1L), "ftp://" + str });
      bool1 = bool2;
      break label322;
      label298:
      return true;
      label300:
      continue;
      label303:
      if (i < j) {
        break label320;
      }
    }
    label315:
    label320:
    label322:
    while (bool1)
    {
      for (;;)
      {
        i += 1;
      }
      break;
    }
    return false;
  }
  
  public static com.estrongs.old.fs.a b()
  {
    if (b == null) {
      b = new c();
    }
    return b;
  }
  
  private static void b(String paramString, g paramg)
  {
    for (;;)
    {
      synchronized (c)
      {
        localArrayList = (ArrayList)c.get(paramString);
        if (localArrayList != null) {
          try
          {
            localArrayList.add(paramg);
            return;
          }
          finally {}
        }
      }
      ArrayList localArrayList = new ArrayList();
      localArrayList.add(paramg);
      c.put(paramString, localArrayList);
    }
  }
  
  public static void c()
  {
    a = false;
  }
  
  private boolean l(String paramString)
  {
    return paramString.charAt(paramString.length() - 1) == '/';
  }
  
  private boolean m(String paramString)
  {
    return ((paramString != null) && (paramString.equals("."))) || (paramString.equals(".."));
  }
  
  /* Error */
  public InputStream a(String paramString, long paramLong)
  {
    // Byte code:
    //   0: aconst_null
    //   1: astore 6
    //   3: aconst_null
    //   4: astore 5
    //   6: aconst_null
    //   7: astore 4
    //   9: aload_1
    //   10: invokestatic 168	com/estrongs/android/util/am:h	(Ljava/lang/String;)Ljava/lang/String;
    //   13: astore 10
    //   15: aload_1
    //   16: invokestatic 171	com/estrongs/android/util/am:i	(Ljava/lang/String;)Ljava/lang/String;
    //   19: astore 9
    //   21: aload_0
    //   22: aload 10
    //   24: iconst_1
    //   25: invokevirtual 174	com/estrongs/old/fs/impl/a/c:a	(Ljava/lang/String;Z)Lorg/apache/commons/net/ftp/FTPClient;
    //   28: astore_1
    //   29: aload_1
    //   30: ifnonnull +111 -> 141
    //   33: aload 4
    //   35: astore 5
    //   37: iconst_0
    //   38: ifne +100 -> 138
    //   41: aload_1
    //   42: ifnull +12 -> 54
    //   45: aload_1
    //   46: invokevirtual 44	org/apache/commons/net/ftp/FTPClient:logout	()Z
    //   49: pop
    //   50: aload_1
    //   51: invokevirtual 47	org/apache/commons/net/ftp/FTPClient:disconnect	()V
    //   54: aload_0
    //   55: aload 10
    //   57: iconst_1
    //   58: invokevirtual 174	com/estrongs/old/fs/impl/a/c:a	(Ljava/lang/String;Z)Lorg/apache/commons/net/ftp/FTPClient;
    //   61: astore 6
    //   63: aload 4
    //   65: astore 5
    //   67: aload 6
    //   69: ifnull +69 -> 138
    //   72: aload 6
    //   74: lload_2
    //   75: invokevirtual 178	org/apache/commons/net/ftp/FTPClient:setRestartOffset	(J)V
    //   78: aload 6
    //   80: aload 9
    //   82: invokevirtual 182	org/apache/commons/net/ftp/FTPClient:retrieveFileStream	(Ljava/lang/String;)Ljava/io/InputStream;
    //   85: astore 5
    //   87: aload 5
    //   89: astore_1
    //   90: aload 5
    //   92: ifnonnull +31 -> 123
    //   95: aload 6
    //   97: lload_2
    //   98: invokevirtual 178	org/apache/commons/net/ftp/FTPClient:setRestartOffset	(J)V
    //   101: aload 6
    //   103: aload 9
    //   105: invokestatic 185	com/estrongs/android/util/am:bk	(Ljava/lang/String;)Ljava/lang/String;
    //   108: invokevirtual 58	org/apache/commons/net/ftp/FTPClient:changeWorkingDirectory	(Ljava/lang/String;)Z
    //   111: pop
    //   112: aload 6
    //   114: aload 9
    //   116: invokestatic 187	com/estrongs/android/util/am:d	(Ljava/lang/String;)Ljava/lang/String;
    //   119: invokevirtual 182	org/apache/commons/net/ftp/FTPClient:retrieveFileStream	(Ljava/lang/String;)Ljava/io/InputStream;
    //   122: astore_1
    //   123: new 189	com/estrongs/old/fs/impl/a/b
    //   126: dup
    //   127: aload_1
    //   128: aload 6
    //   130: invokespecial 192	com/estrongs/old/fs/impl/a/b:<init>	(Ljava/io/InputStream;Lorg/apache/commons/net/ftp/FTPClient;)V
    //   133: pop
    //   134: aload 4
    //   136: astore 5
    //   138: aload 5
    //   140: areturn
    //   141: aload 6
    //   143: astore 5
    //   145: aload_1
    //   146: lload_2
    //   147: invokevirtual 178	org/apache/commons/net/ftp/FTPClient:setRestartOffset	(J)V
    //   150: aload 6
    //   152: astore 5
    //   154: aload_1
    //   155: iconst_1
    //   156: invokevirtual 196	org/apache/commons/net/ftp/FTPClient:setKeepAlive	(Z)V
    //   159: aload 6
    //   161: astore 5
    //   163: aload_1
    //   164: iconst_0
    //   165: invokevirtual 199	org/apache/commons/net/ftp/FTPClient:setRemoteVerificationEnabled	(Z)V
    //   168: aload 6
    //   170: astore 5
    //   172: aload_1
    //   173: bipush 10
    //   175: invokevirtual 203	org/apache/commons/net/ftp/FTPClient:setFileTransferMode	(I)Z
    //   178: pop
    //   179: aload 6
    //   181: astore 5
    //   183: aload_1
    //   184: aload 9
    //   186: invokevirtual 182	org/apache/commons/net/ftp/FTPClient:retrieveFileStream	(Ljava/lang/String;)Ljava/io/InputStream;
    //   189: astore 4
    //   191: aload 4
    //   193: astore 5
    //   195: aload 4
    //   197: ifnonnull +243 -> 440
    //   200: aload 4
    //   202: astore 5
    //   204: aload 4
    //   206: astore 6
    //   208: aload 4
    //   210: astore 7
    //   212: aload_1
    //   213: lload_2
    //   214: invokevirtual 178	org/apache/commons/net/ftp/FTPClient:setRestartOffset	(J)V
    //   217: aload 4
    //   219: astore 5
    //   221: aload 4
    //   223: astore 6
    //   225: aload 4
    //   227: astore 7
    //   229: aload_1
    //   230: aload 9
    //   232: invokestatic 185	com/estrongs/android/util/am:bk	(Ljava/lang/String;)Ljava/lang/String;
    //   235: invokevirtual 58	org/apache/commons/net/ftp/FTPClient:changeWorkingDirectory	(Ljava/lang/String;)Z
    //   238: pop
    //   239: aload 4
    //   241: astore 5
    //   243: aload 4
    //   245: astore 6
    //   247: aload 4
    //   249: astore 7
    //   251: aload_1
    //   252: aload 9
    //   254: invokestatic 187	com/estrongs/android/util/am:d	(Ljava/lang/String;)Ljava/lang/String;
    //   257: invokevirtual 182	org/apache/commons/net/ftp/FTPClient:retrieveFileStream	(Ljava/lang/String;)Ljava/io/InputStream;
    //   260: astore 4
    //   262: aload 4
    //   264: astore 5
    //   266: aload 4
    //   268: ifnonnull +172 -> 440
    //   271: aload 4
    //   273: astore 5
    //   275: aload 4
    //   277: astore 6
    //   279: aload 4
    //   281: astore 7
    //   283: new 38	java/io/IOException
    //   286: dup
    //   287: ldc -51
    //   289: invokespecial 206	java/io/IOException:<init>	(Ljava/lang/String;)V
    //   292: athrow
    //   293: astore 4
    //   295: aload_1
    //   296: astore 6
    //   298: aload 5
    //   300: astore 4
    //   302: aload 4
    //   304: astore 5
    //   306: aload 4
    //   308: ifnonnull -170 -> 138
    //   311: aload 6
    //   313: ifnull +20 -> 333
    //   316: aload 4
    //   318: astore_1
    //   319: aload 6
    //   321: invokevirtual 44	org/apache/commons/net/ftp/FTPClient:logout	()Z
    //   324: pop
    //   325: aload 4
    //   327: astore_1
    //   328: aload 6
    //   330: invokevirtual 47	org/apache/commons/net/ftp/FTPClient:disconnect	()V
    //   333: aload 4
    //   335: astore_1
    //   336: aload_0
    //   337: aload 10
    //   339: iconst_1
    //   340: invokevirtual 174	com/estrongs/old/fs/impl/a/c:a	(Ljava/lang/String;Z)Lorg/apache/commons/net/ftp/FTPClient;
    //   343: astore 6
    //   345: aload 4
    //   347: astore 5
    //   349: aload 6
    //   351: ifnull -213 -> 138
    //   354: aload 4
    //   356: astore_1
    //   357: aload 6
    //   359: lload_2
    //   360: invokevirtual 178	org/apache/commons/net/ftp/FTPClient:setRestartOffset	(J)V
    //   363: aload 4
    //   365: astore_1
    //   366: aload 6
    //   368: aload 9
    //   370: invokevirtual 182	org/apache/commons/net/ftp/FTPClient:retrieveFileStream	(Ljava/lang/String;)Ljava/io/InputStream;
    //   373: astore 4
    //   375: aload 4
    //   377: ifnonnull +456 -> 833
    //   380: aload 4
    //   382: astore_1
    //   383: aload 6
    //   385: lload_2
    //   386: invokevirtual 178	org/apache/commons/net/ftp/FTPClient:setRestartOffset	(J)V
    //   389: aload 4
    //   391: astore_1
    //   392: aload 6
    //   394: aload 9
    //   396: invokestatic 185	com/estrongs/android/util/am:bk	(Ljava/lang/String;)Ljava/lang/String;
    //   399: invokevirtual 58	org/apache/commons/net/ftp/FTPClient:changeWorkingDirectory	(Ljava/lang/String;)Z
    //   402: pop
    //   403: aload 4
    //   405: astore_1
    //   406: aload 6
    //   408: aload 9
    //   410: invokestatic 187	com/estrongs/android/util/am:d	(Ljava/lang/String;)Ljava/lang/String;
    //   413: invokevirtual 182	org/apache/commons/net/ftp/FTPClient:retrieveFileStream	(Ljava/lang/String;)Ljava/io/InputStream;
    //   416: astore 4
    //   418: aload 4
    //   420: astore_1
    //   421: new 189	com/estrongs/old/fs/impl/a/b
    //   424: dup
    //   425: aload_1
    //   426: aload 6
    //   428: invokespecial 192	com/estrongs/old/fs/impl/a/b:<init>	(Ljava/io/InputStream;Lorg/apache/commons/net/ftp/FTPClient;)V
    //   431: astore 4
    //   433: aload 4
    //   435: areturn
    //   436: astore 4
    //   438: aload_1
    //   439: areturn
    //   440: aload 5
    //   442: astore 4
    //   444: aload_1
    //   445: astore 6
    //   447: aload 4
    //   449: astore 7
    //   451: new 189	com/estrongs/old/fs/impl/a/b
    //   454: dup
    //   455: aload 4
    //   457: aload_1
    //   458: invokespecial 192	com/estrongs/old/fs/impl/a/b:<init>	(Ljava/io/InputStream;Lorg/apache/commons/net/ftp/FTPClient;)V
    //   461: astore 8
    //   463: aload 8
    //   465: astore 5
    //   467: aload 8
    //   469: ifnonnull -331 -> 138
    //   472: aload_1
    //   473: ifnull +20 -> 493
    //   476: aload 8
    //   478: astore 4
    //   480: aload_1
    //   481: invokevirtual 44	org/apache/commons/net/ftp/FTPClient:logout	()Z
    //   484: pop
    //   485: aload 8
    //   487: astore 4
    //   489: aload_1
    //   490: invokevirtual 47	org/apache/commons/net/ftp/FTPClient:disconnect	()V
    //   493: aload 8
    //   495: astore 4
    //   497: aload_0
    //   498: aload 10
    //   500: iconst_1
    //   501: invokevirtual 174	com/estrongs/old/fs/impl/a/c:a	(Ljava/lang/String;Z)Lorg/apache/commons/net/ftp/FTPClient;
    //   504: astore 6
    //   506: aload 8
    //   508: astore 5
    //   510: aload 6
    //   512: ifnull -374 -> 138
    //   515: aload 8
    //   517: astore 4
    //   519: aload 6
    //   521: lload_2
    //   522: invokevirtual 178	org/apache/commons/net/ftp/FTPClient:setRestartOffset	(J)V
    //   525: aload 8
    //   527: astore 4
    //   529: aload 6
    //   531: aload 9
    //   533: invokevirtual 182	org/apache/commons/net/ftp/FTPClient:retrieveFileStream	(Ljava/lang/String;)Ljava/io/InputStream;
    //   536: astore_1
    //   537: aload_1
    //   538: ifnonnull +292 -> 830
    //   541: aload_1
    //   542: astore 4
    //   544: aload 6
    //   546: lload_2
    //   547: invokevirtual 178	org/apache/commons/net/ftp/FTPClient:setRestartOffset	(J)V
    //   550: aload_1
    //   551: astore 4
    //   553: aload 6
    //   555: aload 9
    //   557: invokestatic 185	com/estrongs/android/util/am:bk	(Ljava/lang/String;)Ljava/lang/String;
    //   560: invokevirtual 58	org/apache/commons/net/ftp/FTPClient:changeWorkingDirectory	(Ljava/lang/String;)Z
    //   563: pop
    //   564: aload_1
    //   565: astore 4
    //   567: aload 6
    //   569: aload 9
    //   571: invokestatic 187	com/estrongs/android/util/am:d	(Ljava/lang/String;)Ljava/lang/String;
    //   574: invokevirtual 182	org/apache/commons/net/ftp/FTPClient:retrieveFileStream	(Ljava/lang/String;)Ljava/io/InputStream;
    //   577: astore_1
    //   578: new 189	com/estrongs/old/fs/impl/a/b
    //   581: dup
    //   582: aload_1
    //   583: aload 6
    //   585: invokespecial 192	com/estrongs/old/fs/impl/a/b:<init>	(Ljava/io/InputStream;Lorg/apache/commons/net/ftp/FTPClient;)V
    //   588: astore 4
    //   590: aload 4
    //   592: areturn
    //   593: astore 4
    //   595: aload_1
    //   596: areturn
    //   597: astore 5
    //   599: aconst_null
    //   600: astore_1
    //   601: aconst_null
    //   602: astore 6
    //   604: aload_1
    //   605: astore 7
    //   607: new 127	com/estrongs/fs/FileSystemException
    //   610: dup
    //   611: aload 5
    //   613: invokespecial 130	com/estrongs/fs/FileSystemException:<init>	(Ljava/lang/Throwable;)V
    //   616: athrow
    //   617: astore 4
    //   619: aload 7
    //   621: astore_1
    //   622: aload_1
    //   623: ifnonnull +95 -> 718
    //   626: aload 6
    //   628: ifnull +14 -> 642
    //   631: aload 6
    //   633: invokevirtual 44	org/apache/commons/net/ftp/FTPClient:logout	()Z
    //   636: pop
    //   637: aload 6
    //   639: invokevirtual 47	org/apache/commons/net/ftp/FTPClient:disconnect	()V
    //   642: aload_0
    //   643: aload 10
    //   645: iconst_1
    //   646: invokevirtual 174	com/estrongs/old/fs/impl/a/c:a	(Ljava/lang/String;Z)Lorg/apache/commons/net/ftp/FTPClient;
    //   649: astore 6
    //   651: aload 6
    //   653: ifnull +65 -> 718
    //   656: aload 6
    //   658: lload_2
    //   659: invokevirtual 178	org/apache/commons/net/ftp/FTPClient:setRestartOffset	(J)V
    //   662: aload 6
    //   664: aload 9
    //   666: invokevirtual 182	org/apache/commons/net/ftp/FTPClient:retrieveFileStream	(Ljava/lang/String;)Ljava/io/InputStream;
    //   669: astore 5
    //   671: aload 5
    //   673: astore_1
    //   674: aload 5
    //   676: ifnonnull +31 -> 707
    //   679: aload 6
    //   681: lload_2
    //   682: invokevirtual 178	org/apache/commons/net/ftp/FTPClient:setRestartOffset	(J)V
    //   685: aload 6
    //   687: aload 9
    //   689: invokestatic 185	com/estrongs/android/util/am:bk	(Ljava/lang/String;)Ljava/lang/String;
    //   692: invokevirtual 58	org/apache/commons/net/ftp/FTPClient:changeWorkingDirectory	(Ljava/lang/String;)Z
    //   695: pop
    //   696: aload 6
    //   698: aload 9
    //   700: invokestatic 187	com/estrongs/android/util/am:d	(Ljava/lang/String;)Ljava/lang/String;
    //   703: invokevirtual 182	org/apache/commons/net/ftp/FTPClient:retrieveFileStream	(Ljava/lang/String;)Ljava/io/InputStream;
    //   706: astore_1
    //   707: new 189	com/estrongs/old/fs/impl/a/b
    //   710: dup
    //   711: aload_1
    //   712: aload 6
    //   714: invokespecial 192	com/estrongs/old/fs/impl/a/b:<init>	(Ljava/io/InputStream;Lorg/apache/commons/net/ftp/FTPClient;)V
    //   717: pop
    //   718: aload 4
    //   720: athrow
    //   721: astore_1
    //   722: aload 4
    //   724: areturn
    //   725: astore_1
    //   726: goto -8 -> 718
    //   729: astore 4
    //   731: aconst_null
    //   732: astore_1
    //   733: aconst_null
    //   734: astore 6
    //   736: goto -114 -> 622
    //   739: astore 4
    //   741: aconst_null
    //   742: astore 5
    //   744: aload_1
    //   745: astore 6
    //   747: aload 5
    //   749: astore_1
    //   750: goto -128 -> 622
    //   753: astore 4
    //   755: aload 6
    //   757: astore 5
    //   759: aload_1
    //   760: astore 6
    //   762: aload 5
    //   764: astore_1
    //   765: goto -143 -> 622
    //   768: astore 5
    //   770: aconst_null
    //   771: astore 4
    //   773: aload_1
    //   774: astore 6
    //   776: aload 4
    //   778: astore_1
    //   779: goto -175 -> 604
    //   782: astore 5
    //   784: aload_1
    //   785: astore 6
    //   787: aload 7
    //   789: astore_1
    //   790: goto -186 -> 604
    //   793: astore 5
    //   795: aload_1
    //   796: astore 6
    //   798: aload 4
    //   800: astore_1
    //   801: goto -197 -> 604
    //   804: astore 4
    //   806: aload_1
    //   807: areturn
    //   808: astore_1
    //   809: aconst_null
    //   810: astore 6
    //   812: aload 5
    //   814: astore 4
    //   816: goto -514 -> 302
    //   819: astore 5
    //   821: aload_1
    //   822: astore 6
    //   824: goto -522 -> 302
    //   827: astore_1
    //   828: aconst_null
    //   829: areturn
    //   830: goto -252 -> 578
    //   833: aload 4
    //   835: astore_1
    //   836: goto -415 -> 421
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	839	0	this	c
    //   0	839	1	paramString	String
    //   0	839	2	paramLong	long
    //   7	273	4	localInputStream1	InputStream
    //   293	1	4	localFTPConnectionClosedException1	FTPConnectionClosedException
    //   300	134	4	localObject1	Object
    //   436	1	4	localThrowable1	Throwable
    //   442	149	4	localObject2	Object
    //   593	1	4	localThrowable2	Throwable
    //   617	106	4	localInputStream2	InputStream
    //   729	1	4	localObject3	Object
    //   739	1	4	localObject4	Object
    //   753	1	4	localObject5	Object
    //   771	28	4	localObject6	Object
    //   804	1	4	localThrowable3	Throwable
    //   814	20	4	localIOException1	IOException
    //   4	505	5	localObject7	Object
    //   597	15	5	localIOException2	IOException
    //   669	94	5	localObject8	Object
    //   768	1	5	localIOException3	IOException
    //   782	1	5	localIOException4	IOException
    //   793	20	5	localIOException5	IOException
    //   819	1	5	localFTPConnectionClosedException2	FTPConnectionClosedException
    //   1	822	6	localObject9	Object
    //   210	578	7	localObject10	Object
    //   461	65	8	localb	b
    //   19	680	9	str1	String
    //   13	631	10	str2	String
    // Exception table:
    //   from	to	target	type
    //   145	150	293	org/apache/commons/net/ftp/FTPConnectionClosedException
    //   154	159	293	org/apache/commons/net/ftp/FTPConnectionClosedException
    //   163	168	293	org/apache/commons/net/ftp/FTPConnectionClosedException
    //   172	179	293	org/apache/commons/net/ftp/FTPConnectionClosedException
    //   183	191	293	org/apache/commons/net/ftp/FTPConnectionClosedException
    //   212	217	293	org/apache/commons/net/ftp/FTPConnectionClosedException
    //   229	239	293	org/apache/commons/net/ftp/FTPConnectionClosedException
    //   251	262	293	org/apache/commons/net/ftp/FTPConnectionClosedException
    //   283	293	293	org/apache/commons/net/ftp/FTPConnectionClosedException
    //   421	433	436	java/lang/Throwable
    //   578	590	593	java/lang/Throwable
    //   21	29	597	java/io/IOException
    //   451	463	617	finally
    //   607	617	617	finally
    //   480	485	721	java/lang/Throwable
    //   489	493	721	java/lang/Throwable
    //   497	506	721	java/lang/Throwable
    //   519	525	721	java/lang/Throwable
    //   529	537	721	java/lang/Throwable
    //   544	550	721	java/lang/Throwable
    //   553	564	721	java/lang/Throwable
    //   567	578	721	java/lang/Throwable
    //   631	642	725	java/lang/Throwable
    //   642	651	725	java/lang/Throwable
    //   656	671	725	java/lang/Throwable
    //   679	707	725	java/lang/Throwable
    //   707	718	725	java/lang/Throwable
    //   21	29	729	finally
    //   145	150	739	finally
    //   154	159	739	finally
    //   163	168	739	finally
    //   172	179	739	finally
    //   183	191	739	finally
    //   212	217	753	finally
    //   229	239	753	finally
    //   251	262	753	finally
    //   283	293	753	finally
    //   145	150	768	java/io/IOException
    //   154	159	768	java/io/IOException
    //   163	168	768	java/io/IOException
    //   172	179	768	java/io/IOException
    //   183	191	768	java/io/IOException
    //   212	217	782	java/io/IOException
    //   229	239	782	java/io/IOException
    //   251	262	782	java/io/IOException
    //   283	293	782	java/io/IOException
    //   451	463	793	java/io/IOException
    //   319	325	804	java/lang/Throwable
    //   328	333	804	java/lang/Throwable
    //   336	345	804	java/lang/Throwable
    //   357	363	804	java/lang/Throwable
    //   366	375	804	java/lang/Throwable
    //   383	389	804	java/lang/Throwable
    //   392	403	804	java/lang/Throwable
    //   406	418	804	java/lang/Throwable
    //   21	29	808	org/apache/commons/net/ftp/FTPConnectionClosedException
    //   451	463	819	org/apache/commons/net/ftp/FTPConnectionClosedException
    //   45	54	827	java/lang/Throwable
    //   54	63	827	java/lang/Throwable
    //   72	87	827	java/lang/Throwable
    //   95	123	827	java/lang/Throwable
    //   123	134	827	java/lang/Throwable
  }
  
  public List<h> a(String paramString, i parami)
  {
    Object localObject1 = null;
    LinkedList localLinkedList = new LinkedList();
    com.estrongs.a.a locala = com.estrongs.a.a.getCurrentTask();
    for (;;)
    {
      try
      {
        localFTPClient = a(am.h(paramString), true);
        if (localFTPClient != null) {
          continue;
        }
        localObject1 = localFTPClient;
        try
        {
          throw new GeneralException(GeneralException.ERROR_CODE.ERROR_AUTHORIZATION);
        }
        catch (Throwable parami)
        {
          paramString = localFTPClient;
        }
      }
      catch (Throwable parami)
      {
        FTPClient localFTPClient;
        boolean bool;
        FTPFile[] arrayOfFTPFile;
        Object localObject3;
        int k;
        int i;
        FTPFile localFTPFile;
        int j;
        paramString = null;
        continue;
        Object localObject2 = localObject3;
        continue;
      }
      finally
      {
        continue;
      }
      try
      {
        throw new FileSystemException(parami);
      }
      finally
      {
        localObject1 = paramString;
      }
    }
    if (localObject1 != null) {
      a((FTPClient)localObject1);
    }
    throw paramString;
    if (locala != null)
    {
      localObject1 = localFTPClient;
      bool = locala.taskStopped();
      if (bool)
      {
        if (localFTPClient != null) {
          a(localFTPClient);
        }
        return localLinkedList;
      }
    }
    localObject1 = localFTPClient;
    localFTPClient.changeWorkingDirectory(am.i(paramString));
    localObject1 = localFTPClient;
    if (localFTPClient.getReplyCode() == 550)
    {
      localObject1 = localFTPClient;
      throw new IOException("550");
    }
    localObject1 = localFTPClient;
    arrayOfFTPFile = localFTPClient.initiateListParsing(".").getFiles();
    if (arrayOfFTPFile != null)
    {
      localObject1 = localFTPClient;
      if (arrayOfFTPFile.length != 0)
      {
        localObject1 = localFTPClient;
        if (arrayOfFTPFile.length != 1) {
          break label771;
        }
        localObject1 = localFTPClient;
        if (!arrayOfFTPFile[0].getName().equals(".")) {
          break label771;
        }
      }
    }
    localObject1 = localFTPClient;
    arrayOfFTPFile = localFTPClient.listFiles();
    localObject2 = "UTF-8";
    localObject1 = localFTPClient;
    localObject3 = (TypedMap)d.get(am.h(paramString));
    if (localObject3 != null)
    {
      localObject1 = localFTPClient;
      localObject2 = ((TypedMap)localObject3).getString("encode", "UTF-8");
    }
    localObject1 = localFTPClient;
    if (com.estrongs.android.util.f.a[0].equals(localObject2))
    {
      localObject1 = localFTPClient;
      if (!"UTF-8".equals(localFTPClient.getControlEncoding()))
      {
        localObject1 = localFTPClient;
        ((TypedMap)localObject3).put("detectedEncoding", localFTPClient.getControlEncoding());
      }
    }
    if (arrayOfFTPFile != null)
    {
      localObject1 = localFTPClient;
      k = arrayOfFTPFile.length;
      i = 0;
      localObject2 = paramString;
      if (i < k) {}
    }
    else
    {
      if (localFTPClient != null) {
        a(localFTPClient);
      }
      return localLinkedList;
    }
    localFTPFile = arrayOfFTPFile[i];
    if (locala != null)
    {
      localObject1 = localFTPClient;
      bool = locala.taskStopped();
      if (bool)
      {
        if (localFTPClient != null) {
          a(localFTPClient);
        }
        return localLinkedList;
      }
    }
    if (localFTPFile == null) {}
    for (;;)
    {
      i += 1;
      break;
      paramString = (String)localObject2;
      localObject1 = localFTPClient;
      if (!((String)localObject2).endsWith("/"))
      {
        localObject1 = localFTPClient;
        paramString = localObject2 + "/";
      }
      localObject1 = localFTPClient;
      localObject3 = localFTPFile.getName();
      localObject2 = paramString;
      if (localObject3 != null)
      {
        localObject2 = paramString;
        localObject1 = localFTPClient;
        if (!((String)localObject3).equals("."))
        {
          localObject2 = paramString;
          localObject1 = localFTPClient;
          if (!((String)localObject3).equals(".."))
          {
            localObject1 = localFTPClient;
            if (!localFTPFile.isDirectory()) {
              break label764;
            }
            localObject1 = localFTPClient;
            if (((String)localObject3).endsWith("/")) {
              break label764;
            }
            localObject1 = localFTPClient;
            localObject2 = localObject3 + "/";
            localObject3 = null;
            localObject1 = localFTPClient;
            if (localFTPFile.isSymbolicLink())
            {
              localObject1 = localFTPClient;
              localObject3 = localFTPFile.getLink();
              if (localObject3 == null) {
                break label701;
              }
              localObject1 = localFTPClient;
              if (!((String)localObject3).endsWith("/")) {
                break label701;
              }
              localObject1 = localFTPClient;
              localFTPFile.setType(1);
            }
            localObject1 = localFTPClient;
            localObject3 = new a(localFTPFile, paramString + (String)localObject2, (String)localObject3);
            localObject2 = paramString;
            if (parami != null)
            {
              localObject2 = paramString;
              localObject1 = localFTPClient;
              if (parami.a((h)localObject3))
              {
                localObject1 = localFTPClient;
                localLinkedList.add(localObject3);
                localObject2 = paramString;
              }
            }
          }
        }
      }
    }
    label701:
    localObject1 = localFTPClient;
    if (localFTPClient.changeWorkingDirectory(am.i(paramString + (String)localObject3))) {}
    for (j = 1;; j = 0)
    {
      localObject1 = localFTPClient;
      localFTPFile.setType(j);
      break;
    }
  }
  
  /* Error */
  public FTPClient a(String paramString, boolean paramBoolean)
  {
    // Byte code:
    //   0: aload_1
    //   1: invokestatic 295	com/estrongs/android/util/am:y	(Ljava/lang/String;)Ljava/lang/String;
    //   4: astore 13
    //   6: aload_1
    //   7: invokestatic 298	com/estrongs/android/util/am:A	(Ljava/lang/String;)Ljava/lang/String;
    //   10: astore 14
    //   12: aload_1
    //   13: invokestatic 300	com/estrongs/android/util/am:a	(Ljava/lang/String;)Ljava/lang/String;
    //   16: astore 16
    //   18: aload_1
    //   19: invokestatic 303	com/estrongs/android/util/am:w	(Ljava/lang/String;)Ljava/lang/String;
    //   22: astore 6
    //   24: aload_1
    //   25: invokestatic 306	com/estrongs/android/util/am:k	(Ljava/lang/String;)Ljava/lang/String;
    //   28: astore 15
    //   30: aload_0
    //   31: getfield 32	com/estrongs/old/fs/impl/a/c:d	Ljava/util/HashMap;
    //   34: aload_1
    //   35: invokestatic 168	com/estrongs/android/util/am:h	(Ljava/lang/String;)Ljava/lang/String;
    //   38: invokevirtual 136	java/util/HashMap:get	(Ljava/lang/Object;)Ljava/lang/Object;
    //   41: checkcast 241	com/estrongs/android/util/TypedMap
    //   44: astore 17
    //   46: aload 17
    //   48: ifnull +1191 -> 1239
    //   51: aload 17
    //   53: ldc_w 308
    //   56: iconst_1
    //   57: invokevirtual 312	com/estrongs/android/util/TypedMap:getBoolean	(Ljava/lang/String;Z)Z
    //   60: istore_2
    //   61: aload 17
    //   63: ldc -13
    //   65: ldc -17
    //   67: invokevirtual 247	com/estrongs/android/util/TypedMap:getString	(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    //   70: astore 9
    //   72: aload_1
    //   73: invokestatic 314	com/estrongs/android/util/am:l	(Ljava/lang/String;)Z
    //   76: istore 4
    //   78: aload 6
    //   80: astore 7
    //   82: aload 6
    //   84: ifnonnull +13 -> 97
    //   87: iload 4
    //   89: ifeq +336 -> 425
    //   92: ldc_w 316
    //   95: astore 7
    //   97: getstatic 28	com/estrongs/old/fs/impl/a/c:c	Ljava/util/HashMap;
    //   100: astore 8
    //   102: aload 8
    //   104: monitorenter
    //   105: getstatic 28	com/estrongs/old/fs/impl/a/c:c	Ljava/util/HashMap;
    //   108: new 90	java/lang/StringBuilder
    //   111: dup
    //   112: aload 13
    //   114: invokestatic 115	java/lang/String:valueOf	(Ljava/lang/Object;)Ljava/lang/String;
    //   117: invokespecial 95	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   120: ldc_w 318
    //   123: invokevirtual 99	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   126: aload 16
    //   128: invokevirtual 99	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   131: ldc_w 318
    //   134: invokevirtual 99	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   137: aload 7
    //   139: invokevirtual 99	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   142: invokevirtual 102	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   145: invokevirtual 136	java/util/HashMap:get	(Ljava/lang/Object;)Ljava/lang/Object;
    //   148: checkcast 138	java/util/ArrayList
    //   151: astore 6
    //   153: aload 6
    //   155: ifnonnull +1081 -> 1236
    //   158: new 138	java/util/ArrayList
    //   161: dup
    //   162: invokespecial 142	java/util/ArrayList:<init>	()V
    //   165: astore 6
    //   167: getstatic 28	com/estrongs/old/fs/impl/a/c:c	Ljava/util/HashMap;
    //   170: new 90	java/lang/StringBuilder
    //   173: dup
    //   174: aload 13
    //   176: invokestatic 115	java/lang/String:valueOf	(Ljava/lang/Object;)Ljava/lang/String;
    //   179: invokespecial 95	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   182: ldc_w 318
    //   185: invokevirtual 99	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   188: aload 16
    //   190: invokevirtual 99	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   193: ldc_w 318
    //   196: invokevirtual 99	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   199: aload 7
    //   201: invokevirtual 99	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   204: invokevirtual 102	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   207: aload 6
    //   209: invokevirtual 146	java/util/HashMap:put	(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    //   212: pop
    //   213: aload 8
    //   215: monitorexit
    //   216: aload 6
    //   218: invokevirtual 321	java/util/ArrayList:size	()I
    //   221: ifgt +288 -> 509
    //   224: new 323	com/estrongs/old/fs/impl/a/g
    //   227: dup
    //   228: aconst_null
    //   229: invokespecial 326	com/estrongs/old/fs/impl/a/g:<init>	(Lcom/estrongs/old/fs/impl/a/g;)V
    //   232: astore 8
    //   234: iload 4
    //   236: ifeq +674 -> 910
    //   239: aload_1
    //   240: ldc_w 328
    //   243: invokevirtual 331	java/lang/String:startsWith	(Ljava/lang/String;)Z
    //   246: istore 5
    //   248: new 333	com/estrongs/old/fs/impl/a/f
    //   251: dup
    //   252: new 90	java/lang/StringBuilder
    //   255: dup
    //   256: aload 13
    //   258: invokestatic 115	java/lang/String:valueOf	(Ljava/lang/Object;)Ljava/lang/String;
    //   261: invokespecial 95	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   264: ldc_w 318
    //   267: invokevirtual 99	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   270: aload 16
    //   272: invokevirtual 99	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   275: ldc_w 318
    //   278: invokevirtual 99	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   281: aload 7
    //   283: invokevirtual 99	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   286: invokevirtual 102	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   289: aload 8
    //   291: iload 5
    //   293: invokespecial 336	com/estrongs/old/fs/impl/a/f:<init>	(Ljava/lang/String;Lcom/estrongs/old/fs/impl/a/g;Z)V
    //   296: astore_1
    //   297: aload_1
    //   298: invokestatic 342	org/apache/commons/net/util/TrustManagerUtils:getAcceptAllTrustManager	()Ljavax/net/ssl/X509TrustManager;
    //   301: invokevirtual 348	org/apache/commons/net/ftp/FTPSClient:setTrustManager	(Ljavax/net/ssl/TrustManager;)V
    //   304: aload_1
    //   305: iconst_1
    //   306: invokevirtual 351	org/apache/commons/net/ftp/FTPSClient:setNeedClientAuth	(Z)V
    //   309: aload_1
    //   310: iconst_1
    //   311: invokevirtual 354	org/apache/commons/net/ftp/FTPClient:setListHiddenFiles	(Z)V
    //   314: aload 8
    //   316: aload_1
    //   317: putfield 357	com/estrongs/old/fs/impl/a/g:a	Lorg/apache/commons/net/ftp/FTPClient;
    //   320: aload 8
    //   322: aload 9
    //   324: putfield 360	com/estrongs/old/fs/impl/a/g:b	Ljava/lang/String;
    //   327: getstatic 252	com/estrongs/android/util/f:a	[Ljava/lang/String;
    //   330: iconst_0
    //   331: aaload
    //   332: aload 9
    //   334: invokevirtual 76	java/lang/String:equals	(Ljava/lang/Object;)Z
    //   337: ifeq +27 -> 364
    //   340: aload 17
    //   342: ldc_w 257
    //   345: invokevirtual 362	com/estrongs/android/util/TypedMap:getString	(Ljava/lang/String;)Ljava/lang/String;
    //   348: ifnull +16 -> 364
    //   351: aload 8
    //   353: aload 17
    //   355: ldc_w 257
    //   358: invokevirtual 362	com/estrongs/android/util/TypedMap:getString	(Ljava/lang/String;)Ljava/lang/String;
    //   361: putfield 360	com/estrongs/old/fs/impl/a/g:b	Ljava/lang/String;
    //   364: aload 8
    //   366: getfield 357	com/estrongs/old/fs/impl/a/g:a	Lorg/apache/commons/net/ftp/FTPClient;
    //   369: aload 8
    //   371: getfield 360	com/estrongs/old/fs/impl/a/g:b	Ljava/lang/String;
    //   374: invokevirtual 365	org/apache/commons/net/ftp/FTPClient:setControlEncoding	(Ljava/lang/String;)V
    //   377: aload_1
    //   378: ldc_w 366
    //   381: invokevirtual 369	org/apache/commons/net/ftp/FTPClient:setConnectTimeout	(I)V
    //   384: iconst_m1
    //   385: istore_3
    //   386: aload 7
    //   388: ifnull +9 -> 397
    //   391: aload 7
    //   393: invokestatic 375	java/lang/Integer:parseInt	(Ljava/lang/String;)I
    //   396: istore_3
    //   397: iload_3
    //   398: iconst_m1
    //   399: if_icmpeq +561 -> 960
    //   402: aload_1
    //   403: aload 16
    //   405: iload_3
    //   406: invokevirtual 379	org/apache/commons/net/ftp/FTPClient:connect	(Ljava/lang/String;I)V
    //   409: aload_1
    //   410: invokevirtual 226	org/apache/commons/net/ftp/FTPClient:getReplyCode	()I
    //   413: invokestatic 384	org/apache/commons/net/ftp/FTPReply:isPositiveCompletion	(I)Z
    //   416: ifne +553 -> 969
    //   419: aload_1
    //   420: invokevirtual 47	org/apache/commons/net/ftp/FTPClient:disconnect	()V
    //   423: aconst_null
    //   424: areturn
    //   425: ldc_w 386
    //   428: astore 7
    //   430: goto -333 -> 97
    //   433: astore_1
    //   434: aload 8
    //   436: monitorexit
    //   437: aload_1
    //   438: athrow
    //   439: aconst_null
    //   440: astore 6
    //   442: astore_1
    //   443: aload_1
    //   444: invokevirtual 389	java/lang/Exception:printStackTrace	()V
    //   447: aload 6
    //   449: ifnull +51 -> 500
    //   452: aload 6
    //   454: getfield 357	com/estrongs/old/fs/impl/a/g:a	Lorg/apache/commons/net/ftp/FTPClient;
    //   457: ifnull +43 -> 500
    //   460: aload 6
    //   462: getfield 357	com/estrongs/old/fs/impl/a/g:a	Lorg/apache/commons/net/ftp/FTPClient;
    //   465: instanceof 391
    //   468: ifeq +689 -> 1157
    //   471: aload 6
    //   473: getfield 357	com/estrongs/old/fs/impl/a/g:a	Lorg/apache/commons/net/ftp/FTPClient;
    //   476: checkcast 391	com/estrongs/old/fs/impl/a/d
    //   479: iconst_1
    //   480: putfield 392	com/estrongs/old/fs/impl/a/d:a	Z
    //   483: aload 6
    //   485: getfield 357	com/estrongs/old/fs/impl/a/g:a	Lorg/apache/commons/net/ftp/FTPClient;
    //   488: invokevirtual 44	org/apache/commons/net/ftp/FTPClient:logout	()Z
    //   491: pop
    //   492: aload 6
    //   494: getfield 357	com/estrongs/old/fs/impl/a/g:a	Lorg/apache/commons/net/ftp/FTPClient;
    //   497: invokevirtual 47	org/apache/commons/net/ftp/FTPClient:disconnect	()V
    //   500: new 127	com/estrongs/fs/FileSystemException
    //   503: dup
    //   504: aload_1
    //   505: invokespecial 130	com/estrongs/fs/FileSystemException:<init>	(Ljava/lang/Throwable;)V
    //   508: athrow
    //   509: aload 6
    //   511: monitorenter
    //   512: aload 6
    //   514: iconst_0
    //   515: invokevirtual 396	java/util/ArrayList:remove	(I)Ljava/lang/Object;
    //   518: checkcast 323	com/estrongs/old/fs/impl/a/g
    //   521: astore 10
    //   523: aload 10
    //   525: astore 11
    //   527: aload 6
    //   529: astore 12
    //   531: aload 6
    //   533: monitorexit
    //   534: aload 10
    //   536: astore 8
    //   538: aload 10
    //   540: getfield 357	com/estrongs/old/fs/impl/a/g:a	Lorg/apache/commons/net/ftp/FTPClient;
    //   543: invokevirtual 399	org/apache/commons/net/ftp/FTPClient:isConnected	()Z
    //   546: ifeq +261 -> 807
    //   549: aload 10
    //   551: astore 8
    //   553: aload 10
    //   555: getfield 360	com/estrongs/old/fs/impl/a/g:b	Ljava/lang/String;
    //   558: aload 9
    //   560: invokevirtual 76	java/lang/String:equals	(Ljava/lang/Object;)Z
    //   563: ifne +31 -> 594
    //   566: aload 10
    //   568: astore 8
    //   570: aload 10
    //   572: aload 9
    //   574: putfield 360	com/estrongs/old/fs/impl/a/g:b	Ljava/lang/String;
    //   577: aload 10
    //   579: astore 8
    //   581: aload 10
    //   583: getfield 357	com/estrongs/old/fs/impl/a/g:a	Lorg/apache/commons/net/ftp/FTPClient;
    //   586: aload 10
    //   588: getfield 360	com/estrongs/old/fs/impl/a/g:b	Ljava/lang/String;
    //   591: invokevirtual 365	org/apache/commons/net/ftp/FTPClient:setControlEncoding	(Ljava/lang/String;)V
    //   594: aload 10
    //   596: astore 8
    //   598: aload 10
    //   600: getfield 357	com/estrongs/old/fs/impl/a/g:a	Lorg/apache/commons/net/ftp/FTPClient;
    //   603: aload 15
    //   605: invokevirtual 58	org/apache/commons/net/ftp/FTPClient:changeWorkingDirectory	(Ljava/lang/String;)Z
    //   608: pop
    //   609: aload 10
    //   611: astore 8
    //   613: getstatic 252	com/estrongs/android/util/f:a	[Ljava/lang/String;
    //   616: iconst_0
    //   617: aaload
    //   618: aload 9
    //   620: invokevirtual 76	java/lang/String:equals	(Ljava/lang/Object;)Z
    //   623: ifeq +64 -> 687
    //   626: aload 10
    //   628: astore 8
    //   630: aload 17
    //   632: ldc_w 257
    //   635: invokevirtual 362	com/estrongs/android/util/TypedMap:getString	(Ljava/lang/String;)Ljava/lang/String;
    //   638: ifnull +49 -> 687
    //   641: aload 10
    //   643: astore 8
    //   645: aload 10
    //   647: getfield 357	com/estrongs/old/fs/impl/a/g:a	Lorg/apache/commons/net/ftp/FTPClient;
    //   650: invokevirtual 255	org/apache/commons/net/ftp/FTPClient:getControlEncoding	()Ljava/lang/String;
    //   653: aload 17
    //   655: ldc_w 257
    //   658: invokevirtual 362	com/estrongs/android/util/TypedMap:getString	(Ljava/lang/String;)Ljava/lang/String;
    //   661: invokevirtual 76	java/lang/String:equals	(Ljava/lang/Object;)Z
    //   664: ifne +23 -> 687
    //   667: aload 10
    //   669: astore 8
    //   671: aload 10
    //   673: getfield 357	com/estrongs/old/fs/impl/a/g:a	Lorg/apache/commons/net/ftp/FTPClient;
    //   676: aload 17
    //   678: ldc_w 257
    //   681: invokevirtual 362	com/estrongs/android/util/TypedMap:getString	(Ljava/lang/String;)Ljava/lang/String;
    //   684: invokevirtual 365	org/apache/commons/net/ftp/FTPClient:setControlEncoding	(Ljava/lang/String;)V
    //   687: iload_2
    //   688: ifeq +76 -> 764
    //   691: aload 10
    //   693: astore 8
    //   695: aload 10
    //   697: getfield 401	com/estrongs/old/fs/impl/a/g:c	Z
    //   700: ifne +64 -> 764
    //   703: aload 10
    //   705: astore 8
    //   707: aload 10
    //   709: getfield 357	com/estrongs/old/fs/impl/a/g:a	Lorg/apache/commons/net/ftp/FTPClient;
    //   712: invokevirtual 404	org/apache/commons/net/ftp/FTPClient:enterLocalPassiveMode	()V
    //   715: aload 10
    //   717: astore 8
    //   719: aload 10
    //   721: iconst_1
    //   722: putfield 401	com/estrongs/old/fs/impl/a/g:c	Z
    //   725: aload 10
    //   727: astore 8
    //   729: aload 10
    //   731: getfield 357	com/estrongs/old/fs/impl/a/g:a	Lorg/apache/commons/net/ftp/FTPClient;
    //   734: astore 11
    //   736: aload 11
    //   738: areturn
    //   739: astore_1
    //   740: aconst_null
    //   741: astore 8
    //   743: aload 8
    //   745: astore 11
    //   747: aload 6
    //   749: astore 12
    //   751: aload 6
    //   753: monitorexit
    //   754: aload_1
    //   755: athrow
    //   756: astore_1
    //   757: aload 8
    //   759: astore 6
    //   761: goto -318 -> 443
    //   764: iload_2
    //   765: ifne -40 -> 725
    //   768: aload 10
    //   770: astore 8
    //   772: aload 10
    //   774: getfield 401	com/estrongs/old/fs/impl/a/g:c	Z
    //   777: ifeq -52 -> 725
    //   780: aload 10
    //   782: astore 8
    //   784: aload 10
    //   786: getfield 357	com/estrongs/old/fs/impl/a/g:a	Lorg/apache/commons/net/ftp/FTPClient;
    //   789: invokevirtual 407	org/apache/commons/net/ftp/FTPClient:enterLocalActiveMode	()V
    //   792: aload 10
    //   794: astore 8
    //   796: aload 10
    //   798: iconst_0
    //   799: putfield 401	com/estrongs/old/fs/impl/a/g:c	Z
    //   802: goto -77 -> 725
    //   805: astore 8
    //   807: aload 10
    //   809: astore 8
    //   811: aload 10
    //   813: getfield 357	com/estrongs/old/fs/impl/a/g:a	Lorg/apache/commons/net/ftp/FTPClient;
    //   816: instanceof 391
    //   819: ifeq +57 -> 876
    //   822: aload 10
    //   824: astore 8
    //   826: aload 10
    //   828: getfield 357	com/estrongs/old/fs/impl/a/g:a	Lorg/apache/commons/net/ftp/FTPClient;
    //   831: checkcast 391	com/estrongs/old/fs/impl/a/d
    //   834: iconst_1
    //   835: putfield 392	com/estrongs/old/fs/impl/a/d:a	Z
    //   838: aload 10
    //   840: astore 8
    //   842: aload 10
    //   844: getfield 357	com/estrongs/old/fs/impl/a/g:a	Lorg/apache/commons/net/ftp/FTPClient;
    //   847: invokevirtual 44	org/apache/commons/net/ftp/FTPClient:logout	()Z
    //   850: pop
    //   851: aload 10
    //   853: astore 8
    //   855: aload 10
    //   857: getfield 357	com/estrongs/old/fs/impl/a/g:a	Lorg/apache/commons/net/ftp/FTPClient;
    //   860: invokevirtual 47	org/apache/commons/net/ftp/FTPClient:disconnect	()V
    //   863: aload 10
    //   865: astore 8
    //   867: aload 10
    //   869: aconst_null
    //   870: putfield 357	com/estrongs/old/fs/impl/a/g:a	Lorg/apache/commons/net/ftp/FTPClient;
    //   873: goto -657 -> 216
    //   876: aload 10
    //   878: astore 8
    //   880: aload 10
    //   882: getfield 357	com/estrongs/old/fs/impl/a/g:a	Lorg/apache/commons/net/ftp/FTPClient;
    //   885: instanceof 333
    //   888: ifeq -50 -> 838
    //   891: aload 10
    //   893: astore 8
    //   895: aload 10
    //   897: getfield 357	com/estrongs/old/fs/impl/a/g:a	Lorg/apache/commons/net/ftp/FTPClient;
    //   900: checkcast 333	com/estrongs/old/fs/impl/a/f
    //   903: iconst_1
    //   904: putfield 408	com/estrongs/old/fs/impl/a/f:a	Z
    //   907: goto -69 -> 838
    //   910: new 391	com/estrongs/old/fs/impl/a/d
    //   913: dup
    //   914: new 90	java/lang/StringBuilder
    //   917: dup
    //   918: aload 13
    //   920: invokestatic 115	java/lang/String:valueOf	(Ljava/lang/Object;)Ljava/lang/String;
    //   923: invokespecial 95	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   926: ldc_w 318
    //   929: invokevirtual 99	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   932: aload 16
    //   934: invokevirtual 99	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   937: ldc_w 318
    //   940: invokevirtual 99	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   943: aload 7
    //   945: invokevirtual 99	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   948: invokevirtual 102	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   951: aload 8
    //   953: invokespecial 410	com/estrongs/old/fs/impl/a/d:<init>	(Ljava/lang/String;Lcom/estrongs/old/fs/impl/a/g;)V
    //   956: astore_1
    //   957: goto -648 -> 309
    //   960: aload_1
    //   961: aload 16
    //   963: invokevirtual 412	org/apache/commons/net/ftp/FTPClient:connect	(Ljava/lang/String;)V
    //   966: goto -557 -> 409
    //   969: iload 4
    //   971: ifeq +21 -> 992
    //   974: aload_1
    //   975: checkcast 344	org/apache/commons/net/ftp/FTPSClient
    //   978: lconst_0
    //   979: invokevirtual 415	org/apache/commons/net/ftp/FTPSClient:execPBSZ	(J)V
    //   982: aload_1
    //   983: checkcast 344	org/apache/commons/net/ftp/FTPSClient
    //   986: ldc_w 417
    //   989: invokevirtual 420	org/apache/commons/net/ftp/FTPSClient:execPROT	(Ljava/lang/String;)V
    //   992: aload 13
    //   994: ifnonnull +231 -> 1225
    //   997: ldc_w 422
    //   1000: astore 7
    //   1002: ldc_w 424
    //   1005: astore 6
    //   1007: aload_1
    //   1008: aload 7
    //   1010: aload 6
    //   1012: invokevirtual 428	org/apache/commons/net/ftp/FTPClient:login	(Ljava/lang/String;Ljava/lang/String;)Z
    //   1015: pop
    //   1016: aload_1
    //   1017: invokevirtual 226	org/apache/commons/net/ftp/FTPClient:getReplyCode	()I
    //   1020: istore_3
    //   1021: iload_3
    //   1022: sipush 530
    //   1025: if_icmpne +14 -> 1039
    //   1028: new 430	java/lang/IllegalArgumentException
    //   1031: dup
    //   1032: ldc_w 432
    //   1035: invokespecial 433	java/lang/IllegalArgumentException:<init>	(Ljava/lang/String;)V
    //   1038: athrow
    //   1039: iload_3
    //   1040: invokestatic 384	org/apache/commons/net/ftp/FTPReply:isPositiveCompletion	(I)Z
    //   1043: ifne +47 -> 1090
    //   1046: aload_1
    //   1047: instanceof 391
    //   1050: ifeq +22 -> 1072
    //   1053: aload_1
    //   1054: checkcast 391	com/estrongs/old/fs/impl/a/d
    //   1057: iconst_1
    //   1058: putfield 392	com/estrongs/old/fs/impl/a/d:a	Z
    //   1061: aload_1
    //   1062: invokevirtual 44	org/apache/commons/net/ftp/FTPClient:logout	()Z
    //   1065: pop
    //   1066: aload_1
    //   1067: invokevirtual 47	org/apache/commons/net/ftp/FTPClient:disconnect	()V
    //   1070: aconst_null
    //   1071: areturn
    //   1072: aload_1
    //   1073: instanceof 333
    //   1076: ifeq -15 -> 1061
    //   1079: aload_1
    //   1080: checkcast 333	com/estrongs/old/fs/impl/a/f
    //   1083: iconst_1
    //   1084: putfield 408	com/estrongs/old/fs/impl/a/f:a	Z
    //   1087: goto -26 -> 1061
    //   1090: aload 15
    //   1092: ifnull +19 -> 1111
    //   1095: aload 15
    //   1097: invokevirtual 151	java/lang/String:length	()I
    //   1100: iconst_1
    //   1101: if_icmple +10 -> 1111
    //   1104: aload_1
    //   1105: aload 15
    //   1107: invokevirtual 58	org/apache/commons/net/ftp/FTPClient:changeWorkingDirectory	(Ljava/lang/String;)Z
    //   1110: pop
    //   1111: aload_1
    //   1112: iconst_2
    //   1113: invokevirtual 436	org/apache/commons/net/ftp/FTPClient:setFileType	(I)Z
    //   1116: pop
    //   1117: iload_2
    //   1118: ifeq +26 -> 1144
    //   1121: aload_1
    //   1122: invokevirtual 404	org/apache/commons/net/ftp/FTPClient:enterLocalPassiveMode	()V
    //   1125: aload 8
    //   1127: iconst_1
    //   1128: putfield 401	com/estrongs/old/fs/impl/a/g:c	Z
    //   1131: aload_1
    //   1132: ldc_w 366
    //   1135: invokevirtual 439	org/apache/commons/net/ftp/FTPClient:setDefaultTimeout	(I)V
    //   1138: aload 8
    //   1140: getfield 357	com/estrongs/old/fs/impl/a/g:a	Lorg/apache/commons/net/ftp/FTPClient;
    //   1143: areturn
    //   1144: aload_1
    //   1145: invokevirtual 407	org/apache/commons/net/ftp/FTPClient:enterLocalActiveMode	()V
    //   1148: aload 8
    //   1150: iconst_0
    //   1151: putfield 401	com/estrongs/old/fs/impl/a/g:c	Z
    //   1154: goto -23 -> 1131
    //   1157: aload 6
    //   1159: getfield 357	com/estrongs/old/fs/impl/a/g:a	Lorg/apache/commons/net/ftp/FTPClient;
    //   1162: instanceof 333
    //   1165: ifeq -682 -> 483
    //   1168: aload 6
    //   1170: getfield 357	com/estrongs/old/fs/impl/a/g:a	Lorg/apache/commons/net/ftp/FTPClient;
    //   1173: checkcast 333	com/estrongs/old/fs/impl/a/f
    //   1176: iconst_1
    //   1177: putfield 408	com/estrongs/old/fs/impl/a/f:a	Z
    //   1180: goto -697 -> 483
    //   1183: astore 6
    //   1185: aload 6
    //   1187: invokevirtual 440	java/io/IOException:printStackTrace	()V
    //   1190: goto -690 -> 500
    //   1193: astore 6
    //   1195: goto -203 -> 992
    //   1198: astore 8
    //   1200: goto -337 -> 863
    //   1203: astore 8
    //   1205: goto -354 -> 851
    //   1208: astore 8
    //   1210: goto -403 -> 807
    //   1213: astore_1
    //   1214: aload 11
    //   1216: astore 8
    //   1218: aload 12
    //   1220: astore 6
    //   1222: goto -479 -> 743
    //   1225: aload 14
    //   1227: astore 6
    //   1229: aload 13
    //   1231: astore 7
    //   1233: goto -226 -> 1007
    //   1236: goto -1023 -> 213
    //   1239: ldc -17
    //   1241: astore 9
    //   1243: iconst_1
    //   1244: istore_2
    //   1245: goto -1173 -> 72
    //   1248: astore_1
    //   1249: aload 8
    //   1251: astore 6
    //   1253: goto -810 -> 443
    //   1256: astore 6
    //   1258: iconst_m1
    //   1259: istore_3
    //   1260: goto -863 -> 397
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	1263	0	this	c
    //   0	1263	1	paramString	String
    //   0	1263	2	paramBoolean	boolean
    //   385	875	3	i	int
    //   76	894	4	bool1	boolean
    //   246	46	5	bool2	boolean
    //   22	1147	6	localObject1	Object
    //   1183	3	6	localIOException1	IOException
    //   1193	1	6	localException	Exception
    //   1220	32	6	localObject2	Object
    //   1256	1	6	localNumberFormatException	NumberFormatException
    //   80	1152	7	localObject3	Object
    //   100	695	8	localObject4	Object
    //   805	1	8	localFTPConnectionClosedException	FTPConnectionClosedException
    //   809	340	8	localObject5	Object
    //   1198	1	8	localIOException2	IOException
    //   1203	1	8	localIOException3	IOException
    //   1208	1	8	localIOException4	IOException
    //   1216	34	8	localObject6	Object
    //   70	1172	9	str1	String
    //   521	375	10	localg	g
    //   525	690	11	localObject7	Object
    //   529	690	12	localObject8	Object
    //   4	1226	13	str2	String
    //   10	1216	14	str3	String
    //   28	1078	15	str4	String
    //   16	946	16	str5	String
    //   44	633	17	localTypedMap	TypedMap
    // Exception table:
    //   from	to	target	type
    //   105	153	433	finally
    //   158	213	433	finally
    //   213	216	433	finally
    //   434	437	433	finally
    //   97	105	439	java/lang/Exception
    //   216	234	439	java/lang/Exception
    //   437	439	439	java/lang/Exception
    //   509	512	439	java/lang/Exception
    //   512	523	739	finally
    //   538	549	756	java/lang/Exception
    //   553	566	756	java/lang/Exception
    //   570	577	756	java/lang/Exception
    //   581	594	756	java/lang/Exception
    //   598	609	756	java/lang/Exception
    //   613	626	756	java/lang/Exception
    //   630	641	756	java/lang/Exception
    //   645	667	756	java/lang/Exception
    //   671	687	756	java/lang/Exception
    //   695	703	756	java/lang/Exception
    //   707	715	756	java/lang/Exception
    //   719	725	756	java/lang/Exception
    //   729	736	756	java/lang/Exception
    //   754	756	756	java/lang/Exception
    //   772	780	756	java/lang/Exception
    //   784	792	756	java/lang/Exception
    //   796	802	756	java/lang/Exception
    //   811	822	756	java/lang/Exception
    //   826	838	756	java/lang/Exception
    //   842	851	756	java/lang/Exception
    //   855	863	756	java/lang/Exception
    //   867	873	756	java/lang/Exception
    //   880	891	756	java/lang/Exception
    //   895	907	756	java/lang/Exception
    //   598	609	805	org/apache/commons/net/ftp/FTPConnectionClosedException
    //   613	626	805	org/apache/commons/net/ftp/FTPConnectionClosedException
    //   630	641	805	org/apache/commons/net/ftp/FTPConnectionClosedException
    //   645	667	805	org/apache/commons/net/ftp/FTPConnectionClosedException
    //   671	687	805	org/apache/commons/net/ftp/FTPConnectionClosedException
    //   695	703	805	org/apache/commons/net/ftp/FTPConnectionClosedException
    //   707	715	805	org/apache/commons/net/ftp/FTPConnectionClosedException
    //   719	725	805	org/apache/commons/net/ftp/FTPConnectionClosedException
    //   729	736	805	org/apache/commons/net/ftp/FTPConnectionClosedException
    //   772	780	805	org/apache/commons/net/ftp/FTPConnectionClosedException
    //   784	792	805	org/apache/commons/net/ftp/FTPConnectionClosedException
    //   796	802	805	org/apache/commons/net/ftp/FTPConnectionClosedException
    //   460	483	1183	java/io/IOException
    //   483	500	1183	java/io/IOException
    //   1157	1180	1183	java/io/IOException
    //   974	992	1193	java/lang/Exception
    //   855	863	1198	java/io/IOException
    //   842	851	1203	java/io/IOException
    //   598	609	1208	java/io/IOException
    //   613	626	1208	java/io/IOException
    //   630	641	1208	java/io/IOException
    //   645	667	1208	java/io/IOException
    //   671	687	1208	java/io/IOException
    //   695	703	1208	java/io/IOException
    //   707	715	1208	java/io/IOException
    //   719	725	1208	java/io/IOException
    //   729	736	1208	java/io/IOException
    //   772	780	1208	java/io/IOException
    //   784	792	1208	java/io/IOException
    //   796	802	1208	java/io/IOException
    //   531	534	1213	finally
    //   751	754	1213	finally
    //   239	309	1248	java/lang/Exception
    //   309	364	1248	java/lang/Exception
    //   364	384	1248	java/lang/Exception
    //   391	397	1248	java/lang/Exception
    //   402	409	1248	java/lang/Exception
    //   409	423	1248	java/lang/Exception
    //   910	957	1248	java/lang/Exception
    //   960	966	1248	java/lang/Exception
    //   1007	1021	1248	java/lang/Exception
    //   1028	1039	1248	java/lang/Exception
    //   1039	1061	1248	java/lang/Exception
    //   1061	1070	1248	java/lang/Exception
    //   1072	1087	1248	java/lang/Exception
    //   1095	1111	1248	java/lang/Exception
    //   1111	1117	1248	java/lang/Exception
    //   1121	1131	1248	java/lang/Exception
    //   1131	1144	1248	java/lang/Exception
    //   1144	1154	1248	java/lang/Exception
    //   391	397	1256	java/lang/NumberFormatException
  }
  
  public void a()
  {
    ArrayList localArrayList;
    do
    {
      synchronized (c)
      {
        a = true;
        if (c.size() == 0) {
          return;
        }
        Iterator localIterator = c.entrySet().iterator();
        if (!localIterator.hasNext())
        {
          c.clear();
          return;
        }
      }
      localArrayList = (ArrayList)((Map.Entry)((Iterator)localObject).next()).getValue();
    } while (localArrayList == null);
    int i = 0;
    while (i < localArrayList.size())
    {
      g localg = (g)localArrayList.get(i);
      if ((localg != null) && (a != null) && (a.isConnected()))
      {
        if (!(a instanceof d)) {
          break label174;
        }
        a).a = true;
      }
      try
      {
        label150:
        a.logout();
        try
        {
          a.disconnect();
          i += 1;
          continue;
          label174:
          if (!(a instanceof f)) {
            break label150;
          }
          a).a = true;
        }
        catch (IOException localIOException1)
        {
          for (;;) {}
        }
      }
      catch (IOException localIOException2)
      {
        for (;;) {}
      }
    }
  }
  
  public void a(TypedMap paramTypedMap)
  {
    TypedMap localTypedMap = (TypedMap)d.get(am.h(paramTypedMap.getString("server")));
    if ((localTypedMap != null) && (localTypedMap.getString("detectedEncoding") != null)) {
      paramTypedMap.put("detectedEncoding", localTypedMap.getString("detectedEncoding"));
    }
    d.put(am.h(paramTypedMap.getString("server")), paramTypedMap);
  }
  
  /* Error */
  public void a(String paramString, h paramh)
  {
    // Byte code:
    //   0: aconst_null
    //   1: astore 4
    //   3: aload_0
    //   4: aload_1
    //   5: invokestatic 168	com/estrongs/android/util/am:h	(Ljava/lang/String;)Ljava/lang/String;
    //   8: iconst_1
    //   9: invokevirtual 174	com/estrongs/old/fs/impl/a/c:a	(Ljava/lang/String;Z)Lorg/apache/commons/net/ftp/FTPClient;
    //   12: astore_3
    //   13: aload_3
    //   14: ifnonnull +13 -> 27
    //   17: aload_3
    //   18: ifnull +8 -> 26
    //   21: aload_0
    //   22: aload_3
    //   23: invokespecial 223	com/estrongs/old/fs/impl/a/c:a	(Lorg/apache/commons/net/ftp/FTPClient;)V
    //   26: return
    //   27: aload_3
    //   28: astore 4
    //   30: aload_1
    //   31: invokestatic 171	com/estrongs/android/util/am:i	(Ljava/lang/String;)Ljava/lang/String;
    //   34: astore_1
    //   35: aload_3
    //   36: astore 4
    //   38: new 476	java/text/SimpleDateFormat
    //   41: dup
    //   42: ldc_w 478
    //   45: invokespecial 479	java/text/SimpleDateFormat:<init>	(Ljava/lang/String;)V
    //   48: astore 5
    //   50: aload_3
    //   51: astore 4
    //   53: aload 5
    //   55: ldc_w 481
    //   58: invokestatic 487	java/util/TimeZone:getTimeZone	(Ljava/lang/String;)Ljava/util/TimeZone;
    //   61: invokevirtual 493	java/text/DateFormat:setTimeZone	(Ljava/util/TimeZone;)V
    //   64: aload_3
    //   65: astore 4
    //   67: aload_3
    //   68: aload_1
    //   69: aload 5
    //   71: new 495	java/util/Date
    //   74: dup
    //   75: aload_2
    //   76: invokeinterface 501 1 0
    //   81: invokespecial 503	java/util/Date:<init>	(J)V
    //   84: invokevirtual 507	java/text/DateFormat:format	(Ljava/util/Date;)Ljava/lang/String;
    //   87: invokevirtual 510	org/apache/commons/net/ftp/FTPClient:setModificationTime	(Ljava/lang/String;Ljava/lang/String;)Z
    //   90: pop
    //   91: aload_3
    //   92: ifnull -66 -> 26
    //   95: aload_0
    //   96: aload_3
    //   97: invokespecial 223	com/estrongs/old/fs/impl/a/c:a	(Lorg/apache/commons/net/ftp/FTPClient;)V
    //   100: return
    //   101: astore_1
    //   102: aload 4
    //   104: ifnull -78 -> 26
    //   107: aload_0
    //   108: aload 4
    //   110: invokespecial 223	com/estrongs/old/fs/impl/a/c:a	(Lorg/apache/commons/net/ftp/FTPClient;)V
    //   113: return
    //   114: astore_2
    //   115: aconst_null
    //   116: astore_1
    //   117: new 127	com/estrongs/fs/FileSystemException
    //   120: dup
    //   121: aload_2
    //   122: invokespecial 130	com/estrongs/fs/FileSystemException:<init>	(Ljava/lang/Throwable;)V
    //   125: athrow
    //   126: astore_3
    //   127: aload_1
    //   128: astore_2
    //   129: aload_3
    //   130: astore_1
    //   131: aload_2
    //   132: ifnull +8 -> 140
    //   135: aload_0
    //   136: aload_2
    //   137: invokespecial 223	com/estrongs/old/fs/impl/a/c:a	(Lorg/apache/commons/net/ftp/FTPClient;)V
    //   140: aload_1
    //   141: athrow
    //   142: astore_1
    //   143: aconst_null
    //   144: astore_2
    //   145: goto -14 -> 131
    //   148: astore_1
    //   149: aload_3
    //   150: astore_2
    //   151: goto -20 -> 131
    //   154: astore_2
    //   155: aload_3
    //   156: astore_1
    //   157: goto -40 -> 117
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	160	0	this	c
    //   0	160	1	paramString	String
    //   0	160	2	paramh	h
    //   12	85	3	localFTPClient	FTPClient
    //   126	30	3	localObject1	Object
    //   1	108	4	localObject2	Object
    //   48	22	5	localSimpleDateFormat	java.text.SimpleDateFormat
    // Exception table:
    //   from	to	target	type
    //   3	13	101	org/apache/commons/net/ftp/FTPConnectionClosedException
    //   30	35	101	org/apache/commons/net/ftp/FTPConnectionClosedException
    //   38	50	101	org/apache/commons/net/ftp/FTPConnectionClosedException
    //   53	64	101	org/apache/commons/net/ftp/FTPConnectionClosedException
    //   67	91	101	org/apache/commons/net/ftp/FTPConnectionClosedException
    //   3	13	114	java/io/IOException
    //   117	126	126	finally
    //   3	13	142	finally
    //   30	35	148	finally
    //   38	50	148	finally
    //   53	64	148	finally
    //   67	91	148	finally
    //   30	35	154	java/io/IOException
    //   38	50	154	java/io/IOException
    //   53	64	154	java/io/IOException
    //   67	91	154	java/io/IOException
  }
  
  public boolean a(String paramString)
  {
    boolean bool2 = true;
    boolean bool4 = false;
    boolean bool3 = false;
    Object localObject3 = null;
    Object localObject4 = null;
    Object localObject2 = null;
    boolean bool1 = bool4;
    label55:
    do
    {
      try
      {
        localObject1 = a(am.h(paramString), true);
        if (localObject1 != null) {
          break label55;
        }
        bool2 = bool3;
        if (localObject1 != null)
        {
          a((FTPClient)localObject1);
          bool2 = bool3;
        }
      }
      catch (FTPConnectionClosedException paramString)
      {
        String str;
        paramString = paramString;
        Object localObject1 = localObject2;
        bool2 = bool1;
        return bool1;
      }
      catch (IOException paramString)
      {
        localObject4 = localObject3;
        throw new FileSystemException(paramString);
      }
      finally
      {
        if (localObject4 == null) {
          break label443;
        }
        a((FTPClient)localObject4);
      }
      return bool2;
      bool1 = bool4;
      localObject2 = localObject1;
      localObject3 = localObject1;
      localObject4 = localObject1;
      str = am.i(paramString);
      bool1 = bool4;
      localObject2 = localObject1;
      localObject3 = localObject1;
      localObject4 = localObject1;
      if (!paramString.endsWith("/")) {
        break;
      }
      bool1 = bool4;
      localObject2 = localObject1;
      localObject3 = localObject1;
      localObject4 = localObject1;
      bool2 = ((FTPClient)localObject1).makeDirectory(str);
      bool1 = bool2;
      if (!bool2)
      {
        bool1 = bool2;
        localObject2 = localObject1;
        localObject3 = localObject1;
        localObject4 = localObject1;
        ((FTPClient)localObject1).changeWorkingDirectory(am.bk(str));
        bool1 = bool2;
        localObject2 = localObject1;
        localObject3 = localObject1;
        localObject4 = localObject1;
        bool2 = ((FTPClient)localObject1).makeDirectory(am.d(str));
        bool1 = bool2;
      }
      bool2 = bool1;
    } while (localObject1 == null);
    a((FTPClient)localObject1);
    return bool1;
    bool1 = bool4;
    localObject2 = localObject1;
    localObject3 = localObject1;
    localObject4 = localObject1;
    paramString = str.substring(0, str.lastIndexOf("/") + 1);
    bool1 = bool4;
    localObject2 = localObject1;
    localObject3 = localObject1;
    localObject4 = localObject1;
    str = str.substring(paramString.length(), str.length());
    bool1 = bool4;
    localObject2 = localObject1;
    localObject3 = localObject1;
    localObject4 = localObject1;
    ((FTPClient)localObject1).changeWorkingDirectory(paramString);
    bool1 = bool4;
    localObject2 = localObject1;
    localObject3 = localObject1;
    localObject4 = localObject1;
    paramString = ((FTPClient)localObject1).storeFileStream(str);
    if (paramString != null) {}
    for (bool1 = bool2;; bool1 = false)
    {
      if (paramString != null)
      {
        localObject3 = localObject1;
        localObject4 = localObject1;
      }
      label443:
      break;
    }
  }
  
  public boolean a(String paramString1, String paramString2)
  {
    bool2 = false;
    boolean bool3 = false;
    localObject1 = null;
    localObject2 = null;
    localObject3 = null;
    bool1 = bool2;
    label56:
    do
    {
      try
      {
        localFTPClient = a(am.h(paramString1), true);
        if (localFTPClient != null) {
          break label56;
        }
        bool2 = bool3;
        if (localFTPClient != null)
        {
          a(localFTPClient);
          bool2 = bool3;
        }
      }
      catch (FTPConnectionClosedException paramString1)
      {
        FTPClient localFTPClient;
        bool2 = bool1;
        return bool1;
      }
      catch (IOException paramString1)
      {
        localObject2 = localObject1;
        throw new FileSystemException(paramString1);
      }
      finally
      {
        if (localObject2 == null) {
          break;
        }
        a((FTPClient)localObject2);
      }
      return bool2;
      bool1 = bool2;
      localObject3 = localFTPClient;
      localObject1 = localFTPClient;
      localObject2 = localFTPClient;
      paramString1 = am.i(paramString1);
      bool1 = bool2;
      localObject3 = localFTPClient;
      localObject1 = localFTPClient;
      localObject2 = localFTPClient;
      bool2 = localFTPClient.rename(paramString1, am.i(paramString2));
      bool1 = bool2;
      if (!bool2)
      {
        bool1 = bool2;
        localObject3 = localFTPClient;
        localObject1 = localFTPClient;
        localObject2 = localFTPClient;
        localFTPClient.changeWorkingDirectory(am.bk(paramString1));
        bool1 = bool2;
        localObject3 = localFTPClient;
        localObject1 = localFTPClient;
        localObject2 = localFTPClient;
        bool2 = localFTPClient.rename(am.d(paramString1), am.d(paramString2));
        bool1 = bool2;
      }
      bool2 = bool1;
    } while (localFTPClient == null);
    a(localFTPClient);
    return bool1;
  }
  
  public boolean b(String paramString)
  {
    bool2 = false;
    bool3 = false;
    localObject2 = null;
    localObject1 = null;
    try
    {
      localFTPClient = a(am.h(paramString), true);
      if (localFTPClient != null) {
        break label50;
      }
      bool2 = bool3;
      if (localFTPClient != null)
      {
        a(localFTPClient);
        bool2 = bool3;
      }
    }
    catch (FTPConnectionClosedException paramString)
    {
      do
      {
        int i;
        Object localObject3;
        boolean bool1;
        int j;
        bool2 = bool3;
      } while (paramString == null);
      a(paramString);
      return false;
    }
    catch (IOException paramString)
    {
      localObject2 = localObject1;
      throw new FileSystemException(paramString);
    }
    finally
    {
      if (localObject2 == null) {
        break label408;
      }
      a((FTPClient)localObject2);
    }
    return bool2;
    label50:
    localObject1 = localFTPClient;
    localObject2 = localFTPClient;
  }
  
  /* Error */
  public boolean b(String paramString1, String paramString2)
  {
    // Byte code:
    //   0: iconst_1
    //   1: istore_3
    //   2: iconst_0
    //   3: istore 5
    //   5: aconst_null
    //   6: astore 8
    //   8: aconst_null
    //   9: astore 7
    //   11: aload_0
    //   12: aload_1
    //   13: invokestatic 168	com/estrongs/android/util/am:h	(Ljava/lang/String;)Ljava/lang/String;
    //   16: iconst_1
    //   17: invokevirtual 174	com/estrongs/old/fs/impl/a/c:a	(Ljava/lang/String;Z)Lorg/apache/commons/net/ftp/FTPClient;
    //   20: astore 6
    //   22: aload 6
    //   24: ifnonnull +25 -> 49
    //   27: iload 5
    //   29: istore 4
    //   31: aload 6
    //   33: ifnull +13 -> 46
    //   36: aload_0
    //   37: aload 6
    //   39: invokespecial 223	com/estrongs/old/fs/impl/a/c:a	(Lorg/apache/commons/net/ftp/FTPClient;)V
    //   42: iload 5
    //   44: istore 4
    //   46: iload 4
    //   48: ireturn
    //   49: aload 6
    //   51: astore 7
    //   53: aload 6
    //   55: astore 8
    //   57: aload_0
    //   58: aload_1
    //   59: invokespecial 537	com/estrongs/old/fs/impl/a/c:l	(Ljava/lang/String;)Z
    //   62: istore 4
    //   64: aload 6
    //   66: astore 7
    //   68: aload 6
    //   70: astore 8
    //   72: aload_1
    //   73: invokestatic 171	com/estrongs/android/util/am:i	(Ljava/lang/String;)Ljava/lang/String;
    //   76: astore 9
    //   78: iload 4
    //   80: ifeq +221 -> 301
    //   83: aload 6
    //   85: astore 7
    //   87: aload 6
    //   89: astore 8
    //   91: new 90	java/lang/StringBuilder
    //   94: dup
    //   95: aload_2
    //   96: invokestatic 115	java/lang/String:valueOf	(Ljava/lang/Object;)Ljava/lang/String;
    //   99: invokespecial 95	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   102: ldc 120
    //   104: invokevirtual 99	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   107: invokevirtual 102	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   110: astore_1
    //   111: aload 6
    //   113: astore 7
    //   115: aload 6
    //   117: astore 8
    //   119: aload_1
    //   120: invokestatic 171	com/estrongs/android/util/am:i	(Ljava/lang/String;)Ljava/lang/String;
    //   123: astore 10
    //   125: iload 4
    //   127: ifeq +179 -> 306
    //   130: aload 6
    //   132: astore 7
    //   134: aload 6
    //   136: astore 8
    //   138: aload 6
    //   140: aload 10
    //   142: invokevirtual 58	org/apache/commons/net/ftp/FTPClient:changeWorkingDirectory	(Ljava/lang/String;)Z
    //   145: ifeq +309 -> 454
    //   148: iload_3
    //   149: ifeq +229 -> 378
    //   152: aload 6
    //   154: astore 7
    //   156: aload 6
    //   158: astore 8
    //   160: new 90	java/lang/StringBuilder
    //   163: dup
    //   164: aload_2
    //   165: invokestatic 540	com/estrongs/android/util/am:e	(Ljava/lang/String;)Ljava/lang/String;
    //   168: invokestatic 115	java/lang/String:valueOf	(Ljava/lang/Object;)Ljava/lang/String;
    //   171: invokespecial 95	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   174: ldc 120
    //   176: invokevirtual 99	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   179: aload_2
    //   180: invokestatic 187	com/estrongs/android/util/am:d	(Ljava/lang/String;)Ljava/lang/String;
    //   183: invokevirtual 99	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   186: invokestatic 545	java/lang/System:currentTimeMillis	()J
    //   189: l2i
    //   190: invokevirtual 548	java/lang/StringBuilder:append	(I)Ljava/lang/StringBuilder;
    //   193: astore_2
    //   194: iload 4
    //   196: ifeq +268 -> 464
    //   199: ldc 120
    //   201: astore_1
    //   202: aload 6
    //   204: astore 7
    //   206: aload 6
    //   208: astore 8
    //   210: aload_2
    //   211: aload_1
    //   212: invokevirtual 99	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   215: invokevirtual 102	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   218: invokestatic 171	com/estrongs/android/util/am:i	(Ljava/lang/String;)Ljava/lang/String;
    //   221: astore_1
    //   222: aload 6
    //   224: astore 7
    //   226: aload 6
    //   228: astore 8
    //   230: aload 6
    //   232: aload 9
    //   234: aload_1
    //   235: invokevirtual 532	org/apache/commons/net/ftp/FTPClient:rename	(Ljava/lang/String;Ljava/lang/String;)Z
    //   238: pop
    //   239: iload 4
    //   241: ifeq +101 -> 342
    //   244: aload 6
    //   246: astore 7
    //   248: aload 6
    //   250: astore 8
    //   252: aload_0
    //   253: aload 6
    //   255: aload 10
    //   257: invokespecial 122	com/estrongs/old/fs/impl/a/c:a	(Lorg/apache/commons/net/ftp/FTPClient;Ljava/lang/String;)Z
    //   260: pop
    //   261: aload 6
    //   263: astore 7
    //   265: aload 6
    //   267: astore 8
    //   269: aload 6
    //   271: aload_1
    //   272: aload 10
    //   274: invokevirtual 532	org/apache/commons/net/ftp/FTPClient:rename	(Ljava/lang/String;Ljava/lang/String;)Z
    //   277: istore 4
    //   279: iload 4
    //   281: istore 5
    //   283: iload 5
    //   285: istore 4
    //   287: aload 6
    //   289: ifnull -243 -> 46
    //   292: aload_0
    //   293: aload 6
    //   295: invokespecial 223	com/estrongs/old/fs/impl/a/c:a	(Lorg/apache/commons/net/ftp/FTPClient;)V
    //   298: iload 5
    //   300: ireturn
    //   301: aload_2
    //   302: astore_1
    //   303: goto -192 -> 111
    //   306: aload 6
    //   308: astore 7
    //   310: aload 6
    //   312: astore 8
    //   314: aload 6
    //   316: aload 10
    //   318: invokevirtual 64	org/apache/commons/net/ftp/FTPClient:listFiles	(Ljava/lang/String;)[Lorg/apache/commons/net/ftp/FTPFile;
    //   321: astore_1
    //   322: aload_1
    //   323: ifnull +136 -> 459
    //   326: aload 6
    //   328: astore 7
    //   330: aload 6
    //   332: astore 8
    //   334: aload_1
    //   335: arraylength
    //   336: ifgt -188 -> 148
    //   339: goto +120 -> 459
    //   342: aload 6
    //   344: astore 7
    //   346: aload 6
    //   348: astore 8
    //   350: aload_0
    //   351: aload 10
    //   353: invokevirtual 550	com/estrongs/old/fs/impl/a/c:c	(Ljava/lang/String;)Z
    //   356: pop
    //   357: goto -96 -> 261
    //   360: astore_1
    //   361: iload 5
    //   363: istore 4
    //   365: aload 6
    //   367: ifnull -321 -> 46
    //   370: aload_0
    //   371: aload 6
    //   373: invokespecial 223	com/estrongs/old/fs/impl/a/c:a	(Lorg/apache/commons/net/ftp/FTPClient;)V
    //   376: iconst_0
    //   377: ireturn
    //   378: aload 6
    //   380: astore 7
    //   382: aload 6
    //   384: astore 8
    //   386: aload 6
    //   388: aload 9
    //   390: aload 10
    //   392: invokevirtual 532	org/apache/commons/net/ftp/FTPClient:rename	(Ljava/lang/String;Ljava/lang/String;)Z
    //   395: istore 4
    //   397: iload 4
    //   399: istore 5
    //   401: iload 5
    //   403: istore 4
    //   405: aload 6
    //   407: ifnull -361 -> 46
    //   410: aload_0
    //   411: aload 6
    //   413: invokespecial 223	com/estrongs/old/fs/impl/a/c:a	(Lorg/apache/commons/net/ftp/FTPClient;)V
    //   416: iload 5
    //   418: ireturn
    //   419: astore_1
    //   420: aload 7
    //   422: astore 8
    //   424: new 127	com/estrongs/fs/FileSystemException
    //   427: dup
    //   428: aload_1
    //   429: invokespecial 130	com/estrongs/fs/FileSystemException:<init>	(Ljava/lang/Throwable;)V
    //   432: athrow
    //   433: astore_1
    //   434: aload 8
    //   436: ifnull +9 -> 445
    //   439: aload_0
    //   440: aload 8
    //   442: invokespecial 223	com/estrongs/old/fs/impl/a/c:a	(Lorg/apache/commons/net/ftp/FTPClient;)V
    //   445: aload_1
    //   446: athrow
    //   447: astore_1
    //   448: aconst_null
    //   449: astore 6
    //   451: goto -90 -> 361
    //   454: iconst_0
    //   455: istore_3
    //   456: goto -308 -> 148
    //   459: iconst_0
    //   460: istore_3
    //   461: goto -313 -> 148
    //   464: ldc_w 424
    //   467: astore_1
    //   468: goto -266 -> 202
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	471	0	this	c
    //   0	471	1	paramString1	String
    //   0	471	2	paramString2	String
    //   1	460	3	i	int
    //   29	375	4	bool1	boolean
    //   3	414	5	bool2	boolean
    //   20	430	6	localFTPClient	FTPClient
    //   9	412	7	localObject1	Object
    //   6	435	8	localObject2	Object
    //   76	313	9	str1	String
    //   123	268	10	str2	String
    // Exception table:
    //   from	to	target	type
    //   57	64	360	org/apache/commons/net/ftp/FTPConnectionClosedException
    //   72	78	360	org/apache/commons/net/ftp/FTPConnectionClosedException
    //   91	111	360	org/apache/commons/net/ftp/FTPConnectionClosedException
    //   119	125	360	org/apache/commons/net/ftp/FTPConnectionClosedException
    //   138	148	360	org/apache/commons/net/ftp/FTPConnectionClosedException
    //   160	194	360	org/apache/commons/net/ftp/FTPConnectionClosedException
    //   210	222	360	org/apache/commons/net/ftp/FTPConnectionClosedException
    //   230	239	360	org/apache/commons/net/ftp/FTPConnectionClosedException
    //   252	261	360	org/apache/commons/net/ftp/FTPConnectionClosedException
    //   269	279	360	org/apache/commons/net/ftp/FTPConnectionClosedException
    //   314	322	360	org/apache/commons/net/ftp/FTPConnectionClosedException
    //   334	339	360	org/apache/commons/net/ftp/FTPConnectionClosedException
    //   350	357	360	org/apache/commons/net/ftp/FTPConnectionClosedException
    //   386	397	360	org/apache/commons/net/ftp/FTPConnectionClosedException
    //   11	22	419	java/io/IOException
    //   57	64	419	java/io/IOException
    //   72	78	419	java/io/IOException
    //   91	111	419	java/io/IOException
    //   119	125	419	java/io/IOException
    //   138	148	419	java/io/IOException
    //   160	194	419	java/io/IOException
    //   210	222	419	java/io/IOException
    //   230	239	419	java/io/IOException
    //   252	261	419	java/io/IOException
    //   269	279	419	java/io/IOException
    //   314	322	419	java/io/IOException
    //   334	339	419	java/io/IOException
    //   350	357	419	java/io/IOException
    //   386	397	419	java/io/IOException
    //   11	22	433	finally
    //   57	64	433	finally
    //   72	78	433	finally
    //   91	111	433	finally
    //   119	125	433	finally
    //   138	148	433	finally
    //   160	194	433	finally
    //   210	222	433	finally
    //   230	239	433	finally
    //   252	261	433	finally
    //   269	279	433	finally
    //   314	322	433	finally
    //   334	339	433	finally
    //   350	357	433	finally
    //   386	397	433	finally
    //   424	433	433	finally
    //   11	22	447	org/apache/commons/net/ftp/FTPConnectionClosedException
  }
  
  public boolean c(String paramString)
  {
    boolean bool2 = false;
    com.estrongs.a.a locala = com.estrongs.a.a.getCurrentTask();
    Object localObject2 = null;
    Object localObject1 = null;
    FTPClient localFTPClient;
    String str;
    try
    {
      localFTPClient = a(am.h(paramString), true);
      if (localFTPClient == null) {}
      do
      {
        bool1 = bool2;
        if (localFTPClient != null)
        {
          a(localFTPClient);
          bool1 = bool2;
        }
        return bool1;
        if (locala == null) {
          break;
        }
        localObject1 = localFTPClient;
        localObject2 = localFTPClient;
      } while (locala.taskStopped());
      localObject1 = localFTPClient;
      localObject2 = localFTPClient;
      str = am.i(paramString);
      localObject1 = localFTPClient;
      localObject2 = localFTPClient;
      if (l(paramString)) {
        break label290;
      }
      localObject1 = localFTPClient;
      localObject2 = localFTPClient;
      bool2 = localFTPClient.deleteFile(str);
      bool1 = bool2;
      if (bool2) {
        break label222;
      }
      localObject1 = localFTPClient;
      localObject2 = localFTPClient;
      localFTPClient.changeWorkingDirectory(am.bk(str));
      localObject1 = localFTPClient;
      localObject2 = localFTPClient;
      if (localFTPClient.getReplyCode() == 550)
      {
        localObject1 = localFTPClient;
        localObject2 = localFTPClient;
        throw new IOException("550");
      }
    }
    catch (IOException paramString)
    {
      localObject2 = localObject1;
      throw new FileSystemException(paramString);
    }
    finally
    {
      if (localObject2 != null) {
        a((FTPClient)localObject2);
      }
    }
    localObject1 = localFTPClient;
    localObject2 = localFTPClient;
    boolean bool1 = localFTPClient.deleteFile(am.d(str));
    label222:
    bool2 = bool1;
    if (locala != null)
    {
      localObject1 = localFTPClient;
      localObject2 = localFTPClient;
      locala.sendMessage(1, new Object[] { Long.valueOf(1L), "ftp://" + paramString });
    }
    for (bool2 = bool1;; bool2 = a(localFTPClient, str))
    {
      bool1 = bool2;
      if (localFTPClient == null) {
        break;
      }
      a(localFTPClient);
      return bool2;
      label290:
      localObject1 = localFTPClient;
      localObject2 = localFTPClient;
    }
  }
  
  /* Error */
  public boolean d(String paramString)
  {
    // Byte code:
    //   0: aconst_null
    //   1: astore 4
    //   3: aconst_null
    //   4: astore 7
    //   6: aconst_null
    //   7: astore 6
    //   9: aload_0
    //   10: aload_1
    //   11: invokestatic 168	com/estrongs/android/util/am:h	(Ljava/lang/String;)Ljava/lang/String;
    //   14: iconst_1
    //   15: invokevirtual 174	com/estrongs/old/fs/impl/a/c:a	(Ljava/lang/String;Z)Lorg/apache/commons/net/ftp/FTPClient;
    //   18: astore 5
    //   20: aload 5
    //   22: ifnonnull +18 -> 40
    //   25: aload 5
    //   27: ifnull +9 -> 36
    //   30: aload_0
    //   31: aload 5
    //   33: invokespecial 223	com/estrongs/old/fs/impl/a/c:a	(Lorg/apache/commons/net/ftp/FTPClient;)V
    //   36: iconst_0
    //   37: istore_3
    //   38: iload_3
    //   39: ireturn
    //   40: aload 5
    //   42: astore 6
    //   44: aload 5
    //   46: astore 4
    //   48: aload 5
    //   50: astore 7
    //   52: aload_1
    //   53: invokestatic 171	com/estrongs/android/util/am:i	(Ljava/lang/String;)Ljava/lang/String;
    //   56: astore_1
    //   57: aload 5
    //   59: astore 6
    //   61: aload 5
    //   63: astore 4
    //   65: aload 5
    //   67: astore 7
    //   69: aload 5
    //   71: aload_1
    //   72: invokevirtual 513	org/apache/commons/net/ftp/FTPClient:makeDirectory	(Ljava/lang/String;)Z
    //   75: istore_3
    //   76: iload_3
    //   77: istore_2
    //   78: iload_3
    //   79: ifne +47 -> 126
    //   82: aload 5
    //   84: astore 6
    //   86: aload 5
    //   88: astore 4
    //   90: aload 5
    //   92: astore 7
    //   94: aload 5
    //   96: aload_1
    //   97: invokestatic 185	com/estrongs/android/util/am:bk	(Ljava/lang/String;)Ljava/lang/String;
    //   100: invokevirtual 58	org/apache/commons/net/ftp/FTPClient:changeWorkingDirectory	(Ljava/lang/String;)Z
    //   103: pop
    //   104: aload 5
    //   106: astore 6
    //   108: aload 5
    //   110: astore 4
    //   112: aload 5
    //   114: astore 7
    //   116: aload 5
    //   118: aload_1
    //   119: invokestatic 187	com/estrongs/android/util/am:d	(Ljava/lang/String;)Ljava/lang/String;
    //   122: invokevirtual 513	org/apache/commons/net/ftp/FTPClient:makeDirectory	(Ljava/lang/String;)Z
    //   125: istore_2
    //   126: iload_2
    //   127: istore_3
    //   128: aload 5
    //   130: ifnull -92 -> 38
    //   133: aload_0
    //   134: aload 5
    //   136: invokespecial 223	com/estrongs/old/fs/impl/a/c:a	(Lorg/apache/commons/net/ftp/FTPClient;)V
    //   139: iload_2
    //   140: ireturn
    //   141: astore_1
    //   142: aload 6
    //   144: astore 4
    //   146: new 127	com/estrongs/fs/FileSystemException
    //   149: dup
    //   150: aload_1
    //   151: invokespecial 130	com/estrongs/fs/FileSystemException:<init>	(Ljava/lang/Throwable;)V
    //   154: athrow
    //   155: astore_1
    //   156: aload 4
    //   158: ifnull +9 -> 167
    //   161: aload_0
    //   162: aload 4
    //   164: invokespecial 223	com/estrongs/old/fs/impl/a/c:a	(Lorg/apache/commons/net/ftp/FTPClient;)V
    //   167: aload_1
    //   168: athrow
    //   169: astore_1
    //   170: aload 7
    //   172: astore 4
    //   174: new 127	com/estrongs/fs/FileSystemException
    //   177: dup
    //   178: aload_1
    //   179: invokespecial 130	com/estrongs/fs/FileSystemException:<init>	(Ljava/lang/Throwable;)V
    //   182: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	183	0	this	c
    //   0	183	1	paramString	String
    //   77	63	2	bool1	boolean
    //   37	91	3	bool2	boolean
    //   1	172	4	localObject1	Object
    //   18	117	5	localFTPClient	FTPClient
    //   7	136	6	localObject2	Object
    //   4	167	7	localObject3	Object
    // Exception table:
    //   from	to	target	type
    //   9	20	141	org/apache/commons/net/ftp/FTPConnectionClosedException
    //   52	57	141	org/apache/commons/net/ftp/FTPConnectionClosedException
    //   69	76	141	org/apache/commons/net/ftp/FTPConnectionClosedException
    //   94	104	141	org/apache/commons/net/ftp/FTPConnectionClosedException
    //   116	126	141	org/apache/commons/net/ftp/FTPConnectionClosedException
    //   9	20	155	finally
    //   52	57	155	finally
    //   69	76	155	finally
    //   94	104	155	finally
    //   116	126	155	finally
    //   146	155	155	finally
    //   174	183	155	finally
    //   9	20	169	java/io/IOException
    //   52	57	169	java/io/IOException
    //   69	76	169	java/io/IOException
    //   94	104	169	java/io/IOException
    //   116	126	169	java/io/IOException
  }
  
  /* Error */
  public long e(String paramString)
  {
    // Byte code:
    //   0: aconst_null
    //   1: astore 8
    //   3: aload_0
    //   4: aload_1
    //   5: invokestatic 168	com/estrongs/android/util/am:h	(Ljava/lang/String;)Ljava/lang/String;
    //   8: iconst_1
    //   9: invokevirtual 174	com/estrongs/old/fs/impl/a/c:a	(Ljava/lang/String;Z)Lorg/apache/commons/net/ftp/FTPClient;
    //   12: astore 9
    //   14: aload 9
    //   16: astore 8
    //   18: aload 8
    //   20: ifnonnull +22 -> 42
    //   23: aload 8
    //   25: ifnull +9 -> 34
    //   28: aload_0
    //   29: aload 8
    //   31: invokespecial 223	com/estrongs/old/fs/impl/a/c:a	(Lorg/apache/commons/net/ftp/FTPClient;)V
    //   34: ldc2_w 552
    //   37: lstore 4
    //   39: lload 4
    //   41: lreturn
    //   42: aload 8
    //   44: astore 9
    //   46: aload_1
    //   47: invokestatic 171	com/estrongs/android/util/am:i	(Ljava/lang/String;)Ljava/lang/String;
    //   50: astore_1
    //   51: aload 8
    //   53: astore 9
    //   55: aload 8
    //   57: aload_1
    //   58: invokevirtual 58	org/apache/commons/net/ftp/FTPClient:changeWorkingDirectory	(Ljava/lang/String;)Z
    //   61: pop
    //   62: iconst_0
    //   63: istore_2
    //   64: aload_1
    //   65: astore 10
    //   67: iload_2
    //   68: iconst_2
    //   69: if_icmplt +49 -> 118
    //   72: aload 8
    //   74: astore 9
    //   76: aload 8
    //   78: aload_1
    //   79: invokestatic 185	com/estrongs/android/util/am:bk	(Ljava/lang/String;)Ljava/lang/String;
    //   82: invokevirtual 58	org/apache/commons/net/ftp/FTPClient:changeWorkingDirectory	(Ljava/lang/String;)Z
    //   85: pop
    //   86: aload 8
    //   88: astore 9
    //   90: aload_1
    //   91: invokestatic 187	com/estrongs/android/util/am:d	(Ljava/lang/String;)Ljava/lang/String;
    //   94: astore 10
    //   96: iconst_0
    //   97: istore_2
    //   98: iload_2
    //   99: iconst_2
    //   100: if_icmplt +116 -> 216
    //   103: aload 8
    //   105: ifnull +9 -> 114
    //   108: aload_0
    //   109: aload 8
    //   111: invokespecial 223	com/estrongs/old/fs/impl/a/c:a	(Lorg/apache/commons/net/ftp/FTPClient;)V
    //   114: ldc2_w 552
    //   117: lreturn
    //   118: aload 8
    //   120: astore 9
    //   122: aload 8
    //   124: aload 10
    //   126: invokevirtual 64	org/apache/commons/net/ftp/FTPClient:listFiles	(Ljava/lang/String;)[Lorg/apache/commons/net/ftp/FTPFile;
    //   129: astore 11
    //   131: aload 11
    //   133: ifnull +44 -> 177
    //   136: aload 8
    //   138: astore 9
    //   140: aload 11
    //   142: arraylength
    //   143: ifle +34 -> 177
    //   146: aload 8
    //   148: astore 9
    //   150: aload 11
    //   152: iconst_0
    //   153: aaload
    //   154: invokevirtual 556	org/apache/commons/net/ftp/FTPFile:getSize	()J
    //   157: lstore 6
    //   159: lload 6
    //   161: lstore 4
    //   163: aload 8
    //   165: ifnull -126 -> 39
    //   168: aload_0
    //   169: aload 8
    //   171: invokespecial 223	com/estrongs/old/fs/impl/a/c:a	(Lorg/apache/commons/net/ftp/FTPClient;)V
    //   174: lload 6
    //   176: lreturn
    //   177: aload 8
    //   179: astore 9
    //   181: aload 10
    //   183: ldc_w 558
    //   186: invokevirtual 562	java/lang/String:contains	(Ljava/lang/CharSequence;)Z
    //   189: ifeq -117 -> 72
    //   192: aload 8
    //   194: astore 9
    //   196: aload 10
    //   198: ldc_w 558
    //   201: ldc_w 564
    //   204: invokevirtual 568	java/lang/String:replace	(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;
    //   207: astore 10
    //   209: iload_2
    //   210: iconst_1
    //   211: iadd
    //   212: istore_2
    //   213: goto -146 -> 67
    //   216: aload 8
    //   218: astore 9
    //   220: aload 8
    //   222: invokevirtual 79	org/apache/commons/net/ftp/FTPClient:listFiles	()[Lorg/apache/commons/net/ftp/FTPFile;
    //   225: astore 11
    //   227: aload 11
    //   229: ifnull +86 -> 315
    //   232: aload 8
    //   234: astore 9
    //   236: aload 11
    //   238: arraylength
    //   239: ifle +76 -> 315
    //   242: iconst_0
    //   243: istore_3
    //   244: aload 8
    //   246: astore 9
    //   248: iload_3
    //   249: aload 11
    //   251: arraylength
    //   252: if_icmplt +6 -> 258
    //   255: goto +161 -> 416
    //   258: aload 8
    //   260: astore 9
    //   262: aload 11
    //   264: iload_3
    //   265: aaload
    //   266: invokevirtual 70	org/apache/commons/net/ftp/FTPFile:getName	()Ljava/lang/String;
    //   269: aload 10
    //   271: invokevirtual 76	java/lang/String:equals	(Ljava/lang/Object;)Z
    //   274: ifeq +34 -> 308
    //   277: aload 8
    //   279: astore 9
    //   281: aload 11
    //   283: iload_3
    //   284: aaload
    //   285: invokevirtual 556	org/apache/commons/net/ftp/FTPFile:getSize	()J
    //   288: lstore 6
    //   290: lload 6
    //   292: lstore 4
    //   294: aload 8
    //   296: ifnull -257 -> 39
    //   299: aload_0
    //   300: aload 8
    //   302: invokespecial 223	com/estrongs/old/fs/impl/a/c:a	(Lorg/apache/commons/net/ftp/FTPClient;)V
    //   305: lload 6
    //   307: lreturn
    //   308: iload_3
    //   309: iconst_1
    //   310: iadd
    //   311: istore_3
    //   312: goto -68 -> 244
    //   315: aload 8
    //   317: astore 9
    //   319: aload_1
    //   320: ldc_w 558
    //   323: invokevirtual 562	java/lang/String:contains	(Ljava/lang/CharSequence;)Z
    //   326: ifeq -223 -> 103
    //   329: aload 8
    //   331: astore 9
    //   333: aload_1
    //   334: ldc_w 558
    //   337: ldc_w 564
    //   340: invokevirtual 568	java/lang/String:replace	(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;
    //   343: astore_1
    //   344: goto +72 -> 416
    //   347: astore_1
    //   348: aload 8
    //   350: astore_1
    //   351: aload_1
    //   352: ifnull -238 -> 114
    //   355: aload_0
    //   356: aload_1
    //   357: invokespecial 223	com/estrongs/old/fs/impl/a/c:a	(Lorg/apache/commons/net/ftp/FTPClient;)V
    //   360: goto -246 -> 114
    //   363: astore_1
    //   364: aconst_null
    //   365: astore 8
    //   367: aload 8
    //   369: astore 9
    //   371: new 127	com/estrongs/fs/FileSystemException
    //   374: dup
    //   375: aload_1
    //   376: invokespecial 130	com/estrongs/fs/FileSystemException:<init>	(Ljava/lang/Throwable;)V
    //   379: athrow
    //   380: astore_1
    //   381: aload 9
    //   383: ifnull +9 -> 392
    //   386: aload_0
    //   387: aload 9
    //   389: invokespecial 223	com/estrongs/old/fs/impl/a/c:a	(Lorg/apache/commons/net/ftp/FTPClient;)V
    //   392: aload_1
    //   393: athrow
    //   394: astore_1
    //   395: aconst_null
    //   396: astore 9
    //   398: goto -17 -> 381
    //   401: astore_1
    //   402: goto -35 -> 367
    //   405: astore_1
    //   406: aload 8
    //   408: astore_1
    //   409: goto -58 -> 351
    //   412: astore_1
    //   413: goto -310 -> 103
    //   416: iload_2
    //   417: iconst_1
    //   418: iadd
    //   419: istore_2
    //   420: goto -322 -> 98
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	423	0	this	c
    //   0	423	1	paramString	String
    //   63	357	2	i	int
    //   243	69	3	j	int
    //   37	256	4	l1	long
    //   157	149	6	l2	long
    //   1	406	8	localObject1	Object
    //   12	385	9	localObject2	Object
    //   65	205	10	str	String
    //   129	153	11	arrayOfFTPFile	FTPFile[]
    // Exception table:
    //   from	to	target	type
    //   3	14	347	org/apache/commons/net/ftp/FTPConnectionClosedException
    //   3	14	363	java/io/IOException
    //   46	51	380	finally
    //   55	62	380	finally
    //   76	86	380	finally
    //   90	96	380	finally
    //   122	131	380	finally
    //   140	146	380	finally
    //   150	159	380	finally
    //   181	192	380	finally
    //   196	209	380	finally
    //   220	227	380	finally
    //   236	242	380	finally
    //   248	255	380	finally
    //   262	277	380	finally
    //   281	290	380	finally
    //   319	329	380	finally
    //   333	344	380	finally
    //   371	380	380	finally
    //   3	14	394	finally
    //   46	51	401	java/io/IOException
    //   55	62	401	java/io/IOException
    //   76	86	401	java/io/IOException
    //   90	96	401	java/io/IOException
    //   122	131	401	java/io/IOException
    //   140	146	401	java/io/IOException
    //   150	159	401	java/io/IOException
    //   181	192	401	java/io/IOException
    //   196	209	401	java/io/IOException
    //   220	227	401	java/io/IOException
    //   236	242	401	java/io/IOException
    //   248	255	401	java/io/IOException
    //   262	277	401	java/io/IOException
    //   281	290	401	java/io/IOException
    //   319	329	401	java/io/IOException
    //   333	344	401	java/io/IOException
    //   46	51	405	org/apache/commons/net/ftp/FTPConnectionClosedException
    //   55	62	405	org/apache/commons/net/ftp/FTPConnectionClosedException
    //   76	86	405	org/apache/commons/net/ftp/FTPConnectionClosedException
    //   90	96	405	org/apache/commons/net/ftp/FTPConnectionClosedException
    //   122	131	405	org/apache/commons/net/ftp/FTPConnectionClosedException
    //   140	146	405	org/apache/commons/net/ftp/FTPConnectionClosedException
    //   150	159	405	org/apache/commons/net/ftp/FTPConnectionClosedException
    //   181	192	405	org/apache/commons/net/ftp/FTPConnectionClosedException
    //   196	209	405	org/apache/commons/net/ftp/FTPConnectionClosedException
    //   220	227	405	org/apache/commons/net/ftp/FTPConnectionClosedException
    //   236	242	405	org/apache/commons/net/ftp/FTPConnectionClosedException
    //   248	255	405	org/apache/commons/net/ftp/FTPConnectionClosedException
    //   262	277	405	org/apache/commons/net/ftp/FTPConnectionClosedException
    //   281	290	405	org/apache/commons/net/ftp/FTPConnectionClosedException
    //   319	329	405	org/apache/commons/net/ftp/FTPConnectionClosedException
    //   333	344	405	org/apache/commons/net/ftp/FTPConnectionClosedException
    //   76	86	412	java/lang/Exception
    //   90	96	412	java/lang/Exception
    //   220	227	412	java/lang/Exception
    //   236	242	412	java/lang/Exception
    //   248	255	412	java/lang/Exception
    //   262	277	412	java/lang/Exception
    //   281	290	412	java/lang/Exception
    //   319	329	412	java/lang/Exception
    //   333	344	412	java/lang/Exception
  }
  
  public boolean f(String paramString)
  {
    return l(paramString);
  }
  
  /* Error */
  public com.estrongs.fs.c g(String paramString)
  {
    // Byte code:
    //   0: iconst_1
    //   1: istore 6
    //   3: iconst_1
    //   4: istore 5
    //   6: iconst_0
    //   7: istore_3
    //   8: iconst_0
    //   9: istore 4
    //   11: aload_0
    //   12: aload_1
    //   13: invokestatic 168	com/estrongs/android/util/am:h	(Ljava/lang/String;)Ljava/lang/String;
    //   16: iconst_1
    //   17: invokevirtual 174	com/estrongs/old/fs/impl/a/c:a	(Ljava/lang/String;Z)Lorg/apache/commons/net/ftp/FTPClient;
    //   20: astore 9
    //   22: aload 9
    //   24: ifnonnull +16 -> 40
    //   27: aload 9
    //   29: ifnull +9 -> 38
    //   32: aload_0
    //   33: aload 9
    //   35: invokespecial 223	com/estrongs/old/fs/impl/a/c:a	(Lorg/apache/commons/net/ftp/FTPClient;)V
    //   38: aconst_null
    //   39: areturn
    //   40: aload 9
    //   42: astore 10
    //   44: aload_1
    //   45: invokestatic 171	com/estrongs/android/util/am:i	(Ljava/lang/String;)Ljava/lang/String;
    //   48: astore 11
    //   50: iconst_0
    //   51: istore_2
    //   52: aload 11
    //   54: astore 12
    //   56: iload_2
    //   57: iconst_2
    //   58: if_icmplt +48 -> 106
    //   61: aload 9
    //   63: astore 10
    //   65: aload 9
    //   67: aload 11
    //   69: invokestatic 185	com/estrongs/android/util/am:bk	(Ljava/lang/String;)Ljava/lang/String;
    //   72: invokevirtual 58	org/apache/commons/net/ftp/FTPClient:changeWorkingDirectory	(Ljava/lang/String;)Z
    //   75: pop
    //   76: aload 9
    //   78: astore 10
    //   80: aload 11
    //   82: invokestatic 187	com/estrongs/android/util/am:d	(Ljava/lang/String;)Ljava/lang/String;
    //   85: pop
    //   86: iconst_0
    //   87: istore_2
    //   88: iload_2
    //   89: iconst_2
    //   90: if_icmplt +369 -> 459
    //   93: aload 9
    //   95: ifnull -57 -> 38
    //   98: aload_0
    //   99: aload 9
    //   101: invokespecial 223	com/estrongs/old/fs/impl/a/c:a	(Lorg/apache/commons/net/ftp/FTPClient;)V
    //   104: aconst_null
    //   105: areturn
    //   106: aload 9
    //   108: astore 10
    //   110: aload 9
    //   112: aload 12
    //   114: invokevirtual 64	org/apache/commons/net/ftp/FTPClient:listFiles	(Ljava/lang/String;)[Lorg/apache/commons/net/ftp/FTPFile;
    //   117: astore 13
    //   119: aload 13
    //   121: ifnull +299 -> 420
    //   124: aload 9
    //   126: astore 10
    //   128: aload 13
    //   130: arraylength
    //   131: ifle +289 -> 420
    //   134: aload 9
    //   136: astore 10
    //   138: new 573	com/estrongs/fs/c
    //   141: dup
    //   142: aload_1
    //   143: invokespecial 574	com/estrongs/fs/c:<init>	(Ljava/lang/String;)V
    //   146: astore_1
    //   147: aload 9
    //   149: astore 10
    //   151: aload 13
    //   153: arraylength
    //   154: iconst_1
    //   155: if_icmple +121 -> 276
    //   158: aload 9
    //   160: astore 10
    //   162: aload_1
    //   163: iload 5
    //   165: putfield 576	com/estrongs/fs/c:d	Z
    //   168: aload 9
    //   170: astore 10
    //   172: aload_1
    //   173: getfield 576	com/estrongs/fs/c:d	Z
    //   176: ifeq +168 -> 344
    //   179: aload 9
    //   181: astore 10
    //   183: aload 13
    //   185: arraylength
    //   186: istore_3
    //   187: iload 4
    //   189: istore_2
    //   190: goto +575 -> 765
    //   193: aload 9
    //   195: astore 10
    //   197: aload 13
    //   199: iconst_0
    //   200: aaload
    //   201: invokevirtual 580	org/apache/commons/net/ftp/FTPFile:getTimestamp	()Ljava/util/Calendar;
    //   204: ifnonnull +197 -> 401
    //   207: lconst_0
    //   208: lstore 7
    //   210: aload 9
    //   212: astore 10
    //   214: aload_1
    //   215: lload 7
    //   217: putfield 584	com/estrongs/fs/c:j	J
    //   220: aload 9
    //   222: astore 10
    //   224: aload_1
    //   225: iconst_0
    //   226: putfield 586	com/estrongs/fs/c:m	Z
    //   229: aload 9
    //   231: astore 10
    //   233: aload_1
    //   234: aload 13
    //   236: iconst_0
    //   237: aaload
    //   238: iconst_0
    //   239: iconst_0
    //   240: invokevirtual 590	org/apache/commons/net/ftp/FTPFile:hasPermission	(II)Z
    //   243: putfield 592	com/estrongs/fs/c:k	Z
    //   246: aload 9
    //   248: astore 10
    //   250: aload_1
    //   251: aload 13
    //   253: iconst_0
    //   254: aaload
    //   255: iconst_0
    //   256: iconst_1
    //   257: invokevirtual 590	org/apache/commons/net/ftp/FTPFile:hasPermission	(II)Z
    //   260: putfield 594	com/estrongs/fs/c:l	Z
    //   263: aload 9
    //   265: ifnull +9 -> 274
    //   268: aload_0
    //   269: aload 9
    //   271: invokespecial 223	com/estrongs/old/fs/impl/a/c:a	(Lorg/apache/commons/net/ftp/FTPClient;)V
    //   274: aload_1
    //   275: areturn
    //   276: iconst_0
    //   277: istore 5
    //   279: goto -121 -> 158
    //   282: aload 9
    //   284: astore 10
    //   286: aload 13
    //   288: iload_2
    //   289: aaload
    //   290: invokevirtual 118	org/apache/commons/net/ftp/FTPFile:isDirectory	()Z
    //   293: ifeq +20 -> 313
    //   296: aload 9
    //   298: astore 10
    //   300: aload_1
    //   301: aload_1
    //   302: getfield 597	com/estrongs/fs/c:f	I
    //   305: iconst_1
    //   306: iadd
    //   307: putfield 597	com/estrongs/fs/c:f	I
    //   310: goto +463 -> 773
    //   313: aload 9
    //   315: astore 10
    //   317: aload_1
    //   318: aload_1
    //   319: getfield 599	com/estrongs/fs/c:g	I
    //   322: iconst_1
    //   323: iadd
    //   324: putfield 599	com/estrongs/fs/c:g	I
    //   327: goto +446 -> 773
    //   330: astore_1
    //   331: aload 9
    //   333: ifnull -295 -> 38
    //   336: aload_0
    //   337: aload 9
    //   339: invokespecial 223	com/estrongs/old/fs/impl/a/c:a	(Lorg/apache/commons/net/ftp/FTPClient;)V
    //   342: aconst_null
    //   343: areturn
    //   344: aload 9
    //   346: astore 10
    //   348: aload_1
    //   349: ldc_w 601
    //   352: putfield 603	com/estrongs/fs/c:c	Ljava/lang/String;
    //   355: aload 9
    //   357: astore 10
    //   359: aload_1
    //   360: aload 13
    //   362: iconst_0
    //   363: aaload
    //   364: invokevirtual 556	org/apache/commons/net/ftp/FTPFile:getSize	()J
    //   367: putfield 605	com/estrongs/fs/c:e	J
    //   370: goto -177 -> 193
    //   373: astore_1
    //   374: aload 9
    //   376: astore 10
    //   378: new 127	com/estrongs/fs/FileSystemException
    //   381: dup
    //   382: aload_1
    //   383: invokespecial 130	com/estrongs/fs/FileSystemException:<init>	(Ljava/lang/Throwable;)V
    //   386: athrow
    //   387: astore_1
    //   388: aload 10
    //   390: ifnull +9 -> 399
    //   393: aload_0
    //   394: aload 10
    //   396: invokespecial 223	com/estrongs/old/fs/impl/a/c:a	(Lorg/apache/commons/net/ftp/FTPClient;)V
    //   399: aload_1
    //   400: athrow
    //   401: aload 9
    //   403: astore 10
    //   405: aload 13
    //   407: iconst_0
    //   408: aaload
    //   409: invokevirtual 580	org/apache/commons/net/ftp/FTPFile:getTimestamp	()Ljava/util/Calendar;
    //   412: invokevirtual 610	java/util/Calendar:getTimeInMillis	()J
    //   415: lstore 7
    //   417: goto -207 -> 210
    //   420: aload 9
    //   422: astore 10
    //   424: aload 12
    //   426: ldc_w 558
    //   429: invokevirtual 562	java/lang/String:contains	(Ljava/lang/CharSequence;)Z
    //   432: ifeq -371 -> 61
    //   435: aload 9
    //   437: astore 10
    //   439: aload 12
    //   441: ldc_w 558
    //   444: ldc_w 564
    //   447: invokevirtual 568	java/lang/String:replace	(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;
    //   450: astore 12
    //   452: iload_2
    //   453: iconst_1
    //   454: iadd
    //   455: istore_2
    //   456: goto -400 -> 56
    //   459: aload 9
    //   461: astore 10
    //   463: aload 9
    //   465: invokevirtual 79	org/apache/commons/net/ftp/FTPClient:listFiles	()[Lorg/apache/commons/net/ftp/FTPFile;
    //   468: astore 12
    //   470: aload 12
    //   472: ifnull +233 -> 705
    //   475: aload 9
    //   477: astore 10
    //   479: aload 12
    //   481: arraylength
    //   482: ifle +223 -> 705
    //   485: aload 9
    //   487: astore 10
    //   489: new 573	com/estrongs/fs/c
    //   492: dup
    //   493: aload_1
    //   494: invokespecial 574	com/estrongs/fs/c:<init>	(Ljava/lang/String;)V
    //   497: astore_1
    //   498: aload 9
    //   500: astore 10
    //   502: aload 12
    //   504: arraylength
    //   505: iconst_1
    //   506: if_icmple +116 -> 622
    //   509: iload 6
    //   511: istore 5
    //   513: aload 9
    //   515: astore 10
    //   517: aload_1
    //   518: iload 5
    //   520: putfield 576	com/estrongs/fs/c:d	Z
    //   523: aload 9
    //   525: astore 10
    //   527: aload_1
    //   528: getfield 576	com/estrongs/fs/c:d	Z
    //   531: ifeq +145 -> 676
    //   534: aload 9
    //   536: astore 10
    //   538: aload 12
    //   540: arraylength
    //   541: istore 4
    //   543: iload_3
    //   544: istore_2
    //   545: goto +235 -> 780
    //   548: aload 9
    //   550: astore 10
    //   552: aload_1
    //   553: aload 12
    //   555: iconst_0
    //   556: aaload
    //   557: invokevirtual 580	org/apache/commons/net/ftp/FTPFile:getTimestamp	()Ljava/util/Calendar;
    //   560: invokevirtual 610	java/util/Calendar:getTimeInMillis	()J
    //   563: putfield 584	com/estrongs/fs/c:j	J
    //   566: aload 9
    //   568: astore 10
    //   570: aload_1
    //   571: iconst_0
    //   572: putfield 586	com/estrongs/fs/c:m	Z
    //   575: aload 9
    //   577: astore 10
    //   579: aload_1
    //   580: aload 12
    //   582: iconst_0
    //   583: aaload
    //   584: iconst_0
    //   585: iconst_0
    //   586: invokevirtual 590	org/apache/commons/net/ftp/FTPFile:hasPermission	(II)Z
    //   589: putfield 592	com/estrongs/fs/c:k	Z
    //   592: aload 9
    //   594: astore 10
    //   596: aload_1
    //   597: aload 12
    //   599: iconst_0
    //   600: aaload
    //   601: iconst_0
    //   602: iconst_1
    //   603: invokevirtual 590	org/apache/commons/net/ftp/FTPFile:hasPermission	(II)Z
    //   606: putfield 594	com/estrongs/fs/c:l	Z
    //   609: aload 9
    //   611: ifnull +9 -> 620
    //   614: aload_0
    //   615: aload 9
    //   617: invokespecial 223	com/estrongs/old/fs/impl/a/c:a	(Lorg/apache/commons/net/ftp/FTPClient;)V
    //   620: aload_1
    //   621: areturn
    //   622: iconst_0
    //   623: istore 5
    //   625: goto -112 -> 513
    //   628: aload 9
    //   630: astore 10
    //   632: aload 12
    //   634: iload_2
    //   635: aaload
    //   636: invokevirtual 118	org/apache/commons/net/ftp/FTPFile:isDirectory	()Z
    //   639: ifeq +20 -> 659
    //   642: aload 9
    //   644: astore 10
    //   646: aload_1
    //   647: aload_1
    //   648: getfield 597	com/estrongs/fs/c:f	I
    //   651: iconst_1
    //   652: iadd
    //   653: putfield 597	com/estrongs/fs/c:f	I
    //   656: goto +133 -> 789
    //   659: aload 9
    //   661: astore 10
    //   663: aload_1
    //   664: aload_1
    //   665: getfield 599	com/estrongs/fs/c:g	I
    //   668: iconst_1
    //   669: iadd
    //   670: putfield 599	com/estrongs/fs/c:g	I
    //   673: goto +116 -> 789
    //   676: aload 9
    //   678: astore 10
    //   680: aload_1
    //   681: ldc_w 601
    //   684: putfield 603	com/estrongs/fs/c:c	Ljava/lang/String;
    //   687: aload 9
    //   689: astore 10
    //   691: aload_1
    //   692: aload 12
    //   694: iconst_0
    //   695: aaload
    //   696: invokevirtual 556	org/apache/commons/net/ftp/FTPFile:getSize	()J
    //   699: putfield 605	com/estrongs/fs/c:e	J
    //   702: goto -154 -> 548
    //   705: aload 9
    //   707: astore 10
    //   709: aload 11
    //   711: ldc_w 558
    //   714: invokevirtual 562	java/lang/String:contains	(Ljava/lang/CharSequence;)Z
    //   717: ifeq -624 -> 93
    //   720: aload 9
    //   722: astore 10
    //   724: aload 11
    //   726: ldc_w 558
    //   729: ldc_w 564
    //   732: invokevirtual 568	java/lang/String:replace	(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;
    //   735: astore 11
    //   737: iload_2
    //   738: iconst_1
    //   739: iadd
    //   740: istore_2
    //   741: goto -653 -> 88
    //   744: astore_1
    //   745: aconst_null
    //   746: astore 10
    //   748: goto -360 -> 388
    //   751: astore_1
    //   752: aconst_null
    //   753: astore 9
    //   755: goto -381 -> 374
    //   758: astore_1
    //   759: aconst_null
    //   760: astore 9
    //   762: goto -431 -> 331
    //   765: iload_2
    //   766: iload_3
    //   767: if_icmplt -485 -> 282
    //   770: goto -577 -> 193
    //   773: iload_2
    //   774: iconst_1
    //   775: iadd
    //   776: istore_2
    //   777: goto -12 -> 765
    //   780: iload_2
    //   781: iload 4
    //   783: if_icmplt -155 -> 628
    //   786: goto -238 -> 548
    //   789: iload_2
    //   790: iconst_1
    //   791: iadd
    //   792: istore_2
    //   793: goto -13 -> 780
    //   796: astore_1
    //   797: goto -704 -> 93
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	800	0	this	c
    //   0	800	1	paramString	String
    //   51	742	2	i	int
    //   7	761	3	j	int
    //   9	775	4	k	int
    //   4	620	5	bool1	boolean
    //   1	509	6	bool2	boolean
    //   208	208	7	l	long
    //   20	741	9	localFTPClient1	FTPClient
    //   42	705	10	localFTPClient2	FTPClient
    //   48	688	11	str	String
    //   54	639	12	localObject	Object
    //   117	289	13	arrayOfFTPFile	FTPFile[]
    // Exception table:
    //   from	to	target	type
    //   44	50	330	org/apache/commons/net/ftp/FTPConnectionClosedException
    //   65	76	330	org/apache/commons/net/ftp/FTPConnectionClosedException
    //   80	86	330	org/apache/commons/net/ftp/FTPConnectionClosedException
    //   110	119	330	org/apache/commons/net/ftp/FTPConnectionClosedException
    //   128	134	330	org/apache/commons/net/ftp/FTPConnectionClosedException
    //   138	147	330	org/apache/commons/net/ftp/FTPConnectionClosedException
    //   151	158	330	org/apache/commons/net/ftp/FTPConnectionClosedException
    //   162	168	330	org/apache/commons/net/ftp/FTPConnectionClosedException
    //   172	179	330	org/apache/commons/net/ftp/FTPConnectionClosedException
    //   183	187	330	org/apache/commons/net/ftp/FTPConnectionClosedException
    //   197	207	330	org/apache/commons/net/ftp/FTPConnectionClosedException
    //   214	220	330	org/apache/commons/net/ftp/FTPConnectionClosedException
    //   224	229	330	org/apache/commons/net/ftp/FTPConnectionClosedException
    //   233	246	330	org/apache/commons/net/ftp/FTPConnectionClosedException
    //   250	263	330	org/apache/commons/net/ftp/FTPConnectionClosedException
    //   286	296	330	org/apache/commons/net/ftp/FTPConnectionClosedException
    //   300	310	330	org/apache/commons/net/ftp/FTPConnectionClosedException
    //   317	327	330	org/apache/commons/net/ftp/FTPConnectionClosedException
    //   348	355	330	org/apache/commons/net/ftp/FTPConnectionClosedException
    //   359	370	330	org/apache/commons/net/ftp/FTPConnectionClosedException
    //   405	417	330	org/apache/commons/net/ftp/FTPConnectionClosedException
    //   424	435	330	org/apache/commons/net/ftp/FTPConnectionClosedException
    //   439	452	330	org/apache/commons/net/ftp/FTPConnectionClosedException
    //   463	470	330	org/apache/commons/net/ftp/FTPConnectionClosedException
    //   479	485	330	org/apache/commons/net/ftp/FTPConnectionClosedException
    //   489	498	330	org/apache/commons/net/ftp/FTPConnectionClosedException
    //   502	509	330	org/apache/commons/net/ftp/FTPConnectionClosedException
    //   517	523	330	org/apache/commons/net/ftp/FTPConnectionClosedException
    //   527	534	330	org/apache/commons/net/ftp/FTPConnectionClosedException
    //   538	543	330	org/apache/commons/net/ftp/FTPConnectionClosedException
    //   552	566	330	org/apache/commons/net/ftp/FTPConnectionClosedException
    //   570	575	330	org/apache/commons/net/ftp/FTPConnectionClosedException
    //   579	592	330	org/apache/commons/net/ftp/FTPConnectionClosedException
    //   596	609	330	org/apache/commons/net/ftp/FTPConnectionClosedException
    //   632	642	330	org/apache/commons/net/ftp/FTPConnectionClosedException
    //   646	656	330	org/apache/commons/net/ftp/FTPConnectionClosedException
    //   663	673	330	org/apache/commons/net/ftp/FTPConnectionClosedException
    //   680	687	330	org/apache/commons/net/ftp/FTPConnectionClosedException
    //   691	702	330	org/apache/commons/net/ftp/FTPConnectionClosedException
    //   709	720	330	org/apache/commons/net/ftp/FTPConnectionClosedException
    //   724	737	330	org/apache/commons/net/ftp/FTPConnectionClosedException
    //   44	50	373	java/io/IOException
    //   65	76	373	java/io/IOException
    //   80	86	373	java/io/IOException
    //   110	119	373	java/io/IOException
    //   128	134	373	java/io/IOException
    //   138	147	373	java/io/IOException
    //   151	158	373	java/io/IOException
    //   162	168	373	java/io/IOException
    //   172	179	373	java/io/IOException
    //   183	187	373	java/io/IOException
    //   197	207	373	java/io/IOException
    //   214	220	373	java/io/IOException
    //   224	229	373	java/io/IOException
    //   233	246	373	java/io/IOException
    //   250	263	373	java/io/IOException
    //   286	296	373	java/io/IOException
    //   300	310	373	java/io/IOException
    //   317	327	373	java/io/IOException
    //   348	355	373	java/io/IOException
    //   359	370	373	java/io/IOException
    //   405	417	373	java/io/IOException
    //   424	435	373	java/io/IOException
    //   439	452	373	java/io/IOException
    //   463	470	373	java/io/IOException
    //   479	485	373	java/io/IOException
    //   489	498	373	java/io/IOException
    //   502	509	373	java/io/IOException
    //   517	523	373	java/io/IOException
    //   527	534	373	java/io/IOException
    //   538	543	373	java/io/IOException
    //   552	566	373	java/io/IOException
    //   570	575	373	java/io/IOException
    //   579	592	373	java/io/IOException
    //   596	609	373	java/io/IOException
    //   632	642	373	java/io/IOException
    //   646	656	373	java/io/IOException
    //   663	673	373	java/io/IOException
    //   680	687	373	java/io/IOException
    //   691	702	373	java/io/IOException
    //   709	720	373	java/io/IOException
    //   724	737	373	java/io/IOException
    //   44	50	387	finally
    //   65	76	387	finally
    //   80	86	387	finally
    //   110	119	387	finally
    //   128	134	387	finally
    //   138	147	387	finally
    //   151	158	387	finally
    //   162	168	387	finally
    //   172	179	387	finally
    //   183	187	387	finally
    //   197	207	387	finally
    //   214	220	387	finally
    //   224	229	387	finally
    //   233	246	387	finally
    //   250	263	387	finally
    //   286	296	387	finally
    //   300	310	387	finally
    //   317	327	387	finally
    //   348	355	387	finally
    //   359	370	387	finally
    //   378	387	387	finally
    //   405	417	387	finally
    //   424	435	387	finally
    //   439	452	387	finally
    //   463	470	387	finally
    //   479	485	387	finally
    //   489	498	387	finally
    //   502	509	387	finally
    //   517	523	387	finally
    //   527	534	387	finally
    //   538	543	387	finally
    //   552	566	387	finally
    //   570	575	387	finally
    //   579	592	387	finally
    //   596	609	387	finally
    //   632	642	387	finally
    //   646	656	387	finally
    //   663	673	387	finally
    //   680	687	387	finally
    //   691	702	387	finally
    //   709	720	387	finally
    //   724	737	387	finally
    //   11	22	744	finally
    //   11	22	751	java/io/IOException
    //   11	22	758	org/apache/commons/net/ftp/FTPConnectionClosedException
    //   65	76	796	java/lang/Exception
    //   80	86	796	java/lang/Exception
    //   463	470	796	java/lang/Exception
    //   479	485	796	java/lang/Exception
    //   489	498	796	java/lang/Exception
    //   502	509	796	java/lang/Exception
    //   517	523	796	java/lang/Exception
    //   527	534	796	java/lang/Exception
    //   538	543	796	java/lang/Exception
    //   552	566	796	java/lang/Exception
    //   570	575	796	java/lang/Exception
    //   579	592	796	java/lang/Exception
    //   596	609	796	java/lang/Exception
    //   632	642	796	java/lang/Exception
    //   646	656	796	java/lang/Exception
    //   663	673	796	java/lang/Exception
    //   680	687	796	java/lang/Exception
    //   691	702	796	java/lang/Exception
    //   709	720	796	java/lang/Exception
    //   724	737	796	java/lang/Exception
  }
  
  /* Error */
  public h h(String paramString)
  {
    // Byte code:
    //   0: aload_0
    //   1: aload_1
    //   2: invokestatic 168	com/estrongs/android/util/am:h	(Ljava/lang/String;)Ljava/lang/String;
    //   5: iconst_1
    //   6: invokevirtual 174	com/estrongs/old/fs/impl/a/c:a	(Ljava/lang/String;Z)Lorg/apache/commons/net/ftp/FTPClient;
    //   9: astore 4
    //   11: aload 4
    //   13: ifnonnull +18 -> 31
    //   16: aload 4
    //   18: ifnull +9 -> 27
    //   21: aload_0
    //   22: aload 4
    //   24: invokespecial 223	com/estrongs/old/fs/impl/a/c:a	(Lorg/apache/commons/net/ftp/FTPClient;)V
    //   27: aconst_null
    //   28: astore_1
    //   29: aload_1
    //   30: areturn
    //   31: aload_1
    //   32: invokestatic 171	com/estrongs/android/util/am:i	(Ljava/lang/String;)Ljava/lang/String;
    //   35: astore 5
    //   37: aload 4
    //   39: aload 5
    //   41: invokevirtual 58	org/apache/commons/net/ftp/FTPClient:changeWorkingDirectory	(Ljava/lang/String;)Z
    //   44: pop
    //   45: iconst_0
    //   46: istore_2
    //   47: aload 5
    //   49: astore 6
    //   51: iload_2
    //   52: iconst_2
    //   53: if_icmplt +41 -> 94
    //   56: aload 4
    //   58: aload 5
    //   60: invokestatic 185	com/estrongs/android/util/am:bk	(Ljava/lang/String;)Ljava/lang/String;
    //   63: invokevirtual 58	org/apache/commons/net/ftp/FTPClient:changeWorkingDirectory	(Ljava/lang/String;)Z
    //   66: pop
    //   67: aload 5
    //   69: invokestatic 187	com/estrongs/android/util/am:d	(Ljava/lang/String;)Ljava/lang/String;
    //   72: astore 6
    //   74: iconst_0
    //   75: istore_2
    //   76: iload_2
    //   77: iconst_2
    //   78: if_icmplt +105 -> 183
    //   81: aload 4
    //   83: ifnull +9 -> 92
    //   86: aload_0
    //   87: aload 4
    //   89: invokespecial 223	com/estrongs/old/fs/impl/a/c:a	(Lorg/apache/commons/net/ftp/FTPClient;)V
    //   92: aconst_null
    //   93: areturn
    //   94: aload 4
    //   96: aload 6
    //   98: invokevirtual 64	org/apache/commons/net/ftp/FTPClient:listFiles	(Ljava/lang/String;)[Lorg/apache/commons/net/ftp/FTPFile;
    //   101: astore 7
    //   103: aload 7
    //   105: ifnull +47 -> 152
    //   108: aload 7
    //   110: arraylength
    //   111: ifle +41 -> 152
    //   114: new 275	com/estrongs/old/fs/impl/a/a
    //   117: dup
    //   118: aload 7
    //   120: iconst_0
    //   121: aaload
    //   122: aload_1
    //   123: aload 7
    //   125: iconst_0
    //   126: aaload
    //   127: invokevirtual 269	org/apache/commons/net/ftp/FTPFile:getLink	()Ljava/lang/String;
    //   130: invokespecial 278	com/estrongs/old/fs/impl/a/a:<init>	(Lorg/apache/commons/net/ftp/FTPFile;Ljava/lang/String;Ljava/lang/String;)V
    //   133: astore 5
    //   135: aload 5
    //   137: astore_1
    //   138: aload 4
    //   140: ifnull -111 -> 29
    //   143: aload_0
    //   144: aload 4
    //   146: invokespecial 223	com/estrongs/old/fs/impl/a/c:a	(Lorg/apache/commons/net/ftp/FTPClient;)V
    //   149: aload 5
    //   151: areturn
    //   152: aload 6
    //   154: ldc_w 558
    //   157: invokevirtual 562	java/lang/String:contains	(Ljava/lang/CharSequence;)Z
    //   160: ifeq -104 -> 56
    //   163: aload 6
    //   165: ldc_w 558
    //   168: ldc_w 564
    //   171: invokevirtual 568	java/lang/String:replace	(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;
    //   174: astore 6
    //   176: iload_2
    //   177: iconst_1
    //   178: iadd
    //   179: istore_2
    //   180: goto -129 -> 51
    //   183: aload 4
    //   185: invokevirtual 79	org/apache/commons/net/ftp/FTPClient:listFiles	()[Lorg/apache/commons/net/ftp/FTPFile;
    //   188: astore 7
    //   190: aload 7
    //   192: ifnull +81 -> 273
    //   195: aload 7
    //   197: arraylength
    //   198: ifle +75 -> 273
    //   201: iconst_0
    //   202: istore_3
    //   203: iload_3
    //   204: aload 7
    //   206: arraylength
    //   207: if_icmplt +6 -> 213
    //   210: goto +159 -> 369
    //   213: aload 7
    //   215: iload_3
    //   216: aaload
    //   217: invokevirtual 70	org/apache/commons/net/ftp/FTPFile:getName	()Ljava/lang/String;
    //   220: aload 6
    //   222: invokevirtual 76	java/lang/String:equals	(Ljava/lang/Object;)Z
    //   225: ifeq +41 -> 266
    //   228: new 275	com/estrongs/old/fs/impl/a/a
    //   231: dup
    //   232: aload 7
    //   234: iload_3
    //   235: aaload
    //   236: aload_1
    //   237: aload 7
    //   239: iload_3
    //   240: aaload
    //   241: invokevirtual 269	org/apache/commons/net/ftp/FTPFile:getLink	()Ljava/lang/String;
    //   244: invokespecial 278	com/estrongs/old/fs/impl/a/a:<init>	(Lorg/apache/commons/net/ftp/FTPFile;Ljava/lang/String;Ljava/lang/String;)V
    //   247: astore 5
    //   249: aload 5
    //   251: astore_1
    //   252: aload 4
    //   254: ifnull -225 -> 29
    //   257: aload_0
    //   258: aload 4
    //   260: invokespecial 223	com/estrongs/old/fs/impl/a/c:a	(Lorg/apache/commons/net/ftp/FTPClient;)V
    //   263: aload 5
    //   265: areturn
    //   266: iload_3
    //   267: iconst_1
    //   268: iadd
    //   269: istore_3
    //   270: goto -67 -> 203
    //   273: aload 5
    //   275: ldc_w 558
    //   278: invokevirtual 562	java/lang/String:contains	(Ljava/lang/CharSequence;)Z
    //   281: ifeq -200 -> 81
    //   284: aload 5
    //   286: ldc_w 558
    //   289: ldc_w 564
    //   292: invokevirtual 568	java/lang/String:replace	(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;
    //   295: astore 5
    //   297: goto +72 -> 369
    //   300: astore_1
    //   301: aconst_null
    //   302: astore_1
    //   303: aload_1
    //   304: ifnull -212 -> 92
    //   307: aload_0
    //   308: aload_1
    //   309: invokespecial 223	com/estrongs/old/fs/impl/a/c:a	(Lorg/apache/commons/net/ftp/FTPClient;)V
    //   312: goto -220 -> 92
    //   315: astore_1
    //   316: aconst_null
    //   317: astore 4
    //   319: aload 4
    //   321: ifnull -229 -> 92
    //   324: aload_0
    //   325: aload 4
    //   327: invokespecial 223	com/estrongs/old/fs/impl/a/c:a	(Lorg/apache/commons/net/ftp/FTPClient;)V
    //   330: goto -238 -> 92
    //   333: astore_1
    //   334: aconst_null
    //   335: astore 4
    //   337: aload 4
    //   339: ifnull +9 -> 348
    //   342: aload_0
    //   343: aload 4
    //   345: invokespecial 223	com/estrongs/old/fs/impl/a/c:a	(Lorg/apache/commons/net/ftp/FTPClient;)V
    //   348: aload_1
    //   349: athrow
    //   350: astore_1
    //   351: goto -14 -> 337
    //   354: astore_1
    //   355: goto -36 -> 319
    //   358: astore_1
    //   359: aload 4
    //   361: astore_1
    //   362: goto -59 -> 303
    //   365: astore_1
    //   366: goto -285 -> 81
    //   369: iload_2
    //   370: iconst_1
    //   371: iadd
    //   372: istore_2
    //   373: goto -297 -> 76
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	376	0	this	c
    //   0	376	1	paramString	String
    //   46	327	2	i	int
    //   202	68	3	j	int
    //   9	351	4	localFTPClient	FTPClient
    //   35	261	5	localObject1	Object
    //   49	172	6	localObject2	Object
    //   101	137	7	arrayOfFTPFile	FTPFile[]
    // Exception table:
    //   from	to	target	type
    //   0	11	300	org/apache/commons/net/ftp/FTPConnectionClosedException
    //   0	11	315	java/lang/Exception
    //   0	11	333	finally
    //   31	45	350	finally
    //   56	74	350	finally
    //   94	103	350	finally
    //   108	135	350	finally
    //   152	176	350	finally
    //   183	190	350	finally
    //   195	201	350	finally
    //   203	210	350	finally
    //   213	249	350	finally
    //   273	297	350	finally
    //   31	45	354	java/lang/Exception
    //   94	103	354	java/lang/Exception
    //   108	135	354	java/lang/Exception
    //   152	176	354	java/lang/Exception
    //   31	45	358	org/apache/commons/net/ftp/FTPConnectionClosedException
    //   56	74	358	org/apache/commons/net/ftp/FTPConnectionClosedException
    //   94	103	358	org/apache/commons/net/ftp/FTPConnectionClosedException
    //   108	135	358	org/apache/commons/net/ftp/FTPConnectionClosedException
    //   152	176	358	org/apache/commons/net/ftp/FTPConnectionClosedException
    //   183	190	358	org/apache/commons/net/ftp/FTPConnectionClosedException
    //   195	201	358	org/apache/commons/net/ftp/FTPConnectionClosedException
    //   203	210	358	org/apache/commons/net/ftp/FTPConnectionClosedException
    //   213	249	358	org/apache/commons/net/ftp/FTPConnectionClosedException
    //   273	297	358	org/apache/commons/net/ftp/FTPConnectionClosedException
    //   56	74	365	java/lang/Exception
    //   183	190	365	java/lang/Exception
    //   195	201	365	java/lang/Exception
    //   203	210	365	java/lang/Exception
    //   213	249	365	java/lang/Exception
    //   273	297	365	java/lang/Exception
  }
  
  public InputStream i(String paramString)
  {
    return a(paramString, 0L);
  }
  
  /* Error */
  public java.io.OutputStream j(String paramString)
  {
    // Byte code:
    //   0: aload_1
    //   1: invokestatic 168	com/estrongs/android/util/am:h	(Ljava/lang/String;)Ljava/lang/String;
    //   4: astore 7
    //   6: aload_1
    //   7: invokestatic 171	com/estrongs/android/util/am:i	(Ljava/lang/String;)Ljava/lang/String;
    //   10: astore 6
    //   12: aload_0
    //   13: aload 7
    //   15: iconst_1
    //   16: invokevirtual 174	com/estrongs/old/fs/impl/a/c:a	(Ljava/lang/String;Z)Lorg/apache/commons/net/ftp/FTPClient;
    //   19: astore_2
    //   20: aload_2
    //   21: ifnonnull +63 -> 84
    //   24: iconst_0
    //   25: ifne +57 -> 82
    //   28: aload_2
    //   29: ifnull +12 -> 41
    //   32: aload_2
    //   33: invokevirtual 44	org/apache/commons/net/ftp/FTPClient:logout	()Z
    //   36: pop
    //   37: aload_2
    //   38: invokevirtual 47	org/apache/commons/net/ftp/FTPClient:disconnect	()V
    //   41: aload_0
    //   42: aload 7
    //   44: iconst_1
    //   45: invokevirtual 174	com/estrongs/old/fs/impl/a/c:a	(Ljava/lang/String;Z)Lorg/apache/commons/net/ftp/FTPClient;
    //   48: astore_1
    //   49: aload_1
    //   50: ifnull +32 -> 82
    //   53: aload_1
    //   54: aload 6
    //   56: invokevirtual 524	org/apache/commons/net/ftp/FTPClient:storeFileStream	(Ljava/lang/String;)Ljava/io/OutputStream;
    //   59: ifnonnull +23 -> 82
    //   62: aload_1
    //   63: aload 6
    //   65: invokestatic 185	com/estrongs/android/util/am:bk	(Ljava/lang/String;)Ljava/lang/String;
    //   68: invokevirtual 58	org/apache/commons/net/ftp/FTPClient:changeWorkingDirectory	(Ljava/lang/String;)Z
    //   71: pop
    //   72: aload_1
    //   73: aload 6
    //   75: invokestatic 187	com/estrongs/android/util/am:d	(Ljava/lang/String;)Ljava/lang/String;
    //   78: invokevirtual 524	org/apache/commons/net/ftp/FTPClient:storeFileStream	(Ljava/lang/String;)Ljava/io/OutputStream;
    //   81: pop
    //   82: aconst_null
    //   83: areturn
    //   84: aload_2
    //   85: aload 6
    //   87: invokevirtual 524	org/apache/commons/net/ftp/FTPClient:storeFileStream	(Ljava/lang/String;)Ljava/io/OutputStream;
    //   90: astore_1
    //   91: aload_1
    //   92: astore 4
    //   94: aload_1
    //   95: ifnonnull +34 -> 129
    //   98: aload_2
    //   99: astore_3
    //   100: aload_1
    //   101: astore 5
    //   103: aload_2
    //   104: aload 6
    //   106: invokestatic 185	com/estrongs/android/util/am:bk	(Ljava/lang/String;)Ljava/lang/String;
    //   109: invokevirtual 58	org/apache/commons/net/ftp/FTPClient:changeWorkingDirectory	(Ljava/lang/String;)Z
    //   112: pop
    //   113: aload_2
    //   114: astore_3
    //   115: aload_1
    //   116: astore 5
    //   118: aload_2
    //   119: aload 6
    //   121: invokestatic 187	com/estrongs/android/util/am:d	(Ljava/lang/String;)Ljava/lang/String;
    //   124: invokevirtual 524	org/apache/commons/net/ftp/FTPClient:storeFileStream	(Ljava/lang/String;)Ljava/io/OutputStream;
    //   127: astore 4
    //   129: aload_2
    //   130: astore_3
    //   131: aload 4
    //   133: astore_1
    //   134: aload 4
    //   136: ifnonnull +107 -> 243
    //   139: aload_2
    //   140: ifnull +22 -> 162
    //   143: aload_2
    //   144: astore_3
    //   145: aload 4
    //   147: astore_1
    //   148: aload_2
    //   149: invokevirtual 44	org/apache/commons/net/ftp/FTPClient:logout	()Z
    //   152: pop
    //   153: aload_2
    //   154: astore_3
    //   155: aload 4
    //   157: astore_1
    //   158: aload_2
    //   159: invokevirtual 47	org/apache/commons/net/ftp/FTPClient:disconnect	()V
    //   162: aload_2
    //   163: astore_3
    //   164: aload 4
    //   166: astore_1
    //   167: aload_0
    //   168: aload 7
    //   170: iconst_1
    //   171: invokevirtual 174	com/estrongs/old/fs/impl/a/c:a	(Ljava/lang/String;Z)Lorg/apache/commons/net/ftp/FTPClient;
    //   174: astore_2
    //   175: aload_2
    //   176: astore_3
    //   177: aload 4
    //   179: astore_1
    //   180: aload_2
    //   181: ifnull +62 -> 243
    //   184: aload_2
    //   185: astore_3
    //   186: aload 4
    //   188: astore_1
    //   189: aload_2
    //   190: aload 6
    //   192: invokevirtual 524	org/apache/commons/net/ftp/FTPClient:storeFileStream	(Ljava/lang/String;)Ljava/io/OutputStream;
    //   195: astore 4
    //   197: aload_2
    //   198: astore_3
    //   199: aload 4
    //   201: astore_1
    //   202: aload 4
    //   204: ifnonnull +39 -> 243
    //   207: aload_2
    //   208: astore_3
    //   209: aload 4
    //   211: astore_1
    //   212: aload_2
    //   213: aload 6
    //   215: invokestatic 185	com/estrongs/android/util/am:bk	(Ljava/lang/String;)Ljava/lang/String;
    //   218: invokevirtual 58	org/apache/commons/net/ftp/FTPClient:changeWorkingDirectory	(Ljava/lang/String;)Z
    //   221: pop
    //   222: aload_2
    //   223: astore_3
    //   224: aload 4
    //   226: astore_1
    //   227: aload_2
    //   228: aload 6
    //   230: invokestatic 187	com/estrongs/android/util/am:d	(Ljava/lang/String;)Ljava/lang/String;
    //   233: invokevirtual 524	org/apache/commons/net/ftp/FTPClient:storeFileStream	(Ljava/lang/String;)Ljava/io/OutputStream;
    //   236: astore 4
    //   238: aload 4
    //   240: astore_1
    //   241: aload_2
    //   242: astore_3
    //   243: aload_1
    //   244: ifnull -162 -> 82
    //   247: new 615	com/estrongs/old/fs/impl/a/e
    //   250: dup
    //   251: aload_1
    //   252: aload_3
    //   253: invokespecial 618	com/estrongs/old/fs/impl/a/e:<init>	(Ljava/io/OutputStream;Lorg/apache/commons/net/ftp/FTPClient;)V
    //   256: areturn
    //   257: astore_1
    //   258: aconst_null
    //   259: astore 4
    //   261: aconst_null
    //   262: astore_2
    //   263: aload 4
    //   265: astore_3
    //   266: aload_2
    //   267: astore_1
    //   268: aload_2
    //   269: ifnonnull -26 -> 243
    //   272: aload 4
    //   274: ifnull +24 -> 298
    //   277: aload 4
    //   279: astore_3
    //   280: aload_2
    //   281: astore_1
    //   282: aload 4
    //   284: invokevirtual 44	org/apache/commons/net/ftp/FTPClient:logout	()Z
    //   287: pop
    //   288: aload 4
    //   290: astore_3
    //   291: aload_2
    //   292: astore_1
    //   293: aload 4
    //   295: invokevirtual 47	org/apache/commons/net/ftp/FTPClient:disconnect	()V
    //   298: aload 4
    //   300: astore_3
    //   301: aload_2
    //   302: astore_1
    //   303: aload_0
    //   304: aload 7
    //   306: iconst_1
    //   307: invokevirtual 174	com/estrongs/old/fs/impl/a/c:a	(Ljava/lang/String;Z)Lorg/apache/commons/net/ftp/FTPClient;
    //   310: astore 4
    //   312: aload 4
    //   314: astore_3
    //   315: aload_2
    //   316: astore_1
    //   317: aload 4
    //   319: ifnull -76 -> 243
    //   322: aload 4
    //   324: astore_3
    //   325: aload_2
    //   326: astore_1
    //   327: aload 4
    //   329: aload 6
    //   331: invokevirtual 524	org/apache/commons/net/ftp/FTPClient:storeFileStream	(Ljava/lang/String;)Ljava/io/OutputStream;
    //   334: astore_2
    //   335: aload 4
    //   337: astore_3
    //   338: aload_2
    //   339: astore_1
    //   340: aload_2
    //   341: ifnonnull -98 -> 243
    //   344: aload 4
    //   346: astore_3
    //   347: aload_2
    //   348: astore_1
    //   349: aload 4
    //   351: aload 6
    //   353: invokestatic 185	com/estrongs/android/util/am:bk	(Ljava/lang/String;)Ljava/lang/String;
    //   356: invokevirtual 58	org/apache/commons/net/ftp/FTPClient:changeWorkingDirectory	(Ljava/lang/String;)Z
    //   359: pop
    //   360: aload 4
    //   362: astore_3
    //   363: aload_2
    //   364: astore_1
    //   365: aload 4
    //   367: aload 6
    //   369: invokestatic 187	com/estrongs/android/util/am:d	(Ljava/lang/String;)Ljava/lang/String;
    //   372: invokevirtual 524	org/apache/commons/net/ftp/FTPClient:storeFileStream	(Ljava/lang/String;)Ljava/io/OutputStream;
    //   375: astore_2
    //   376: aload_2
    //   377: astore_1
    //   378: aload 4
    //   380: astore_3
    //   381: goto -138 -> 243
    //   384: astore 4
    //   386: aconst_null
    //   387: astore_1
    //   388: aconst_null
    //   389: astore_2
    //   390: aload_2
    //   391: astore_3
    //   392: aload_1
    //   393: astore 5
    //   395: new 127	com/estrongs/fs/FileSystemException
    //   398: dup
    //   399: aload 4
    //   401: invokespecial 130	com/estrongs/fs/FileSystemException:<init>	(Ljava/lang/Throwable;)V
    //   404: athrow
    //   405: astore_1
    //   406: aload_3
    //   407: astore_2
    //   408: aload 5
    //   410: ifnonnull +57 -> 467
    //   413: aload_2
    //   414: ifnull +12 -> 426
    //   417: aload_2
    //   418: invokevirtual 44	org/apache/commons/net/ftp/FTPClient:logout	()Z
    //   421: pop
    //   422: aload_2
    //   423: invokevirtual 47	org/apache/commons/net/ftp/FTPClient:disconnect	()V
    //   426: aload_0
    //   427: aload 7
    //   429: iconst_1
    //   430: invokevirtual 174	com/estrongs/old/fs/impl/a/c:a	(Ljava/lang/String;Z)Lorg/apache/commons/net/ftp/FTPClient;
    //   433: astore_2
    //   434: aload_2
    //   435: ifnull +32 -> 467
    //   438: aload_2
    //   439: aload 6
    //   441: invokevirtual 524	org/apache/commons/net/ftp/FTPClient:storeFileStream	(Ljava/lang/String;)Ljava/io/OutputStream;
    //   444: ifnonnull +23 -> 467
    //   447: aload_2
    //   448: aload 6
    //   450: invokestatic 185	com/estrongs/android/util/am:bk	(Ljava/lang/String;)Ljava/lang/String;
    //   453: invokevirtual 58	org/apache/commons/net/ftp/FTPClient:changeWorkingDirectory	(Ljava/lang/String;)Z
    //   456: pop
    //   457: aload_2
    //   458: aload 6
    //   460: invokestatic 187	com/estrongs/android/util/am:d	(Ljava/lang/String;)Ljava/lang/String;
    //   463: invokevirtual 524	org/apache/commons/net/ftp/FTPClient:storeFileStream	(Ljava/lang/String;)Ljava/io/OutputStream;
    //   466: pop
    //   467: aload_1
    //   468: athrow
    //   469: astore_2
    //   470: goto -227 -> 243
    //   473: astore_2
    //   474: goto -7 -> 467
    //   477: astore_1
    //   478: aconst_null
    //   479: astore 5
    //   481: aconst_null
    //   482: astore_2
    //   483: goto -75 -> 408
    //   486: astore_1
    //   487: aconst_null
    //   488: astore 5
    //   490: goto -82 -> 408
    //   493: astore 4
    //   495: aconst_null
    //   496: astore_1
    //   497: goto -107 -> 390
    //   500: astore 4
    //   502: goto -112 -> 390
    //   505: astore_2
    //   506: goto -263 -> 243
    //   509: astore_1
    //   510: aconst_null
    //   511: astore_1
    //   512: aload_2
    //   513: astore 4
    //   515: aload_1
    //   516: astore_2
    //   517: goto -254 -> 263
    //   520: astore_3
    //   521: aload_2
    //   522: astore 4
    //   524: aload_1
    //   525: astore_2
    //   526: goto -263 -> 263
    //   529: astore_1
    //   530: aconst_null
    //   531: areturn
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	532	0	this	c
    //   0	532	1	paramString	String
    //   19	439	2	localObject1	Object
    //   469	1	2	localException1	Exception
    //   473	1	2	localException2	Exception
    //   482	1	2	localObject2	Object
    //   505	8	2	localException3	Exception
    //   516	10	2	str1	String
    //   99	308	3	localObject3	Object
    //   520	1	3	localFTPConnectionClosedException	FTPConnectionClosedException
    //   92	287	4	localObject4	Object
    //   384	16	4	localIOException1	IOException
    //   493	1	4	localIOException2	IOException
    //   500	1	4	localIOException3	IOException
    //   513	10	4	localObject5	Object
    //   101	388	5	str2	String
    //   10	449	6	str3	String
    //   4	424	7	str4	String
    // Exception table:
    //   from	to	target	type
    //   12	20	257	org/apache/commons/net/ftp/FTPConnectionClosedException
    //   12	20	384	java/io/IOException
    //   103	113	405	finally
    //   118	129	405	finally
    //   395	405	405	finally
    //   148	153	469	java/lang/Exception
    //   158	162	469	java/lang/Exception
    //   167	175	469	java/lang/Exception
    //   189	197	469	java/lang/Exception
    //   212	222	469	java/lang/Exception
    //   227	238	469	java/lang/Exception
    //   417	426	473	java/lang/Exception
    //   426	434	473	java/lang/Exception
    //   438	467	473	java/lang/Exception
    //   12	20	477	finally
    //   84	91	486	finally
    //   84	91	493	java/io/IOException
    //   103	113	500	java/io/IOException
    //   118	129	500	java/io/IOException
    //   282	288	505	java/lang/Exception
    //   293	298	505	java/lang/Exception
    //   303	312	505	java/lang/Exception
    //   327	335	505	java/lang/Exception
    //   349	360	505	java/lang/Exception
    //   365	376	505	java/lang/Exception
    //   84	91	509	org/apache/commons/net/ftp/FTPConnectionClosedException
    //   103	113	520	org/apache/commons/net/ftp/FTPConnectionClosedException
    //   118	129	520	org/apache/commons/net/ftp/FTPConnectionClosedException
    //   32	41	529	java/lang/Exception
    //   41	49	529	java/lang/Exception
    //   53	82	529	java/lang/Exception
  }
  
  public boolean k(String paramString)
  {
    boolean bool2 = false;
    boolean bool1 = false;
    for (;;)
    {
      try
      {
        paramString = a(paramString, 1L);
        if (paramString != null) {
          bool1 = true;
        }
        bool2 = bool1;
        if (paramString == null) {}
      }
      catch (FileSystemException paramString)
      {
        paramString = paramString;
        if (0 == 0) {
          continue;
        }
        try
        {
          throw new NullPointerException();
        }
        catch (IOException paramString)
        {
          paramString.printStackTrace();
          return false;
        }
      }
      finally
      {
        paramString = finally;
        if (0 == 0) {
          break label71;
        }
      }
      try
      {
        paramString.close();
        bool2 = bool1;
        return bool2;
      }
      catch (IOException paramString)
      {
        paramString.printStackTrace();
        return bool1;
      }
    }
    try
    {
      throw new NullPointerException();
      label71:
      throw paramString;
    }
    catch (IOException localIOException)
    {
      for (;;)
      {
        localIOException.printStackTrace();
      }
    }
  }
}

/* Location:
 * Qualified Name:     com.estrongs.old.fs.impl.a.c
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */