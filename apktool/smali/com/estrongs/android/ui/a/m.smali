.class Lcom/estrongs/android/ui/a/m;
.super Lcom/estrongs/android/appinfo/o;


# instance fields
.field final synthetic a:Lcom/estrongs/android/ui/a/k;


# direct methods
.method constructor <init>(Lcom/estrongs/android/ui/a/k;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/ui/a/m;->a:Lcom/estrongs/android/ui/a/k;

    invoke-direct {p0}, Lcom/estrongs/android/appinfo/o;-><init>()V

    return-void
.end method


# virtual methods
.method public b()V
    .locals 4

    invoke-static {}, Lcom/estrongs/android/util/bd;->n()Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/estrongs/android/ui/a/m;->a:Lcom/estrongs/android/ui/a/k;

    iget-object v1, v1, Lcom/estrongs/android/ui/a/k;->a:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    invoke-static {}, Lcom/estrongs/android/util/bd;->n()Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/estrongs/android/ui/a/m;->a:Lcom/estrongs/android/ui/a/k;

    iget-object v1, v1, Lcom/estrongs/android/ui/a/k;->a:Ljava/lang/Runnable;

    const-wide/16 v2, 0x64

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method
