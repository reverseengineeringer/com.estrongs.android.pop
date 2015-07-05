package jcifs.smb;

import jcifs.Config;

public class BufferCache
{
  private static final int MAX_BUFFERS = Config.getInt("jcifs.smb.maxBuffers", 16);
  static Object[] cache = new Object[MAX_BUFFERS];
  private static int freeBuffers = 0;
  
  public static byte[] getBuffer()
  {
    for (;;)
    {
      int i;
      synchronized (cache)
      {
        if (freeBuffers > 0)
        {
          i = 0;
          if (i < MAX_BUFFERS)
          {
            if (cache[i] == null) {
              break label73;
            }
            arrayOfByte = (byte[])cache[i];
            cache[i] = null;
            freeBuffers -= 1;
            return arrayOfByte;
          }
        }
        byte[] arrayOfByte = new byte[65535];
        return arrayOfByte;
      }
      label73:
      i += 1;
    }
  }
  
  static void getBuffers(SmbComTransaction paramSmbComTransaction, SmbComTransactionResponse paramSmbComTransactionResponse)
  {
    synchronized (cache)
    {
      txn_buf = getBuffer();
      txn_buf = getBuffer();
      return;
    }
  }
  
  public static void releaseBuffer(byte[] paramArrayOfByte)
  {
    for (;;)
    {
      int i;
      synchronized (cache)
      {
        if (freeBuffers < MAX_BUFFERS)
        {
          i = 0;
          if (i < MAX_BUFFERS)
          {
            if (cache[i] != null) {
              break label57;
            }
            cache[i] = paramArrayOfByte;
            freeBuffers += 1;
            return;
          }
        }
        return;
      }
      label57:
      i += 1;
    }
  }
}

/* Location:
 * Qualified Name:     jcifs.smb.BufferCache
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */