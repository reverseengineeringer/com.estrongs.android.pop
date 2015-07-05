package jcifs;

import java.io.FileInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.io.PrintStream;
import java.io.UnsupportedEncodingException;
import java.net.InetAddress;
import java.net.UnknownHostException;
import java.util.Properties;
import java.util.StringTokenizer;
import jcifs.util.LogStream;

public class Config
{
  public static String DEFAULT_OEM_ENCODING;
  private static LogStream log;
  private static Properties prp;
  public static int socketCount = 0;
  
  static
  {
    prp = new Properties();
    DEFAULT_OEM_ENCODING = "Cp850";
    LogStream localLogStream2 = null;
    log = LogStream.getInstance();
    try
    {
      String str = System.getProperty("jcifs.properties");
      localObject = localLogStream2;
      if (str != null)
      {
        localObject = localLogStream2;
        if (str.length() > 1) {
          localObject = new FileInputStream(str);
        }
      }
      load((InputStream)localObject);
      if (localObject != null) {
        ((FileInputStream)localObject).close();
      }
    }
    catch (IOException localIOException1)
    {
      try
      {
        do
        {
          int i;
          "".getBytes(DEFAULT_OEM_ENCODING);
          Object localObject = log;
          if (LogStream.level >= 4) {}
          try
          {
            prp.store(log, "JCIFS PROPERTIES");
            return;
          }
          catch (IOException localIOException2) {}
          localIOException1 = localIOException1;
          localLogStream2 = log;
        } while (LogStream.level <= 0);
        localIOException1.printStackTrace(log);
      }
      catch (UnsupportedEncodingException localUnsupportedEncodingException)
      {
        for (;;)
        {
          LogStream localLogStream1 = log;
          if (LogStream.level >= 2) {
            log.println("WARNING: The default OEM encoding " + DEFAULT_OEM_ENCODING + " does not appear to be supported by this JRE. The default encoding will be US-ASCII.");
          }
          DEFAULT_OEM_ENCODING = "US-ASCII";
        }
      }
    }
    i = getInt("jcifs.util.loglevel", -1);
    if (i != -1) {
      LogStream.setLevel(i);
    }
  }
  
  public static Object get(String paramString)
  {
    return prp.get(paramString);
  }
  
  public static boolean getBoolean(String paramString, boolean paramBoolean)
  {
    paramString = getProperty(paramString);
    if (paramString != null) {
      paramBoolean = paramString.toLowerCase().equals("true");
    }
    return paramBoolean;
  }
  
  public static InetAddress getInetAddress(String paramString, InetAddress paramInetAddress)
  {
    String str = prp.getProperty(paramString);
    paramString = paramInetAddress;
    if (str != null) {}
    try
    {
      paramString = InetAddress.getByName(str);
      return paramString;
    }
    catch (UnknownHostException localUnknownHostException)
    {
      do
      {
        paramString = log;
        paramString = paramInetAddress;
      } while (LogStream.level <= 0);
      log.println(str);
      localUnknownHostException.printStackTrace(log);
    }
    return paramInetAddress;
  }
  
  public static InetAddress[] getInetAddressArray(String paramString1, String paramString2, InetAddress[] paramArrayOfInetAddress)
  {
    paramString1 = getProperty(paramString1);
    Object localObject;
    if (paramString1 != null)
    {
      paramString2 = new StringTokenizer(paramString1, paramString2);
      int j = paramString2.countTokens();
      localObject = new InetAddress[j];
      int i = 0;
      for (;;)
      {
        if (i >= j) {
          break label88;
        }
        paramString1 = paramString2.nextToken();
        try
        {
          localObject[i] = InetAddress.getByName(paramString1);
          i += 1;
        }
        catch (UnknownHostException paramString2)
        {
          localObject = log;
          if (LogStream.level > 0)
          {
            log.println(paramString1);
            paramString2.printStackTrace(log);
          }
        }
      }
    }
    return paramArrayOfInetAddress;
    label88:
    return (InetAddress[])localObject;
  }
  
  public static int getInt(String paramString)
  {
    paramString = prp.getProperty(paramString);
    int j = -1;
    int i = j;
    if (paramString != null) {}
    try
    {
      i = Integer.parseInt(paramString);
      return i;
    }
    catch (NumberFormatException paramString)
    {
      do
      {
        LogStream localLogStream = log;
        i = j;
      } while (LogStream.level <= 0);
      paramString.printStackTrace(log);
    }
    return -1;
  }
  
  public static int getInt(String paramString, int paramInt)
  {
    paramString = prp.getProperty(paramString);
    int i = paramInt;
    if (paramString != null) {}
    try
    {
      i = Integer.parseInt(paramString);
      return i;
    }
    catch (NumberFormatException paramString)
    {
      do
      {
        LogStream localLogStream = log;
        i = paramInt;
      } while (LogStream.level <= 0);
      paramString.printStackTrace(log);
    }
    return paramInt;
  }
  
  public static InetAddress getLocalHost()
  {
    String str = prp.getProperty("jcifs.smb.client.laddr");
    if (str != null) {
      try
      {
        InetAddress localInetAddress = InetAddress.getByName(str);
        return localInetAddress;
      }
      catch (UnknownHostException localUnknownHostException)
      {
        LogStream localLogStream = log;
        if (LogStream.level > 0)
        {
          log.println("Ignoring jcifs.smb.client.laddr address: " + str);
          localUnknownHostException.printStackTrace(log);
        }
      }
    }
    return null;
  }
  
  public static long getLong(String paramString, long paramLong)
  {
    paramString = prp.getProperty(paramString);
    long l = paramLong;
    if (paramString != null) {}
    try
    {
      l = Long.parseLong(paramString);
      return l;
    }
    catch (NumberFormatException paramString)
    {
      do
      {
        LogStream localLogStream = log;
        l = paramLong;
      } while (LogStream.level <= 0);
      paramString.printStackTrace(log);
    }
    return paramLong;
  }
  
  public static String getProperty(String paramString)
  {
    return prp.getProperty(paramString);
  }
  
  public static String getProperty(String paramString1, String paramString2)
  {
    return prp.getProperty(paramString1, paramString2);
  }
  
  public static void list(PrintStream paramPrintStream)
  {
    prp.list(paramPrintStream);
  }
  
  public static void load(InputStream paramInputStream)
  {
    if (paramInputStream != null) {
      prp.load(paramInputStream);
    }
    try
    {
      prp.putAll(System.getProperties());
      return;
    }
    catch (SecurityException paramInputStream)
    {
      do
      {
        paramInputStream = log;
      } while (LogStream.level <= 1);
      log.println("SecurityException: jcifs will ignore System properties");
    }
  }
  
  public static void registerSmbURLHandler()
  {
    String str = System.getProperty("java.version");
    if ((str.startsWith("1.1.")) || (str.startsWith("1.2."))) {
      throw new RuntimeException("jcifs-0.7.0b4+ requires Java 1.3 or above. You are running " + str);
    }
    str = System.getProperty("java.protocol.handler.pkgs");
    if (str == null) {
      System.setProperty("java.protocol.handler.pkgs", "jcifs");
    }
    while (str.indexOf("jcifs") != -1) {
      return;
    }
    System.setProperty("java.protocol.handler.pkgs", str + "|jcifs");
  }
  
  public static void setProperties(Properties paramProperties)
  {
    prp = new Properties(paramProperties);
    try
    {
      prp.putAll(System.getProperties());
      return;
    }
    catch (SecurityException paramProperties)
    {
      do
      {
        paramProperties = log;
      } while (LogStream.level <= 1);
      log.println("SecurityException: jcifs will ignore System properties");
    }
  }
  
  public static Object setProperty(String paramString1, String paramString2)
  {
    return prp.setProperty(paramString1, paramString2);
  }
  
  public static void store(OutputStream paramOutputStream, String paramString)
  {
    prp.store(paramOutputStream, paramString);
  }
}

/* Location:
 * Qualified Name:     jcifs.Config
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */