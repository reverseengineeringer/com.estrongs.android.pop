.class Lcom/estrongs/android/ui/e/ar;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/MenuItem$OnMenuItemClickListener;


# instance fields
.field final synthetic a:Lcom/estrongs/android/ui/e/w;


# direct methods
.method constructor <init>(Lcom/estrongs/android/ui/e/w;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/ui/e/ar;->a:Lcom/estrongs/android/ui/e/w;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMenuItemClick(Landroid/view/MenuItem;)Z
    .locals 3

    iget-object v0, p0, Lcom/estrongs/android/ui/e/ar;->a:Lcom/estrongs/android/ui/e/w;

    invoke-virtual {v0}, Lcom/estrongs/android/ui/e/w;->n()V

    iget-object v0, p0, Lcom/estrongs/android/ui/e/ar;->a:Lcom/estrongs/android/ui/e/w;

    iget-object v1, p0, Lcom/estrongs/android/ui/e/ar;->a:Lcom/estrongs/android/ui/e/w;

    iget-object v1, v1, Lcom/estrongs/android/ui/e/w;->k:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    invoke-virtual {v1}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->z()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/estrongs/android/ui/e/w;->a(Ljava/lang/String;Ljava/util/List;)V

    const/4 v0, 0x0

    return v0
.end method
