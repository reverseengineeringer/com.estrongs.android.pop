.class Lcom/estrongs/android/pop/app/jk;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/MenuItem$OnMenuItemClickListener;


# instance fields
.field final synthetic a:Lcom/estrongs/android/pop/app/PopVideoPlayer;


# direct methods
.method constructor <init>(Lcom/estrongs/android/pop/app/PopVideoPlayer;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/pop/app/jk;->a:Lcom/estrongs/android/pop/app/PopVideoPlayer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMenuItemClick(Landroid/view/MenuItem;)Z
    .locals 2

    iget-object v0, p0, Lcom/estrongs/android/pop/app/jk;->a:Lcom/estrongs/android/pop/app/PopVideoPlayer;

    invoke-static {v0}, Lcom/estrongs/android/pop/app/PopVideoPlayer;->d(Lcom/estrongs/android/pop/app/PopVideoPlayer;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/pop/app/jk;->a:Lcom/estrongs/android/pop/app/PopVideoPlayer;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/estrongs/android/pop/app/PopVideoPlayer;->d(Lcom/estrongs/android/pop/app/PopVideoPlayer;Z)Z

    iget-object v0, p0, Lcom/estrongs/android/pop/app/jk;->a:Lcom/estrongs/android/pop/app/PopVideoPlayer;

    invoke-static {v0}, Lcom/estrongs/android/pop/app/PopVideoPlayer;->a(Lcom/estrongs/android/pop/app/PopVideoPlayer;)Lcom/estrongs/android/ui/view/ESVideoView;

    move-result-object v0

    iget-object v1, p0, Lcom/estrongs/android/pop/app/jk;->a:Lcom/estrongs/android/pop/app/PopVideoPlayer;

    invoke-virtual {v1}, Lcom/estrongs/android/pop/app/PopVideoPlayer;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/estrongs/android/ui/view/ESVideoView;->a(Landroid/net/Uri;)V

    iget-object v0, p0, Lcom/estrongs/android/pop/app/jk;->a:Lcom/estrongs/android/pop/app/PopVideoPlayer;

    invoke-static {v0}, Lcom/estrongs/android/pop/app/PopVideoPlayer;->c(Lcom/estrongs/android/pop/app/PopVideoPlayer;)V

    :cond_0
    iget-object v0, p0, Lcom/estrongs/android/pop/app/jk;->a:Lcom/estrongs/android/pop/app/PopVideoPlayer;

    invoke-static {v0}, Lcom/estrongs/android/pop/app/PopVideoPlayer;->D(Lcom/estrongs/android/pop/app/PopVideoPlayer;)Lcom/estrongs/android/ui/e/iw;

    move-result-object v0

    invoke-virtual {v0}, Lcom/estrongs/android/ui/e/iw;->d()V

    const/4 v0, 0x1

    return v0
.end method
