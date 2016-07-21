.class Lcom/estrongs/android/view/music/j;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/ServiceConnection;


# instance fields
.field final synthetic a:Lcom/estrongs/android/view/music/f;


# direct methods
.method constructor <init>(Lcom/estrongs/android/view/music/f;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/view/music/j;->a:Lcom/estrongs/android/view/music/f;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 4

    const/4 v3, 0x0

    check-cast p2, Lcom/estrongs/android/pop/app/u;

    invoke-virtual {p2}, Lcom/estrongs/android/pop/app/u;->a()Lcom/estrongs/android/pop/app/AudioPlayerService;

    move-result-object v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v1, p0, Lcom/estrongs/android/view/music/j;->a:Lcom/estrongs/android/view/music/f;

    new-instance v2, Lcom/estrongs/android/pop/app/gr;

    invoke-direct {v2, v0}, Lcom/estrongs/android/pop/app/gr;-><init>(Lcom/estrongs/android/pop/app/AudioPlayerService;)V

    invoke-static {v1, v2}, Lcom/estrongs/android/view/music/f;->a(Lcom/estrongs/android/view/music/f;Lcom/estrongs/android/pop/app/gq;)Lcom/estrongs/android/pop/app/gq;

    iget-object v0, p0, Lcom/estrongs/android/view/music/j;->a:Lcom/estrongs/android/view/music/f;

    invoke-static {v0}, Lcom/estrongs/android/view/music/f;->c(Lcom/estrongs/android/view/music/f;)Lcom/estrongs/android/pop/app/gq;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/estrongs/android/pop/app/gq;->a(Z)V

    iget-object v0, p0, Lcom/estrongs/android/view/music/j;->a:Lcom/estrongs/android/view/music/f;

    iget-object v1, p0, Lcom/estrongs/android/view/music/j;->a:Lcom/estrongs/android/view/music/f;

    invoke-static {v1}, Lcom/estrongs/android/view/music/f;->c(Lcom/estrongs/android/view/music/f;)Lcom/estrongs/android/pop/app/gq;

    move-result-object v1

    invoke-virtual {v1}, Lcom/estrongs/android/pop/app/gq;->A()Lcom/estrongs/android/pop/app/c/k;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/estrongs/android/view/music/f;->a(Lcom/estrongs/android/view/music/f;Lcom/estrongs/android/pop/app/c/k;)Lcom/estrongs/android/pop/app/c/k;

    iget-object v0, p0, Lcom/estrongs/android/view/music/j;->a:Lcom/estrongs/android/view/music/f;

    invoke-static {v0}, Lcom/estrongs/android/view/music/f;->b(Lcom/estrongs/android/view/music/f;)Z

    move-result v0

    if-eqz v0, :cond_2

    sget-object v0, Lcom/estrongs/android/pop/view/a;->a:Ljava/lang/String;

    const-string v1, "Spreadtrum"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Lcom/estrongs/android/pop/view/a;->a:Ljava/lang/String;

    const-string v1, "Huawei"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    iget-object v0, p0, Lcom/estrongs/android/view/music/j;->a:Lcom/estrongs/android/view/music/f;

    invoke-static {v0}, Lcom/estrongs/android/view/music/f;->c(Lcom/estrongs/android/view/music/f;)Lcom/estrongs/android/pop/app/gq;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/estrongs/android/pop/app/gq;->a(Lcom/estrongs/android/pop/app/gp;)V

    iget-object v0, p0, Lcom/estrongs/android/view/music/j;->a:Lcom/estrongs/android/view/music/f;

    invoke-static {v0}, Lcom/estrongs/android/view/music/f;->c(Lcom/estrongs/android/view/music/f;)Lcom/estrongs/android/pop/app/gq;

    move-result-object v0

    invoke-virtual {v0}, Lcom/estrongs/android/pop/app/gq;->n()V

    iget-object v0, p0, Lcom/estrongs/android/view/music/j;->a:Lcom/estrongs/android/view/music/f;

    invoke-static {v0}, Lcom/estrongs/android/view/music/f;->c(Lcom/estrongs/android/view/music/f;)Lcom/estrongs/android/pop/app/gq;

    move-result-object v0

    invoke-virtual {v0}, Lcom/estrongs/android/pop/app/gq;->q()V

    iget-object v0, p0, Lcom/estrongs/android/view/music/j;->a:Lcom/estrongs/android/view/music/f;

    invoke-static {v0}, Lcom/estrongs/android/view/music/f;->c(Lcom/estrongs/android/view/music/f;)Lcom/estrongs/android/pop/app/gq;

    move-result-object v0

    invoke-virtual {v0}, Lcom/estrongs/android/pop/app/gq;->z()V

    iget-object v0, p0, Lcom/estrongs/android/view/music/j;->a:Lcom/estrongs/android/view/music/f;

    invoke-static {v0}, Lcom/estrongs/android/view/music/f;->d(Lcom/estrongs/android/view/music/f;)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/estrongs/android/view/music/j;->a:Lcom/estrongs/android/view/music/f;

    invoke-static {v0}, Lcom/estrongs/android/view/music/f;->c(Lcom/estrongs/android/view/music/f;)Lcom/estrongs/android/pop/app/gq;

    move-result-object v0

    iget-object v1, p0, Lcom/estrongs/android/view/music/j;->a:Lcom/estrongs/android/view/music/f;

    invoke-static {v1}, Lcom/estrongs/android/view/music/f;->e(Lcom/estrongs/android/view/music/f;)Lcom/estrongs/android/pop/app/gp;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/estrongs/android/pop/app/gq;->a(Lcom/estrongs/android/pop/app/gp;)V

    iget-object v0, p0, Lcom/estrongs/android/view/music/j;->a:Lcom/estrongs/android/view/music/f;

    invoke-static {v0, v3}, Lcom/estrongs/android/view/music/f;->a(Lcom/estrongs/android/view/music/f;Ljava/lang/String;)Ljava/lang/String;

    iget-object v0, p0, Lcom/estrongs/android/view/music/j;->a:Lcom/estrongs/android/view/music/f;

    invoke-static {v0}, Lcom/estrongs/android/view/music/f;->f(Lcom/estrongs/android/view/music/f;)V

    goto/16 :goto_0
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 2

    iget-object v0, p0, Lcom/estrongs/android/view/music/j;->a:Lcom/estrongs/android/view/music/f;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/estrongs/android/view/music/f;->a(Lcom/estrongs/android/view/music/f;Lcom/estrongs/android/pop/app/gq;)Lcom/estrongs/android/pop/app/gq;

    return-void
.end method
