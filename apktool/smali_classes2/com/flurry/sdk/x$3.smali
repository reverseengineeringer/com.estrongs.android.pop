.class Lcom/flurry/sdk/x$3;
.super Landroid/view/GestureDetector$SimpleOnGestureListener;


# instance fields
.field final synthetic a:Lcom/flurry/sdk/x;


# direct methods
.method constructor <init>(Lcom/flurry/sdk/x;)V
    .locals 0

    iput-object p1, p0, Lcom/flurry/sdk/x$3;->a:Lcom/flurry/sdk/x;

    invoke-direct {p0}, Landroid/view/GestureDetector$SimpleOnGestureListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onDown(Landroid/view/MotionEvent;)Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public onSingleTapConfirmed(Landroid/view/MotionEvent;)Z
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/flurry/sdk/x$3;->a:Lcom/flurry/sdk/x;

    invoke-static {v0}, Lcom/flurry/sdk/x;->i(Lcom/flurry/sdk/x;)Lcom/flurry/sdk/ge;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/flurry/sdk/x$3;->a:Lcom/flurry/sdk/x;

    invoke-virtual {v0}, Lcom/flurry/sdk/x;->G()V

    :cond_0
    iget-object v0, p0, Lcom/flurry/sdk/x$3;->a:Lcom/flurry/sdk/x;

    invoke-static {v0}, Lcom/flurry/sdk/x;->i(Lcom/flurry/sdk/x;)Lcom/flurry/sdk/ge;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/flurry/sdk/x$3;->a:Lcom/flurry/sdk/x;

    invoke-static {v0}, Lcom/flurry/sdk/x;->i(Lcom/flurry/sdk/x;)Lcom/flurry/sdk/ge;

    move-result-object v0

    invoke-virtual {v0}, Lcom/flurry/sdk/ge;->i()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/flurry/sdk/x$3;->a:Lcom/flurry/sdk/x;

    invoke-static {v0}, Lcom/flurry/sdk/x;->i(Lcom/flurry/sdk/x;)Lcom/flurry/sdk/ge;

    move-result-object v0

    invoke-virtual {v0}, Lcom/flurry/sdk/ge;->r()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/flurry/sdk/x$3;->a:Lcom/flurry/sdk/x;

    invoke-static {v0}, Lcom/flurry/sdk/x;->i(Lcom/flurry/sdk/x;)Lcom/flurry/sdk/ge;

    move-result-object v0

    sget-object v1, Lcom/flurry/sdk/ge$a;->b:Lcom/flurry/sdk/ge$a;

    invoke-virtual {v0, v1, v2}, Lcom/flurry/sdk/ge;->a(Lcom/flurry/sdk/ge$a;I)V

    :cond_1
    return v2
.end method
