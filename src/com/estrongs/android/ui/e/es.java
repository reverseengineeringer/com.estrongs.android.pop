package com.estrongs.android.ui.e;

import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;
import com.estrongs.android.pop.view.FileExplorerActivity;
import com.estrongs.android.util.bm;
import com.estrongs.android.view.y;
import com.estrongs.android.widget.f;
import java.util.List;

class es
  implements DialogInterface.OnClickListener
{
  es(er paramer, List paramList) {}
  
  public void onClick(DialogInterface paramDialogInterface, int paramInt)
  {
    bm.c().a(bb.a).K.d(), true);
    bb.a).n = true;
    bb.a).x.clear();
    bb.a).x.addAll(a);
    y.a(cr.b(b.a)).a(a, bb.a).n);
    cr.b(b.a).B();
    cr.b(b.a).a(bb.a).K.e(), true);
    bb.a).K.k();
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.ui.e.es
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */