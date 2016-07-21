.class Lcom/estrongs/android/pop/app/compress/bk;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/estrongs/android/pop/app/compress/bb;


# direct methods
.method constructor <init>(Lcom/estrongs/android/pop/app/compress/bb;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/pop/app/compress/bk;->a:Lcom/estrongs/android/pop/app/compress/bb;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    :try_start_0
    iget-object v0, p0, Lcom/estrongs/android/pop/app/compress/bk;->a:Lcom/estrongs/android/pop/app/compress/bb;

    invoke-static {v0}, Lcom/estrongs/android/pop/app/compress/bb;->f(Lcom/estrongs/android/pop/app/compress/bb;)Lcom/estrongs/android/pop/app/compress/ba;

    move-result-object v0

    iget-object v0, v0, Lcom/estrongs/android/pop/app/compress/ba;->a:Ljava/lang/String;

    iget-object v1, p0, Lcom/estrongs/android/pop/app/compress/bk;->a:Lcom/estrongs/android/pop/app/compress/bb;

    invoke-static {v1}, Lcom/estrongs/android/pop/app/compress/bb;->f(Lcom/estrongs/android/pop/app/compress/bb;)Lcom/estrongs/android/pop/app/compress/ba;

    move-result-object v1

    iget-object v1, v1, Lcom/estrongs/android/pop/app/compress/ba;->b:Ljava/lang/String;

    iget-object v2, p0, Lcom/estrongs/android/pop/app/compress/bk;->a:Lcom/estrongs/android/pop/app/compress/bb;

    invoke-static {v2}, Lcom/estrongs/android/pop/app/compress/bb;->f(Lcom/estrongs/android/pop/app/compress/bb;)Lcom/estrongs/android/pop/app/compress/ba;

    move-result-object v2

    iget-boolean v2, v2, Lcom/estrongs/android/pop/app/compress/ba;->f:Z

    invoke-static {v0, v1, v2}, Lcom/estrongs/io/archive/d;->a(Ljava/lang/String;Ljava/lang/String;Z)Lcom/estrongs/io/archive/i;

    move-result-object v1

    invoke-virtual {v1}, Lcom/estrongs/io/archive/i;->k()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/pop/app/compress/bk;->a:Lcom/estrongs/android/pop/app/compress/bb;

    invoke-static {v0}, Lcom/estrongs/android/pop/app/compress/bb;->g(Lcom/estrongs/android/pop/app/compress/bb;)Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    new-instance v2, Lcom/estrongs/android/pop/app/compress/bl;

    invoke-direct {v2, p0, v1}, Lcom/estrongs/android/pop/app/compress/bl;-><init>(Lcom/estrongs/android/pop/app/compress/bk;Lcom/estrongs/io/archive/i;)V

    invoke-virtual {v0, v2}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/estrongs/android/pop/app/compress/bk;->a:Lcom/estrongs/android/pop/app/compress/bb;

    invoke-static {v0}, Lcom/estrongs/android/pop/app/compress/bb;->h(Lcom/estrongs/android/pop/app/compress/bb;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0
.end method
