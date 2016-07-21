.class Landroid/support/design/widget/s;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/support/v4/view/bv;


# instance fields
.field final synthetic a:Landroid/support/design/widget/CoordinatorLayout;


# direct methods
.method private constructor <init>(Landroid/support/design/widget/CoordinatorLayout;)V
    .locals 0

    iput-object p1, p0, Landroid/support/design/widget/s;->a:Landroid/support/design/widget/CoordinatorLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Landroid/support/design/widget/CoordinatorLayout;Landroid/support/design/widget/r;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/support/design/widget/s;-><init>(Landroid/support/design/widget/CoordinatorLayout;)V

    return-void
.end method


# virtual methods
.method public onApplyWindowInsets(Landroid/view/View;Landroid/support/v4/view/fr;)Landroid/support/v4/view/fr;
    .locals 1

    iget-object v0, p0, Landroid/support/design/widget/s;->a:Landroid/support/design/widget/CoordinatorLayout;

    invoke-static {v0, p2}, Landroid/support/design/widget/CoordinatorLayout;->a(Landroid/support/design/widget/CoordinatorLayout;Landroid/support/v4/view/fr;)Landroid/support/v4/view/fr;

    move-result-object v0

    return-object v0
.end method
