.class Landroid/support/v4/view/bb;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/support/v4/view/bh;


# instance fields
.field final synthetic a:Landroid/support/v4/view/bd;

.field final synthetic b:Landroid/support/v4/view/ba;


# direct methods
.method constructor <init>(Landroid/support/v4/view/ba;Landroid/support/v4/view/bd;)V
    .locals 0

    iput-object p1, p0, Landroid/support/v4/view/bb;->b:Landroid/support/v4/view/ba;

    iput-object p2, p0, Landroid/support/v4/view/bb;->a:Landroid/support/v4/view/bd;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/view/MenuItem;)Z
    .locals 1

    iget-object v0, p0, Landroid/support/v4/view/bb;->a:Landroid/support/v4/view/bd;

    invoke-interface {v0, p1}, Landroid/support/v4/view/bd;->a(Landroid/view/MenuItem;)Z

    move-result v0

    return v0
.end method

.method public b(Landroid/view/MenuItem;)Z
    .locals 1

    iget-object v0, p0, Landroid/support/v4/view/bb;->a:Landroid/support/v4/view/bd;

    invoke-interface {v0, p1}, Landroid/support/v4/view/bd;->b(Landroid/view/MenuItem;)Z

    move-result v0

    return v0
.end method
