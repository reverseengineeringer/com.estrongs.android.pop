.class Lcom/estrongs/android/ui/fastscroller/b;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:I

.field final synthetic b:Lcom/estrongs/android/ui/fastscroller/AbsRecyclerViewFastScroller;


# direct methods
.method constructor <init>(Lcom/estrongs/android/ui/fastscroller/AbsRecyclerViewFastScroller;I)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/ui/fastscroller/b;->b:Lcom/estrongs/android/ui/fastscroller/AbsRecyclerViewFastScroller;

    iput p2, p0, Lcom/estrongs/android/ui/fastscroller/b;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/estrongs/android/ui/fastscroller/b;->b:Lcom/estrongs/android/ui/fastscroller/AbsRecyclerViewFastScroller;

    invoke-static {v0}, Lcom/estrongs/android/ui/fastscroller/AbsRecyclerViewFastScroller;->a(Lcom/estrongs/android/ui/fastscroller/AbsRecyclerViewFastScroller;)Landroid/support/v7/widget/RecyclerView;

    move-result-object v0

    iget v1, p0, Lcom/estrongs/android/ui/fastscroller/b;->a:I

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->scrollToPosition(I)V

    return-void
.end method
