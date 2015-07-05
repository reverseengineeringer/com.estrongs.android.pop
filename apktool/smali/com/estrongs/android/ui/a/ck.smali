.class final Lcom/estrongs/android/ui/a/ck;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/estrongs/android/ui/dialog/kr;


# instance fields
.field final synthetic a:Lcom/estrongs/android/pop/view/FileExplorerActivity;


# direct methods
.method constructor <init>(Lcom/estrongs/android/pop/view/FileExplorerActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/ui/a/ck;->a:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Z)V
    .locals 3

    if-eqz p1, :cond_0

    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/estrongs/android/ui/a/ck;->a:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    const-class v2, Lcom/estrongs/android/pop/app/HideListActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iget-object v1, p0, Lcom/estrongs/android/ui/a/ck;->a:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    const v2, 0x1000101c

    invoke-virtual {v1, v0, v2}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->startActivityForResult(Landroid/content/Intent;I)V

    :cond_0
    return-void
.end method
