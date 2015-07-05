package com.jcraft.jsch;

public abstract interface SignatureRSA
  extends Signature
{
  public abstract void a(byte[] paramArrayOfByte1, byte[] paramArrayOfByte2);
  
  public abstract void b(byte[] paramArrayOfByte1, byte[] paramArrayOfByte2);
}

/* Location:
 * Qualified Name:     com.jcraft.jsch.SignatureRSA
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */