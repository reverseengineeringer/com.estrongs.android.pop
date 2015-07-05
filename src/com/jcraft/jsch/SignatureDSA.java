package com.jcraft.jsch;

public abstract interface SignatureDSA
  extends Signature
{
  public abstract void a(byte[] paramArrayOfByte1, byte[] paramArrayOfByte2, byte[] paramArrayOfByte3, byte[] paramArrayOfByte4);
  
  public abstract void b(byte[] paramArrayOfByte1, byte[] paramArrayOfByte2, byte[] paramArrayOfByte3, byte[] paramArrayOfByte4);
}

/* Location:
 * Qualified Name:     com.jcraft.jsch.SignatureDSA
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */