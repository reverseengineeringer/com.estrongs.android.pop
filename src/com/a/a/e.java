package com.a.a;

import java.io.UnsupportedEncodingException;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;

public class e
{
  public static byte[] a;
  
  static
  {
    try
    {
      a = "host::\000".getBytes("UTF-8");
      return;
    }
    catch (UnsupportedEncodingException localUnsupportedEncodingException) {}
  }
  
  private static int a(byte[] paramArrayOfByte)
  {
    int i = 0;
    int k = paramArrayOfByte.length;
    int j = 0;
    if (j < k)
    {
      int m = paramArrayOfByte[j];
      if (m >= 0) {
        i += m;
      }
      for (;;)
      {
        j += 1;
        break;
        i += m + 256;
      }
    }
    return i;
  }
  
  public static boolean a(f paramf)
  {
    if (a != (f ^ 0xFFFFFFFF)) {}
    while ((d != 0) && (a(g) != e)) {
      return false;
    }
    return true;
  }
  
  public static byte[] a()
  {
    return a(1314410051, 16777216, 4096, a);
  }
  
  public static byte[] a(int paramInt1, int paramInt2)
  {
    return a(1163086915, paramInt1, paramInt2, null);
  }
  
  public static byte[] a(int paramInt1, int paramInt2, int paramInt3, byte[] paramArrayOfByte)
  {
    ByteBuffer localByteBuffer;
    if (paramArrayOfByte != null)
    {
      localByteBuffer = ByteBuffer.allocate(paramArrayOfByte.length + 24).order(ByteOrder.LITTLE_ENDIAN);
      localByteBuffer.putInt(paramInt1);
      localByteBuffer.putInt(paramInt2);
      localByteBuffer.putInt(paramInt3);
      if (paramArrayOfByte == null) {
        break label105;
      }
      localByteBuffer.putInt(paramArrayOfByte.length);
      localByteBuffer.putInt(a(paramArrayOfByte));
    }
    for (;;)
    {
      localByteBuffer.putInt(paramInt1 ^ 0xFFFFFFFF);
      if (paramArrayOfByte != null) {
        localByteBuffer.put(paramArrayOfByte);
      }
      return localByteBuffer.array();
      localByteBuffer = ByteBuffer.allocate(24).order(ByteOrder.LITTLE_ENDIAN);
      break;
      label105:
      localByteBuffer.putInt(0);
      localByteBuffer.putInt(0);
    }
  }
  
  public static byte[] a(int paramInt1, int paramInt2, byte[] paramArrayOfByte)
  {
    return a(1163154007, paramInt1, paramInt2, paramArrayOfByte);
  }
  
  public static byte[] a(int paramInt, String paramString)
  {
    ByteBuffer localByteBuffer = ByteBuffer.allocate(paramString.length() + 1);
    localByteBuffer.put(paramString.getBytes("UTF-8"));
    localByteBuffer.put((byte)0);
    return a(1313165391, paramInt, 0, localByteBuffer.array());
  }
  
  public static byte[] a(int paramInt, byte[] paramArrayOfByte)
  {
    return a(1213486401, paramInt, 0, paramArrayOfByte);
  }
  
  public static byte[] b(int paramInt1, int paramInt2)
  {
    return a(1497451343, paramInt1, paramInt2, null);
  }
}

/* Location:
 * Qualified Name:     com.a.a.e
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */