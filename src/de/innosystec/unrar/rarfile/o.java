package de.innosystec.unrar.rarfile;

public class o
  extends b
{
  private int g = 0;
  private short h = 0;
  private short i = 0;
  
  public o(b paramb, byte[] paramArrayOfByte)
  {
    super(paramb);
    g = de.innosystec.unrar.b.b.c(paramArrayOfByte, 0);
    h = de.innosystec.unrar.b.b.b(paramArrayOfByte, 4);
    i = de.innosystec.unrar.b.b.b(paramArrayOfByte, 6);
  }
}

/* Location:
 * Qualified Name:     de.innosystec.unrar.rarfile.o
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */