.class public Lcom/estrongs/android/ui/dialog/dd;
.super Lcom/estrongs/android/ui/dialog/cg;


# static fields
.field static a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/estrongs/android/util/o",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;>;"
        }
    .end annotation
.end field


# instance fields
.field private b:Lcom/estrongs/android/ui/dialog/iv;

.field private c:Lcom/estrongs/android/ui/dialog/df;

.field private d:Landroid/view/View;

.field private e:Landroid/view/View;

.field private f:Landroid/view/View;

.field private final g:I


# direct methods
.method static constructor <clinit>()V
    .locals 8

    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    sput-object v0, Lcom/estrongs/android/ui/dialog/dd;->a:Ljava/util/List;

    sget-object v0, Lcom/estrongs/android/ui/dialog/dd;->a:Ljava/util/List;

    new-instance v1, Lcom/estrongs/android/util/o;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/estrongs/android/util/o;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/estrongs/android/ui/dialog/dd;->a:Ljava/util/List;

    new-instance v1, Lcom/estrongs/android/util/o;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/estrongs/android/util/o;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/estrongs/android/ui/dialog/dd;->a:Ljava/util/List;

    new-instance v1, Lcom/estrongs/android/util/o;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/estrongs/android/util/o;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/estrongs/android/ui/dialog/dd;->a:Ljava/util/List;

    new-instance v1, Lcom/estrongs/android/util/o;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/estrongs/android/util/o;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/estrongs/android/ui/dialog/dd;->a:Ljava/util/List;

    new-instance v1, Lcom/estrongs/android/util/o;

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/estrongs/android/util/o;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/estrongs/android/ui/dialog/dd;->a:Ljava/util/List;

    new-instance v1, Lcom/estrongs/android/util/o;

    const/4 v2, 0x5

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x5

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/estrongs/android/util/o;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/estrongs/android/ui/dialog/cg;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x3

    iput v0, p0, Lcom/estrongs/android/ui/dialog/dd;->g:I

    const v0, 0x7f0b003f

    invoke-virtual {p0, v0}, Lcom/estrongs/android/ui/dialog/dd;->setTitle(I)V

    invoke-virtual {p0}, Lcom/estrongs/android/ui/dialog/dd;->a()V

    return-void
.end method

.method static synthetic a(Lcom/estrongs/android/ui/dialog/dd;)Lcom/estrongs/android/ui/dialog/df;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/ui/dialog/dd;->c:Lcom/estrongs/android/ui/dialog/df;

    return-object v0
.end method

.method private a(Landroid/view/View;I)V
    .locals 2

    const v0, 0x7f0a011f

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    mul-int/lit8 v1, p2, 0x3

    invoke-direct {p0, v0, v1}, Lcom/estrongs/android/ui/dialog/dd;->b(Landroid/view/View;I)V

    const v0, 0x7f0a0120

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    mul-int/lit8 v1, p2, 0x3

    add-int/lit8 v1, v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/estrongs/android/ui/dialog/dd;->b(Landroid/view/View;I)V

    const v0, 0x7f0a0121

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    mul-int/lit8 v1, p2, 0x3

    add-int/lit8 v1, v1, 0x2

    invoke-direct {p0, v0, v1}, Lcom/estrongs/android/ui/dialog/dd;->b(Landroid/view/View;I)V

    return-void
.end method

.method private b(Landroid/view/View;I)V
    .locals 2

    iget-object v0, p0, Lcom/estrongs/android/ui/dialog/dd;->b:Lcom/estrongs/android/ui/dialog/iv;

    const/4 v1, 0x0

    invoke-virtual {v0, p2, p1, v1}, Lcom/estrongs/android/ui/dialog/iv;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/estrongs/android/ui/dialog/de;

    invoke-direct {v1, p0, p2}, Lcom/estrongs/android/ui/dialog/de;-><init>(Lcom/estrongs/android/ui/dialog/dd;I)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method


# virtual methods
.method protected a()V
    .locals 7

    const v6, 0x7f0a0122

    const v5, 0x7f0a011e

    const v4, 0x7f0a0128

    const/16 v3, 0x8

    iget-object v0, p0, Lcom/estrongs/android/ui/dialog/dd;->mContext:Landroid/content/Context;

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

    iput-object v1, p0, Lcom/estrongs/android/ui/dialog/dd;->d:Landroid/view/View;

    iget-object v1, p0, Lcom/estrongs/android/ui/dialog/dd;->d:Landroid/view/View;

    const v2, 0x7f0a0127

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    iget-object v1, p0, Lcom/estrongs/android/ui/dialog/dd;->d:Landroid/view/View;

    invoke-virtual {v1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    iget-object v1, p0, Lcom/estrongs/android/ui/dialog/dd;->d:Landroid/view/View;

    invoke-virtual {v1, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    iget-object v1, p0, Lcom/estrongs/android/ui/dialog/dd;->d:Landroid/view/View;

    invoke-virtual {v1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/estrongs/android/ui/dialog/dd;->e:Landroid/view/View;

    iget-object v1, p0, Lcom/estrongs/android/ui/dialog/dd;->d:Landroid/view/View;

    invoke-virtual {v1, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/estrongs/android/ui/dialog/dd;->f:Landroid/view/View;

    new-instance v1, Lcom/estrongs/android/ui/dialog/iv;

    iget-object v2, p0, Lcom/estrongs/android/ui/dialog/dd;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/estrongs/android/ui/dialog/iv;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/estrongs/android/ui/dialog/dd;->b:Lcom/estrongs/android/ui/dialog/iv;

    iget-object v1, p0, Lcom/estrongs/android/ui/dialog/dd;->e:Landroid/view/View;

    const/4 v2, 0x0

    invoke-direct {p0, v1, v2}, Lcom/estrongs/android/ui/dialog/dd;->a(Landroid/view/View;I)V

    iget-object v1, p0, Lcom/estrongs/android/ui/dialog/dd;->f:Landroid/view/View;

    const/4 v2, 0x1

    invoke-direct {p0, v1, v2}, Lcom/estrongs/android/ui/dialog/dd;->a(Landroid/view/View;I)V

    invoke-virtual {p0, v0}, Lcom/estrongs/android/ui/dialog/dd;->setContentView(Landroid/view/View;)V

    return-void
.end method

.method public a(Lcom/estrongs/android/ui/dialog/df;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/ui/dialog/dd;->c:Lcom/estrongs/android/ui/dialog/df;

    return-void
.end method
