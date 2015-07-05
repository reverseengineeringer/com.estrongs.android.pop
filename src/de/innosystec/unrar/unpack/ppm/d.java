package de.innosystec.unrar.unpack.ppm;

public abstract class d
{
  protected byte[] c;
  protected int d;
  
  static
  {
    if (!d.class.desiredAssertionStatus()) {}
    for (boolean bool = true;; bool = false)
    {
      e = bool;
      return;
    }
  }
  
  public d(byte[] paramArrayOfByte)
  {
    c = paramArrayOfByte;
  }
  
  public void c(int paramInt)
  {
    if ((!e) && (c == null)) {
      throw new AssertionError();
    }
    if ((!e) && ((paramInt < 0) || (paramInt >= c.length))) {
      throw new AssertionError(paramInt);
    }
    d = paramInt;
  }
  
  public int e()
  {
    if ((!e) && (c == null)) {
      throw new AssertionError();
    }
    return d;
  }
}

/* Location:
 * Qualified Name:     de.innosystec.unrar.unpack.ppm.d
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */