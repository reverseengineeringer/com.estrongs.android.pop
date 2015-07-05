package com.estrongs.android.pop.app.imageviewer;

import android.view.View;
import android.view.View.OnClickListener;
import com.estrongs.android.pop.app.imageviewer.gallery.e;
import com.estrongs.android.ui.dialog.ks;
import com.estrongs.android.util.am;
import java.util.ArrayList;
import java.util.List;

class aw
  implements View.OnClickListener
{
  aw(ViewImage21 paramViewImage21) {}
  
  public void onClick(View paramView)
  {
    paramView = a.c();
    ArrayList localArrayList;
    int j;
    int i;
    if (paramView != null)
    {
      localArrayList = new ArrayList();
      localArrayList.add(am.bB(paramView.i()));
      if (!ImageManager.a(paramView)) {
        break label168;
      }
      j = paramView.m();
      i = paramView.l();
    }
    for (;;)
    {
      if ((j > 0) && (i > 0)) {
        localArrayList.add(String.format(a.getString(2131428712), new Object[] { Integer.valueOf(j), Integer.valueOf(i) }) + " " + a.getString(2131427421));
      }
      paramView = new ks(a, "image", localArrayList);
      paramView.a(new ax(this));
      paramView.show();
      return;
      label168:
      i = 0;
      j = 0;
    }
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.pop.app.imageviewer.aw
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */