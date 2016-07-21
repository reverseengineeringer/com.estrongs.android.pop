.class abstract Lcom/flurry/sdk/gx$c;
.super Ljava/lang/Object;


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/flurry/sdk/gx$1;)V
    .locals 0

    invoke-direct {p0}, Lcom/flurry/sdk/gx$c;-><init>()V

    return-void
.end method

.method private static h(Lcom/flurry/sdk/cn;)Z
    .locals 1

    iget v0, p0, Lcom/flurry/sdk/cn;->a:I

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static i(Lcom/flurry/sdk/cn;)Z
    .locals 1

    iget v0, p0, Lcom/flurry/sdk/cn;->b:I

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public abstract a(Lcom/flurry/sdk/cn;)Landroid/view/ViewGroup$LayoutParams;
.end method

.method public b(Lcom/flurry/sdk/cn;)I
    .locals 1

    invoke-static {p1}, Lcom/flurry/sdk/gx$c;->h(Lcom/flurry/sdk/cn;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1}, Lcom/flurry/sdk/gx$c;->d(Lcom/flurry/sdk/cn;)I

    move-result v0

    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0, p1}, Lcom/flurry/sdk/gx$c;->f(Lcom/flurry/sdk/cn;)I

    move-result v0

    goto :goto_0
.end method

.method public c(Lcom/flurry/sdk/cn;)I
    .locals 1

    invoke-static {p1}, Lcom/flurry/sdk/gx$c;->i(Lcom/flurry/sdk/cn;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1}, Lcom/flurry/sdk/gx$c;->e(Lcom/flurry/sdk/cn;)I

    move-result v0

    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0, p1}, Lcom/flurry/sdk/gx$c;->g(Lcom/flurry/sdk/cn;)I

    move-result v0

    goto :goto_0
.end method

.method public d(Lcom/flurry/sdk/cn;)I
    .locals 1

    iget v0, p1, Lcom/flurry/sdk/cn;->a:I

    invoke-static {v0}, Lcom/flurry/sdk/lr;->b(I)I

    move-result v0

    return v0
.end method

.method public e(Lcom/flurry/sdk/cn;)I
    .locals 1

    iget v0, p1, Lcom/flurry/sdk/cn;->b:I

    invoke-static {v0}, Lcom/flurry/sdk/lr;->b(I)I

    move-result v0

    return v0
.end method

.method public f(Lcom/flurry/sdk/cn;)I
    .locals 1

    const/4 v0, -0x1

    return v0
.end method

.method public g(Lcom/flurry/sdk/cn;)I
    .locals 1

    const/4 v0, -0x2

    return v0
.end method
