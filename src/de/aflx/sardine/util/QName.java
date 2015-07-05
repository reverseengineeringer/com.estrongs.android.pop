package de.aflx.sardine.util;

import java.io.Serializable;
import java.security.AccessController;

public class QName
  implements Serializable
{
  private static final long compatibleSerialVersionUID = 4418622981026545151L;
  private static final long defaultSerialVersionUID = -9120448754896609940L;
  private static final long serialVersionUID;
  private static boolean useDefaultSerialVersionUID = true;
  private final String localPart;
  private final String namespaceURI;
  private final String prefix;
  
  static
  {
    for (;;)
    {
      try
      {
        String str = (String)AccessController.doPrivileged(new QName.1());
        if ((str == null) || (!str.equals("1.0"))) {
          continue;
        }
        bool = false;
        useDefaultSerialVersionUID = bool;
      }
      catch (Exception localException)
      {
        boolean bool;
        useDefaultSerialVersionUID = true;
        continue;
        serialVersionUID = 4418622981026545151L;
      }
      if (!useDefaultSerialVersionUID) {
        continue;
      }
      serialVersionUID = -9120448754896609940L;
      return;
      bool = true;
    }
  }
  
  public QName(String paramString)
  {
    this("", paramString, "");
  }
  
  public QName(String paramString1, String paramString2)
  {
    this(paramString1, paramString2, "");
  }
  
  public QName(String paramString1, String paramString2, String paramString3)
  {
    if (paramString1 == null) {}
    for (namespaceURI = ""; paramString2 == null; namespaceURI = paramString1) {
      throw new IllegalArgumentException("local part cannot be \"null\" when creating a QName");
    }
    localPart = paramString2;
    if (paramString3 == null) {
      throw new IllegalArgumentException("prefix cannot be \"null\" when creating a QName");
    }
    prefix = paramString3;
  }
  
  public static QName valueOf(String paramString)
  {
    if (paramString == null) {
      throw new IllegalArgumentException("cannot create QName from \"null\" or \"\" String");
    }
    if (paramString.length() == 0) {
      return new QName("", paramString, "");
    }
    if (paramString.charAt(0) != '{') {
      return new QName("", paramString, "");
    }
    if (paramString.startsWith("{}")) {
      throw new IllegalArgumentException("Namespace URI .equals(XMLConstants.NULL_NS_URI), .equals(\"\"), only the local part, \"" + paramString.substring("".length() + 2) + "\", " + "should be provided.");
    }
    int i = paramString.indexOf('}');
    if (i == -1) {
      throw new IllegalArgumentException("cannot create QName from \"" + paramString + "\", missing closing \"}\"");
    }
    return new QName(paramString.substring(1, i), paramString.substring(i + 1), "");
  }
  
  public final boolean equals(Object paramObject)
  {
    if ((paramObject == null) || (!(paramObject instanceof QName))) {}
    do
    {
      return false;
      paramObject = (QName)paramObject;
    } while ((!namespaceURI.equals(namespaceURI)) || (!localPart.equals(localPart)));
    return true;
  }
  
  public String getLocalPart()
  {
    return localPart;
  }
  
  public String getNamespaceURI()
  {
    return namespaceURI;
  }
  
  public String getPrefix()
  {
    return prefix;
  }
  
  public final int hashCode()
  {
    return namespaceURI.hashCode() ^ localPart.hashCode();
  }
  
  public String toString()
  {
    if (namespaceURI.equals("")) {
      return localPart;
    }
    return "{" + namespaceURI + "}" + localPart;
  }
}

/* Location:
 * Qualified Name:     de.aflx.sardine.util.QName
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */