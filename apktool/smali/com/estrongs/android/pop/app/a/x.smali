.class Lcom/estrongs/android/pop/app/a/x;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/MenuItem$OnMenuItemClickListener;


# instance fields
.field final synthetic a:Lcom/estrongs/android/pop/app/a/e;


# direct methods
.method constructor <init>(Lcom/estrongs/android/pop/app/a/e;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/pop/app/a/x;->a:Lcom/estrongs/android/pop/app/a/e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMenuItemClick(Landroid/view/MenuItem;)Z
    .locals 4

    new-instance v0, Lcom/estrongs/android/ui/dialog/eo;

    iget-object v1, p0, Lcom/estrongs/android/pop/app/a/x;->a:Lcom/estrongs/android/pop/app/a/e;

    invoke-static {v1}, Lcom/estrongs/android/pop/app/a/e;->a(Lcom/estrongs/android/pop/app/a/e;)Lcom/estrongs/android/pop/app/PopAudioPlayer;

    move-result-object v1

    iget-object v2, p0, Lcom/estrongs/android/pop/app/a/x;->a:Lcom/estrongs/android/pop/app/a/e;

    invoke-static {v2}, Lcom/estrongs/android/pop/app/a/e;->a(Lcom/estrongs/android/pop/app/a/e;)Lcom/estrongs/android/pop/app/PopAudioPlayer;

    move-result-object v2

    const v3, 0x7f0b03e3

    invoke-virtual {v2, v3}, Lcom/estrongs/android/pop/app/PopAudioPlayer;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, ""

    invoke-direct {v0, v1, v2, v3}, Lcom/estrongs/android/ui/dialog/eo;-><init>(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Lcom/estrongs/android/pop/app/a/y;

    invoke-direct {v1, p0}, Lcom/estrongs/android/pop/app/a/y;-><init>(Lcom/estrongs/android/pop/app/a/x;)V

    invoke-virtual {v0, v1}, Lcom/estrongs/android/ui/dialog/eo;->a(Lcom/estrongs/android/ui/dialog/er;)V

    invoke-virtual {v0}, Lcom/estrongs/android/ui/dialog/eo;->show()V

    iget-object v0, p0, Lcom/estrongs/android/pop/app/a/x;->a:Lcom/estrongs/android/pop/app/a/e;

    invoke-virtual {v0}, Lcom/estrongs/android/pop/app/a/e;->d()V

    const/4 v0, 0x0

    return v0
.end method
