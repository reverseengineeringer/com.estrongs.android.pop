package com.estrongs.android.pop.app.imageviewer.gallery;

import android.content.ContentResolver;
import android.net.Uri;

public class i
  implements f
{
  private e a;
  private Uri b;
  
  public i(ContentResolver paramContentResolver, Uri paramUri)
  {
    b = paramUri;
    a = new j(this, paramContentResolver, paramUri);
  }
  
  public int a(e parame)
  {
    if (parame == a) {
      return 0;
    }
    return -1;
  }
  
  public e a(int paramInt)
  {
    if (paramInt == 0) {
      return a;
    }
    return null;
  }
  
  public e a(Uri paramUri)
  {
    if (paramUri.equals(b)) {
      return a;
    }
    return null;
  }
  
  public void a()
  {
    a = null;
    b = null;
  }
  
  public int b()
  {
    return 1;
  }
  
  public boolean b(int paramInt)
  {
    return false;
  }
  
  public boolean c()
  {
    return false;
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.pop.app.imageviewer.gallery.i
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */