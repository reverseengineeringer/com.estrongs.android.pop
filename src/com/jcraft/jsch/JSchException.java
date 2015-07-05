package com.jcraft.jsch;

public class JSchException
  extends Exception
{
  private Throwable cause = null;
  
  public JSchException() {}
  
  public JSchException(String paramString)
  {
    super(paramString);
  }
  
  public JSchException(String paramString, Throwable paramThrowable)
  {
    super(paramString);
    cause = paramThrowable;
  }
  
  public Throwable getCause()
  {
    return cause;
  }
}

/* Location:
 * Qualified Name:     com.jcraft.jsch.JSchException
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */