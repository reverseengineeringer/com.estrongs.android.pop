package jcifs.util;

import java.security.MessageDigest;

public class HMACT64
  extends MessageDigest
  implements Cloneable
{
  private static final int BLOCK_LENGTH = 64;
  private static final byte IPAD = 54;
  private static final byte OPAD = 92;
  private byte[] ipad = new byte[64];
  private MessageDigest md5;
  private byte[] opad = new byte[64];
  
  private HMACT64(HMACT64 paramHMACT64)
  {
    super("HMACT64");
    ipad = ipad;
    opad = opad;
    md5 = ((MessageDigest)md5.clone());
  }
  
  public HMACT64(byte[] paramArrayOfByte)
  {
    super("HMACT64");
    int k = Math.min(paramArrayOfByte.length, 64);
    int i = 0;
    int j;
    for (;;)
    {
      j = k;
      if (i >= k) {
        break;
      }
      ipad[i] = ((byte)(paramArrayOfByte[i] ^ 0x36));
      opad[i] = ((byte)(paramArrayOfByte[i] ^ 0x5C));
      i += 1;
    }
    while (j < 64)
    {
      ipad[j] = 54;
      opad[j] = 92;
      j += 1;
    }
    try
    {
      md5 = MessageDigest.getInstance("MD5");
      engineReset();
      return;
    }
    catch (Exception paramArrayOfByte)
    {
      throw new IllegalStateException(paramArrayOfByte.getMessage());
    }
  }
  
  public Object clone()
  {
    try
    {
      HMACT64 localHMACT64 = new HMACT64(this);
      return localHMACT64;
    }
    catch (CloneNotSupportedException localCloneNotSupportedException)
    {
      throw new IllegalStateException(localCloneNotSupportedException.getMessage());
    }
  }
  
  protected int engineDigest(byte[] paramArrayOfByte, int paramInt1, int paramInt2)
  {
    byte[] arrayOfByte = md5.digest();
    md5.update(opad);
    md5.update(arrayOfByte);
    try
    {
      paramInt1 = md5.digest(paramArrayOfByte, paramInt1, paramInt2);
      return paramInt1;
    }
    catch (Exception paramArrayOfByte)
    {
      throw new IllegalStateException();
    }
  }
  
  protected byte[] engineDigest()
  {
    byte[] arrayOfByte = md5.digest();
    md5.update(opad);
    return md5.digest(arrayOfByte);
  }
  
  protected int engineGetDigestLength()
  {
    return md5.getDigestLength();
  }
  
  protected void engineReset()
  {
    md5.reset();
    md5.update(ipad);
  }
  
  protected void engineUpdate(byte paramByte)
  {
    md5.update(paramByte);
  }
  
  protected void engineUpdate(byte[] paramArrayOfByte, int paramInt1, int paramInt2)
  {
    md5.update(paramArrayOfByte, paramInt1, paramInt2);
  }
}

/* Location:
 * Qualified Name:     jcifs.util.HMACT64
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */