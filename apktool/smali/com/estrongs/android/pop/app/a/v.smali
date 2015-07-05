.class Lcom/estrongs/android/pop/app/a/v;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/MenuItem$OnMenuItemClickListener;


# instance fields
.field final synthetic a:Lcom/estrongs/android/pop/app/a/e;


# direct methods
.method constructor <init>(Lcom/estrongs/android/pop/app/a/e;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/pop/app/a/v;->a:Lcom/estrongs/android/pop/app/a/e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMenuItemClick(Landroid/view/MenuItem;)Z
    .locals 5

    iget-object v0, p0, Lcom/estrongs/android/pop/app/a/v;->a:Lcom/estrongs/android/pop/app/a/e;

    invoke-static {v0}, Lcom/estrongs/android/pop/app/a/e;->a(Lcom/estrongs/android/pop/app/a/e;)Lcom/estrongs/android/pop/app/PopAudioPlayer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/estrongs/android/pop/app/PopAudioPlayer;->q()Lcom/estrongs/android/pop/app/a/al;

    move-result-object v0

    if-eqz v0, :cond_0

    new-instance v1, Lcom/estrongs/android/ui/dialog/eo;

    iget-object v2, p0, Lcom/estrongs/android/pop/app/a/v;->a:Lcom/estrongs/android/pop/app/a/e;

    invoke-static {v2}, Lcom/estrongs/android/pop/app/a/e;->a(Lcom/estrongs/android/pop/app/a/e;)Lcom/estrongs/android/pop/app/PopAudioPlayer;

    move-result-object v2

    iget-object v3, p0, Lcom/estrongs/android/pop/app/a/v;->a:Lcom/estrongs/android/pop/app/a/e;

    invoke-static {v3}, Lcom/estrongs/android/pop/app/a/e;->a(Lcom/estrongs/android/pop/app/a/e;)Lcom/estrongs/android/pop/app/PopAudioPlayer;

    move-result-object v3

    const v4, 0x7f0b03e2

    invoke-virtual {v3, v4}, Lcom/estrongs/android/pop/app/PopAudioPlayer;->getString(I)Ljava/lang/String;

    move-result-object v3

    const-string v4, ""

    invoke-direct {v1, v2, v3, v4}, Lcom/estrongs/android/ui/dialog/eo;-><init>(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V

    new-instance v2, Lcom/estrongs/android/pop/app/a/w;

    invoke-direct {v2, p0, v0}, Lcom/estrongs/android/pop/app/a/w;-><init>(Lcom/estrongs/android/pop/app/a/v;Lcom/estrongs/android/pop/app/a/al;)V

    invoke-virtual {v1, v2}, Lcom/estrongs/android/ui/dialog/eo;->a(Lcom/estrongs/android/ui/dialog/er;)V

    invoke-virtual {v1}, Lcom/estrongs/android/ui/dialog/eo;->show()V

    :cond_0
    iget-object v0, p0, Lcom/estrongs/android/pop/app/a/v;->a:Lcom/estrongs/android/pop/app/a/e;

    invoke-virtual {v0}, Lcom/estrongs/android/pop/app/a/e;->d()V

    const/4 v0, 0x0

    return v0
.end method
