.class Lcom/estrongs/android/ui/view/bl;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnTouchListener;


# instance fields
.field final synthetic a:Lcom/estrongs/android/ui/view/IndicatorView;


# direct methods
.method constructor <init>(Lcom/estrongs/android/ui/view/IndicatorView;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/ui/view/bl;->a:Lcom/estrongs/android/ui/view/IndicatorView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 4

    const/4 v1, 0x1

    const/4 v3, 0x0

    :try_start_0
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/estrongs/android/ui/view/bl;->a:Lcom/estrongs/android/ui/view/IndicatorView;

    iget-object v1, p0, Lcom/estrongs/android/ui/view/bl;->a:Lcom/estrongs/android/ui/view/IndicatorView;

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    float-to-int v2, v2

    invoke-static {v1, v2}, Lcom/estrongs/android/ui/view/IndicatorView;->b(Lcom/estrongs/android/ui/view/IndicatorView;I)I

    move-result v1

    invoke-static {v0, v1}, Lcom/estrongs/android/ui/view/IndicatorView;->a(Lcom/estrongs/android/ui/view/IndicatorView;I)I

    iget-object v0, p0, Lcom/estrongs/android/ui/view/bl;->a:Lcom/estrongs/android/ui/view/IndicatorView;

    invoke-static {v0}, Lcom/estrongs/android/ui/view/IndicatorView;->f(Lcom/estrongs/android/ui/view/IndicatorView;)I

    move-result v0

    if-ltz v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/ui/view/bl;->a:Lcom/estrongs/android/ui/view/IndicatorView;

    invoke-static {v0}, Lcom/estrongs/android/ui/view/IndicatorView;->d(Lcom/estrongs/android/ui/view/IndicatorView;)Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lcom/estrongs/android/ui/view/bl;->a:Lcom/estrongs/android/ui/view/IndicatorView;

    invoke-static {v1}, Lcom/estrongs/android/ui/view/IndicatorView;->f(Lcom/estrongs/android/ui/view/IndicatorView;)I

    move-result v1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/estrongs/android/ui/view/bn;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/estrongs/android/ui/view/bn;->a(Lcom/estrongs/android/ui/view/bn;Z)Z

    iget-object v0, p0, Lcom/estrongs/android/ui/view/bl;->a:Lcom/estrongs/android/ui/view/IndicatorView;

    invoke-virtual {v0}, Lcom/estrongs/android/ui/view/IndicatorView;->invalidate()V

    :cond_0
    :goto_0
    return v3

    :cond_1
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-eq v0, v1, :cond_2

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    :cond_2
    iget-object v0, p0, Lcom/estrongs/android/ui/view/bl;->a:Lcom/estrongs/android/ui/view/IndicatorView;

    invoke-static {v0}, Lcom/estrongs/android/ui/view/IndicatorView;->f(Lcom/estrongs/android/ui/view/IndicatorView;)I

    move-result v0

    if-ltz v0, :cond_3

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    float-to-int v1, v0

    iget-object v0, p0, Lcom/estrongs/android/ui/view/bl;->a:Lcom/estrongs/android/ui/view/IndicatorView;

    invoke-static {v0}, Lcom/estrongs/android/ui/view/IndicatorView;->d(Lcom/estrongs/android/ui/view/IndicatorView;)Ljava/util/List;

    move-result-object v0

    iget-object v2, p0, Lcom/estrongs/android/ui/view/bl;->a:Lcom/estrongs/android/ui/view/IndicatorView;

    invoke-static {v2}, Lcom/estrongs/android/ui/view/IndicatorView;->f(Lcom/estrongs/android/ui/view/IndicatorView;)I

    move-result v2

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/estrongs/android/ui/view/bn;

    const/4 v2, 0x0

    invoke-static {v0, v2}, Lcom/estrongs/android/ui/view/bn;->a(Lcom/estrongs/android/ui/view/bn;Z)Z

    if-ltz v1, :cond_4

    iget-object v0, p0, Lcom/estrongs/android/ui/view/bl;->a:Lcom/estrongs/android/ui/view/IndicatorView;

    invoke-virtual {v0}, Lcom/estrongs/android/ui/view/IndicatorView;->getHeight()I

    move-result v0

    if-gt v1, v0, :cond_4

    iget-object v0, p0, Lcom/estrongs/android/ui/view/bl;->a:Lcom/estrongs/android/ui/view/IndicatorView;

    iget-object v1, p0, Lcom/estrongs/android/ui/view/bl;->a:Lcom/estrongs/android/ui/view/IndicatorView;

    invoke-static {v1}, Lcom/estrongs/android/ui/view/IndicatorView;->f(Lcom/estrongs/android/ui/view/IndicatorView;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/estrongs/android/ui/view/IndicatorView;->c(I)V

    :cond_3
    :goto_1
    iget-object v0, p0, Lcom/estrongs/android/ui/view/bl;->a:Lcom/estrongs/android/ui/view/IndicatorView;

    const/4 v1, -0x1

    invoke-static {v0, v1}, Lcom/estrongs/android/ui/view/IndicatorView;->a(Lcom/estrongs/android/ui/view/IndicatorView;I)I

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_0

    :cond_4
    iget-object v0, p0, Lcom/estrongs/android/ui/view/bl;->a:Lcom/estrongs/android/ui/view/IndicatorView;

    invoke-virtual {v0}, Lcom/estrongs/android/ui/view/IndicatorView;->invalidate()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1
.end method
