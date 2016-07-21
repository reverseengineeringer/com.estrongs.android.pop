package com.estrongs.android.scanner.d;

import java.text.SimpleDateFormat;
import java.util.Date;

class ar
{
  public String a;
  public String b;
  public long c;
  public long d;
  public long e;
  
  public String toString()
  {
    SimpleDateFormat localSimpleDateFormat = new SimpleDateFormat("yyyy-MM-dd H:m:s");
    return "QueryInfo{path='" + a + '\'' + ", groupName='" + b + '\'' + ", pid=" + c + ", minTimestamp=" + localSimpleDateFormat.format(new Date(d)) + ", maxTimestamp=" + localSimpleDateFormat.format(new Date(e)) + '}';
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.scanner.d.ar
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */