.class Lcom/estrongs/android/ui/e/js;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/MenuItem$OnMenuItemClickListener;


# instance fields
.field final synthetic a:Lcom/estrongs/android/ui/e/jq;


# direct methods
.method constructor <init>(Lcom/estrongs/android/ui/e/jq;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/ui/e/js;->a:Lcom/estrongs/android/ui/e/jq;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMenuItemClick(Landroid/view/MenuItem;)Z
    .locals 3

    const/4 v2, 0x1

    iget-object v0, p0, Lcom/estrongs/android/ui/e/js;->a:Lcom/estrongs/android/ui/e/jq;

    invoke-static {v0}, Lcom/estrongs/android/ui/e/jq;->a(Lcom/estrongs/android/ui/e/jq;)Lcom/estrongs/android/pop/view/FileExplorerActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/estrongs/android/ui/e/js;->a:Lcom/estrongs/android/ui/e/jq;

    invoke-static {v1}, Lcom/estrongs/android/ui/e/jq;->a(Lcom/estrongs/android/ui/e/jq;)Lcom/estrongs/android/pop/view/FileExplorerActivity;

    move-result-object v1

    invoke-virtual {v1}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->P()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, v2}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->a(Ljava/lang/String;Z)V

    return v2
.end method
