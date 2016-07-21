.class Lcom/estrongs/android/pop/app/analysis/d;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/estrongs/android/pop/app/analysis/j;


# instance fields
.field final synthetic a:Lcom/estrongs/android/pop/app/analysis/a;


# direct methods
.method constructor <init>(Lcom/estrongs/android/pop/app/analysis/a;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/pop/app/analysis/d;->a:Lcom/estrongs/android/pop/app/analysis/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/util/concurrent/CopyOnWriteArrayList;Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/CopyOnWriteArrayList",
            "<",
            "Lcom/estrongs/android/b/a/a;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    iget-object v0, p0, Lcom/estrongs/android/pop/app/analysis/d;->a:Lcom/estrongs/android/pop/app/analysis/a;

    invoke-static {v0}, Lcom/estrongs/android/pop/app/analysis/a;->c(Lcom/estrongs/android/pop/app/analysis/a;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    const/4 v1, 0x2

    iput v1, v0, Landroid/os/Message;->what:I

    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    iget-object v1, p0, Lcom/estrongs/android/pop/app/analysis/d;->a:Lcom/estrongs/android/pop/app/analysis/a;

    invoke-static {v1}, Lcom/estrongs/android/pop/app/analysis/a;->d(Lcom/estrongs/android/pop/app/analysis/a;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0
.end method
