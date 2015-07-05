package org.apache.tika.metadata;

import java.util.Map;
import java.util.Set;

public class Metadata
{
  public static String CONTENT_TYPE = "Content-Type";
  private Map<String, String[]> metadata = null;
  
  private String[] _getValues(String paramString)
  {
    String[] arrayOfString = (String[])metadata.get(paramString);
    paramString = arrayOfString;
    if (arrayOfString == null) {
      paramString = new String[0];
    }
    return paramString;
  }
  
  private String[] appendedValues(String[] paramArrayOfString, String paramString)
  {
    String[] arrayOfString = new String[paramArrayOfString.length + 1];
    System.arraycopy(paramArrayOfString, 0, arrayOfString, 0, paramArrayOfString.length);
    arrayOfString[(arrayOfString.length - 1)] = paramString;
    return arrayOfString;
  }
  
  public void add(String paramString1, String paramString2)
  {
    String[] arrayOfString = (String[])metadata.get(paramString1);
    if (arrayOfString == null)
    {
      set(paramString1, paramString2);
      return;
    }
    metadata.put(paramString1, appendedValues(arrayOfString, paramString2));
  }
  
  public String get(String paramString)
  {
    paramString = (String[])metadata.get(paramString);
    if (paramString == null) {
      return null;
    }
    return paramString[0];
  }
  
  public String[] getValues(String paramString)
  {
    return _getValues(paramString);
  }
  
  public String[] names()
  {
    return (String[])metadata.keySet().toArray(new String[metadata.keySet().size()]);
  }
  
  public void set(String paramString1, String paramString2)
  {
    if (paramString2 != null)
    {
      metadata.put(paramString1, new String[] { paramString2 });
      return;
    }
    metadata.remove(paramString1);
  }
}

/* Location:
 * Qualified Name:     org.apache.tika.metadata.Metadata
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */