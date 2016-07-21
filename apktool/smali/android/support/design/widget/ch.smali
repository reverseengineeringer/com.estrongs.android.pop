.class public final Landroid/support/design/widget/ch;
.super Ljava/lang/Object;


# instance fields
.field private a:Ljava/lang/Object;

.field private b:Landroid/graphics/drawable/Drawable;

.field private c:Ljava/lang/CharSequence;

.field private d:Ljava/lang/CharSequence;

.field private e:I

.field private f:Landroid/view/View;

.field private g:Landroid/support/design/widget/TabLayout;

.field private h:Landroid/support/design/widget/cj;


# direct methods
.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Landroid/support/design/widget/ch;->e:I

    return-void
.end method

.method synthetic constructor <init>(Landroid/support/design/widget/cb;)V
    .locals 0

    invoke-direct {p0}, Landroid/support/design/widget/ch;-><init>()V

    return-void
.end method

.method static synthetic a(Landroid/support/design/widget/ch;)Landroid/support/design/widget/TabLayout;
    .locals 1

    iget-object v0, p0, Landroid/support/design/widget/ch;->g:Landroid/support/design/widget/TabLayout;

    return-object v0
.end method

.method static synthetic a(Landroid/support/design/widget/ch;Landroid/support/design/widget/TabLayout;)Landroid/support/design/widget/TabLayout;
    .locals 0

    iput-object p1, p0, Landroid/support/design/widget/ch;->g:Landroid/support/design/widget/TabLayout;

    return-object p1
.end method

.method static synthetic a(Landroid/support/design/widget/ch;Landroid/support/design/widget/cj;)Landroid/support/design/widget/cj;
    .locals 0

    iput-object p1, p0, Landroid/support/design/widget/ch;->h:Landroid/support/design/widget/cj;

    return-object p1
.end method

.method static synthetic b(Landroid/support/design/widget/ch;)V
    .locals 0

    invoke-direct {p0}, Landroid/support/design/widget/ch;->j()V

    return-void
.end method

.method static synthetic c(Landroid/support/design/widget/ch;)V
    .locals 0

    invoke-direct {p0}, Landroid/support/design/widget/ch;->i()V

    return-void
.end method

.method static synthetic d(Landroid/support/design/widget/ch;)Landroid/support/design/widget/cj;
    .locals 1

    iget-object v0, p0, Landroid/support/design/widget/ch;->h:Landroid/support/design/widget/cj;

    return-object v0
.end method

.method private i()V
    .locals 1

    iget-object v0, p0, Landroid/support/design/widget/ch;->h:Landroid/support/design/widget/cj;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/design/widget/ch;->h:Landroid/support/design/widget/cj;

    invoke-virtual {v0}, Landroid/support/design/widget/cj;->a()V

    :cond_0
    return-void
.end method

.method private j()V
    .locals 2

    const/4 v1, 0x0

    iput-object v1, p0, Landroid/support/design/widget/ch;->g:Landroid/support/design/widget/TabLayout;

    iput-object v1, p0, Landroid/support/design/widget/ch;->h:Landroid/support/design/widget/cj;

    iput-object v1, p0, Landroid/support/design/widget/ch;->a:Ljava/lang/Object;

    iput-object v1, p0, Landroid/support/design/widget/ch;->b:Landroid/graphics/drawable/Drawable;

    iput-object v1, p0, Landroid/support/design/widget/ch;->c:Ljava/lang/CharSequence;

    iput-object v1, p0, Landroid/support/design/widget/ch;->d:Ljava/lang/CharSequence;

    const/4 v0, -0x1

    iput v0, p0, Landroid/support/design/widget/ch;->e:I

    iput-object v1, p0, Landroid/support/design/widget/ch;->f:Landroid/view/View;

    return-void
.end method


# virtual methods
.method public a(I)Landroid/support/design/widget/ch;
    .locals 3

    iget-object v0, p0, Landroid/support/design/widget/ch;->h:Landroid/support/design/widget/cj;

    invoke-virtual {v0}, Landroid/support/design/widget/cj;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iget-object v1, p0, Landroid/support/design/widget/ch;->h:Landroid/support/design/widget/cj;

    const/4 v2, 0x0

    invoke-virtual {v0, p1, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/support/design/widget/ch;->a(Landroid/view/View;)Landroid/support/design/widget/ch;

    move-result-object v0

    return-object v0
.end method

.method public a(Landroid/graphics/drawable/Drawable;)Landroid/support/design/widget/ch;
    .locals 0

    iput-object p1, p0, Landroid/support/design/widget/ch;->b:Landroid/graphics/drawable/Drawable;

    invoke-direct {p0}, Landroid/support/design/widget/ch;->i()V

    return-object p0
.end method

.method public a(Landroid/view/View;)Landroid/support/design/widget/ch;
    .locals 0

    iput-object p1, p0, Landroid/support/design/widget/ch;->f:Landroid/view/View;

    invoke-direct {p0}, Landroid/support/design/widget/ch;->i()V

    return-object p0
.end method

.method public a(Ljava/lang/CharSequence;)Landroid/support/design/widget/ch;
    .locals 0

    iput-object p1, p0, Landroid/support/design/widget/ch;->c:Ljava/lang/CharSequence;

    invoke-direct {p0}, Landroid/support/design/widget/ch;->i()V

    return-object p0
.end method

.method public a(Ljava/lang/Object;)Landroid/support/design/widget/ch;
    .locals 0

    iput-object p1, p0, Landroid/support/design/widget/ch;->a:Ljava/lang/Object;

    return-object p0
.end method

.method public a()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Landroid/support/design/widget/ch;->a:Ljava/lang/Object;

    return-object v0
.end method

.method public b()Landroid/view/View;
    .locals 1

    iget-object v0, p0, Landroid/support/design/widget/ch;->f:Landroid/view/View;

    return-object v0
.end method

.method b(I)V
    .locals 0

    iput p1, p0, Landroid/support/design/widget/ch;->e:I

    return-void
.end method

.method public c()Landroid/graphics/drawable/Drawable;
    .locals 1

    iget-object v0, p0, Landroid/support/design/widget/ch;->b:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public d()I
    .locals 1

    iget v0, p0, Landroid/support/design/widget/ch;->e:I

    return v0
.end method

.method public e()Ljava/lang/CharSequence;
    .locals 1

    iget-object v0, p0, Landroid/support/design/widget/ch;->c:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public f()V
    .locals 2

    iget-object v0, p0, Landroid/support/design/widget/ch;->g:Landroid/support/design/widget/TabLayout;

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Tab not attached to a TabLayout"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-object v0, p0, Landroid/support/design/widget/ch;->g:Landroid/support/design/widget/TabLayout;

    invoke-virtual {v0, p0}, Landroid/support/design/widget/TabLayout;->b(Landroid/support/design/widget/ch;)V

    return-void
.end method

.method public g()Z
    .locals 2

    iget-object v0, p0, Landroid/support/design/widget/ch;->g:Landroid/support/design/widget/TabLayout;

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Tab not attached to a TabLayout"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-object v0, p0, Landroid/support/design/widget/ch;->g:Landroid/support/design/widget/TabLayout;

    invoke-virtual {v0}, Landroid/support/design/widget/TabLayout;->getSelectedTabPosition()I

    move-result v0

    iget v1, p0, Landroid/support/design/widget/ch;->e:I

    if-ne v0, v1, :cond_1

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public h()Ljava/lang/CharSequence;
    .locals 1

    iget-object v0, p0, Landroid/support/design/widget/ch;->d:Ljava/lang/CharSequence;

    return-object v0
.end method
