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

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p0, Lcom/estrongs/android/ui/dialog/p;->a:Lcom/estrongs/android/ui/dialog/o;

    iget-object v1, v1, Lcom/estrongs/android/ui/dialog/o;->a:Lcom/estrongs/fs/impl/b/c;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Lcom/estrongs/android/ui/dialog/p;->a:Lcom/estrongs/android/ui/dialog/o;

    invoke-static {v1}, Lcom/estrongs/android/ui/dialog/o;->a(Lcom/estrongs/android/ui/dialog/o;)Lcom/estrongs/android/pop/view/FileExplorerActivity;

    move-result-object v1

    invoke-virtual {v1}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->Q()Lcom/estrongs/android/pop/utils/c;

    move-result-object v1

    iget-object v2, p0, Lcom/estrongs/android/ui/dialog/p;->a:Lcom/estrongs/android/ui/dialog/o;

    invoke-static {v2}, Lcom/estrongs/android/ui/dialog/o;->a(Lcom/estrongs/android/ui/dialog/o;)Lcom/estrongs/android/pop/view/FileExplorerActivity;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Lcom/estrongs/android/pop/utils/c;->c(Lcom/estrongs/android/pop/view/FileExplorerActivity;Ljava/util/List;)V

    return-void
.end method
