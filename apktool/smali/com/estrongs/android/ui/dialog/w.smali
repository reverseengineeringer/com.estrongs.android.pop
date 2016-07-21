.class Lcom/estrongs/android/ui/dialog/w;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/estrongs/android/ui/dialog/o;

.field final synthetic b:Lcom/estrongs/android/ui/dialog/u;


# direct methods
.method constructor <init>(Lcom/estrongs/android/ui/dialog/u;Lcom/estrongs/android/ui/dialog/o;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/ui/dialog/w;->b:Lcom/estrongs/android/ui/dialog/u;

    iput-object p2, p0, Lcom/estrongs/android/ui/dialog/w;->a:Lcom/estrongs/android/ui/dialog/o;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    iget-object v0, p0, Lcom/estrongs/android/ui/dialog/w;->b:Lcom/estrongs/android/ui/dialog/u;

    iget-object v0, v0, Lcom/estrongs/android/ui/dialog/u;->a:Lcom/estrongs/android/ui/dialog/o;

    invoke-virtual {v0}, Lcom/estrongs/android/ui/dialog/o;->b()V

    iget-object v0, p0, Lcom/estrongs/android/ui/dialog/w;->b:Lcom/estrongs/android/ui/dialog/u;

    invoke-static {v0}, Lcom/estrongs/android/ui/dialog/u;->a(Lcom/estrongs/android/ui/dialog/u;)Landroid/app/Activity;

    move-result-object v0

    instance-of v0, v0, Lcom/estrongs/android/pop/view/FileExplorerActivity;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/ui/dialog/w;->b:Lcom/estrongs/android/ui/dialog/u;

    invoke-static {v0}, Lcom/estrongs/android/ui/dialog/u;->b(Lcom/estrongs/android/ui/dialog/u;)Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/estrongs/android/pop/view/FileExplorerActivity;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iget-object v2, p0, Lcom/estrongs/android/ui/dialog/w;->b:Lcom/estrongs/android/ui/dialog/u;

    iget-object v2, v2, Lcom/estrongs/android/ui/dialog/u;->a:Lcom/estrongs/android/ui/dialog/o;

    iget-object v2, v2, Lcom/estrongs/android/ui/dialog/o;->a:Lcom/estrongs/fs/impl/b/d;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v0}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->ag()Lcom/estrongs/android/pop/utils/c;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/estrongs/android/pop/utils/c;->a(Ljava/util/List;)Z

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/estrongs/android/ui/dialog/w;->b:Lcom/estrongs/android/ui/dialog/u;

    iget-object v1, p0, Lcom/estrongs/android/ui/dialog/w;->b:Lcom/estrongs/android/ui/dialog/u;

    iget-object v1, v1, Lcom/estrongs/android/ui/dialog/u;->a:Lcom/estrongs/android/ui/dialog/o;

    iget-object v1, v1, Lcom/estrongs/android/ui/dialog/o;->a:Lcom/estrongs/fs/impl/b/d;

    iget-object v2, p0, Lcom/estrongs/android/ui/dialog/w;->b:Lcom/estrongs/android/ui/dialog/u;

    invoke-static {v2}, Lcom/estrongs/android/ui/dialog/u;->c(Lcom/estrongs/android/ui/dialog/u;)Landroid/app/Activity;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/estrongs/android/ui/dialog/u;->a(Lcom/estrongs/android/ui/dialog/u;Lcom/estrongs/fs/impl/b/d;Landroid/content/Context;)V

    goto :goto_0
.end method
