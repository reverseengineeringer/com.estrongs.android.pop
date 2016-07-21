.class Lcom/estrongs/android/pop/view/ak;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:[Lcom/estrongs/fs/impl/usb/g;

.field final synthetic b:Z

.field final synthetic c:Ljava/util/ArrayList;

.field final synthetic d:Ljava/util/ArrayList;

.field final synthetic e:Lcom/estrongs/android/pop/view/aj;


# direct methods
.method constructor <init>(Lcom/estrongs/android/pop/view/aj;[Lcom/estrongs/fs/impl/usb/g;ZLjava/util/ArrayList;Ljava/util/ArrayList;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/pop/view/ak;->e:Lcom/estrongs/android/pop/view/aj;

    iput-object p2, p0, Lcom/estrongs/android/pop/view/ak;->a:[Lcom/estrongs/fs/impl/usb/g;

    iput-boolean p3, p0, Lcom/estrongs/android/pop/view/ak;->b:Z

    iput-object p4, p0, Lcom/estrongs/android/pop/view/ak;->c:Ljava/util/ArrayList;

    iput-object p5, p0, Lcom/estrongs/android/pop/view/ak;->d:Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    iget-object v0, p0, Lcom/estrongs/android/pop/view/ak;->e:Lcom/estrongs/android/pop/view/aj;

    iget-object v0, v0, Lcom/estrongs/android/pop/view/aj;->a:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    invoke-virtual {v0}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->ad()Lcom/estrongs/android/ui/navigation/m;

    move-result-object v1

    iget-object v0, p0, Lcom/estrongs/android/pop/view/ak;->a:[Lcom/estrongs/fs/impl/usb/g;

    if-eqz v0, :cond_2

    if-eqz v1, :cond_2

    iget-object v2, p0, Lcom/estrongs/android/pop/view/ak;->a:[Lcom/estrongs/fs/impl/usb/g;

    array-length v3, v2

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v3, :cond_2

    aget-object v4, v2, v0

    iget-boolean v5, p0, Lcom/estrongs/android/pop/view/ak;->b:Z

    if-eqz v5, :cond_1

    invoke-virtual {v4}, Lcom/estrongs/fs/impl/usb/g;->j()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Lcom/estrongs/android/ui/navigation/m;->b(Ljava/lang/String;)V

    iget-object v5, p0, Lcom/estrongs/android/pop/view/ak;->c:Ljava/util/ArrayList;

    invoke-virtual {v4}, Lcom/estrongs/fs/impl/usb/g;->j()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

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

    move-result-object v6

    invoke-virtual {v1, v5, v6}, Lcom/estrongs/android/ui/navigation/m;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v5, p0, Lcom/estrongs/android/pop/view/ak;->d:Ljava/util/ArrayList;

    invoke-virtual {v4}, Lcom/estrongs/fs/impl/usb/g;->j()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_2
    iget-object v0, p0, Lcom/estrongs/android/pop/view/ak;->c:Ljava/util/ArrayList;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/estrongs/android/pop/view/ak;->d:Ljava/util/ArrayList;

    if-eqz v0, :cond_5

    if-eqz v1, :cond_4

    iget-object v0, p0, Lcom/estrongs/android/pop/view/ak;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v0}, Lcom/estrongs/android/ui/navigation/m;->b(Ljava/lang/String;)V

    goto :goto_2

    :cond_3
    iget-object v0, p0, Lcom/estrongs/android/pop/view/ak;->d:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v0}, Lcom/estrongs/android/ui/navigation/m;->a(Ljava/lang/String;)V

    goto :goto_3

    :cond_4
    iget-object v0, p0, Lcom/estrongs/android/pop/view/ak;->e:Lcom/estrongs/android/pop/view/aj;

    iget-object v0, v0, Lcom/estrongs/android/pop/view/aj;->a:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    invoke-static {v0}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->B(Lcom/estrongs/android/pop/view/FileExplorerActivity;)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/estrongs/android/pop/view/ak;->e:Lcom/estrongs/android/pop/view/aj;

    iget-object v0, v0, Lcom/estrongs/android/pop/view/aj;->a:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    invoke-static {v0}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->B(Lcom/estrongs/android/pop/view/FileExplorerActivity;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_4
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/estrongs/android/ui/c/b/h;

    iget-object v2, p0, Lcom/estrongs/android/pop/view/ak;->c:Ljava/util/ArrayList;

    invoke-interface {v0, v2}, Lcom/estrongs/android/ui/c/b/h;->b(Ljava/util/ArrayList;)V

    iget-object v2, p0, Lcom/estrongs/android/pop/view/ak;->d:Ljava/util/ArrayList;

    invoke-interface {v0, v2}, Lcom/estrongs/android/ui/c/b/h;->a(Ljava/util/ArrayList;)V

    goto :goto_4

    :cond_5
    return-void
.end method
