package com.estrongs.android.pop.app.editor;

import android.os.Handler;
import android.view.MenuItem;
import android.view.MenuItem.OnMenuItemClickListener;

class k
  implements MenuItem.OnMenuItemClickListener
{
  k(PopNoteEditor paramPopNoteEditor) {}
  
  public boolean onMenuItemClick(MenuItem paramMenuItem)
  {
    PopNoteEditor.q(a);
    paramMenuItem = PopNoteEditor.s(a).obtainMessage(5, 3, 0);
    PopNoteEditor.s(a).sendMessage(paramMenuItem);
    return true;
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.pop.app.editor.k
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */