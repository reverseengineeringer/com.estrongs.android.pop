.class Lcom/estrongs/android/view/music/d;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/estrongs/android/pop/app/c/i;

.field final synthetic b:Lcom/estrongs/android/view/music/a;


# direct methods
.method constructor <init>(Lcom/estrongs/android/view/music/a;Lcom/estrongs/android/pop/app/c/i;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/view/music/d;->b:Lcom/estrongs/android/view/music/a;

    iput-object p2, p0, Lcom/estrongs/android/view/music/d;->a:Lcom/estrongs/android/pop/app/c/i;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/estrongs/android/view/music/d;->a:Lcom/estrongs/android/pop/app/c/i;

    invoke-virtual {v0}, Lcom/estrongs/android/pop/app/c/i;->d()V

    iget-object v0, p0, Lcom/estrongs/android/view/music/d;->a:Lcom/estrongs/android/pop/app/c/i;

    iget-object v1, p0, Lcom/estrongs/android/view/music/d;->b:Lcom/estrongs/android/view/music/a;

    invoke-static {v1}, Lcom/estrongs/android/view/music/a;->e(Lcom/estrongs/android/view/music/a;)Lcom/estrongs/android/view/music/f;

    move-result-object v1

    invoke-virtual {v1}, Lcom/estrongs/android/view/music/f;->j()Lcom/estrongs/android/pop/app/gq;

    move-result-object v1

    invoke-virtual {v1}, Lcom/estrongs/android/pop/app/gq;->r()Lcom/estrongs/android/pop/app/c/i;

    move-result-object v1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/view/music/d;->a:Lcom/estrongs/android/pop/app/c/i;

    invoke-virtual {v0}, Lcom/estrongs/android/pop/app/c/i;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/view/music/d;->b:Lcom/estrongs/android/view/music/a;

    invoke-static {v0}, Lcom/estrongs/android/view/music/a;->f(Lcom/estrongs/android/view/music/a;)Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    new-instance v1, Lcom/estrongs/android/view/music/e;

    invoke-direct {v1, p0}, Lcom/estrongs/android/view/music/e;-><init>(Lcom/estrongs/android/view/music/d;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method
