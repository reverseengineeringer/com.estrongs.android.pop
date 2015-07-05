package com.estrongs.fs.b;

import com.estrongs.a.a;
import com.estrongs.a.a.m;
import com.estrongs.android.pop.FexApplication;
import com.estrongs.android.pop.app.b.c;

public class al
  extends a
{
  public boolean canPause()
  {
    return false;
  }
  
  public void handleMessage(int paramInt, Object... paramVarArgs)
  {
    switch (paramInt)
    {
    default: 
      super.handleMessage(paramInt, paramVarArgs);
      return;
    case 1: 
      localm = processData;
      d += ((Long)paramVarArgs[0]).longValue();
      processData.a = ((String)paramVarArgs[1]);
      onProgress(processData);
      return;
    }
    m localm = processData;
    f += ((Long)paramVarArgs[0]).longValue();
    processData.a = ((String)paramVarArgs[1]);
    onProgress(processData);
  }
  
  public boolean task()
  {
    processData.e = -1L;
    processData.a = FexApplication.a().getString(2131427845);
    onProgress(processData);
    c.a().c();
    return true;
  }
}

/* Location:
 * Qualified Name:     com.estrongs.fs.b.al
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */