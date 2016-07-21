.class Lcom/estrongs/android/pop/view/dv;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/estrongs/android/pop/view/dt;


# direct methods
.method constructor <init>(Lcom/estrongs/android/pop/view/dt;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/pop/view/dv;->a:Lcom/estrongs/android/pop/view/dt;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    const/4 v4, 0x1

    const-string v0, "smb://"

    iget-object v1, p0, Lcom/estrongs/android/pop/view/dv;->a:Lcom/estrongs/android/pop/view/dt;

    iget-object v1, v1, Lcom/estrongs/android/pop/view/dt;->a:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    invoke-virtual {v1}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->P()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "ftp://"

    iget-object v1, p0, Lcom/estrongs/android/pop/view/dv;->a:Lcom/estrongs/android/pop/view/dt;

    iget-object v1, v1, Lcom/estrongs/android/pop/view/dt;->a:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    invoke-virtual {v1}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->P()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "adb://"

    iget-object v1, p0, Lcom/estrongs/android/pop/view/dv;->a:Lcom/estrongs/android/pop/view/dt;

    iget-object v1, v1, Lcom/estrongs/android/pop/view/dt;->a:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    invoke-virtual {v1}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->P()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/estrongs/android/pop/view/dv;->a:Lcom/estrongs/android/pop/view/dt;

    iget-object v0, v0, Lcom/estrongs/android/pop/view/dt;->a:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    invoke-virtual {v0}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->A()V

    :cond_1
    iget-object v0, p0, Lcom/estrongs/android/pop/view/dv;->a:Lcom/estrongs/android/pop/view/dt;

    iget-object v0, v0, Lcom/estrongs/android/pop/view/dt;->a:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    iget-object v0, v0, Lcom/estrongs/android/pop/view/FileExplorerActivity;->w:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/estrongs/android/view/cr;

    const-string v2, "smb://"

    invoke-virtual {v0}, Lcom/estrongs/android/view/cr;->c()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    const-string v2, "ftp://"

    invoke-virtual {v0}, Lcom/estrongs/android/view/cr;->c()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    const-string v2, "adb://"

    invoke-virtual {v0}, Lcom/estrongs/android/view/cr;->c()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    :cond_3
    invoke-virtual {v0, v4, v4}, Lcom/estrongs/android/view/cr;->a(ZZ)V

    goto :goto_0

    :cond_4
    return-void
.end method
