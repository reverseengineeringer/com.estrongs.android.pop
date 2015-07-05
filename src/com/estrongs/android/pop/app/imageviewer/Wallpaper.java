package com.estrongs.android.pop.app.imageviewer;

import android.content.Intent;
import android.os.Bundle;

public class Wallpaper
  extends NoSearchActivity
{
  protected void a(Intent paramIntent)
  {
    int i = getWallpaperDesiredMinimumWidth();
    int j = getWallpaperDesiredMinimumHeight();
    paramIntent.putExtra("outputX", i);
    paramIntent.putExtra("outputY", j);
    paramIntent.putExtra("aspectX", i);
    paramIntent.putExtra("aspectY", j);
    paramIntent.putExtra("scale", true);
    paramIntent.putExtra("noFaceDetection", true);
    paramIntent.putExtra("setWallpaper", true);
  }
  
  protected void onActivityResult(int paramInt1, int paramInt2, Intent paramIntent)
  {
    if ((paramInt1 == 1) || (paramInt1 == 2))
    {
      setResult(paramInt2);
      finish();
    }
  }
  
  protected void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    paramBundle = getIntent().getData();
    if (paramBundle != null)
    {
      Intent localIntent = new Intent();
      localIntent.setClass(this, CropImage.class);
      localIntent.setData(paramBundle);
      a(localIntent);
      startActivityForResult(localIntent, 2);
      return;
    }
    paramBundle = new Intent("android.intent.action.GET_CONTENT", null);
    paramBundle.setType("image/*");
    paramBundle.putExtra("crop", "true");
    a(paramBundle);
    startActivityForResult(paramBundle, 1);
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.pop.app.imageviewer.Wallpaper
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */