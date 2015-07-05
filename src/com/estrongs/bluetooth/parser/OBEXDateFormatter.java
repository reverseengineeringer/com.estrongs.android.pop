package com.estrongs.bluetooth.parser;

import java.text.DateFormat;
import java.text.Format;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.TimeZone;

public class OBEXDateFormatter
  extends SimpleDateFormat
{
  private static final long serialVersionUID = 3078108458939975850L;
  private DateFormat isoFormatter = new SimpleDateFormat("yyyyMMdd'T'HHmmss");
  private DateFormat utcFormatter = new SimpleDateFormat("yyyyMMdd'T'HHmmssZ");
  
  public OBEXDateFormatter()
  {
    utcFormatter.setTimeZone(TimeZone.getTimeZone("UTC"));
  }
  
  public Date parse(String paramString)
  {
    if ((paramString == null) || ("".equals(paramString.trim()))) {
      return null;
    }
    if (paramString.endsWith("Z")) {
      paramString = paramString.replaceAll("Z", "UTC");
    }
    for (DateFormat localDateFormat = utcFormatter;; localDateFormat = isoFormatter) {
      return (Date)localDateFormat.parseObject(paramString);
    }
  }
}

/* Location:
 * Qualified Name:     com.estrongs.bluetooth.parser.OBEXDateFormatter
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */