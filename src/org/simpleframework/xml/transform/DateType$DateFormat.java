package org.simpleframework.xml.transform;

import java.text.SimpleDateFormat;
import java.util.Date;

class DateType$DateFormat
{
  private SimpleDateFormat format;
  
  public DateType$DateFormat(String paramString)
  {
    format = new SimpleDateFormat(paramString);
  }
  
  public Date getDate(String paramString)
  {
    try
    {
      paramString = format.parse(paramString);
      return paramString;
    }
    finally
    {
      paramString = finally;
      throw paramString;
    }
  }
  
  public String getText(Date paramDate)
  {
    try
    {
      paramDate = format.format(paramDate);
      return paramDate;
    }
    finally
    {
      paramDate = finally;
      throw paramDate;
    }
  }
}

/* Location:
 * Qualified Name:     org.simpleframework.xml.transform.DateType.DateFormat
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */