.class Lcom/flurry/sdk/gc$6;
.super Landroid/view/GestureDetector$SimpleOnGestureListener;


# instance fields
.field final synthetic a:Lcom/flurry/sdk/gc;


# direct methods
.method constructor <init>(Lcom/flurry/sdk/gc;)V
    .locals 0

    iput-object p1, p0, Lcom/flurry/sdk/gc$6;->a:Lcom/flurry/sdk/gc;

    invoke-direct {p0}, Landroid/view/GestureDetector$SimpleOnGestureListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onSingleTapConfirmed(Landroid/view/MotionEvent;)Z
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/flurry/sdk/gc$6;->a:Lcom/flurry/sdk/gc;

    iget-object v0, v0, Lcom/flurry/sdk/gc;->b:Lcom/flurry/sdk/go;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/flurry/sdk/gc$6;->a:Lcom/flurry/sdk/gc;

    iget-object v0, v0, Lcom/flurry/sdk/gc;->b:Lcom/flurry/sdk/go;

    invoke-virtual {v0}, Lcom/flurry/sdk/go;->k()Lcom/flurry/sdk/gq;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/flurry/sdk/gc$6;->a:Lcom/flurry/sdk/gc;

    iget-object v0, v0, Lcom/flurry/sdk/gc;->b:Lcom/flurry/sdk/go;

    invoke-virtual {v0}, Lcom/flurry/sdk/go;->k()Lcom/flurry/sdk/gq;

    move-result-object v0

    invoke-virtual {v0}, Lcom/flurry/sdk/gq;->i()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/flurry/sdk/gc$6;->a:Lcom/flurry/sdk/gc;

    invoke-static {v0}, Lcom/flurry/sdk/gc;->d(Lcom/flurry/sdk/gc;)Landroid/widget/RelativeLayout;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/flurry/sdk/gc$6;->a:Lcom/flurry/sdk/gc;

    iget-object v0, v0, Lcom/flurry/sdk/gc;->b:Lcom/flurry/sdk/go;

    invoke-virtual {v0}, Lcom/flurry/sdk/go;->k()Lcom/flurry/sdk/gq;

    move-result-object v0

    invoke-virtual {v0}, Lcom/flurry/sdk/gq;->j()V

    :cond_0
    :goto_0
    return v1

    :cond_1
    iget-object v0, p0, Lcom/flurry/sdk/gc$6;->a:Lcom/flurry/sdk/gc;

    iget-object v0, v0, Lcom/flurry/sdk/gc;->b:Lcom/flurry/sdk/go;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/flurry/sdk/gc$6;->a:Lcom/flurry/sdk/gc;

    iget-object v0, v0, Lcom/flurry/sdk/gc;->b:Lcom/flurry/sdk/go;

    invoke-virtual {v0}, Lcom/flurry/sdk/go;->b()Lcom/flurry/sdk/gp;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/flurry/sdk/gc$6;->a:Lcom/flurry/sdk/gc;

    invoke-static {v0}, Lcom/flurry/sdk/gc;->d(Lcom/flurry/sdk/gc;)Landroid/widget/RelativeLayout;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/flurry/sdk/gc$6;->a:Lcom/flurry/sdk/gc;

    iget-object v0, v0, Lcom/flurry/sdk/gc;->b:Lcom/flurry/sdk/go;

    invoke-virtual {v0}, Lcom/flurry/sdk/go;->b()Lcom/flurry/sdk/gp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/flurry/sdk/gp;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/flurry/sdk/gc$6;->a:Lcom/flurry/sdk/gc;

    iget-object v0, v0, Lcom/flurry/sdk/gc;->b:Lcom/flurry/sdk/go;

    invoke-virtual {v0}, Lcom/flurry/sdk/go;->b()Lcom/flurry/sdk/gp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/flurry/sdk/gp;->hide()V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/flurry/sdk/gc$6;->a:Lcom/flurry/sdk/gc;

    iget-object v0, v0, Lcom/flurry/sdk/gc;->b:Lcom/flurry/sdk/go;

    invoke-virtual {v0}, Lcom/flurry/sdk/go;->b()Lcom/flurry/sdk/gp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/flurry/sdk/gp;->show()V

    goto :goto_0
.end method
