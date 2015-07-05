package de.innosystec.unrar.rarfile;

public class f
  extends b
{
  private int g;
  private short h;
  
  public f(b paramb, byte[] paramArrayOfByte)
  {
    super(paramb);
    int i = 0;
    if (a())
    {
      g = de.innosystec.unrar.b.b.c(paramArrayOfByte, 0);
      i = 4;
    }
    if (b()) {
      h = de.innosystec.unrar.b.b.b(paramArrayOfByte, i);
    }
  }
}

/* Location:
 * Qualified Name:     de.innosystec.unrar.rarfile.f
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */