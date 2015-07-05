.class Lcom/estrongs/fs/b/n;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Lcom/estrongs/fs/b/m;


# direct methods
.method constructor <init>(Lcom/estrongs/fs/b/m;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/fs/b/n;->a:Lcom/estrongs/fs/b/m;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4

    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iget-object v0, p0, Lcom/estrongs/fs/b/n;->a:Lcom/estrongs/fs/b/m;

    iget-object v0, v0, Lcom/estrongs/fs/b/m;->a:Ljava/lang/String;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/estrongs/fs/b/n;->a:Lcom/estrongs/fs/b/m;

    iget-object v0, v0, Lcom/estrongs/fs/b/m;->c:Lcom/estrongs/fs/b/k;

    iget-object v0, v0, Lcom/estrongs/fs/b/k;->b:Ljava/util/List;

    const/4 v3, 0x0

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/estrongs/fs/impl/b/c;

    invoke-virtual {v0}, Lcom/estrongs/fs/impl/b/c;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/estrongs/fs/b/n;->a:Lcom/estrongs/fs/b/m;

    iget-object v0, v0, Lcom/estrongs/fs/b/m;->c:Lcom/estrongs/fs/b/k;

    iget-object v0, v0, Lcom/estrongs/fs/b/k;->a:Landroid/app/Activity;

    invoke-static {v0, v1, v2}, Lcom/estrongs/android/pop/view/utils/AppRunner;->b(Landroid/app/Activity;Ljava/util/List;Ljava/util/List;)V

    iget-object v0, p0, Lcom/estrongs/fs/b/n;->a:Lcom/estrongs/fs/b/m;

    iget-object v0, v0, Lcom/estrongs/fs/b/m;->c:Lcom/estrongs/fs/b/k;

    iget-object v0, v0, Lcom/estrongs/fs/b/k;->a:Landroid/app/Activity;

    check-cast v0, Lcom/estrongs/android/pop/view/FileExplorerActivity;

    invoke-virtual {v0}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->Q()Lcom/estrongs/android/pop/utils/c;

    move-result-object v0

    iget-object v1, p0, Lcom/estrongs/fs/b/n;->a:Lcom/estrongs/fs/b/m;

    iget-object v1, v1, Lcom/estrongs/fs/b/m;->a:Ljava/lang/String;

    iget-object v2, p0, Lcom/estrongs/fs/b/n;->a:Lcom/estrongs/fs/b/m;

    iget-object v2, v2, Lcom/estrongs/fs/b/m;->b:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/estrongs/android/pop/utils/c;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
