.class Lcom/estrongs/android/pop/app/ko;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/media/MediaPlayer$OnErrorListener;


# instance fields
.field final synthetic a:Lcom/estrongs/android/pop/app/PopVideoPlayer;


# direct methods
.method constructor <init>(Lcom/estrongs/android/pop/app/PopVideoPlayer;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/pop/app/ko;->a:Lcom/estrongs/android/pop/app/PopVideoPlayer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Landroid/media/MediaPlayer;II)Z
    .locals 4

    const/4 v3, 0x1

    invoke-static {}, Lcom/estrongs/android/pop/app/PopVideoPlayer;->d()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onError what "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " extra "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/estrongs/android/util/l;->b(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/estrongs/android/pop/app/ko;->a:Lcom/estrongs/android/pop/app/PopVideoPlayer;

    invoke-static {v0}, Lcom/estrongs/android/pop/app/PopVideoPlayer;->b(Lcom/estrongs/android/pop/app/PopVideoPlayer;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return v3

    :cond_1
    iget-object v0, p0, Lcom/estrongs/android/pop/app/ko;->a:Lcom/estrongs/android/pop/app/PopVideoPlayer;

    invoke-static {v0, v3}, Lcom/estrongs/android/pop/app/PopVideoPlayer;->b(Lcom/estrongs/android/pop/app/PopVideoPlayer;Z)Z

    iget-object v0, p0, Lcom/estrongs/android/pop/app/ko;->a:Lcom/estrongs/android/pop/app/PopVideoPlayer;

    invoke-virtual {v0}, Lcom/estrongs/android/pop/app/PopVideoPlayer;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/pop/app/ko;->a:Lcom/estrongs/android/pop/app/PopVideoPlayer;

    invoke-static {v0}, Lcom/estrongs/android/pop/app/PopVideoPlayer;->s(Lcom/estrongs/android/pop/app/PopVideoPlayer;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/estrongs/android/pop/app/ko;->a:Lcom/estrongs/android/pop/app/PopVideoPlayer;

    invoke-virtual {v0}, Lcom/estrongs/android/pop/app/PopVideoPlayer;->finish()V

    goto :goto_0

    :cond_2
    new-instance v0, Lcom/estrongs/android/ui/dialog/cv;

    iget-object v1, p0, Lcom/estrongs/android/pop/app/ko;->a:Lcom/estrongs/android/pop/app/PopVideoPlayer;

    invoke-direct {v0, v1}, Lcom/estrongs/android/ui/dialog/cv;-><init>(Landroid/content/Context;)V

    const v1, 0x7f0803cd

    invoke-virtual {v0, v1}, Lcom/estrongs/android/ui/dialog/cv;->a(I)Lcom/estrongs/android/ui/dialog/cv;

    move-result-object v0

    const v1, 0x7f0803cc

    invoke-virtual {v0, v1}, Lcom/estrongs/android/ui/dialog/cv;->b(I)Lcom/estrongs/android/ui/dialog/cv;

    move-result-object v0

    invoke-static {}, Lcom/estrongs/android/pop/app/ag;->b()Z

    move-result v1

    if-eqz v1, :cond_3

    const v1, 0x7f080083

    new-instance v2, Lcom/estrongs/android/pop/app/kp;

    invoke-direct {v2, p0}, Lcom/estrongs/android/pop/app/kp;-><init>(Lcom/estrongs/android/pop/app/ko;)V

    invoke-virtual {v0, v1, v2}, Lcom/estrongs/android/ui/dialog/cv;->b(ILandroid/content/DialogInterface$OnClickListener;)Lcom/estrongs/android/ui/dialog/cv;

    const v1, 0x7f0801b5

    new-instance v2, Lcom/estrongs/android/pop/app/kq;

    invoke-direct {v2, p0}, Lcom/estrongs/android/pop/app/kq;-><init>(Lcom/estrongs/android/pop/app/ko;)V

    invoke-virtual {v0, v1, v2}, Lcom/estrongs/android/ui/dialog/cv;->c(ILandroid/content/DialogInterface$OnClickListener;)Lcom/estrongs/android/ui/dialog/cv;

    invoke-virtual {v0}, Lcom/estrongs/android/ui/dialog/cv;->c()Lcom/estrongs/android/ui/dialog/ci;

    :goto_1
    new-instance v1, Lcom/estrongs/android/pop/app/ks;

    invoke-direct {v1, p0}, Lcom/estrongs/android/pop/app/ks;-><init>(Lcom/estrongs/android/pop/app/ko;)V

    invoke-virtual {v0, v1}, Lcom/estrongs/android/ui/dialog/cv;->a(Landroid/content/DialogInterface$OnCancelListener;)Lcom/estrongs/android/ui/dialog/cv;

    iget-object v0, p0, Lcom/estrongs/android/pop/app/ko;->a:Lcom/estrongs/android/pop/app/PopVideoPlayer;

    iget-object v0, v0, Lcom/estrongs/android/pop/app/PopVideoPlayer;->b:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    :cond_3
    const v1, 0x7f080226

    new-instance v2, Lcom/estrongs/android/pop/app/kr;

    invoke-direct {v2, p0}, Lcom/estrongs/android/pop/app/kr;-><init>(Lcom/estrongs/android/pop/app/ko;)V

    invoke-virtual {v0, v1, v2}, Lcom/estrongs/android/ui/dialog/cv;->a(ILandroid/content/DialogInterface$OnClickListener;)Lcom/estrongs/android/ui/dialog/cv;

    move-result-object v1

    invoke-virtual {v1}, Lcom/estrongs/android/ui/dialog/cv;->c()Lcom/estrongs/android/ui/dialog/ci;

    goto :goto_1
.end method
