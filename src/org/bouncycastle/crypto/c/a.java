package org.bouncycastle.crypto.c;

import org.bouncycastle.crypto.e;
import org.bouncycastle.crypto.f;

public class a
  extends f
{
  private e d = new org.bouncycastle.crypto.d.a(new org.bouncycastle.crypto.a.b());
  
  private void a(byte[] paramArrayOfByte, int paramInt)
  {
    paramArrayOfByte[0] = ((byte)(paramInt >>> 24));
    paramArrayOfByte[1] = ((byte)(paramInt >>> 16));
    paramArrayOfByte[2] = ((byte)(paramInt >>> 8));
    paramArrayOfByte[3] = ((byte)paramInt);
  }
  
  private void a(byte[] paramArrayOfByte1, byte[] paramArrayOfByte2, int paramInt1, byte[] paramArrayOfByte3, byte[] paramArrayOfByte4, int paramInt2)
  {
    byte[] arrayOfByte = new byte[d.a()];
    paramArrayOfByte1 = new org.bouncycastle.crypto.f.a(paramArrayOfByte1);
    d.a(paramArrayOfByte1);
    if (paramArrayOfByte2 != null) {
      d.a(paramArrayOfByte2, 0, paramArrayOfByte2.length);
    }
    d.a(paramArrayOfByte3, 0, paramArrayOfByte3.length);
    d.a(arrayOfByte, 0);
    System.arraycopy(arrayOfByte, 0, paramArrayOfByte4, paramInt2, arrayOfByte.length);
    if (paramInt1 == 0) {
      throw new IllegalArgumentException("iteration count must be at least 1.");
    }
    int i = 1;
    if (i >= paramInt1) {
      return;
    }
    d.a(paramArrayOfByte1);
    d.a(arrayOfByte, 0, arrayOfByte.length);
    d.a(arrayOfByte, 0);
    int j = 0;
    for (;;)
    {
      if (j == arrayOfByte.length)
      {
        i += 1;
        break;
      }
      int k = paramInt2 + j;
      paramArrayOfByte4[k] = ((byte)(paramArrayOfByte4[k] ^ arrayOfByte[j]));
      j += 1;
    }
  }
  
  private byte[] b(int paramInt)
  {
    int i = d.a();
    int j = (paramInt + i - 1) / i;
    byte[] arrayOfByte1 = new byte[4];
    byte[] arrayOfByte2 = new byte[j * i];
    paramInt = 1;
    for (;;)
    {
      if (paramInt > j) {
        return arrayOfByte2;
      }
      a(arrayOfByte1, paramInt);
      a(a, b, c, arrayOfByte1, arrayOfByte2, (paramInt - 1) * i);
      paramInt += 1;
    }
  }
  
  public org.bouncycastle.crypto.b a(int paramInt)
  {
    paramInt /= 8;
    return new org.bouncycastle.crypto.f.a(b(paramInt), 0, paramInt);
  }
}

/* Location:
 * Qualified Name:     org.bouncycastle.crypto.c.a
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */