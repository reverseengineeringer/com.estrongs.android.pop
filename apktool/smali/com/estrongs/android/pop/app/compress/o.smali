.class Lcom/estrongs/android/pop/app/compress/o;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/estrongs/android/pop/app/compress/l;


# direct methods
.method constructor <init>(Lcom/estrongs/android/pop/app/compress/l;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/pop/app/compress/o;->a:Lcom/estrongs/android/pop/app/compress/l;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    :try_start_0
    iget-object v0, p0, Lcom/estrongs/android/pop/app/compress/o;->a:Lcom/estrongs/android/pop/app/compress/l;

    invoke-static {v0}, Lcom/estrongs/android/pop/app/compress/l;->i(Lcom/estrongs/android/pop/app/compress/l;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/estrongs/android/pop/app/compress/o;->a:Lcom/estrongs/android/pop/app/compress/l;

    invoke-static {v1}, Lcom/estrongs/android/pop/app/compress/l;->j(Lcom/estrongs/android/pop/app/compress/l;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/estrongs/android/pop/app/compress/o;->a:Lcom/estrongs/android/pop/app/compress/l;

    invoke-static {v2}, Lcom/estrongs/android/pop/app/compress/l;->k(Lcom/estrongs/android/pop/app/compress/l;)Z

    move-result v2

    invoke-static {v0, v1, v2}, Lcom/estrongs/io/archive/d;->a(Ljava/lang/String;Ljava/lang/String;Z)Lcom/estrongs/io/archive/i;

    move-result-object v1

    invoke-virtual {v1}, Lcom/estrongs/io/archive/i;->k()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/pop/app/compress/o;->a:Lcom/estrongs/android/pop/app/compress/l;

    invoke-static {v0}, Lcom/estrongs/android/pop/app/compress/l;->d(Lcom/estrongs/android/pop/app/compress/l;)Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    new-instance v2, Lcom/estrongs/android/pop/app/compress/p;

    invoke-direct {v2, p0, v1}, Lcom/estrongs/android/pop/app/compress/p;-><init>(Lcom/estrongs/android/pop/app/compress/o;Lcom/estrongs/io/archive/i;)V

    invoke-virtual {v0, v2}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/estrongs/android/pop/app/compress/o;->a:Lcom/estrongs/android/pop/app/compress/l;

    invoke-static {v0}, Lcom/estrongs/android/pop/app/compress/l;->m(Lcom/estrongs/android/pop/app/compress/l;)V

    iget-object v0, p0, Lcom/estrongs/android/pop/app/compress/o;->a:Lcom/estrongs/android/pop/app/compress/l;

    invoke-static {v0}, Lcom/estrongs/android/pop/app/compress/l;->d(Lcom/estrongs/android/pop/app/compress/l;)Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    new-instance v1, Lcom/estrongs/android/pop/app/compress/t;

    invoke-direct {v1, p0}, Lcom/estrongs/android/pop/app/compress/t;-><init>(Lcom/estrongs/android/pop/app/compress/o;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0
.end method
