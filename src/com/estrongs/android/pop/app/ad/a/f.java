package com.estrongs.android.pop.app.ad.a;

import android.content.Context;
import android.text.TextUtils;
import android.view.LayoutInflater;
import android.view.View;
import android.widget.Button;
import android.widget.ImageView;
import android.widget.TextView;
import com.flurry.android.ads.FlurryAdNative;
import com.flurry.android.ads.FlurryAdNativeAsset;

public class f
{
  public static View a(Context paramContext, FlurryAdNative paramFlurryAdNative)
  {
    for (;;)
    {
      try
      {
        paramContext = LayoutInflater.from(paramContext).inflate(2130903239, null, false);
        try
        {
          Object localObject = (ImageView)paramContext.findViewById(2131624138);
          if (paramFlurryAdNative.getAsset("secHqBrandingLogo") != null)
          {
            paramFlurryAdNative.getAsset("secHqBrandingLogo").loadAssetIntoView((View)localObject);
            localObject = (TextView)paramContext.findViewById(2131624139);
            paramFlurryAdNative.getAsset("source").loadAssetIntoView((View)localObject);
            localObject = (TextView)paramContext.findViewById(2131624142);
            paramFlurryAdNative.getAsset("headline").loadAssetIntoView((View)localObject);
            localObject = (ImageView)paramContext.findViewById(2131624141);
            ((ImageView)localObject).setVisibility(0);
            localButton = (Button)paramContext.findViewById(2131624140);
            if (!paramFlurryAdNative.isVideoAd()) {
              continue;
            }
            localButton.setText("Video");
            paramFlurryAdNative.getAsset("videoUrl").loadAssetIntoView((View)((ImageView)localObject).getParent());
            ((ImageView)localObject).setVisibility(8);
            paramContext.requestLayout();
            paramFlurryAdNative.setTrackingView(paramContext);
            return paramContext;
          }
          if (paramFlurryAdNative.getAsset("secBrandingLogo") == null) {
            continue;
          }
          paramFlurryAdNative.getAsset("secBrandingLogo").loadAssetIntoView((View)localObject);
          continue;
          localException1.printStackTrace();
        }
        catch (Exception localException1) {}
      }
      catch (Exception localException2)
      {
        Button localButton;
        paramContext = null;
        continue;
      }
      continue;
      paramFlurryAdNative.getAsset("secHqImage").loadAssetIntoView(localException1);
      if ((paramFlurryAdNative.getAsset("secHqRatingImg") != null) && (!TextUtils.isEmpty(paramFlurryAdNative.getAsset("secHqRatingImg").getValue()))) {
        localButton.setText("Install Now");
      } else {
        localButton.setText("Read More");
      }
    }
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.pop.app.ad.a.f
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */