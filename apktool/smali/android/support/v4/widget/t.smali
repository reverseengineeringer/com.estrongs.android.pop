.class Landroid/support/v4/widget/t;
.super Landroid/database/DataSetObserver;


# instance fields
.field final synthetic a:Landroid/support/v4/widget/q;


# direct methods
.method private constructor <init>(Landroid/support/v4/widget/q;)V
    .locals 0

    iput-object p1, p0, Landroid/support/v4/widget/t;->a:Landroid/support/v4/widget/q;

    invoke-direct {p0}, Landroid/database/DataSetObserver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Landroid/support/v4/widget/q;Landroid/support/v4/widget/r;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/support/v4/widget/t;-><init>(Landroid/support/v4/widget/q;)V

    return-void
.end method


# virtual methods
.method public onChanged()V
    .locals 2

    iget-object v0, p0, Landroid/support/v4/widget/t;->a:Landroid/support/v4/widget/q;

    const/4 v1, 0x1

    iput-boolean v1, v0, Landroid/support/v4/widget/q;->mDataValid:Z

    iget-object v0, p0, Landroid/support/v4/widget/t;->a:Landroid/support/v4/widget/q;

    invoke-virtual {v0}, Landroid/support/v4/widget/q;->notifyDataSetChanged()V

    return-void
.end method

.method public onInvalidated()V
    .locals 2

    iget-object v0, p0, Landroid/support/v4/widget/t;->a:Landroid/support/v4/widget/q;

    const/4 v1, 0x0

    iput-boolean v1, v0, Landroid/support/v4/widget/q;->mDataValid:Z

    iget-object v0, p0, Landroid/support/v4/widget/t;->a:Landroid/support/v4/widget/q;

    invoke-virtual {v0}, Landroid/support/v4/widget/q;->notifyDataSetInvalidated()V

    return-void
.end method
