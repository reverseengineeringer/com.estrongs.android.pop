.class Lcom/estrongs/android/ui/fastscroller/a;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/estrongs/android/ui/fastscroller/AbsRecyclerViewFastScroller;


# direct methods
.method constructor <init>(Lcom/estrongs/android/ui/fastscroller/AbsRecyclerViewFastScroller;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/ui/fastscroller/a;->a:Lcom/estrongs/android/ui/fastscroller/AbsRecyclerViewFastScroller;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    const/4 v1, 0x4

    iget-object v0, p0, Lcom/estrongs/android/ui/fastscroller/a;->a:Lcom/estrongs/android/ui/fastscroller/AbsRecyclerViewFastScroller;

    invoke-virtual {v0}, Lcom/estrongs/android/ui/fastscroller/AbsRecyclerViewFastScroller;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/estrongs/android/ui/fastscroller/a;->a:Lcom/estrongs/android/ui/fastscroller/AbsRecyclerViewFastScroller;

    invoke-virtual {v0, v1}, Lcom/estrongs/android/ui/fastscroller/AbsRecyclerViewFastScroller;->setVisibility(I)V

    iget-object v0, p0, Lcom/estrongs/android/ui/fastscroller/a;->a:Lcom/estrongs/android/ui/fastscroller/AbsRecyclerViewFastScroller;

    iget-object v0, v0, Lcom/estrongs/android/ui/fastscroller/AbsRecyclerViewFastScroller;->d:Lcom/estrongs/android/ui/fastscroller/d;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/ui/fastscroller/a;->a:Lcom/estrongs/android/ui/fastscroller/AbsRecyclerViewFastScroller;

    iget-object v0, v0, Lcom/estrongs/android/ui/fastscroller/AbsRecyclerViewFastScroller;->d:Lcom/estrongs/android/ui/fastscroller/d;

    invoke-interface {v0, v1}, Lcom/estrongs/android/ui/fastscroller/d;->a(I)V

    goto :goto_0
.end method
