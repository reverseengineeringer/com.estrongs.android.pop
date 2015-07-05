package org.simpleframework.xml.transform;

import java.util.TimeZone;

class TimeZoneTransform
  implements Transform<TimeZone>
{
  public TimeZone read(String paramString)
  {
    return TimeZone.getTimeZone(paramString);
  }
  
  public String write(TimeZone paramTimeZone)
  {
    return paramTimeZone.getID();
  }
}

/* Location:
 * Qualified Name:     org.simpleframework.xml.transform.TimeZoneTransform
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */