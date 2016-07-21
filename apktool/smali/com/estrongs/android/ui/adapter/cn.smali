.class Lcom/estrongs/android/ui/adapter/cn;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Lcom/estrongs/android/ui/adapter/cm;


# direct methods
.method constructor <init>(Lcom/estrongs/android/ui/adapter/cm;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/ui/adapter/cn;->a:Lcom/estrongs/android/ui/adapter/cm;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    if-nez p2, :cond_1

    iget-object v0, p0, Lcom/estrongs/android/ui/adapter/cn;->a:Lcom/estrongs/android/ui/adapter/cm;

    iget-object v0, v0, Lcom/estrongs/android/ui/adapter/cm;->a:Lcom/estrongs/android/ui/adapter/cl;

    iget-object v0, v0, Lcom/estrongs/android/ui/adapter/cl;->d:Lcom/estrongs/android/ui/adapter/ListAdapter_NewNavi;

    invoke-static {v0}, Lcom/estrongs/android/ui/adapter/ListAdapter_NewNavi;->a(Lcom/estrongs/android/ui/adapter/ListAdapter_NewNavi;)Lcom/estrongs/android/pop/view/FileExplorerActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/estrongs/android/ui/adapter/cn;->a:Lcom/estrongs/android/ui/adapter/cm;

    iget-object v1, v1, Lcom/estrongs/android/ui/adapter/cm;->a:Lcom/estrongs/android/ui/adapter/cl;

    iget-object v1, v1, Lcom/estrongs/android/ui/adapter/cl;->c:Lcom/estrongs/android/ui/adapter/a;

    invoke-virtual {v1}, Lcom/estrongs/android/ui/adapter/a;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->d(Ljava/lang/String;)Lcom/estrongs/android/view/cr;

    :cond_0
    :goto_0
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    return-void

    :cond_1
    const/4 v0, 0x1

    if-ne p2, v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/ui/adapter/cn;->a:Lcom/estrongs/android/ui/adapter/cm;

    iget-object v0, v0, Lcom/estrongs/android/ui/adapter/cm;->a:Lcom/estrongs/android/ui/adapter/cl;

    iget-object v0, v0, Lcom/estrongs/android/ui/adapter/cl;->d:Lcom/estrongs/android/ui/adapter/ListAdapter_NewNavi;

    invoke-static {v0}, Lcom/estrongs/android/ui/adapter/ListAdapter_NewNavi;->a(Lcom/estrongs/android/ui/adapter/ListAdapter_NewNavi;)Lcom/estrongs/android/pop/view/FileExplorerActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/estrongs/android/ui/adapter/cn;->a:Lcom/estrongs/android/ui/adapter/cm;

    iget-object v1, v1, Lcom/estrongs/android/ui/adapter/cm;->a:Lcom/estrongs/android/ui/adapter/cl;

    iget-object v1, v1, Lcom/estrongs/android/ui/adapter/cl;->c:Lcom/estrongs/android/ui/adapter/a;

    invoke-virtual {v1}, Lcom/estrongs/android/ui/adapter/a;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->b(Ljava/lang/String;)V

    goto :goto_0
.end method
