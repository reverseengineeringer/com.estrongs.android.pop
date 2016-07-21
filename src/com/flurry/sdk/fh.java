package com.flurry.sdk;

import android.annotation.TargetApi;
import android.view.View;
import android.widget.ImageView;
import java.io.File;

public class fh
{
  private static final String a = fh.class.getSimpleName();
  
  @TargetApi(16)
  public void a(View paramView, int paramInt, String paramString)
  {
    Object localObject = i.a().l().a(paramInt, paramString);
    if (localObject == null)
    {
      kg.a(3, a, "Cached asset not available for image:" + paramString);
      localObject = new kn();
      ((kn)localObject).a(paramString);
      ((kn)localObject).d(40000);
      ((kn)localObject).a(kp.a.b);
      ((kn)localObject).b(new dw());
      ((kn)localObject).a(new fh.3(this, paramView));
      jq.a().a(this, (lz)localObject);
      return;
    }
    kg.a(3, a, "Cached asset present for image:" + paramString);
    paramString = ((File)localObject).getAbsolutePath();
    js.a().a(new fh.4(this, paramView, paramString));
  }
  
  public void a(ImageView paramImageView, int paramInt, String paramString)
  {
    Object localObject = i.a().l().a(paramInt, paramString);
    if (localObject == null)
    {
      kg.a(3, a, "Cached asset not available for image:" + paramString);
      localObject = new kn();
      ((kn)localObject).a(paramString);
      ((kn)localObject).d(40000);
      ((kn)localObject).a(kp.a.b);
      ((kn)localObject).b(new dw());
      ((kn)localObject).a(new fh.1(this, paramImageView));
      jq.a().a(this, (lz)localObject);
      return;
    }
    kg.a(3, a, "Cached asset present for image:" + paramString);
    paramString = ((File)localObject).getAbsolutePath();
    js.a().a(new fh.2(this, paramImageView, paramString));
  }
}

/* Location:
 * Qualified Name:     com.flurry.sdk.fh
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */