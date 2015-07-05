package com.jcraft.jsch;

class JSchAuthCancelException
  extends JSchException
{
  String method;
  
  JSchAuthCancelException() {}
  
  JSchAuthCancelException(String paramString)
  {
    super(paramString);
    method = paramString;
  }
  
  public String getMethod()
  {
    return method;
  }
}

/* Location:
 * Qualified Name:     com.jcraft.jsch.JSchAuthCancelException
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */