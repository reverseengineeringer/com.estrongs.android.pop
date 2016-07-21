.class Lcom/estrongs/android/ui/controller/x;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/MenuItem$OnMenuItemClickListener;


# instance fields
.field final synthetic a:Ljava/util/List;

.field final synthetic b:Lcom/estrongs/android/ui/controller/h;


# direct methods
.method constructor <init>(Lcom/estrongs/android/ui/controller/h;Ljava/util/List;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/ui/controller/x;->b:Lcom/estrongs/android/ui/controller/h;

    iput-object p2, p0, Lcom/estrongs/android/ui/controller/x;->a:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMenuItemClick(Landroid/view/MenuItem;)Z
    .locals 4

    iget-object v0, p0, Lcom/estrongs/android/ui/controller/x;->b:Lcom/estrongs/android/ui/controller/h;

    new-instance v1, Lcom/estrongs/android/ui/controller/y;

    iget-object v2, p0, Lcom/estrongs/android/ui/controller/x;->b:Lcom/estrongs/android/ui/controller/h;

    iget-object v2, v2, Lcom/estrongs/android/ui/controller/h;->a:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    iget-object v3, p0, Lcom/estrongs/android/ui/controller/x;->b:Lcom/estrongs/android/ui/controller/h;

    iget-boolean v3, v3, Lcom/estrongs/android/ui/controller/h;->b:Z

    invoke-direct {v1, p0, v2, v3}, Lcom/estrongs/android/ui/controller/y;-><init>(Lcom/estrongs/android/ui/controller/x;Landroid/content/Context;Z)V

    invoke-static {v0, v1}, Lcom/estrongs/android/ui/controller/h;->a(Lcom/estrongs/android/ui/controller/h;Lcom/estrongs/android/ui/e/ka;)Lcom/estrongs/android/ui/e/ka;

    iget-object v0, p0, Lcom/estrongs/android/ui/controller/x;->b:Lcom/estrongs/android/ui/controller/h;

    invoke-static {v0}, Lcom/estrongs/android/ui/controller/h;->f(Lcom/estrongs/android/ui/controller/h;)Lcom/estrongs/android/ui/e/ka;

    move-result-object v0

    iget-object v1, p0, Lcom/estrongs/android/ui/controller/x;->a:Ljava/util/List;

    invoke-virtual {v0, v1}, Lcom/estrongs/android/ui/e/ka;->a(Ljava/util/List;)V

    const/4 v0, 0x1

    return v0
.end method
