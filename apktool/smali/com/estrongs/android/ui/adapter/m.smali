.class Lcom/estrongs/android/ui/adapter/m;
.super Lcom/estrongs/android/appinfo/p;


# instance fields
.field final synthetic a:Lcom/estrongs/android/ui/adapter/k;


# direct methods
.method constructor <init>(Lcom/estrongs/android/ui/adapter/k;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/ui/adapter/m;->a:Lcom/estrongs/android/ui/adapter/k;

    invoke-direct {p0}, Lcom/estrongs/android/appinfo/p;-><init>()V

    return-void
.end method


# virtual methods
.method public b()V
    .locals 4

    invoke-static {}, Lcom/estrongs/android/util/bk;->n()Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/estrongs/android/ui/adapter/m;->a:Lcom/estrongs/android/ui/adapter/k;

    iget-object v1, v1, Lcom/estrongs/android/ui/adapter/k;->a:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    invoke-static {}, Lcom/estrongs/android/util/bk;->n()Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/estrongs/android/ui/adapter/m;->a:Lcom/estrongs/android/ui/adapter/k;

    iget-object v1, v1, Lcom/estrongs/android/ui/adapter/k;->a:Ljava/lang/Runnable;

    const-wide/16 v2, 0x64

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method
