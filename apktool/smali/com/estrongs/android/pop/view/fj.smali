.class Lcom/estrongs/android/pop/view/fj;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/estrongs/android/ui/pcs/n;


# instance fields
.field final synthetic a:Lcom/estrongs/android/pop/view/fi;


# direct methods
.method constructor <init>(Lcom/estrongs/android/pop/view/fi;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/pop/view/fj;->a:Lcom/estrongs/android/pop/view/fi;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(ZLjava/lang/String;Ljava/lang/String;)V
    .locals 3

    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/estrongs/android/pop/view/fj;->a:Lcom/estrongs/android/pop/view/fi;

    iget-object v0, v0, Lcom/estrongs/android/pop/view/fi;->a:Lcom/estrongs/android/pop/view/fh;

    iget-object v0, v0, Lcom/estrongs/android/pop/view/fh;->a:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    iget-object v0, v0, Lcom/estrongs/android/pop/view/FileExplorerActivity;->x:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/estrongs/android/view/aw;

    iget-object v2, p0, Lcom/estrongs/android/pop/view/fj;->a:Lcom/estrongs/android/pop/view/fi;

    iget-object v2, v2, Lcom/estrongs/android/pop/view/fi;->a:Lcom/estrongs/android/pop/view/fh;

    invoke-static {v2}, Lcom/estrongs/android/pop/view/fh;->a(Lcom/estrongs/android/pop/view/fh;)Lcom/estrongs/android/view/aw;

    move-result-object v2

    if-ne v0, v2, :cond_0

    iget-object v2, p0, Lcom/estrongs/android/pop/view/fj;->a:Lcom/estrongs/android/pop/view/fi;

    iget-object v2, v2, Lcom/estrongs/android/pop/view/fi;->a:Lcom/estrongs/android/pop/view/fh;

    invoke-static {v2}, Lcom/estrongs/android/pop/view/fh;->a(Lcom/estrongs/android/pop/view/fh;)Lcom/estrongs/android/view/aw;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {v0}, Lcom/estrongs/android/view/aw;->E()Lcom/estrongs/android/util/TypedMap;

    move-result-object v1

    iget-object v2, p0, Lcom/estrongs/android/pop/view/fj;->a:Lcom/estrongs/android/pop/view/fi;

    iget-object v2, v2, Lcom/estrongs/android/pop/view/fi;->a:Lcom/estrongs/android/pop/view/fh;

    invoke-static {v2}, Lcom/estrongs/android/pop/view/fh;->b(Lcom/estrongs/android/pop/view/fh;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2, v1}, Lcom/estrongs/android/view/aw;->a(Ljava/lang/String;Lcom/estrongs/android/util/TypedMap;)V

    iget-object v0, p0, Lcom/estrongs/android/pop/view/fj;->a:Lcom/estrongs/android/pop/view/fi;

    iget-object v0, v0, Lcom/estrongs/android/pop/view/fi;->a:Lcom/estrongs/android/pop/view/fh;

    iget-object v0, v0, Lcom/estrongs/android/pop/view/fh;->a:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    invoke-virtual {v0}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->E()V

    :cond_1
    return-void
.end method
