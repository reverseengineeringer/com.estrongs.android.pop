package com.estrongs.android.c;

import android.net.Uri;
import com.estrongs.android.util.am;
import java.io.BufferedReader;
import java.io.ByteArrayInputStream;
import java.io.ByteArrayOutputStream;
import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.io.OutputStream;
import java.io.PrintStream;
import java.net.InetAddress;
import java.net.Socket;
import java.util.Properties;
import java.util.StringTokenizer;
import java.util.Vector;

class j
  implements Runnable
{
  private Socket b;
  
  public j(h paramh, Socket paramSocket)
  {
    b = paramSocket;
    paramh = new Thread(this);
    paramh.setDaemon(true);
    paramh.start();
  }
  
  private int a(byte[] paramArrayOfByte, int paramInt)
  {
    for (int i = paramInt;; i = paramInt + 1)
    {
      paramInt = i;
      if (i < paramArrayOfByte.length)
      {
        paramInt = i;
        if (paramArrayOfByte[i] == 13)
        {
          i += 1;
          paramInt = i;
          if (paramArrayOfByte[i] == 10)
          {
            i += 1;
            paramInt = i;
            if (paramArrayOfByte[i] == 13)
            {
              i += 1;
              paramInt = i;
              if (paramArrayOfByte[i] == 10) {
                paramInt = i;
              }
            }
          }
        }
      }
      else
      {
        return paramInt + 1;
      }
    }
  }
  
  private String a(String paramString)
  {
    try
    {
      paramString = Uri.decode(paramString);
      return paramString;
    }
    catch (Exception paramString)
    {
      a("400 Bad Request", "BAD REQUEST: Bad percent-encoding.");
    }
    return null;
  }
  
  private String a(byte[] paramArrayOfByte, int paramInt1, int paramInt2)
  {
    Object localObject = "";
    if (paramInt2 > 0) {
      localObject = System.getProperty("java.io.tmpdir");
    }
    try
    {
      localObject = File.createTempFile("NanoHTTPD", "", new File((String)localObject));
      FileOutputStream localFileOutputStream = new FileOutputStream((File)localObject);
      localFileOutputStream.write(paramArrayOfByte, paramInt1, paramInt2);
      localFileOutputStream.close();
      localObject = ((File)localObject).getAbsolutePath();
      return (String)localObject;
    }
    catch (Exception paramArrayOfByte)
    {
      System.err.println("Error: " + paramArrayOfByte.getMessage());
    }
    return "";
  }
  
  private void a(BufferedReader paramBufferedReader, Properties paramProperties1, Properties paramProperties2, Properties paramProperties3)
  {
    try
    {
      String str1 = paramBufferedReader.readLine();
      if (str1 == null) {
        return;
      }
      StringTokenizer localStringTokenizer = new StringTokenizer(str1);
      if (!localStringTokenizer.hasMoreTokens()) {
        a("400 Bad Request", "BAD REQUEST: Syntax error. Usage: GET /example/file.html");
      }
      String str2 = localStringTokenizer.nextToken();
      paramProperties1.put("method", str2);
      if (!localStringTokenizer.hasMoreTokens()) {
        a("400 Bad Request", "BAD REQUEST: Missing URI. Usage: GET /example/file.html");
      }
      int k = str1.indexOf(str2);
      int m = str2.length();
      int j = str1.indexOf("HTTP/1") - 1;
      int i = j;
      if (j < 0) {
        i = str1.indexOf("http/1") - 1;
      }
      if (i > 0)
      {
        str1 = str1.substring(m + k + 1, i);
        localStringTokenizer.nextToken();
        i = str1.indexOf('?');
        if (i < 0) {
          break label281;
        }
        a(str1.substring(i + 1), paramProperties2);
      }
      label281:
      for (paramProperties2 = a(str1.substring(0, i));; paramProperties2 = a(str1))
      {
        if (!localStringTokenizer.hasMoreTokens()) {
          break label291;
        }
        for (str1 = paramBufferedReader.readLine(); (str1 != null) && (str1.trim().length() > 0); str1 = paramBufferedReader.readLine())
        {
          i = str1.indexOf(':');
          if (i >= 0) {
            paramProperties3.put(str1.substring(0, i).trim().toLowerCase(), str1.substring(i + 1).trim());
          }
        }
        str1 = localStringTokenizer.nextToken();
        break;
      }
      label291:
      paramProperties1.put("uri", paramProperties2);
      return;
    }
    catch (IOException paramBufferedReader)
    {
      a("500 Internal Server Error", "SERVER INTERNAL ERROR: IOException: " + paramBufferedReader.getMessage());
    }
  }
  
  private void a(String paramString1, String paramString2)
  {
    a(paramString1, "text/plain", null, new ByteArrayInputStream(paramString2.getBytes()));
    throw new InterruptedException();
  }
  
  /* Error */
  private void a(String paramString1, String paramString2, Properties paramProperties, InputStream paramInputStream)
  {
    // Byte code:
    //   0: invokestatic 206	java/lang/Thread:currentThread	()Ljava/lang/Thread;
    //   3: invokevirtual 210	java/lang/Thread:getId	()J
    //   6: pop2
    //   7: iconst_0
    //   8: iconst_1
    //   9: invokestatic 215	com/estrongs/android/util/l:a	(ZZ)V
    //   12: aload_1
    //   13: ifnonnull +37 -> 50
    //   16: new 217	java/lang/Error
    //   19: dup
    //   20: ldc -37
    //   22: invokespecial 220	java/lang/Error:<init>	(Ljava/lang/String;)V
    //   25: athrow
    //   26: astore_1
    //   27: aload 4
    //   29: ifnull +8 -> 37
    //   32: aload 4
    //   34: invokevirtual 223	java/io/InputStream:close	()V
    //   37: aload_0
    //   38: getfield 19	com/estrongs/android/c/j:b	Ljava/net/Socket;
    //   41: invokevirtual 226	java/net/Socket:close	()V
    //   44: iconst_0
    //   45: iconst_1
    //   46: invokestatic 228	com/estrongs/android/util/l:b	(ZZ)V
    //   49: return
    //   50: aload_0
    //   51: getfield 19	com/estrongs/android/c/j:b	Ljava/net/Socket;
    //   54: invokevirtual 232	java/net/Socket:getOutputStream	()Ljava/io/OutputStream;
    //   57: astore 6
    //   59: new 234	java/io/PrintWriter
    //   62: dup
    //   63: aload 6
    //   65: invokespecial 237	java/io/PrintWriter:<init>	(Ljava/io/OutputStream;)V
    //   68: astore 7
    //   70: aload 7
    //   72: new 93	java/lang/StringBuilder
    //   75: dup
    //   76: invokespecial 94	java/lang/StringBuilder:<init>	()V
    //   79: ldc -17
    //   81: invokevirtual 100	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   84: aload_1
    //   85: invokevirtual 100	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   88: ldc -15
    //   90: invokevirtual 100	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   93: invokevirtual 106	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   96: invokevirtual 244	java/io/PrintWriter:print	(Ljava/lang/String;)V
    //   99: aload_2
    //   100: ifnull +32 -> 132
    //   103: aload 7
    //   105: new 93	java/lang/StringBuilder
    //   108: dup
    //   109: invokespecial 94	java/lang/StringBuilder:<init>	()V
    //   112: ldc -10
    //   114: invokevirtual 100	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   117: aload_2
    //   118: invokevirtual 100	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   121: ldc -8
    //   123: invokevirtual 100	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   126: invokevirtual 106	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   129: invokevirtual 244	java/io/PrintWriter:print	(Ljava/lang/String;)V
    //   132: aload_3
    //   133: ifnull +12 -> 145
    //   136: aload_3
    //   137: ldc -6
    //   139: invokevirtual 251	java/util/Properties:getProperty	(Ljava/lang/String;)Ljava/lang/String;
    //   142: ifnonnull +44 -> 186
    //   145: aload 7
    //   147: new 93	java/lang/StringBuilder
    //   150: dup
    //   151: invokespecial 94	java/lang/StringBuilder:<init>	()V
    //   154: ldc -3
    //   156: invokevirtual 100	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   159: invokestatic 259	com/estrongs/android/c/h:j	()Ljava/text/SimpleDateFormat;
    //   162: new 261	java/util/Date
    //   165: dup
    //   166: invokespecial 262	java/util/Date:<init>	()V
    //   169: invokevirtual 268	java/text/SimpleDateFormat:format	(Ljava/util/Date;)Ljava/lang/String;
    //   172: invokevirtual 100	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   175: ldc -8
    //   177: invokevirtual 100	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   180: invokevirtual 106	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   183: invokevirtual 244	java/io/PrintWriter:print	(Ljava/lang/String;)V
    //   186: aload_3
    //   187: ifnull +80 -> 267
    //   190: aload_3
    //   191: invokevirtual 272	java/util/Properties:keys	()Ljava/util/Enumeration;
    //   194: astore_1
    //   195: aload_1
    //   196: invokeinterface 277 1 0
    //   201: ifeq +66 -> 267
    //   204: aload_1
    //   205: invokeinterface 281 1 0
    //   210: checkcast 143	java/lang/String
    //   213: astore_2
    //   214: aload_3
    //   215: aload_2
    //   216: invokevirtual 251	java/util/Properties:getProperty	(Ljava/lang/String;)Ljava/lang/String;
    //   219: astore 8
    //   221: aload 7
    //   223: new 93	java/lang/StringBuilder
    //   226: dup
    //   227: invokespecial 94	java/lang/StringBuilder:<init>	()V
    //   230: aload_2
    //   231: invokevirtual 100	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   234: ldc_w 283
    //   237: invokevirtual 100	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   240: aload 8
    //   242: invokevirtual 100	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   245: ldc -8
    //   247: invokevirtual 100	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   250: invokevirtual 106	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   253: invokevirtual 244	java/io/PrintWriter:print	(Ljava/lang/String;)V
    //   256: goto -61 -> 195
    //   259: astore_1
    //   260: iconst_0
    //   261: iconst_1
    //   262: invokestatic 228	com/estrongs/android/util/l:b	(ZZ)V
    //   265: aload_1
    //   266: athrow
    //   267: aload 7
    //   269: ldc -8
    //   271: invokevirtual 244	java/io/PrintWriter:print	(Ljava/lang/String;)V
    //   274: aload 7
    //   276: invokevirtual 286	java/io/PrintWriter:flush	()V
    //   279: aload 4
    //   281: ifnull +26 -> 307
    //   284: ldc_w 287
    //   287: newarray <illegal type>
    //   289: astore_1
    //   290: aload 4
    //   292: aload_1
    //   293: iconst_0
    //   294: ldc_w 287
    //   297: invokevirtual 291	java/io/InputStream:read	([BII)I
    //   300: istore 5
    //   302: iload 5
    //   304: ifgt +29 -> 333
    //   307: aload 6
    //   309: invokevirtual 292	java/io/OutputStream:flush	()V
    //   312: aload 6
    //   314: invokevirtual 83	java/io/OutputStream:close	()V
    //   317: aload 4
    //   319: ifnull +8 -> 327
    //   322: aload 4
    //   324: invokevirtual 223	java/io/InputStream:close	()V
    //   327: iconst_0
    //   328: iconst_1
    //   329: invokestatic 228	com/estrongs/android/util/l:b	(ZZ)V
    //   332: return
    //   333: aload 6
    //   335: aload_1
    //   336: iconst_0
    //   337: iload 5
    //   339: invokevirtual 80	java/io/OutputStream:write	([BII)V
    //   342: goto -52 -> 290
    //   345: astore_1
    //   346: goto -309 -> 37
    //   349: astore_1
    //   350: goto -306 -> 44
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	353	0	this	j
    //   0	353	1	paramString1	String
    //   0	353	2	paramString2	String
    //   0	353	3	paramProperties	Properties
    //   0	353	4	paramInputStream	InputStream
    //   300	38	5	i	int
    //   57	277	6	localOutputStream	OutputStream
    //   68	207	7	localPrintWriter	java.io.PrintWriter
    //   219	22	8	str	String
    // Exception table:
    //   from	to	target	type
    //   7	12	26	java/io/IOException
    //   16	26	26	java/io/IOException
    //   50	99	26	java/io/IOException
    //   103	132	26	java/io/IOException
    //   136	145	26	java/io/IOException
    //   145	186	26	java/io/IOException
    //   190	195	26	java/io/IOException
    //   195	256	26	java/io/IOException
    //   267	279	26	java/io/IOException
    //   284	290	26	java/io/IOException
    //   290	302	26	java/io/IOException
    //   307	317	26	java/io/IOException
    //   322	327	26	java/io/IOException
    //   333	342	26	java/io/IOException
    //   7	12	259	finally
    //   16	26	259	finally
    //   32	37	259	finally
    //   37	44	259	finally
    //   50	99	259	finally
    //   103	132	259	finally
    //   136	145	259	finally
    //   145	186	259	finally
    //   190	195	259	finally
    //   195	256	259	finally
    //   267	279	259	finally
    //   284	290	259	finally
    //   290	302	259	finally
    //   307	317	259	finally
    //   322	327	259	finally
    //   333	342	259	finally
    //   32	37	345	java/lang/Exception
    //   37	44	349	java/lang/Throwable
  }
  
  private void a(String paramString, Properties paramProperties)
  {
    if (paramString == null) {}
    for (;;)
    {
      return;
      paramString = new StringTokenizer(paramString, "&");
      while (paramString.hasMoreTokens())
      {
        String str = paramString.nextToken();
        int i = str.indexOf('=');
        if (i >= 0) {
          paramProperties.put(a(str.substring(0, i)).trim(), a(str.substring(i + 1)));
        }
      }
    }
  }
  
  private void a(String paramString, byte[] paramArrayOfByte, BufferedReader paramBufferedReader, Properties paramProperties1, Properties paramProperties2)
  {
    label596:
    for (;;)
    {
      int[] arrayOfInt;
      int i;
      try
      {
        arrayOfInt = a(paramArrayOfByte, paramString.getBytes());
        i = 1;
        localObject2 = paramBufferedReader.readLine();
        if (localObject2 != null)
        {
          if (((String)localObject2).indexOf(paramString) == -1) {
            a("400 Bad Request", "BAD REQUEST: Content type is multipart/form-data but next chunk does not start with boundary. Usage: GET /example/file.html");
          }
          i += 1;
          localObject3 = new Properties();
          localObject1 = paramBufferedReader.readLine();
          if ((localObject1 != null) && (((String)localObject1).trim().length() > 0))
          {
            j = ((String)localObject1).indexOf(':');
            if (j != -1) {
              ((Properties)localObject3).put(((String)localObject1).substring(0, j).trim().toLowerCase(), ((String)localObject1).substring(j + 1).trim());
            }
            localObject1 = paramBufferedReader.readLine();
            continue;
          }
          localObject2 = localObject1;
          if (localObject1 == null) {
            break label596;
          }
          localObject2 = ((Properties)localObject3).getProperty("content-disposition");
          if (localObject2 == null) {
            a("400 Bad Request", "BAD REQUEST: Content type is multipart/form-data but no content-disposition info found. Usage: GET /example/file.html");
          }
          localObject4 = new StringTokenizer((String)localObject2, "; ");
          localObject2 = new Properties();
          if (((StringTokenizer)localObject4).hasMoreTokens())
          {
            str = ((StringTokenizer)localObject4).nextToken();
            j = str.indexOf('=');
            if (j == -1) {
              continue;
            }
            ((Properties)localObject2).put(str.substring(0, j).trim().toLowerCase(), str.substring(j + 1).trim());
            continue;
          }
        }
        else
        {
          return;
        }
      }
      catch (IOException paramString)
      {
        a("500 Internal Server Error", "SERVER INTERNAL ERROR: IOException: " + paramString.getMessage());
      }
      Object localObject4 = ((Properties)localObject2).getProperty("name");
      String str = ((String)localObject4).substring(1, ((String)localObject4).length() - 1);
      if (((Properties)localObject3).getProperty("content-type") == null)
      {
        localObject3 = "";
        localObject2 = localObject1;
        localObject1 = localObject3;
        for (;;)
        {
          localObject4 = localObject1;
          localObject3 = localObject2;
          if (localObject2 == null) {
            break;
          }
          localObject4 = localObject1;
          localObject3 = localObject2;
          if (((String)localObject2).indexOf(paramString) != -1) {
            break;
          }
          localObject3 = paramBufferedReader.readLine();
          localObject2 = localObject3;
          if (localObject3 != null)
          {
            j = ((String)localObject3).indexOf(paramString);
            if (j == -1)
            {
              localObject1 = (String)localObject1 + (String)localObject3;
              localObject2 = localObject3;
            }
            else
            {
              localObject1 = (String)localObject1 + ((String)localObject3).substring(0, j - 2);
              localObject2 = localObject3;
            }
          }
        }
      }
      if (i > arrayOfInt.length) {
        a("500 Internal Server Error", "Error processing request");
      }
      int j = a(paramArrayOfByte, arrayOfInt[(i - 2)]);
      paramProperties2.put(str, a(paramArrayOfByte, j, arrayOfInt[(i - 1)] - j - 4));
      Object localObject1 = ((Properties)localObject2).getProperty("filename");
      localObject1 = ((String)localObject1).substring(1, ((String)localObject1).length() - 1);
      do
      {
        localObject2 = paramBufferedReader.readLine();
        localObject4 = localObject1;
        localObject3 = localObject2;
        if (localObject2 == null) {
          break;
        }
      } while (((String)localObject2).indexOf(paramString) == -1);
      Object localObject3 = localObject2;
      localObject4 = localObject1;
      Object localObject2 = localObject3;
      paramProperties1.put(str, localObject4);
    }
  }
  
  public int[] a(byte[] paramArrayOfByte1, byte[] paramArrayOfByte2)
  {
    int i1 = 0;
    Vector localVector = new Vector();
    int i = 0;
    int k = -1;
    int j = 0;
    if (i < paramArrayOfByte1.length)
    {
      int n;
      if (paramArrayOfByte1[i] == paramArrayOfByte2[j])
      {
        int m = k;
        if (j == 0) {
          m = i;
        }
        int i2 = j + 1;
        n = i;
        k = m;
        j = i2;
        if (i2 == paramArrayOfByte2.length)
        {
          localVector.addElement(new Integer(m));
          k = -1;
          j = 0;
          n = i;
        }
      }
      for (;;)
      {
        i = n + 1;
        break;
        n = i - j;
        k = -1;
        j = 0;
      }
    }
    paramArrayOfByte1 = new int[localVector.size()];
    i = i1;
    while (i < paramArrayOfByte1.length)
    {
      paramArrayOfByte1[i] = ((Integer)localVector.elementAt(i)).intValue();
      i += 1;
    }
    return paramArrayOfByte1;
  }
  
  public void run()
  {
    for (;;)
    {
      try
      {
        localInputStream = b.getInputStream();
        if (localInputStream == null) {
          return;
        }
        arrayOfByte = new byte[' '];
        k = localInputStream.read(arrayOfByte, 0, 8192);
        if (k <= 0) {
          continue;
        }
        localObject3 = new BufferedReader(new InputStreamReader(new ByteArrayInputStream(arrayOfByte, 0, k)));
        localObject2 = new Properties();
        localProperties1 = new Properties();
        localProperties2 = new Properties();
        localProperties3 = new Properties();
        a((BufferedReader)localObject3, (Properties)localObject2, localProperties1, localProperties2);
        localObject3 = ((Properties)localObject2).getProperty("method");
        str = ((Properties)localObject2).getProperty("uri");
        l1 = Long.MAX_VALUE;
        localObject2 = localProperties2.getProperty("content-length");
        l2 = l1;
        if (localObject2 == null) {}
      }
      catch (IOException localIOException)
      {
        InputStream localInputStream;
        int k;
        Object localObject3;
        Properties localProperties1;
        Properties localProperties2;
        Properties localProperties3;
        String str;
        long l2;
        try
        {
          byte[] arrayOfByte;
          a("500 Internal Server Error", "SERVER INTERNAL ERROR: IOException: " + localIOException.getMessage());
          return;
        }
        catch (Throwable localThrowable)
        {
          return;
        }
        int j = i + 1;
        continue;
        if (i != 0)
        {
          l1 = l2;
          if (l2 != Long.MAX_VALUE) {
            continue;
          }
        }
        long l1 = 0L;
        continue;
        Object localObject2 = ((ByteArrayOutputStream)localObject4).toByteArray();
        h.a(a, ((ByteArrayOutputStream)localObject4).toByteArray());
        Object localObject4 = new BufferedReader(new InputStreamReader(new ByteArrayInputStream((byte[])localObject2)));
        if (((String)localObject3).equalsIgnoreCase("POST"))
        {
          localObject1 = "";
          StringTokenizer localStringTokenizer = new StringTokenizer(localProperties2.getProperty("content-type"), "; ");
          if (localStringTokenizer.hasMoreTokens()) {
            localObject1 = localStringTokenizer.nextToken();
          }
          if (((String)localObject1).equalsIgnoreCase("multipart/form-data"))
          {
            if (!localStringTokenizer.hasMoreTokens()) {
              a("400 Bad Request", "BAD REQUEST: Content type is multipart/form-data but boundary missing. Usage: GET /example/file.html");
            }
            localObject1 = new StringTokenizer(localStringTokenizer.nextToken(), "=");
            if (((StringTokenizer)localObject1).countTokens() != 2) {
              a("400 Bad Request", "BAD REQUEST: Content type is multipart/form-data but boundary syntax error. Usage: GET /example/file.html");
            }
            ((StringTokenizer)localObject1).nextToken();
            a(((StringTokenizer)localObject1).nextToken(), (byte[])localObject2, (BufferedReader)localObject4, localProperties1, localProperties3);
          }
        }
        else
        {
          localObject1 = am.bq(str);
          if ((localObject1 != null) && (am.G((String)localObject1) != 0)) {
            continue;
          }
          localObject2 = b.getInetAddress().toString();
          i = ((String)localObject2).indexOf('/');
          localObject1 = localObject2;
          if (i != -1) {
            localObject1 = ((String)localObject2).substring(i + 1);
          }
          if (h.e((String)localObject1)) {
            continue;
          }
          localObject1 = null;
          if (localObject1 != null) {
            continue;
          }
          a("500 Internal Server Error", "SERVER INTERNAL ERROR: Serve() returned a null response.");
          ((BufferedReader)localObject4).close();
          localInputStream.close();
          return;
        }
        Object localObject1 = "";
        localObject2 = new char['Ȁ'];
        int i = ((BufferedReader)localObject4).read((char[])localObject2);
        if ((i >= 0) && (!((String)localObject1).endsWith("\r\n")))
        {
          localObject1 = (String)localObject1 + String.valueOf((char[])localObject2, 0, i);
          i = ((BufferedReader)localObject4).read((char[])localObject2);
          continue;
        }
        a(((String)localObject1).trim(), localProperties1);
        continue;
        localObject1 = a.a(str, (String)localObject3, localProperties2, localProperties1, localProperties3);
        continue;
        localObject1 = a.a(str, (String)localObject3, localProperties2, localProperties1, localProperties3);
        continue;
        a(a, b, d, c);
        continue;
        return;
        if (j >= k) {
          continue;
        }
        l1 = l2 - (k - j + 1);
        continue;
      }
      catch (InterruptedException localInterruptedException) {}
      try
      {
        i = Integer.parseInt((String)localObject2);
        l2 = i;
      }
      catch (NumberFormatException localNumberFormatException)
      {
        l2 = l1;
        continue;
        i = 0;
      }
    }
    j = 0;
    if (j < k)
    {
      i = j;
      if (arrayOfByte[j] == 13)
      {
        j += 1;
        i = j;
        if (arrayOfByte[j] == 10)
        {
          j += 1;
          i = j;
          if (arrayOfByte[j] == 13)
          {
            j += 1;
            i = j;
            if (arrayOfByte[j] == 10)
            {
              i = 1;
              j += 1;
              localObject4 = new ByteArrayOutputStream();
              if (j >= k) {
                break label841;
              }
              ((ByteArrayOutputStream)localObject4).write(arrayOfByte, j, k - j);
              break label841;
              arrayOfByte = new byte['Ȁ'];
              i = k;
              while ((i >= 0) && (l1 > 0L))
              {
                j = localInputStream.read(arrayOfByte, 0, 512);
                l2 = l1 - j;
                l1 = l2;
                i = j;
                if (j > 0)
                {
                  ((ByteArrayOutputStream)localObject4).write(arrayOfByte, 0, j);
                  l1 = l2;
                  i = j;
                }
              }
            }
          }
        }
      }
    }
    label841:
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.c.j
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */