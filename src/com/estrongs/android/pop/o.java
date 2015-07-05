package com.estrongs.android.pop;

import com.estrongs.a.a;
import com.estrongs.a.a.i;
import com.estrongs.android.pop.spfs.dialog.FlickrPhotoPrivacyDialog.PrivacyOptionCallback;
import com.estrongs.android.util.TypedMap;

class o
  implements FlickrPhotoPrivacyDialog.PrivacyOptionCallback
{
  o(n paramn) {}
  
  public void setPrivacty(TypedMap paramTypedMap, boolean paramBoolean)
  {
    if (paramBoolean)
    {
      a.a.g = 3;
      a.b.sendMessage(5, new Object[] { a.a });
      return;
    }
    a.a).b = paramTypedMap;
    a.b.sendMessage(5, new Object[] { a.a });
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.pop.o
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */