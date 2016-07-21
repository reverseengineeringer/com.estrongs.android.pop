.class public Lcom/estrongs/android/pop/app/PopChromecastPlayer;
.super Lcom/estrongs/android/pop/esclasses/ESActivity;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/estrongs/android/pop/esclasses/ESActivity;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 5

    const/4 v4, 0x1

    invoke-super {p0, p1}, Lcom/estrongs/android/pop/esclasses/ESActivity;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/estrongs/android/pop/app/PopChromecastPlayer;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    invoke-virtual {p0}, Lcom/estrongs/android/pop/app/PopChromecastPlayer;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/estrongs/android/util/bg;->h(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    const-class v0, Lcom/estrongs/android/pop/app/PopVideoPlayer;

    :cond_0
    :goto_0
    if-eqz v0, :cond_4

    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2, p0, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0}, Lcom/estrongs/android/pop/app/PopChromecastPlayer;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const/4 v3, 0x3

    invoke-virtual {v2, v0, v3}, Landroid/content/Intent;->fillIn(Landroid/content/Intent;I)I

    const-string v0, "Chromecast"

    invoke-virtual {v2, v0, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string v0, "ChromecastUrl"

    invoke-static {}, Lcom/estrongs/android/g/a;->a()I

    move-result v3

    invoke-static {v1, v3, v4, v4}, Lcom/estrongs/android/util/ap;->a(Ljava/lang/String;IZZ)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :try_start_0
    invoke-virtual {p0, v2}, Lcom/estrongs/android/pop/app/PopChromecastPlayer;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    :goto_1
    invoke-virtual {p0}, Lcom/estrongs/android/pop/app/PopChromecastPlayer;->finish()V

    return-void

    :cond_2
    invoke-static {v1}, Lcom/estrongs/android/util/bg;->g(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    const-class v0, Lcom/estrongs/android/pop/app/PopAudioPlayer;

    goto :goto_0

    :cond_3
    invoke-static {v1}, Lcom/estrongs/android/util/bg;->c(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-class v0, Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/content/ActivityNotFoundException;->printStackTrace()V

    goto :goto_1

    :cond_4
    const v0, 0x7f0804a1

    invoke-static {p0, v0, v4}, Lcom/estrongs/android/ui/view/ak;->a(Landroid/content/Context;II)V

    goto :goto_1
.end method
