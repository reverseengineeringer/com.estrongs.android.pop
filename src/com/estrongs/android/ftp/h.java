package com.estrongs.android.ftp;

import com.estrongs.fs.FileSystemException;
import com.estrongs.fs.a.b;
import com.estrongs.fs.d;
import java.io.BufferedOutputStream;
import java.io.BufferedReader;
import java.io.File;
import java.io.FileInputStream;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.io.OutputStream;
import java.io.PrintStream;
import java.net.InetAddress;
import java.net.ServerSocket;
import java.net.Socket;
import java.net.UnknownHostException;
import java.nio.charset.Charset;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.Locale;
import java.util.concurrent.locks.Lock;

public class h
  extends Thread
{
  boolean a = false;
  private Socket b;
  private a c;
  private BufferedOutputStream d = null;
  private BufferedReader e = null;
  private boolean f = false;
  private String g = null;
  private String h = null;
  private boolean i = true;
  private String j = null;
  private Integer k = Integer.valueOf(0);
  private i l = null;
  private i m = null;
  private long n = 0L;
  private File o = null;
  private boolean p = false;
  private String q = "UTF-8";
  private boolean r = true;
  
  public h(Socket paramSocket, a parama)
  {
    b = paramSocket;
    c = parama;
    j = "/";
  }
  
  private Object a(int paramInt, String paramString)
  {
    localObject3 = null;
    localObject2 = null;
    if ((paramInt == 1) || (paramInt == 2) || (paramInt == 3) || (paramInt == 4))
    {
      localObject1 = paramString;
      if (paramString != null) {
        localObject1 = paramString;
      }
    }
    try
    {
      if (paramString.length() <= 0) {
        break label101;
      }
      if ((!paramString.startsWith("-a ")) && (!paramString.startsWith("-A ")) && (!paramString.startsWith("-l ")) && (!paramString.startsWith("-L "))) {
        break label138;
      }
      str = paramString.substring(3);
    }
    catch (Exception paramString)
    {
      for (;;)
      {
        boolean bool;
        localObject1 = localObject2;
        continue;
        String str = null;
        continue;
        localObject1 = localObject3;
        if (paramInt >= 0) {
          if (paramInt == 0) {
            localObject1 = "/";
          }
        }
      }
    }
    bool = str.equals(".");
    if (bool)
    {
      localObject1 = null;
      label101:
      if (localObject1 != null) {
        break label353;
      }
      localObject1 = c.h + j;
    }
    label138:
    label353:
    do
    {
      do
      {
        return localObject1;
        if ((paramString.startsWith("-la ")) || (paramString.startsWith("-LA ")) || (paramString.startsWith("-al ")) || (paramString.startsWith("-AL ")))
        {
          str = paramString.substring(4);
          break;
        }
        if ((paramString.startsWith("-a")) || (paramString.startsWith("-A")) || (paramString.startsWith("-la")) || (paramString.startsWith("-LA")) || (paramString.startsWith("-AL")) || (paramString.startsWith("-al")) || (paramString.startsWith("-L"))) {
          break label426;
        }
        str = paramString;
        if (!paramString.startsWith("-l")) {
          break;
        }
        break label426;
        localObject1 = str;
        if (!str.equals("..")) {
          break label101;
        }
        localObject1 = localObject3;
      } while (j.equals("/"));
      if (j.endsWith("/"))
      {
        paramInt = j.lastIndexOf('/', j.length() - 2);
        break label432;
      }
      paramInt = j.lastIndexOf('/');
      break label432;
      localObject1 = j.substring(0, paramInt);
      break label101;
      return c((String)localObject1);
      if ((paramInt == 5) || (paramInt == 6)) {
        break label381;
      }
      localObject1 = localObject3;
    } while (paramInt != 7);
    label381:
    localObject1 = new j(this);
    b = c(paramString);
    a = n;
    n = 0L;
    return localObject1;
  }
  
  private void a(i parami, File paramFile, Socket paramSocket, boolean paramBoolean, long paramLong)
  {
    if (paramBoolean) {}
    OutputStream localOutputStream;
    label39:
    byte[] arrayOfByte;
    label65:
    int i1;
    for (;;)
    {
      try
      {
        c.a();
        if (!paramBoolean) {
          break;
        }
        localOutputStream = d.a().f(paramFile.getAbsolutePath());
        if (!paramBoolean) {
          break label154;
        }
        paramSocket = paramSocket.getInputStream();
        if ((paramLong > 0L) && (!paramBoolean)) {
          paramSocket.skip(paramLong);
        }
        arrayOfByte = new byte[' '];
        i1 = paramSocket.read(arrayOfByte, 0, 8192);
        if ((i1 == -1) || (!c.e)) {
          break label215;
        }
        boolean bool = f;
        if (!bool) {
          break label174;
        }
        if (!paramBoolean) {
          break label166;
        }
        c.b();
        return;
      }
      catch (Exception parami)
      {
        throw parami;
      }
      finally
      {
        if (!paramBoolean) {
          break label263;
        }
      }
      c.c();
    }
    c.b();
    for (;;)
    {
      throw parami;
      localOutputStream = paramSocket.getOutputStream();
      break;
      label154:
      paramSocket = new FileInputStream(paramFile);
      break label39;
      label166:
      c.d();
      return;
      label174:
      localOutputStream.write(arrayOfByte, 0, i1);
      if (paramBoolean)
      {
        c.b(i1);
        break label65;
      }
      c.a(i1);
      break label65;
      label215:
      localOutputStream.flush();
      if (paramBoolean)
      {
        b.a().a(paramFile.getAbsolutePath());
        com.estrongs.fs.impl.local.h.j(paramFile.getAbsolutePath());
      }
      if (paramBoolean)
      {
        c.b();
        return;
      }
      c.d();
      return;
      label263:
      c.d();
    }
  }
  
  /* Error */
  private void a(BufferedOutputStream paramBufferedOutputStream, String paramString)
  {
    // Byte code:
    //   0: aload_0
    //   1: monitorenter
    //   2: aload_2
    //   3: aload_0
    //   4: getfield 75	com/estrongs/android/ftp/h:q	Ljava/lang/String;
    //   7: invokevirtual 277	java/lang/String:getBytes	(Ljava/lang/String;)[B
    //   10: astore_3
    //   11: aload_3
    //   12: astore_2
    //   13: aload_1
    //   14: aload_2
    //   15: invokevirtual 282	java/io/BufferedOutputStream:write	([B)V
    //   18: aload_1
    //   19: invokevirtual 283	java/io/BufferedOutputStream:flush	()V
    //   22: aload_0
    //   23: monitorexit
    //   24: return
    //   25: astore_3
    //   26: aload_2
    //   27: invokevirtual 286	java/lang/String:getBytes	()[B
    //   30: astore_2
    //   31: goto -18 -> 13
    //   34: astore_2
    //   35: aload_2
    //   36: invokevirtual 289	java/lang/Exception:printStackTrace	()V
    //   39: aload_1
    //   40: invokevirtual 292	java/io/BufferedOutputStream:close	()V
    //   43: goto -21 -> 22
    //   46: astore_1
    //   47: goto -25 -> 22
    //   50: astore_1
    //   51: aload_0
    //   52: monitorexit
    //   53: aload_1
    //   54: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	55	0	this	h
    //   0	55	1	paramBufferedOutputStream	BufferedOutputStream
    //   0	55	2	paramString	String
    //   10	2	3	arrayOfByte	byte[]
    //   25	1	3	localUnsupportedEncodingException	java.io.UnsupportedEncodingException
    // Exception table:
    //   from	to	target	type
    //   2	11	25	java/io/UnsupportedEncodingException
    //   13	22	34	java/lang/Exception
    //   39	43	46	java/lang/Exception
    //   2	11	50	finally
    //   13	22	50	finally
    //   26	31	50	finally
    //   35	39	50	finally
    //   39	43	50	finally
  }
  
  private void b(String paramString)
  {
    try
    {
      System.out.println("Resp:" + paramString);
      a(d, paramString);
      return;
    }
    catch (Exception paramString)
    {
      for (;;)
      {
        paramString.printStackTrace();
      }
    }
    finally {}
  }
  
  private String c(String paramString)
  {
    if (paramString.startsWith("/")) {
      return c.h + paramString;
    }
    if (j.endsWith("/")) {
      return c.h + j + paramString;
    }
    return c.h + j + "/" + paramString;
  }
  
  private int d(String paramString)
  {
    if (paramString.equals("LIST")) {
      return 1;
    }
    if (paramString.equals("NLST")) {
      return 2;
    }
    if (paramString.equals("MLSD")) {
      return 3;
    }
    if (paramString.equals("MLST")) {
      return 4;
    }
    if (paramString.equals("RETR")) {
      return 5;
    }
    if (paramString.equals("STOR")) {
      return 6;
    }
    if (paramString.equals("APPE")) {
      return 7;
    }
    return 0;
  }
  
  private void e(String paramString)
  {
    Object localObject1 = null;
    boolean bool1 = false;
    boolean bool2 = false;
    boolean bool3 = false;
    i2 = 0;
    System.out.println("recv cmd:" + paramString);
    Object localObject2 = paramString.split(" ");
    if ((localObject2 == null) || (localObject2.length < 1)) {
      b("500 Command unrecognized.\r\n");
    }
    String str2;
    label428:
    label516:
    do
    {
      return;
      str2 = localObject2[0].trim().toUpperCase();
      if (a)
      {
        if (str2.equals("RNTO"))
        {
          paramString = new File(c(paramString.substring(5)));
          if (paramString.exists()) {
            b("550 Target exist.\r\n");
          }
        }
        for (;;)
        {
          a = false;
          o = null;
          return;
          try
          {
            bool1 = d.a().b(d.a().j(o.getAbsolutePath()), paramString.getName());
            if (bool1) {
              b("250 RNTO command successful.\r\n");
            }
          }
          catch (FileSystemException paramString)
          {
            for (;;)
            {
              bool1 = false;
            }
            b("550 RNTO failed.\r\n");
          }
          continue;
          b("503 Bad sequence of commands.\r\n");
        }
      }
      if (str2.equals("USER"))
      {
        if ((localObject2.length < 2) || (localObject2[1].length() == 0)) {}
        for (g = "";; g = localObject2[1])
        {
          b("331 User name okay, need password.\r\n");
          return;
        }
      }
      if (str2.equals("PASS"))
      {
        if ((localObject2.length < 2) || (localObject2[1].length() == 0))
        {
          h = "";
          System.out.println("anonymous:" + c.g + ",user:" + c.a + ",pass:" + c.b + ",recv user:" + g + "recv_pass:" + h);
          if (!c.g) {
            break label428;
          }
        }
        for (f = true;; f = true) {
          do
          {
            if (!f) {
              break label516;
            }
            b("230 User logged in, proceed.\r\n");
            return;
            h = localObject2[1];
            break;
          } while (((c.a != null) && (c.a.length() != 0) && (!g.equals(c.a))) || ((c.b != null) && (c.b.length() != 0) && (!h.equals(c.b))));
        }
        b("530 Not logged in.\r\n");
        return;
      }
      if (!f)
      {
        b("530 Not logged in.\r\n");
        return;
      }
      if (str2.equals("REST")) {
        try
        {
          n = Long.parseLong(paramString.substring(5));
          b("350 REST succ.\r\n");
          return;
        }
        catch (Exception paramString)
        {
          n = 0L;
          b("501 Invalid args.\r\n");
          return;
        }
      }
      i1 = d(str2);
      if (p) {
        if (i1 != 0) {}
      }
      while (str2.equals("SYST"))
      {
        b("215 UNIX Type: L8\r\n");
        return;
        try
        {
          paramString = paramString.substring(5);
          m.d = i1;
          m.e = a(i1, paramString);
          m.g.unlock();
          m = null;
          p = false;
          return;
        }
        catch (Exception paramString)
        {
          for (;;)
          {
            paramString = null;
          }
        }
        if ((i1 != 0) && (m == null))
        {
          b("503 Bad sequence of commands.\r\n");
          return;
        }
      }
      if (str2.equals("TYPE"))
      {
        if ((localObject2.length < 2) || (localObject2[1].length() == 0))
        {
          b("501 Command invalid args.\r\n");
          return;
        }
        if (localObject2[1].equals("I"))
        {
          b("200 Type set to I.\r\n");
          i = true;
          return;
        }
        if (localObject2[1].equals("A"))
        {
          b("200 Type set to A.\r\n");
          i = false;
          return;
        }
        b("501 Command invalid args.\r\n");
        return;
      }
      if (str2.equals("PWD"))
      {
        b("257 \"" + j + "\" is current directory.\r\n");
        return;
      }
      if (str2.equals("CDUP"))
      {
        if (j.equals("/"))
        {
          b("550 Failed to change directory.\r\n");
          return;
        }
        if (j.endsWith("/")) {}
        for (i1 = j.lastIndexOf('/', j.length() - 2); i1 < 0; i1 = j.lastIndexOf('/'))
        {
          b("550 Failed to change directory.\r\n");
          return;
        }
        if (i1 == 0) {}
        for (j = "/";; j = j.substring(0, i1))
        {
          b("250 Directory successfully changed.\r\n");
          return;
        }
      }
      if (str2.equals("CWD"))
      {
        paramString = c(paramString.substring(4));
        localObject1 = new File(paramString);
        if ((((File)localObject1).exists()) && (((File)localObject1).isDirectory()))
        {
          b("250 Directory successfully changed.\r\n");
          j = paramString.substring(c.h.length());
          return;
        }
        b("550 Failed to change directory.\r\n");
        return;
      }
      if (str2.equals("FEAT"))
      {
        b("211-Features\r\nSIZE\r\nPASV\r\n UTF8\r\n211 End\r\n");
        return;
      }
    } while ((str2.equals("LIST")) || (str2.equals("NLST")) || (str2.equals("MLST")) || (str2.equals("MLSD")) || (str2.equals("RETR")));
    if (str2.equals("PASV"))
    {
      paramString = (String)localObject1;
      i1 = i2;
      if (m != null)
      {
        m.a();
        m = null;
        i1 = i2;
        paramString = (String)localObject1;
      }
      do
      {
        try
        {
          localObject1 = new ServerSocket(c.f());
          i2 = i1 + 1;
        }
        catch (Exception localException)
        {
          for (;;)
          {
            int i3;
            String str1 = paramString;
            i2 = i1;
            continue;
            i1 = 0;
            continue;
            i1 += 1;
          }
        }
        if (localObject1 != null) {
          break;
        }
        paramString = (String)localObject1;
        i1 = i2;
      } while (i2 < 20);
      if ((i2 >= 20) || (localObject1 == null))
      {
        b("502 open data port failed.\r\n");
        return;
      }
      try
      {
        paramString = c.g();
        i1 = ((ServerSocket)localObject1).getLocalPort();
        if ((paramString == null) || (i1 <= 0))
        {
          b("502 get local ip/port failed.\r\n");
          return;
        }
      }
      catch (Exception paramString)
      {
        paramString.printStackTrace();
        b("502 open data port failed.\r\n");
        return;
      }
      localObject2 = new StringBuilder("227 Entering Passive Mode (");
      ((StringBuilder)localObject2).append(paramString.getHostAddress().replace('.', ','));
      ((StringBuilder)localObject2).append(",");
      ((StringBuilder)localObject2).append(i1 / 256);
      ((StringBuilder)localObject2).append(",");
      ((StringBuilder)localObject2).append(i1 % 256);
      ((StringBuilder)localObject2).append(").\r\n");
      m = new i(this);
      m.a = ((ServerSocket)localObject1);
      m.g.lock();
      p = true;
      m.start();
      b(((StringBuilder)localObject2).toString());
    }
    else
    {
      if (str2.equals("NOOP"))
      {
        b("200 NOOP OK.\r\n");
        return;
      }
      if (str2.equals("DELE"))
      {
        try
        {
          paramString = new File(c(paramString.substring(5)));
          if (!paramString.exists())
          {
            b("550 File not exist.\r\n");
            return;
          }
        }
        catch (Exception paramString)
        {
          b("450 DELE fail.\r\n");
          return;
        }
        if (paramString.isDirectory())
        {
          b("550 Target is dir.\r\n");
          return;
        }
      }
      try
      {
        bool2 = d.a().a(d.a().j(paramString.getAbsolutePath()));
        bool1 = bool2;
      }
      catch (SecurityException paramString)
      {
        for (;;) {}
      }
      if (bool1)
      {
        b("250 DELE command successful.\r\n");
        return;
      }
      b("450 DELE fail.\r\n");
      return;
      if (str2.equals("RMD"))
      {
        try
        {
          paramString = new File(c(paramString.substring(4)));
          if (!paramString.exists())
          {
            b("550 Directory not exist.\r\n");
            return;
          }
        }
        catch (Exception paramString)
        {
          b("450 RMD fail.\r\n");
          return;
        }
        if (!paramString.isDirectory())
        {
          b("550 Target is not a dir.\r\n");
          return;
        }
      }
      try
      {
        bool1 = d.a().a(d.a().j(paramString.getAbsolutePath()));
        if (bool1)
        {
          b("250 RMD command successful.\r\n");
          return;
        }
        b("450 RMD fail.\r\n");
        return;
        if (str2.equals("MKD")) {
          try
          {
            paramString = c(paramString.substring(4));
            if (new File(paramString).exists())
            {
              b("550 Target exist.\r\n");
              return;
            }
          }
          catch (Exception paramString)
          {
            b("550 Directory create failed.\r\n");
            return;
          }
        }
        try
        {
          bool1 = d.a().g(paramString);
          if (bool1)
          {
            b("257 Directory created.\r\n");
            return;
          }
          b("550 Directory create failed.\r\n");
          return;
          if (str2.equals("OPTS"))
          {
            if ((localObject2[1] == null) || (localObject2[1].length() == 0) || (!localObject2[1].equalsIgnoreCase("UTF8")))
            {
              b("550 OPTS wrong args.\r\n");
              return;
            }
            if (!q.equalsIgnoreCase("UTF-8"))
            {
              r = false;
              q = "UTF-8";
            }
            try
            {
              e = new BufferedReader(new InputStreamReader(b.getInputStream(), Charset.forName(q)));
              b("200 OPTS UTF8 is set to ON.\r\n");
              return;
            }
            catch (Exception paramString)
            {
              for (;;)
              {
                paramString.printStackTrace();
              }
            }
          }
          if (str2.equals("PORT"))
          {
            try
            {
              if (m != null)
              {
                m.a();
                m = null;
              }
              paramString = paramString.substring(5);
              if ((paramString.contains("|")) && (paramString.contains("::")))
              {
                b("550 IPV6 addr.\r\n");
                return;
              }
            }
            catch (Exception paramString)
            {
              paramString.printStackTrace();
              b("501 PORT invalid format.\r\n");
              return;
            }
            paramString = paramString.split(",");
            if (paramString.length == 6) {
              break label2386;
            }
            b("501 PORT invalid format.\r\n");
            return;
            if (i1 < paramString.length)
            {
              if ((paramString[i1].matches("[0-9]+")) && (paramString[i1].length() <= 3)) {
                break label2391;
              }
              b("501 PORT invalid format.\r\n");
              return;
            }
            localObject1 = new byte[4];
            i1 = 0;
            while (i1 < 4) {
              try
              {
                i3 = Integer.parseInt(paramString[i1]);
                i2 = i3;
                if (i3 >= 128) {
                  i2 = i3 - 256;
                }
                localObject1[i1] = ((byte)i2);
                i1 += 1;
              }
              catch (Exception paramString)
              {
                b("501 PORT invalid format.\r\n");
                return;
              }
            }
            try
            {
              localObject1 = InetAddress.getByAddress((byte[])localObject1);
              i1 = Integer.parseInt(paramString[4]);
              i2 = Integer.parseInt(paramString[5]);
              m = new i(this);
              m.a = null;
              m.b = ((InetAddress)localObject1);
              m.c = (i1 * 256 + i2);
              m.g.lock();
              p = true;
              m.start();
              b("227 Entering Active Mode.\r\n");
              return;
            }
            catch (UnknownHostException paramString)
            {
              b("550 Unknown host.\r\n");
              return;
            }
          }
          if (str2.equals("ABOR"))
          {
            if (k.intValue() == 0)
            {
              b("226 ABOR succ.\r\n");
              return;
            }
            l.f = true;
            l.a();
            return;
          }
          if (str2.equals("SIZE"))
          {
            paramString = new File(c(paramString.substring(5)));
            if (!paramString.exists())
            {
              b("550 Target not exist.\r\n");
              return;
            }
            if (paramString.isDirectory())
            {
              b("550 Target is a directory.\r\n");
              return;
            }
            b("213 " + paramString.length() + "\r\n");
            return;
          }
          if (str2.equals("QUIT"))
          {
            b("221 Byte.\r\n");
            try
            {
              b.close();
              return;
            }
            catch (Exception paramString)
            {
              return;
            }
          }
          if (str2.equals("RNFR"))
          {
            paramString = new File(c(paramString.substring(5)));
            if (!paramString.exists())
            {
              b("550 Target not exist.\r\n");
              return;
            }
            b("350 Target exists, ready for destination name.\r\n");
            a = true;
            o = paramString;
            return;
          }
          b("502 Command not implemented.\r\n");
          return;
        }
        catch (SecurityException paramString)
        {
          for (;;)
          {
            bool1 = bool3;
          }
        }
      }
      catch (SecurityException paramString)
      {
        for (;;)
        {
          bool1 = bool2;
        }
      }
    }
  }
  
  public String a(int paramInt, File paramFile)
  {
    StringBuilder localStringBuilder = new StringBuilder();
    if (!paramFile.exists()) {}
    String str;
    do
    {
      return null;
      str = paramFile.getName();
    } while ((str.contains("*")) || (str.contains("/")));
    Object localObject;
    if (paramInt == 1)
    {
      if (paramFile.isDirectory()) {
        localStringBuilder.append("drwxr-xr-x 1 nobody nobody");
      }
      for (;;)
      {
        localObject = Long.valueOf(paramFile.length()).toString();
        paramInt = 13 - ((String)localObject).length();
        while (paramInt > 0)
        {
          localStringBuilder.append(' ');
          paramInt -= 1;
        }
        localStringBuilder.append("-rw-r--r-- 1 nobody nobody");
      }
      localStringBuilder.append((String)localObject);
      long l1 = paramFile.lastModified();
      if (System.currentTimeMillis() - l1 > -1627869184L)
      {
        localObject = new SimpleDateFormat(" MMM dd HH:mm ", Locale.US);
        localStringBuilder.append(((SimpleDateFormat)localObject).format(new Date(paramFile.lastModified())));
        localStringBuilder.append(str);
        localStringBuilder.append("\r\n");
      }
    }
    for (;;)
    {
      return localStringBuilder.toString();
      localObject = new SimpleDateFormat(" MMM dd  yyyy ", Locale.US);
      break;
      if (paramInt == 2)
      {
        localStringBuilder.append(str);
        localStringBuilder.append("\r\n");
      }
    }
  }
  
  public void a(String paramString)
  {
    q = paramString;
  }
  
  public void run()
  {
    for (;;)
    {
      try
      {
        if (d == null) {
          d = new BufferedOutputStream(b.getOutputStream());
        }
        if (e == null) {
          e = new BufferedReader(new InputStreamReader(b.getInputStream(), Charset.forName(q)));
        }
        b("220 ESFtpServer 0.1 ready.\r\n");
        i2 = 0;
        if ((i2 >= 10) || (!c.e)) {
          continue;
        }
        String str = e.readLine();
        if (str == null) {
          continue;
        }
        e(str);
        i1 = 0;
      }
      catch (Exception localException1)
      {
        int i2;
        localException1.printStackTrace();
        System.out.println("client exception, exit");
        try
        {
          if (m != null)
          {
            m.a();
            m = null;
          }
          if (d != null) {
            d.close();
          }
          if (e != null) {
            e.close();
          }
          d = null;
          e = null;
          b.close();
          return;
        }
        catch (Exception localException3) {}
        int i1 = i2 + 1;
        continue;
        System.out.println("client exit");
        try
        {
          if (m == null) {
            continue;
          }
          m.a();
          m = null;
          if (d == null) {
            continue;
          }
          d.close();
          if (e == null) {
            continue;
          }
          e.close();
          d = null;
          e = null;
          b.close();
          return;
        }
        catch (Exception localException2)
        {
          return;
        }
      }
      finally
      {
        try
        {
          if (m == null) {
            continue;
          }
          m.a();
          m = null;
          if (d == null) {
            continue;
          }
          d.close();
          if (e == null) {
            continue;
          }
          e.close();
          d = null;
          e = null;
          b.close();
        }
        catch (Exception localException4)
        {
          continue;
        }
      }
      i2 = i1;
      if (r)
      {
        i2 = i1;
        if (!q.equalsIgnoreCase(a.f))
        {
          q = a.f;
          e = new BufferedReader(new InputStreamReader(b.getInputStream(), Charset.forName(q)));
          i2 = i1;
        }
      }
    }
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.ftp.h
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */