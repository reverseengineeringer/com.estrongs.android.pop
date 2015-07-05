.class Lcom/estrongs/android/pop/app/je;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/MenuItem$OnMenuItemClickListener;


# instance fields
.field final synthetic a:Lcom/estrongs/android/pop/app/PopVideoPlayer;


# direct methods
.method constructor <init>(Lcom/estrongs/android/pop/app/PopVideoPlayer;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/pop/app/je;->a:Lcom/estrongs/android/pop/app/PopVideoPlayer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMenuItemClick(Landroid/view/MenuItem;)Z
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/pop/app/je;->a:Lcom/estrongs/android/pop/app/PopVideoPlayer;

    invoke-static {v0}, Lcom/estrongs/android/pop/app/PopVideoPlayer;->y(Lcom/estrongs/android/pop/app/PopVideoPlayer;)V

    iget-object v0, p0, Lcom/estrongs/android/pop/app/je;->a:Lcom/estrongs/android/pop/app/PopVideoPlayer;

    invoke-static {v0}, Lcom/estrongs/android/pop/app/PopVideoPlayer;->z(Lcom/estrongs/android/pop/app/PopVideoPlayer;)Lcom/estrongs/android/ui/e/iw;

    move-result-object v0

    invoke-virtual {v0}, Lcom/estrongs/android/ui/e/iw;->d()V

    iget-object v0, p0, Lcom/estrongs/android/pop/app/je;->a:Lcom/estrongs/android/pop/app/PopVideoPlayer;

    iget-boolean v0, v0, Lcom/estrongs/android/pop/app/PopVideoPlayer;->f:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/pop/app/je;->a:Lcom/estrongs/android/pop/app/PopVideoPlayer;

    invoke-static {v0}, Lcom/estrongs/android/pop/app/PopVideoPlayer;->A(Lcom/estrongs/android/pop/app/PopVideoPlayer;)V

    :goto_0
    const/4 v0, 0x1

    return v0

    :cond_0
    iget-object v0, p0, Lcom/estrongs/android/pop/app/je;->a:Lcom/estrongs/android/pop/app/PopVideoPlayer;

    invoke-static {v0}, Lcom/estrongs/android/pop/app/PopVideoPlayer;->B(Lcom/estrongs/android/pop/app/PopVideoPlayer;)V

    goto :goto_0
.end method
