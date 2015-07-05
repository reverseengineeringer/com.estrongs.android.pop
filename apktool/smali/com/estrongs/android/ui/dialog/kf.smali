.class public Lcom/estrongs/android/ui/dialog/kf;
.super Ljava/lang/Object;


# static fields
.field private static s:Ljava/lang/String;


# instance fields
.field a:Landroid/view/View;

.field private b:Landroid/content/Context;

.field private c:Lcom/estrongs/android/ui/dialog/cg;

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

.field private q:Lcom/estrongs/android/util/y;

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

.field private w:Landroid/os/Handler;

.field private x:Landroid/content/DialogInterface$OnClickListener;

.field private y:Landroid/content/DialogInterface$OnClickListener;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lcom/estrongs/android/ui/dialog/kf;->s:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;ILcom/estrongs/android/ui/dialog/km;I)V
    .locals 6

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move v4, p4

    invoke-direct/range {v0 .. v5}, Lcom/estrongs/android/ui/dialog/kf;-><init>(Landroid/content/Context;ILcom/estrongs/android/ui/dialog/km;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;ILcom/estrongs/android/ui/dialog/km;II)V
    .locals 3

    const/4 v2, 0x0

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/estrongs/android/ui/dialog/kf;->d:Landroid/widget/ProgressBar;

    iput-object v1, p0, Lcom/estrongs/android/ui/dialog/kf;->e:Landroid/widget/ProgressBar;

    iput-object v1, p0, Lcom/estrongs/android/ui/dialog/kf;->l:Landroid/widget/ImageView;

    const/4 v0, 0x1

    iput v0, p0, Lcom/estrongs/android/ui/dialog/kf;->m:I

    iput v2, p0, Lcom/estrongs/android/ui/dialog/kf;->n:I

    iput v2, p0, Lcom/estrongs/android/ui/dialog/kf;->o:I

    iput-boolean v2, p0, Lcom/estrongs/android/ui/dialog/kf;->p:Z

    iput-object v1, p0, Lcom/estrongs/android/ui/dialog/kf;->q:Lcom/estrongs/android/util/y;

    iput-boolean v2, p0, Lcom/estrongs/android/ui/dialog/kf;->r:Z

    iput-object v1, p0, Lcom/estrongs/android/ui/dialog/kf;->t:Ljava/lang/String;

    iput-object v1, p0, Lcom/estrongs/android/ui/dialog/kf;->u:Ljava/util/List;

    iput-object v1, p0, Lcom/estrongs/android/ui/dialog/kf;->v:Ljava/lang/String;

    new-instance v0, Lcom/estrongs/android/ui/dialog/kg;

    invoke-direct {v0, p0}, Lcom/estrongs/android/ui/dialog/kg;-><init>(Lcom/estrongs/android/ui/dialog/kf;)V

    iput-object v0, p0, Lcom/estrongs/android/ui/dialog/kf;->w:Landroid/os/Handler;

    new-instance v0, Lcom/estrongs/android/ui/dialog/kh;

    invoke-direct {v0, p0}, Lcom/estrongs/android/ui/dialog/kh;-><init>(Lcom/estrongs/android/ui/dialog/kf;)V

    iput-object v0, p0, Lcom/estrongs/android/ui/dialog/kf;->x:Landroid/content/DialogInterface$OnClickListener;

    new-instance v0, Lcom/estrongs/android/ui/dialog/ki;

    invoke-direct {v0, p0}, Lcom/estrongs/android/ui/dialog/ki;-><init>(Lcom/estrongs/android/ui/dialog/kf;)V

    iput-object v0, p0, Lcom/estrongs/android/ui/dialog/kf;->y:Landroid/content/DialogInterface$OnClickListener;

    iput-object p1, p0, Lcom/estrongs/android/ui/dialog/kf;->b:Landroid/content/Context;

    iput p2, p0, Lcom/estrongs/android/ui/dialog/kf;->m:I

    iget-object v0, p3, Lcom/estrongs/android/ui/dialog/km;->b:Ljava/lang/String;

    iput-object v0, p0, Lcom/estrongs/android/ui/dialog/kf;->t:Ljava/lang/String;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/estrongs/android/ui/dialog/kf;->u:Ljava/util/List;

    iget-object v0, p0, Lcom/estrongs/android/ui/dialog/kf;->u:Ljava/util/List;

    iget-object v1, p3, Lcom/estrongs/android/ui/dialog/km;->c:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    iput p4, p0, Lcom/estrongs/android/ui/dialog/kf;->n:I

    invoke-direct {p0, p5}, Lcom/estrongs/android/ui/dialog/kf;->a(I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;ILjava/lang/String;)V
    .locals 3

    const/4 v2, 0x0

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/estrongs/android/ui/dialog/kf;->d:Landroid/widget/ProgressBar;

    iput-object v1, p0, Lcom/estrongs/android/ui/dialog/kf;->e:Landroid/widget/ProgressBar;

    iput-object v1, p0, Lcom/estrongs/android/ui/dialog/kf;->l:Landroid/widget/ImageView;

    const/4 v0, 0x1

    iput v0, p0, Lcom/estrongs/android/ui/dialog/kf;->m:I

    iput v2, p0, Lcom/estrongs/android/ui/dialog/kf;->n:I

    iput v2, p0, Lcom/estrongs/android/ui/dialog/kf;->o:I

    iput-boolean v2, p0, Lcom/estrongs/android/ui/dialog/kf;->p:Z

    iput-object v1, p0, Lcom/estrongs/android/ui/dialog/kf;->q:Lcom/estrongs/android/util/y;

    iput-boolean v2, p0, Lcom/estrongs/android/ui/dialog/kf;->r:Z

    iput-object v1, p0, Lcom/estrongs/android/ui/dialog/kf;->t:Ljava/lang/String;

    iput-object v1, p0, Lcom/estrongs/android/ui/dialog/kf;->u:Ljava/util/List;

    iput-object v1, p0, Lcom/estrongs/android/ui/dialog/kf;->v:Ljava/lang/String;

    new-instance v0, Lcom/estrongs/android/ui/dialog/kg;

    invoke-direct {v0, p0}, Lcom/estrongs/android/ui/dialog/kg;-><init>(Lcom/estrongs/android/ui/dialog/kf;)V

    iput-object v0, p0, Lcom/estrongs/android/ui/dialog/kf;->w:Landroid/os/Handler;

    new-instance v0, Lcom/estrongs/android/ui/dialog/kh;

    invoke-direct {v0, p0}, Lcom/estrongs/android/ui/dialog/kh;-><init>(Lcom/estrongs/android/ui/dialog/kf;)V

    iput-object v0, p0, Lcom/estrongs/android/ui/dialog/kf;->x:Landroid/content/DialogInterface$OnClickListener;

    new-instance v0, Lcom/estrongs/android/ui/dialog/ki;

    invoke-direct {v0, p0}, Lcom/estrongs/android/ui/dialog/ki;-><init>(Lcom/estrongs/android/ui/dialog/kf;)V

    iput-object v0, p0, Lcom/estrongs/android/ui/dialog/kf;->y:Landroid/content/DialogInterface$OnClickListener;

    iput-object p1, p0, Lcom/estrongs/android/ui/dialog/kf;->b:Landroid/content/Context;

    iput p2, p0, Lcom/estrongs/android/ui/dialog/kf;->m:I

    iput-object p3, p0, Lcom/estrongs/android/ui/dialog/kf;->v:Ljava/lang/String;

    invoke-direct {p0, v2}, Lcom/estrongs/android/ui/dialog/kf;->a(I)V

    return-void
.end method

.method static synthetic a(Lcom/estrongs/android/ui/dialog/kf;I)I
    .locals 0

    iput p1, p0, Lcom/estrongs/android/ui/dialog/kf;->m:I

    return p1
.end method

.method static synthetic a(Ljava/lang/String;)Lcom/estrongs/android/ui/dialog/km;
    .locals 1

    invoke-static {p0}, Lcom/estrongs/android/ui/dialog/kf;->b(Ljava/lang/String;)Lcom/estrongs/android/ui/dialog/km;

    move-result-object v0

    return-object v0
.end method

.method static synthetic a(Lcom/estrongs/android/ui/dialog/kf;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/ui/dialog/kf;->t:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic a(Lcom/estrongs/android/ui/dialog/kf;Ljava/util/List;)Ljava/util/List;
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/ui/dialog/kf;->u:Ljava/util/List;

    return-object p1
.end method

.method private a(I)V
    .locals 4

    const v1, 0x7f0b0119

    iget-object v0, p0, Lcom/estrongs/android/ui/dialog/kf;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/estrongs/android/pop/esclasses/g;->a(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v2, 0x7f030059

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/estrongs/android/ui/dialog/kf;->a:Landroid/view/View;

    iget-object v0, p0, Lcom/estrongs/android/ui/dialog/kf;->a:Landroid/view/View;

    const v2, 0x7f0a01fb

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/estrongs/android/ui/dialog/kf;->h:Landroid/widget/LinearLayout;

    iget-object v0, p0, Lcom/estrongs/android/ui/dialog/kf;->a:Landroid/view/View;

    const v2, 0x7f0a01fc

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p0, Lcom/estrongs/android/ui/dialog/kf;->d:Landroid/widget/ProgressBar;

    iget-object v0, p0, Lcom/estrongs/android/ui/dialog/kf;->a:Landroid/view/View;

    const v2, 0x7f0a01fe

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p0, Lcom/estrongs/android/ui/dialog/kf;->e:Landroid/widget/ProgressBar;

    iget-object v0, p0, Lcom/estrongs/android/ui/dialog/kf;->a:Landroid/view/View;

    const v2, 0x7f0a0202

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/estrongs/android/ui/dialog/kf;->f:Landroid/widget/LinearLayout;

    iget-object v0, p0, Lcom/estrongs/android/ui/dialog/kf;->a:Landroid/view/View;

    const v2, 0x7f0a01ff

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/estrongs/android/ui/dialog/kf;->g:Landroid/widget/LinearLayout;

    iget-object v0, p0, Lcom/estrongs/android/ui/dialog/kf;->a:Landroid/view/View;

    const v2, 0x7f0a01fd

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/estrongs/android/ui/dialog/kf;->i:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/estrongs/android/ui/dialog/kf;->a:Landroid/view/View;

    const v2, 0x7f0a0203

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/estrongs/android/ui/dialog/kf;->l:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/estrongs/android/ui/dialog/kf;->a:Landroid/view/View;

    const v2, 0x7f0a0201

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/estrongs/android/ui/dialog/kf;->k:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/estrongs/android/ui/dialog/kf;->a:Landroid/view/View;

    const v2, 0x7f0a0200

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/estrongs/android/ui/dialog/kf;->j:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/estrongs/android/ui/dialog/kf;->e:Landroid/widget/ProgressBar;

    const/16 v2, 0x3e8

    invoke-virtual {v0, v2}, Landroid/widget/ProgressBar;->setMax(I)V

    new-instance v0, Lcom/estrongs/android/ui/dialog/ct;

    iget-object v2, p0, Lcom/estrongs/android/ui/dialog/kf;->b:Landroid/content/Context;

    invoke-direct {v0, v2}, Lcom/estrongs/android/ui/dialog/ct;-><init>(Landroid/content/Context;)V

    if-nez p1, :cond_0

    move p1, v1

    :cond_0
    invoke-virtual {v0, p1}, Lcom/estrongs/android/ui/dialog/ct;->a(I)Lcom/estrongs/android/ui/dialog/ct;

    move-result-object v0

    iget-object v2, p0, Lcom/estrongs/android/ui/dialog/kf;->a:Landroid/view/View;

    invoke-virtual {v0, v2}, Lcom/estrongs/android/ui/dialog/ct;->a(Landroid/view/View;)Lcom/estrongs/android/ui/dialog/ct;

    move-result-object v0

    iget-object v2, p0, Lcom/estrongs/android/ui/dialog/kf;->x:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {v0, v1, v2}, Lcom/estrongs/android/ui/dialog/ct;->b(ILandroid/content/DialogInterface$OnClickListener;)Lcom/estrongs/android/ui/dialog/ct;

    move-result-object v0

    const v1, 0x7f0b000c

    iget-object v2, p0, Lcom/estrongs/android/ui/dialog/kf;->y:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {v0, v1, v2}, Lcom/estrongs/android/ui/dialog/ct;->c(ILandroid/content/DialogInterface$OnClickListener;)Lcom/estrongs/android/ui/dialog/ct;

    move-result-object v0

    invoke-virtual {v0}, Lcom/estrongs/android/ui/dialog/ct;->b()Lcom/estrongs/android/ui/dialog/cg;

    move-result-object v0

    iput-object v0, p0, Lcom/estrongs/android/ui/dialog/kf;->c:Lcom/estrongs/android/ui/dialog/cg;

    iget-object v0, p0, Lcom/estrongs/android/ui/dialog/kf;->l:Landroid/widget/ImageView;

    new-instance v1, Lcom/estrongs/android/ui/dialog/kj;

    invoke-direct {v1, p0}, Lcom/estrongs/android/ui/dialog/kj;-><init>(Lcom/estrongs/android/ui/dialog/kf;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-direct {p0}, Lcom/estrongs/android/ui/dialog/kf;->d()V

    return-void
.end method

.method public static a(Landroid/os/Handler;Ljava/lang/String;)V
    .locals 2

    new-instance v0, Lcom/estrongs/android/util/y;

    invoke-direct {v0, p1}, Lcom/estrongs/android/util/y;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v1, 0x1

    iput v1, v0, Lcom/estrongs/android/util/y;->c:I

    iput-object p0, v0, Lcom/estrongs/android/util/y;->d:Ljava/lang/Object;

    invoke-virtual {v0, v0}, Lcom/estrongs/android/util/y;->a(Ljava/lang/Object;)V

    new-instance v1, Lcom/estrongs/android/ui/dialog/kl;

    invoke-direct {v1}, Lcom/estrongs/android/ui/dialog/kl;-><init>()V

    invoke-virtual {v0, v1}, Lcom/estrongs/android/util/y;->a(Lcom/estrongs/android/util/ab;)V

    invoke-virtual {v0}, Lcom/estrongs/android/util/y;->c()V

    return-void
.end method

.method static synthetic a(Lcom/estrongs/android/ui/dialog/kf;)V
    .locals 0

    invoke-direct {p0}, Lcom/estrongs/android/ui/dialog/kf;->d()V

    return-void
.end method

.method static synthetic a(Lcom/estrongs/android/ui/dialog/kf;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/estrongs/android/ui/dialog/kf;->p:Z

    return p1
.end method

.method static synthetic b(Lcom/estrongs/android/ui/dialog/kf;I)I
    .locals 0

    iput p1, p0, Lcom/estrongs/android/ui/dialog/kf;->n:I

    return p1
.end method

.method static synthetic b(Lcom/estrongs/android/ui/dialog/kf;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/ui/dialog/kf;->b:Landroid/content/Context;

    return-object v0
.end method

.method private static b(Ljava/lang/String;)Lcom/estrongs/android/ui/dialog/km;
    .locals 5

    const/4 v2, 0x0

    :try_start_0
    new-instance v3, Lcom/estrongs/android/ui/dialog/km;

    invoke-direct {v3}, Lcom/estrongs/android/ui/dialog/km;-><init>()V

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

    iput-object v1, v3, Lcom/estrongs/android/ui/dialog/km;->a:Ljava/lang/String;

    const-string v1, "market"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iput-object v1, v3, Lcom/estrongs/android/ui/dialog/km;->b:Ljava/lang/String;

    const-string v1, "urls"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/json/simple/JSONArray;

    instance-of v1, v0, Lorg/json/simple/JSONArray;

    if-eqz v1, :cond_2

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, v3, Lcom/estrongs/android/ui/dialog/km;->c:Ljava/util/List;

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

    iget-object v4, v3, Lcom/estrongs/android/ui/dialog/km;->c:Ljava/util/List;

    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :catch_0
    move-exception v0

    move-object v0, v2

    goto :goto_0

    :cond_2
    iget-object v0, v3, Lcom/estrongs/android/ui/dialog/km;->c:Ljava/util/List;

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

    iget-object v0, p0, Lcom/estrongs/android/ui/dialog/kf;->b:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic c(Lcom/estrongs/android/ui/dialog/kf;I)I
    .locals 0

    iput p1, p0, Lcom/estrongs/android/ui/dialog/kf;->o:I

    return p1
.end method

.method static synthetic c(Lcom/estrongs/android/ui/dialog/kf;)Lcom/estrongs/android/util/y;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/ui/dialog/kf;->q:Lcom/estrongs/android/util/y;

    return-object v0
.end method

.method static synthetic d(Lcom/estrongs/android/ui/dialog/kf;)Landroid/widget/TextView;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/ui/dialog/kf;->k:Landroid/widget/TextView;

    return-object v0
.end method

.method private d()V
    .locals 6

    const/4 v5, 0x2

    const/4 v1, 0x1

    const/4 v4, 0x0

    const v3, 0x7f0b000c

    const/16 v2, 0x8

    iget-boolean v0, p0, Lcom/estrongs/android/ui/dialog/kf;->r:Z

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget v0, p0, Lcom/estrongs/android/ui/dialog/kf;->m:I

    if-ne v0, v1, :cond_2

    iget-object v0, p0, Lcom/estrongs/android/ui/dialog/kf;->i:Landroid/widget/TextView;

    const v1, 0x7f0b0127

    invoke-direct {p0, v1}, Lcom/estrongs/android/ui/dialog/kf;->b(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/estrongs/android/ui/dialog/kf;->d:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v4}, Landroid/widget/ProgressBar;->setVisibility(I)V

    iget-object v0, p0, Lcom/estrongs/android/ui/dialog/kf;->e:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v2}, Landroid/widget/ProgressBar;->setVisibility(I)V

    iget-object v0, p0, Lcom/estrongs/android/ui/dialog/kf;->f:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/estrongs/android/ui/dialog/kf;->g:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/estrongs/android/ui/dialog/kf;->c:Lcom/estrongs/android/ui/dialog/cg;

    invoke-direct {p0, v3}, Lcom/estrongs/android/ui/dialog/kf;->b(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/estrongs/android/ui/dialog/kf;->y:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {v0, v1, v2}, Lcom/estrongs/android/ui/dialog/cg;->setSingleButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    iget-object v0, p0, Lcom/estrongs/android/ui/dialog/kf;->c:Lcom/estrongs/android/ui/dialog/cg;

    invoke-virtual {v0}, Lcom/estrongs/android/ui/dialog/cg;->getSingleButton()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    iget-object v0, p0, Lcom/estrongs/android/ui/dialog/kf;->w:Landroid/os/Handler;

    iget-object v1, p0, Lcom/estrongs/android/ui/dialog/kf;->v:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/estrongs/android/ui/dialog/kf;->a(Landroid/os/Handler;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    iget v0, p0, Lcom/estrongs/android/ui/dialog/kf;->m:I

    if-ne v0, v5, :cond_5

    iget-object v0, p0, Lcom/estrongs/android/ui/dialog/kf;->d:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v2}, Landroid/widget/ProgressBar;->setVisibility(I)V

    iget-object v0, p0, Lcom/estrongs/android/ui/dialog/kf;->g:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/estrongs/android/ui/dialog/kf;->e:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v2}, Landroid/widget/ProgressBar;->setVisibility(I)V

    iget v0, p0, Lcom/estrongs/android/ui/dialog/kf;->n:I

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/estrongs/android/ui/dialog/kf;->i:Landroid/widget/TextView;

    const v1, 0x7f0b0128

    invoke-direct {p0, v1}, Lcom/estrongs/android/ui/dialog/kf;->b(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_3
    iget v0, p0, Lcom/estrongs/android/ui/dialog/kf;->n:I

    if-ne v0, v1, :cond_4

    iget-object v0, p0, Lcom/estrongs/android/ui/dialog/kf;->i:Landroid/widget/TextView;

    const v1, 0x7f0b0129

    invoke-direct {p0, v1}, Lcom/estrongs/android/ui/dialog/kf;->b(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/estrongs/android/ui/dialog/kf;->c:Lcom/estrongs/android/ui/dialog/cg;

    const v1, 0x7f0b0119

    invoke-direct {p0, v1}, Lcom/estrongs/android/ui/dialog/kf;->b(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/estrongs/android/ui/dialog/kf;->x:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {v0, v1, v2}, Lcom/estrongs/android/ui/dialog/cg;->setConfirmButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/widget/Button;

    iget-object v0, p0, Lcom/estrongs/android/ui/dialog/kf;->c:Lcom/estrongs/android/ui/dialog/cg;

    invoke-direct {p0, v3}, Lcom/estrongs/android/ui/dialog/kf;->b(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/estrongs/android/ui/dialog/kf;->y:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {v0, v1, v2}, Lcom/estrongs/android/ui/dialog/cg;->setCancelButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/widget/Button;

    iget-object v0, p0, Lcom/estrongs/android/ui/dialog/kf;->c:Lcom/estrongs/android/ui/dialog/cg;

    invoke-virtual {v0}, Lcom/estrongs/android/ui/dialog/cg;->getConfirmButton()Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Button;->requestFocus()Z

    goto/16 :goto_0

    :cond_4
    iget v0, p0, Lcom/estrongs/android/ui/dialog/kf;->n:I

    if-ne v0, v5, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/ui/dialog/kf;->i:Landroid/widget/TextView;

    const v1, 0x7f0b012a

    invoke-direct {p0, v1}, Lcom/estrongs/android/ui/dialog/kf;->b(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    :cond_5
    iget v0, p0, Lcom/estrongs/android/ui/dialog/kf;->m:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_6

    iget-object v0, p0, Lcom/estrongs/android/ui/dialog/kf;->i:Landroid/widget/TextView;

    const v1, 0x7f0b0082

    invoke-direct {p0, v1}, Lcom/estrongs/android/ui/dialog/kf;->b(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/estrongs/android/ui/dialog/kf;->g:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/estrongs/android/ui/dialog/kf;->e:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v4}, Landroid/widget/ProgressBar;->setVisibility(I)V

    iget-object v0, p0, Lcom/estrongs/android/ui/dialog/kf;->f:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/estrongs/android/ui/dialog/kf;->c:Lcom/estrongs/android/ui/dialog/cg;

    invoke-direct {p0, v3}, Lcom/estrongs/android/ui/dialog/kf;->b(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/estrongs/android/ui/dialog/kf;->y:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {v0, v1, v2}, Lcom/estrongs/android/ui/dialog/cg;->setSingleButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    iget-object v0, p0, Lcom/estrongs/android/ui/dialog/kf;->c:Lcom/estrongs/android/ui/dialog/cg;

    invoke-virtual {v0}, Lcom/estrongs/android/ui/dialog/cg;->getSingleButton()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    goto/16 :goto_0

    :cond_6
    iget v0, p0, Lcom/estrongs/android/ui/dialog/kf;->m:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    iget v0, p0, Lcom/estrongs/android/ui/dialog/kf;->o:I

    const/16 v1, 0x9

    if-ne v0, v1, :cond_7

    iget-object v0, p0, Lcom/estrongs/android/ui/dialog/kf;->i:Landroid/widget/TextView;

    const v1, 0x7f0b012b

    invoke-direct {p0, v1}, Lcom/estrongs/android/ui/dialog/kf;->b(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/estrongs/android/ui/dialog/kf;->c:Lcom/estrongs/android/ui/dialog/cg;

    const v1, 0x7f0b011c

    invoke-direct {p0, v1}, Lcom/estrongs/android/ui/dialog/kf;->b(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/estrongs/android/ui/dialog/kf;->x:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {v0, v1, v2}, Lcom/estrongs/android/ui/dialog/cg;->setConfirmButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/widget/Button;

    iget-object v0, p0, Lcom/estrongs/android/ui/dialog/kf;->c:Lcom/estrongs/android/ui/dialog/cg;

    invoke-direct {p0, v3}, Lcom/estrongs/android/ui/dialog/kf;->b(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/estrongs/android/ui/dialog/kf;->y:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {v0, v1, v2}, Lcom/estrongs/android/ui/dialog/cg;->setCancelButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/widget/Button;

    iget-object v0, p0, Lcom/estrongs/android/ui/dialog/kf;->c:Lcom/estrongs/android/ui/dialog/cg;

    invoke-virtual {v0}, Lcom/estrongs/android/ui/dialog/cg;->getConfirmButton()Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Button;->requestFocus()Z

    goto/16 :goto_0

    :cond_7
    iget-object v0, p0, Lcom/estrongs/android/ui/dialog/kf;->i:Landroid/widget/TextView;

    const v1, 0x7f0b011d

    invoke-direct {p0, v1}, Lcom/estrongs/android/ui/dialog/kf;->b(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0
.end method

.method static synthetic e(Lcom/estrongs/android/ui/dialog/kf;)Landroid/widget/ProgressBar;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/ui/dialog/kf;->e:Landroid/widget/ProgressBar;

    return-object v0
.end method

.method private e()Z
    .locals 4

    const/4 v1, 0x0

    :try_start_0
    invoke-static {}, Lcom/estrongs/android/pop/FexApplication;->a()Lcom/estrongs/android/pop/FexApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/estrongs/android/pop/FexApplication;->m()Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v2, Landroid/content/Intent;

    const-string v0, "android.intent.action.VIEW"

    invoke-direct {v2, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/estrongs/android/ui/dialog/kf;->t:Ljava/lang/String;

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    iget-object v0, p0, Lcom/estrongs/android/ui/dialog/kf;->b:Landroid/content/Context;

    instance-of v0, v0, Lcom/estrongs/android/pop/view/FileExplorerActivity;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/ui/dialog/kf;->b:Landroid/content/Context;

    check-cast v0, Lcom/estrongs/android/pop/view/FileExplorerActivity;

    invoke-virtual {v0, v2}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->a(Landroid/content/Intent;)V

    :goto_0
    invoke-virtual {p0}, Lcom/estrongs/android/ui/dialog/kf;->c()V

    move v0, v1

    :goto_1
    return v0

    :cond_0
    iget-object v0, p0, Lcom/estrongs/android/ui/dialog/kf;->b:Landroid/content/Context;

    invoke-virtual {v0, v2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    :catch_0
    move-exception v0

    iget-object v0, p0, Lcom/estrongs/android/ui/dialog/kf;->u:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    new-instance v1, Lcom/estrongs/android/util/y;

    invoke-direct {v1, v0}, Lcom/estrongs/android/util/y;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lcom/estrongs/android/ui/dialog/kf;->q:Lcom/estrongs/android/util/y;

    iget-object v1, p0, Lcom/estrongs/android/ui/dialog/kf;->q:Lcom/estrongs/android/util/y;

    iget-object v2, p0, Lcom/estrongs/android/ui/dialog/kf;->q:Lcom/estrongs/android/util/y;

    invoke-virtual {v1, v2}, Lcom/estrongs/android/util/y;->a(Ljava/lang/Object;)V

    iget-object v1, p0, Lcom/estrongs/android/ui/dialog/kf;->q:Lcom/estrongs/android/util/y;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/estrongs/android/pop/a;->d:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ".apk"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/estrongs/android/util/y;->a(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/estrongs/android/ui/dialog/kf;->q:Lcom/estrongs/android/util/y;

    new-instance v1, Lcom/estrongs/android/ui/dialog/kk;

    invoke-direct {v1, p0}, Lcom/estrongs/android/ui/dialog/kk;-><init>(Lcom/estrongs/android/ui/dialog/kf;)V

    invoke-virtual {v0, v1}, Lcom/estrongs/android/util/y;->a(Lcom/estrongs/android/util/ab;)V

    iget-object v0, p0, Lcom/estrongs/android/ui/dialog/kf;->q:Lcom/estrongs/android/util/y;

    invoke-virtual {v0}, Lcom/estrongs/android/util/y;->c()V

    const/4 v0, 0x1

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

    move v0, v1

    goto :goto_1
.end method

.method static synthetic f(Lcom/estrongs/android/ui/dialog/kf;)Landroid/widget/TextView;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/ui/dialog/kf;->j:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic g(Lcom/estrongs/android/ui/dialog/kf;)I
    .locals 1

    iget v0, p0, Lcom/estrongs/android/ui/dialog/kf;->m:I

    return v0
.end method

.method static synthetic h(Lcom/estrongs/android/ui/dialog/kf;)I
    .locals 1

    iget v0, p0, Lcom/estrongs/android/ui/dialog/kf;->n:I

    return v0
.end method

.method static synthetic i(Lcom/estrongs/android/ui/dialog/kf;)Z
    .locals 1

    invoke-direct {p0}, Lcom/estrongs/android/ui/dialog/kf;->e()Z

    move-result v0

    return v0
.end method

.method static synthetic j(Lcom/estrongs/android/ui/dialog/kf;)I
    .locals 1

    iget v0, p0, Lcom/estrongs/android/ui/dialog/kf;->o:I

    return v0
.end method

.method static synthetic k(Lcom/estrongs/android/ui/dialog/kf;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/estrongs/android/ui/dialog/kf;->r:Z

    return v0
.end method

.method static synthetic l(Lcom/estrongs/android/ui/dialog/kf;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/estrongs/android/ui/dialog/kf;->p:Z

    return v0
.end method

.method static synthetic m(Lcom/estrongs/android/ui/dialog/kf;)Landroid/widget/ImageView;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/ui/dialog/kf;->l:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic n(Lcom/estrongs/android/ui/dialog/kf;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/ui/dialog/kf;->w:Landroid/os/Handler;

    return-object v0
.end method


# virtual methods
.method public a()V
    .locals 2

    iget-object v0, p0, Lcom/estrongs/android/ui/dialog/kf;->a:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/ui/dialog/kf;->a:Landroid/view/View;

    const v1, 0x7f0a0202

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method public a(Landroid/content/DialogInterface$OnDismissListener;)V
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/ui/dialog/kf;->c:Lcom/estrongs/android/ui/dialog/cg;

    invoke-virtual {v0, p1}, Lcom/estrongs/android/ui/dialog/cg;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    return-void
.end method

.method public b()V
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/ui/dialog/kf;->c:Lcom/estrongs/android/ui/dialog/cg;

    invoke-virtual {v0}, Lcom/estrongs/android/ui/dialog/cg;->show()V

    return-void
.end method

.method public c()V
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/ui/dialog/kf;->c:Lcom/estrongs/android/ui/dialog/cg;

    invoke-virtual {v0}, Lcom/estrongs/android/ui/dialog/cg;->dismiss()V

    return-void
.end method
