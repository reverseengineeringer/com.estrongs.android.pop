package com.estrongs.android.pop.app.ad;

import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.drawable.BitmapDrawable;
import android.support.v7.widget.RecyclerView.LayoutParams;
import android.text.TextUtils;
import android.view.LayoutInflater;
import android.view.View;
import android.widget.Button;
import android.widget.ImageView;
import android.widget.TextView;
import com.duapps.ad.a.e;
import com.estrongs.android.pop.FexApplication;
import com.google.android.gms.ads.formats.NativeAppInstallAdView;
import com.google.android.gms.ads.formats.NativeContentAdView;
import org.json.JSONObject;

public class j
{
  private com.duapps.ad.f a;
  private View b;
  private long c;
  private String d;
  private String e;
  
  public j(com.duapps.ad.f paramf, Context paramContext)
  {
    a = paramf;
    d = a.h();
    e = a.i();
    a(paramContext);
  }
  
  private void a(ImageView paramImageView, String paramString, int paramInt)
  {
    try
    {
      Object localObject = paramImageView.getDrawable();
      if ((localObject != null) && ((localObject instanceof BitmapDrawable)))
      {
        localObject = ((BitmapDrawable)localObject).getBitmap();
        if ((localObject == null) || (((Bitmap)localObject).isRecycled())) {
          paramImageView.setImageResource(paramInt);
        }
      }
    }
    catch (Exception localException)
    {
      for (;;) {}
    }
    b(paramImageView, paramString, paramInt);
  }
  
  private View b(Context paramContext)
  {
    if (a.k() == 4) {
      return d(paramContext);
    }
    return c(paramContext);
  }
  
  private void b(ImageView paramImageView, String paramString, int paramInt)
  {
    com.estrongs.android.b.a.c.a(paramImageView, paramString, paramInt);
  }
  
  private View c()
  {
    NativeAppInstallAdView localNativeAppInstallAdView = new NativeAppInstallAdView(FexApplication.a());
    Object localObject = LayoutInflater.from(FexApplication.a()).inflate(2130903075, localNativeAppInstallAdView);
    localNativeAppInstallAdView.setHeadlineView(((View)localObject).findViewById(2131624139));
    localNativeAppInstallAdView.setImageView(((View)localObject).findViewById(2131624141));
    localNativeAppInstallAdView.setBodyView(((View)localObject).findViewById(2131624142));
    localNativeAppInstallAdView.setCallToActionView(((View)localObject).findViewById(2131624140));
    localNativeAppInstallAdView.setIconView(((View)localObject).findViewById(2131624138));
    String str = a.f().replace("&nbsp;", " ");
    ((TextView)localNativeAppInstallAdView.getHeadlineView()).setText(str);
    ((TextView)localNativeAppInstallAdView.getBodyView()).setText(a.g());
    ((Button)localNativeAppInstallAdView.getCallToActionView()).setText(a.j());
    localObject = (ImageView)((View)localObject).findViewById(2131624138);
    b((ImageView)localNativeAppInstallAdView.getIconView(), d, 2130837752);
    localObject = (View)localNativeAppInstallAdView.getImageView().getParent();
    if ((e != null) && (e.length() > 0))
    {
      ((View)localObject).setVisibility(0);
      b((ImageView)localNativeAppInstallAdView.getImageView(), e, 2130837751);
    }
    for (;;)
    {
      localObject = a.l().l();
      if ((localObject instanceof com.duapps.ad.a.f))
      {
        localObject = ((com.duapps.ad.a.f)localObject).a();
        if (localObject != null) {
          localNativeAppInstallAdView.setNativeAd(b);
        }
      }
      return localNativeAppInstallAdView;
      ((View)localObject).setVisibility(8);
    }
  }
  
  private View c(Context paramContext)
  {
    View localView;
    for (;;)
    {
      try
      {
        localView = LayoutInflater.from(paramContext).inflate(2130903220, null, false);
      }
      catch (Exception paramContext)
      {
        Object localObject;
        Button localButton;
        localView = null;
        continue;
      }
      try
      {
        b((ImageView)localView.findViewById(2131624138), d, 2130837752);
        ((TextView)localView.findViewById(2131624139)).setText(a.f());
        localObject = (TextView)localView.findViewById(2131624142);
        if ((a.g() != null) && (!TextUtils.isEmpty(a.g())))
        {
          ((TextView)localObject).setText(a.g());
          localObject = (ImageView)localView.findViewById(2131624141);
          localButton = (Button)localView.findViewById(2131624140);
          String str = a.j();
          if (!TextUtils.isEmpty(str))
          {
            localButton.setText(str);
            paramContext = (View)((ImageView)localObject).getParent();
            if ((e == null) || (e.length() <= 0)) {
              continue;
            }
            paramContext.setVisibility(0);
            b((ImageView)localObject, e, 2130837751);
            return localView;
          }
        }
        else
        {
          ((TextView)localObject).setVisibility(8);
          continue;
        }
        localButton.setText(paramContext.getString(2131230868));
      }
      catch (Exception paramContext)
      {
        paramContext.printStackTrace();
        return localView;
      }
      continue;
      paramContext.setVisibility(8);
      return localView;
    }
    return localView;
  }
  
  private View d()
  {
    NativeContentAdView localNativeContentAdView = new NativeContentAdView(FexApplication.a());
    Object localObject = LayoutInflater.from(FexApplication.a()).inflate(2130903075, localNativeContentAdView);
    localNativeContentAdView.setHeadlineView(((View)localObject).findViewById(2131624139));
    localNativeContentAdView.setImageView(((View)localObject).findViewById(2131624141));
    localNativeContentAdView.setBodyView(((View)localObject).findViewById(2131624142));
    localNativeContentAdView.setCallToActionView(((View)localObject).findViewById(2131624140));
    localNativeContentAdView.setLogoView(((View)localObject).findViewById(2131624138));
    localObject = a.f().replace("&nbsp;", " ");
    ((TextView)localNativeContentAdView.getHeadlineView()).setText((CharSequence)localObject);
    ((TextView)localNativeContentAdView.getBodyView()).setText(a.g());
    ((TextView)localNativeContentAdView.getCallToActionView()).setText(a.j());
    localObject = (View)localNativeContentAdView.getImageView().getParent();
    if ((e != null) && (e.length() > 0))
    {
      ((View)localObject).setVisibility(0);
      b((ImageView)localNativeContentAdView.getImageView(), e, 2130837751);
      if ((d == null) || (d.length() <= 0)) {
        break label275;
      }
      b((ImageView)localNativeContentAdView.getLogoView(), d, 2130837752);
      localNativeContentAdView.getLogoView().setVisibility(0);
    }
    for (;;)
    {
      localObject = a.l().l();
      if ((localObject instanceof com.duapps.ad.a.f))
      {
        localObject = ((com.duapps.ad.a.f)localObject).a();
        if (localObject != null) {
          localNativeContentAdView.setNativeAd(a);
        }
      }
      return localNativeContentAdView;
      ((View)localObject).setVisibility(8);
      break;
      label275:
      localNativeContentAdView.getLogoView().setVisibility(8);
    }
  }
  
  private View d(Context paramContext)
  {
    if (a.m() == 1) {}
    for (paramContext = c();; paramContext = d())
    {
      paramContext.setLayoutParams(new RecyclerView.LayoutParams(-2, -2));
      return paramContext;
      if (e == null)
      {
        e = d;
        d = null;
      }
    }
  }
  
  public View a()
  {
    Object localObject1;
    Object localObject2;
    if (b != null)
    {
      localObject1 = (ImageView)b.findViewById(2131624138);
      localObject2 = (ImageView)b.findViewById(2131624141);
      a((ImageView)localObject1, d, 2130837752);
      a((ImageView)localObject2, e, 2130837751);
      a.a(b);
    }
    try
    {
      localObject1 = com.estrongs.android.j.c.a(FexApplication.a());
      localObject2 = new JSONObject();
      ((JSONObject)localObject2).put("event", "express");
      ((JSONObject)localObject2).put("channel", a.k());
      ((com.estrongs.android.j.c)localObject1).b("mobula", (JSONObject)localObject2);
      return b;
    }
    catch (Exception localException)
    {
      for (;;) {}
    }
  }
  
  public View a(Context paramContext)
  {
    if (b == null)
    {
      b = b(paramContext);
      c = System.currentTimeMillis();
    }
    return b;
  }
  
  public boolean b()
  {
    return System.currentTimeMillis() - c < 3600000L;
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.pop.app.ad.j
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */