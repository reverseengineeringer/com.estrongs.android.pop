package com.jcraft.jsch;

public abstract interface Compression
{
  public abstract void a(int paramInt1, int paramInt2);
  
  public abstract byte[] a(byte[] paramArrayOfByte, int paramInt, int[] paramArrayOfInt);
  
  public abstract byte[] b(byte[] paramArrayOfByte, int paramInt, int[] paramArrayOfInt);
}

/* Location:
 * Qualified Name:     com.jcraft.jsch.Compression
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */