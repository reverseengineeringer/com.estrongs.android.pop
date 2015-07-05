package de.innosystec.unrar.rarfile;

public class a
  extends b
{
  private byte g;
  private byte h;
  private byte i;
  private int j;
  
  public a(b paramb, byte[] paramArrayOfByte)
  {
    super(paramb);
    int k = g;
    g = ((byte)(paramArrayOfByte[0] & 0xFF | k));
    k = h;
    h = ((byte)(paramArrayOfByte[1] & 0xFF | k));
    k = i;
    i = ((byte)(paramArrayOfByte[2] & 0xFF | k));
    j = de.innosystec.unrar.b.b.c(paramArrayOfByte, 3);
  }
}

/* Location:
 * Qualified Name:     de.innosystec.unrar.rarfile.a
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */