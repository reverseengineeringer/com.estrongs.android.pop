package com.flurry.sdk;

import java.io.BufferedInputStream;
import java.io.DataInputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.net.URLConnection;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Map.Entry;
import java.util.Set;

public class ek
  extends el
{
  private String b = "";
  private String c = Long.toHexString(System.nanoTime());
  private Integer d = Integer.valueOf(0);
  private List<byte[]> e;
  
  private void a(StringBuilder paramStringBuilder)
  {
    paramStringBuilder = paramStringBuilder.toString().getBytes();
    e.add(paramStringBuilder);
    int i = d.intValue();
    d = Integer.valueOf(paramStringBuilder.length + i);
  }
  
  private void a(Map<String, String> paramMap)
  {
    e = new ArrayList();
    Object localObject1 = new StringBuilder();
    ((StringBuilder)localObject1).append("Content-Type: multipart/form-data; boundary=").append(c).append("\r\n\r\n");
    Iterator localIterator = paramMap.entrySet().iterator();
    paramMap = (Map<String, String>)localObject1;
    while (localIterator.hasNext())
    {
      Object localObject2 = (Map.Entry)localIterator.next();
      localObject1 = (String)((Map.Entry)localObject2).getKey();
      localObject2 = (String)((Map.Entry)localObject2).getValue();
      if (localObject2 != null)
      {
        File localFile;
        String str;
        byte[] arrayOfByte;
        if ("data".equals(localObject1))
        {
          localFile = new File((String)localObject2);
          if (localFile.exists())
          {
            str = URLConnection.guessContentTypeFromName(localFile.getName());
            arrayOfByte = new byte[(int)localFile.length()];
            localObject2 = new DataInputStream(new BufferedInputStream(new FileInputStream(localFile)));
          }
        }
        else
        {
          for (;;)
          {
            try
            {
              ((DataInputStream)localObject2).readFully(arrayOfByte);
              if (localObject2 != null) {
                ((DataInputStream)localObject2).close();
              }
              paramMap.append("--").append(c).append("\r\n");
              paramMap.append("Content-Disposition: form-data; name=\"").append((String)localObject1).append("\"; filename=\"").append(localFile.getName()).append("\"\r\n");
              paramMap.append("Content-Type: ").append(str).append("\r\n\r\n");
              a(paramMap);
              a(arrayOfByte);
              paramMap = new StringBuilder("\r\n");
            }
            finally
            {
              if (localObject2 != null) {
                ((DataInputStream)localObject2).close();
              }
            }
            paramMap.append((String)localObject2).append("\r\n");
          }
        }
      }
    }
    paramMap.append("--").append(c).append("--\r\n");
    a(paramMap);
  }
  
  private void a(byte[] paramArrayOfByte)
  {
    e.add(paramArrayOfByte);
    d = Integer.valueOf(d.intValue() + paramArrayOfByte.length);
  }
  
  private void c(String paramString)
  {
    b = ea.a(paramString);
  }
  
  private byte[] g()
  {
    byte[] arrayOfByte1 = new byte[d.intValue()];
    Iterator localIterator = e.iterator();
    byte[] arrayOfByte2;
    for (int i = 0; localIterator.hasNext(); i = arrayOfByte2.length + i)
    {
      arrayOfByte2 = (byte[])localIterator.next();
      System.arraycopy(arrayOfByte2, 0, arrayOfByte1, i, arrayOfByte2.length);
    }
    return arrayOfByte1;
  }
  
  protected kp.a a()
  {
    return kp.a.c;
  }
  
  public void a(String paramString, Map<String, String> paramMap, ek.a parama)
  {
    c(paramString);
    try
    {
      a(paramMap);
      paramString = paramMap.entrySet().iterator();
      while (paramString.hasNext())
      {
        Object localObject = (Map.Entry)paramString.next();
        paramMap = (String)((Map.Entry)localObject).getKey();
        localObject = (String)((Map.Entry)localObject).getValue();
        if (!"data".equals(paramMap)) {
          b(paramMap, (String)localObject);
        }
      }
    }
    catch (IOException paramString)
    {
      for (;;)
      {
        parama.a(-1, "Error while creating payload");
        paramString.printStackTrace();
      }
      paramString = dy.b();
      paramMap = new kn();
      paramMap.a(b());
      paramMap.a(a());
      a(paramMap, paramString);
      paramString = new kn();
      paramString.a(b());
      paramString.a(a());
      paramString.a(g());
      paramString.d(20000);
      paramString.a("Authorization", (String)d().get("Authorization"));
      paramString.a("Content-Type", "multipart/form-data, boundary=" + c);
      paramString.a("Content-Length", d.toString());
      paramString.a(new kx());
      paramString.b(new lc());
      paramString.a("Content-Type", em.f());
      paramString.a(new ek.1(this, parama));
      jq.a().a(this, paramString);
    }
  }
  
  protected String b()
  {
    return b;
  }
  
  public void c()
  {
    jq.a().a(this);
  }
}

/* Location:
 * Qualified Name:     com.flurry.sdk.ek
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */