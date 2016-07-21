package com.estrongs.android.ui.theme;

import android.content.Intent;
import android.net.Uri;
import com.estrongs.android.pop.app.imageviewer.CropImage;
import com.estrongs.android.ui.d.g;
import com.estrongs.android.view.dx;
import java.io.File;
import java.util.List;

class h
  implements dx
{
  h(e parame) {}
  
  public void a(com.estrongs.fs.h paramh)
  {
    Object localObject = ModifyThemeActivity.a(a.a).g();
    if (localObject == null) {
      return;
    }
    localObject = (al)((List)localObject).get(ModifyThemeActivity.b(a.a));
    Intent localIntent = new Intent();
    localIntent.setData(Uri.fromFile(new File(paramh.getAbsolutePath())));
    localIntent.setClass(a.a, CropImage.class);
    localIntent.putExtra("outputX", g.d);
    localIntent.putExtra("outputY", g.e);
    localIntent.putExtra("aspectX", g.d);
    localIntent.putExtra("aspectY", g.e);
    localIntent.putExtra("scale", true);
    localIntent.putExtra("scaleUpIfNeeded", true);
    localIntent.putExtra("noFaceDetection", true);
    localIntent.putExtra("customSave1", ((al)localObject).d() + "background_v.dat");
    localIntent.putExtra("customSave2", ((al)localObject).d() + "background_h.dat");
    localIntent.putExtra("crop2Direction", true);
    localIntent.putExtra("fixCropMode", true);
    localIntent.putExtra("title", a.a.getString(2131231296));
    a.a.startActivityForResult(localIntent, 4121);
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.ui.theme.h
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */