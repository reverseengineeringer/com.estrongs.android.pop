package android.support.v4.media;

import android.graphics.Bitmap;
import android.net.Uri;
import android.os.Bundle;

public final class aa
{
  private String a;
  private CharSequence b;
  private CharSequence c;
  private CharSequence d;
  private Bitmap e;
  private Uri f;
  private Bundle g;
  private Uri h;
  
  public MediaDescriptionCompat a()
  {
    return new MediaDescriptionCompat(a, b, c, d, e, f, g, h, null);
  }
  
  public aa a(Bitmap paramBitmap)
  {
    e = paramBitmap;
    return this;
  }
  
  public aa a(Uri paramUri)
  {
    f = paramUri;
    return this;
  }
  
  public aa a(Bundle paramBundle)
  {
    g = paramBundle;
    return this;
  }
  
  public aa a(CharSequence paramCharSequence)
  {
    b = paramCharSequence;
    return this;
  }
  
  public aa a(String paramString)
  {
    a = paramString;
    return this;
  }
  
  public aa b(Uri paramUri)
  {
    h = paramUri;
    return this;
  }
  
  public aa b(CharSequence paramCharSequence)
  {
    c = paramCharSequence;
    return this;
  }
  
  public aa c(CharSequence paramCharSequence)
  {
    d = paramCharSequence;
    return this;
  }
}

/* Location:
 * Qualified Name:     android.support.v4.media.aa
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */