package com.facebook.ads.internal.http;

import java.io.ByteArrayInputStream;
import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.util.Random;
import org.apache.http.Header;
import org.apache.http.HttpEntity;
import org.apache.http.message.BasicHeader;

class e
  implements HttpEntity
{
  private static final char[] d = "-_1234567890abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ".toCharArray();
  ByteArrayOutputStream a = new ByteArrayOutputStream();
  boolean b = false;
  boolean c = false;
  private String e = null;
  
  public e()
  {
    StringBuffer localStringBuffer = new StringBuffer();
    Random localRandom = new Random();
    while (i < 30)
    {
      localStringBuffer.append(d[localRandom.nextInt(d.length)]);
      i += 1;
    }
    e = localStringBuffer.toString();
  }
  
  public void a()
  {
    if (!c) {}
    try
    {
      a.write(("--" + e + "\r\n").getBytes());
      c = true;
      return;
    }
    catch (IOException localIOException)
    {
      for (;;)
      {
        localIOException.printStackTrace();
      }
    }
  }
  
  public void a(String paramString1, String paramString2)
  {
    a();
    try
    {
      a.write(("Content-Disposition: form-data; name=\"" + paramString1 + "\"\r\n\r\n").getBytes());
      a.write(paramString2.getBytes());
      a.write(("\r\n--" + e + "\r\n").getBytes());
      return;
    }
    catch (IOException paramString1)
    {
      paramString1.printStackTrace();
    }
  }
  
  public void a(String paramString1, String paramString2, InputStream paramInputStream, String paramString3, boolean paramBoolean)
  {
    a();
    try
    {
      paramString3 = "Content-Type: " + paramString3 + "\r\n";
      a.write(("Content-Disposition: form-data; name=\"" + paramString1 + "\"; filename=\"" + paramString2 + "\"\r\n").getBytes());
      a.write(paramString3.getBytes());
      a.write("Content-Transfer-Encoding: binary\r\n\r\n".getBytes());
      paramString1 = new byte['က'];
      for (;;)
      {
        int i = paramInputStream.read(paramString1);
        if (i == -1) {
          break;
        }
        a.write(paramString1, 0, i);
      }
      try
      {
        paramInputStream.close();
        throw paramString1;
      }
      catch (IOException paramString2)
      {
        for (;;)
        {
          paramString2.printStackTrace();
        }
      }
    }
    catch (IOException paramString1)
    {
      paramString1 = paramString1;
      paramString1.printStackTrace();
      try
      {
        paramInputStream.close();
        return;
      }
      catch (IOException paramString1)
      {
        paramString1.printStackTrace();
        return;
      }
      if (!paramBoolean) {
        a.write(("\r\n--" + e + "\r\n").getBytes());
      }
      a.flush();
      try
      {
        paramInputStream.close();
        return;
      }
      catch (IOException paramString1)
      {
        paramString1.printStackTrace();
        return;
      }
    }
    finally {}
  }
  
  public void a(String paramString1, String paramString2, InputStream paramInputStream, boolean paramBoolean)
  {
    a(paramString1, paramString2, paramInputStream, "application/octet-stream", paramBoolean);
  }
  
  public void b()
  {
    if (b) {
      return;
    }
    try
    {
      a.write(("\r\n--" + e + "--\r\n").getBytes());
      b = true;
      return;
    }
    catch (IOException localIOException)
    {
      for (;;)
      {
        localIOException.printStackTrace();
      }
    }
  }
  
  public void consumeContent()
  {
    if (isStreaming()) {
      throw new UnsupportedOperationException("Streaming entity does not implement #consumeContent()");
    }
  }
  
  public InputStream getContent()
  {
    return new ByteArrayInputStream(a.toByteArray());
  }
  
  public Header getContentEncoding()
  {
    return null;
  }
  
  public long getContentLength()
  {
    b();
    return a.toByteArray().length;
  }
  
  public Header getContentType()
  {
    return new BasicHeader("Content-Type", "multipart/form-data; boundary=" + e);
  }
  
  public boolean isChunked()
  {
    return false;
  }
  
  public boolean isRepeatable()
  {
    return false;
  }
  
  public boolean isStreaming()
  {
    return false;
  }
  
  public void writeTo(OutputStream paramOutputStream)
  {
    paramOutputStream.write(a.toByteArray());
  }
}

/* Location:
 * Qualified Name:     com.facebook.ads.internal.http.e
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */