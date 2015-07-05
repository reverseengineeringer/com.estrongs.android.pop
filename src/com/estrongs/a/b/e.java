package com.estrongs.a.b;

import android.app.Activity;
import com.estrongs.android.pop.ac;
import com.estrongs.android.util.am;
import com.estrongs.fs.b.au;
import com.estrongs.fs.b.bl;
import java.io.DataInputStream;
import java.io.DataOutputStream;
import java.io.InputStream;
import java.net.InetAddress;
import java.net.ServerSocket;
import java.net.Socket;
import java.util.Properties;
import java.util.StringTokenizer;

class e
  extends Thread
{
  e(d paramd) {}
  
  public void run()
  {
    if (d.b.equals("ESuser")) {
      d.b = ac.b();
    }
    for (;;)
    {
      String str4;
      try
      {
        d.a(a, d.b().accept());
        Properties localProperties;
        String str3;
        int m;
        int i;
        try
        {
          d.a(a).setSoTimeout(10000);
          d.a(a, new DataInputStream(d.a(a).getInputStream()));
          d.a(a, new DataOutputStream(d.a(a).getOutputStream()));
          localProperties = new Properties();
          String str1 = d.a(d.b(a));
          localObject3 = new StringTokenizer(str1);
          str3 = ((StringTokenizer)localObject3).nextToken();
          k = str1.indexOf(str3);
          m = str3.length();
          j = str1.indexOf("HTTP/1") - 1;
          i = j;
          if (j < 0) {
            i = str1.indexOf("http/1") - 1;
          }
          if (i > 0)
          {
            str1 = str1.substring(k + m + 1, i);
            ((StringTokenizer)localObject3).nextToken();
            localObject3 = d.a(d.b(a));
            if (((String)localObject3).length() == 0)
            {
              str4 = str1.replaceFirst("/", "");
              if (!str3.equals("GET")) {
                continue;
              }
              if (!str4.equals("hostname")) {
                continue;
              }
              if (Long.parseLong(localProperties.getProperty("content-length")) <= 0L) {
                continue;
              }
              str1 = new DataInputStream(d.a(a).getInputStream()).readLine();
              a.a(d.c(a), 200, d.b);
              au.a(d.a(a).getInetAddress().getAddress(), str1);
              d.c().runOnUiThread(new f(this));
              try
              {
                if (d.a(a) == null) {
                  continue;
                }
                d.a(a).close();
              }
              catch (Exception localException1)
              {
                localException1.printStackTrace();
              }
            }
          }
          else
          {
            String str2 = ((StringTokenizer)localObject3).nextToken();
            continue;
          }
          i = ((String)localObject3).indexOf(':');
          if (i < 0) {
            continue;
          }
          localProperties.put(((String)localObject3).substring(0, i).trim().toLowerCase(), ((String)localObject3).substring(i + 1).trim());
          continue;
        }
        catch (Exception localException2)
        {
          localException2 = localException2;
          localException2.printStackTrace();
          try
          {
            if (d.a(a) == null) {
              continue;
            }
            d.a(a).close();
          }
          catch (Exception localException3)
          {
            localException3.printStackTrace();
          }
          continue;
          a.a(d.c(a), 200, d.b);
          continue;
        }
        finally {}
        try
        {
          if (d.a(a) != null) {
            d.a(a).close();
          }
          throw ((Throwable)localObject1);
          a.a(d.c(a), 404, "Not found");
          continue;
          if (str3.equals("MYPOST"))
          {
            Object localObject2;
            long l;
            if (d.d(a).endsWith("/"))
            {
              localObject2 = d.d(a);
              l = 0L;
              if (localProperties.getProperty("content-length") != null) {
                l = Long.parseLong(localProperties.getProperty("content-length"));
              }
              if (localProperties.getProperty("files-number") == null) {
                break label1491;
              }
              j = Integer.parseInt(localProperties.getProperty("files-number"));
              if (j <= 1) {
                break label1484;
              }
              localObject3 = str4 + "...";
              if (localProperties.getProperty("items-number") == null) {
                break label1479;
              }
              k = Integer.parseInt(localProperties.getProperty("items-number"));
              str3 = d.a(a).getInetAddress().toString();
              if (str3.indexOf('/') == -1) {
                break label1476;
              }
              str3 = str3.substring(str3.indexOf('/') + 1);
              if (!localProperties.getProperty("content-type").equals("media/realtime")) {
                continue;
              }
              localObject2 = new bl(str3 + String.format(d.c().getString(2131427551), new Object[] { am.d(str4) }), am.d(str4), (String)localObject2, d.a(a), l);
              a = ("http://" + localProperties.getProperty("host"));
              if (!str4.startsWith("/"))
              {
                a = (a + "/" + str4);
                g = str3;
                c = j;
                d = k;
                d.c().runOnUiThread(new g(this, (bl)localObject2));
                d.a(a, null);
              }
            }
            else
            {
              localObject2 = d.d(a) + "/";
              continue;
            }
            a += str4;
            continue;
            if (localProperties.getProperty("content-type").equals("application/folder"))
            {
              localObject2 = new bl(str3 + String.format(d.c().getString(2131427552), new Object[] { localObject3 }), str4, (String)localObject2, d.a(a), l);
              b = 2;
              continue;
            }
            if (localProperties.getProperty("content-type").equals("application/files"))
            {
              localObject2 = new bl(str3 + String.format(d.c().getString(2131427553), new Object[] { localObject3 }), str4, (String)localObject2, d.a(a), l);
              b = 3;
              continue;
            }
            String str5 = localProperties.getProperty("append-data");
            if ((str5 != null) && (str5.toLowerCase().equals("thumbnail-image")))
            {
              localObject3 = new bl(str3 + String.format(d.c().getString(2131427554), new Object[] { localObject3 }), str4, (String)localObject2, d.a(a), l);
              m = Integer.parseInt(localProperties.getProperty("image-width"));
              n = Integer.parseInt(localProperties.getProperty("image-height"));
              l = new byte[m * n * 4];
              i = 0;
              m = d.a(a).getInputStream().read(l, i, l.length - i);
              if (m <= 0)
              {
                localObject2 = localObject3;
                if (i < l.length) {
                  throw new Exception("Read data error.");
                }
              }
              else
              {
                m = i + m;
                i = m;
                if (l.length > m) {
                  continue;
                }
                i = m;
                continue;
              }
            }
            else
            {
              localObject2 = new bl(str3 + String.format(d.c().getString(2131427553), new Object[] { localObject3 }), str4, (String)localObject2, d.a(a), l);
            }
            b = 1;
            continue;
          }
          else
          {
            a.a(d.c(a), 404, "Not found");
          }
        }
        catch (Exception localException5)
        {
          localException5.printStackTrace();
          continue;
        }
        continue;
      }
      catch (Exception localException4)
      {
        return;
      }
      label1476:
      label1479:
      int k = 0;
      continue;
      label1484:
      Object localObject3 = str4;
      continue;
      label1491:
      int j = 0;
    }
  }
}

/* Location:
 * Qualified Name:     com.estrongs.a.b.e
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */