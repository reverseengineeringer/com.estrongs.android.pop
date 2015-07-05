.class public Lcom/estrongs/android/pop/esclasses/ESScrollView;
.super Landroid/widget/ScrollView;


# instance fields
.field private a:Landroid/os/Handler;

.field b:Landroid/view/View$OnTouchListener;

.field private c:Landroid/view/View;

.field private d:Lcom/estrongs/android/pop/esclasses/o;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0, p1}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;)V

    new-instance v0, Lcom/estrongs/android/pop/esclasses/m;

    invoke-direct {v0, p0}, Lcom/estrongs/android/pop/esclasses/m;-><init>(Lcom/estrongs/android/pop/esclasses/ESScrollView;)V

    iput-object v0, p0, Lcom/estrongs/android/pop/esclasses/ESScrollView;->b:Landroid/view/View$OnTouchListener;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    invoke-direct {p0, p1, p2}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    new-instance v0, Lcom/estrongs/android/pop/esclasses/m;

    invoke-direct {v0, p0}, Lcom/estrongs/android/pop/esclasses/m;-><init>(Lcom/estrongs/android/pop/esclasses/ESScrollView;)V

    iput-object v0, p0, Lcom/estrongs/android/pop/esclasses/ESScrollView;->b:Landroid/view/View$OnTouchListener;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    new-instance v0, Lcom/estrongs/android/pop/esclasses/m;

    invoke-direct {v0, p0}, Lcom/estrongs/android/pop/esclasses/m;-><init>(Lcom/estrongs/android/pop/esclasses/ESScrollView;)V

    iput-object v0, p0, Lcom/estrongs/android/pop/esclasses/ESScrollView;->b:Landroid/view/View$OnTouchListener;

    return-void
.end method

.method static synthetic a(Lcom/estrongs/android/pop/esclasses/ESScrollView;)Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/pop/esclasses/ESScrollView;->c:Landroid/view/View;

    return-object v0
.end method

.method private a()V
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/pop/esclasses/ESScrollView;->b:Landroid/view/View$OnTouchListener;

    invoke-virtual {p0, v0}, Lcom/estrongs/android/pop/esclasses/ESScrollView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    new-instance v0, Lcom/estrongs/android/pop/esclasses/l;

    invoke-direct {v0, p0}, Lcom/estrongs/android/pop/esclasses/l;-><init>(Lcom/estrongs/android/pop/esclasses/ESScrollView;)V

    iput-object v0, p0, Lcom/estrongs/android/pop/esclasses/ESScrollView;->a:Landroid/os/Handler;

    return-void
.end method

.method public static a(Landroid/view/View;Landroid/view/View;)V
    .locals 2

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lcom/estrongs/android/pop/esclasses/n;

    invoke-direct {v1, p0, p1}, Lcom/estrongs/android/pop/esclasses/n;-><init>(Landroid/view/View;Landroid/view/View;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method static synthetic b(Lcom/estrongs/android/pop/esclasses/ESScrollView;)Lcom/estrongs/android/pop/esclasses/o;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/pop/esclasses/ESScrollView;->d:Lcom/estrongs/android/pop/esclasses/o;

    return-object v0
.end method

.method static synthetic c(Lcom/estrongs/android/pop/esclasses/ESScrollView;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/pop/esclasses/ESScrollView;->a:Landroid/os/Handler;

    return-object v0
.end method


# virtual methods
.method public a(Lcom/estrongs/android/pop/esclasses/o;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/pop/esclasses/ESScrollView;->d:Lcom/estrongs/android/pop/esclasses/o;

    return-void
.end method

.method public b()V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/estrongs/android/pop/esclasses/ESScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/estrongs/android/pop/esclasses/ESScrollView;->c:Landroid/view/View;

    iget-object v0, p0, Lcom/estrongs/android/pop/esclasses/ESScrollView;->c:Landroid/view/View;

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/estrongs/android/pop/esclasses/ESScrollView;->a()V

    :cond_0
    return-void
.end method
