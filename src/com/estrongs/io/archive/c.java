package com.estrongs.io.archive;

import android.net.Uri;
import com.estrongs.android.util.bc;
import com.estrongs.android.util.bd;
import com.estrongs.io.archive.a.b;
import com.estrongs.io.archive.sevenzip.r;
import java.io.BufferedOutputStream;
import java.io.FileInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.util.Map;
import org.apache.commons.compress.archivers.zip.ZipLong;

public class c
{
  public static final ZipLong a = new ZipLong(33639248L);
  public static final ZipLong b = new ZipLong(67324752L);
  static final byte[] c = ZipLong.getBytes(101010256L);
  
  public static e a(String paramString1, String paramString2, int paramInt)
  {
    if (f.a.equals(paramString2)) {
      return new com.estrongs.io.archive.b.a(new BufferedOutputStream(com.estrongs.fs.impl.local.h.f(paramString1)), paramInt);
    }
    if ((f.b.equals(paramString2)) || (f.c.equals(paramString2))) {
      return new b(paramString1);
    }
    return null;
  }
  
  public static e a(String paramString, Map<String, String> paramMap)
  {
    return a(paramString, (String)paramMap.get("archive_type"), bd.a((String)paramMap.get("compress_level")));
  }
  
  public static h a(String paramString1, String paramString2, boolean paramBoolean)
  {
    return a(paramString1, paramString2, paramBoolean, null);
  }
  
  public static h a(String paramString1, String paramString2, boolean paramBoolean, String paramString3)
  {
    String str = paramString1;
    if (paramString1.startsWith("file://")) {
      str = Uri.parse(paramString1).getPath();
    }
    if (!paramBoolean)
    {
      h localh = a.a(str);
      paramString1 = localh;
      if (localh == null) {
        break label47;
      }
      paramString1 = localh;
    }
    label47:
    do
    {
      return paramString1;
      paramString1 = null;
      if ((paramString3 != null) && (f.d.equals(paramString3))) {
        return new r(str, paramString2);
      }
      if (bc.M(str))
      {
        if (a(str))
        {
          b(str);
          return new com.estrongs.io.archive.aeszip.h(str, paramString2);
        }
        throw new IOException("Bad zip file.");
      }
      if (str.toLowerCase().endsWith(".gz")) {
        return new com.estrongs.io.archive.a.a(str);
      }
      if (str.toLowerCase().endsWith(".rar"))
      {
        if (new com.estrongs.io.archive.sevenzip.c(str, "AUTO", null).d()) {
          return new r(str, paramString2);
        }
        return new com.estrongs.io.archive.rar.a(str, paramString2);
      }
    } while (!bc.o(str));
    return new r(str, paramString2);
  }
  
  public static h a(String paramString1, Map<String, String> paramMap, String paramString2)
  {
    boolean bool = "true".equalsIgnoreCase((String)paramMap.get("reload"));
    paramString1 = a(paramString1, (String)paramMap.get("charset_name"), bool, paramString2);
    if (paramString1 != null) {}
    return paramString1;
  }
  
  static boolean a(String paramString)
  {
    byte[] arrayOfByte = new byte[12];
    FileInputStream localFileInputStream;
    try
    {
      localFileInputStream = new FileInputStream(paramString);
      int i;
      if (localFileInputStream == null) {
        break label45;
      }
    }
    finally
    {
      try
      {
        i = localFileInputStream.read(arrayOfByte);
        if (localFileInputStream != null) {
          localFileInputStream.close();
        }
        return a(arrayOfByte, i);
      }
      finally {}
      paramString = finally;
      localFileInputStream = null;
    }
    localFileInputStream.close();
    label45:
    throw paramString;
  }
  
  public static boolean a(byte[] paramArrayOfByte, int paramInt)
  {
    if (paramInt < b.getBytes().length) {}
    while ((!a(paramArrayOfByte, b.getBytes())) && (!a(paramArrayOfByte, c))) {
      return false;
    }
    return true;
  }
  
  private static boolean a(byte[] paramArrayOfByte1, byte[] paramArrayOfByte2)
  {
    int i = 0;
    while (i < paramArrayOfByte2.length)
    {
      if (paramArrayOfByte1[i] != paramArrayOfByte2[i]) {
        return false;
      }
      i += 1;
    }
    return true;
  }
  
  public static h b(String paramString, Map<String, String> paramMap)
  {
    return a(paramString, paramMap, null);
  }
  
  /* Error */
  public static void b(String paramString)
  {
    // Byte code:
    //   0: new 208	java/io/File
    //   3: dup
    //   4: aload_0
    //   5: invokespecial 209	java/io/File:<init>	(Ljava/lang/String;)V
    //   8: invokevirtual 213	java/io/File:length	()J
    //   11: lstore_2
    //   12: lload_2
    //   13: ldc2_w 214
    //   16: lcmp
    //   17: iflt +16 -> 33
    //   20: iconst_0
    //   21: ifeq +11 -> 32
    //   24: new 217	java/lang/NullPointerException
    //   27: dup
    //   28: invokespecial 219	java/lang/NullPointerException:<init>	()V
    //   31: athrow
    //   32: return
    //   33: new 221	java/util/zip/ZipFile
    //   36: dup
    //   37: aload_0
    //   38: invokespecial 222	java/util/zip/ZipFile:<init>	(Ljava/lang/String;)V
    //   41: astore_0
    //   42: aload_0
    //   43: ifnull -11 -> 32
    //   46: aload_0
    //   47: invokevirtual 223	java/util/zip/ZipFile:close	()V
    //   50: return
    //   51: astore_0
    //   52: return
    //   53: astore_0
    //   54: aload_0
    //   55: invokevirtual 226	java/io/IOException:getMessage	()Ljava/lang/String;
    //   58: ifnull +31 -> 89
    //   61: aload_0
    //   62: invokevirtual 226	java/io/IOException:getMessage	()Ljava/lang/String;
    //   65: ldc -28
    //   67: invokevirtual 232	java/lang/String:contains	(Ljava/lang/CharSequence;)Z
    //   70: istore_1
    //   71: iload_1
    //   72: ifeq +17 -> 89
    //   75: iconst_0
    //   76: ifeq -44 -> 32
    //   79: new 217	java/lang/NullPointerException
    //   82: dup
    //   83: invokespecial 219	java/lang/NullPointerException:<init>	()V
    //   86: athrow
    //   87: astore_0
    //   88: return
    //   89: aload_0
    //   90: athrow
    //   91: astore_0
    //   92: iconst_0
    //   93: ifeq +11 -> 104
    //   96: new 217	java/lang/NullPointerException
    //   99: dup
    //   100: invokespecial 219	java/lang/NullPointerException:<init>	()V
    //   103: athrow
    //   104: aload_0
    //   105: athrow
    //   106: astore_0
    //   107: return
    //   108: astore 4
    //   110: goto -6 -> 104
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	113	0	paramString	String
    //   70	2	1	bool	boolean
    //   11	2	2	l	long
    //   108	1	4	localIOException	IOException
    // Exception table:
    //   from	to	target	type
    //   46	50	51	java/io/IOException
    //   0	12	53	java/io/IOException
    //   33	42	53	java/io/IOException
    //   79	87	87	java/io/IOException
    //   0	12	91	finally
    //   33	42	91	finally
    //   54	71	91	finally
    //   89	91	91	finally
    //   24	32	106	java/io/IOException
    //   96	104	108	java/io/IOException
  }
}

/* Location:
 * Qualified Name:     com.estrongs.io.archive.c
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */