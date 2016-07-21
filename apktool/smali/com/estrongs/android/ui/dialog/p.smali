.class Lcom/estrongs/android/ui/dialog/p;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Lcom/estrongs/android/ui/dialog/o;


# direct methods
.method constructor <init>(Lcom/estrongs/android/ui/dialog/o;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/ui/dialog/p;->a:Lcom/estrongs/android/ui/dialog/o;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3

    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iget-object v0, p0, Lcom/estrongs/android/ui/dialog/p;->a:Lcom/estrongs/android/ui/dialog/o;

    iget-object v0, v0, Lcom/estrongs/android/ui/dialog/o;->a:Lcom/estrongs/fs/impl/b/d;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/estrongs/android/ui/dialog/p;->a:Lcom/estrongs/android/ui/dialog/o;

    invoke-static {v0}, Lcom/estrongs/android/ui/dialog/o;->a(Lcom/estrongs/android/ui/dialog/o;)Landroid/app/Activity;

    move-result-object v0

    instance-of v0, v0, Lcom/estrongs/android/pop/view/FileExplorerActivity;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/ui/dialog/p;->a:Lcom/estrongs/android/ui/dialog/o;

    invoke-static {v0}, Lcom/estrongs/android/ui/dialog/o;->a(Lcom/estrongs/android/ui/dialog/o;)Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/estrongs/android/pop/view/FileExplorerActivity;

    invoke-virtual {v0}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->ag()Lcom/estrongs/android/pop/utils/c;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Lcom/estrongs/android/pop/utils/c;->c(Lcom/estrongs/android/pop/view/FileExplorerActivity;Ljava/util/List;)V

    :cond_0
    return-void
.end method
