.class Lcom/estrongs/android/pop/app/imageviewer/br;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/estrongs/android/pop/app/imageviewer/am;


# instance fields
.field final synthetic a:Landroid/view/MotionEvent;

.field final synthetic b:Lcom/estrongs/android/pop/app/imageviewer/bq;


# direct methods
.method constructor <init>(Lcom/estrongs/android/pop/app/imageviewer/bq;Landroid/view/MotionEvent;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/pop/app/imageviewer/br;->b:Lcom/estrongs/android/pop/app/imageviewer/bq;

    iput-object p2, p0, Lcom/estrongs/android/pop/app/imageviewer/br;->a:Landroid/view/MotionEvent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(IF)V
    .locals 3

    const/4 v2, 0x1

    if-nez p1, :cond_0

    const/high16 v0, 0x41200000    # 10.0f

    cmpl-float v0, p2, v0

    if-gtz v0, :cond_1

    :cond_0
    if-ne p1, v2, :cond_2

    const/high16 v0, -0x3ee00000    # -10.0f

    cmpg-float v0, p2, v0

    if-gez v0, :cond_2

    :cond_1
    iget-object v0, p0, Lcom/estrongs/android/pop/app/imageviewer/br;->b:Lcom/estrongs/android/pop/app/imageviewer/bq;

    iget-object v0, v0, Lcom/estrongs/android/pop/app/imageviewer/bq;->d:Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;

    iget-object v0, v0, Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;->i:Lcom/estrongs/android/widget/RealViewSwitcher;

    iget-object v1, p0, Lcom/estrongs/android/pop/app/imageviewer/br;->a:Landroid/view/MotionEvent;

    invoke-virtual {v0, v1}, Lcom/estrongs/android/widget/RealViewSwitcher;->onTouchEvent(Landroid/view/MotionEvent;)Z

    iget-object v0, p0, Lcom/estrongs/android/pop/app/imageviewer/br;->b:Lcom/estrongs/android/pop/app/imageviewer/bq;

    iput-boolean v2, v0, Lcom/estrongs/android/pop/app/imageviewer/bq;->a:Z

    :cond_2
    iget-object v0, p0, Lcom/estrongs/android/pop/app/imageviewer/br;->b:Lcom/estrongs/android/pop/app/imageviewer/bq;

    iget-object v0, v0, Lcom/estrongs/android/pop/app/imageviewer/bq;->d:Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;

    iget v0, v0, Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;->c:I

    if-nez v0, :cond_3

    if-eqz p1, :cond_4

    :cond_3
    iget-object v0, p0, Lcom/estrongs/android/pop/app/imageviewer/br;->b:Lcom/estrongs/android/pop/app/imageviewer/bq;

    iget-object v0, v0, Lcom/estrongs/android/pop/app/imageviewer/bq;->d:Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;

    iget v0, v0, Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;->c:I

    iget-object v1, p0, Lcom/estrongs/android/pop/app/imageviewer/br;->b:Lcom/estrongs/android/pop/app/imageviewer/bq;

    iget-object v1, v1, Lcom/estrongs/android/pop/app/imageviewer/bq;->d:Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;

    iget-object v1, v1, Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;->e:Lcom/estrongs/android/pop/app/imageviewer/gallery/f;

    invoke-interface {v1}, Lcom/estrongs/android/pop/app/imageviewer/gallery/f;->b()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-ne v0, v1, :cond_5

    if-ne p1, v2, :cond_5

    :cond_4
    iget-object v0, p0, Lcom/estrongs/android/pop/app/imageviewer/br;->b:Lcom/estrongs/android/pop/app/imageviewer/bq;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/estrongs/android/pop/app/imageviewer/bq;->a:Z

    :cond_5
    return-void
.end method
