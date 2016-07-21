.class Lcom/estrongs/android/pop/app/z;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/estrongs/android/pop/app/x;


# direct methods
.method constructor <init>(Lcom/estrongs/android/pop/app/x;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/pop/app/z;->a:Lcom/estrongs/android/pop/app/x;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/estrongs/android/pop/app/z;->a:Lcom/estrongs/android/pop/app/x;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/estrongs/android/pop/app/x;->a(Lcom/estrongs/android/pop/app/x;Z)Z

    iget-object v0, p0, Lcom/estrongs/android/pop/app/z;->a:Lcom/estrongs/android/pop/app/x;

    invoke-static {v0}, Lcom/estrongs/android/pop/app/x;->a(Lcom/estrongs/android/pop/app/x;)Lcom/estrongs/android/pop/app/ag;

    move-result-object v0

    invoke-virtual {v0}, Lcom/estrongs/android/pop/app/ag;->e()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/pop/app/z;->a:Lcom/estrongs/android/pop/app/x;

    invoke-static {v0, v2}, Lcom/estrongs/android/pop/app/x;->a(Lcom/estrongs/android/pop/app/x;Z)Z

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/estrongs/android/pop/app/z;->a:Lcom/estrongs/android/pop/app/x;

    invoke-static {v0}, Lcom/estrongs/android/pop/app/x;->f(Lcom/estrongs/android/pop/app/x;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/estrongs/android/pop/app/aa;

    invoke-direct {v1, p0}, Lcom/estrongs/android/pop/app/aa;-><init>(Lcom/estrongs/android/pop/app/z;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    iget-object v0, p0, Lcom/estrongs/android/pop/app/z;->a:Lcom/estrongs/android/pop/app/x;

    invoke-static {v0, v2}, Lcom/estrongs/android/pop/app/x;->a(Lcom/estrongs/android/pop/app/x;Z)Z

    goto :goto_0
.end method
