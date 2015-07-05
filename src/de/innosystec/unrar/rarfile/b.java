package de.innosystec.unrar.rarfile;

import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;

public class b
{
  Log a = LogFactory.getLog(b.class.getName());
  protected long b;
  protected short c = 0;
  protected byte d = 0;
  protected short e = 0;
  protected short f = 0;
  
  public b() {}
  
  public b(b paramb)
  {
    e = paramb.f();
    c = paramb.g();
    d = paramb.i().getHeaderByte();
    f = paramb.h();
    b = paramb.e();
  }
  
  public b(byte[] paramArrayOfByte)
  {
    c = de.innosystec.unrar.b.b.b(paramArrayOfByte, 0);
    int i = d;
    d = ((byte)(paramArrayOfByte[2] & 0xFF | i));
    e = de.innosystec.unrar.b.b.b(paramArrayOfByte, 3);
    f = de.innosystec.unrar.b.b.b(paramArrayOfByte, 5);
  }
  
  public void a(long paramLong)
  {
    b = paramLong;
  }
  
  public boolean a()
  {
    return (e & 0x2) != 0;
  }
  
  public boolean b()
  {
    return (e & 0x8) != 0;
  }
  
  public boolean c()
  {
    return (e & 0x200) != 0;
  }
  
  public boolean d()
  {
    if (UnrarHeadertype.SubHeader.equals(d)) {}
    while ((UnrarHeadertype.NewSubHeader.equals(d)) && ((e & 0x10) != 0)) {
      return true;
    }
    return false;
  }
  
  public long e()
  {
    return b;
  }
  
  public short f()
  {
    return e;
  }
  
  public short g()
  {
    return c;
  }
  
  public short h()
  {
    return f;
  }
  
  public UnrarHeadertype i()
  {
    return UnrarHeadertype.findType(d);
  }
  
  public void j()
  {
    StringBuilder localStringBuilder = new StringBuilder();
    localStringBuilder.append("HeaderType: " + i());
    localStringBuilder.append("\nHeadCRC: " + Integer.toHexString(g()));
    localStringBuilder.append("\nFlags: " + Integer.toHexString(f()));
    localStringBuilder.append("\nHeaderSize: " + h());
    localStringBuilder.append("\nPosition in file: " + e());
    a.info(localStringBuilder.toString());
  }
}

/* Location:
 * Qualified Name:     de.innosystec.unrar.rarfile.b
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */