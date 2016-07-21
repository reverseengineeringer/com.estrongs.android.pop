package com.estrongs.android.pop.app.editor;

import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;
import com.estrongs.android.pop.m;

class o
  implements DialogInterface.OnClickListener
{
  o(PopNoteEditor paramPopNoteEditor) {}
  
  public void onClick(DialogInterface paramDialogInterface, int paramInt)
  {
    PopNoteEditor.a(a, new ab(a, null));
    PopNoteEditor.r(a).setTaskDecisionListener(new m(a));
    PopNoteEditor.r(a).execute();
    paramDialogInterface.dismiss();
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.pop.app.editor.o
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */