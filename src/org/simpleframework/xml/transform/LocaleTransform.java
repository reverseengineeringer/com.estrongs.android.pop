package org.simpleframework.xml.transform;

import java.util.Locale;
import java.util.regex.Pattern;

class LocaleTransform
  implements Transform<Locale>
{
  private final Pattern pattern = Pattern.compile("_");
  
  private Locale read(String[] paramArrayOfString)
  {
    String[] arrayOfString = new String[3];
    arrayOfString[0] = "";
    arrayOfString[1] = "";
    arrayOfString[2] = "";
    int i = 0;
    for (;;)
    {
      if (i >= arrayOfString.length) {
        return new Locale(arrayOfString[0], arrayOfString[1], arrayOfString[2]);
      }
      if (i < paramArrayOfString.length) {
        arrayOfString[i] = paramArrayOfString[i];
      }
      i += 1;
    }
  }
  
  public Locale read(String paramString)
  {
    String[] arrayOfString = pattern.split(paramString);
    if (arrayOfString.length < 1) {
      throw new InvalidFormatException("Invalid locale %s", new Object[] { paramString });
    }
    return read(arrayOfString);
  }
  
  public String write(Locale paramLocale)
  {
    return paramLocale.toString();
  }
}

/* Location:
 * Qualified Name:     org.simpleframework.xml.transform.LocaleTransform
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */