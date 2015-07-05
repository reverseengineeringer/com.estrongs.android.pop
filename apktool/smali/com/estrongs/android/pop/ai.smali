.class public Lcom/estrongs/android/pop/ai;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/Observer;


# virtual methods
.method public update(Ljava/util/Observable;Ljava/lang/Object;)V
    .locals 3

    invoke-static {}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->J()Lcom/estrongs/android/pop/view/FileExplorerActivity;

    move-result-object v1

    if-eqz v1, :cond_0

    instance-of v0, p1, Lcom/estrongs/android/pop/app/b/m;

    if-eqz v0, :cond_0

    const-string v0, "smb://"

    invoke-virtual {v1}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->z()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    if-eqz p2, :cond_1

    instance-of v0, p2, Lcom/estrongs/android/pop/app/b/o;

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v1, v0}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->d(Z)V

    :cond_0
    return-void

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
