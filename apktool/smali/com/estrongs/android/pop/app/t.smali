.class Lcom/estrongs/android/pop/app/t;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/estrongs/android/pop/app/r;


# direct methods
.method constructor <init>(Lcom/estrongs/android/pop/app/r;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/pop/app/t;->a:Lcom/estrongs/android/pop/app/r;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/estrongs/android/pop/app/t;->a:Lcom/estrongs/android/pop/app/r;

    invoke-static {v0, v3}, Lcom/estrongs/android/pop/app/r;->a(Lcom/estrongs/android/pop/app/r;Z)Z

    iget-object v0, p0, Lcom/estrongs/android/pop/app/t;->a:Lcom/estrongs/android/pop/app/r;

    invoke-static {v0}, Lcom/estrongs/android/pop/app/r;->a(Lcom/estrongs/android/pop/app/r;)Lcom/estrongs/android/pop/app/aa;

    move-result-object v0

    invoke-virtual {v0}, Lcom/estrongs/android/pop/app/aa;->e()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/pop/app/t;->a:Lcom/estrongs/android/pop/app/r;

    invoke-static {v0}, Lcom/estrongs/android/pop/app/r;->d(Lcom/estrongs/android/pop/app/r;)Landroid/app/Activity;

    move-result-object v0

    const v1, 0x7f0b04a5

    invoke-static {v0, v1, v3}, Lcom/estrongs/android/ui/view/ag;->a(Landroid/content/Context;II)V

    iget-object v0, p0, Lcom/estrongs/android/pop/app/t;->a:Lcom/estrongs/android/pop/app/r;

    invoke-static {v0, v2}, Lcom/estrongs/android/pop/app/r;->a(Lcom/estrongs/android/pop/app/r;Z)Z

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/estrongs/android/pop/app/t;->a:Lcom/estrongs/android/pop/app/r;

    invoke-static {v0}, Lcom/estrongs/android/pop/app/r;->g(Lcom/estrongs/android/pop/app/r;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/estrongs/android/pop/app/u;

    invoke-direct {v1, p0}, Lcom/estrongs/android/pop/app/u;-><init>(Lcom/estrongs/android/pop/app/t;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    iget-object v0, p0, Lcom/estrongs/android/pop/app/t;->a:Lcom/estrongs/android/pop/app/r;

    invoke-static {v0, v2}, Lcom/estrongs/android/pop/app/r;->a(Lcom/estrongs/android/pop/app/r;Z)Z

    goto :goto_0
.end method
