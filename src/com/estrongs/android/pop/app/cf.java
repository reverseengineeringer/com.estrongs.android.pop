package com.estrongs.android.pop.app;

import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;
import android.content.Intent;
import android.net.Uri;
import com.estrongs.android.ui.dialog.ci;
import com.estrongs.android.util.ap;
import com.estrongs.android.widget.f;
import java.io.File;

class cf
  implements DialogInterface.OnClickListener
{
  cf(FileChooserActivity paramFileChooserActivity) {}
  
  public void onClick(DialogInterface paramDialogInterface, int paramInt)
  {
    Object localObject = a.a.d();
    paramDialogInterface = a.getIntent().getStringExtra("tplink-file-save");
    if ((paramDialogInterface != null) && (new File((String)localObject + "/" + paramDialogInterface).exists()))
    {
      localObject = new ci(a);
      ((ci)localObject).setTitle(a.getString(2131231340));
      ((ci)localObject).setMessage(String.format(a.getString(2131231476), new Object[] { paramDialogInterface }));
      ((ci)localObject).setConfirmButton(a.getString(2131231273), new cg(this, (ci)localObject));
      ((ci)localObject).setCancelButton(a.getString(2131231269), null);
      ((ci)localObject).show();
      return;
    }
    if (ap.bl((String)localObject)) {}
    for (paramDialogInterface = new Intent(null, Uri.fromFile(new File((String)localObject)));; paramDialogInterface = new Intent(null, Uri.parse((String)localObject)))
    {
      a.setResult(-1, paramDialogInterface);
      a.finish();
      return;
    }
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.pop.app.cf
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */