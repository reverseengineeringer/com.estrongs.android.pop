package com.dropbox.client2.jsonextract;

import java.util.Iterator;
import java.util.Map;
import java.util.Map.Entry;
import java.util.Set;

public final class JsonMap
  extends JsonBase<Map<String, Object>>
  implements Iterable<Map.Entry<String, JsonThing>>
{
  public JsonMap(Map<String, Object> paramMap)
  {
    super(paramMap);
  }
  
  public JsonMap(Map<String, Object> paramMap, String paramString)
  {
    super(paramMap, paramString);
  }
  
  private static boolean isEnglishDigit(char paramChar)
  {
    return (paramChar >= '0') && (paramChar <= '9');
  }
  
  private static boolean isEnglishLetter(char paramChar)
  {
    return ((paramChar >= 'A') && (paramChar <= 'Z')) || ((paramChar >= 'a') && (paramChar <= 'z'));
  }
  
  private static boolean isIdentLike(String paramString)
  {
    boolean bool2 = true;
    boolean bool1;
    if (paramString.length() == 0)
    {
      bool1 = false;
      return bool1;
    }
    if (!isEnglishLetter(paramString.charAt(0))) {
      return false;
    }
    int i = 1;
    for (;;)
    {
      bool1 = bool2;
      if (i >= paramString.length()) {
        break;
      }
      char c = paramString.charAt(i);
      if ((!isEnglishLetter(c)) && (!isEnglishDigit(c))) {
        return false;
      }
      i += 1;
    }
  }
  
  private static String pathConcatField(String paramString1, String paramString2)
  {
    String str = paramString2;
    if (!isIdentLike(paramString2)) {
      str = '"' + paramString2 + '"';
    }
    return JsonThing.pathConcat(paramString1, str);
  }
  
  public JsonThing get(String paramString)
  {
    if (!((Map)internal).containsKey(paramString)) {
      throw error("expecting object to have field \"" + paramString + "\", but it does not");
    }
    return new JsonThing(((Map)internal).get(paramString), pathConcatField(path, paramString));
  }
  
  public JsonThing getOrNull(String paramString)
  {
    if (!((Map)internal).containsKey(paramString)) {
      return null;
    }
    return new JsonThing(((Map)internal).get(paramString), pathConcatField(path, paramString));
  }
  
  public Iterator<Map.Entry<String, JsonThing>> iterator()
  {
    return new JsonMap.WrapperIterator(path, ((Map)internal).entrySet().iterator(), null);
  }
}

/* Location:
 * Qualified Name:     com.dropbox.client2.jsonextract.JsonMap
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */