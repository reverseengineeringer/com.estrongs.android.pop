package org.apache.commons.net.ftp.parser;

import java.text.DateFormatSymbols;
import java.text.ParseException;
import java.text.ParsePosition;
import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.Date;
import java.util.TimeZone;
import org.apache.commons.net.ftp.Configurable;
import org.apache.commons.net.ftp.FTPClientConfig;

public class FTPTimestampParserImpl
  implements Configurable, FTPTimestampParser
{
  private SimpleDateFormat defaultDateFormat;
  private boolean lenientFutureDates = false;
  private SimpleDateFormat recentDateFormat;
  
  public FTPTimestampParserImpl()
  {
    setDefaultDateFormat("MMM d yyyy");
    setRecentDateFormat("MMM d HH:mm");
  }
  
  private void setDefaultDateFormat(String paramString)
  {
    if (paramString != null)
    {
      defaultDateFormat = new SimpleDateFormat(paramString);
      defaultDateFormat.setLenient(false);
    }
  }
  
  private void setRecentDateFormat(String paramString)
  {
    if (paramString != null)
    {
      recentDateFormat = new SimpleDateFormat(paramString);
      recentDateFormat.setLenient(false);
    }
  }
  
  private void setServerTimeZone(String paramString)
  {
    TimeZone localTimeZone = TimeZone.getDefault();
    if (paramString != null) {
      localTimeZone = TimeZone.getTimeZone(paramString);
    }
    defaultDateFormat.setTimeZone(localTimeZone);
    if (recentDateFormat != null) {
      recentDateFormat.setTimeZone(localTimeZone);
    }
  }
  
  public void configure(FTPClientConfig paramFTPClientConfig)
  {
    Object localObject = paramFTPClientConfig.getServerLanguageCode();
    String str = paramFTPClientConfig.getShortMonthNames();
    if (str != null)
    {
      localObject = FTPClientConfig.getDateFormatSymbols(str);
      str = paramFTPClientConfig.getRecentDateFormatStr();
      if (str != null) {
        break label73;
      }
      recentDateFormat = null;
    }
    for (;;)
    {
      str = paramFTPClientConfig.getDefaultDateFormatStr();
      if (str != null) {
        break label97;
      }
      throw new IllegalArgumentException("defaultFormatString cannot be null");
      if (localObject != null)
      {
        localObject = FTPClientConfig.lookupDateFormatSymbols((String)localObject);
        break;
      }
      localObject = FTPClientConfig.lookupDateFormatSymbols("en");
      break;
      label73:
      recentDateFormat = new SimpleDateFormat(str, (DateFormatSymbols)localObject);
      recentDateFormat.setLenient(false);
    }
    label97:
    defaultDateFormat = new SimpleDateFormat(str, (DateFormatSymbols)localObject);
    defaultDateFormat.setLenient(false);
    setServerTimeZone(paramFTPClientConfig.getServerTimeZoneId());
    lenientFutureDates = paramFTPClientConfig.isLenientFutureDates();
  }
  
  public SimpleDateFormat getDefaultDateFormat()
  {
    return defaultDateFormat;
  }
  
  public String getDefaultDateFormatString()
  {
    return defaultDateFormat.toPattern();
  }
  
  public SimpleDateFormat getRecentDateFormat()
  {
    return recentDateFormat;
  }
  
  public String getRecentDateFormatString()
  {
    return recentDateFormat.toPattern();
  }
  
  public TimeZone getServerTimeZone()
  {
    return defaultDateFormat.getTimeZone();
  }
  
  public String[] getShortMonths()
  {
    return defaultDateFormat.getDateFormatSymbols().getShortMonths();
  }
  
  boolean isLenientFutureDates()
  {
    return lenientFutureDates;
  }
  
  public Calendar parseTimestamp(String paramString)
  {
    return parseTimestamp(paramString, Calendar.getInstance());
  }
  
  public Calendar parseTimestamp(String paramString, Calendar paramCalendar)
  {
    Object localObject2 = (Calendar)paramCalendar.clone();
    ((Calendar)localObject2).setTimeZone(getServerTimeZone());
    Calendar localCalendar = (Calendar)((Calendar)localObject2).clone();
    localCalendar.setTimeZone(getServerTimeZone());
    Object localObject1 = new ParsePosition(0);
    paramCalendar = null;
    if (recentDateFormat != null)
    {
      if (lenientFutureDates) {
        ((Calendar)localObject2).add(5, 1);
      }
      paramCalendar = recentDateFormat.parse(paramString, (ParsePosition)localObject1);
    }
    if ((paramCalendar != null) && (((ParsePosition)localObject1).getIndex() == paramString.length()))
    {
      localCalendar.setTime(paramCalendar);
      localCalendar.set(1, ((Calendar)localObject2).get(1));
      if (localCalendar.after(localObject2)) {
        localCalendar.add(1, -1);
      }
      return localCalendar;
    }
    if (recentDateFormat != null)
    {
      localObject1 = new ParsePosition(0);
      int i = ((Calendar)localObject2).get(1);
      paramCalendar = paramString + " " + i;
      localObject2 = new SimpleDateFormat(recentDateFormat.toPattern() + " yyyy", recentDateFormat.getDateFormatSymbols());
      ((SimpleDateFormat)localObject2).setLenient(false);
      ((SimpleDateFormat)localObject2).setTimeZone(recentDateFormat.getTimeZone());
      paramCalendar = ((SimpleDateFormat)localObject2).parse(paramCalendar, (ParsePosition)localObject1);
    }
    for (;;)
    {
      if ((paramCalendar != null) && (((ParsePosition)localObject1).getIndex() == paramString.length() + 5))
      {
        localCalendar.setTime(paramCalendar);
        return localCalendar;
      }
      paramCalendar = new ParsePosition(0);
      localObject1 = defaultDateFormat.parse(paramString, paramCalendar);
      if ((localObject1 != null) && (paramCalendar.getIndex() == paramString.length()))
      {
        localCalendar.setTime((Date)localObject1);
        return localCalendar;
      }
      throw new ParseException("Timestamp could not be parsed with older or recent DateFormat", paramCalendar.getErrorIndex());
    }
  }
  
  void setLenientFutureDates(boolean paramBoolean)
  {
    lenientFutureDates = paramBoolean;
  }
}

/* Location:
 * Qualified Name:     org.apache.commons.net.ftp.parser.FTPTimestampParserImpl
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */