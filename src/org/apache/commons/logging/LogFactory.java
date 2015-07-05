package org.apache.commons.logging;

public class LogFactory
{
  public static Log getLog(Class paramClass)
  {
    return new LogFactory.Logger(null);
  }
  
  public static Log getLog(String paramString)
  {
    return new LogFactory.Logger(null);
  }
}

/* Location:
 * Qualified Name:     org.apache.commons.logging.LogFactory
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */