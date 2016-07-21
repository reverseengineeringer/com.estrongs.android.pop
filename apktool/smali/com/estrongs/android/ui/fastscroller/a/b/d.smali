.class public abstract Lcom/estrongs/android/ui/fastscroller/a/b/d;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/estrongs/android/ui/fastscroller/a/b/b;


# instance fields
.field private final a:Lcom/estrongs/android/ui/fastscroller/a/a;


# direct methods
.method public constructor <init>(Lcom/estrongs/android/ui/fastscroller/a/a;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/estrongs/android/ui/fastscroller/a/b/d;->a:Lcom/estrongs/android/ui/fastscroller/a/a;

    return-void
.end method


# virtual methods
.method public a(Landroid/view/MotionEvent;)F
    .locals 2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iget-object v1, p0, Lcom/estrongs/android/ui/fastscroller/a/b/d;->a:Lcom/estrongs/android/ui/fastscroller/a/a;

    invoke-virtual {v1}, Lcom/estrongs/android/ui/fastscroller/a/a;->a()F

    move-result v1

    cmpg-float v1, v0, v1

    if-gtz v1, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v1, p0, Lcom/estrongs/android/ui/fastscroller/a/b/d;->a:Lcom/estrongs/android/ui/fastscroller/a/a;

    invoke-virtual {v1}, Lcom/estrongs/android/ui/fastscroller/a/a;->b()F

    move-result v1

    cmpl-float v1, v0, v1

    if-ltz v1, :cond_1

    const/high16 v0, 0x3f800000    # 1.0f

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/estrongs/android/ui/fastscroller/a/b/d;->a:Lcom/estrongs/android/ui/fastscroller/a/a;

    invoke-virtual {v1}, Lcom/estrongs/android/ui/fastscroller/a/a;->b()F

    move-result v1

    div-float/2addr v0, v1

    goto :goto_0
.end method
