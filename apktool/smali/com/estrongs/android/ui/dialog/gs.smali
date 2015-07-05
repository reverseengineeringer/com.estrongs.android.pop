.class public Lcom/estrongs/android/ui/dialog/gs;
.super Lcom/estrongs/android/ui/dialog/cg;


# instance fields
.field private a:Lcom/estrongs/android/ui/a/e;

.field private b:Lcom/estrongs/android/ui/dialog/gx;

.field private c:Landroid/view/View;

.field private d:Landroid/view/View;

.field private e:Landroid/view/View;

.field private final f:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0, p1}, Lcom/estrongs/android/ui/dialog/cg;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x4

    iput v0, p0, Lcom/estrongs/android/ui/dialog/gs;->f:I

    const v0, 0x7f0b003f

    invoke-virtual {p0, v0}, Lcom/estrongs/android/ui/dialog/gs;->setTitle(I)V

    invoke-virtual {p0, v1, v1}, Lcom/estrongs/android/ui/dialog/gs;->a(ZI)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/estrongs/android/ui/dialog/cg;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x4

    iput v0, p0, Lcom/estrongs/android/ui/dialog/gs;->f:I

    const v0, 0x7f0b003f

    invoke-virtual {p0, v0}, Lcom/estrongs/android/ui/dialog/gs;->setTitle(I)V

    const/4 v0, 0x1

    invoke-virtual {p0, v0, p2}, Lcom/estrongs/android/ui/dialog/gs;->a(ZI)V

    return-void
.end method

.method static synthetic a(Lcom/estrongs/android/ui/dialog/gs;)Lcom/estrongs/android/ui/dialog/gx;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/ui/dialog/gs;->b:Lcom/estrongs/android/ui/dialog/gx;

    return-object v0
.end method

.method private a(Landroid/view/View;I)V
    .locals 2

    const v0, 0x7f0a011f

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    mul-int/lit8 v1, p2, 0x4

    invoke-direct {p0, v0, v1}, Lcom/estrongs/android/ui/dialog/gs;->b(Landroid/view/View;I)V

    const v0, 0x7f0a0120

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    mul-int/lit8 v1, p2, 0x4

    add-int/lit8 v1, v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/estrongs/android/ui/dialog/gs;->b(Landroid/view/View;I)V

    const v0, 0x7f0a0121

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    mul-int/lit8 v1, p2, 0x4

    add-int/lit8 v1, v1, 0x2

    invoke-direct {p0, v0, v1}, Lcom/estrongs/android/ui/dialog/gs;->b(Landroid/view/View;I)V

    const v0, 0x7f0a0128

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    mul-int/lit8 v1, p2, 0x4

    add-int/lit8 v1, v1, 0x3

    invoke-direct {p0, v0, v1}, Lcom/estrongs/android/ui/dialog/gs;->b(Landroid/view/View;I)V

    return-void
.end method

.method private b(Landroid/view/View;I)V
    .locals 2

    iget-object v0, p0, Lcom/estrongs/android/ui/dialog/gs;->a:Lcom/estrongs/android/ui/a/e;

    const/4 v1, 0x0

    invoke-virtual {v0, p2, p1, v1}, Lcom/estrongs/android/ui/a/e;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/estrongs/android/ui/dialog/gt;

    invoke-direct {v1, p0, p2}, Lcom/estrongs/android/ui/dialog/gt;-><init>(Lcom/estrongs/android/ui/dialog/gs;I)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method


# virtual methods
.method public a(Lcom/estrongs/android/ui/dialog/gx;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/ui/dialog/gs;->b:Lcom/estrongs/android/ui/dialog/gx;

    return-void
.end method

.method protected a(ZI)V
    .locals 4

    const/16 v3, 0x8

    iget-object v0, p0, Lcom/estrongs/android/ui/dialog/gs;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/estrongs/android/pop/esclasses/g;->a(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f03003b

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    const v1, 0x7f0a011d

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    const v1, 0x7f0a0124

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    const v1, 0x7f0a0126

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/estrongs/android/ui/dialog/gs;->c:Landroid/view/View;

    iget-object v1, p0, Lcom/estrongs/android/ui/dialog/gs;->c:Landroid/view/View;

    const v2, 0x7f0a011e

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/estrongs/android/ui/dialog/gs;->d:Landroid/view/View;

    iget-object v1, p0, Lcom/estrongs/android/ui/dialog/gs;->c:Landroid/view/View;

    const v2, 0x7f0a0122

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/estrongs/android/ui/dialog/gs;->e:Landroid/view/View;

    new-instance v1, Lcom/estrongs/android/ui/a/e;

    iget-object v2, p0, Lcom/estrongs/android/ui/dialog/gs;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/estrongs/android/ui/a/e;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/estrongs/android/ui/dialog/gs;->a:Lcom/estrongs/android/ui/a/e;

    if-eqz p1, :cond_0

    iget-object v1, p0, Lcom/estrongs/android/ui/dialog/gs;->a:Lcom/estrongs/android/ui/a/e;

    invoke-virtual {v1, p2}, Lcom/estrongs/android/ui/a/e;->a(I)V

    :cond_0
    iget-object v1, p0, Lcom/estrongs/android/ui/dialog/gs;->d:Landroid/view/View;

    const/4 v2, 0x0

    invoke-direct {p0, v1, v2}, Lcom/estrongs/android/ui/dialog/gs;->a(Landroid/view/View;I)V

    iget-object v1, p0, Lcom/estrongs/android/ui/dialog/gs;->e:Landroid/view/View;

    const/4 v2, 0x1

    invoke-direct {p0, v1, v2}, Lcom/estrongs/android/ui/dialog/gs;->a(Landroid/view/View;I)V

    invoke-virtual {p0, v0}, Lcom/estrongs/android/ui/dialog/gs;->setContentView(Landroid/view/View;)V

    return-void
.end method
