package org.apache.commons.net.ftp;

import java.io.Serializable;
import java.lang.reflect.Array;
import java.util.Calendar;
import java.util.Formatter;

public class FTPFile
  implements Serializable
{
  public static final int DIRECTORY_TYPE = 1;
  public static final int EXECUTE_PERMISSION = 2;
  public static final int FILE_TYPE = 0;
  public static final int GROUP_ACCESS = 1;
  public static final int READ_PERMISSION = 0;
  public static final int SYMBOLIC_LINK_TYPE = 2;
  public static final int UNKNOWN_TYPE = 3;
  public static final int USER_ACCESS = 0;
  public static final int WORLD_ACCESS = 2;
  public static final int WRITE_PERMISSION = 1;
  private static final long serialVersionUID = 9010790363003271996L;
  private Calendar _date = null;
  private String _group = "";
  private int _hardLinkCount = 0;
  private String _link;
  private String _name = null;
  private boolean[][] _permissions = (boolean[][])Array.newInstance(Boolean.TYPE, new int[] { 3, 3 });
  private String _rawListing = null;
  private long _size = -1L;
  private int _type = 3;
  private String _user = "";
  
  private char formatType()
  {
    switch (_type)
    {
    default: 
      return '?';
    case 0: 
      return '-';
    case 1: 
      return 'd';
    }
    return 'l';
  }
  
  private String permissionToString(int paramInt)
  {
    StringBuilder localStringBuilder = new StringBuilder();
    if (hasPermission(paramInt, 0))
    {
      localStringBuilder.append('r');
      if (!hasPermission(paramInt, 1)) {
        break label71;
      }
      localStringBuilder.append('w');
      label40:
      if (!hasPermission(paramInt, 2)) {
        break label81;
      }
      localStringBuilder.append('x');
    }
    for (;;)
    {
      return localStringBuilder.toString();
      localStringBuilder.append('-');
      break;
      label71:
      localStringBuilder.append('-');
      break label40;
      label81:
      localStringBuilder.append('-');
    }
  }
  
  public String getGroup()
  {
    return _group;
  }
  
  public int getHardLinkCount()
  {
    return _hardLinkCount;
  }
  
  public String getLink()
  {
    return _link;
  }
  
  public String getName()
  {
    return _name;
  }
  
  public String getRawListing()
  {
    return _rawListing;
  }
  
  public long getSize()
  {
    return _size;
  }
  
  public Calendar getTimestamp()
  {
    return _date;
  }
  
  public int getType()
  {
    return _type;
  }
  
  public String getUser()
  {
    return _user;
  }
  
  public boolean hasPermission(int paramInt1, int paramInt2)
  {
    return _permissions[paramInt1][paramInt2];
  }
  
  public boolean isDirectory()
  {
    return _type == 1;
  }
  
  public boolean isFile()
  {
    return _type == 0;
  }
  
  public boolean isSymbolicLink()
  {
    return _type == 2;
  }
  
  public boolean isUnknown()
  {
    return _type == 3;
  }
  
  public void setGroup(String paramString)
  {
    _group = paramString;
  }
  
  public void setHardLinkCount(int paramInt)
  {
    _hardLinkCount = paramInt;
  }
  
  public void setLink(String paramString)
  {
    _link = paramString;
  }
  
  public void setName(String paramString)
  {
    _name = paramString;
  }
  
  public void setPermission(int paramInt1, int paramInt2, boolean paramBoolean)
  {
    _permissions[paramInt1][paramInt2] = paramBoolean;
  }
  
  public void setRawListing(String paramString)
  {
    _rawListing = paramString;
  }
  
  public void setSize(long paramLong)
  {
    _size = paramLong;
  }
  
  public void setTimestamp(Calendar paramCalendar)
  {
    _date = paramCalendar;
  }
  
  public void setType(int paramInt)
  {
    _type = paramInt;
  }
  
  public void setUser(String paramString)
  {
    _user = paramString;
  }
  
  public String toFormattedString()
  {
    StringBuilder localStringBuilder = new StringBuilder();
    Formatter localFormatter = new Formatter(localStringBuilder);
    localStringBuilder.append(formatType());
    localStringBuilder.append(permissionToString(0));
    localStringBuilder.append(permissionToString(1));
    localStringBuilder.append(permissionToString(2));
    localFormatter.format(" %4d", new Object[] { Integer.valueOf(getHardLinkCount()) });
    localFormatter.format(" %-8s %-8s", new Object[] { getGroup(), getUser() });
    localFormatter.format(" %8d", new Object[] { Long.valueOf(getSize()) });
    Calendar localCalendar = getTimestamp();
    if (localCalendar != null)
    {
      localFormatter.format(" %1$tY-%1$tm-%1$td %1$tH:%1$tM:%1$tS", new Object[] { localCalendar });
      localFormatter.format(" %1$tZ", new Object[] { localCalendar });
      localStringBuilder.append(' ');
    }
    localStringBuilder.append(' ');
    localStringBuilder.append(getName());
    return localStringBuilder.toString();
  }
  
  public String toString()
  {
    return getRawListing();
  }
}

/* Location:
 * Qualified Name:     org.apache.commons.net.ftp.FTPFile
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */