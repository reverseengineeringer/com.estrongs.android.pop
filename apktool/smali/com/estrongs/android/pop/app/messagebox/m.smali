.class Lcom/estrongs/android/pop/app/messagebox/m;
.super Landroid/view/GestureDetector$SimpleOnGestureListener;


# instance fields
.field a:Lcom/estrongs/android/pop/app/messagebox/k;

.field final synthetic b:Lcom/estrongs/android/pop/app/messagebox/f;


# direct methods
.method public constructor <init>(Lcom/estrongs/android/pop/app/messagebox/f;Lcom/estrongs/android/pop/app/messagebox/k;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/pop/app/messagebox/m;->b:Lcom/estrongs/android/pop/app/messagebox/f;

    invoke-direct {p0}, Landroid/view/GestureDetector$SimpleOnGestureListener;-><init>()V

    iput-object p2, p0, Lcom/estrongs/android/pop/app/messagebox/m;->a:Lcom/estrongs/android/pop/app/messagebox/k;

    return-void
.end method


# virtual methods
.method public onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    sub-float/2addr v0, v1

    iget-object v1, p0, Lcom/estrongs/android/pop/app/messagebox/m;->b:Lcom/estrongs/android/pop/app/messagebox/f;

    invoke-static {v1}, Lcom/estrongs/android/pop/app/messagebox/f;->a(Lcom/estrongs/android/pop/app/messagebox/f;)I

    move-result v1

    int-to-float v1, v1

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/pop/app/messagebox/m;->a:Lcom/estrongs/android/pop/app/messagebox/k;

    invoke-interface {v0}, Lcom/estrongs/android/pop/app/messagebox/k;->b()V

    iget-object v0, p0, Lcom/estrongs/android/pop/app/messagebox/m;->b:Lcom/estrongs/android/pop/app/messagebox/f;

    invoke-static {v0}, Lcom/estrongs/android/pop/app/messagebox/f;->b(Lcom/estrongs/android/pop/app/messagebox/f;)Lcom/estrongs/android/pop/app/messagebox/DisableScrollListView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/estrongs/android/pop/app/messagebox/DisableScrollListView;->setListScrool(Z)V

    :goto_0
    const/4 v0, 0x1

    return v0

    :cond_0
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    sub-float/2addr v0, v1

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-lez v0, :cond_1

    iget-object v0, p0, Lcom/estrongs/android/pop/app/messagebox/m;->a:Lcom/estrongs/android/pop/app/messagebox/k;

    invoke-interface {v0}, Lcom/estrongs/android/pop/app/messagebox/k;->a()V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/estrongs/android/pop/app/messagebox/m;->a:Lcom/estrongs/android/pop/app/messagebox/k;

    invoke-interface {v0}, Lcom/estrongs/android/pop/app/messagebox/k;->a()V

    goto :goto_0
.end method

.method public onSingleTapConfirmed(Landroid/view/MotionEvent;)Z
    .locals 2

    iget-object v0, p0, Lcom/estrongs/android/pop/app/messagebox/m;->b:Lcom/estrongs/android/pop/app/messagebox/f;

    invoke-static {v0}, Lcom/estrongs/android/pop/app/messagebox/f;->c(Lcom/estrongs/android/pop/app/messagebox/f;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/pop/app/messagebox/m;->b:Lcom/estrongs/android/pop/app/messagebox/f;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/estrongs/android/pop/app/messagebox/f;->a(Z)V

    :goto_0
    const/4 v0, 0x1

    return v0

    :cond_0
    iget-object v0, p0, Lcom/estrongs/android/pop/app/messagebox/m;->b:Lcom/estrongs/android/pop/app/messagebox/f;

    invoke-static {v0}, Lcom/estrongs/android/pop/app/messagebox/f;->d(Lcom/estrongs/android/pop/app/messagebox/f;)Lcom/estrongs/android/pop/app/messagebox/l;

    move-result-object v0

    iget-object v1, p0, Lcom/estrongs/android/pop/app/messagebox/m;->b:Lcom/estrongs/android/pop/app/messagebox/f;

    invoke-interface {v0, v1}, Lcom/estrongs/android/pop/app/messagebox/l;->a(Lcom/estrongs/android/pop/app/messagebox/f;)V

    goto :goto_0
.end method
