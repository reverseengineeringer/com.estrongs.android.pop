.class Lcom/estrongs/android/view/ad;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/estrongs/android/ui/navigation/q;


# instance fields
.field final synthetic a:Ljava/util/List;

.field final synthetic b:Ljava/util/List;

.field final synthetic c:Lcom/estrongs/android/view/y;


# direct methods
.method constructor <init>(Lcom/estrongs/android/view/y;Ljava/util/List;Ljava/util/List;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/view/ad;->c:Lcom/estrongs/android/view/y;

    iput-object p2, p0, Lcom/estrongs/android/view/ad;->a:Ljava/util/List;

    iput-object p3, p0, Lcom/estrongs/android/view/ad;->b:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/view/View;)V
    .locals 7

    const/4 v4, 0x0

    iget-object v0, p0, Lcom/estrongs/android/view/ad;->c:Lcom/estrongs/android/view/y;

    invoke-static {v0}, Lcom/estrongs/android/view/y;->a(Lcom/estrongs/android/view/y;)Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/estrongs/android/pop/view/FileExplorerActivity;

    invoke-virtual {v0}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->P()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/estrongs/android/util/ap;->cc(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    move v3, v4

    :goto_0
    iget-object v1, p0, Lcom/estrongs/android/view/ad;->a:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v3, v1, :cond_3

    iget-object v1, p0, Lcom/estrongs/android/view/ad;->a:Ljava/util/List;

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    iget-object v2, p0, Lcom/estrongs/android/view/ad;->b:Ljava/util/List;

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    invoke-static {v5}, Lcom/estrongs/android/util/ap;->ci(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/estrongs/fs/h;

    invoke-interface {v2}, Lcom/estrongs/fs/h;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/estrongs/android/util/ap;->ci(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-static {v5}, Lcom/estrongs/android/util/ap;->aL(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2

    :cond_0
    iget-object v0, p0, Lcom/estrongs/android/view/ad;->c:Lcom/estrongs/android/view/y;

    invoke-static {v0}, Lcom/estrongs/android/view/y;->a(Lcom/estrongs/android/view/y;)Landroid/app/Activity;

    move-result-object v0

    const v1, 0x7f0804aa

    invoke-static {v0, v1, v4}, Lcom/estrongs/android/ui/view/ak;->a(Landroid/content/Context;II)V

    :cond_1
    :goto_1
    return-void

    :cond_2
    invoke-virtual {v0}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->Q()Lcom/estrongs/fs/h;

    move-result-object v2

    invoke-static {v0, v1, v2, v6}, Lcom/estrongs/android/pop/utils/ao;->a(Landroid/app/Activity;Ljava/util/List;Lcom/estrongs/fs/h;Z)V

    add-int/lit8 v1, v3, 0x1

    move v3, v1

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/estrongs/android/view/ad;->c:Lcom/estrongs/android/view/y;

    invoke-static {v0}, Lcom/estrongs/android/view/y;->a(Lcom/estrongs/android/view/y;)Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/estrongs/android/pop/view/FileExplorerActivity;

    invoke-virtual {v0}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->j()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->i()V

    goto :goto_1
.end method
