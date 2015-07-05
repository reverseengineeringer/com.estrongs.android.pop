package com.estrongs.android.pop.app.editor;

import android.os.Handler;
import android.os.Message;
import com.estrongs.android.pop.utils.a;

class ah
  extends Thread
{
  private ah(PopNoteEditor paramPopNoteEditor) {}
  
  public void run()
  {
    PopNoteEditor.w(a);
    for (;;)
    {
      synchronized (PopNoteEditor.A(a))
      {
        try
        {
          PopNoteEditor.B(a).delete(0, PopNoteEditor.B(a).length());
          PopNoteEditor.a(a, new b(PopNoteEditor.l(a), PopNoteEditor.C(a), PopNoteEditor.t(a)));
          localObject2 = new char['က'];
          localObject4 = PopNoteEditor.E(a).a(PopNoteEditor.D(a) - 3 - 1);
          if (localObject4 == null) {
            break label333;
          }
        }
        catch (Exception localException1)
        {
          Object localObject2;
          Object localObject4;
          int j;
          a.a(a, 2131427594);
          continue;
        }
        try
        {
          PopNoteEditor.F(a).a(b);
          i = a;
          j = PopNoteEditor.D(a);
          i += 1;
          if ((j - 3 > i) && (PopNoteEditor.F(a).read((char[])localObject2) > 0)) {
            continue;
          }
          PopNoteEditor.G(a);
          i = 0;
          if (i < 3)
          {
            j = PopNoteEditor.F(a).read((char[])localObject2);
            if (j >= 0) {}
          }
          else
          {
            localObject2 = PopNoteEditor.s(a).obtainMessage(1);
            localObject4 = PopNoteEditor.B(a).toString();
            obj = new am(a, (String)localObject4, 0, PopNoteEditor.a(a, PopNoteEditor.a(a), (String)localObject4));
            PopNoteEditor.s(a).sendMessage((Message)localObject2);
            PopNoteEditor.H(a);
            return;
          }
        }
        catch (Exception localException2)
        {
          localException2.printStackTrace();
        }
        PopNoteEditor.B(a).append((char[])localObject2, 0, j);
        i += 1;
      }
      label333:
      int i = 0;
    }
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.pop.app.editor.ah
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */