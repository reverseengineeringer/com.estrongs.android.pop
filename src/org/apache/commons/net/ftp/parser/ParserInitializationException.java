package org.apache.commons.net.ftp.parser;

public class ParserInitializationException
  extends RuntimeException
{
  private static final long serialVersionUID = 5563335279583210658L;
  
  public ParserInitializationException(String paramString)
  {
    super(paramString);
  }
  
  public ParserInitializationException(String paramString, Throwable paramThrowable)
  {
    super(paramString, paramThrowable);
  }
  
  @Deprecated
  public Throwable getRootCause()
  {
    return super.getCause();
  }
}

/* Location:
 * Qualified Name:     org.apache.commons.net.ftp.parser.ParserInitializationException
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */