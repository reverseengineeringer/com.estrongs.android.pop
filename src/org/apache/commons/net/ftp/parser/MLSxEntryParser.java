package org.apache.commons.net.ftp.parser;

import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.GregorianCalendar;
import java.util.HashMap;
import java.util.Locale;
import java.util.TimeZone;
import org.apache.commons.net.ftp.FTPFile;
import org.apache.commons.net.ftp.FTPFileEntryParserImpl;

public class MLSxEntryParser
  extends FTPFileEntryParserImpl
{
  private static final MLSxEntryParser PARSER = new MLSxEntryParser();
  private static final HashMap<String, Integer> TYPE_TO_INT = new HashMap();
  private static int[] UNIX_GROUPS;
  private static int[][] UNIX_PERMS;
  
  static
  {
    TYPE_TO_INT.put("file", Integer.valueOf(0));
    TYPE_TO_INT.put("cdir", Integer.valueOf(1));
    TYPE_TO_INT.put("pdir", Integer.valueOf(1));
    TYPE_TO_INT.put("dir", Integer.valueOf(1));
    int[] arrayOfInt1 = new int[3];
    arrayOfInt1[1] = 1;
    arrayOfInt1[2] = 2;
    UNIX_GROUPS = arrayOfInt1;
    int[] arrayOfInt5 = { 2 };
    int[] arrayOfInt6 = { 1 };
    int[] arrayOfInt7 = { 2, 1 };
    arrayOfInt1 = new int[1];
    int[] arrayOfInt2 = new int[2];
    arrayOfInt2[1] = 2;
    int[] arrayOfInt3 = new int[2];
    arrayOfInt3[1] = 1;
    int[] arrayOfInt4 = new int[3];
    arrayOfInt4[1] = 1;
    arrayOfInt4[2] = 2;
    UNIX_PERMS = new int[][] { new int[0], arrayOfInt5, arrayOfInt6, arrayOfInt7, arrayOfInt1, arrayOfInt2, arrayOfInt3, arrayOfInt4 };
  }
  
  private void doUnixPerms(FTPFile paramFTPFile, String paramString)
  {
    paramString = paramString.toCharArray();
    int j = paramString.length;
    int i = 0;
    if (i >= j) {
      return;
    }
    switch (paramString[i])
    {
    }
    for (;;)
    {
      i += 1;
      break;
      paramFTPFile.setPermission(0, 1, true);
      continue;
      paramFTPFile.setPermission(0, 1, true);
      continue;
      paramFTPFile.setPermission(0, 1, true);
      continue;
      paramFTPFile.setPermission(0, 0, true);
      continue;
      paramFTPFile.setPermission(0, 2, true);
      continue;
      paramFTPFile.setPermission(0, 1, true);
      continue;
      paramFTPFile.setPermission(0, 1, true);
      continue;
      paramFTPFile.setPermission(0, 0, true);
      continue;
      paramFTPFile.setPermission(0, 1, true);
    }
  }
  
  public static MLSxEntryParser getInstance()
  {
    return PARSER;
  }
  
  public static FTPFile parseEntry(String paramString)
  {
    return PARSER.parseFTPEntry(paramString);
  }
  
  public FTPFile parseFTPEntry(String paramString)
  {
    Object localObject1 = paramString.split(" ", 2);
    if (localObject1.length != 2) {
      return null;
    }
    FTPFile localFTPFile = new FTPFile();
    localFTPFile.setRawListing(paramString);
    localFTPFile.setName(localObject1[1]);
    String[] arrayOfString = localObject1[0].split(";");
    boolean bool = localObject1[0].toLowerCase(Locale.ENGLISH).contains("unix.mode=");
    int m = arrayOfString.length;
    int i = 0;
    if (i >= m) {
      return localFTPFile;
    }
    localObject1 = arrayOfString[i].split("=");
    if (localObject1.length != 2) {}
    for (;;)
    {
      i += 1;
      break;
      paramString = localObject1[0].toLowerCase(Locale.ENGLISH);
      localObject1 = localObject1[1];
      Object localObject2 = ((String)localObject1).toLowerCase(Locale.ENGLISH);
      if ("size".equals(paramString))
      {
        localFTPFile.setSize(Long.parseLong((String)localObject1));
        continue;
      }
      if ("sizd".equals(paramString))
      {
        localFTPFile.setSize(Long.parseLong((String)localObject1));
        continue;
      }
      if ("modify".equals(paramString)) {
        if (((String)localObject1).contains("."))
        {
          paramString = new SimpleDateFormat("yyyyMMddHHmmss.SSS");
          label211:
          localObject2 = TimeZone.getTimeZone("GMT");
          paramString.setTimeZone((TimeZone)localObject2);
          localObject2 = new GregorianCalendar((TimeZone)localObject2);
        }
      }
      try
      {
        ((GregorianCalendar)localObject2).setTime(paramString.parse((String)localObject1));
        localFTPFile.setTimestamp((Calendar)localObject2);
        continue;
        paramString = new SimpleDateFormat("yyyyMMddHHmmss");
        break label211;
        if ("type".equals(paramString))
        {
          paramString = (Integer)TYPE_TO_INT.get(localObject2);
          if (paramString == null)
          {
            localFTPFile.setType(3);
            continue;
          }
          localFTPFile.setType(paramString.intValue());
          continue;
        }
        if (paramString.startsWith("unix."))
        {
          paramString = paramString.substring("unix.".length()).toLowerCase(Locale.ENGLISH);
          if ("group".equals(paramString))
          {
            localFTPFile.setGroup((String)localObject1);
            continue;
          }
          if ("owner".equals(paramString))
          {
            localFTPFile.setUser((String)localObject1);
            continue;
          }
          if (!"mode".equals(paramString)) {
            continue;
          }
          int n = ((String)localObject1).length();
          int j = 0;
          if (j >= 3) {
            continue;
          }
          int k = ((String)localObject1).charAt(n - 3 + j) - '0';
          int i1;
          if ((k >= 0) && (k <= 7))
          {
            paramString = UNIX_PERMS[k];
            i1 = paramString.length;
            k = 0;
          }
          for (;;)
          {
            if (k >= i1)
            {
              j += 1;
              break;
            }
            int i2 = paramString[k];
            localFTPFile.setPermission(UNIX_GROUPS[j], i2, true);
            k += 1;
          }
        }
        if ((bool) || (!"perm".equals(paramString))) {
          continue;
        }
        doUnixPerms(localFTPFile, (String)localObject2);
      }
      catch (ParseException paramString)
      {
        for (;;) {}
      }
    }
  }
}

/* Location:
 * Qualified Name:     org.apache.commons.net.ftp.parser.MLSxEntryParser
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */