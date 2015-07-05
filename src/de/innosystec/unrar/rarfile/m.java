package de.innosystec.unrar.rarfile;

import java.util.Arrays;

public class m
{
  public static final m a = new m(new byte[] { 67, 77, 84 });
  public static final m b = new m(new byte[] { 65, 67, 76 });
  public static final m c = new m(new byte[] { 83, 84, 77 });
  public static final m d = new m(new byte[] { 85, 79, 87 });
  public static final m e = new m(new byte[] { 65, 86 });
  public static final m f = new m(new byte[] { 82, 82 });
  public static final m g = new m(new byte[] { 69, 65, 50 });
  public static final m h = new m(new byte[] { 69, 65, 66, 69 });
  private byte[] i;
  
  private m(byte[] paramArrayOfByte)
  {
    i = paramArrayOfByte;
  }
  
  public boolean a(byte[] paramArrayOfByte)
  {
    return Arrays.equals(i, paramArrayOfByte);
  }
  
  public String toString()
  {
    return new String(i);
  }
}

/* Location:
 * Qualified Name:     de.innosystec.unrar.rarfile.m
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */