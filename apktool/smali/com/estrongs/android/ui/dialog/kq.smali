.class public Lcom/estrongs/android/ui/dialog/kq;
.super Ljava/lang/Object;


# static fields
.field private static s:Ljava/lang/String;

.field private static w:J


# instance fields
.field a:Landroid/view/View;

.field private b:Landroid/content/Context;

.field private c:Lcom/estrongs/android/ui/dialog/ci;

.field private d:Landroid/widget/ProgressBar;

.field private e:Landroid/widget/ProgressBar;

.field private f:Landroid/widget/LinearLayout;

.field private g:Landroid/widget/LinearLayout;

.field private h:Landroid/widget/LinearLayout;

.field private i:Landroid/widget/TextView;

.field private j:Landroid/widget/TextView;

.field private k:Landroid/widget/TextView;

.field private l:Landroid/widget/ImageView;

.field private m:I

.field private n:I

.field private o:I

.field private p:Z

.field private q:Lcom/estrongs/android/util/aa;

.field private r:Z

.field private t:Ljava/lang/String;

.field private u:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private v:Ljava/lang/String;

.field private x:Landroid/os/Handler;

.field private y:Landroid/content/DialogInterface$OnClickListener;

.field private z:Landroid/content/DialogInterface$OnClickListener;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/4 v0, 0x0

    sput-object v0, Lcom/estrongs/android/ui/dialog/kq;->s:Ljava/lang/String;

    const-wide/16 v0, -0x1

    sput-wide v0, Lcom/estrongs/android/ui/dialog/kq;->w:J

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;ILcom/estrongs/android/ui/dialog/kx;I)V
    .locals 6

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move v4, p4

    invoke-direct/range {v0 .. v5}, Lcom/estrongs/android/ui/dialog/kq;-><init>(Landroid/content/Context;ILcom/estrongs/android/ui/dialog/kx;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;ILcom/estrongs/android/ui/dialog/kx;II)V
    .locals 3

    const/4 v2, 0x0

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/estrongs/android/ui/dialog/kq;->d:Landroid/widget/ProgressBar;

    iput-object v1, p0, Lcom/estrongs/android/ui/dialog/kq;->e:Landroid/widget/ProgressBar;

    iput-object v1, p0, Lcom/estrongs/android/ui/dialog/kq;->l:Landroid/widget/ImageView;

    const/4 v0, 0x1

    iput v0, p0, Lcom/estrongs/android/ui/dialog/kq;->m:I

    iput v2, p0, Lcom/estrongs/android/ui/dialog/kq;->n:I

    iput v2, p0, Lcom/estrongs/android/ui/dialog/kq;->o:I

    iput-boolean v2, p0, Lcom/estrongs/android/ui/dialog/kq;->p:Z

    iput-object v1, p0, Lcom/estrongs/android/ui/dialog/kq;->q:Lcom/estrongs/android/util/aa;

    iput-boolean v2, p0, Lcom/estrongs/android/ui/dialog/kq;->r:Z

    iput-object v1, p0, Lcom/estrongs/android/ui/dialog/kq;->t:Ljava/lang/String;

    iput-object v1, p0, Lcom/estrongs/android/ui/dialog/kq;->u:Ljava/util/List;

    iput-object v1, p0, Lcom/estrongs/android/ui/dialog/kq;->v:Ljava/lang/String;

    new-instance v0, Lcom/estrongs/android/ui/dialog/kr;

    invoke-direct {v0, p0}, Lcom/estrongs/android/ui/dialog/kr;-><init>(Lcom/estrongs/android/ui/dialog/kq;)V

    iput-object v0, p0, Lcom/estrongs/android/ui/dialog/kq;->x:Landroid/os/Handler;

    new-instance v0, Lcom/estrongs/android/ui/dialog/ks;

    invoke-direct {v0, p0}, Lcom/estrongs/android/ui/dialog/ks;-><init>(Lcom/estrongs/android/ui/dialog/kq;)V

    iput-object v0, p0, Lcom/estrongs/android/ui/dialog/kq;->y:Landroid/content/DialogInterface$OnClickListener;

    new-instance v0, Lcom/estrongs/android/ui/dialog/kt;

    invoke-direct {v0, p0}, Lcom/estrongs/android/ui/dialog/kt;-><init>(Lcom/estrongs/android/ui/dialog/kq;)V

    iput-object v0, p0, Lcom/estrongs/android/ui/dialog/kq;->z:Landroid/content/DialogInterface$OnClickListener;

    iput-object p1, p0, Lcom/estrongs/android/ui/dialog/kq;->b:Landroid/content/Context;

    iput p2, p0, Lcom/estrongs/android/ui/dialog/kq;->m:I

    iget-object v0, p3, Lcom/estrongs/android/ui/dialog/kx;->b:Ljava/lang/String;

    iput-object v0, p0, Lcom/estrongs/android/ui/dialog/kq;->t:Ljava/lang/String;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/estrongs/android/ui/dialog/kq;->u:Ljava/util/List;

    iget-object v0, p0, Lcom/estrongs/android/ui/dialog/kq;->u:Ljava/util/List;

    iget-object v1, p3, Lcom/estrongs/android/ui/dialog/kx;->c:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    iput p4, p0, Lcom/estrongs/android/ui/dialog/kq;->n:I

    invoke-direct {p0, p5}, Lcom/estrongs/android/ui/dialog/kq;->a(I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;ILjava/lang/String;)V
    .locals 3

    const/4 v2, 0x0

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/estrongs/android/ui/dialog/kq;->d:Landroid/widget/ProgressBar;

    iput-object v1, p0, Lcom/estrongs/android/ui/dialog/kq;->e:Landroid/widget/ProgressBar;

    iput-object v1, p0, Lcom/estrongs/android/ui/dialog/kq;->l:Landroid/widget/ImageView;

    const/4 v0, 0x1

    iput v0, p0, Lcom/estrongs/android/ui/dialog/kq;->m:I

    iput v2, p0, Lcom/estrongs/android/ui/dialog/kq;->n:I

    iput v2, p0, Lcom/estrongs/android/ui/dialog/kq;->o:I

    iput-boolean v2, p0, Lcom/estrongs/android/ui/dialog/kq;->p:Z

    iput-object v1, p0, Lcom/estrongs/android/ui/dialog/kq;->q:Lcom/estrongs/android/util/aa;

    iput-boolean v2, p0, Lcom/estrongs/android/ui/dialog/kq;->r:Z

    iput-object v1, p0, Lcom/estrongs/android/ui/dialog/kq;->t:Ljava/lang/String;

    iput-object v1, p0, Lcom/estrongs/android/ui/dialog/kq;->u:Ljava/util/List;

    iput-object v1, p0, Lcom/estrongs/android/ui/dialog/kq;->v:Ljava/lang/String;

    new-instance v0, Lcom/estrongs/android/ui/dialog/kr;

    invoke-direct {v0, p0}, Lcom/estrongs/android/ui/dialog/kr;-><init>(Lcom/estrongs/android/ui/dialog/kq;)V

    iput-object v0, p0, Lcom/estrongs/android/ui/dialog/kq;->x:Landroid/os/Handler;

    new-instance v0, Lcom/estrongs/android/ui/dialog/ks;

    invoke-direct {v0, p0}, Lcom/estrongs/android/ui/dialog/ks;-><init>(Lcom/estrongs/android/ui/dialog/kq;)V

    iput-object v0, p0, Lcom/estrongs/android/ui/dialog/kq;->y:Landroid/content/DialogInterface$OnClickListener;

    new-instance v0, Lcom/estrongs/android/ui/dialog/kt;

    invoke-direct {v0, p0}, Lcom/estrongs/android/ui/dialog/kt;-><init>(Lcom/estrongs/android/ui/dialog/kq;)V

    iput-object v0, p0, Lcom/estrongs/android/ui/dialog/kq;->z:Landroid/content/DialogInterface$OnClickListener;

    iput-object p1, p0, Lcom/estrongs/android/ui/dialog/kq;->b:Landroid/content/Context;

    iput p2, p0, Lcom/estrongs/android/ui/dialog/kq;->m:I

    iput-object p3, p0, Lcom/estrongs/android/ui/dialog/kq;->v:Ljava/lang/String;

    invoke-direct {p0, v2}, Lcom/estrongs/android/ui/dialog/kq;->a(I)V

    return-void
.end method

.method static synthetic a(Lcom/estrongs/android/ui/dialog/kq;I)I
    .locals 0

    iput p1, p0, Lcom/estrongs/android/ui/dialog/kq;->m:I

    return p1
.end method

.method static synthetic a(J)J
    .locals 0

    sput-wide p0, Lcom/estrongs/android/ui/dialog/kq;->w:J

    return-wide p0
.end method

.method static synthetic a(Ljava/lang/String;)Lcom/estrongs/android/ui/dialog/kx;
    .locals 1

    invoke-static {p0}, Lcom/estrongs/android/ui/dialog/kq;->b(Ljava/lang/String;)Lcom/estrongs/android/ui/dialog/kx;

    move-result-object v0

    return-object v0
.end method

.method static synthetic a(Lcom/estrongs/android/ui/dialog/kq;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/ui/dialog/kq;->t:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic a(Lcom/estrongs/android/ui/dialog/kq;Ljava/util/List;)Ljava/util/List;
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/ui/dialog/kq;->u:Ljava/util/List;

    return-object p1
.end method

.method private a(I)V
    .locals 4

    const v1, 0x7f0805f8

    iget-object v0, p0, Lcom/estrongs/android/ui/dialog/kq;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/estrongs/android/pop/esclasses/k;->a(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v2, 0x7f0300bc

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/estrongs/android/ui/dialog/kq;->a:Landroid/view/View;

    iget-object v0, p0, Lcom/estrongs/android/ui/dialog/kq;->a:Landroid/view/View;

    const v2, 0x7f0e03bb

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/estrongs/android/ui/dialog/kq;->h:Landroid/widget/LinearLayout;

    iget-object v0, p0, Lcom/estrongs/android/ui/dialog/kq;->a:Landroid/view/View;

    const v2, 0x7f0e03bc

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p0, Lcom/estrongs/android/ui/dialog/kq;->d:Landroid/widget/ProgressBar;

    iget-object v0, p0, Lcom/estrongs/android/ui/dialog/kq;->a:Landroid/view/View;

    const v2, 0x7f0e03be

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p0, Lcom/estrongs/android/ui/dialog/kq;->e:Landroid/widget/ProgressBar;

    iget-object v0, p0, Lcom/estrongs/android/ui/dialog/kq;->a:Landroid/view/View;

    const v2, 0x7f0e03c2

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/estrongs/android/ui/dialog/kq;->f:Landroid/widget/LinearLayout;

    iget-object v0, p0, Lcom/estrongs/android/ui/dialog/kq;->a:Landroid/view/View;

    const v2, 0x7f0e03bf

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/estrongs/android/ui/dialog/kq;->g:Landroid/widget/LinearLayout;

    iget-object v0, p0, Lcom/estrongs/android/ui/dialog/kq;->a:Landroid/view/View;

    const v2, 0x7f0e03bd

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/estrongs/android/ui/dialog/kq;->i:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/estrongs/android/ui/dialog/kq;->a:Landroid/view/View;

    const v2, 0x7f0e03c3

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/estrongs/android/ui/dialog/kq;->l:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/estrongs/android/ui/dialog/kq;->a:Landroid/view/View;

    const v2, 0x7f0e03c1

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/estrongs/android/ui/dialog/kq;->k:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/estrongs/android/ui/dialog/kq;->a:Landroid/view/View;

    const v2, 0x7f0e03c0

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/estrongs/android/ui/dialog/kq;->j:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/estrongs/android/ui/dialog/kq;->e:Landroid/widget/ProgressBar;

    const/16 v2, 0x3e8

    invoke-virtual {v0, v2}, Landroid/widget/ProgressBar;->setMax(I)V

    new-instance v0, Lcom/estrongs/android/ui/dialog/cv;

    iget-object v2, p0, Lcom/estrongs/android/ui/dialog/kq;->b:Landroid/content/Context;

    invoke-direct {v0, v2}, Lcom/estrongs/android/ui/dialog/cv;-><init>(Landroid/content/Context;)V

    if-nez p1, :cond_0

    move p1, v1

    :cond_0
    invoke-virtual {v0, p1}, Lcom/estrongs/android/ui/dialog/cv;->a(I)Lcom/estrongs/android/ui/dialog/cv;

    move-result-object v0

    iget-object v2, p0, Lcom/estrongs/android/ui/dialog/kq;->a:Landroid/view/View;

    invoke-virtual {v0, v2}, Lcom/estrongs/android/ui/dialog/cv;->a(Landroid/view/View;)Lcom/estrongs/android/ui/dialog/cv;

    move-result-object v0

    iget-object v2, p0, Lcom/estrongs/android/ui/dialog/kq;->y:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {v0, v1, v2}, Lcom/estrongs/android/ui/dialog/cv;->b(ILandroid/content/DialogInterface$OnClickListener;)Lcom/estrongs/android/ui/dialog/cv;

    move-result-object v0

    const v1, 0x7f080221

    iget-object v2, p0, Lcom/estrongs/android/ui/dialog/kq;->z:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {v0, v1, v2}, Lcom/estrongs/android/ui/dialog/cv;->c(ILandroid/content/DialogInterface$OnClickListener;)Lcom/estrongs/android/ui/dialog/cv;

    move-result-object v0

    invoke-virtual {v0}, Lcom/estrongs/android/ui/dialog/cv;->b()Lcom/estrongs/android/ui/dialog/ci;

    move-result-object v0

    iput-object v0, p0, Lcom/estrongs/android/ui/dialog/kq;->c:Lcom/estrongs/android/ui/dialog/ci;

    iget-object v0, p0, Lcom/estrongs/android/ui/dialog/kq;->l:Landroid/widget/ImageView;

    new-instance v1, Lcom/estrongs/android/ui/dialog/ku;

    invoke-direct {v1, p0}, Lcom/estrongs/android/ui/dialog/ku;-><init>(Lcom/estrongs/android/ui/dialog/kq;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-direct {p0}, Lcom/estrongs/android/ui/dialog/kq;->d()V

    return-void
.end method

.method public static a(Landroid/os/Handler;Ljava/lang/String;)V
    .locals 2

    new-instance v0, Lcom/estrongs/android/util/aa;

    invoke-direct {v0, p1}, Lcom/estrongs/android/util/aa;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v1, 0x1

    iput v1, v0, Lcom/estrongs/android/util/aa;->c:I

    iput-object p0, v0, Lcom/estrongs/android/util/aa;->d:Ljava/lang/Object;

    invoke-virtual {v0, v0}, Lcom/estrongs/android/util/aa;->a(Ljava/lang/Object;)V

    new-instance v1, Lcom/estrongs/android/ui/dialog/kw;

    invoke-direct {v1}, Lcom/estrongs/android/ui/dialog/kw;-><init>()V

    invoke-virtual {v0, v1}, Lcom/estrongs/android/util/aa;->a(Lcom/estrongs/android/util/af;)V

    invoke-virtual {v0}, Lcom/estrongs/android/util/aa;->c()V

    return-void
.end method

.method static synthetic a(Lcom/estrongs/android/ui/dialog/kq;)V
    .locals 0

    invoke-direct {p0}, Lcom/estrongs/android/ui/dialog/kq;->d()V

    return-void
.end method

.method static synthetic a(Lcom/estrongs/android/ui/dialog/kq;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/estrongs/android/ui/dialog/kq;->p:Z

    return p1
.end method

.method static synthetic b(Lcom/estrongs/android/ui/dialog/kq;I)I
    .locals 0

    iput p1, p0, Lcom/estrongs/android/ui/dialog/kq;->n:I

    return p1
.end method

.method static synthetic b(Lcom/estrongs/android/ui/dialog/kq;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/ui/dialog/kq;->b:Landroid/content/Context;

    return-object v0
.end method

.method private static b(Ljava/lang/String;)Lcom/estrongs/android/ui/dialog/kx;
    .locals 5

    const/4 v2, 0x0

    :try_start_0
    new-instance v3, Lcom/estrongs/android/ui/dialog/kx;

    invoke-direct {v3}, Lcom/estrongs/android/ui/dialog/kx;-><init>()V

    new-instance v0, Lorg/json/simple/parser/JSONParser;

    invoke-direct {v0}, Lorg/json/simple/parser/JSONParser;-><init>()V

    invoke-virtual {v0, p0}, Lorg/json/simple/parser/JSONParser;->parse(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    if-nez v0, :cond_0

    move-object v0, v2

    :goto_0
    return-object v0

    :cond_0
    const-string v1, "version"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iput-object v1, v3, Lcom/estrongs/android/ui/dialog/kx;->a:Ljava/lang/String;

    const-string v1, "market"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iput-object v1, v3, Lcom/estrongs/android/ui/dialog/kx;->b:Ljava/lang/String;

    const-string v1, "urls"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/json/simple/JSONArray;

    instance-of v1, v0, Lorg/json/simple/JSONArray;

    if-eqz v1, :cond_2

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, v3, Lcom/estrongs/android/ui/dialog/kx;->c:Ljava/util/List;

    check-cast v0, Lorg/json/simple/JSONArray;

    invoke-virtual {v0}, Lorg/json/simple/JSONArray;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    const-string v4, "url"

    invoke-interface {v0, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v4, v3, Lcom/estrongs/android/ui/dialog/kx;->c:Ljava/util/List;

    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :catch_0
    move-exception v0

    move-object v0, v2

    goto :goto_0

    :cond_2
    iget-object v0, v3, Lcom/estrongs/android/ui/dialog/kx;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    if-nez v0, :cond_3

    move-object v0, v2

    goto :goto_0

    :cond_3
    move-object v0, v3

    goto :goto_0
.end method

.method private b(I)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/ui/dialog/kq;->b:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic c(Lcom/estrongs/android/ui/dialog/kq;)Lcom/estrongs/android/util/aa;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/ui/dialog/kq;->q:Lcom/estrongs/android/util/aa;

    return-object v0
.end method

.method static synthetic d(Lcom/estrongs/android/ui/dialog/kq;)I
    .locals 1

    iget v0, p0, Lcom/estrongs/android/ui/dialog/kq;->m:I

    return v0
.end method

.method private d()V
    .locals 6

    const/4 v5, 0x2

    const/4 v1, 0x1

    const/4 v4, 0x0

    const v3, 0x7f080221

    const/16 v2, 0x8

    iget-boolean v0, p0, Lcom/estrongs/android/ui/dialog/kq;->r:Z

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget v0, p0, Lcom/estrongs/android/ui/dialog/kq;->m:I

    if-ne v0, v1, :cond_2

    iget-object v0, p0, Lcom/estrongs/android/ui/dialog/kq;->i:Landroid/widget/TextView;

    const v1, 0x7f080705

    invoke-direct {p0, v1}, Lcom/estrongs/android/ui/dialog/kq;->b(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/estrongs/android/ui/dialog/kq;->d:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v4}, Landroid/widget/ProgressBar;->setVisibility(I)V

    iget-object v0, p0, Lcom/estrongs/android/ui/dialog/kq;->e:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v2}, Landroid/widget/ProgressBar;->setVisibility(I)V

    iget-object v0, p0, Lcom/estrongs/android/ui/dialog/kq;->f:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/estrongs/android/ui/dialog/kq;->g:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/estrongs/android/ui/dialog/kq;->c:Lcom/estrongs/android/ui/dialog/ci;

    invoke-direct {p0, v3}, Lcom/estrongs/android/ui/dialog/kq;->b(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/estrongs/android/ui/dialog/kq;->z:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {v0, v1, v2}, Lcom/estrongs/android/ui/dialog/ci;->setSingleButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    iget-object v0, p0, Lcom/estrongs/android/ui/dialog/kq;->c:Lcom/estrongs/android/ui/dialog/ci;

    invoke-virtual {v0}, Lcom/estrongs/android/ui/dialog/ci;->getSingleButton()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    iget-object v0, p0, Lcom/estrongs/android/ui/dialog/kq;->x:Landroid/os/Handler;

    iget-object v1, p0, Lcom/estrongs/android/ui/dialog/kq;->v:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/estrongs/android/ui/dialog/kq;->a(Landroid/os/Handler;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    iget v0, p0, Lcom/estrongs/android/ui/dialog/kq;->m:I

    if-ne v0, v5, :cond_5

    iget-object v0, p0, Lcom/estrongs/android/ui/dialog/kq;->d:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v2}, Landroid/widget/ProgressBar;->setVisibility(I)V

    iget-object v0, p0, Lcom/estrongs/android/ui/dialog/kq;->g:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/estrongs/android/ui/dialog/kq;->e:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v2}, Landroid/widget/ProgressBar;->setVisibility(I)V

    iget v0, p0, Lcom/estrongs/android/ui/dialog/kq;->n:I

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/estrongs/android/ui/dialog/kq;->i:Landroid/widget/TextView;

    const v1, 0x7f080709

    invoke-direct {p0, v1}, Lcom/estrongs/android/ui/dialog/kq;->b(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_3
    iget v0, p0, Lcom/estrongs/android/ui/dialog/kq;->n:I

    if-ne v0, v1, :cond_4

    iget-object v0, p0, Lcom/estrongs/android/ui/dialog/kq;->i:Landroid/widget/TextView;

    const v1, 0x7f080707

    invoke-direct {p0, v1}, Lcom/estrongs/android/ui/dialog/kq;->b(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/estrongs/android/ui/dialog/kq;->c:Lcom/estrongs/android/ui/dialog/ci;

    const v1, 0x7f0805f8

    invoke-direct {p0, v1}, Lcom/estrongs/android/ui/dialog/kq;->b(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/estrongs/android/ui/dialog/kq;->y:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {v0, v1, v2}, Lcom/estrongs/android/ui/dialog/ci;->setConfirmButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/widget/Button;

    iget-object v0, p0, Lcom/estrongs/android/ui/dialog/kq;->c:Lcom/estrongs/android/ui/dialog/ci;

    invoke-direct {p0, v3}, Lcom/estrongs/android/ui/dialog/kq;->b(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/estrongs/android/ui/dialog/kq;->z:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {v0, v1, v2}, Lcom/estrongs/android/ui/dialog/ci;->setCancelButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/widget/Button;

    iget-object v0, p0, Lcom/estrongs/android/ui/dialog/kq;->c:Lcom/estrongs/android/ui/dialog/ci;

    invoke-virtual {v0}, Lcom/estrongs/android/ui/dialog/ci;->getConfirmButton()Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Button;->requestFocus()Z

    goto/16 :goto_0

    :cond_4
    iget v0, p0, Lcom/estrongs/android/ui/dialog/kq;->n:I

    if-ne v0, v5, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/ui/dialog/kq;->i:Landroid/widget/TextView;

    const v1, 0x7f08070a

    invoke-direct {p0, v1}, Lcom/estrongs/android/ui/dialog/kq;->b(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    :cond_5
    iget v0, p0, Lcom/estrongs/android/ui/dialog/kq;->m:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_6

    iget-object v0, p0, Lcom/estrongs/android/ui/dialog/kq;->i:Landroid/widget/TextView;

    const v1, 0x7f0805b3

    invoke-direct {p0, v1}, Lcom/estrongs/android/ui/dialog/kq;->b(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/estrongs/android/ui/dialog/kq;->g:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/estrongs/android/ui/dialog/kq;->e:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v4}, Landroid/widget/ProgressBar;->setVisibility(I)V

    iget-object v0, p0, Lcom/estrongs/android/ui/dialog/kq;->f:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/estrongs/android/ui/dialog/kq;->c:Lcom/estrongs/android/ui/dialog/ci;

    invoke-direct {p0, v3}, Lcom/estrongs/android/ui/dialog/kq;->b(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/estrongs/android/ui/dialog/kq;->z:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {v0, v1, v2}, Lcom/estrongs/android/ui/dialog/ci;->setSingleButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    iget-object v0, p0, Lcom/estrongs/android/ui/dialog/kq;->c:Lcom/estrongs/android/ui/dialog/ci;

    invoke-virtual {v0}, Lcom/estrongs/android/ui/dialog/ci;->getSingleButton()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    goto/16 :goto_0

    :cond_6
    iget v0, p0, Lcom/estrongs/android/ui/dialog/kq;->m:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    iget v0, p0, Lcom/estrongs/android/ui/dialog/kq;->o:I

    const/16 v1, 0x9

    if-ne v0, v1, :cond_7

    iget-object v0, p0, Lcom/estrongs/android/ui/dialog/kq;->i:Landroid/widget/TextView;

    const v1, 0x7f080706

    invoke-direct {p0, v1}, Lcom/estrongs/android/ui/dialog/kq;->b(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/estrongs/android/ui/dialog/kq;->c:Lcom/estrongs/android/ui/dialog/ci;

    const v1, 0x7f080178

    invoke-direct {p0, v1}, Lcom/estrongs/android/ui/dialog/kq;->b(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/estrongs/android/ui/dialog/kq;->y:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {v0, v1, v2}, Lcom/estrongs/android/ui/dialog/ci;->setConfirmButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/widget/Button;

    iget-object v0, p0, Lcom/estrongs/android/ui/dialog/kq;->c:Lcom/estrongs/android/ui/dialog/ci;

    invoke-direct {p0, v3}, Lcom/estrongs/android/ui/dialog/kq;->b(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/estrongs/android/ui/dialog/kq;->z:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {v0, v1, v2}, Lcom/estrongs/android/ui/dialog/ci;->setCancelButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/widget/Button;

    iget-object v0, p0, Lcom/estrongs/android/ui/dialog/kq;->c:Lcom/estrongs/android/ui/dialog/ci;

    invoke-virtual {v0}, Lcom/estrongs/android/ui/dialog/ci;->getConfirmButton()Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Button;->requestFocus()Z

    goto/16 :goto_0

    :cond_7
    iget-object v0, p0, Lcom/estrongs/android/ui/dialog/kq;->i:Landroid/widget/TextView;

    const v1, 0x7f0805f5

    invoke-direct {p0, v1}, Lcom/estrongs/android/ui/dialog/kq;->b(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0
.end method

.method static synthetic e(Lcom/estrongs/android/ui/dialog/kq;)I
    .locals 1

    iget v0, p0, Lcom/estrongs/android/ui/dialog/kq;->n:I

    return v0
.end method

.method private e()Z
    .locals 9

    const/4 v5, 0x0

    const/4 v8, 0x1

    const/4 v4, 0x0

    :try_start_0
    invoke-static {}, Lcom/estrongs/android/pop/FexApplication;->a()Lcom/estrongs/android/pop/FexApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/estrongs/android/pop/FexApplication;->m()Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v1, Landroid/content/Intent;

    const-string v0, "android.intent.action.VIEW"

    invoke-direct {v1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/estrongs/android/ui/dialog/kq;->t:Ljava/lang/String;

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    iget-object v0, p0, Lcom/estrongs/android/ui/dialog/kq;->b:Landroid/content/Context;

    instance-of v0, v0, Lcom/estrongs/android/pop/view/FileExplorerActivity;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/ui/dialog/kq;->b:Landroid/content/Context;

    check-cast v0, Lcom/estrongs/android/pop/view/FileExplorerActivity;

    invoke-virtual {v0, v1}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->a(Landroid/content/Intent;)V

    :goto_0
    invoke-virtual {p0}, Lcom/estrongs/android/ui/dialog/kq;->c()V

    :goto_1
    return v4

    :cond_0
    iget-object v0, p0, Lcom/estrongs/android/ui/dialog/kq;->b:Landroid/content/Context;

    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    :catch_0
    move-exception v0

    iget-object v0, p0, Lcom/estrongs/android/ui/dialog/kq;->u:Ljava/util/List;

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    sget-wide v0, Lcom/estrongs/android/ui/dialog/kq;->w:J

    const-wide/16 v6, -0x1

    cmp-long v0, v0, v6

    if-eqz v0, :cond_2

    sget-wide v0, Lcom/estrongs/android/ui/dialog/kq;->w:J

    invoke-static {v0, v1}, Lcom/estrongs/a/a;->getTask(J)Lcom/estrongs/a/a;

    move-result-object v0

    if-eqz v0, :cond_2

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    iget-object v1, p0, Lcom/estrongs/android/ui/dialog/kq;->b:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const-class v2, Lcom/estrongs/android/pop/app/ShowDialogActivity;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "task_id"

    sget-wide v2, Lcom/estrongs/android/ui/dialog/kq;->w:J

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    const-string v1, "task_title"

    iget-object v2, p0, Lcom/estrongs/android/ui/dialog/kq;->b:Landroid/content/Context;

    const v3, 0x7f08007f

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v1, p0, Lcom/estrongs/android/ui/dialog/kq;->b:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    move v4, v8

    goto :goto_1

    :cond_1
    :try_start_1
    new-instance v0, Landroid/content/ActivityNotFoundException;

    invoke-direct {v0}, Landroid/content/ActivityNotFoundException;-><init>()V

    throw v0
    :try_end_1
    .catch Landroid/content/ActivityNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    move-exception v0

    goto :goto_1

    :cond_2
    iget-object v0, p0, Lcom/estrongs/android/ui/dialog/kq;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/estrongs/android/pop/ad;->a(Landroid/content/Context;)Lcom/estrongs/android/pop/ad;

    move-result-object v0

    invoke-virtual {v0}, Lcom/estrongs/android/pop/ad;->A()Ljava/lang/String;

    move-result-object v1

    iget-object v0, p0, Lcom/estrongs/android/ui/dialog/kq;->b:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    new-instance v3, Lcom/estrongs/android/ui/dialog/kv;

    invoke-direct {v3, p0}, Lcom/estrongs/android/ui/dialog/kv;-><init>(Lcom/estrongs/android/ui/dialog/kq;)V

    move v6, v4

    move-object v7, v5

    invoke-static/range {v0 .. v8}, Lcom/estrongs/android/pop/app/DownloaderActivity;->a(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Lcom/estrongs/a/a/p;ZLjava/lang/String;ZLjava/lang/String;Z)Lcom/estrongs/android/ui/dialog/ci;

    move v4, v8

    goto :goto_1
.end method

.method static synthetic f(Lcom/estrongs/android/ui/dialog/kq;)Z
    .locals 1

    invoke-direct {p0}, Lcom/estrongs/android/ui/dialog/kq;->e()Z

    move-result v0

    return v0
.end method

.method static synthetic g(Lcom/estrongs/android/ui/dialog/kq;)I
    .locals 1

    iget v0, p0, Lcom/estrongs/android/ui/dialog/kq;->o:I

    return v0
.end method

.method static synthetic h(Lcom/estrongs/android/ui/dialog/kq;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/estrongs/android/ui/dialog/kq;->r:Z

    return v0
.end method

.method static synthetic i(Lcom/estrongs/android/ui/dialog/kq;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/estrongs/android/ui/dialog/kq;->p:Z

    return v0
.end method

.method static synthetic j(Lcom/estrongs/android/ui/dialog/kq;)Landroid/widget/ImageView;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/ui/dialog/kq;->l:Landroid/widget/ImageView;

    return-object v0
.end method


# virtual methods
.method public a()V
    .locals 2

    iget-object v0, p0, Lcom/estrongs/android/ui/dialog/kq;->a:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/ui/dialog/kq;->a:Landroid/view/View;

    const v1, 0x7f0e03c2

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method public a(Landroid/content/DialogInterface$OnDismissListener;)V
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/ui/dialog/kq;->c:Lcom/estrongs/android/ui/dialog/ci;

    invoke-virtual {v0, p1}, Lcom/estrongs/android/ui/dialog/ci;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    return-void
.end method

.method public b()V
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/ui/dialog/kq;->c:Lcom/estrongs/android/ui/dialog/ci;

    invoke-virtual {v0}, Lcom/estrongs/android/ui/dialog/ci;->show()V

    return-void
.end method

.method public c()V
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/ui/dialog/kq;->c:Lcom/estrongs/android/ui/dialog/ci;

    invoke-virtual {v0}, Lcom/estrongs/android/ui/dialog/ci;->dismiss()V

    return-void
.end method
