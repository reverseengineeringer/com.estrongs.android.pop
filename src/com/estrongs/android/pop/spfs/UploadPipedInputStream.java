package com.estrongs.android.pop.spfs;

import com.estrongs.android.pop.netfs.utils.FastPipedInputStream;

public class UploadPipedInputStream
  extends FastPipedInputStream
{
  private long count = 0L;
  private long length;
  
  public UploadPipedInputStream(long paramLong)
  {
    length = paramLong;
  }
  
  /* Error */
  public int read(byte[] paramArrayOfByte, int paramInt1, int paramInt2)
  {
    // Byte code:
    //   0: aload_0
    //   1: monitorenter
    //   2: aload_0
    //   3: getfield 14	com/estrongs/android/pop/spfs/UploadPipedInputStream:count	J
    //   6: lstore 4
    //   8: aload_0
    //   9: getfield 16	com/estrongs/android/pop/spfs/UploadPipedInputStream:length	J
    //   12: lstore 6
    //   14: lload 4
    //   16: lload 6
    //   18: lcmp
    //   19: iflt +9 -> 28
    //   22: iconst_m1
    //   23: istore_2
    //   24: aload_0
    //   25: monitorexit
    //   26: iload_2
    //   27: ireturn
    //   28: aload_0
    //   29: aload_1
    //   30: iload_2
    //   31: iload_3
    //   32: invokespecial 21	com/estrongs/android/pop/netfs/utils/FastPipedInputStream:read	([BII)I
    //   35: istore_3
    //   36: aload_0
    //   37: aload_0
    //   38: getfield 14	com/estrongs/android/pop/spfs/UploadPipedInputStream:count	J
    //   41: iload_3
    //   42: i2l
    //   43: ladd
    //   44: putfield 14	com/estrongs/android/pop/spfs/UploadPipedInputStream:count	J
    //   47: iload_3
    //   48: istore_2
    //   49: aload_0
    //   50: getfield 14	com/estrongs/android/pop/spfs/UploadPipedInputStream:count	J
    //   53: aload_0
    //   54: getfield 16	com/estrongs/android/pop/spfs/UploadPipedInputStream:length	J
    //   57: lcmp
    //   58: ifle -34 -> 24
    //   61: aload_0
    //   62: getfield 14	com/estrongs/android/pop/spfs/UploadPipedInputStream:count	J
    //   65: lstore 4
    //   67: aload_0
    //   68: getfield 16	com/estrongs/android/pop/spfs/UploadPipedInputStream:length	J
    //   71: lstore 6
    //   73: iload_3
    //   74: lload 4
    //   76: lload 6
    //   78: lsub
    //   79: l2i
    //   80: isub
    //   81: istore_2
    //   82: goto -58 -> 24
    //   85: astore_1
    //   86: aload_0
    //   87: monitorexit
    //   88: aload_1
    //   89: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	90	0	this	UploadPipedInputStream
    //   0	90	1	paramArrayOfByte	byte[]
    //   0	90	2	paramInt1	int
    //   0	90	3	paramInt2	int
    //   6	69	4	l1	long
    //   12	65	6	l2	long
    // Exception table:
    //   from	to	target	type
    //   2	14	85	finally
    //   28	47	85	finally
    //   49	73	85	finally
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.pop.spfs.UploadPipedInputStream
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */