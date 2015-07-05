package org.apache.commons.net.ftp.parser;

import java.util.Calendar;
import org.apache.commons.net.ftp.FTPFile;

public class EnterpriseUnixFTPEntryParser
  extends RegexFTPFileEntryParserImpl
{
  private static final String MONTHS = "(Jan|Feb|Mar|Apr|May|Jun|Jul|Aug|Sep|Oct|Nov|Dec)";
  private static final String REGEX = "(([\\-]|[A-Z])([\\-]|[A-Z])([\\-]|[A-Z])([\\-]|[A-Z])([\\-]|[A-Z])([\\-]|[A-Z])([\\-]|[A-Z])([\\-]|[A-Z])([\\-]|[A-Z])([\\-]|[A-Z]))(\\S*)\\s*(\\S+)\\s*(\\S*)\\s*(\\d*)\\s*(\\d*)\\s*(Jan|Feb|Mar|Apr|May|Jun|Jul|Aug|Sep|Oct|Nov|Dec)\\s*((?:[012]\\d*)|(?:3[01]))\\s*((\\d\\d\\d\\d)|((?:[01]\\d)|(?:2[0123])):([012345]\\d))\\s(\\S*)(\\s*.*)";
  
  public EnterpriseUnixFTPEntryParser()
  {
    super("(([\\-]|[A-Z])([\\-]|[A-Z])([\\-]|[A-Z])([\\-]|[A-Z])([\\-]|[A-Z])([\\-]|[A-Z])([\\-]|[A-Z])([\\-]|[A-Z])([\\-]|[A-Z])([\\-]|[A-Z]))(\\S*)\\s*(\\S+)\\s*(\\S*)\\s*(\\d*)\\s*(\\d*)\\s*(Jan|Feb|Mar|Apr|May|Jun|Jul|Aug|Sep|Oct|Nov|Dec)\\s*((?:[012]\\d*)|(?:3[01]))\\s*((\\d\\d\\d\\d)|((?:[01]\\d)|(?:2[0123])):([012345]\\d))\\s(\\S*)(\\s*.*)");
  }
  
  public FTPFile parseFTPEntry(String paramString)
  {
    FTPFile localFTPFile = new FTPFile();
    localFTPFile.setRawListing(paramString);
    Object localObject;
    String str7;
    String str1;
    String str2;
    String str3;
    String str4;
    String str5;
    if (matches(paramString))
    {
      localObject = group(14);
      String str6 = group(15);
      str7 = group(16);
      str1 = group(17);
      str2 = group(18);
      str3 = group(20);
      str4 = group(21);
      str5 = group(22);
      paramString = group(23);
      localFTPFile.setType(0);
      localFTPFile.setUser((String)localObject);
      localFTPFile.setGroup(str6);
    }
    try
    {
      localFTPFile.setSize(Long.parseLong(str7));
      localObject = Calendar.getInstance();
      ((Calendar)localObject).set(14, 0);
      ((Calendar)localObject).set(13, 0);
      ((Calendar)localObject).set(12, 0);
      ((Calendar)localObject).set(11, 0);
      for (;;)
      {
        try
        {
          k = "(Jan|Feb|Mar|Apr|May|Jun|Jul|Aug|Sep|Oct|Nov|Dec)".indexOf(str1) / 4;
          if (str3 == null) {
            continue;
          }
          ((Calendar)localObject).set(1, Integer.parseInt(str3));
          ((Calendar)localObject).set(2, k);
          ((Calendar)localObject).set(5, Integer.parseInt(str2));
          localFTPFile.setTimestamp((Calendar)localObject);
        }
        catch (NumberFormatException localNumberFormatException1)
        {
          int k;
          int j;
          int i;
          continue;
        }
        localFTPFile.setName(paramString);
        return localFTPFile;
        j = ((Calendar)localObject).get(1);
        i = j;
        if (((Calendar)localObject).get(2) < k) {
          i = j - 1;
        }
        ((Calendar)localObject).set(1, i);
        ((Calendar)localObject).set(11, Integer.parseInt(str4));
        ((Calendar)localObject).set(12, Integer.parseInt(str5));
      }
      return null;
    }
    catch (NumberFormatException localNumberFormatException2)
    {
      for (;;) {}
    }
  }
}

/* Location:
 * Qualified Name:     org.apache.commons.net.ftp.parser.EnterpriseUnixFTPEntryParser
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */