.class Lcom/estrongs/android/pop/app/jz;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/media/MediaPlayer$OnErrorListener;


# instance fields
.field final synthetic a:Lcom/estrongs/android/pop/app/PopVideoPlayer;


# direct methods
.method constructor <init>(Lcom/estrongs/android/pop/app/PopVideoPlayer;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/pop/app/jz;->a:Lcom/estrongs/android/pop/app/PopVideoPlayer;

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

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/estrongs/android/pop/app/jz;->a:Lcom/estrongs/android/pop/app/PopVideoPlayer;

    invoke-static {v0}, Lcom/estrongs/android/pop/app/PopVideoPlayer;->b(Lcom/estrongs/android/pop/app/PopVideoPlayer;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return v3

    :cond_1
    iget-object v0, p0, Lcom/estrongs/android/pop/app/jz;->a:Lcom/estrongs/android/pop/app/PopVideoPlayer;

    invoke-static {v0, v3}, Lcom/estrongs/android/pop/app/PopVideoPlayer;->b(Lcom/estrongs/android/pop/app/PopVideoPlayer;Z)Z

    iget-object v0, p0, Lcom/estrongs/android/pop/app/jz;->a:Lcom/estrongs/android/pop/app/PopVideoPlayer;

    invoke-virtual {v0}, Lcom/estrongs/android/pop/app/PopVideoPlayer;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/pop/app/jz;->a:Lcom/estrongs/android/pop/app/PopVideoPlayer;

    invoke-static {v0}, Lcom/estrongs/android/pop/app/PopVideoPlayer;->s(Lcom/estrongs/android/pop/app/PopVideoPlayer;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/estrongs/android/pop/app/jz;->a:Lcom/estrongs/android/pop/app/PopVideoPlayer;

    invoke-virtual {v0}, Lcom/estrongs/android/pop/app/PopVideoPlayer;->finish()V

    goto :goto_0

    :cond_2
    new-instance v0, Lcom/estrongs/android/ui/dialog/ct;

    iget-object v1, p0, Lcom/estrongs/android/pop/app/jz;->a:Lcom/estrongs/android/pop/app/PopVideoPlayer;

    invoke-direct {v0, v1}, Lcom/estrongs/android/ui/dialog/ct;-><init>(Landroid/content/Context;)V

    const v1, 0x7f0b01dd

    invoke-virtual {v0, v1}, Lcom/estrongs/android/ui/dialog/ct;->a(I)Lcom/estrongs/android/ui/dialog/ct;

    move-result-object v0

    const v1, 0x7f0b01de

    invoke-virtual {v0, v1}, Lcom/estrongs/android/ui/dialog/ct;->b(I)Lcom/estrongs/android/ui/dialog/ct;

    move-result-object v0

    invoke-static {}, Lcom/estrongs/android/pop/app/aa;->b()Z

    move-result v1

    if-eqz v1, :cond_3

    const v1, 0x7f0b0023

    new-instance v2, Lcom/estrongs/android/pop/app/ka;

    invoke-direct {v2, p0}, Lcom/estrongs/android/pop/app/ka;-><init>(Lcom/estrongs/android/pop/app/jz;)V

    invoke-virtual {v0, v1, v2}, Lcom/estrongs/android/ui/dialog/ct;->b(ILandroid/content/DialogInterface$OnClickListener;)Lcom/estrongs/android/ui/dialog/ct;

    const v1, 0x7f0b04aa

    new-instance v2, Lcom/estrongs/android/pop/app/kb;

    invoke-direct {v2, p0}, Lcom/estrongs/android/pop/app/kb;-><init>(Lcom/estrongs/android/pop/app/jz;)V

    invoke-virtual {v0, v1, v2}, Lcom/estrongs/android/ui/dialog/ct;->c(ILandroid/content/DialogInterface$OnClickListener;)Lcom/estrongs/android/ui/dialog/ct;

    invoke-virtual {v0}, Lcom/estrongs/android/ui/dialog/ct;->c()Lcom/estrongs/android/ui/dialog/cg;

    :goto_1
    new-instance v1, Lcom/estrongs/android/pop/app/kd;

    invoke-direct {v1, p0}, Lcom/estrongs/android/pop/app/kd;-><init>(Lcom/estrongs/android/pop/app/jz;)V

    invoke-virtual {v0, v1}, Lcom/estrongs/android/ui/dialog/ct;->a(Landroid/content/DialogInterface$OnCancelListener;)Lcom/estrongs/android/ui/dialog/ct;

    iget-object v0, p0, Lcom/estrongs/android/pop/app/jz;->a:Lcom/estrongs/android/pop/app/PopVideoPlayer;

    iget-object v0, v0, Lcom/estrongs/android/pop/app/PopVideoPlayer;->b:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    :cond_3
    const v1, 0x7f0b000b

    new-instance v2, Lcom/estrongs/android/pop/app/kc;

    invoke-direct {v2, p0}, Lcom/estrongs/android/pop/app/kc;-><init>(Lcom/estrongs/android/pop/app/jz;)V

    invoke-virtual {v0, v1, v2}, Lcom/estrongs/android/ui/dialog/ct;->a(ILandroid/content/DialogInterface$OnClickListener;)Lcom/estrongs/android/ui/dialog/ct;

    move-result-object v1

    invoke-virtual {v1}, Lcom/estrongs/android/ui/dialog/ct;->c()Lcom/estrongs/android/ui/dialog/cg;

    goto :goto_1
.end method
