package de.a.a.a.a;

import java.util.Calendar;
import java.util.Date;
import java.util.zip.ZipEntry;

public class i
  extends ZipEntry
{
  protected int a;
  protected long b;
  protected int c;
  private g d;
  
  public i(String paramString)
  {
    super(paramString);
  }
  
  public i(String paramString, g paramg)
  {
    super(paramString);
    d = paramg;
  }
  
  public static long b(long paramLong)
  {
    Date localDate = new Date(paramLong);
    Calendar localCalendar = Calendar.getInstance();
    localCalendar.setTime(localDate);
    int i = localCalendar.get(1);
    if (i < 1980) {
      return 2162688L;
    }
    return i - 1980 << 25 | localCalendar.get(2) + 1 << 21 | localCalendar.get(5) << 16 | localCalendar.get(11) << 11 | localCalendar.get(12) << 5 | localCalendar.get(13) >> 1;
  }
  
  public static long c(long paramLong)
  {
    Calendar localCalendar = Calendar.getInstance();
    localCalendar.set(1, (int)(paramLong >> 25 & 0x7F) + 1980);
    localCalendar.set(2, (int)(paramLong >> 21 & 0xF) - 1);
    localCalendar.set(5, (int)(paramLong >> 16) & 0x1F);
    localCalendar.set(11, (int)(paramLong >> 11) & 0x1F);
    localCalendar.set(12, (int)(paramLong >> 5) & 0x3F);
    localCalendar.set(13, (int)(paramLong << 1) & 0x3E);
    return localCalendar.getTime().getTime();
  }
  
  public void a()
  {
    setCrc(0L);
    a |= 0x1;
    a |= 0x8;
    c = 99;
    byte[] arrayOfByte = new byte[11];
    setExtra(new byte[] { 1, -103, 7, 0, 2, 0, 65, 69, 3, (byte)(getMethod() & 0xFF), (byte)((getMethod() & 0xFF00) >> 8) });
  }
  
  public void a(int paramInt)
  {
    c = paramInt;
  }
  
  public void a(long paramLong)
  {
    b = paramLong;
  }
  
  public int b()
  {
    return a;
  }
  
  public boolean c()
  {
    return (d()) && (d != null) && (d.m());
  }
  
  public boolean d()
  {
    return (a & 0x1) > 0;
  }
  
  public long e()
  {
    return b;
  }
  
  public int f()
  {
    return c;
  }
  
  public g g()
  {
    return d;
  }
  
  public long h()
  {
    return b(getTime());
  }
}

/* Location:
 * Qualified Name:     de.a.a.a.a.i
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */