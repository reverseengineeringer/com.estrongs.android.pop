.class Landroid/support/v7/app/AppCompatDelegateImplV7$2;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/support/v4/view/bv;


# instance fields
.field final synthetic this$0:Landroid/support/v7/app/AppCompatDelegateImplV7;


# direct methods
.method constructor <init>(Landroid/support/v7/app/AppCompatDelegateImplV7;)V
    .locals 0

    iput-object p1, p0, Landroid/support/v7/app/AppCompatDelegateImplV7$2;->this$0:Landroid/support/v7/app/AppCompatDelegateImplV7;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onApplyWindowInsets(Landroid/view/View;Landroid/support/v4/view/fr;)Landroid/support/v4/view/fr;
    .locals 4

    invoke-virtual {p2}, Landroid/support/v4/view/fr;->b()I

    move-result v0

    iget-object v1, p0, Landroid/support/v7/app/AppCompatDelegateImplV7$2;->this$0:Landroid/support/v7/app/AppCompatDelegateImplV7;

    # invokes: Landroid/support/v7/app/AppCompatDelegateImplV7;->updateStatusGuard(I)I
    invoke-static {v1, v0}, Landroid/support/v7/app/AppCompatDelegateImplV7;->access$300(Landroid/support/v7/app/AppCompatDelegateImplV7;I)I

    move-result v1

    if-eq v0, v1, :cond_0

    invoke-virtual {p2}, Landroid/support/v4/view/fr;->a()I

    move-result v0

    invoke-virtual {p2}, Landroid/support/v4/view/fr;->c()I

    move-result v2

    invoke-virtual {p2}, Landroid/support/v4/view/fr;->d()I

    move-result v3

    invoke-virtual {p2, v0, v1, v2, v3}, Landroid/support/v4/view/fr;->a(IIII)Landroid/support/v4/view/fr;

    move-result-object p2

    :cond_0
    invoke-static {p1, p2}, Landroid/support/v4/view/cn;->a(Landroid/view/View;Landroid/support/v4/view/fr;)Landroid/support/v4/view/fr;

    move-result-object v0

    return-object v0
.end method
