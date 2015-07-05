package com.estrongs.fs.impl.usb.fs.b;

import java.nio.ByteBuffer;
import java.nio.charset.Charset;
import java.util.Arrays;

public class a
{
  private static int a = 11;
  private ByteBuffer b;
  
  public a(String paramString1, String paramString2)
  {
    byte[] arrayOfByte = new byte[a];
    Arrays.fill(arrayOfByte, (byte)32);
    int i = Math.min(paramString1.length(), 8);
    System.arraycopy(paramString1.getBytes(Charset.forName("ASCII")), 0, arrayOfByte, 0, i);
    System.arraycopy(paramString2.getBytes(Charset.forName("ASCII")), 0, arrayOfByte, 8, paramString2.length());
    if (arrayOfByte[0] == 229) {
      arrayOfByte[0] = 5;
    }
    b = ByteBuffer.wrap(arrayOfByte);
  }
  
  private a(ByteBuffer paramByteBuffer)
  {
    b = paramByteBuffer;
  }
  
  public static a a(ByteBuffer paramByteBuffer)
  {
    byte[] arrayOfByte = new byte[a];
    paramByteBuffer.get(arrayOfByte);
    return new a(ByteBuffer.wrap(arrayOfByte));
  }
  
  public String a()
  {
    int j = 0;
    Object localObject2 = new char[8];
    Object localObject1 = new char[3];
    int i = 0;
    while (i < 8)
    {
      localObject2[i] = ((char)(b.get(i) & 0xFF));
      i += 1;
    }
    i = j;
    if (b.get(0) == 5)
    {
      localObject2[0] = 229;
      i = j;
    }
    while (i < 3)
    {
      localObject1[i] = ((char)(b.get(i + 8) & 0xFF));
      i += 1;
    }
    localObject2 = new String((char[])localObject2).trim();
    localObject1 = new String((char[])localObject1).trim();
    if (((String)localObject1).isEmpty()) {
      return (String)localObject2;
    }
    return (String)localObject2 + "." + (String)localObject1;
  }
  
  public byte b()
  {
    int i = 0;
    int j = 0;
    if (i < a)
    {
      if ((j & 0x1) == 1) {}
      for (int k = 128;; k = 0)
      {
        j = ((j & 0xFF) >> 1) + k + b.get(i);
        i += 1;
        break;
      }
    }
    return (byte)(j & 0xFF);
  }
  
  public void b(ByteBuffer paramByteBuffer)
  {
    paramByteBuffer.put(b.array(), 0, a);
  }
  
  public boolean equals(Object paramObject)
  {
    if (!(paramObject instanceof a)) {
      return false;
    }
    return Arrays.equals(b.array(), b.array());
  }
  
  public String toString()
  {
    return a();
  }
}

/* Location:
 * Qualified Name:     com.estrongs.fs.impl.usb.fs.b.a
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */