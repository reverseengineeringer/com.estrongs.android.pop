package com.google.android.gms.internal;

import android.content.Context;
import com.google.android.gms.ads.internal.ae;
import com.google.android.gms.ads.internal.util.client.b;
import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.net.HttpURLConnection;
import java.net.URL;
import java.net.URLConnection;
import java.nio.ByteBuffer;
import java.nio.channels.Channels;
import java.nio.channels.FileChannel;
import java.nio.channels.ReadableByteChannel;
import java.text.DecimalFormat;
import java.util.Collections;
import java.util.HashSet;
import java.util.Set;

@me
public class gq
  extends gk
{
  private static final Set<String> b = Collections.synchronizedSet(new HashSet());
  private static final DecimalFormat c = new DecimalFormat("#,###");
  private File d;
  private boolean e;
  
  public gq(qa paramqa)
  {
    super(paramqa);
    paramqa = paramqa.getContext().getCacheDir();
    if (paramqa == null) {
      b.e("Context.getCacheDir() returned null");
    }
    do
    {
      return;
      d = new File(paramqa, "admobVideoStreams");
      if ((!d.isDirectory()) && (!d.mkdirs()))
      {
        b.e("Could not create preload cache directory at " + d.getAbsolutePath());
        d = null;
        return;
      }
    } while ((d.setReadable(true, false)) && (d.setExecutable(true, false)));
    b.e("Could not set cache file permissions at " + d.getAbsolutePath());
    d = null;
  }
  
  private File a(File paramFile)
  {
    return new File(d, paramFile.getName() + ".done");
  }
  
  private static void b(File paramFile)
  {
    if (paramFile.isFile())
    {
      paramFile.setLastModified(System.currentTimeMillis());
      return;
    }
    try
    {
      paramFile.createNewFile();
      return;
    }
    catch (IOException paramFile) {}
  }
  
  public void a()
  {
    e = true;
  }
  
  public boolean a(String paramString)
  {
    if (d == null)
    {
      a(paramString, null);
      return false;
    }
    while (c() > ((Integer)cz.o.c()).intValue()) {
      if (!d())
      {
        b.e("Unable to expire stream cache");
        a(paramString, null);
        return false;
      }
    }
    Object localObject1 = b(paramString);
    File localFile = new File(d, (String)localObject1);
    localObject1 = a(localFile);
    int i;
    if ((localFile.isFile()) && (((File)localObject1).isFile()))
    {
      i = (int)localFile.length();
      b.a("Stream cache hit at " + paramString);
      a(paramString, localFile.getAbsolutePath(), i);
      return true;
    }
    String str = d.getAbsolutePath() + paramString;
    synchronized (b)
    {
      if (b.contains(str))
      {
        b.e("Stream cache already in progress at " + paramString);
        a(paramString, localFile.getAbsolutePath());
        return false;
      }
    }
    b.add(str);
    try
    {
      ??? = new URL(paramString).openConnection();
      i = ((Integer)cz.t.c()).intValue();
      ((URLConnection)???).setConnectTimeout(i);
      ((URLConnection)???).setReadTimeout(i);
      if ((??? instanceof HttpURLConnection))
      {
        i = ((HttpURLConnection)???).getResponseCode();
        if (i >= 400) {
          throw new IOException("HTTP status code " + i + " at " + paramString);
        }
      }
    }
    catch (IOException localIOException1)
    {
      ??? = null;
    }
    for (;;)
    {
      try
      {
        ((FileOutputStream)???).close();
        int k;
        Object localObject3;
        int m;
        if (e)
        {
          b.c("Preload aborted for URL \"" + paramString + "\"");
          if ((localFile.exists()) && (!localFile.delete())) {
            b.e("Could not delete partial cache file at " + localFile.getAbsolutePath());
          }
          a(paramString, localFile.getAbsolutePath());
          b.remove(str);
          return false;
          k = ((URLConnection)???).getContentLength();
          if (k < 0)
          {
            b.e("Stream cache aborted, missing content-length header at " + paramString);
            a(paramString, localFile.getAbsolutePath());
            b.remove(str);
            return false;
          }
          localObject3 = c.format(k);
          m = ((Integer)cz.p.c()).intValue();
          if (k > m)
          {
            b.e("Content length " + (String)localObject3 + " exceeds limit at " + paramString);
            a(paramString, localFile.getAbsolutePath());
            b.remove(str);
            return false;
          }
          b.a("Caching " + (String)localObject3 + " bytes from " + paramString);
          localObject3 = Channels.newChannel(((URLConnection)???).getInputStream());
          ??? = new FileOutputStream(localFile);
        }
        try
        {
          FileChannel localFileChannel = ((FileOutputStream)???).getChannel();
          ByteBuffer localByteBuffer = ByteBuffer.allocate(1048576);
          te localte = ae.i();
          i = 0;
          long l1 = localte.a();
          pg localpg = new pg(((Long)cz.s.c()).longValue());
          long l2 = ((Long)cz.r.c()).longValue();
          int j = ((ReadableByteChannel)localObject3).read(localByteBuffer);
          if (j >= 0)
          {
            j = i + j;
            if (j > m) {
              throw new IOException("stream cache file size limit exceeded");
            }
            localByteBuffer.flip();
            if (localFileChannel.write(localByteBuffer) > 0) {
              continue;
            }
            localByteBuffer.clear();
            if (localte.a() - l1 > 1000L * l2) {
              throw new IOException("stream cache time limit exceeded");
            }
            if (e) {
              throw new IOException("abort requested");
            }
            i = j;
            if (!localpg.a()) {
              continue;
            }
            a(paramString, localFile.getAbsolutePath(), j, k, false);
            i = j;
            continue;
          }
          ((FileOutputStream)???).close();
          if (b.a(3))
          {
            localObject3 = c.format(i);
            b.a("Preloaded " + (String)localObject3 + " bytes from " + paramString);
          }
          localFile.setReadable(true, false);
          b(localIOException1);
          a(paramString, localFile.getAbsolutePath(), i);
          b.remove(str);
          return true;
        }
        catch (IOException localIOException2) {}
        b.d("Preload failed for URL \"" + paramString + "\"", localIOException1);
      }
      catch (IOException localIOException3) {}catch (NullPointerException localNullPointerException) {}
    }
  }
  
  public int c()
  {
    int i = 0;
    int k = 0;
    if (d == null) {
      return k;
    }
    File[] arrayOfFile = d.listFiles();
    int m = arrayOfFile.length;
    int j = 0;
    for (;;)
    {
      k = i;
      if (j >= m) {
        break;
      }
      k = i;
      if (!arrayOfFile[j].getName().endsWith(".done")) {
        k = i + 1;
      }
      j += 1;
      i = k;
    }
  }
  
  public boolean d()
  {
    if (d == null) {
      return false;
    }
    Object localObject = null;
    long l1 = Long.MAX_VALUE;
    File[] arrayOfFile = d.listFiles();
    int j = arrayOfFile.length;
    int i = 0;
    if (i < j)
    {
      File localFile = arrayOfFile[i];
      if (localFile.getName().endsWith(".done")) {
        break label134;
      }
      long l2 = localFile.lastModified();
      if (l2 >= l1) {
        break label134;
      }
      localObject = localFile;
      l1 = l2;
    }
    label134:
    for (;;)
    {
      i += 1;
      break;
      boolean bool2;
      if (localObject != null)
      {
        bool2 = ((File)localObject).delete();
        localObject = a((File)localObject);
        bool1 = bool2;
        if (!((File)localObject).isFile()) {}
      }
      for (boolean bool1 = bool2 & ((File)localObject).delete();; bool1 = false) {
        return bool1;
      }
    }
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.internal.gq
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */