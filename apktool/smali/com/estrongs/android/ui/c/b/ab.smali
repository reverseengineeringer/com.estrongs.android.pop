.class Lcom/estrongs/android/ui/c/b/ab;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/estrongs/android/ui/c/b/u;


# direct methods
.method constructor <init>(Lcom/estrongs/android/ui/c/b/u;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/ui/c/b/ab;->a:Lcom/estrongs/android/ui/c/b/u;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/estrongs/android/ui/c/b/ab;->a:Lcom/estrongs/android/ui/c/b/u;

    iget-object v1, v1, Lcom/estrongs/android/ui/c/b/u;->a:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    const-class v2, Lcom/estrongs/android/pop/app/GestureManageActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iget-object v1, p0, Lcom/estrongs/android/ui/c/b/ab;->a:Lcom/estrongs/android/ui/c/b/u;

    iget-object v1, v1, Lcom/estrongs/android/ui/c/b/u;->a:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    const v2, 0x100101e

    invoke-virtual {v1, v0, v2}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->startActivityForResult(Landroid/content/Intent;I)V

    const-string v0, "Home_Gesture"

    const-string v1, "Home_Gesture"

    invoke-static {v0, v1}, Lcom/estrongs/android/util/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "Home_Gesture_UV"

    const-string v1, "Home_Gesture_UV"

    invoke-static {v0, v1}, Lcom/estrongs/android/util/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
