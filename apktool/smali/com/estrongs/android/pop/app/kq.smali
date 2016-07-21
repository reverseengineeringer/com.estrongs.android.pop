.class Lcom/estrongs/android/pop/app/kq;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Lcom/estrongs/android/pop/app/ko;


# direct methods
.method constructor <init>(Lcom/estrongs/android/pop/app/ko;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/pop/app/kq;->a:Lcom/estrongs/android/pop/app/ko;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    iget-object v0, p0, Lcom/estrongs/android/pop/app/kq;->a:Lcom/estrongs/android/pop/app/ko;

    iget-object v0, v0, Lcom/estrongs/android/pop/app/ko;->a:Lcom/estrongs/android/pop/app/PopVideoPlayer;

    invoke-static {v0}, Lcom/estrongs/android/pop/app/PopVideoPlayer;->r(Lcom/estrongs/android/pop/app/PopVideoPlayer;)Lcom/estrongs/android/pop/app/ag;

    move-result-object v0

    invoke-virtual {v0}, Lcom/estrongs/android/pop/app/ag;->p()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/pop/app/kq;->a:Lcom/estrongs/android/pop/app/ko;

    iget-object v0, v0, Lcom/estrongs/android/pop/app/ko;->a:Lcom/estrongs/android/pop/app/PopVideoPlayer;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/estrongs/android/pop/app/PopVideoPlayer;->c(Lcom/estrongs/android/pop/app/PopVideoPlayer;Z)V

    :goto_0
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/estrongs/android/pop/app/kq;->a:Lcom/estrongs/android/pop/app/ko;

    iget-object v0, v0, Lcom/estrongs/android/pop/app/ko;->a:Lcom/estrongs/android/pop/app/PopVideoPlayer;

    invoke-static {v0}, Lcom/estrongs/android/pop/app/PopVideoPlayer;->t(Lcom/estrongs/android/pop/app/PopVideoPlayer;)Lcom/estrongs/android/pop/app/x;

    move-result-object v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/estrongs/android/pop/app/kq;->a:Lcom/estrongs/android/pop/app/ko;

    iget-object v0, v0, Lcom/estrongs/android/pop/app/ko;->a:Lcom/estrongs/android/pop/app/PopVideoPlayer;

    invoke-static {v0}, Lcom/estrongs/android/pop/app/PopVideoPlayer;->u(Lcom/estrongs/android/pop/app/PopVideoPlayer;)V

    :cond_1
    iget-object v0, p0, Lcom/estrongs/android/pop/app/kq;->a:Lcom/estrongs/android/pop/app/ko;

    iget-object v0, v0, Lcom/estrongs/android/pop/app/ko;->a:Lcom/estrongs/android/pop/app/PopVideoPlayer;

    invoke-static {v0}, Lcom/estrongs/android/pop/app/PopVideoPlayer;->t(Lcom/estrongs/android/pop/app/PopVideoPlayer;)Lcom/estrongs/android/pop/app/x;

    move-result-object v0

    invoke-virtual {v0}, Lcom/estrongs/android/pop/app/x;->show()V

    goto :goto_0
.end method
