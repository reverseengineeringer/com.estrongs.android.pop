.class public Lcom/estrongs/android/pop/app/ESRingtoneChooserActivity;
.super Lcom/estrongs/android/pop/app/FileChooserActivity;


# instance fields
.field private b:Lcom/estrongs/android/util/a;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/estrongs/android/pop/app/FileChooserActivity;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/estrongs/android/pop/app/ESRingtoneChooserActivity;->b:Lcom/estrongs/android/util/a;

    return-void
.end method


# virtual methods
.method protected a(Lcom/estrongs/fs/h;)Z
    .locals 6

    const v5, 0x7f0b03ef

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-interface {p1}, Lcom/estrongs/fs/h;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/estrongs/android/util/bc;->b(Ljava/lang/String;)I

    move-result v4

    invoke-static {v4}, Lcom/estrongs/android/util/bc;->e(I)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-interface {p1}, Lcom/estrongs/fs/h;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/estrongs/android/pop/app/ESRingtoneChooserActivity;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p0, v5, v3}, Lcom/estrongs/android/ui/view/ag;->a(Landroid/content/Context;II)V

    :goto_0
    return v2

    :cond_0
    sget-object v0, Lcom/estrongs/android/pop/z;->ak:Ljava/util/List;

    if-eqz v0, :cond_2

    sget-object v0, Lcom/estrongs/android/pop/z;->ak:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_2

    move v1, v2

    :goto_1
    sget-object v0, Lcom/estrongs/android/pop/z;->ak:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_2

    sget-object v0, Lcom/estrongs/android/pop/z;->ak:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/estrongs/android/util/bc;->a(Ljava/lang/String;)I

    move-result v0

    if-ne v0, v4, :cond_1

    invoke-static {p0, v5, v3}, Lcom/estrongs/android/ui/view/ag;->a(Landroid/content/Context;II)V

    goto :goto_0

    :cond_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    :cond_2
    const v0, 0x3002a

    if-eq v4, v0, :cond_3

    const v0, 0x20020

    if-ne v4, v0, :cond_5

    :cond_3
    invoke-interface {p1}, Lcom/estrongs/fs/h;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/estrongs/android/util/am;->bl(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-static {}, Lcom/estrongs/android/util/bd;->e()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {p1}, Lcom/estrongs/fs/h;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/estrongs/fs/impl/media/a;->d(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    move v2, v3

    goto :goto_0

    :cond_4
    invoke-static {p0, v5, v3}, Lcom/estrongs/android/ui/view/ag;->a(Landroid/content/Context;II)V

    goto :goto_0

    :cond_5
    move v2, v3

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Lcom/estrongs/android/pop/app/FileChooserActivity;->onCreate(Landroid/os/Bundle;)V

    const/4 v0, 0x0

    const-string v1, "ESRingtoneChooser"

    invoke-static {p0, v0, v1}, Lcom/estrongs/android/util/a;->a(Landroid/content/Context;ZLjava/lang/String;)Lcom/estrongs/android/util/a;

    move-result-object v0

    iput-object v0, p0, Lcom/estrongs/android/pop/app/ESRingtoneChooserActivity;->b:Lcom/estrongs/android/util/a;

    return-void
.end method

.method protected onPause()V
    .locals 1

    invoke-super {p0}, Lcom/estrongs/android/pop/app/FileChooserActivity;->onPause()V

    iget-object v0, p0, Lcom/estrongs/android/pop/app/ESRingtoneChooserActivity;->b:Lcom/estrongs/android/util/a;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/pop/app/ESRingtoneChooserActivity;->b:Lcom/estrongs/android/util/a;

    invoke-virtual {v0}, Lcom/estrongs/android/util/a;->c()Z

    :cond_0
    return-void
.end method

.method protected onResume()V
    .locals 1

    invoke-super {p0}, Lcom/estrongs/android/pop/app/FileChooserActivity;->onResume()V

    iget-object v0, p0, Lcom/estrongs/android/pop/app/ESRingtoneChooserActivity;->b:Lcom/estrongs/android/util/a;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/pop/app/ESRingtoneChooserActivity;->b:Lcom/estrongs/android/util/a;

    invoke-virtual {v0}, Lcom/estrongs/android/util/a;->b()Z

    :cond_0
    return-void
.end method
