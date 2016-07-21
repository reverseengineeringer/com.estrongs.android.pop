.class Lcom/estrongs/android/ui/dialog/ea;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Lcom/estrongs/android/ui/dialog/dx;


# direct methods
.method constructor <init>(Lcom/estrongs/android/ui/dialog/dx;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/ui/dialog/ea;->a:Lcom/estrongs/android/ui/dialog/dx;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3

    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    invoke-static {}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->X()Lcom/estrongs/android/pop/view/FileExplorerActivity;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/estrongs/android/ui/dialog/ea;->a:Lcom/estrongs/android/ui/dialog/dx;

    invoke-static {v1}, Lcom/estrongs/android/ui/dialog/dx;->a(Lcom/estrongs/android/ui/dialog/dx;)Lcom/estrongs/android/ui/dialog/ee;

    move-result-object v1

    iget-object v1, v1, Lcom/estrongs/android/ui/dialog/ee;->a:Ljava/util/List;

    new-instance v2, Lcom/estrongs/android/ui/dialog/eb;

    invoke-direct {v2, p0, v0}, Lcom/estrongs/android/ui/dialog/eb;-><init>(Lcom/estrongs/android/ui/dialog/ea;Lcom/estrongs/android/pop/view/FileExplorerActivity;)V

    invoke-static {v0, v1, v2}, Lcom/estrongs/fs/impl/q/a;->a(Lcom/estrongs/android/pop/view/FileExplorerActivity;Ljava/util/List;Lcom/estrongs/a/a/p;)V

    :cond_0
    return-void
.end method
