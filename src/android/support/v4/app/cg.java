package android.support.v4.app;

import android.os.Bundle;

class cg
{
  static Bundle a(ce paramce)
  {
    Bundle localBundle = new Bundle();
    localBundle.putString("resultKey", paramce.a());
    localBundle.putCharSequence("label", paramce.b());
    localBundle.putCharSequenceArray("choices", paramce.c());
    localBundle.putBoolean("allowFreeFormInput", paramce.d());
    localBundle.putBundle("extras", paramce.e());
    return localBundle;
  }
  
  static ce a(Bundle paramBundle, cf paramcf)
  {
    return paramcf.b(paramBundle.getString("resultKey"), paramBundle.getCharSequence("label"), paramBundle.getCharSequenceArray("choices"), paramBundle.getBoolean("allowFreeFormInput"), paramBundle.getBundle("extras"));
  }
  
  static Bundle[] a(ce[] paramArrayOfce)
  {
    if (paramArrayOfce == null) {
      return null;
    }
    Bundle[] arrayOfBundle = new Bundle[paramArrayOfce.length];
    int i = 0;
    while (i < paramArrayOfce.length)
    {
      arrayOfBundle[i] = a(paramArrayOfce[i]);
      i += 1;
    }
    return arrayOfBundle;
  }
  
  static ce[] a(Bundle[] paramArrayOfBundle, cf paramcf)
  {
    if (paramArrayOfBundle == null) {
      return null;
    }
    ce[] arrayOfce = paramcf.b(paramArrayOfBundle.length);
    int i = 0;
    while (i < paramArrayOfBundle.length)
    {
      arrayOfce[i] = a(paramArrayOfBundle[i], paramcf);
      i += 1;
    }
    return arrayOfce;
  }
}

/* Location:
 * Qualified Name:     android.support.v4.app.cg
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */