package com.estrongs.fs.util;

import android.os.ParcelFileDescriptor;
import android.os.StatFs;
import com.estrongs.a.b.s;
import com.estrongs.android.pop.a;
import com.estrongs.android.pop.utils.cl;
import com.estrongs.android.util.ap;
import com.estrongs.android.util.bk;
import com.estrongs.fs.FileExistException;
import com.estrongs.fs.FileSystemException;
import com.estrongs.fs.d;
import com.estrongs.fs.h;
import java.io.BufferedOutputStream;
import java.io.ByteArrayInputStream;
import java.io.ByteArrayOutputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.FileReader;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.io.RandomAccessFile;
import java.io.Reader;
import java.io.StringWriter;
import java.io.Writer;
import java.text.DecimalFormat;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.zip.InflaterInputStream;

public class j
{
  public static final String a = a.f;
  public static final DecimalFormat b = new DecimalFormat("0.00");
  public static final DecimalFormat c = new DecimalFormat("###,###,###");
  private static final DecimalFormat d = new DecimalFormat("0.0");
  private static final DecimalFormat e = new DecimalFormat("#");
  
  public static long a(long paramLong)
  {
    if (paramLong >= 1073741824L) {
      return 1073741824L;
    }
    if (paramLong >= 1048576L) {
      return 1048576L;
    }
    if (paramLong >= 1024L) {
      return 1024L;
    }
    return 1L;
  }
  
  public static File a(String paramString1, String paramString2)
  {
    if ((bk.a(paramString1)) || (bk.a(paramString2)))
    {
      paramString2 = null;
      return paramString2;
    }
    File localFile2 = new File(paramString2);
    File localFile1 = localFile2;
    label91:
    int i;
    if (localFile2.exists())
    {
      if (paramString2.lastIndexOf('.') < 0) {
        break label142;
      }
      paramString2 = paramString2.substring(0, paramString2.lastIndexOf('.')) + "(%1$d)" + paramString2.substring(paramString2.lastIndexOf('.'));
      i = 1;
    }
    for (;;)
    {
      localFile1 = new File(String.format(paramString2, new Object[] { Integer.valueOf(i) }));
      if (!localFile1.exists())
      {
        paramString2 = localFile1;
        if (new File(paramString1).renameTo(localFile1)) {
          break;
        }
        return null;
        label142:
        paramString2 = paramString2 + "(%1$d)";
        break label91;
      }
      i += 1;
    }
  }
  
  public static String a()
  {
    return new SimpleDateFormat("yyyy-MM-dd-HH-mm-ss-SSS").format(new Date());
  }
  
  public static String a(long paramLong1, long paramLong2)
  {
    double d1 = paramLong1;
    double d2 = paramLong2;
    return b.format(d1 / d2);
  }
  
  public static String a(h paramh)
  {
    Object localObject = paramh.getFileType();
    StringBuilder localStringBuilder;
    if (localObject != null)
    {
      localStringBuilder = new StringBuilder().append("");
      if (((com.estrongs.fs.w)localObject).a()) {
        localObject = "d";
      }
    }
    for (localObject = (String)localObject;; localObject = "" + "-")
    {
      if (!(paramh instanceof com.estrongs.fs.impl.local.w)) {
        break label105;
      }
      return (String)localObject + ((com.estrongs.fs.impl.local.w)paramh).a();
      localObject = "-";
      break;
    }
    label105:
    if (paramh.hasPermission(0)) {}
    for (localObject = (String)localObject + "r"; paramh.hasPermission(1); localObject = (String)localObject + "-") {
      return (String)localObject + "w";
    }
    return (String)localObject + "-";
  }
  
  public static String a(String paramString)
  {
    String str = new File(paramString).getName();
    paramString = str;
    if (str.lastIndexOf(".") > 0) {
      paramString = "" + str.substring(0, str.lastIndexOf("."));
    }
    return paramString;
  }
  
  public static String a(byte[] paramArrayOfByte)
  {
    StringBuffer localStringBuffer = new StringBuffer();
    int i = 0;
    int k;
    int j;
    if (i < paramArrayOfByte.length)
    {
      k = paramArrayOfByte[i] >>> 4 & 0xF;
      j = 0;
    }
    for (;;)
    {
      if ((k >= 0) && (k <= 9)) {
        localStringBuffer.append((char)(k + 48));
      }
      for (;;)
      {
        k = paramArrayOfByte[i];
        if (j < 1) {
          break label88;
        }
        i += 1;
        break;
        localStringBuffer.append((char)(k - 10 + 97));
      }
      return localStringBuffer.toString();
      label88:
      j += 1;
      k &= 0xF;
    }
  }
  
  public static void a(ParcelFileDescriptor paramParcelFileDescriptor)
  {
    if (paramParcelFileDescriptor == null) {
      return;
    }
    try
    {
      paramParcelFileDescriptor.close();
      return;
    }
    catch (Throwable paramParcelFileDescriptor) {}
  }
  
  public static void a(File paramFile, String paramString)
  {
    a(paramFile, paramString, null);
  }
  
  public static void a(File paramFile, String paramString1, String paramString2)
  {
    File localFile = null;
    try
    {
      paramFile = d(paramFile);
      localFile = paramFile;
      m.a(paramString1, paramFile, paramString2);
      return;
    }
    finally
    {
      m.a(localFile);
    }
  }
  
  public static void a(InputStream paramInputStream)
  {
    if (paramInputStream != null) {}
    try
    {
      paramInputStream.close();
      return;
    }
    catch (Throwable paramInputStream) {}
  }
  
  public static void a(InputStream paramInputStream, File paramFile)
  {
    a(paramInputStream, paramFile, null);
  }
  
  public static void a(InputStream paramInputStream, File paramFile, s params)
  {
    byte[] arrayOfByte = new byte[524288];
    try
    {
      paramFile = new BufferedOutputStream(new FileOutputStream(paramFile), 1048576);
      try
      {
        for (;;)
        {
          int i = paramInputStream.read(arrayOfByte, 0, arrayOfByte.length);
          if (i != -1)
          {
            if (params != null)
            {
              boolean bool = params.a();
              if (!bool) {}
            }
          }
          else
          {
            a(paramFile);
            return;
          }
          paramFile.write(arrayOfByte, 0, i);
        }
        a(paramFile);
      }
      finally {}
    }
    finally
    {
      paramFile = null;
    }
    throw paramInputStream;
  }
  
  public static void a(OutputStream paramOutputStream)
  {
    if (paramOutputStream != null) {}
    try
    {
      paramOutputStream.close();
      return;
    }
    catch (Throwable paramOutputStream) {}
  }
  
  public static void a(Reader paramReader)
  {
    if (paramReader != null) {}
    try
    {
      paramReader.close();
      return;
    }
    catch (Throwable paramReader) {}
  }
  
  public static void a(Writer paramWriter)
  {
    if (paramWriter != null) {}
    try
    {
      paramWriter.close();
      return;
    }
    catch (Throwable paramWriter) {}
  }
  
  /* Error */
  public static void a(String paramString, com.estrongs.a.b.b paramb, k paramk)
  {
    // Byte code:
    //   0: sipush 16384
    //   3: newarray <illegal type>
    //   5: astore 6
    //   7: new 237	java/io/FileInputStream
    //   10: dup
    //   11: aload_0
    //   12: invokespecial 238	java/io/FileInputStream:<init>	(Ljava/lang/String;)V
    //   15: astore 5
    //   17: aload 5
    //   19: astore_0
    //   20: aload 5
    //   22: aload 6
    //   24: invokevirtual 241	java/io/InputStream:read	([B)I
    //   27: istore_3
    //   28: iload_3
    //   29: ifle +23 -> 52
    //   32: aload_1
    //   33: ifnull +25 -> 58
    //   36: aload 5
    //   38: astore_0
    //   39: aload_1
    //   40: invokeinterface 244 1 0
    //   45: istore 4
    //   47: iload 4
    //   49: ifeq +9 -> 58
    //   52: aload 5
    //   54: invokestatic 246	com/estrongs/fs/util/j:a	(Ljava/io/InputStream;)V
    //   57: return
    //   58: aload 5
    //   60: astore_0
    //   61: aload_2
    //   62: aload 6
    //   64: iconst_0
    //   65: iload_3
    //   66: invokeinterface 250 4 0
    //   71: goto -54 -> 17
    //   74: astore_1
    //   75: aload 5
    //   77: astore_0
    //   78: aload_1
    //   79: athrow
    //   80: astore_2
    //   81: aload_0
    //   82: astore_1
    //   83: aload_2
    //   84: astore_0
    //   85: aload_1
    //   86: invokestatic 246	com/estrongs/fs/util/j:a	(Ljava/io/InputStream;)V
    //   89: aload_0
    //   90: athrow
    //   91: astore_1
    //   92: aconst_null
    //   93: astore 5
    //   95: aload 5
    //   97: astore_0
    //   98: aload_1
    //   99: invokevirtual 253	java/lang/Exception:printStackTrace	()V
    //   102: aload 5
    //   104: invokestatic 246	com/estrongs/fs/util/j:a	(Ljava/io/InputStream;)V
    //   107: return
    //   108: astore_0
    //   109: aconst_null
    //   110: astore_1
    //   111: goto -26 -> 85
    //   114: astore_1
    //   115: goto -20 -> 95
    //   118: astore_1
    //   119: aconst_null
    //   120: astore_0
    //   121: goto -43 -> 78
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	124	0	paramString	String
    //   0	124	1	paramb	com.estrongs.a.b.b
    //   0	124	2	paramk	k
    //   27	39	3	i	int
    //   45	3	4	bool	boolean
    //   15	88	5	localFileInputStream	FileInputStream
    //   5	58	6	arrayOfByte	byte[]
    // Exception table:
    //   from	to	target	type
    //   20	28	74	java/io/IOException
    //   39	47	74	java/io/IOException
    //   61	71	74	java/io/IOException
    //   20	28	80	finally
    //   39	47	80	finally
    //   61	71	80	finally
    //   78	80	80	finally
    //   98	102	80	finally
    //   7	17	91	java/lang/Exception
    //   7	17	108	finally
    //   20	28	114	java/lang/Exception
    //   39	47	114	java/lang/Exception
    //   61	71	114	java/lang/Exception
    //   7	17	118	java/io/IOException
  }
  
  public static boolean a(File paramFile)
  {
    a(paramFile.listFiles());
    paramFile.delete();
    return true;
  }
  
  public static boolean a(String paramString1, String paramString2, boolean paramBoolean, d paramd)
  {
    if (paramString1.charAt(paramString1.length() - 1) != '/') {}
    for (paramString1 = paramString1 + "/" + paramString2 + "/"; paramd.b(paramString1); paramString1 = paramString1 + paramString2 + "/") {
      throw new FileExistException(paramString1);
    }
    return paramd.b(paramString1, paramBoolean);
  }
  
  public static boolean a(File[] paramArrayOfFile)
  {
    if (paramArrayOfFile != null)
    {
      int j = paramArrayOfFile.length;
      int i = 0;
      if (i < j)
      {
        File localFile = paramArrayOfFile[i];
        if (localFile.isDirectory()) {
          a(localFile);
        }
        for (;;)
        {
          i += 1;
          break;
          localFile.delete();
        }
      }
    }
    return true;
  }
  
  public static long b(long paramLong1, long paramLong2)
  {
    if (paramLong2 == 0L) {}
    long l;
    do
    {
      return paramLong1;
      l = paramLong1 % paramLong2;
    } while (l == 0L);
    return paramLong1 + (paramLong2 - l);
  }
  
  public static String b(long paramLong)
  {
    if ("RU".equalsIgnoreCase(cl.c()))
    {
      if (paramLong >= 1073741824L) {
        return "Gб";
      }
      if (paramLong >= 1048576L) {
        return "Mб";
      }
      if (paramLong >= 1024L) {
        return "Kб";
      }
      return "B";
    }
    if (paramLong >= 1073741824L) {
      return "GB";
    }
    if (paramLong >= 1048576L) {
      return "MB";
    }
    if (paramLong >= 1024L) {
      return "KB";
    }
    return "B";
  }
  
  public static String b(File paramFile)
  {
    return b(paramFile, null);
  }
  
  public static String b(File paramFile, String paramString)
  {
    File localFile = null;
    try
    {
      paramFile = c(paramFile);
      localFile = paramFile;
      paramString = m.a(paramFile, paramString);
      return paramString;
    }
    finally
    {
      m.a(localFile);
    }
  }
  
  public static String b(String paramString)
  {
    String str2 = "";
    int i = paramString.lastIndexOf(".");
    String str1 = str2;
    if (i > paramString.lastIndexOf("/"))
    {
      str1 = str2;
      if (i > 0)
      {
        str1 = str2;
        if (i < paramString.length()) {
          str1 = paramString.substring(paramString.lastIndexOf(".") + 1);
        }
      }
    }
    return str1;
  }
  
  public static boolean b(h paramh)
  {
    paramh = paramh.getPath();
    return (paramh == null) || ("apk://".equalsIgnoreCase(paramh)) || ("book://".equalsIgnoreCase(paramh)) || ("encrypt://".equalsIgnoreCase(paramh)) || ("pic://".equalsIgnoreCase(paramh)) || ("music://".equalsIgnoreCase(paramh)) || ("video://".equalsIgnoreCase(paramh)) || (ap.br(paramh));
  }
  
  public static FileInputStream c(File paramFile)
  {
    if (paramFile.exists())
    {
      if (paramFile.isDirectory()) {
        throw new IOException("File '" + paramFile + "' exists but is a directory");
      }
      if (!paramFile.canRead()) {
        throw new IOException("File '" + paramFile + "' cannot be read");
      }
    }
    else
    {
      throw new FileNotFoundException("File '" + paramFile + "' does not exist");
    }
    return new FileInputStream(paramFile);
  }
  
  public static String c(long paramLong)
  {
    double d1 = paramLong;
    paramLong = a(paramLong);
    return b.format(d1 / paramLong) + " " + b(paramLong);
  }
  
  public static boolean c(h paramh)
  {
    paramh = paramh.getExtra("public_share_link");
    return (paramh != null) && (!paramh.equals(""));
  }
  
  public static boolean c(String paramString)
  {
    char[] arrayOfChar = new char[9];
    char[] tmp6_5 = arrayOfChar;
    tmp6_5[0] = 42;
    char[] tmp12_6 = tmp6_5;
    tmp12_6[1] = 34;
    char[] tmp18_12 = tmp12_6;
    tmp18_12[2] = 58;
    char[] tmp24_18 = tmp18_12;
    tmp24_18[3] = 63;
    char[] tmp30_24 = tmp24_18;
    tmp30_24[4] = 60;
    char[] tmp36_30 = tmp30_24;
    tmp36_30[5] = 62;
    char[] tmp42_36 = tmp36_30;
    tmp42_36[6] = 124;
    char[] tmp49_42 = tmp42_36;
    tmp49_42[7] = 92;
    char[] tmp56_49 = tmp49_42;
    tmp56_49[8] = 47;
    tmp56_49;
    int j = arrayOfChar.length;
    int i = 0;
    while (i < j)
    {
      if (paramString.indexOf(arrayOfChar[i]) >= 0) {
        return false;
      }
      i += 1;
    }
    return true;
  }
  
  public static FileOutputStream d(File paramFile)
  {
    if (paramFile.exists())
    {
      if (paramFile.isDirectory()) {
        throw new IOException("File '" + paramFile + "' exists but is a directory");
      }
      if (!paramFile.canWrite()) {
        throw new IOException("File '" + paramFile + "' cannot be written to");
      }
    }
    else
    {
      File localFile = paramFile.getParentFile();
      if ((localFile != null) && (!localFile.exists()) && (!localFile.mkdirs())) {
        throw new IOException("File '" + paramFile + "' could not be created");
      }
    }
    return new FileOutputStream(paramFile);
  }
  
  public static String d(long paramLong)
  {
    return c.format(paramLong);
  }
  
  public static boolean d(String paramString)
  {
    char[] arrayOfChar = new char[8];
    char[] tmp6_5 = arrayOfChar;
    tmp6_5[0] = 42;
    char[] tmp12_6 = tmp6_5;
    tmp12_6[1] = 34;
    char[] tmp18_12 = tmp12_6;
    tmp18_12[2] = 58;
    char[] tmp24_18 = tmp18_12;
    tmp24_18[3] = 63;
    char[] tmp30_24 = tmp24_18;
    tmp30_24[4] = 60;
    char[] tmp36_30 = tmp30_24;
    tmp36_30[5] = 62;
    char[] tmp42_36 = tmp36_30;
    tmp42_36[6] = 124;
    char[] tmp49_42 = tmp42_36;
    tmp49_42[7] = 92;
    tmp49_42;
    int j = arrayOfChar.length;
    int i = 0;
    while (i < j)
    {
      if (paramString.indexOf(arrayOfChar[i]) >= 0) {
        return false;
      }
      i += 1;
    }
    return true;
  }
  
  public static String e(long paramLong)
  {
    double d1 = paramLong;
    long l = paramLong / 1048576L;
    if (l > 9999L)
    {
      d1 = l;
      return d.format(d1 / 1024.0D) + " " + f(paramLong);
    }
    if (l > 999L)
    {
      d1 = l;
      return b.format(d1 / 1024.0D) + " " + f(paramLong);
    }
    if (l > 1L) {
      return e.format(l) + " " + f(paramLong);
    }
    if (paramLong > 1024000L) {
      return b.format(d1 / 1048576.0D) + " " + f(paramLong);
    }
    if (paramLong > 1024L) {
      return e.format(paramLong / 1024L) + " " + f(paramLong);
    }
    if (paramLong > 1000L) {
      return b.format(d1 / 1024.0D) + " " + f(paramLong);
    }
    return e.format(paramLong) + " " + f(paramLong);
  }
  
  public static String e(File paramFile)
  {
    if (!paramFile.exists()) {
      return null;
    }
    ByteArrayOutputStream localByteArrayOutputStream;
    try
    {
      int i = Long.valueOf(paramFile.length()).intValue();
      byte[] arrayOfByte = new byte[i];
      paramFile = new RandomAccessFile(paramFile, "r");
      paramFile.read(arrayOfByte, 0, i);
      paramFile.close();
      localByteArrayOutputStream = new ByteArrayOutputStream();
      paramFile = new InflaterInputStream(new ByteArrayInputStream(arrayOfByte));
      arrayOfByte = new byte['Ѐ'];
      for (;;)
      {
        i = paramFile.read(arrayOfByte, 0, 1024);
        if (i <= 0) {
          break;
        }
        localByteArrayOutputStream.write(arrayOfByte, 0, i);
      }
      return paramFile;
    }
    catch (Exception paramFile)
    {
      paramFile.printStackTrace();
      paramFile = null;
    }
    for (;;)
    {
      paramFile.close();
      paramFile = new String(localByteArrayOutputStream.toByteArray());
      localByteArrayOutputStream.close();
    }
  }
  
  public static String e(String paramString)
  {
    String str;
    if (paramString == null)
    {
      str = null;
      return str;
    }
    String[] arrayOfString = new String[9];
    arrayOfString[0] = "*";
    arrayOfString[1] = "\"";
    arrayOfString[2] = ":";
    arrayOfString[3] = "?";
    arrayOfString[4] = "<";
    arrayOfString[5] = ">";
    arrayOfString[6] = "|";
    arrayOfString[7] = "\\";
    arrayOfString[8] = "/";
    int j = arrayOfString.length;
    int i = 0;
    for (;;)
    {
      str = paramString;
      if (i >= j) {
        break;
      }
      paramString = paramString.replace(arrayOfString[i], "");
      i += 1;
    }
  }
  
  public static String f(long paramLong)
  {
    if ("RU".equalsIgnoreCase(cl.c()))
    {
      if (paramLong >= 1048576000L) {
        return "Gб";
      }
      if (paramLong >= 1024000L) {
        return "Mб";
      }
      if (paramLong >= 1000L) {
        return "Kб";
      }
      return "B";
    }
    if (paramLong >= 1048576000L) {
      return "GB";
    }
    if (paramLong >= 1024000L) {
      return "MB";
    }
    if (paramLong >= 1000L) {
      return "KB";
    }
    return "B";
  }
  
  public static boolean f(String paramString)
  {
    try
    {
      paramString = a + "/tmp/" + paramString;
      i(paramString);
      a(new File(paramString));
      return true;
    }
    catch (Exception paramString) {}
    return false;
  }
  
  public static File g(String paramString)
  {
    paramString = new File(paramString);
    if (!paramString.exists()) {
      paramString.mkdirs();
    }
    return paramString;
  }
  
  public static File h(String paramString)
  {
    return i(a + "/" + paramString);
  }
  
  public static File i(String paramString)
  {
    if (paramString == null) {
      return null;
    }
    paramString = new File(paramString);
    if (!paramString.getParentFile().exists()) {
      paramString.getParentFile().mkdirs();
    }
    paramString.createNewFile();
    return paramString;
  }
  
  public static StringBuffer j(String paramString)
  {
    StringWriter localStringWriter = new StringWriter();
    paramString = new FileReader(paramString);
    char[] arrayOfChar = new char['Ȁ'];
    for (;;)
    {
      int i = paramString.read(arrayOfChar);
      if (i <= 0) {
        break;
      }
      localStringWriter.write(arrayOfChar, 0, i);
    }
    return localStringWriter.getBuffer();
  }
  
  public static long[] k(String paramString)
  {
    try
    {
      paramString = new StatFs(paramString);
      long l1 = paramString.getBlockCount();
      long l2 = paramString.getAvailableBlocks();
      long l3 = paramString.getBlockSize();
      return new long[] { l1, l2, l3 };
    }
    catch (IllegalArgumentException paramString) {}
    return tmp57_53;
  }
  
  public static long l(String paramString)
  {
    return k(paramString)[2];
  }
  
  public static String m(String paramString)
  {
    int i = 1;
    String str2;
    if (bk.a(paramString)) {
      str2 = null;
    }
    for (;;)
    {
      return str2;
      str2 = paramString;
      str1 = paramString;
      try
      {
        if (!d.a().b(paramString)) {
          continue;
        }
        str1 = paramString;
        String str3;
        if (paramString.lastIndexOf('.') >= 0)
        {
          str1 = paramString;
          str3 = paramString.substring(0, paramString.lastIndexOf('.')) + "(%1$d)" + paramString.substring(paramString.lastIndexOf('.'));
        }
        for (;;)
        {
          str1 = paramString;
          paramString = String.format(str3, new Object[] { Integer.valueOf(i) });
          str2 = paramString;
          str1 = paramString;
          if (!d.a().b(paramString)) {
            break;
          }
          i += 1;
          continue;
          str1 = paramString;
          str3 = paramString + "(%1$d)";
        }
        return str1;
      }
      catch (FileSystemException paramString)
      {
        paramString.printStackTrace();
      }
    }
  }
  
  public static boolean n(String paramString)
  {
    paramString = new File(paramString);
    return (paramString.exists()) || (paramString.mkdir());
  }
}

/* Location:
 * Qualified Name:     com.estrongs.fs.util.j
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */