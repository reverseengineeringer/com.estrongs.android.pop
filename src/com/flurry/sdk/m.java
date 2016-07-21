package com.flurry.sdk;

import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.text.TextUtils;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Button;
import android.widget.ImageView;
import android.widget.TextView;
import java.io.File;

public class m
{
  private static final String a = m.class.getSimpleName();
  
  private void a(ImageView paramImageView, Bitmap paramBitmap)
  {
    js.a().a(new m.3(this, paramImageView, paramBitmap));
  }
  
  private void a(da paramda, ViewGroup paramViewGroup, int paramInt)
  {
    if ((paramda == null) || (paramViewGroup == null) || (TextUtils.isEmpty(c)) || (!db.c.equals(b))) {
      return;
    }
    if (!(paramViewGroup instanceof ViewGroup))
    {
      kg.e(a, "The view must be an instance of ViewGroup in order to load the asset");
      return;
    }
    s locals = i.a().d().a(paramInt);
    if (locals == null)
    {
      kg.a(5, a, "Video error. Could not find ad object");
      return;
    }
    if (!(locals instanceof x))
    {
      kg.a(5, a, "The ad must be an instance of FlurryAdNative to fetch video");
      return;
    }
    js.a().b(new m.4(this, paramda, paramViewGroup, locals));
  }
  
  private void a(da paramda, ViewGroup paramViewGroup, x paramx)
  {
    String str = c;
    if (a(paramx))
    {
      i.a().l().b(paramx, str);
      paramda = str;
    }
    for (;;)
    {
      a(paramx, paramViewGroup, paramda);
      return;
      File localFile = i.a().l().a(paramx, str);
      paramda = str;
      if (localFile != null)
      {
        paramda = str;
        if (localFile.exists()) {
          paramda = "file://" + localFile.getAbsolutePath();
        }
      }
    }
  }
  
  private void a(da paramda, Button paramButton, int paramInt)
  {
    paramButton.setText(c);
    if (a.equals("callToAction"))
    {
      paramda = new n();
      a = paramButton;
      b = paramInt;
      paramda.b();
    }
  }
  
  private void a(da paramda, ImageView paramImageView, int paramInt)
  {
    Object localObject = i.a().l().a(paramInt, c);
    if (localObject == null)
    {
      kg.a(3, a, "Cached asset not available for image:" + c);
      localObject = new kn();
      ((kn)localObject).a(c);
      ((kn)localObject).d(40000);
      ((kn)localObject).a(kp.a.b);
      ((kn)localObject).b(new dw());
      ((kn)localObject).a(new m.2(this, paramImageView));
      jq.a().a(this, (lz)localObject);
      return;
    }
    kg.a(3, a, "Cached asset present for image:" + c);
    a(paramImageView, BitmapFactory.decodeFile(((File)localObject).getAbsolutePath()));
  }
  
  private void a(da paramda, TextView paramTextView)
  {
    paramTextView.setText(c);
  }
  
  private void a(x paramx, ViewGroup paramViewGroup, String paramString)
  {
    js.a().a(new m.5(this, paramx, paramString, paramViewGroup));
  }
  
  private boolean a(x paramx)
  {
    if (paramx != null)
    {
      paramx = paramx.l();
      if (paramx != null) {
        return paramx.m().h();
      }
    }
    return false;
  }
  
  private void b(da paramda, View paramView, int paramInt)
  {
    if ((paramda == null) || (!db.a.equals(b)) || (paramView == null)) {
      return;
    }
    if ((a.equals("callToAction")) && ((paramView instanceof Button)))
    {
      a(paramda, (Button)paramView, paramInt);
      return;
    }
    if (!(paramView instanceof TextView))
    {
      kg.e(a, "The view must be an instance of TextView in order to load the asset");
      return;
    }
    a(paramda, (TextView)paramView);
  }
  
  private void c(da paramda, View paramView, int paramInt)
  {
    if ((paramda == null) || (TextUtils.isEmpty(c)) || (!db.b.equals(b))) {
      return;
    }
    if ((paramView == null) || (!(paramView instanceof ImageView)))
    {
      kg.e(a, "The view must be an instance of ImageView in order to load the asset");
      return;
    }
    js.a().b(new m.1(this, paramda, paramView, paramInt));
  }
  
  public View a(Context paramContext, da paramda, int paramInt)
  {
    Object localObject = null;
    if ((paramContext == null) || (paramda == null)) {
      return null;
    }
    switch (m.6.a[b.ordinal()])
    {
    default: 
      paramContext = (Context)localObject;
    }
    for (;;)
    {
      a(paramda, paramContext, paramInt);
      return paramContext;
      if (a.equals("callToAction"))
      {
        paramContext = new Button(paramContext);
      }
      else
      {
        paramContext = new TextView(paramContext);
        continue;
        paramContext = new ImageView(paramContext);
      }
    }
  }
  
  public String a(da paramda, int paramInt)
  {
    File localFile = i.a().l().a(paramInt, c);
    if (localFile == null) {
      return c;
    }
    return "file://" + localFile.getAbsolutePath();
  }
  
  public void a(da paramda, View paramView, int paramInt)
  {
    if ((paramda == null) || (paramView == null)) {
      return;
    }
    switch (m.6.a[b.ordinal()])
    {
    default: 
      return;
    case 1: 
      b(paramda, paramView, paramInt);
      return;
    case 2: 
      c(paramda, paramView, paramInt);
      return;
    }
    a(paramda, (ViewGroup)paramView, paramInt);
  }
}

/* Location:
 * Qualified Name:     com.flurry.sdk.m
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */