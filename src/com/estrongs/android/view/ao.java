package com.estrongs.android.view;

import android.content.Context;
import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;
import com.estrongs.android.pop.app.compress.aj;
import com.estrongs.android.pop.view.FileExplorerActivity;
import com.estrongs.android.widget.f;
import com.estrongs.fs.h;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

class ao
  implements DialogInterface.OnClickListener
{
  ao(ak paramak, f paramf) {}
  
  public void onClick(DialogInterface paramDialogInterface, int paramInt)
  {
    Object localObject1 = a.i();
    if (((List)localObject1).size() == 0)
    {
      com.estrongs.android.ui.view.ak.a(b.ag, 2131231551, 0);
      return;
    }
    a.k();
    paramDialogInterface = new ArrayList();
    Object localObject2 = ((List)localObject1).iterator();
    while (((Iterator)localObject2).hasNext()) {
      paramDialogInterface.add(((h)((Iterator)localObject2).next()).getAbsolutePath());
    }
    localObject2 = (FileExplorerActivity)b.ag;
    localObject1 = (h)((List)localObject1).get(0);
    paramDialogInterface = new aj((Context)localObject2, ((h)localObject1).getAbsolutePath().substring(0, ((h)localObject1).getAbsolutePath().lastIndexOf('/')), paramDialogInterface);
    paramDialogInterface.a(new ap(this));
    paramDialogInterface.b();
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.view.ao
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */