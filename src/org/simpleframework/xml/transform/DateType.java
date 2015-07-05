package org.simpleframework.xml.transform;

import java.util.Date;

 enum DateType
{
  FULL("yyyy-MM-dd HH:mm:ss.S z"),  LONG("yyyy-MM-dd HH:mm:ss z"),  NORMAL("yyyy-MM-dd z"),  SHORT("yyyy-MM-dd");
  
  private DateType.DateFormat format;
  
  private DateType(String paramString1)
  {
    format = new DateType.DateFormat(paramString1);
  }
  
  public static Date getDate(String paramString)
  {
    return getType(paramString).getFormat().getDate(paramString);
  }
  
  private DateType.DateFormat getFormat()
  {
    return format;
  }
  
  public static String getText(Date paramDate)
  {
    return FULL.getFormat().getText(paramDate);
  }
  
  public static DateType getType(String paramString)
  {
    int i = paramString.length();
    if (i > 23) {
      return FULL;
    }
    if (i > 20) {
      return LONG;
    }
    if (i > 11) {
      return NORMAL;
    }
    return SHORT;
  }
}

/* Location:
 * Qualified Name:     org.simpleframework.xml.transform.DateType
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */