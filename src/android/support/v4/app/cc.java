package android.support.v4.app;

import android.app.RemoteInput;
import android.app.RemoteInput.Builder;

class cc
{
  static RemoteInput[] a(ce[] paramArrayOfce)
  {
    if (paramArrayOfce == null) {
      return null;
    }
    RemoteInput[] arrayOfRemoteInput = new RemoteInput[paramArrayOfce.length];
    int i = 0;
    while (i < paramArrayOfce.length)
    {
      ce localce = paramArrayOfce[i];
      arrayOfRemoteInput[i] = new RemoteInput.Builder(localce.a()).setLabel(localce.b()).setChoices(localce.c()).setAllowFreeFormInput(localce.d()).addExtras(localce.e()).build();
      i += 1;
    }
    return arrayOfRemoteInput;
  }
  
  static ce[] a(RemoteInput[] paramArrayOfRemoteInput, cf paramcf)
  {
    if (paramArrayOfRemoteInput == null) {
      return null;
    }
    ce[] arrayOfce = paramcf.b(paramArrayOfRemoteInput.length);
    int i = 0;
    while (i < paramArrayOfRemoteInput.length)
    {
      RemoteInput localRemoteInput = paramArrayOfRemoteInput[i];
      arrayOfce[i] = paramcf.b(localRemoteInput.getResultKey(), localRemoteInput.getLabel(), localRemoteInput.getChoices(), localRemoteInput.getAllowFreeFormInput(), localRemoteInput.getExtras());
      i += 1;
    }
    return arrayOfce;
  }
}

/* Location:
 * Qualified Name:     android.support.v4.app.cc
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */