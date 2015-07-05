package org.apache.commons.net.ftp.parser;

import java.text.ParseException;
import java.util.List;
import java.util.ListIterator;
import org.apache.commons.net.ftp.FTPClientConfig;
import org.apache.commons.net.ftp.FTPFile;

public class UnixFTPEntryParser
  extends ConfigurableFTPFileEntryParserImpl
{
  static final String DEFAULT_DATE_FORMAT = "MMM d yyyy";
  static final String DEFAULT_RECENT_DATE_FORMAT = "MMM d HH:mm";
  public static final FTPClientConfig NUMERIC_DATE_CONFIG = new FTPClientConfig("UNIX", "yyyy-MM-dd HH:mm", null, null, null, null);
  static final String NUMERIC_DATE_FORMAT = "yyyy-MM-dd HH:mm";
  private static final String REGEX = "([bcdelfmpSs-])(((r|-)(w|-)([xsStTL-]))((r|-)(w|-)([xsStTL-]))((r|-)(w|-)([xsStTL-])))\\+?\\s*(\\d+)\\s+(?:(\\S+(?:\\s\\S+)*?)\\s+)?(?:(\\S+(?:\\s\\S+)*)\\s+)?(\\d+(?:,\\s*\\d+)?)\\s+((?:\\d+[-/]\\d+[-/]\\d+)|(?:\\S{3}\\s+\\d{1,2})|(?:\\d{1,2}\\s+\\S{3}))\\s+(\\d+(?::\\d+)?)\\s+(\\S*)(\\s*.*)";
  
  public UnixFTPEntryParser()
  {
    this(null);
  }
  
  public UnixFTPEntryParser(FTPClientConfig paramFTPClientConfig)
  {
    super("([bcdelfmpSs-])(((r|-)(w|-)([xsStTL-]))((r|-)(w|-)([xsStTL-]))((r|-)(w|-)([xsStTL-])))\\+?\\s*(\\d+)\\s+(?:(\\S+(?:\\s\\S+)*?)\\s+)?(?:(\\S+(?:\\s\\S+)*)\\s+)?(\\d+(?:,\\s*\\d+)?)\\s+((?:\\d+[-/]\\d+[-/]\\d+)|(?:\\S{3}\\s+\\d{1,2})|(?:\\d{1,2}\\s+\\S{3}))\\s+(\\d+(?::\\d+)?)\\s+(\\S*)(\\s*.*)");
    configure(paramFTPClientConfig);
  }
  
  protected FTPClientConfig getDefaultConfiguration()
  {
    return new FTPClientConfig("UNIX", "MMM d yyyy", "MMM d HH:mm", null, null, null);
  }
  
  public FTPFile parseFTPEntry(String paramString)
  {
    FTPFile localFTPFile = new FTPFile();
    localFTPFile.setRawListing(paramString);
    int i = 0;
    int j = 0;
    String str6;
    String str5;
    String str2;
    String str3;
    String str4;
    String str7;
    String str1;
    if (matches(paramString))
    {
      str6 = group(1);
      str5 = group(15);
      str2 = group(16);
      str3 = group(17);
      str4 = group(18);
      str7 = group(19) + " " + group(20);
      paramString = group(21);
      str1 = group(22);
    }
    try
    {
      localFTPFile.setTimestamp(super.parseTimestamp(str7));
      switch (str6.charAt(0))
      {
      default: 
        i = 3;
      }
      for (;;)
      {
        localFTPFile.setType(i);
        int m = 4;
        int k = 0;
        if ((k < 3) || (j == 0)) {}
        try
        {
          localFTPFile.setHardLinkCount(Integer.parseInt(str5));
          localFTPFile.setUser(str2);
          localFTPFile.setGroup(str3);
          try
          {
            localFTPFile.setSize(Long.parseLong(str4));
            if (str1 == null) {
              localFTPFile.setName(paramString);
            }
            for (;;)
            {
              return localFTPFile;
              i = 1;
              break;
              i = 2;
              break;
              i = 2;
              break;
              i = 1;
              k = 0;
              j = i;
              i = k;
              break;
              boolean bool;
              if (group(m).equals("-"))
              {
                bool = false;
                label317:
                localFTPFile.setPermission(k, 0, bool);
                if (!group(m + 1).equals("-")) {
                  break label418;
                }
                bool = false;
                label346:
                localFTPFile.setPermission(k, 1, bool);
                str6 = group(m + 2);
                if ((str6.equals("-")) || (Character.isUpperCase(str6.charAt(0)))) {
                  break label424;
                }
                localFTPFile.setPermission(k, 2, true);
              }
              for (;;)
              {
                m += 4;
                k += 1;
                break;
                bool = true;
                break label317;
                label418:
                bool = true;
                break label346;
                label424:
                localFTPFile.setPermission(k, 2, false);
              }
              paramString = paramString + str1;
              if (i == 2)
              {
                i = paramString.indexOf(" -> ");
                if (i == -1)
                {
                  localFTPFile.setName(paramString);
                }
                else
                {
                  localFTPFile.setName(paramString.substring(0, i));
                  localFTPFile.setLink(paramString.substring(i + 4));
                }
              }
              else
              {
                localFTPFile.setName(paramString);
              }
            }
            return null;
          }
          catch (NumberFormatException localNumberFormatException1)
          {
            for (;;) {}
          }
        }
        catch (NumberFormatException localNumberFormatException2)
        {
          for (;;) {}
        }
      }
    }
    catch (ParseException localParseException)
    {
      for (;;) {}
    }
  }
  
  public List<String> preParse(List<String> paramList)
  {
    ListIterator localListIterator = paramList.listIterator();
    for (;;)
    {
      if (!localListIterator.hasNext()) {
        return paramList;
      }
      if (((String)localListIterator.next()).matches("^total \\d+$")) {
        localListIterator.remove();
      }
    }
  }
}

/* Location:
 * Qualified Name:     org.apache.commons.net.ftp.parser.UnixFTPEntryParser
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */