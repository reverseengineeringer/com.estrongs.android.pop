.class Lcom/estrongs/android/pop/app/ew;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/MenuItem$OnMenuItemClickListener;


# instance fields
.field final synthetic a:Lcom/estrongs/android/pop/app/PopAudioPlayer;


# direct methods
.method constructor <init>(Lcom/estrongs/android/pop/app/PopAudioPlayer;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/pop/app/ew;->a:Lcom/estrongs/android/pop/app/PopAudioPlayer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMenuItemClick(Landroid/view/MenuItem;)Z
    .locals 4

    new-instance v0, Lcom/estrongs/android/ui/dialog/er;

    iget-object v1, p0, Lcom/estrongs/android/pop/app/ew;->a:Lcom/estrongs/android/pop/app/PopAudioPlayer;

    iget-object v2, p0, Lcom/estrongs/android/pop/app/ew;->a:Lcom/estrongs/android/pop/app/PopAudioPlayer;

    const v3, 0x7f080149

    invoke-virtual {v2, v3}, Lcom/estrongs/android/pop/app/PopAudioPlayer;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, ""

    invoke-direct {v0, v1, v2, v3}, Lcom/estrongs/android/ui/dialog/er;-><init>(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Lcom/estrongs/android/pop/app/ex;

    invoke-direct {v1, p0}, Lcom/estrongs/android/pop/app/ex;-><init>(Lcom/estrongs/android/pop/app/ew;)V

    invoke-virtual {v0, v1}, Lcom/estrongs/android/ui/dialog/er;->a(Lcom/estrongs/android/ui/dialog/eu;)V

    invoke-virtual {v0}, Lcom/estrongs/android/ui/dialog/er;->show()V

    const/4 v0, 0x0

    return v0
.end method
