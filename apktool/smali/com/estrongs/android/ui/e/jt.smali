.class Lcom/estrongs/android/ui/e/jt;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/MenuItem$OnMenuItemClickListener;


# instance fields
.field final synthetic a:Lcom/estrongs/android/ui/e/jq;


# direct methods
.method constructor <init>(Lcom/estrongs/android/ui/e/jq;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/ui/e/jt;->a:Lcom/estrongs/android/ui/e/jq;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMenuItemClick(Landroid/view/MenuItem;)Z
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/ui/e/jt;->a:Lcom/estrongs/android/ui/e/jq;

    invoke-static {v0}, Lcom/estrongs/android/ui/e/jq;->a(Lcom/estrongs/android/ui/e/jq;)Lcom/estrongs/android/pop/view/FileExplorerActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->i()V

    const/4 v0, 0x1

    return v0
.end method
