package com.estrongs.android.pop.app;

import android.support.v7.widget.RecyclerView;
import android.support.v7.widget.RecyclerView.ViewHolder;
import android.support.v7.widget.helper.ItemTouchHelper.SimpleCallback;
import com.estrongs.android.pop.app.c.i;
import com.estrongs.android.pop.app.c.j;
import com.estrongs.android.ui.view.ac;
import java.util.List;

class fu
  extends ItemTouchHelper.SimpleCallback
{
  fu(PopAudioPlayer paramPopAudioPlayer, int paramInt1, int paramInt2)
  {
    super(paramInt1, paramInt2);
  }
  
  public boolean isLongPressDragEnabled()
  {
    return false;
  }
  
  public boolean onMove(RecyclerView paramRecyclerView, RecyclerView.ViewHolder paramViewHolder1, RecyclerView.ViewHolder paramViewHolder2)
  {
    paramRecyclerView = PopAudioPlayer.h(a).a();
    if (paramRecyclerView == null) {
      return false;
    }
    int i = paramViewHolder1.getAdapterPosition();
    int j = paramViewHolder2.getAdapterPosition();
    paramRecyclerView.a((i)paramRecyclerView.c().get(i), j);
    PopAudioPlayer.h(a).notifyItemChanged(j);
    PopAudioPlayer.h(a).notifyItemMoved(i, j);
    return true;
  }
  
  public void onSelectedChanged(RecyclerView.ViewHolder paramViewHolder, int paramInt)
  {
    super.onSelectedChanged(paramViewHolder, paramInt);
    if (paramInt == 0) {}
    try
    {
      PopAudioPlayer.h(a).notifyDataSetChanged();
      return;
    }
    catch (Exception paramViewHolder)
    {
      paramViewHolder.printStackTrace();
    }
  }
  
  public void onSwiped(RecyclerView.ViewHolder paramViewHolder, int paramInt) {}
}

/* Location:
 * Qualified Name:     com.estrongs.android.pop.app.fu
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */