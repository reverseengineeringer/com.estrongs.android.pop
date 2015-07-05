.class Lcom/estrongs/android/ui/c/b/i;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:I

.field final synthetic b:Lcom/estrongs/android/ui/c/a/d;

.field final synthetic c:Lcom/estrongs/android/ui/c/b/f;


# direct methods
.method constructor <init>(Lcom/estrongs/android/ui/c/b/f;ILcom/estrongs/android/ui/c/a/d;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/ui/c/b/i;->c:Lcom/estrongs/android/ui/c/b/f;

    iput p2, p0, Lcom/estrongs/android/ui/c/b/i;->a:I

    iput-object p3, p0, Lcom/estrongs/android/ui/c/b/i;->b:Lcom/estrongs/android/ui/c/a/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    const/4 v0, 0x1

    :goto_0
    const/16 v1, 0x14

    if-gt v0, v1, :cond_0

    const/high16 v1, 0x3f800000    # 1.0f

    int-to-float v2, v0

    mul-float/2addr v1, v2

    const/high16 v2, 0x41a00000    # 20.0f

    div-float/2addr v1, v2

    iget v2, p0, Lcom/estrongs/android/ui/c/b/i;->a:I

    int-to-float v2, v2

    mul-float/2addr v1, v2

    float-to-int v1, v1

    iget-object v2, p0, Lcom/estrongs/android/ui/c/b/i;->c:Lcom/estrongs/android/ui/c/b/f;

    invoke-static {v2}, Lcom/estrongs/android/ui/c/b/f;->a(Lcom/estrongs/android/ui/c/b/f;)Landroid/os/Handler;

    move-result-object v2

    new-instance v3, Lcom/estrongs/android/ui/c/b/j;

    invoke-direct {v3, p0, v1}, Lcom/estrongs/android/ui/c/b/j;-><init>(Lcom/estrongs/android/ui/c/b/i;I)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    const-wide/16 v2, 0xf

    :try_start_0
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_1

    :cond_0
    return-void
.end method
