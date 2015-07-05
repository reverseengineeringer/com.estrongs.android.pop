package com.jcraft.jsch;

import java.util.Hashtable;
import java.util.Vector;

class OpenSSHConfig$MyConfig
  implements ConfigRepository.Config
{
  private String b;
  private Vector c = new Vector();
  
  OpenSSHConfig$MyConfig(OpenSSHConfig paramOpenSSHConfig, String paramString)
  {
    b = paramString;
    c.addElement(OpenSSHConfig.a(paramOpenSSHConfig).get(""));
    byte[] arrayOfByte = Util.b(paramString);
    int i;
    if (OpenSSHConfig.b(paramOpenSSHConfig).size() > 1) {
      i = 1;
    }
    String[] arrayOfString;
    int j;
    for (;;)
    {
      if (i >= OpenSSHConfig.b(paramOpenSSHConfig).size()) {
        return;
      }
      arrayOfString = ((String)OpenSSHConfig.b(paramOpenSSHConfig).elementAt(i)).split("[ \t]");
      j = 0;
      if (j < arrayOfString.length) {
        break;
      }
      i += 1;
    }
    paramString = arrayOfString[j].trim();
    if (paramString.startsWith("!")) {
      paramString = paramString.substring(1).trim();
    }
    for (int k = 1;; k = 0)
    {
      if (Util.a(Util.b(paramString), arrayOfByte)) {
        if (k == 0) {
          c.addElement(OpenSSHConfig.a(paramOpenSSHConfig).get((String)OpenSSHConfig.b(paramOpenSSHConfig).elementAt(i)));
        }
      }
      for (;;)
      {
        j += 1;
        break;
        if (k != 0) {
          c.addElement(OpenSSHConfig.a(paramOpenSSHConfig).get((String)OpenSSHConfig.b(paramOpenSSHConfig).elementAt(i)));
        }
      }
    }
  }
  
  private String c(String paramString)
  {
    String str = paramString;
    if (OpenSSHConfig.a().get(paramString) != null) {
      str = (String)OpenSSHConfig.a().get(paramString);
    }
    int i = 0;
    paramString = null;
    if (i >= c.size())
    {
      localObject = paramString;
      label43:
      return (String)localObject;
    }
    Object localObject = (Vector)c.elementAt(i);
    int j = 0;
    for (;;)
    {
      if (j >= ((Vector)localObject).size()) {}
      for (;;)
      {
        localObject = paramString;
        if (paramString != null) {
          break label43;
        }
        i += 1;
        break;
        String[] arrayOfString = (String[])((Vector)localObject).elementAt(j);
        if (!arrayOfString[0].equals(str)) {
          break label115;
        }
        paramString = arrayOfString[1];
      }
      label115:
      j += 1;
    }
  }
  
  private String[] d(String paramString)
  {
    Vector localVector1 = new Vector();
    int i = 0;
    if (i >= c.size())
    {
      paramString = new String[localVector1.size()];
      localVector1.toArray(paramString);
      return paramString;
    }
    Vector localVector2 = (Vector)c.elementAt(i);
    int j = 0;
    for (;;)
    {
      if (j >= localVector2.size())
      {
        i += 1;
        break;
      }
      Object localObject = (String[])localVector2.elementAt(j);
      if (localObject[0].equals(paramString))
      {
        localObject = localObject[1];
        if (localObject != null)
        {
          localVector1.remove(localObject);
          localVector1.addElement(localObject);
        }
      }
      j += 1;
    }
  }
  
  public String a()
  {
    return c("Hostname");
  }
  
  public String a(String paramString)
  {
    if ((paramString.equals("compression.s2c")) || (paramString.equals("compression.c2s")))
    {
      paramString = c(paramString);
      if ((paramString == null) || (paramString.equals("no"))) {
        return "none,zlib@openssh.com,zlib";
      }
      return "zlib@openssh.com,zlib,none";
    }
    return c(paramString);
  }
  
  public String b()
  {
    return c("User");
  }
  
  public String[] b(String paramString)
  {
    return d(paramString);
  }
  
  public int c()
  {
    String str = c("Port");
    try
    {
      int i = Integer.parseInt(str);
      return i;
    }
    catch (NumberFormatException localNumberFormatException) {}
    return -1;
  }
}

/* Location:
 * Qualified Name:     com.jcraft.jsch.OpenSSHConfig.MyConfig
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */