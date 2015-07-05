package org.simpleframework.xml.transform;

import java.util.Date;
import java.util.GregorianCalendar;

class GregorianCalendarTransform
  implements Transform<GregorianCalendar>
{
  private final DateTransform transform;
  
  public GregorianCalendarTransform()
  {
    this(Date.class);
  }
  
  public GregorianCalendarTransform(Class paramClass)
  {
    transform = new DateTransform(paramClass);
  }
  
  private GregorianCalendar read(Date paramDate)
  {
    GregorianCalendar localGregorianCalendar = new GregorianCalendar();
    if (paramDate != null) {
      localGregorianCalendar.setTime(paramDate);
    }
    return localGregorianCalendar;
  }
  
  public GregorianCalendar read(String paramString)
  {
    return read(transform.read(paramString));
  }
  
  public String write(GregorianCalendar paramGregorianCalendar)
  {
    return transform.write(paramGregorianCalendar.getTime());
  }
}

/* Location:
 * Qualified Name:     org.simpleframework.xml.transform.GregorianCalendarTransform
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */