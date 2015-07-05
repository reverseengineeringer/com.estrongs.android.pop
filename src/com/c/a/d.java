package com.c.a;

import java.util.logging.Level;
import java.util.logging.Logger;

class d
  implements c
{
  private static final String a = a.class.getName();
  private Logger b = Logger.getLogger("com.intel.bluetooth");
  
  public void a(int paramInt, String paramString, Throwable paramThrowable)
  {
    switch (paramInt)
    {
    case 2: 
    case 3: 
    default: 
      return;
    case 1: 
      b.log(Level.ALL, paramString, paramThrowable);
      return;
    }
    b.log(Level.FINEST, paramString, paramThrowable);
  }
  
  public boolean a(int paramInt)
  {
    switch (paramInt)
    {
    case 2: 
    case 3: 
    default: 
      return false;
    case 1: 
      return b.isLoggable(Level.ALL);
    }
    return true;
  }
}

/* Location:
 * Qualified Name:     com.c.a.d
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */