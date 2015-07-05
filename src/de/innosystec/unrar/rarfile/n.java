package de.innosystec.unrar.rarfile;

import de.innosystec.unrar.b.b;

public class n
  extends c
{
  private byte g = (byte)(g | paramArrayOfByte[0] & 0xFF);
  private short h;
  private int i;
  private byte j;
  
  public n(c paramc, byte[] paramArrayOfByte)
  {
    super(paramc);
    h = b.b(paramArrayOfByte, 0);
    i = b.c(paramArrayOfByte, 2);
    int k = j;
    j = ((byte)(paramArrayOfByte[6] & 0xFF | k));
  }
}

/* Location:
 * Qualified Name:     de.innosystec.unrar.rarfile.n
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */