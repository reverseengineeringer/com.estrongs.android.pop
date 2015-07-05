package org.apache.commons.net.ftp.parser;

import java.util.Calendar;

public abstract interface FTPTimestampParser
{
  public static final String DEFAULT_RECENT_SDF = "MMM d HH:mm";
  public static final String DEFAULT_SDF = "MMM d yyyy";
  
  public abstract Calendar parseTimestamp(String paramString);
}

/* Location:
 * Qualified Name:     org.apache.commons.net.ftp.parser.FTPTimestampParser
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */