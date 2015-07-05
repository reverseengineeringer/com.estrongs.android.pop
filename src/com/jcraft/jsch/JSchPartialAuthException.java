package com.jcraft.jsch;

class JSchPartialAuthException
  extends JSchException
{
  String methods;
  
  public JSchPartialAuthException() {}
  
  public JSchPartialAuthException(String paramString)
  {
    super(paramString);
    methods = paramString;
  }
  
  public String getMethods()
  {
    return methods;
  }
}

/* Location:
 * Qualified Name:     com.jcraft.jsch.JSchPartialAuthException
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */