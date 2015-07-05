package com.estrongs.io.archive.aeszip;

import de.a.a.a.a.b;

class d
  extends e
{
  b a = null;
  
  d(a parama, long paramLong1, long paramLong2, b paramb)
  {
    super(parama, paramLong1, paramLong2);
    a = paramb;
  }
  
  public int read(byte[] paramArrayOfByte, int paramInt1, int paramInt2)
  {
    paramInt1 = super.read(paramArrayOfByte, paramInt1, paramInt2);
    a.a(paramArrayOfByte, paramInt1);
    return paramInt1;
  }
}

/* Location:
 * Qualified Name:     com.estrongs.io.archive.aeszip.d
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */