package com.estrongs.fs.impl.usb.fs.ntfs.utils;

public enum SizeUnit
{
  public static final SizeUnit MAX = E;
  public static final SizeUnit MIN;
  private final long multiplier;
  private final String unit;
  
  static
  {
    G = new SizeUnit("G", 3, 1073741824L, "G");
    T = new SizeUnit("T", 4, 1099511627776L, "T");
    P = new SizeUnit("P", 5, 1125899906842624L, "P");
    E = new SizeUnit("E", 6, 1152921504606846976L, "E");
    $VALUES = new SizeUnit[] { B, K, M, G, T, P, E };
    MIN = B;
  }
  
  private SizeUnit(long paramLong, String paramString)
  {
    multiplier = paramLong;
    unit = paramString;
  }
  
  public long getMultiplier()
  {
    return multiplier;
  }
  
  public String getUnit()
  {
    return unit;
  }
  
  public String toString()
  {
    return multiplier + ", " + unit;
  }
}

/* Location:
 * Qualified Name:     com.estrongs.fs.impl.usb.fs.ntfs.utils.SizeUnit
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */