.class Lcom/estrongs/android/recommand/d;
.super Landroid/content/BroadcastReceiver;


# instance fields
.field final synthetic a:Lcom/estrongs/android/recommand/c;


# direct methods
.method constructor <init>(Lcom/estrongs/android/recommand/c;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/recommand/d;->a:Lcom/estrongs/android/recommand/c;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    iget-object v1, p0, Lcom/estrongs/android/recommand/d;->a:Lcom/estrongs/android/recommand/c;

    invoke-static {}, Lcom/estrongs/android/util/an;->b()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/estrongs/android/util/an;->d()Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_0
    const/4 v0, 0x1

    :goto_0
    invoke-static {v1, v0}, Lcom/estrongs/android/recommand/c;->a(Lcom/estrongs/android/recommand/c;Z)Z

    iget-object v0, p0, Lcom/estrongs/android/recommand/d;->a:Lcom/estrongs/android/recommand/c;

    invoke-static {v0}, Lcom/estrongs/android/recommand/c;->a(Lcom/estrongs/android/recommand/c;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/estrongs/android/recommand/d;->a:Lcom/estrongs/android/recommand/c;

    invoke-static {v0}, Lcom/estrongs/android/recommand/c;->b(Lcom/estrongs/android/recommand/c;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/estrongs/android/recommand/d;->a:Lcom/estrongs/android/recommand/c;

    invoke-static {v0}, Lcom/estrongs/android/recommand/c;->c(Lcom/estrongs/android/recommand/c;)V

    :cond_1
    return-void

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method
