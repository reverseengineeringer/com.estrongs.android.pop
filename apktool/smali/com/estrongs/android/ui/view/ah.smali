.class Lcom/estrongs/android/ui/view/ah;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnTouchListener;


# instance fields
.field final synthetic a:Lcom/estrongs/android/ui/view/aj;

.field final synthetic b:Lcom/estrongs/android/ui/view/ac;


# direct methods
.method constructor <init>(Lcom/estrongs/android/ui/view/ac;Lcom/estrongs/android/ui/view/aj;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/ui/view/ah;->b:Lcom/estrongs/android/ui/view/ac;

    iput-object p2, p0, Lcom/estrongs/android/ui/view/ah;->a:Lcom/estrongs/android/ui/view/aj;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/estrongs/android/ui/view/ah;->b:Lcom/estrongs/android/ui/view/ac;

    invoke-static {v0}, Lcom/estrongs/android/ui/view/ac;->b(Lcom/estrongs/android/ui/view/ac;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return v2

    :cond_1
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/ui/view/ah;->b:Lcom/estrongs/android/ui/view/ac;

    invoke-static {v0}, Lcom/estrongs/android/ui/view/ac;->e(Lcom/estrongs/android/ui/view/ac;)Landroid/support/v7/widget/helper/ItemTouchHelper;

    move-result-object v0

    iget-object v1, p0, Lcom/estrongs/android/ui/view/ah;->a:Lcom/estrongs/android/ui/view/aj;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/helper/ItemTouchHelper;->startDrag(Landroid/support/v7/widget/RecyclerView$ViewHolder;)V

    goto :goto_0
.end method
