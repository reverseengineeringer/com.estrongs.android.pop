.class Lcom/estrongs/android/ui/adapter/ct;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:I

.field final synthetic b:Lcom/estrongs/android/ui/adapter/ListAdapter_NewNavi;


# direct methods
.method constructor <init>(Lcom/estrongs/android/ui/adapter/ListAdapter_NewNavi;I)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/ui/adapter/ct;->b:Lcom/estrongs/android/ui/adapter/ListAdapter_NewNavi;

    iput p2, p0, Lcom/estrongs/android/ui/adapter/ct;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 7

    const v6, 0x7f0e019c

    const/4 v1, 0x1

    const/4 v2, 0x0

    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    const/16 v3, 0x69

    iput v3, v0, Landroid/os/Message;->what:I

    iget v3, p0, Lcom/estrongs/android/ui/adapter/ct;->a:I

    iget-object v4, p0, Lcom/estrongs/android/ui/adapter/ct;->b:Lcom/estrongs/android/ui/adapter/ListAdapter_NewNavi;

    sget-object v5, Lcom/estrongs/android/ui/adapter/ListAdapter_NewNavi$GroupType;->RecycleBin:Lcom/estrongs/android/ui/adapter/ListAdapter_NewNavi$GroupType;

    invoke-virtual {v4, v5}, Lcom/estrongs/android/ui/adapter/ListAdapter_NewNavi;->a(Lcom/estrongs/android/ui/adapter/ListAdapter_NewNavi$GroupType;)I

    move-result v4

    if-ne v3, v4, :cond_1

    iget-object v1, p0, Lcom/estrongs/android/ui/adapter/ct;->b:Lcom/estrongs/android/ui/adapter/ListAdapter_NewNavi;

    invoke-static {v1}, Lcom/estrongs/android/ui/adapter/ListAdapter_NewNavi;->a(Lcom/estrongs/android/ui/adapter/ListAdapter_NewNavi;)Lcom/estrongs/android/pop/view/FileExplorerActivity;

    move-result-object v1

    invoke-static {v1}, Lcom/estrongs/android/ui/adapter/ListAdapter_NewNavi;->c(Lcom/estrongs/android/pop/view/FileExplorerActivity;)V

    iget-object v1, p0, Lcom/estrongs/android/ui/adapter/ct;->b:Lcom/estrongs/android/ui/adapter/ListAdapter_NewNavi;

    invoke-static {v1}, Lcom/estrongs/android/ui/adapter/ListAdapter_NewNavi;->d(Lcom/estrongs/android/ui/adapter/ListAdapter_NewNavi;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget v3, p0, Lcom/estrongs/android/ui/adapter/ct;->a:I

    iget-object v4, p0, Lcom/estrongs/android/ui/adapter/ct;->b:Lcom/estrongs/android/ui/adapter/ListAdapter_NewNavi;

    sget-object v5, Lcom/estrongs/android/ui/adapter/ListAdapter_NewNavi$GroupType;->AppAssociate:Lcom/estrongs/android/ui/adapter/ListAdapter_NewNavi$GroupType;

    invoke-virtual {v4, v5}, Lcom/estrongs/android/ui/adapter/ListAdapter_NewNavi;->a(Lcom/estrongs/android/ui/adapter/ListAdapter_NewNavi$GroupType;)I

    move-result v4

    if-ne v3, v4, :cond_2

    iget-object v1, p0, Lcom/estrongs/android/ui/adapter/ct;->b:Lcom/estrongs/android/ui/adapter/ListAdapter_NewNavi;

    invoke-static {v1}, Lcom/estrongs/android/ui/adapter/ListAdapter_NewNavi;->a(Lcom/estrongs/android/ui/adapter/ListAdapter_NewNavi;)Lcom/estrongs/android/pop/view/FileExplorerActivity;

    move-result-object v1

    const-string v2, "appfolder://"

    invoke-virtual {v1, v2}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->d(Ljava/lang/String;)Lcom/estrongs/android/view/cr;

    iget-object v1, p0, Lcom/estrongs/android/ui/adapter/ct;->b:Lcom/estrongs/android/ui/adapter/ListAdapter_NewNavi;

    invoke-static {v1}, Lcom/estrongs/android/ui/adapter/ListAdapter_NewNavi;->d(Lcom/estrongs/android/ui/adapter/ListAdapter_NewNavi;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    :cond_2
    iget v3, p0, Lcom/estrongs/android/ui/adapter/ct;->a:I

    iget-object v4, p0, Lcom/estrongs/android/ui/adapter/ct;->b:Lcom/estrongs/android/ui/adapter/ListAdapter_NewNavi;

    sget-object v5, Lcom/estrongs/android/ui/adapter/ListAdapter_NewNavi$GroupType;->RootExplorer:Lcom/estrongs/android/ui/adapter/ListAdapter_NewNavi$GroupType;

    invoke-virtual {v4, v5}, Lcom/estrongs/android/ui/adapter/ListAdapter_NewNavi;->a(Lcom/estrongs/android/ui/adapter/ListAdapter_NewNavi$GroupType;)I

    move-result v4

    if-ne v3, v4, :cond_3

    iget-object v1, p0, Lcom/estrongs/android/ui/adapter/ct;->b:Lcom/estrongs/android/ui/adapter/ListAdapter_NewNavi;

    invoke-static {v1}, Lcom/estrongs/android/ui/adapter/ListAdapter_NewNavi;->a(Lcom/estrongs/android/ui/adapter/ListAdapter_NewNavi;)Lcom/estrongs/android/pop/view/FileExplorerActivity;

    move-result-object v1

    invoke-static {v1}, Lcom/estrongs/android/ui/adapter/ListAdapter_NewNavi;->b(Lcom/estrongs/android/pop/view/FileExplorerActivity;)V

    iget-object v1, p0, Lcom/estrongs/android/ui/adapter/ct;->b:Lcom/estrongs/android/ui/adapter/ListAdapter_NewNavi;

    invoke-static {v1}, Lcom/estrongs/android/ui/adapter/ListAdapter_NewNavi;->d(Lcom/estrongs/android/ui/adapter/ListAdapter_NewNavi;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    :cond_3
    iget v3, p0, Lcom/estrongs/android/ui/adapter/ct;->a:I

    iget-object v4, p0, Lcom/estrongs/android/ui/adapter/ct;->b:Lcom/estrongs/android/ui/adapter/ListAdapter_NewNavi;

    sget-object v5, Lcom/estrongs/android/ui/adapter/ListAdapter_NewNavi$GroupType;->Gesture:Lcom/estrongs/android/ui/adapter/ListAdapter_NewNavi$GroupType;

    invoke-virtual {v4, v5}, Lcom/estrongs/android/ui/adapter/ListAdapter_NewNavi;->a(Lcom/estrongs/android/ui/adapter/ListAdapter_NewNavi$GroupType;)I

    move-result v4

    if-ne v3, v4, :cond_4

    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/estrongs/android/ui/adapter/ct;->b:Lcom/estrongs/android/ui/adapter/ListAdapter_NewNavi;

    invoke-static {v2}, Lcom/estrongs/android/ui/adapter/ListAdapter_NewNavi;->a(Lcom/estrongs/android/ui/adapter/ListAdapter_NewNavi;)Lcom/estrongs/android/pop/view/FileExplorerActivity;

    move-result-object v2

    const-class v3, Lcom/estrongs/android/pop/app/GestureManageActivity;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iget-object v2, p0, Lcom/estrongs/android/ui/adapter/ct;->b:Lcom/estrongs/android/ui/adapter/ListAdapter_NewNavi;

    invoke-static {v2}, Lcom/estrongs/android/ui/adapter/ListAdapter_NewNavi;->a(Lcom/estrongs/android/ui/adapter/ListAdapter_NewNavi;)Lcom/estrongs/android/pop/view/FileExplorerActivity;

    move-result-object v2

    const/16 v3, 0x101e

    invoke-virtual {v2, v1, v3}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->startActivityForResult(Landroid/content/Intent;I)V

    iget-object v1, p0, Lcom/estrongs/android/ui/adapter/ct;->b:Lcom/estrongs/android/ui/adapter/ListAdapter_NewNavi;

    invoke-static {v1}, Lcom/estrongs/android/ui/adapter/ListAdapter_NewNavi;->d(Lcom/estrongs/android/ui/adapter/ListAdapter_NewNavi;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    :cond_4
    iget v0, p0, Lcom/estrongs/android/ui/adapter/ct;->a:I

    iget-object v3, p0, Lcom/estrongs/android/ui/adapter/ct;->b:Lcom/estrongs/android/ui/adapter/ListAdapter_NewNavi;

    sget-object v4, Lcom/estrongs/android/ui/adapter/ListAdapter_NewNavi$GroupType;->Hidden:Lcom/estrongs/android/ui/adapter/ListAdapter_NewNavi$GroupType;

    invoke-virtual {v3, v4}, Lcom/estrongs/android/ui/adapter/ListAdapter_NewNavi;->a(Lcom/estrongs/android/ui/adapter/ListAdapter_NewNavi$GroupType;)I

    move-result v3

    if-ne v0, v3, :cond_6

    invoke-virtual {p1, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/SwitchCompat;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/support/v7/widget/SwitchCompat;->isChecked()Z

    move-result v3

    if-nez v3, :cond_5

    :goto_1
    invoke-virtual {v0, v1}, Landroid/support/v7/widget/SwitchCompat;->setChecked(Z)V

    goto/16 :goto_0

    :cond_5
    move v1, v2

    goto :goto_1

    :cond_6
    invoke-virtual {p1, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/SwitchCompat;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/support/v7/widget/SwitchCompat;->isChecked()Z

    move-result v3

    if-nez v3, :cond_7

    :goto_2
    invoke-virtual {v0, v1}, Landroid/support/v7/widget/SwitchCompat;->setChecked(Z)V

    goto/16 :goto_0

    :cond_7
    move v1, v2

    goto :goto_2
.end method
