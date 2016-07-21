.class Lcom/estrongs/android/ui/adapter/cm;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/estrongs/android/ui/adapter/cl;


# direct methods
.method constructor <init>(Lcom/estrongs/android/ui/adapter/cl;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/ui/adapter/cm;->a:Lcom/estrongs/android/ui/adapter/cl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 6

    const/4 v5, 0x0

    new-instance v0, Lcom/estrongs/android/ui/dialog/cv;

    iget-object v1, p0, Lcom/estrongs/android/ui/adapter/cm;->a:Lcom/estrongs/android/ui/adapter/cl;

    iget-object v1, v1, Lcom/estrongs/android/ui/adapter/cl;->d:Lcom/estrongs/android/ui/adapter/ListAdapter_NewNavi;

    invoke-static {v1}, Lcom/estrongs/android/ui/adapter/ListAdapter_NewNavi;->a(Lcom/estrongs/android/ui/adapter/ListAdapter_NewNavi;)Lcom/estrongs/android/pop/view/FileExplorerActivity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/estrongs/android/ui/dialog/cv;-><init>(Landroid/content/Context;)V

    iget-object v1, p0, Lcom/estrongs/android/ui/adapter/cm;->a:Lcom/estrongs/android/ui/adapter/cl;

    iget-object v1, v1, Lcom/estrongs/android/ui/adapter/cl;->c:Lcom/estrongs/android/ui/adapter/a;

    invoke-virtual {v1}, Lcom/estrongs/android/ui/adapter/a;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/estrongs/android/ui/dialog/cv;->a(Ljava/lang/CharSequence;)Lcom/estrongs/android/ui/dialog/cv;

    move-result-object v0

    invoke-virtual {v0}, Lcom/estrongs/android/ui/dialog/cv;->b()Lcom/estrongs/android/ui/dialog/ci;

    move-result-object v0

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/String;

    iget-object v2, p0, Lcom/estrongs/android/ui/adapter/cm;->a:Lcom/estrongs/android/ui/adapter/cl;

    iget-object v2, v2, Lcom/estrongs/android/ui/adapter/cl;->d:Lcom/estrongs/android/ui/adapter/ListAdapter_NewNavi;

    const v3, 0x7f080094

    invoke-static {v2, v3}, Lcom/estrongs/android/ui/adapter/ListAdapter_NewNavi;->a(Lcom/estrongs/android/ui/adapter/ListAdapter_NewNavi;I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v5

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/estrongs/android/ui/adapter/cm;->a:Lcom/estrongs/android/ui/adapter/cl;

    iget-object v3, v3, Lcom/estrongs/android/ui/adapter/cl;->d:Lcom/estrongs/android/ui/adapter/ListAdapter_NewNavi;

    const v4, 0x7f0800b4

    invoke-static {v3, v4}, Lcom/estrongs/android/ui/adapter/ListAdapter_NewNavi;->a(Lcom/estrongs/android/ui/adapter/ListAdapter_NewNavi;I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    new-instance v2, Lcom/estrongs/android/ui/adapter/cn;

    invoke-direct {v2, p0}, Lcom/estrongs/android/ui/adapter/cn;-><init>(Lcom/estrongs/android/ui/adapter/cm;)V

    invoke-virtual {v0, v1, v5, v2}, Lcom/estrongs/android/ui/dialog/ci;->setItems([Ljava/lang/CharSequence;ILandroid/content/DialogInterface$OnClickListener;)V

    invoke-virtual {v0, v5}, Lcom/estrongs/android/ui/dialog/ci;->setSelectable(Z)V

    invoke-virtual {v0}, Lcom/estrongs/android/ui/dialog/ci;->show()V

    return-void
.end method
