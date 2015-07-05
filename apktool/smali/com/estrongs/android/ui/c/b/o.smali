.class Lcom/estrongs/android/ui/c/b/o;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/estrongs/android/ui/c/b/s;

.field final synthetic b:Lcom/estrongs/android/ui/c/a/f;

.field final synthetic c:Lcom/estrongs/android/ui/c/b/l;


# direct methods
.method constructor <init>(Lcom/estrongs/android/ui/c/b/l;Lcom/estrongs/android/ui/c/b/s;Lcom/estrongs/android/ui/c/a/f;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/ui/c/b/o;->c:Lcom/estrongs/android/ui/c/b/l;

    iput-object p2, p0, Lcom/estrongs/android/ui/c/b/o;->a:Lcom/estrongs/android/ui/c/b/s;

    iput-object p3, p0, Lcom/estrongs/android/ui/c/b/o;->b:Lcom/estrongs/android/ui/c/a/f;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 10

    iget-object v0, p0, Lcom/estrongs/android/ui/c/b/o;->a:Lcom/estrongs/android/ui/c/b/s;

    iget-wide v8, v0, Lcom/estrongs/android/ui/c/b/s;->b:J

    iget-object v0, p0, Lcom/estrongs/android/ui/c/b/o;->a:Lcom/estrongs/android/ui/c/b/s;

    iget-wide v4, v0, Lcom/estrongs/android/ui/c/b/s;->c:J

    const/4 v0, 0x1

    move v6, v0

    :goto_0
    const/16 v0, 0x32

    if-gt v6, v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/ui/c/b/o;->c:Lcom/estrongs/android/ui/c/b/l;

    invoke-static {v0}, Lcom/estrongs/android/ui/c/b/l;->d(Lcom/estrongs/android/ui/c/b/l;)Landroid/view/animation/Interpolator;

    move-result-object v0

    const/high16 v1, 0x3f800000    # 1.0f

    int-to-float v2, v6

    mul-float/2addr v1, v2

    const/high16 v2, 0x42480000    # 50.0f

    div-float/2addr v1, v2

    invoke-interface {v0, v1}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result v0

    long-to-float v1, v8

    mul-float/2addr v0, v1

    float-to-long v2, v0

    iget-object v0, p0, Lcom/estrongs/android/ui/c/b/o;->c:Lcom/estrongs/android/ui/c/b/l;

    invoke-static {v0}, Lcom/estrongs/android/ui/c/b/l;->e(Lcom/estrongs/android/ui/c/b/l;)Landroid/os/Handler;

    move-result-object v7

    new-instance v0, Lcom/estrongs/android/ui/c/b/p;

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/estrongs/android/ui/c/b/p;-><init>(Lcom/estrongs/android/ui/c/b/o;JJ)V

    invoke-virtual {v7, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    const-wide/16 v0, 0xa

    :try_start_0
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    add-int/lit8 v0, v6, 0x1

    move v6, v0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_1

    :cond_0
    return-void
.end method
