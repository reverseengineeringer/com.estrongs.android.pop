.class Lcom/estrongs/android/ui/drag/v;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/estrongs/android/ui/drag/u;


# direct methods
.method constructor <init>(Lcom/estrongs/android/ui/drag/u;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/ui/drag/v;->a:Lcom/estrongs/android/ui/drag/u;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 9

    const/4 v1, 0x0

    const/high16 v0, 0x3f800000    # 1.0f

    iget-object v2, p0, Lcom/estrongs/android/ui/drag/v;->a:Lcom/estrongs/android/ui/drag/u;

    iget-wide v4, v2, Lcom/estrongs/android/ui/drag/u;->e:J

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    sub-long v6, v2, v4

    iget-object v2, p0, Lcom/estrongs/android/ui/drag/v;->a:Lcom/estrongs/android/ui/drag/u;

    iget v3, v2, Lcom/estrongs/android/ui/drag/u;->b:I

    long-to-float v2, v6

    int-to-float v8, v3

    div-float/2addr v2, v8

    iget-object v8, p0, Lcom/estrongs/android/ui/drag/v;->a:Lcom/estrongs/android/ui/drag/u;

    iget-boolean v8, v8, Lcom/estrongs/android/ui/drag/u;->f:Z

    if-nez v8, :cond_0

    sub-float v2, v0, v2

    :cond_0
    cmpl-float v8, v2, v0

    if-lez v8, :cond_3

    :goto_0
    iget-object v1, p0, Lcom/estrongs/android/ui/drag/v;->a:Lcom/estrongs/android/ui/drag/u;

    iget v1, v1, Lcom/estrongs/android/ui/drag/u;->g:F

    iget-object v2, p0, Lcom/estrongs/android/ui/drag/v;->a:Lcom/estrongs/android/ui/drag/u;

    iput v0, v2, Lcom/estrongs/android/ui/drag/u;->g:F

    iget-object v2, p0, Lcom/estrongs/android/ui/drag/v;->a:Lcom/estrongs/android/ui/drag/u;

    iget-object v2, v2, Lcom/estrongs/android/ui/drag/u;->c:Lcom/estrongs/android/ui/drag/w;

    invoke-interface {v2, v0, v1}, Lcom/estrongs/android/ui/drag/w;->a(FF)V

    const-wide/16 v0, 0x21

    div-long v0, v6, v0

    long-to-int v0, v0

    add-int/lit8 v0, v0, 0x1

    mul-int/lit8 v0, v0, 0x21

    int-to-long v0, v0

    add-long/2addr v0, v4

    int-to-long v4, v3

    cmp-long v2, v6, v4

    if-gez v2, :cond_1

    iget-object v2, p0, Lcom/estrongs/android/ui/drag/v;->a:Lcom/estrongs/android/ui/drag/u;

    iget-object v2, v2, Lcom/estrongs/android/ui/drag/u;->a:Landroid/os/Handler;

    invoke-virtual {v2, p0, v0, v1}, Landroid/os/Handler;->postAtTime(Ljava/lang/Runnable;J)Z

    :cond_1
    int-to-long v0, v3

    cmp-long v0, v6, v0

    if-ltz v0, :cond_2

    iget-object v0, p0, Lcom/estrongs/android/ui/drag/v;->a:Lcom/estrongs/android/ui/drag/u;

    iget-object v0, v0, Lcom/estrongs/android/ui/drag/u;->c:Lcom/estrongs/android/ui/drag/w;

    invoke-interface {v0}, Lcom/estrongs/android/ui/drag/w;->b()V

    iget-object v0, p0, Lcom/estrongs/android/ui/drag/v;->a:Lcom/estrongs/android/ui/drag/u;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/estrongs/android/ui/drag/u;->d:Z

    :cond_2
    return-void

    :cond_3
    cmpg-float v0, v2, v1

    if-gez v0, :cond_4

    move v0, v1

    goto :goto_0

    :cond_4
    move v0, v2

    goto :goto_0
.end method
