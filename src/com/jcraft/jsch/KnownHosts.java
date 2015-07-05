package com.jcraft.jsch;

import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.io.PrintStream;
import java.util.ArrayList;
import java.util.Vector;

public class KnownHosts
  implements HostKeyRepository
{
  private static final byte[] e = { 32 };
  private static final byte[] f = Util.b("\n");
  private JSch a = null;
  private String b = null;
  private Vector c = null;
  private MAC d = null;
  
  KnownHosts(JSch paramJSch)
  {
    a = paramJSch;
    c = new Vector();
  }
  
  private int a(byte[] paramArrayOfByte)
  {
    if (paramArrayOfByte[8] == 100) {
      return 1;
    }
    if (paramArrayOfByte[8] == 114) {
      return 2;
    }
    return 3;
  }
  
  private String b(String paramString1, String paramString2)
  {
    int j = paramString2.length();
    int k = paramString1.length();
    int i = 0;
    label20:
    String str;
    if (i >= k)
    {
      str = paramString1;
      if (paramString1.endsWith(paramString2))
      {
        str = paramString1;
        if (k - i == j) {
          if (j != k) {
            break label131;
          }
        }
      }
    }
    label131:
    for (i = 0;; i = k - j - 1)
    {
      str = paramString1.substring(0, i);
      return str;
      int m = paramString1.indexOf(',', i);
      if (m == -1) {
        break label20;
      }
      if (!paramString2.equals(paramString1.substring(i, m)))
      {
        i = m + 1;
        break;
      }
      return paramString1.substring(0, i) + paramString1.substring(m + 1);
    }
  }
  
  /* Error */
  private MAC c()
  {
    // Byte code:
    //   0: aload_0
    //   1: monitorenter
    //   2: aload_0
    //   3: getfield 43	com/jcraft/jsch/KnownHosts:d	Lcom/jcraft/jsch/MAC;
    //   6: astore_1
    //   7: aload_1
    //   8: ifnonnull +21 -> 29
    //   11: aload_0
    //   12: ldc 98
    //   14: invokestatic 103	com/jcraft/jsch/JSch:c	(Ljava/lang/String;)Ljava/lang/String;
    //   17: invokestatic 109	java/lang/Class:forName	(Ljava/lang/String;)Ljava/lang/Class;
    //   20: invokevirtual 113	java/lang/Class:newInstance	()Ljava/lang/Object;
    //   23: checkcast 115	com/jcraft/jsch/MAC
    //   26: putfield 43	com/jcraft/jsch/KnownHosts:d	Lcom/jcraft/jsch/MAC;
    //   29: aload_0
    //   30: getfield 43	com/jcraft/jsch/KnownHosts:d	Lcom/jcraft/jsch/MAC;
    //   33: astore_1
    //   34: aload_0
    //   35: monitorexit
    //   36: aload_1
    //   37: areturn
    //   38: astore_1
    //   39: getstatic 121	java/lang/System:err	Ljava/io/PrintStream;
    //   42: new 76	java/lang/StringBuilder
    //   45: dup
    //   46: ldc 123
    //   48: invokespecial 83	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   51: aload_1
    //   52: invokevirtual 126	java/lang/StringBuilder:append	(Ljava/lang/Object;)Ljava/lang/StringBuilder;
    //   55: invokevirtual 94	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   58: invokevirtual 131	java/io/PrintStream:println	(Ljava/lang/String;)V
    //   61: goto -32 -> 29
    //   64: astore_1
    //   65: aload_0
    //   66: monitorexit
    //   67: aload_1
    //   68: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	69	0	this	KnownHosts
    //   6	31	1	localMAC	MAC
    //   38	14	1	localException	Exception
    //   64	4	1	localObject	Object
    // Exception table:
    //   from	to	target	type
    //   11	29	38	java/lang/Exception
    //   2	7	64	finally
    //   11	29	64	finally
    //   29	34	64	finally
    //   39	61	64	finally
  }
  
  private void c(String paramString)
  {
    paramString = new HostKey(paramString, 3, null);
    c.addElement(paramString);
  }
  
  public int a(String paramString, byte[] paramArrayOfByte)
  {
    if (paramString == null)
    {
      j = 1;
      return j;
    }
    int k = a(paramArrayOfByte);
    Vector localVector = c;
    int j = 0;
    int i = 1;
    for (;;)
    {
      try
      {
        if (j >= c.size())
        {
          j = i;
          if (i != 1) {
            break;
          }
          j = i;
          if (!paramString.startsWith("[")) {
            break;
          }
          j = i;
          if (paramString.indexOf("]:") <= 1) {
            break;
          }
          return a(paramString.substring(1, paramString.indexOf("]:")), paramArrayOfByte);
        }
        HostKey localHostKey = (HostKey)c.elementAt(j);
        if ((localHostKey.a(paramString)) && (c == k))
        {
          if (!Util.b(d, paramArrayOfByte)) {
            break label155;
          }
          return 0;
        }
      }
      finally {}
      break label157;
      label155:
      i = 2;
      label157:
      j += 1;
    }
  }
  
  public String a()
  {
    return b;
  }
  
  public void a(HostKey paramHostKey, UserInfo paramUserInfo)
  {
    int i = c;
    Object localObject1 = paramHostKey.a();
    Object localObject2 = d;
    localObject2 = c;
    i = 0;
    for (;;)
    {
      int k;
      boolean bool;
      try
      {
        if (i >= c.size())
        {
          c.addElement(paramHostKey);
          paramHostKey = a();
          if (paramHostKey != null)
          {
            k = 1;
            localObject1 = new File(Util.c(paramHostKey));
            if (!((File)localObject1).exists())
            {
              if (paramUserInfo == null) {
                break label352;
              }
              bool = paramUserInfo.a(paramHostKey + " does not exist.\n" + "Are you sure you want to create it?");
              localObject1 = ((File)localObject1).getParentFile();
              k = bool;
              if (bool)
              {
                k = bool;
                if (localObject1 != null)
                {
                  k = bool;
                  if (!((File)localObject1).exists())
                  {
                    bool = paramUserInfo.a("The parent directory " + localObject1 + " does not exist.\n" + "Are you sure you want to create it?");
                    k = bool;
                    if (bool)
                    {
                      if (((File)localObject1).mkdirs()) {
                        break label295;
                      }
                      paramUserInfo.d(localObject1 + " has not been created.");
                      k = 0;
                    }
                  }
                }
              }
              if (localObject1 == null) {
                k = 0;
              }
            }
            if (k == 0) {}
          }
        }
      }
      finally {}
      try
      {
        b(paramHostKey);
        return;
      }
      catch (Exception paramHostKey)
      {
        label295:
        System.err.println("sync known_hosts: " + paramHostKey);
        return;
      }
      HostKey localHostKey = (HostKey)c.elementAt(i);
      if (localHostKey.a((String)localObject1))
      {
        int j = c;
        break label358;
        paramUserInfo.d(localObject1 + " has been succesfully created.\nPlease check its access permission.");
        k = bool;
        continue;
        label352:
        k = 0;
        continue;
      }
      label358:
      i += 1;
    }
  }
  
  void a(InputStream paramInputStream)
  {
    c.removeAllElements();
    StringBuffer localStringBuffer = new StringBuffer();
    int i;
    int j;
    label59:
    label63:
    Object localObject2;
    int k;
    label155:
    String str2;
    label189:
    int m;
    label235:
    label255:
    String str3;
    label292:
    label338:
    label350:
    label366:
    label388:
    int n;
    for (;;)
    {
      try
      {
        arrayOfByte = new byte['Ѐ'];
      }
      catch (Exception localException)
      {
        byte[] arrayOfByte;
        label453:
        label465:
        label539:
        if (!(localException instanceof JSchException)) {
          continue;
        }
        throw ((JSchException)localException);
      }
      finally
      {
        try
        {
          paramInputStream.close();
          throw localThrowable;
        }
        catch (IOException paramInputStream)
        {
          throw new JSchException(paramInputStream.toString(), paramInputStream);
        }
        if (!(localThrowable instanceof Throwable)) {
          continue;
        }
        throw new JSchException(localThrowable.toString(), localThrowable);
      }
      i = paramInputStream.read();
      if ((i != -1) || (j == 0)) {}
      try
      {
        paramInputStream.close();
        return;
      }
      catch (IOException paramInputStream)
      {
        throw new JSchException(paramInputStream.toString(), paramInputStream);
      }
      if (i != 13)
      {
        if (i == 10)
        {
          i = 0;
          if (i < j) {
            break label750;
          }
        }
        for (;;)
        {
          if (i >= j)
          {
            c(Util.c(arrayOfByte, 0, j));
            break label728;
            localObject2 = arrayOfByte;
            if (arrayOfByte.length > j) {
              break label733;
            }
            if (j > 10240) {
              break;
            }
            localObject2 = new byte[arrayOfByte.length * 2];
            System.arraycopy(arrayOfByte, 0, localObject2, 0, arrayOfByte.length);
            break label733;
            if (k != 35) {
              continue;
            }
            c(Util.c(arrayOfByte, 0, j));
            break label728;
          }
          localStringBuffer.setLength(0);
          break label777;
          do
          {
            do
            {
              str2 = localStringBuffer.toString();
              if ((i < j) && (str2.length() != 0)) {
                break label809;
              }
              c(Util.c(arrayOfByte, 0, j));
              break;
              k = i + 1;
              m = arrayOfByte[i];
              i = k;
            } while (m == 32);
            i = k;
          } while (m == 9);
          localStringBuffer.append((char)m);
          i = k;
          break label777;
          if (str2.charAt(0) == '@')
          {
            localStringBuffer.setLength(0);
            break label817;
            do
            {
              do
              {
                str3 = localStringBuffer.toString();
                if (i < j)
                {
                  k = i;
                  if (str3.length() != 0) {
                    break label863;
                  }
                }
                c(Util.c(arrayOfByte, 0, j));
                break;
                k = i + 1;
                m = arrayOfByte[i];
                i = k;
              } while (m == 32);
              i = k;
            } while (m == 9);
            localStringBuffer.append((char)m);
            i = k;
            break label817;
            localStringBuffer.setLength(0);
            m = -1;
            break label883;
            if (localStringBuffer.toString().equals("ssh-dss")) {}
            for (k = 1;; k = 2)
            {
              m = i;
              if (i < j) {
                break label924;
              }
              c(Util.c(arrayOfByte, 0, j));
              break label728;
              k = i + 1;
              n = arrayOfByte[i];
              i = k;
              if (n == 32) {
                break;
              }
              i = k;
              if (n == 9) {
                break;
              }
              localStringBuffer.append((char)n);
              i = k;
              break label883;
              if (!localStringBuffer.toString().equals("ssh-rsa")) {
                break label891;
              }
            }
            localStringBuffer.setLength(0);
            i = m;
            break label933;
            do
            {
              do
              {
                do
                {
                  str3 = localStringBuffer.toString();
                  if (str3.length() != 0) {
                    break label989;
                  }
                  c(Util.c(arrayOfByte, 0, j));
                  break;
                  i = m;
                } while (n == 10);
                i = m;
              } while (n == 32);
              i = m;
            } while (n == 9);
            localStringBuffer.append((char)n);
            i = m;
            break label933;
            str2 = null;
            if (i < j)
            {
              localStringBuffer.setLength(0);
              break label997;
            }
          }
        }
      }
    }
    label728:
    label733:
    label750:
    label777:
    label809:
    label817:
    label863:
    label883:
    label891:
    label924:
    label933:
    label963:
    label989:
    label997:
    label1025:
    for (;;)
    {
      str2 = localStringBuffer.toString();
      String str1;
      localObject2 = new KnownHosts.HashedHostKey(this, (String)localObject2, str1, k, Util.a(Util.b(str3), 0, str3.length()), str2);
      c.addElement(localObject2);
      if (i != 10)
      {
        localStringBuffer.append((char)i);
        i = m;
        break label997;
        str1 = str2;
        localObject2 = "";
        break label338;
        j = 0;
        break;
        localObject2[j] = ((byte)i);
        j += 1;
        Object localObject1 = localObject2;
        break;
        k = localObject1[i];
        if ((k != 32) && (k != 9)) {
          break label63;
        }
        i += 1;
        break label59;
        if (i < j) {
          break label189;
        }
        break label155;
        do
        {
          k = localObject1[i];
          if ((k != 32) && (k != 9)) {
            break;
          }
          i += 1;
        } while (i < j);
        break label235;
        if (i < j) {
          break label292;
        }
        break label255;
        do
        {
          m = localObject1[k];
          if (m != 32)
          {
            i = k;
            localObject2 = str2;
            str1 = str3;
            if (m != 9) {
              break;
            }
          }
          k += 1;
        } while (k < j);
        i = k;
        localObject2 = str2;
        str1 = str3;
        break label338;
        if (i < j) {
          break label388;
        }
        break label350;
        i = j;
        k = m;
        break label366;
        do
        {
          i = localObject1[m];
          if ((i != 32) && (i != 9)) {
            break;
          }
          m += 1;
        } while (m < j);
        break label453;
        for (;;)
        {
          if (i >= j) {
            break label963;
          }
          m = i + 1;
          n = localObject1[i];
          if (n != 13) {
            break;
          }
          i = m;
        }
        break label465;
        do
        {
          m = localObject1[i];
          if ((m != 32) && (m != 9)) {
            break;
          }
          i += 1;
        } while (i < j);
        break label539;
        for (;;)
        {
          if (i >= j) {
            break label1025;
          }
          m = i + 1;
          i = localObject1[i];
          if (i != 13) {
            break;
          }
          i = m;
        }
      }
    }
  }
  
  void a(OutputStream paramOutputStream)
  {
    for (;;)
    {
      try
      {
        Vector localVector = c;
        int i = 0;
        try
        {
          if (i >= c.size()) {
            return;
          }
          HostKey localHostKey = (HostKey)c.elementAt(i);
          String str1 = localHostKey.e();
          String str2 = localHostKey.a();
          String str3 = localHostKey.b();
          String str4 = localHostKey.d();
          if (str3.equals("UNKNOWN"))
          {
            paramOutputStream.write(Util.b(str2));
            paramOutputStream.write(f);
          }
          else
          {
            if (str1.length() != 0)
            {
              paramOutputStream.write(Util.b(str1));
              paramOutputStream.write(e);
            }
            paramOutputStream.write(Util.b(str2));
            paramOutputStream.write(e);
            paramOutputStream.write(Util.b(str3));
            paramOutputStream.write(e);
            paramOutputStream.write(Util.b(localHostKey.c()));
            if (str4 != null)
            {
              paramOutputStream.write(e);
              paramOutputStream.write(Util.b(str4));
            }
            paramOutputStream.write(f);
          }
        }
        finally {}
        i += 1;
      }
      catch (Exception paramOutputStream)
      {
        System.err.println(paramOutputStream);
        return;
      }
    }
  }
  
  void a(String paramString)
  {
    try
    {
      b = paramString;
      a(new FileInputStream(Util.c(paramString)));
      return;
    }
    catch (FileNotFoundException paramString)
    {
      throw new JSchException(paramString.toString(), paramString);
    }
  }
  
  public void a(String paramString1, String paramString2, byte[] paramArrayOfByte)
  {
    Vector localVector = c;
    int j = 0;
    int i = 0;
    for (;;)
    {
      try
      {
        if (j >= c.size()) {
          if (i == 0) {}
        }
      }
      finally {}
      try
      {
        b();
        return;
      }
      catch (Exception paramString1)
      {
        return;
      }
      HostKey localHostKey = (HostKey)c.elementAt(j);
      if ((paramString1 == null) || ((localHostKey.a(paramString1)) && ((paramString2 == null) || ((localHostKey.b().equals(paramString2)) && ((paramArrayOfByte == null) || (Util.b(paramArrayOfByte, d)))))))
      {
        String str = localHostKey.a();
        if ((str.equals(paramString1)) || (((localHostKey instanceof KnownHosts.HashedHostKey)) && (((KnownHosts.HashedHostKey)localHostKey).f()))) {
          c.removeElement(localHostKey);
        } else {
          b = b(str, paramString1);
        }
      }
      else
      {
        break label176;
      }
      i = 1;
      label176:
      j += 1;
    }
  }
  
  public HostKey[] a(String paramString1, String paramString2)
  {
    int j = 0;
    for (;;)
    {
      ArrayList localArrayList;
      int i;
      Object localObject;
      synchronized (c)
      {
        localArrayList = new ArrayList();
        i = 0;
        if (i >= c.size())
        {
          localObject = new HostKey[localArrayList.size()];
          i = j;
          if (i >= localArrayList.size())
          {
            if ((paramString1 == null) || (!paramString1.startsWith("[")) || (paramString1.indexOf("]:") <= 1)) {
              break label229;
            }
            paramString2 = a(paramString1.substring(1, paramString1.indexOf("]:")), paramString2);
            if (paramString2.length <= 0) {
              break label229;
            }
            paramString1 = new HostKey[localObject.length + paramString2.length];
            System.arraycopy(localObject, 0, paramString1, 0, localObject.length);
            System.arraycopy(paramString2, 0, paramString1, localObject.length, paramString2.length);
            return paramString1;
          }
        }
        else
        {
          localObject = (HostKey)c.elementAt(i);
          if ((c == 3) || ((paramString1 != null) && ((!((HostKey)localObject).a(paramString1)) || ((paramString2 != null) && (!((HostKey)localObject).b().equals(paramString2)))))) {
            break label235;
          }
          localArrayList.add(localObject);
        }
      }
      localObject[i] = ((HostKey)localArrayList.get(i));
      i += 1;
      continue;
      label229:
      paramString1 = (String)localObject;
      continue;
      label235:
      i += 1;
    }
  }
  
  HostKey b(String paramString, byte[] paramArrayOfByte)
  {
    paramString = new KnownHosts.HashedHostKey(this, paramString, paramArrayOfByte);
    paramString.g();
    return paramString;
  }
  
  protected void b()
  {
    if (b != null) {
      b(b);
    }
  }
  
  protected void b(String paramString)
  {
    if (paramString == null) {}
    for (;;)
    {
      return;
      try
      {
        paramString = new FileOutputStream(Util.c(paramString));
        a(paramString);
        paramString.close();
      }
      finally {}
    }
  }
}

/* Location:
 * Qualified Name:     com.jcraft.jsch.KnownHosts
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */