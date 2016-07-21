.class Lcom/estrongs/android/pop/app/kc;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Z

.field final synthetic c:Lcom/estrongs/android/pop/app/ka;


# direct methods
.method constructor <init>(Lcom/estrongs/android/pop/app/ka;Ljava/lang/String;Z)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/pop/app/kc;->c:Lcom/estrongs/android/pop/app/ka;

    iput-object p2, p0, Lcom/estrongs/android/pop/app/kc;->a:Ljava/lang/String;

    iput-boolean p3, p0, Lcom/estrongs/android/pop/app/kc;->b:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3

    iget-object v0, p0, Lcom/estrongs/android/pop/app/kc;->c:Lcom/estrongs/android/pop/app/ka;

    iget-object v0, v0, Lcom/estrongs/android/pop/app/ka;->a:Lcom/estrongs/android/pop/app/PopVideoPlayer;

    invoke-static {v0}, Lcom/estrongs/android/pop/app/PopVideoPlayer;->a(Lcom/estrongs/android/pop/app/PopVideoPlayer;)Lcom/estrongs/android/ui/view/ESVideoView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/estrongs/android/ui/view/ESVideoView;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/pop/app/kc;->c:Lcom/estrongs/android/pop/app/ka;

    iget-object v0, v0, Lcom/estrongs/android/pop/app/ka;->a:Lcom/estrongs/android/pop/app/PopVideoPlayer;

    invoke-static {v0}, Lcom/estrongs/android/pop/app/PopVideoPlayer;->a(Lcom/estrongs/android/pop/app/PopVideoPlayer;)Lcom/estrongs/android/ui/view/ESVideoView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/estrongs/android/ui/view/ESVideoView;->a()V

    :cond_0
    :try_start_0
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iget-object v1, p0, Lcom/estrongs/android/pop/app/kc;->c:Lcom/estrongs/android/pop/app/ka;

    iget-object v1, v1, Lcom/estrongs/android/pop/app/ka;->a:Lcom/estrongs/android/pop/app/PopVideoPlayer;

    invoke-static {v1}, Lcom/estrongs/android/pop/app/PopVideoPlayer;->F(Lcom/estrongs/android/pop/app/PopVideoPlayer;)Lcom/estrongs/fs/d;

    move-result-object v1

    iget-object v2, p0, Lcom/estrongs/android/pop/app/kc;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/estrongs/fs/d;->j(Ljava/lang/String;)Lcom/estrongs/fs/h;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v1, Lcom/estrongs/android/pop/app/kd;

    invoke-direct {v1, p0, v0}, Lcom/estrongs/android/pop/app/kd;-><init>(Lcom/estrongs/android/pop/app/kc;Ljava/util/List;)V

    invoke-virtual {v1}, Lcom/estrongs/android/pop/app/kd;->start()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    iget-object v0, p0, Lcom/estrongs/android/pop/app/kc;->c:Lcom/estrongs/android/pop/app/ka;

    iget-object v0, v0, Lcom/estrongs/android/pop/app/ka;->a:Lcom/estrongs/android/pop/app/PopVideoPlayer;

    invoke-virtual {v0}, Lcom/estrongs/android/pop/app/PopVideoPlayer;->finish()V

    goto :goto_0
.end method
