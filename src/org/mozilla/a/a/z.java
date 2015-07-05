package org.mozilla.a.a;

public abstract class z
{
  public static byte a(z paramz, byte paramByte1, byte paramByte2)
  {
    return (byte)(paramz.b()[((paramz.c() * paramByte2 + (paramz.a()[((paramByte1 & 0xFF) >> 3)] >> ((paramByte1 & 0x7) << 2) & 0xF) & 0xFF) >> 3)] >> ((paramz.c() * paramByte2 + (paramz.a()[((paramByte1 & 0xFF) >> 3)] >> ((paramByte1 & 0x7) << 2) & 0xF) & 0xFF & 0x7) << 2) & 0xF & 0xFF);
  }
  
  public abstract int[] a();
  
  public abstract int[] b();
  
  public abstract int c();
  
  public abstract String d();
  
  public abstract boolean e();
}

/* Location:
 * Qualified Name:     org.mozilla.a.a.z
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */