.class Lcom/estrongs/android/ui/base/b;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Landroid/support/v7/view/ActionMode;

.field final synthetic b:Lcom/estrongs/android/ui/base/a;


# direct methods
.method constructor <init>(Lcom/estrongs/android/ui/base/a;Landroid/support/v7/view/ActionMode;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/ui/base/b;->b:Lcom/estrongs/android/ui/base/a;

    iput-object p2, p0, Lcom/estrongs/android/ui/base/b;->a:Landroid/support/v7/view/ActionMode;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/estrongs/android/ui/base/b;->b:Lcom/estrongs/android/ui/base/a;

    invoke-static {v0}, Lcom/estrongs/android/ui/base/a;->a(Lcom/estrongs/android/ui/base/a;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/ui/base/b;->b:Lcom/estrongs/android/ui/base/a;

    iget-object v1, p0, Lcom/estrongs/android/ui/base/b;->a:Landroid/support/v7/view/ActionMode;

    invoke-static {v0, v1}, Lcom/estrongs/android/ui/base/a;->a(Lcom/estrongs/android/ui/base/a;Landroid/support/v7/view/ActionMode;)V

    iget-object v0, p0, Lcom/estrongs/android/ui/base/b;->b:Lcom/estrongs/android/ui/base/a;

    iget-object v1, p0, Lcom/estrongs/android/ui/base/b;->a:Landroid/support/v7/view/ActionMode;

    invoke-static {v0, v1}, Lcom/estrongs/android/ui/base/a;->b(Lcom/estrongs/android/ui/base/a;Landroid/support/v7/view/ActionMode;)V

    iget-object v0, p0, Lcom/estrongs/android/ui/base/b;->b:Lcom/estrongs/android/ui/base/a;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/estrongs/android/ui/base/a;->a(Lcom/estrongs/android/ui/base/a;Z)Z

    :cond_0
    return-void
.end method
