package com.estrongs.android.ui.theme;

import android.content.Intent;
import android.net.Uri;
import com.estrongs.android.pop.app.imageviewer.CropImage;
import com.estrongs.android.ui.d.a;
import com.estrongs.android.view.cc;
import com.estrongs.fs.h;
import java.io.File;
import java.util.List;

class i
  implements cc
{
  i(f paramf) {}
  
  public void a(h paramh)
  {
    Object localObject = ModifyThemeActivity.a(a.a).g();
    if (localObject == null) {
      return;
    }
    localObject = (ai)((List)localObject).get(ModifyThemeActivity.b(a.a));
    Intent localIntent = new Intent();
    localIntent.setData(Uri.fromFile(new File(paramh.getAbsolutePath())));
    localIntent.setClass(a.a, CropImage.class);
    localIntent.putExtra("outputX", a.d);
    localIntent.putExtra("outputY", a.e);
    localIntent.putExtra("aspectX", a.d);
    localIntent.putExtra("aspectY", a.e);
    localIntent.putExtra("scale", true);
    localIntent.putExtra("scaleUpIfNeeded", true);
    localIntent.putExtra("noFaceDetection", true);
    localIntent.putExtra("customSave1", ((ai)localObject).a() + "background_v.dat");
    localIntent.putExtra("customSave2", ((ai)localObject).a() + "background_h.dat");
    localIntent.putExtra("crop2Direction", true);
    localIntent.putExtra("fixCropMode", true);
    localIntent.putExtra("title", a.a.getString(2131428720));
    a.a.startActivityForResult(localIntent, 268439577);
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.ui.theme.i
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */