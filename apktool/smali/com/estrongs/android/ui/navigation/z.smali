.class Lcom/estrongs/android/ui/navigation/z;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/estrongs/android/ui/navigation/q;


# instance fields
.field final synthetic a:Lcom/estrongs/android/ui/navigation/y;


# direct methods
.method constructor <init>(Lcom/estrongs/android/ui/navigation/y;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/ui/navigation/z;->a:Lcom/estrongs/android/ui/navigation/y;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/view/View;)V
    .locals 3

    iget-object v0, p0, Lcom/estrongs/android/ui/navigation/z;->a:Lcom/estrongs/android/ui/navigation/y;

    iget-object v0, v0, Lcom/estrongs/android/ui/navigation/y;->a:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    invoke-virtual {v0}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->o()V

    invoke-static {}, Lcom/estrongs/android/pop/FexApplication;->e()Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/estrongs/android/ui/navigation/z;->a:Lcom/estrongs/android/ui/navigation/y;

    iget-object v1, v1, Lcom/estrongs/android/ui/navigation/y;->a:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    const-class v2, Lcom/estrongs/android/ui/theme/ThemeActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iget-object v1, p0, Lcom/estrongs/android/ui/navigation/z;->a:Lcom/estrongs/android/ui/navigation/y;

    iget-object v1, v1, Lcom/estrongs/android/ui/navigation/y;->a:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    const/16 v2, 0x1020

    invoke-virtual {v1, v0, v2}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->startActivityForResult(Landroid/content/Intent;I)V

    :cond_0
    return-void
.end method
