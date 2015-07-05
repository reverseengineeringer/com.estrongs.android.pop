package com.jcraft.jsch;

public class SftpException
  extends Exception
{
  private Throwable cause = null;
  public int id;
  
  public SftpException(int paramInt, String paramString)
  {
    super(paramString);
    id = paramInt;
  }
  
  public SftpException(int paramInt, String paramString, Throwable paramThrowable)
  {
    super(paramString);
    id = paramInt;
    cause = paramThrowable;
  }
  
  public Throwable getCause()
  {
    return cause;
  }
  
  public String toString()
  {
    return id + ": " + getMessage();
  }
}

/* Location:
 * Qualified Name:     com.jcraft.jsch.SftpException
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */