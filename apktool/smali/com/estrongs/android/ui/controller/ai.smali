.class Lcom/estrongs/android/ui/controller/ai;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/support/v7/view/menu/y;


# instance fields
.field final synthetic a:Lcom/estrongs/android/ui/controller/h;

.field private b:Landroid/support/v7/view/menu/y;

.field private c:Landroid/support/v7/view/menu/x;


# direct methods
.method public constructor <init>(Lcom/estrongs/android/ui/controller/h;Landroid/support/v7/view/menu/y;Landroid/support/v7/view/menu/x;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/ui/controller/ai;->a:Lcom/estrongs/android/ui/controller/h;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/estrongs/android/ui/controller/ai;->b:Landroid/support/v7/view/menu/y;

    iput-object p3, p0, Lcom/estrongs/android/ui/controller/ai;->c:Landroid/support/v7/view/menu/x;

    return-void
.end method


# virtual methods
.method public onCloseMenu(Landroid/support/v7/view/menu/i;Z)V
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/ui/controller/ai;->b:Landroid/support/v7/view/menu/y;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/ui/controller/ai;->b:Landroid/support/v7/view/menu/y;

    invoke-interface {v0, p1, p2}, Landroid/support/v7/view/menu/y;->onCloseMenu(Landroid/support/v7/view/menu/i;Z)V

    :cond_0
    return-void
.end method

.method public onOpenSubMenu(Landroid/support/v7/view/menu/i;)Z
    .locals 2

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/estrongs/android/ui/controller/ai;->b:Landroid/support/v7/view/menu/y;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/estrongs/android/ui/controller/ai;->b:Landroid/support/v7/view/menu/y;

    if-eq v1, p0, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/ui/controller/ai;->b:Landroid/support/v7/view/menu/y;

    invoke-interface {v0, p1}, Landroid/support/v7/view/menu/y;->onOpenSubMenu(Landroid/support/v7/view/menu/i;)Z

    move-result v0

    :cond_0
    return v0
.end method
