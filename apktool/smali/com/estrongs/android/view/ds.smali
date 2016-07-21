.class Lcom/estrongs/android/view/ds;
.super Lcom/estrongs/android/appinfo/p;


# instance fields
.field final synthetic a:Lcom/estrongs/android/view/dq;


# direct methods
.method constructor <init>(Lcom/estrongs/android/view/dq;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/view/ds;->a:Lcom/estrongs/android/view/dq;

    invoke-direct {p0}, Lcom/estrongs/android/appinfo/p;-><init>()V

    return-void
.end method


# virtual methods
.method public b()V
    .locals 4

    iget-object v0, p0, Lcom/estrongs/android/view/ds;->a:Lcom/estrongs/android/view/dq;

    iget-object v0, v0, Lcom/estrongs/android/view/dq;->e:Lcom/estrongs/android/view/cr;

    iget-object v0, v0, Lcom/estrongs/android/view/cr;->W:Landroid/os/Handler;

    iget-object v1, p0, Lcom/estrongs/android/view/ds;->a:Lcom/estrongs/android/view/dq;

    iget-object v1, v1, Lcom/estrongs/android/view/dq;->d:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v0, p0, Lcom/estrongs/android/view/ds;->a:Lcom/estrongs/android/view/dq;

    iget-object v0, v0, Lcom/estrongs/android/view/dq;->e:Lcom/estrongs/android/view/cr;

    iget-object v0, v0, Lcom/estrongs/android/view/cr;->W:Landroid/os/Handler;

    iget-object v1, p0, Lcom/estrongs/android/view/ds;->a:Lcom/estrongs/android/view/dq;

    iget-object v1, v1, Lcom/estrongs/android/view/dq;->d:Ljava/lang/Runnable;

    const-wide/16 v2, 0x64

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method
