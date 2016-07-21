.class Landroid/support/design/widget/ct;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/support/design/widget/db;


# instance fields
.field final synthetic a:Landroid/support/design/widget/cx;

.field final synthetic b:Landroid/support/design/widget/cs;


# direct methods
.method constructor <init>(Landroid/support/design/widget/cs;Landroid/support/design/widget/cx;)V
    .locals 0

    iput-object p1, p0, Landroid/support/design/widget/ct;->b:Landroid/support/design/widget/cs;

    iput-object p2, p0, Landroid/support/design/widget/ct;->a:Landroid/support/design/widget/cx;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    iget-object v0, p0, Landroid/support/design/widget/ct;->a:Landroid/support/design/widget/cx;

    iget-object v1, p0, Landroid/support/design/widget/ct;->b:Landroid/support/design/widget/cs;

    invoke-interface {v0, v1}, Landroid/support/design/widget/cx;->a(Landroid/support/design/widget/cs;)V

    return-void
.end method
