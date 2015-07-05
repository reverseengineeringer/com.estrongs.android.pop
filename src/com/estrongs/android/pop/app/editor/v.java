package com.estrongs.android.pop.app.editor;

import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;
import com.estrongs.android.pop.m;

class v
  implements DialogInterface.OnClickListener
{
  v(PopNoteEditor paramPopNoteEditor) {}
  
  public void onClick(DialogInterface paramDialogInterface, int paramInt)
  {
    PopNoteEditor.a(a, new aj(a, null));
    PopNoteEditor.y(a).setTaskDecisionListener(new m(a));
    PopNoteEditor.y(a).execute();
    paramDialogInterface.dismiss();
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.pop.app.editor.v
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */