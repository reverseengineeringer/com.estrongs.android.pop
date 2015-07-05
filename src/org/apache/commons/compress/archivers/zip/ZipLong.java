package org.apache.commons.compress.archivers.zip;

public final class ZipLong
  implements Cloneable
{
  private static final int BYTE_1 = 1;
  private static final int BYTE_1_MASK = 65280;
  private static final int BYTE_1_SHIFT = 8;
  private static final int BYTE_2 = 2;
  private static final int BYTE_2_MASK = 16711680;
  private static final int BYTE_2_SHIFT = 16;
  private static final int BYTE_3 = 3;
  private static final long BYTE_3_MASK = 4278190080L;
  private static final int BYTE_3_SHIFT = 24;
  private static final int BYTE_MASK = 255;
  public static final ZipLong CFH_SIG = new ZipLong(33639248L);
  public static final ZipLong LFH_SIG = new ZipLong(67324752L);
  private static final int WORD = 4;
  private final long value;
  
  public ZipLong(long paramLong)
  {
    value = paramLong;
  }
  
  public ZipLong(byte[] paramArrayOfByte)
  {
    this(paramArrayOfByte, 0);
  }
  
  public ZipLong(byte[] paramArrayOfByte, int paramInt)
  {
    value = getValue(paramArrayOfByte, paramInt);
  }
  
  public static byte[] getBytes(long paramLong)
  {
    return new byte[] { (byte)(int)(0xFF & paramLong), (byte)(int)((0xFF00 & paramLong) >> 8), (byte)(int)((0xFF0000 & paramLong) >> 16), (byte)(int)((0xFF000000 & paramLong) >> 24) };
  }
  
  public static long getValue(byte[] paramArrayOfByte)
  {
    return getValue(paramArrayOfByte, 0);
  }
  
  public static long getValue(byte[] paramArrayOfByte, int paramInt)
  {
    return (paramArrayOfByte[(paramInt + 3)] << 24 & 0xFF000000) + (paramArrayOfByte[(paramInt + 2)] << 16 & 0xFF0000) + (paramArrayOfByte[(paramInt + 1)] << 8 & 0xFF00) + (paramArrayOfByte[paramInt] & 0xFF);
  }
  
  public Object clone()
  {
    try
    {
      Object localObject = super.clone();
      return localObject;
    }
    catch (CloneNotSupportedException localCloneNotSupportedException)
    {
      throw new RuntimeException(localCloneNotSupportedException);
    }
  }
  
  public boolean equals(Object paramObject)
  {
    if ((paramObject == null) || (!(paramObject instanceof ZipLong))) {}
    while (value != ((ZipLong)paramObject).getValue()) {
      return false;
    }
    return true;
  }
  
  public byte[] getBytes()
  {
    return getBytes(value);
  }
  
  public long getValue()
  {
    return value;
  }
  
  public int hashCode()
  {
    return (int)value;
  }
}

/* Location:
 * Qualified Name:     org.apache.commons.compress.archivers.zip.ZipLong
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */