package org.simpleframework.xml.stream;

import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.Set;

class PrefixResolver
  extends LinkedHashMap<String, String>
  implements NamespaceMap
{
  private final OutputNode source;
  
  public PrefixResolver(OutputNode paramOutputNode)
  {
    source = paramOutputNode;
  }
  
  private String resolvePrefix(String paramString)
  {
    NamespaceMap localNamespaceMap = source.getNamespaces();
    if (localNamespaceMap != null)
    {
      paramString = localNamespaceMap.getPrefix(paramString);
      if (!containsValue(paramString)) {
        return paramString;
      }
    }
    return null;
  }
  
  private String resolveReference(String paramString)
  {
    NamespaceMap localNamespaceMap = source.getNamespaces();
    if (localNamespaceMap != null) {
      return localNamespaceMap.getReference(paramString);
    }
    return null;
  }
  
  public String getPrefix()
  {
    return source.getPrefix();
  }
  
  public String getPrefix(String paramString)
  {
    if (size() > 0)
    {
      String str = (String)get(paramString);
      if (str != null) {
        return str;
      }
    }
    return resolvePrefix(paramString);
  }
  
  public String getReference(String paramString)
  {
    Iterator localIterator;
    if (containsValue(paramString)) {
      localIterator = iterator();
    }
    String str1;
    String str2;
    do
    {
      if (!localIterator.hasNext()) {
        return resolveReference(paramString);
      }
      str1 = (String)localIterator.next();
      str2 = (String)get(str1);
    } while ((str2 == null) || (!str2.equals(paramString)));
    return str1;
  }
  
  public Iterator<String> iterator()
  {
    return keySet().iterator();
  }
  
  public String setReference(String paramString)
  {
    return setReference(paramString, "");
  }
  
  public String setReference(String paramString1, String paramString2)
  {
    if (resolvePrefix(paramString1) != null) {
      return null;
    }
    return (String)put(paramString1, paramString2);
  }
}

/* Location:
 * Qualified Name:     org.simpleframework.xml.stream.PrefixResolver
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */