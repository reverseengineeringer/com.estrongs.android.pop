.class Lcom/estrongs/android/ui/e/g;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/MenuItem$OnMenuItemClickListener;


# instance fields
.field final synthetic a:Lcom/estrongs/android/ui/e/f;


# direct methods
.method constructor <init>(Lcom/estrongs/android/ui/e/f;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/ui/e/g;->a:Lcom/estrongs/android/ui/e/f;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMenuItemClick(Landroid/view/MenuItem;)Z
    .locals 4

    const/4 v3, 0x1

    iget-object v0, p0, Lcom/estrongs/android/ui/e/g;->a:Lcom/estrongs/android/ui/e/f;

    invoke-static {v0}, Lcom/estrongs/android/ui/e/f;->a(Lcom/estrongs/android/ui/e/f;)Lcom/estrongs/android/ui/e/ka;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/ui/e/g;->a:Lcom/estrongs/android/ui/e/f;

    invoke-static {v0}, Lcom/estrongs/android/ui/e/f;->b(Lcom/estrongs/android/ui/e/f;)V

    :cond_0
    iget-object v0, p0, Lcom/estrongs/android/ui/e/g;->a:Lcom/estrongs/android/ui/e/f;

    iget-object v0, v0, Lcom/estrongs/android/ui/e/f;->a:Ljava/util/List;

    const/4 v1, 0x5

    iget-object v2, p0, Lcom/estrongs/android/ui/e/g;->a:Lcom/estrongs/android/ui/e/f;

    iget-object v2, v2, Lcom/estrongs/android/ui/e/f;->a:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-interface {v0, v1, v2}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lcom/estrongs/android/ui/e/g;->a:Lcom/estrongs/android/ui/e/f;

    invoke-static {v1}, Lcom/estrongs/android/ui/e/f;->a(Lcom/estrongs/android/ui/e/f;)Lcom/estrongs/android/ui/e/ka;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/estrongs/android/ui/e/ka;->a(Ljava/util/List;)V

    iget-object v0, p0, Lcom/estrongs/android/ui/e/g;->a:Lcom/estrongs/android/ui/e/f;

    invoke-static {v0, v3}, Lcom/estrongs/android/ui/e/f;->a(Lcom/estrongs/android/ui/e/f;Z)V

    return v3
.end method
