.class Lcom/estrongs/android/pop/app/eu;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/MenuItem$OnMenuItemClickListener;


# instance fields
.field final synthetic a:Lcom/estrongs/android/pop/app/PopAudioPlayer;


# direct methods
.method constructor <init>(Lcom/estrongs/android/pop/app/PopAudioPlayer;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/pop/app/eu;->a:Lcom/estrongs/android/pop/app/PopAudioPlayer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMenuItemClick(Landroid/view/MenuItem;)Z
    .locals 5

    iget-object v0, p0, Lcom/estrongs/android/pop/app/eu;->a:Lcom/estrongs/android/pop/app/PopAudioPlayer;

    invoke-virtual {v0}, Lcom/estrongs/android/pop/app/PopAudioPlayer;->v()Lcom/estrongs/android/pop/app/c/j;

    move-result-object v0

    if-eqz v0, :cond_0

    new-instance v1, Lcom/estrongs/android/ui/dialog/er;

    iget-object v2, p0, Lcom/estrongs/android/pop/app/eu;->a:Lcom/estrongs/android/pop/app/PopAudioPlayer;

    iget-object v3, p0, Lcom/estrongs/android/pop/app/eu;->a:Lcom/estrongs/android/pop/app/PopAudioPlayer;

    const v4, 0x7f080148

    invoke-virtual {v3, v4}, Lcom/estrongs/android/pop/app/PopAudioPlayer;->getString(I)Ljava/lang/String;

    move-result-object v3

    const-string v4, ""

    invoke-direct {v1, v2, v3, v4}, Lcom/estrongs/android/ui/dialog/er;-><init>(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V

    new-instance v2, Lcom/estrongs/android/pop/app/ev;

    invoke-direct {v2, p0, v0}, Lcom/estrongs/android/pop/app/ev;-><init>(Lcom/estrongs/android/pop/app/eu;Lcom/estrongs/android/pop/app/c/j;)V

    invoke-virtual {v1, v2}, Lcom/estrongs/android/ui/dialog/er;->a(Lcom/estrongs/android/ui/dialog/eu;)V

    invoke-virtual {v1}, Lcom/estrongs/android/ui/dialog/er;->show()V

    :cond_0
    const/4 v0, 0x0

    return v0
.end method
