.class Lcom/estrongs/android/ui/controller/d;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/estrongs/android/ui/controller/a;


# direct methods
.method constructor <init>(Lcom/estrongs/android/ui/controller/a;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/ui/controller/d;->b:Lcom/estrongs/android/ui/controller/a;

    iput-object p2, p0, Lcom/estrongs/android/ui/controller/d;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lcom/estrongs/android/ui/controller/d;->a:Ljava/lang/String;

    invoke-static {v0}, Lcom/estrongs/android/util/ap;->aZ(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Lcom/estrongs/android/ui/dialog/bh;

    iget-object v1, p0, Lcom/estrongs/android/ui/controller/d;->b:Lcom/estrongs/android/ui/controller/a;

    iget-object v1, v1, Lcom/estrongs/android/ui/controller/a;->a:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    invoke-direct {v0, v1}, Lcom/estrongs/android/ui/dialog/bh;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Lcom/estrongs/android/ui/dialog/bh;->b()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/estrongs/android/ui/controller/d;->a:Ljava/lang/String;

    invoke-static {v0}, Lcom/estrongs/android/util/ap;->S(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    new-instance v0, Lcom/estrongs/android/ui/dialog/bb;

    iget-object v1, p0, Lcom/estrongs/android/ui/controller/d;->b:Lcom/estrongs/android/ui/controller/a;

    iget-object v1, v1, Lcom/estrongs/android/ui/controller/a;->a:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    invoke-direct {v0, v1}, Lcom/estrongs/android/ui/dialog/bb;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Lcom/estrongs/android/ui/dialog/bb;->b()V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/estrongs/android/ui/controller/d;->a:Ljava/lang/String;

    invoke-static {v0}, Lcom/estrongs/android/util/ap;->bs(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lcom/estrongs/android/ui/dialog/fv;

    iget-object v1, p0, Lcom/estrongs/android/ui/controller/d;->b:Lcom/estrongs/android/ui/controller/a;

    iget-object v1, v1, Lcom/estrongs/android/ui/controller/a;->a:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    invoke-direct {v0, v1}, Lcom/estrongs/android/ui/dialog/fv;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Lcom/estrongs/android/ui/dialog/fv;->b()V

    goto :goto_0
.end method
