package org.apache.commons.net.ftp.parser;

import java.util.Locale;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
import org.apache.commons.net.ftp.Configurable;
import org.apache.commons.net.ftp.FTPClientConfig;
import org.apache.commons.net.ftp.FTPFileEntryParser;

public class DefaultFTPFileEntryParserFactory
  implements FTPFileEntryParserFactory
{
  private static final String JAVA_IDENTIFIER = "\\p{javaJavaIdentifierStart}(\\p{javaJavaIdentifierPart})*";
  private static final String JAVA_QUALIFIED_NAME = "(\\p{javaJavaIdentifierStart}(\\p{javaJavaIdentifierPart})*\\.)+\\p{javaJavaIdentifierStart}(\\p{javaJavaIdentifierPart})*";
  private static final Pattern JAVA_QUALIFIED_NAME_PATTERN = Pattern.compile("(\\p{javaJavaIdentifierStart}(\\p{javaJavaIdentifierPart})*\\.)+\\p{javaJavaIdentifierStart}(\\p{javaJavaIdentifierPart})*");
  
  private FTPFileEntryParser createFileEntryParser(String paramString, FTPClientConfig paramFTPClientConfig)
  {
    localObject1 = null;
    Object localObject2 = localObject1;
    if (JAVA_QUALIFIED_NAME_PATTERN.matcher(paramString).matches()) {}
    for (;;)
    {
      try
      {
        localClass = Class.forName(paramString);
      }
      catch (ClassNotFoundException localClassNotFoundException)
      {
        Class localClass;
        Object localObject3 = localObject1;
        continue;
      }
      try
      {
        localObject2 = (FTPFileEntryParser)localClass.newInstance();
        localObject1 = localObject2;
        if (localObject2 == null)
        {
          localObject1 = paramString.toUpperCase(Locale.ENGLISH);
          if (((String)localObject1).indexOf("UNIX") >= 0) {
            localObject1 = new UnixFTPEntryParser(paramFTPClientConfig);
          }
        }
        else
        {
          if ((localObject1 instanceof Configurable)) {
            ((Configurable)localObject1).configure(paramFTPClientConfig);
          }
          return (FTPFileEntryParser)localObject1;
        }
      }
      catch (ClassCastException localClassCastException)
      {
        throw new ParserInitializationException(localClass.getName() + " does not implement the interface " + "org.apache.commons.net.ftp.FTPFileEntryParser.", localClassCastException);
      }
      catch (Exception localException)
      {
        throw new ParserInitializationException("Error initializing parser", localException);
      }
      catch (ExceptionInInitializerError localExceptionInInitializerError)
      {
        throw new ParserInitializationException("Error initializing parser", localExceptionInInitializerError);
      }
      if (((String)localObject1).indexOf("VMS") >= 0)
      {
        localObject1 = new VMSVersioningFTPEntryParser(paramFTPClientConfig);
      }
      else if (((String)localObject1).indexOf("WINDOWS") >= 0)
      {
        localObject1 = createNTFTPEntryParser(paramFTPClientConfig);
      }
      else if (((String)localObject1).indexOf("OS/2") >= 0)
      {
        localObject1 = new OS2FTPEntryParser(paramFTPClientConfig);
      }
      else if ((((String)localObject1).indexOf("OS/400") >= 0) || (((String)localObject1).indexOf("AS/400") >= 0))
      {
        localObject1 = createOS400FTPEntryParser(paramFTPClientConfig);
      }
      else if (((String)localObject1).indexOf("MVS") >= 0)
      {
        localObject1 = new MVSFTPEntryParser();
      }
      else if (((String)localObject1).indexOf("NETWARE") >= 0)
      {
        localObject1 = new NetwareFTPEntryParser(paramFTPClientConfig);
      }
      else
      {
        if (((String)localObject1).indexOf("TYPE: L8") < 0) {
          continue;
        }
        localObject1 = new UnixFTPEntryParser(paramFTPClientConfig);
      }
    }
    throw new ParserInitializationException("Unknown parser type: " + paramString);
  }
  
  private FTPFileEntryParser createNTFTPEntryParser(FTPClientConfig paramFTPClientConfig)
  {
    if ((paramFTPClientConfig != null) && ("WINDOWS".equals(paramFTPClientConfig.getServerSystemKey()))) {
      return new NTFTPEntryParser(paramFTPClientConfig);
    }
    return new CompositeFileEntryParser(new FTPFileEntryParser[] { new NTFTPEntryParser(paramFTPClientConfig), new UnixFTPEntryParser(paramFTPClientConfig) });
  }
  
  private FTPFileEntryParser createOS400FTPEntryParser(FTPClientConfig paramFTPClientConfig)
  {
    if ((paramFTPClientConfig != null) && ("OS/400".equals(paramFTPClientConfig.getServerSystemKey()))) {
      return new OS400FTPEntryParser(paramFTPClientConfig);
    }
    return new CompositeFileEntryParser(new FTPFileEntryParser[] { new OS400FTPEntryParser(paramFTPClientConfig), new UnixFTPEntryParser(paramFTPClientConfig) });
  }
  
  public FTPFileEntryParser createFileEntryParser(String paramString)
  {
    if (paramString == null) {
      throw new ParserInitializationException("Parser key cannot be null");
    }
    return createFileEntryParser(paramString, null);
  }
  
  public FTPFileEntryParser createFileEntryParser(FTPClientConfig paramFTPClientConfig)
  {
    return createFileEntryParser(paramFTPClientConfig.getServerSystemKey(), paramFTPClientConfig);
  }
  
  public FTPFileEntryParser createMVSEntryParser()
  {
    return new MVSFTPEntryParser();
  }
  
  public FTPFileEntryParser createNTFTPEntryParser()
  {
    return createNTFTPEntryParser(null);
  }
  
  public FTPFileEntryParser createNetwareFTPEntryParser()
  {
    return new NetwareFTPEntryParser();
  }
  
  public FTPFileEntryParser createOS2FTPEntryParser()
  {
    return new OS2FTPEntryParser();
  }
  
  public FTPFileEntryParser createOS400FTPEntryParser()
  {
    return createOS400FTPEntryParser(null);
  }
  
  public FTPFileEntryParser createUnixFTPEntryParser()
  {
    return new UnixFTPEntryParser();
  }
  
  public FTPFileEntryParser createVMSVersioningFTPEntryParser()
  {
    return new VMSVersioningFTPEntryParser();
  }
}

/* Location:
 * Qualified Name:     org.apache.commons.net.ftp.parser.DefaultFTPFileEntryParserFactory
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */