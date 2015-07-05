.class Lcom/estrongs/android/pop/app/jo;
.super Ljava/lang/Thread;


# instance fields
.field final synthetic a:Ljava/util/List;

.field final synthetic b:Lcom/estrongs/android/pop/app/jn;


# direct methods
.method constructor <init>(Lcom/estrongs/android/pop/app/jn;Ljava/util/List;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/pop/app/jo;->b:Lcom/estrongs/android/pop/app/jn;

    iput-object p2, p0, Lcom/estrongs/android/pop/app/jo;->a:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    const/4 v4, 0x0

    new-instance v0, Lcom/estrongs/fs/b/ab;

    iget-object v1, p0, Lcom/estrongs/android/pop/app/jo;->b:Lcom/estrongs/android/pop/app/jn;

    iget-object v1, v1, Lcom/estrongs/android/pop/app/jn;->c:Lcom/estrongs/android/pop/app/jl;

    iget-object v1, v1, Lcom/estrongs/android/pop/app/jl;->a:Lcom/estrongs/android/pop/app/PopVideoPlayer;

    invoke-static {v1}, Lcom/estrongs/android/pop/app/PopVideoPlayer;->E(Lcom/estrongs/android/pop/app/PopVideoPlayer;)Lcom/estrongs/fs/d;

    move-result-object v1

    iget-object v2, p0, Lcom/estrongs/android/pop/app/jo;->a:Ljava/util/List;

    iget-object v3, p0, Lcom/estrongs/android/pop/app/jo;->b:Lcom/estrongs/android/pop/app/jn;

    iget-boolean v3, v3, Lcom/estrongs/android/pop/app/jn;->b:Z

    invoke-direct {v0, v1, v2, v4, v3}, Lcom/estrongs/fs/b/ab;-><init>(Lcom/estrongs/fs/d;Ljava/util/List;ZZ)V

    new-instance v1, Lcom/estrongs/android/pop/m;

    iget-object v2, p0, Lcom/estrongs/android/pop/app/jo;->b:Lcom/estrongs/android/pop/app/jn;

    iget-object v2, v2, Lcom/estrongs/android/pop/app/jn;->c:Lcom/estrongs/android/pop/app/jl;

    iget-object v2, v2, Lcom/estrongs/android/pop/app/jl;->a:Lcom/estrongs/android/pop/app/PopVideoPlayer;

    invoke-direct {v1, v2}, Lcom/estrongs/android/pop/m;-><init>(Landroid/app/Activity;)V

    invoke-virtual {v0, v1}, Lcom/estrongs/fs/b/ab;->setTaskDecisionListener(Lcom/estrongs/a/a/a;)V

    invoke-virtual {v0, v4}, Lcom/estrongs/fs/b/ab;->execute(Z)V

    iget-object v0, p0, Lcom/estrongs/android/pop/app/jo;->b:Lcom/estrongs/android/pop/app/jn;

    iget-object v0, v0, Lcom/estrongs/android/pop/app/jn;->c:Lcom/estrongs/android/pop/app/jl;

    iget-object v0, v0, Lcom/estrongs/android/pop/app/jl;->a:Lcom/estrongs/android/pop/app/PopVideoPlayer;

    new-instance v1, Lcom/estrongs/android/pop/app/jp;

    invoke-direct {v1, p0}, Lcom/estrongs/android/pop/app/jp;-><init>(Lcom/estrongs/android/pop/app/jo;)V

    invoke-virtual {v0, v1}, Lcom/estrongs/android/pop/app/PopVideoPlayer;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method
