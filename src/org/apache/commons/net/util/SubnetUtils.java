package org.apache.commons.net.util;

import java.util.regex.Matcher;
import java.util.regex.Pattern;

public class SubnetUtils
{
  private static final String IP_ADDRESS = "(\\d{1,3})\\.(\\d{1,3})\\.(\\d{1,3})\\.(\\d{1,3})";
  private static final int NBITS = 32;
  private static final String SLASH_FORMAT = "(\\d{1,3})\\.(\\d{1,3})\\.(\\d{1,3})\\.(\\d{1,3})/(\\d{1,3})";
  private static final Pattern addressPattern = Pattern.compile("(\\d{1,3})\\.(\\d{1,3})\\.(\\d{1,3})\\.(\\d{1,3})");
  private static final Pattern cidrPattern = Pattern.compile("(\\d{1,3})\\.(\\d{1,3})\\.(\\d{1,3})\\.(\\d{1,3})/(\\d{1,3})");
  private int address = 0;
  private int broadcast = 0;
  private boolean inclusiveHostCount = false;
  private int netmask = 0;
  private int network = 0;
  
  public SubnetUtils(String paramString)
  {
    calculate(paramString);
  }
  
  public SubnetUtils(String paramString1, String paramString2)
  {
    calculate(toCidrNotation(paramString1, paramString2));
  }
  
  private void calculate(String paramString)
  {
    int i = 0;
    Matcher localMatcher = cidrPattern.matcher(paramString);
    if (localMatcher.matches())
    {
      address = matchAddress(localMatcher);
      int j = rangeCheck(Integer.parseInt(localMatcher.group(5)), 0, 32);
      for (;;)
      {
        if (i >= j)
        {
          network = (address & netmask);
          broadcast = (network | netmask ^ 0xFFFFFFFF);
          return;
        }
        netmask |= 1 << 31 - i;
        i += 1;
      }
    }
    throw new IllegalArgumentException("Could not parse [" + paramString + "]");
  }
  
  private String format(int[] paramArrayOfInt)
  {
    StringBuilder localStringBuilder = new StringBuilder();
    int i = 0;
    for (;;)
    {
      if (i >= paramArrayOfInt.length) {
        return localStringBuilder.toString();
      }
      localStringBuilder.append(paramArrayOfInt[i]);
      if (i != paramArrayOfInt.length - 1) {
        localStringBuilder.append(".");
      }
      i += 1;
    }
  }
  
  private int matchAddress(Matcher paramMatcher)
  {
    int j = 0;
    int i = 1;
    for (;;)
    {
      if (i > 4) {
        return j;
      }
      j |= (rangeCheck(Integer.parseInt(paramMatcher.group(i)), -1, 255) & 0xFF) << (4 - i) * 8;
      i += 1;
    }
  }
  
  private int rangeCheck(int paramInt1, int paramInt2, int paramInt3)
  {
    if ((paramInt1 > paramInt2) && (paramInt1 <= paramInt3)) {
      return paramInt1;
    }
    throw new IllegalArgumentException("Value [" + paramInt1 + "] not in range (" + paramInt2 + "," + paramInt3 + "]");
  }
  
  private int[] toArray(int paramInt)
  {
    int[] arrayOfInt = new int[4];
    int i = 3;
    for (;;)
    {
      if (i < 0) {
        return arrayOfInt;
      }
      arrayOfInt[i] |= paramInt >>> (3 - i) * 8 & 0xFF;
      i -= 1;
    }
  }
  
  private String toCidrNotation(String paramString1, String paramString2)
  {
    return paramString1 + "/" + pop(toInteger(paramString2));
  }
  
  private int toInteger(String paramString)
  {
    Matcher localMatcher = addressPattern.matcher(paramString);
    if (localMatcher.matches()) {
      return matchAddress(localMatcher);
    }
    throw new IllegalArgumentException("Could not parse [" + paramString + "]");
  }
  
  public final SubnetUtils.SubnetInfo getInfo()
  {
    return new SubnetUtils.SubnetInfo(this, null);
  }
  
  public boolean isInclusiveHostCount()
  {
    return inclusiveHostCount;
  }
  
  int pop(int paramInt)
  {
    paramInt -= (paramInt >>> 1 & 0x55555555);
    paramInt = (paramInt >>> 2 & 0x33333333) + (paramInt & 0x33333333);
    paramInt = paramInt + (paramInt >>> 4) & 0xF0F0F0F;
    paramInt += (paramInt >>> 8);
    return paramInt + (paramInt >>> 16) & 0x3F;
  }
  
  public void setInclusiveHostCount(boolean paramBoolean)
  {
    inclusiveHostCount = paramBoolean;
  }
}

/* Location:
 * Qualified Name:     org.apache.commons.net.util.SubnetUtils
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */