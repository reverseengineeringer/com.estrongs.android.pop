package de.innosystec.unrar.rarfile;

public class d
  extends b
{
  private short g;
  private byte h;
  private byte i;
  private short j;
  
  public d(b paramb, byte[] paramArrayOfByte)
  {
    super(paramb);
    g = de.innosystec.unrar.b.b.b(paramArrayOfByte, 0);
    int k = h;
    h = ((byte)(paramArrayOfByte[2] & 0xFF | k));
    k = i;
    i = ((byte)(paramArrayOfByte[3] & 0xFF | k));
    j = de.innosystec.unrar.b.b.b(paramArrayOfByte, 4);
  }
}

/* Location:
 * Qualified Name:     de.innosystec.unrar.rarfile.d
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */