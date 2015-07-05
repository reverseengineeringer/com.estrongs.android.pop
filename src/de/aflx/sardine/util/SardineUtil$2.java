package de.aflx.sardine.util;

import java.text.SimpleDateFormat;
import java.util.Locale;
import java.util.TimeZone;

class SardineUtil$2
  extends ThreadLocal<SimpleDateFormat>
{
  protected SimpleDateFormat initialValue()
  {
    SimpleDateFormat localSimpleDateFormat = new SimpleDateFormat("EEE, dd MMM yyyy HH:mm:ss zzz", Locale.US);
    localSimpleDateFormat.setTimeZone(TimeZone.getTimeZone("UTC"));
    return localSimpleDateFormat;
  }
}

/* Location:
 * Qualified Name:     de.aflx.sardine.util.SardineUtil.2
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */