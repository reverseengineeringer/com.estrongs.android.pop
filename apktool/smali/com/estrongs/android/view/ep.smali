.class Lcom/estrongs/android/view/ep;
.super Lcom/estrongs/android/view/dt;

# interfaces
.implements Landroid/view/View$OnTouchListener;


# instance fields
.field b:I

.field final synthetic c:Lcom/estrongs/android/view/eb;


# direct methods
.method constructor <init>(Lcom/estrongs/android/view/eb;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/view/ep;->c:Lcom/estrongs/android/view/eb;

    invoke-direct {p0, p1}, Lcom/estrongs/android/view/dt;-><init>(Lcom/estrongs/android/view/cr;)V

    return-void
.end method


# virtual methods
.method public onScrollStateChanged(Landroid/support/v7/widget/RecyclerView;I)V
    .locals 2

    invoke-super {p0, p1, p2}, Lcom/estrongs/android/view/dt;->onScrollStateChanged(Landroid/support/v7/widget/RecyclerView;I)V

    iget-object v0, p0, Lcom/estrongs/android/view/ep;->c:Lcom/estrongs/android/view/eb;

    invoke-static {v0}, Lcom/estrongs/android/view/eb;->c(Lcom/estrongs/android/view/eb;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/view/ep;->c:Lcom/estrongs/android/view/eb;

    invoke-static {v0}, Lcom/estrongs/android/view/eb;->d(Lcom/estrongs/android/view/eb;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/view/ep;->c:Lcom/estrongs/android/view/eb;

    iget-object v0, v0, Lcom/estrongs/android/view/eb;->g:Landroid/support/v7/widget/GridLayoutManager;

    invoke-virtual {v0}, Landroid/support/v7/widget/GridLayoutManager;->findLastVisibleItemPosition()I

    move-result v0

    iget-object v1, p0, Lcom/estrongs/android/view/ep;->c:Lcom/estrongs/android/view/eb;

    iget-object v1, v1, Lcom/estrongs/android/view/eb;->i:Lcom/estrongs/android/view/ck;

    invoke-virtual {v1}, Lcom/estrongs/android/view/ck;->getItemCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/view/ep;->c:Lcom/estrongs/android/view/eb;

    invoke-static {v0}, Lcom/estrongs/android/view/eb;->e(Lcom/estrongs/android/view/eb;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/view/ep;->c:Lcom/estrongs/android/view/eb;

    invoke-static {v0}, Lcom/estrongs/android/view/eb;->f(Lcom/estrongs/android/view/eb;)V

    :cond_0
    return-void
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 4

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/estrongs/android/view/ep;->c:Lcom/estrongs/android/view/eb;

    invoke-static {v0}, Lcom/estrongs/android/view/eb;->d(Lcom/estrongs/android/view/eb;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    float-to-int v0, v0

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    :cond_0
    :goto_0
    :pswitch_0
    return v1

    :pswitch_1
    iput v0, p0, Lcom/estrongs/android/view/ep;->b:I

    goto :goto_0

    :pswitch_2
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    float-to-int v0, v0

    iget v2, p0, Lcom/estrongs/android/view/ep;->b:I

    sub-int/2addr v0, v2

    iget-object v2, p0, Lcom/estrongs/android/view/ep;->c:Lcom/estrongs/android/view/eb;

    if-gez v0, :cond_1

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    const/16 v3, 0x64

    if-le v0, v3, :cond_1

    const/4 v0, 0x1

    :goto_1
    invoke-static {v2, v0}, Lcom/estrongs/android/view/eb;->b(Lcom/estrongs/android/view/eb;Z)Z

    goto :goto_0

    :cond_1
    move v0, v1

    goto :goto_1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method
