.class Landroid/support/design/widget/al;
.super Landroid/support/design/widget/ak;


# instance fields
.field final synthetic b:Landroid/support/design/widget/ah;


# direct methods
.method private constructor <init>(Landroid/support/design/widget/ah;)V
    .locals 1

    iput-object p1, p0, Landroid/support/design/widget/al;->b:Landroid/support/design/widget/ah;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/support/design/widget/ak;-><init>(Landroid/support/design/widget/ah;Landroid/support/design/widget/ai;)V

    return-void
.end method

.method synthetic constructor <init>(Landroid/support/design/widget/ah;Landroid/support/design/widget/ai;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/support/design/widget/al;-><init>(Landroid/support/design/widget/ah;)V

    return-void
.end method


# virtual methods
.method protected a()F
    .locals 2

    iget-object v0, p0, Landroid/support/design/widget/al;->b:Landroid/support/design/widget/ah;

    iget v0, v0, Landroid/support/design/widget/ah;->f:F

    iget-object v1, p0, Landroid/support/design/widget/al;->b:Landroid/support/design/widget/ah;

    iget v1, v1, Landroid/support/design/widget/ah;->g:F

    add-float/2addr v0, v1

    return v0
.end method
