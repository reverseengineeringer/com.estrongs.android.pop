.class Lcom/estrongs/android/pop/view/bm;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:[Lcom/estrongs/fs/impl/usb/g;

.field final synthetic b:Z

.field final synthetic c:Ljava/util/ArrayList;

.field final synthetic d:Ljava/util/ArrayList;

.field final synthetic e:Lcom/estrongs/android/pop/view/bl;


# direct methods
.method constructor <init>(Lcom/estrongs/android/pop/view/bl;[Lcom/estrongs/fs/impl/usb/g;ZLjava/util/ArrayList;Ljava/util/ArrayList;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/pop/view/bm;->e:Lcom/estrongs/android/pop/view/bl;

    iput-object p2, p0, Lcom/estrongs/android/pop/view/bm;->a:[Lcom/estrongs/fs/impl/usb/g;

    iput-boolean p3, p0, Lcom/estrongs/android/pop/view/bm;->b:Z

    iput-object p4, p0, Lcom/estrongs/android/pop/view/bm;->c:Ljava/util/ArrayList;

    iput-object p5, p0, Lcom/estrongs/android/pop/view/bm;->d:Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    iget-object v0, p0, Lcom/estrongs/android/pop/view/bm;->e:Lcom/estrongs/android/pop/view/bl;

    iget-object v0, v0, Lcom/estrongs/android/pop/view/bl;->a:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    invoke-virtual {v0}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->O()Lcom/estrongs/android/ui/navigation/n;

    move-result-object v1

    iget-object v0, p0, Lcom/estrongs/android/pop/view/bm;->a:[Lcom/estrongs/fs/impl/usb/g;

    if-eqz v0, :cond_2

    if-eqz v1, :cond_2

    iget-object v2, p0, Lcom/estrongs/android/pop/view/bm;->a:[Lcom/estrongs/fs/impl/usb/g;

    array-length v3, v2

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v3, :cond_2

    aget-object v4, v2, v0

    iget-boolean v5, p0, Lcom/estrongs/android/pop/view/bm;->b:Z

    if-eqz v5, :cond_1

    invoke-virtual {v4}, Lcom/estrongs/fs/impl/usb/g;->j()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/estrongs/android/ui/navigation/n;->b(Ljava/lang/String;)V

    :cond_0
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {v4}, Lcom/estrongs/fs/impl/usb/g;->g()Z

    move-result v5

    if-nez v5, :cond_0

    invoke-virtual {v4}, Lcom/estrongs/fs/impl/usb/g;->j()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4}, Lcom/estrongs/fs/impl/usb/g;->k()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v5, v4}, Lcom/estrongs/android/ui/navigation/n;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_2
    iget-object v0, p0, Lcom/estrongs/android/pop/view/bm;->c:Ljava/util/ArrayList;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/estrongs/android/pop/view/bm;->d:Ljava/util/ArrayList;

    if-eqz v0, :cond_5

    if-eqz v1, :cond_4

    iget-object v0, p0, Lcom/estrongs/android/pop/view/bm;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v0}, Lcom/estrongs/android/ui/navigation/n;->b(Ljava/lang/String;)V

    goto :goto_2

    :cond_3
    iget-object v0, p0, Lcom/estrongs/android/pop/view/bm;->d:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v0}, Lcom/estrongs/android/ui/navigation/n;->a(Ljava/lang/String;)V

    goto :goto_3

    :cond_4
    iget-object v0, p0, Lcom/estrongs/android/pop/view/bm;->e:Lcom/estrongs/android/pop/view/bl;

    iget-object v0, v0, Lcom/estrongs/android/pop/view/bl;->a:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    invoke-static {v0}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->F(Lcom/estrongs/android/pop/view/FileExplorerActivity;)Lcom/estrongs/android/ui/c/b/t;

    move-result-object v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/estrongs/android/pop/view/bm;->e:Lcom/estrongs/android/pop/view/bl;

    iget-object v0, v0, Lcom/estrongs/android/pop/view/bl;->a:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    invoke-static {v0}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->F(Lcom/estrongs/android/pop/view/FileExplorerActivity;)Lcom/estrongs/android/ui/c/b/t;

    move-result-object v0

    iget-object v1, p0, Lcom/estrongs/android/pop/view/bm;->c:Ljava/util/ArrayList;

    invoke-interface {v0, v1}, Lcom/estrongs/android/ui/c/b/t;->b(Ljava/util/ArrayList;)V

    iget-object v0, p0, Lcom/estrongs/android/pop/view/bm;->e:Lcom/estrongs/android/pop/view/bl;

    iget-object v0, v0, Lcom/estrongs/android/pop/view/bl;->a:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    invoke-static {v0}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->F(Lcom/estrongs/android/pop/view/FileExplorerActivity;)Lcom/estrongs/android/ui/c/b/t;

    move-result-object v0

    iget-object v1, p0, Lcom/estrongs/android/pop/view/bm;->d:Ljava/util/ArrayList;

    invoke-interface {v0, v1}, Lcom/estrongs/android/ui/c/b/t;->a(Ljava/util/ArrayList;)V

    :cond_5
    return-void
.end method
