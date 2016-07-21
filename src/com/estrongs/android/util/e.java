package com.estrongs.android.util;

import a.a.a.a.d;
import java.lang.reflect.Method;
import java.nio.charset.Charset;
import java.util.Locale;
import org.apache.commons.io.ByteOrderMark;
import org.mozilla.a.a.h;
import org.mozilla.universalchardet.UniversalDetector;

public class e
{
  public static String[] a = { "AUTO", "UTF-8", "GBK", "ISO-8859-1", "Windows-1252", "EUC-KR", "EUC-JP", "Shift_JIS", "ISO-2022-JP", "BIG5", "Windows-1251", "Cp866", "ISO-8859-2", "ISO-8859-3", "ISO-8859-4", "ISO-8859-5", "ISO-8859-6", "ISO-8859-7", "ISO-8859-8", "ISO-8859-9", "ISO-8859-10", "ISO-8859-11", "ISO-8859-13", "ISO-8859-14", "ISO-8859-15", "ISO-8859-16", "ASCII", "UTF-16LE", "UTF-16BE" };
  static final ByteOrderMark[] b = { ByteOrderMark.UTF_8, ByteOrderMark.UTF_16LE, ByteOrderMark.UTF_16BE };
  
  public static String a()
  {
    String str = Locale.getDefault().getCountry();
    if ("CN".equalsIgnoreCase(str)) {
      return "GBK";
    }
    if ("TW".equalsIgnoreCase(str)) {
      return "BIG5";
    }
    if ("JP".equalsIgnoreCase(str)) {
      return "EUC-JP";
    }
    if ("KR".equalsIgnoreCase(str)) {
      return "EUC-KR";
    }
    return "UTF-8";
  }
  
  public static String a(int paramInt)
  {
    return a[paramInt];
  }
  
  /* Error */
  public static String a(java.io.InputStream paramInputStream)
  {
    // Byte code:
    //   0: aload_0
    //   1: ifnonnull +5 -> 6
    //   4: aconst_null
    //   5: areturn
    //   6: aload_0
    //   7: astore 4
    //   9: aload_0
    //   10: invokevirtual 119	java/io/InputStream:markSupported	()Z
    //   13: ifne +13 -> 26
    //   16: new 121	java/io/BufferedInputStream
    //   19: dup
    //   20: aload_0
    //   21: invokespecial 125	java/io/BufferedInputStream:<init>	(Ljava/io/InputStream;)V
    //   24: astore 4
    //   26: aload 4
    //   28: iconst_4
    //   29: invokevirtual 129	java/io/InputStream:mark	(I)V
    //   32: iconst_4
    //   33: newarray <illegal type>
    //   35: dup
    //   36: iconst_0
    //   37: aload 4
    //   39: invokevirtual 133	java/io/InputStream:read	()I
    //   42: iastore
    //   43: dup
    //   44: iconst_1
    //   45: aload 4
    //   47: invokevirtual 133	java/io/InputStream:read	()I
    //   50: iastore
    //   51: dup
    //   52: iconst_2
    //   53: aload 4
    //   55: invokevirtual 133	java/io/InputStream:read	()I
    //   58: iastore
    //   59: dup
    //   60: iconst_3
    //   61: aload 4
    //   63: invokevirtual 133	java/io/InputStream:read	()I
    //   66: iastore
    //   67: invokestatic 136	com/estrongs/android/util/e:a	([I)Lorg/apache/commons/io/ByteOrderMark;
    //   70: astore_0
    //   71: aload 4
    //   73: invokevirtual 139	java/io/InputStream:reset	()V
    //   76: aload_0
    //   77: ifnull +20 -> 97
    //   80: aload_0
    //   81: invokevirtual 142	org/apache/commons/io/ByteOrderMark:getCharsetName	()Ljava/lang/String;
    //   84: areturn
    //   85: astore 5
    //   87: aconst_null
    //   88: astore_0
    //   89: aload 5
    //   91: invokevirtual 145	java/io/IOException:printStackTrace	()V
    //   94: goto -18 -> 76
    //   97: sipush 1024
    //   100: newarray <illegal type>
    //   102: astore_0
    //   103: aload 4
    //   105: sipush 1024
    //   108: invokevirtual 129	java/io/InputStream:mark	(I)V
    //   111: aload 4
    //   113: aload_0
    //   114: iconst_0
    //   115: aload_0
    //   116: arraylength
    //   117: invokevirtual 148	java/io/InputStream:read	([BII)I
    //   120: istore_1
    //   121: aload 4
    //   123: invokevirtual 139	java/io/InputStream:reset	()V
    //   126: iload_1
    //   127: sipush 1024
    //   130: if_icmpge +30 -> 160
    //   133: aload 4
    //   135: aload_0
    //   136: iconst_0
    //   137: aload_0
    //   138: arraylength
    //   139: invokevirtual 148	java/io/InputStream:read	([BII)I
    //   142: istore_1
    //   143: iload_1
    //   144: iconst_m1
    //   145: if_icmpeq +12 -> 157
    //   148: aload_0
    //   149: iload_1
    //   150: invokestatic 151	com/estrongs/android/util/e:a	([BI)Ljava/lang/String;
    //   153: astore_0
    //   154: aload_0
    //   155: areturn
    //   156: astore_0
    //   157: ldc 16
    //   159: areturn
    //   160: new 153	org/mozilla/a/a/h
    //   163: dup
    //   164: invokespecial 155	org/mozilla/a/a/h:<init>	()V
    //   167: astore 5
    //   169: new 157	com/estrongs/android/util/f
    //   172: dup
    //   173: invokespecial 158	com/estrongs/android/util/f:<init>	()V
    //   176: astore 6
    //   178: aload 5
    //   180: aload 6
    //   182: invokevirtual 161	org/mozilla/a/a/h:a	(Lorg/mozilla/a/a/q;)V
    //   185: iconst_0
    //   186: istore_1
    //   187: iload_1
    //   188: ldc -94
    //   190: if_icmpge +35 -> 225
    //   193: aload 4
    //   195: aload_0
    //   196: iconst_0
    //   197: aload_0
    //   198: arraylength
    //   199: invokevirtual 148	java/io/InputStream:read	([BII)I
    //   202: istore_2
    //   203: iload_2
    //   204: iconst_m1
    //   205: if_icmpeq +20 -> 225
    //   208: iload_1
    //   209: iload_2
    //   210: iadd
    //   211: istore_1
    //   212: aload 5
    //   214: aload_0
    //   215: iload_2
    //   216: iconst_0
    //   217: invokevirtual 165	org/mozilla/a/a/h:a	([BIZ)Z
    //   220: istore_3
    //   221: iload_3
    //   222: ifeq -35 -> 187
    //   225: aload 5
    //   227: invokevirtual 167	org/mozilla/a/a/h:b	()V
    //   230: aload 6
    //   232: invokevirtual 169	com/estrongs/android/util/f:a	()Ljava/lang/String;
    //   235: ifnull +9 -> 244
    //   238: aload 6
    //   240: invokevirtual 169	com/estrongs/android/util/f:a	()Ljava/lang/String;
    //   243: areturn
    //   244: aload 5
    //   246: invokevirtual 173	org/mozilla/a/a/h:c	()[Ljava/lang/String;
    //   249: ifnull +20 -> 269
    //   252: aload 5
    //   254: invokevirtual 173	org/mozilla/a/a/h:c	()[Ljava/lang/String;
    //   257: arraylength
    //   258: ifle +11 -> 269
    //   261: aload 5
    //   263: invokevirtual 173	org/mozilla/a/a/h:c	()[Ljava/lang/String;
    //   266: iconst_0
    //   267: aaload
    //   268: areturn
    //   269: ldc 16
    //   271: areturn
    //   272: astore_0
    //   273: goto -48 -> 225
    //   276: astore 5
    //   278: iconst_0
    //   279: istore_1
    //   280: goto -154 -> 126
    //   283: astore 5
    //   285: goto -159 -> 126
    //   288: astore 5
    //   290: goto -201 -> 89
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	293	0	paramInputStream	java.io.InputStream
    //   120	160	1	i	int
    //   202	14	2	j	int
    //   220	2	3	bool	boolean
    //   7	187	4	localObject	Object
    //   85	5	5	localIOException1	java.io.IOException
    //   167	95	5	localh	h
    //   276	1	5	localIOException2	java.io.IOException
    //   283	1	5	localIOException3	java.io.IOException
    //   288	1	5	localIOException4	java.io.IOException
    //   176	63	6	localf	f
    // Exception table:
    //   from	to	target	type
    //   26	71	85	java/io/IOException
    //   133	143	156	java/io/IOException
    //   148	154	156	java/io/IOException
    //   193	203	272	java/io/IOException
    //   212	221	272	java/io/IOException
    //   103	121	276	java/io/IOException
    //   121	126	283	java/io/IOException
    //   71	76	288	java/io/IOException
  }
  
  private static String a(byte[] paramArrayOfByte)
  {
    UniversalDetector localUniversalDetector = new UniversalDetector(null);
    localUniversalDetector.a(paramArrayOfByte, 0, paramArrayOfByte.length);
    localUniversalDetector.b();
    paramArrayOfByte = localUniversalDetector.a();
    localUniversalDetector.c();
    return paramArrayOfByte;
  }
  
  public static String a(byte[] paramArrayOfByte, int paramInt)
  {
    return a(paramArrayOfByte, paramInt, false);
  }
  
  public static String a(byte[] paramArrayOfByte, int paramInt, boolean paramBoolean)
  {
    if (paramArrayOfByte == null) {}
    do
    {
      return null;
      paramArrayOfByte = b(paramArrayOfByte, paramInt);
      String str = b(paramArrayOfByte, 0, true);
      if (str != null) {
        return str;
      }
      paramInt = b();
      if ("TW".equalsIgnoreCase(Locale.getDefault().getCountry()))
      {
        str = b(paramArrayOfByte, paramInt, true);
        if (str != null) {
          return str;
        }
        str = a(paramArrayOfByte);
        if (str != null) {
          return str;
        }
      }
      paramArrayOfByte = b(paramArrayOfByte, paramInt, paramBoolean);
      if (paramArrayOfByte != null) {
        return paramArrayOfByte;
      }
    } while (paramBoolean);
    return "UTF-8";
  }
  
  private static ByteOrderMark a(int[] paramArrayOfInt)
  {
    ByteOrderMark[] arrayOfByteOrderMark = b;
    int j = arrayOfByteOrderMark.length;
    int i = 0;
    while (i < j)
    {
      ByteOrderMark localByteOrderMark = arrayOfByteOrderMark[i];
      if (a(paramArrayOfInt, localByteOrderMark)) {
        return localByteOrderMark;
      }
      i += 1;
    }
    return null;
  }
  
  private static boolean a(int[] paramArrayOfInt, ByteOrderMark paramByteOrderMark)
  {
    int i = 0;
    while (i < paramByteOrderMark.length())
    {
      if (paramByteOrderMark.get(i) != paramArrayOfInt[i]) {
        return false;
      }
      i += 1;
    }
    return true;
  }
  
  public static byte[] a(byte[] paramArrayOfByte1, byte[] paramArrayOfByte2)
  {
    byte[] arrayOfByte = new byte[paramArrayOfByte1.length + paramArrayOfByte2.length];
    System.arraycopy(paramArrayOfByte1, 0, arrayOfByte, 0, paramArrayOfByte1.length);
    System.arraycopy(paramArrayOfByte2, 0, arrayOfByte, paramArrayOfByte1.length, paramArrayOfByte2.length);
    return arrayOfByte;
  }
  
  public static int b()
  {
    String str = Locale.getDefault().getCountry();
    if ("CN".equalsIgnoreCase(str)) {
      return 2;
    }
    if ("TW".equalsIgnoreCase(str)) {
      return 4;
    }
    if ("JP".equalsIgnoreCase(str)) {
      return 1;
    }
    if ("KR".equalsIgnoreCase(str)) {
      return 5;
    }
    return 0;
  }
  
  private static String b(byte[] paramArrayOfByte, int paramInt, boolean paramBoolean)
  {
    h localh = new h(paramInt);
    f localf = new f();
    localh.a(localf);
    localh.a(paramArrayOfByte, paramArrayOfByte.length, false);
    localh.b();
    paramArrayOfByte = localf.a();
    if (paramArrayOfByte != null) {
      return paramArrayOfByte;
    }
    if (paramBoolean) {
      return null;
    }
    if ((!paramBoolean) && (localh.c() != null) && (localh.c().length > 0)) {
      return localh.c()[0];
    }
    return null;
  }
  
  private static byte[] b(byte[] paramArrayOfByte, int paramInt)
  {
    int i = 0;
    if (paramInt >= 1024) {}
    int m;
    do
    {
      return paramArrayOfByte;
      m = 1024 / paramInt;
      if (m != 1) {
        break;
      }
    } while (paramArrayOfByte.length <= paramInt);
    byte[] arrayOfByte = new byte[paramInt];
    while (i < paramInt)
    {
      arrayOfByte[i] = paramArrayOfByte[i];
      i += 1;
    }
    return arrayOfByte;
    arrayOfByte = new byte[paramInt * m];
    i = 0;
    while (i < m)
    {
      int k = i * paramInt;
      int j = 0;
      while (k < (i + 1) * paramInt)
      {
        arrayOfByte[k] = paramArrayOfByte[j];
        k += 1;
        j += 1;
      }
      i += 1;
    }
    return arrayOfByte;
  }
  
  public static void c()
  {
    if (Charset.isSupported("Cp866")) {
      return;
    }
    try
    {
      Method localMethod1 = Charset.class.getDeclaredMethod("cacheCharset", new Class[] { String.class, Charset.class });
      localMethod1.setAccessible(true);
      localMethod1.invoke(Charset.class, new Object[] { "Cp866", new d() });
      return;
    }
    catch (Exception localException1)
    {
      l.d("CharsetUtil", "Can't find the method cacheCharset(String, Charset)");
      try
      {
        Method localMethod2 = Charset.class.getDeclaredMethod("cacheCharset", new Class[] { Charset.class });
        localMethod2.setAccessible(true);
        localMethod2.invoke(Charset.class, new Object[] { new d() });
        return;
      }
      catch (Exception localException2)
      {
        l.d("CharsetUtil", "Can't find the method cacheCharset(Charset)");
      }
    }
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.util.e
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */