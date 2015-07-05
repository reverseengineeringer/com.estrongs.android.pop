.class Lcom/estrongs/android/ui/navigation/j;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/MenuItem$OnMenuItemClickListener;


# instance fields
.field final synthetic a:Lcom/estrongs/android/ui/navigation/a;


# direct methods
.method constructor <init>(Lcom/estrongs/android/ui/navigation/a;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/ui/navigation/j;->a:Lcom/estrongs/android/ui/navigation/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMenuItemClick(Landroid/view/MenuItem;)Z
    .locals 3

    iget-object v0, p0, Lcom/estrongs/android/ui/navigation/j;->a:Lcom/estrongs/android/ui/navigation/a;

    invoke-static {v0}, Lcom/estrongs/android/ui/navigation/a;->b(Lcom/estrongs/android/ui/navigation/a;)Lcom/estrongs/android/pop/view/FileExplorerActivity;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.estrongs.action.DEFAULT_OPEN_WINDOW_LIST"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->startActivity(Landroid/content/Intent;)V

    const/4 v0, 0x0

    return v0
.end method
