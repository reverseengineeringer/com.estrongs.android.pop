package com.estrongs.android.pop.app.editor;

import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;
import com.estrongs.a.a;
import com.estrongs.android.pop.m;

class r
  implements DialogInterface.OnClickListener
{
  r(PopNoteEditor paramPopNoteEditor, boolean paramBoolean) {}
  
  public void onClick(DialogInterface paramDialogInterface, int paramInt)
  {
    s locals = new s(this);
    locals.setTaskDecisionListener(new m(b));
    locals.execute();
    paramDialogInterface.dismiss();
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.pop.app.editor.r
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */