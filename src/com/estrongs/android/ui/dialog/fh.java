package com.estrongs.android.ui.dialog;

import android.content.Context;
import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;
import android.view.View;
import android.widget.EditText;
import com.estrongs.android.pop.a;
import com.estrongs.android.ui.e.ib;
import com.estrongs.android.ui.view.ak;
import java.io.File;

class fh
  implements DialogInterface.OnClickListener
{
  fh(ff paramff) {}
  
  public void onClick(DialogInterface paramDialogInterface, int paramInt)
  {
    Object localObject1 = (EditText)ff.a(a).findViewById(2131624134);
    Object localObject2 = (EditText)ff.a(a).findViewById(2131624136);
    localObject1 = ((EditText)localObject1).getText().toString();
    localObject2 = ((EditText)localObject2).getText().toString();
    if ((localObject1 == null) || (((String)localObject1).equals(""))) {
      ak.a(ff.b(a), 2131232524, 0);
    }
    File localFile;
    label260:
    do
    {
      do
      {
        return;
        if ((localObject2 == null) || (((String)localObject2).equals("")))
        {
          ak.a(ff.b(a), 2131231792, 0);
          return;
        }
        if (!ib.a((String)localObject2))
        {
          ak.a(ff.b(a), ff.b(a).getString(2131231764), 1);
          return;
        }
        if (!ff.c(a)) {
          break label371;
        }
        localFile = new File(a.n, ff.d(a));
        if (!localFile.exists()) {
          break label260;
        }
        localObject2 = new File(a.n, (String)localObject2);
        if (!((File)localObject2).exists()) {
          break;
        }
      } while (!((File)localObject2).getAbsolutePath().equals(localFile.getAbsolutePath()));
      ak.a(ff.b(a), ff.b(a).getString(2131231901), 1);
      return;
      ff.a(ff.b(a), localFile, (File)localObject2, (String)localObject1);
      paramDialogInterface.dismiss();
      return;
      localFile = new File(a.o, ff.d(a));
      if (!localFile.exists()) {
        break label391;
      }
      localObject2 = new File(a.o, (String)localObject2);
      if (!((File)localObject2).exists()) {
        break;
      }
    } while (!((File)localObject2).getAbsolutePath().equals(localFile.getAbsolutePath()));
    ak.a(ff.b(a), ff.b(a).getString(2131231901), 1);
    return;
    ff.a(ff.b(a), localFile, (File)localObject2, (String)localObject1);
    paramDialogInterface.dismiss();
    return;
    label371:
    ff.a(ff.b(a), (String)localObject1, ff.c(a), (String)localObject2);
    label391:
    paramDialogInterface.dismiss();
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.ui.dialog.fh
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */