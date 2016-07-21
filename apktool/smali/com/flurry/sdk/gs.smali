.class public Lcom/flurry/sdk/gs;
.super Lcom/flurry/sdk/gt;

# interfaces
.implements Landroid/content/DialogInterface$OnKeyListener;


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "SetJavaScriptEnabled"
    }
.end annotation


# instance fields
.field private A:Lcom/flurry/sdk/ci;

.field private B:Z

.field private C:Lcom/flurry/sdk/gt$a;

.field a:Ljava/lang/String;

.field b:Lcom/flurry/sdk/kb;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/flurry/sdk/kb",
            "<",
            "Lcom/flurry/sdk/gu;",
            ">;"
        }
    .end annotation
.end field

.field private c:Z

.field private final d:Ljava/lang/String;

.field private e:Lcom/flurry/sdk/gh;

.field private f:Z

.field private g:Lcom/flurry/sdk/he;

.field private h:I

.field private i:Z

.field private j:Landroid/webkit/WebViewClient;

.field private k:Landroid/webkit/WebChromeClient;

.field private l:Lcom/flurry/sdk/hj;

.field private m:Landroid/view/View;

.field private n:I

.field private o:Landroid/webkit/WebChromeClient$CustomViewCallback;

.field private p:Landroid/app/Dialog;

.field private q:Landroid/widget/FrameLayout;

.field private r:I

.field private s:Landroid/app/Dialog;

.field private t:Landroid/widget/FrameLayout;

.field private u:Z

.field private v:Z

.field private w:Z

.field private x:Z

.field private y:Z

.field private z:Landroid/app/AlertDialog;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/flurry/sdk/s;Lcom/flurry/sdk/gt$a;Z)V
    .locals 3

    const/4 v1, 0x0

    invoke-direct {p0, p1, p2, p3}, Lcom/flurry/sdk/gt;-><init>(Landroid/content/Context;Lcom/flurry/sdk/s;Lcom/flurry/sdk/gt$a;)V

    iput-boolean v1, p0, Lcom/flurry/sdk/gs;->c:Z

    const-class v0, Lcom/flurry/sdk/gs;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/flurry/sdk/gs;->d:Ljava/lang/String;

    iput-boolean v1, p0, Lcom/flurry/sdk/gs;->y:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/flurry/sdk/gs;->a:Ljava/lang/String;

    new-instance v0, Lcom/flurry/sdk/gs$1;

    invoke-direct {v0, p0}, Lcom/flurry/sdk/gs$1;-><init>(Lcom/flurry/sdk/gs;)V

    iput-object v0, p0, Lcom/flurry/sdk/gs;->b:Lcom/flurry/sdk/kb;

    new-instance v0, Lcom/flurry/sdk/gs$4;

    invoke-direct {v0, p0}, Lcom/flurry/sdk/gs$4;-><init>(Lcom/flurry/sdk/gs;)V

    iput-object v0, p0, Lcom/flurry/sdk/gs;->C:Lcom/flurry/sdk/gt$a;

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/flurry/sdk/gs;->setClickable(Z)V

    iput-boolean p4, p0, Lcom/flurry/sdk/gs;->c:Z

    invoke-virtual {p0}, Lcom/flurry/sdk/gs;->getContext()Landroid/content/Context;

    move-result-object v0

    instance-of v0, v0, Landroid/app/Activity;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/flurry/sdk/gs;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getRequestedOrientation()I

    move-result v0

    iput v0, p0, Lcom/flurry/sdk/gs;->h:I

    :cond_0
    invoke-virtual {p0}, Lcom/flurry/sdk/gs;->getAdUnit()Lcom/flurry/sdk/co;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/flurry/sdk/gs;->getAdUnit()Lcom/flurry/sdk/co;

    move-result-object v0

    iget-boolean v0, v0, Lcom/flurry/sdk/co;->r:Z

    iput-boolean v0, p0, Lcom/flurry/sdk/gs;->w:Z

    :goto_0
    return-void

    :cond_1
    const/4 v0, 0x3

    iget-object v1, p0, Lcom/flurry/sdk/gs;->d:Ljava/lang/String;

    const-string v2, "adunit is Null"

    invoke-static {v0, v1, v2}, Lcom/flurry/sdk/kg;->a(ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method static synthetic a(Lcom/flurry/sdk/gs;I)I
    .locals 0

    iput p1, p0, Lcom/flurry/sdk/gs;->n:I

    return p1
.end method

.method static synthetic a(Lcom/flurry/sdk/gs;Landroid/app/AlertDialog;)Landroid/app/AlertDialog;
    .locals 0

    iput-object p1, p0, Lcom/flurry/sdk/gs;->z:Landroid/app/AlertDialog;

    return-object p1
.end method

.method static synthetic a(Lcom/flurry/sdk/gs;Landroid/app/Dialog;)Landroid/app/Dialog;
    .locals 0

    iput-object p1, p0, Lcom/flurry/sdk/gs;->p:Landroid/app/Dialog;

    return-object p1
.end method

.method private a(Ljava/lang/String;)Landroid/net/Uri;
    .locals 6

    const/4 v0, 0x0

    const/4 v5, 0x3

    const/4 v1, 0x3

    :try_start_0
    iget-object v2, p0, Lcom/flurry/sdk/gs;->d:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Precaching: Getting video from cache: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/flurry/sdk/kg;->a(ILjava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/flurry/sdk/i;->a()Lcom/flurry/sdk/i;

    move-result-object v1

    invoke-virtual {v1}, Lcom/flurry/sdk/i;->l()Lcom/flurry/sdk/ab;

    move-result-object v1

    invoke-virtual {p0}, Lcom/flurry/sdk/gs;->getAdObject()Lcom/flurry/sdk/s;

    move-result-object v2

    invoke-virtual {v1, v2, p1}, Lcom/flurry/sdk/ab;->b(Lcom/flurry/sdk/s;Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    if-eqz v1, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "file://"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :cond_0
    :goto_0
    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/flurry/sdk/gs;->d:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Precaching: Error using cached file. Loading with url: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v5, v0, v1}, Lcom/flurry/sdk/kg;->a(ILjava/lang/String;Ljava/lang/String;)V

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    :cond_1
    return-object v0

    :catch_0
    move-exception v1

    iget-object v2, p0, Lcom/flurry/sdk/gs;->d:Ljava/lang/String;

    const-string v3, "Precaching: Error accessing cached file."

    invoke-static {v5, v2, v3, v1}, Lcom/flurry/sdk/kg;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method static synthetic a(Lcom/flurry/sdk/gs;Landroid/view/View;)Landroid/view/View;
    .locals 0

    iput-object p1, p0, Lcom/flurry/sdk/gs;->m:Landroid/view/View;

    return-object p1
.end method

.method static synthetic a(Lcom/flurry/sdk/gs;Landroid/webkit/WebChromeClient$CustomViewCallback;)Landroid/webkit/WebChromeClient$CustomViewCallback;
    .locals 0

    iput-object p1, p0, Lcom/flurry/sdk/gs;->o:Landroid/webkit/WebChromeClient$CustomViewCallback;

    return-object p1
.end method

.method static synthetic a(Lcom/flurry/sdk/gs;Landroid/widget/FrameLayout;)Landroid/widget/FrameLayout;
    .locals 0

    iput-object p1, p0, Lcom/flurry/sdk/gs;->q:Landroid/widget/FrameLayout;

    return-object p1
.end method

.method static synthetic a(Lcom/flurry/sdk/gs;Lcom/flurry/sdk/gh;)Lcom/flurry/sdk/gh;
    .locals 0

    iput-object p1, p0, Lcom/flurry/sdk/gs;->e:Lcom/flurry/sdk/gh;

    return-object p1
.end method

.method private a(II)V
    .locals 7

    const/4 v4, 0x3

    const/4 v6, 0x1

    const/4 v5, -0x1

    invoke-virtual {p0}, Lcom/flurry/sdk/gs;->getContext()Landroid/content/Context;

    move-result-object v0

    instance-of v0, v0, Landroid/app/Activity;

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/flurry/sdk/gs;->d:Ljava/lang/String;

    const-string v1, "no activity present"

    invoke-static {v4, v0, v1}, Lcom/flurry/sdk/kg;->a(ILjava/lang/String;Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p0}, Lcom/flurry/sdk/gs;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    iget-object v1, p0, Lcom/flurry/sdk/gs;->s:Landroid/app/Dialog;

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/flurry/sdk/gs;->d:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "expand("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v1, v2}, Lcom/flurry/sdk/kg;->a(ILjava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/flurry/sdk/i;->a()Lcom/flurry/sdk/i;

    move-result-object v1

    invoke-virtual {v1}, Lcom/flurry/sdk/i;->d()Lcom/flurry/sdk/q;

    move-result-object v1

    invoke-virtual {p0}, Lcom/flurry/sdk/gs;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/flurry/sdk/q;->b(Landroid/content/Context;)V

    invoke-static {}, Lcom/flurry/sdk/i;->a()Lcom/flurry/sdk/i;

    move-result-object v1

    invoke-virtual {v1}, Lcom/flurry/sdk/i;->e()Lcom/flurry/sdk/w;

    move-result-object v1

    invoke-virtual {p0}, Lcom/flurry/sdk/gs;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/flurry/sdk/w;->a(Landroid/content/Context;)V

    iget-object v1, p0, Lcom/flurry/sdk/gs;->g:Lcom/flurry/sdk/he;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/flurry/sdk/gs;->g:Lcom/flurry/sdk/he;

    invoke-virtual {p0, v1}, Lcom/flurry/sdk/gs;->indexOfChild(Landroid/view/View;)I

    move-result v1

    if-eq v5, v1, :cond_2

    iget-object v1, p0, Lcom/flurry/sdk/gs;->g:Lcom/flurry/sdk/he;

    invoke-virtual {p0, v1}, Lcom/flurry/sdk/gs;->removeView(Landroid/view/View;)V

    :cond_2
    invoke-virtual {v0}, Landroid/app/Activity;->getRequestedOrientation()I

    move-result v1

    iput v1, p0, Lcom/flurry/sdk/gs;->r:I

    iget-object v1, p0, Lcom/flurry/sdk/gs;->t:Landroid/widget/FrameLayout;

    if-nez v1, :cond_3

    new-instance v1, Landroid/widget/FrameLayout;

    invoke-direct {v1, v0}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/flurry/sdk/gs;->t:Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/flurry/sdk/gs;->t:Landroid/widget/FrameLayout;

    const/high16 v2, -0x1000000

    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->setBackgroundColor(I)V

    iget-object v1, p0, Lcom/flurry/sdk/gs;->g:Lcom/flurry/sdk/he;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/flurry/sdk/gs;->g:Lcom/flurry/sdk/he;

    invoke-virtual {v1}, Lcom/flurry/sdk/he;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    if-nez v1, :cond_3

    iget-object v1, p0, Lcom/flurry/sdk/gs;->t:Landroid/widget/FrameLayout;

    iget-object v2, p0, Lcom/flurry/sdk/gs;->g:Lcom/flurry/sdk/he;

    new-instance v3, Landroid/widget/FrameLayout$LayoutParams;

    const/16 v4, 0x11

    invoke-direct {v3, v5, v5, v4}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    invoke-virtual {v1, v2, v3}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :cond_3
    iget-object v1, p0, Lcom/flurry/sdk/gs;->s:Landroid/app/Dialog;

    if-nez v1, :cond_4

    new-instance v1, Landroid/app/Dialog;

    const v2, 0x103000a

    invoke-direct {v1, v0, v2}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    iput-object v1, p0, Lcom/flurry/sdk/gs;->s:Landroid/app/Dialog;

    iget-object v1, p0, Lcom/flurry/sdk/gs;->s:Landroid/app/Dialog;

    invoke-virtual {v1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-static {v1}, Lcom/flurry/sdk/fl;->a(Landroid/view/Window;)V

    iget-object v1, p0, Lcom/flurry/sdk/gs;->s:Landroid/app/Dialog;

    iget-object v2, p0, Lcom/flurry/sdk/gs;->t:Landroid/widget/FrameLayout;

    new-instance v3, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v3, v5, v5}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v2, v3}, Landroid/app/Dialog;->setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v1, p0, Lcom/flurry/sdk/gs;->s:Landroid/app/Dialog;

    new-instance v2, Lcom/flurry/sdk/gs$6;

    invoke-direct {v2, p0}, Lcom/flurry/sdk/gs$6;-><init>(Lcom/flurry/sdk/gs;)V

    invoke-virtual {v1, v2}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    iget-object v1, p0, Lcom/flurry/sdk/gs;->s:Landroid/app/Dialog;

    invoke-virtual {v1, v6}, Landroid/app/Dialog;->setCancelable(Z)V

    iget-object v1, p0, Lcom/flurry/sdk/gs;->s:Landroid/app/Dialog;

    invoke-virtual {v1}, Landroid/app/Dialog;->show()V

    :cond_4
    iget-boolean v1, p0, Lcom/flurry/sdk/gs;->x:Z

    if-eqz v1, :cond_6

    invoke-direct {p0}, Lcom/flurry/sdk/gs;->h()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-static {v0, v6}, Lcom/flurry/sdk/ez;->a(Landroid/app/Activity;I)V

    goto/16 :goto_0

    :cond_5
    invoke-virtual {p0}, Lcom/flurry/sdk/gs;->getAdObject()Lcom/flurry/sdk/s;

    move-result-object v1

    instance-of v1, v1, Lcom/flurry/sdk/t;

    if-eqz v1, :cond_0

    invoke-static {v0}, Lcom/flurry/sdk/ez;->a(Landroid/app/Activity;)V

    goto/16 :goto_0

    :cond_6
    invoke-static {}, Lcom/flurry/sdk/ez;->a()I

    move-result v1

    invoke-static {v0, v1, v6}, Lcom/flurry/sdk/ez;->a(Landroid/app/Activity;IZ)Z

    goto/16 :goto_0
.end method

.method private a(Lcom/flurry/sdk/a;)V
    .locals 8

    const/4 v4, 0x1

    const/4 v2, 0x0

    invoke-static {}, Lcom/flurry/sdk/lr;->f()I

    move-result v1

    invoke-static {}, Lcom/flurry/sdk/lr;->g()I

    move-result v5

    const/4 v0, 0x3

    iget-object v3, p0, Lcom/flurry/sdk/gs;->d:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "expand to width = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " height = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v0, v3, v6}, Lcom/flurry/sdk/kg;->a(ILjava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/flurry/sdk/a;->c()Lcom/flurry/sdk/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/flurry/sdk/b;->b()Lcom/flurry/sdk/s;

    move-result-object v3

    invoke-virtual {p1}, Lcom/flurry/sdk/a;->c()Lcom/flurry/sdk/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/flurry/sdk/b;->c()Lcom/flurry/sdk/au;

    move-result-object v6

    instance-of v0, v3, Lcom/flurry/sdk/t;

    if-eqz v0, :cond_0

    move-object v0, v3

    check-cast v0, Lcom/flurry/sdk/t;

    invoke-interface {v0}, Lcom/flurry/sdk/t;->y()Landroid/widget/RelativeLayout;

    move-result-object v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/flurry/sdk/bb;->h:Lcom/flurry/sdk/bb;

    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v7

    invoke-virtual {p0, v0, v7, v6, v2}, Lcom/flurry/sdk/gs;->a(Lcom/flurry/sdk/bb;Ljava/util/Map;Lcom/flurry/sdk/au;I)V

    invoke-direct {p0, v1, v5}, Lcom/flurry/sdk/gs;->a(II)V

    :cond_0
    invoke-virtual {p1}, Lcom/flurry/sdk/a;->c()Lcom/flurry/sdk/b;

    move-result-object v0

    iget-object v0, v0, Lcom/flurry/sdk/b;->b:Ljava/util/Map;

    const-string v1, "url"

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lcom/flurry/sdk/a;->c()Lcom/flurry/sdk/b;

    move-result-object v0

    iget-object v0, v0, Lcom/flurry/sdk/b;->b:Ljava/util/Map;

    const-string v1, "url"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/flurry/sdk/gs;->a:Ljava/lang/String;

    invoke-virtual {v6, v4}, Lcom/flurry/sdk/au;->a(Z)V

    invoke-virtual {p0}, Lcom/flurry/sdk/gs;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/flurry/sdk/gs;->a:Ljava/lang/String;

    move v5, v2

    invoke-static/range {v0 .. v5}, Lcom/flurry/sdk/fi;->a(Landroid/content/Context;Ljava/lang/String;ZLcom/flurry/sdk/s;ZZ)Z

    :cond_1
    return-void
.end method

.method static synthetic a(Lcom/flurry/sdk/gs;)V
    .locals 0

    invoke-direct {p0}, Lcom/flurry/sdk/gs;->f()V

    return-void
.end method

.method static synthetic a(Lcom/flurry/sdk/gs;Lcom/flurry/sdk/a;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/flurry/sdk/gs;->b(Lcom/flurry/sdk/a;)V

    return-void
.end method

.method static synthetic a(Lcom/flurry/sdk/gs;Lcom/flurry/sdk/gu;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/flurry/sdk/gs;->a(Lcom/flurry/sdk/gu;)V

    return-void
.end method

.method static synthetic a(Lcom/flurry/sdk/gs;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/flurry/sdk/gs;->c(Ljava/lang/String;)V

    return-void
.end method

.method private a(Lcom/flurry/sdk/gu;)V
    .locals 7

    const/4 v2, 0x6

    iget-object v0, p0, Lcom/flurry/sdk/gs;->d:Ljava/lang/String;

    const-string v1, "show Video dialog."

    invoke-static {v2, v0, v1}, Lcom/flurry/sdk/kg;->a(ILjava/lang/String;Ljava/lang/String;)V

    iget-object v3, p1, Lcom/flurry/sdk/gu;->b:Lcom/flurry/sdk/a;

    iget v4, p1, Lcom/flurry/sdk/gu;->c:I

    iget-object v0, p0, Lcom/flurry/sdk/gs;->z:Landroid/app/AlertDialog;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/flurry/sdk/gs;->d:Ljava/lang/String;

    const-string v1, "Already showing a dialog."

    invoke-static {v2, v0, v1}, Lcom/flurry/sdk/kg;->a(ILjava/lang/String;Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p0}, Lcom/flurry/sdk/gs;->isViewAttachedToActivity()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/flurry/sdk/gs;->d:Ljava/lang/String;

    const-string v1, "View not attached to any window."

    invoke-static {v2, v0, v1}, Lcom/flurry/sdk/kg;->a(ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    new-instance v5, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/flurry/sdk/gs;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {v5, v0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const-string v0, "message"

    invoke-virtual {v3, v0}, Lcom/flurry/sdk/a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v0, "confirmDisplay"

    invoke-virtual {v3, v0}, Lcom/flurry/sdk/a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v0, "cancelDisplay"

    invoke-virtual {v3, v0}, Lcom/flurry/sdk/a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_3

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_3

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_4

    :cond_3
    const-string v2, "Are you sure?"

    const-string v1, "Cancel"

    const-string v0, "OK"

    :cond_4
    invoke-virtual {v5, v2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    const/4 v2, 0x0

    invoke-virtual {v5, v2}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    new-instance v2, Lcom/flurry/sdk/gs$2;

    invoke-direct {v2, p0, v3, v4}, Lcom/flurry/sdk/gs$2;-><init>(Lcom/flurry/sdk/gs;Lcom/flurry/sdk/a;I)V

    invoke-virtual {v5, v0, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    new-instance v0, Lcom/flurry/sdk/gs$3;

    invoke-direct {v0, p0, v3, v4}, Lcom/flurry/sdk/gs$3;-><init>(Lcom/flurry/sdk/gs;Lcom/flurry/sdk/a;I)V

    invoke-virtual {v5, v1, v0}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    iget-object v0, p0, Lcom/flurry/sdk/gs;->e:Lcom/flurry/sdk/gh;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/flurry/sdk/gs;->isViewAttachedToActivity()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {v5}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/flurry/sdk/gs;->z:Landroid/app/AlertDialog;

    iget-object v0, p0, Lcom/flurry/sdk/gs;->z:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    iget-object v0, p0, Lcom/flurry/sdk/gs;->e:Lcom/flurry/sdk/gh;

    invoke-virtual {v0}, Lcom/flurry/sdk/gh;->u()V

    goto :goto_0
.end method

.method private a(Ljava/lang/String;Lcom/flurry/sdk/gj;)V
    .locals 4

    const/4 v3, -0x1

    if-nez p1, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/flurry/sdk/gs;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/flurry/sdk/gs;->e:Lcom/flurry/sdk/gh;

    if-nez v1, :cond_1

    invoke-virtual {p0}, Lcom/flurry/sdk/gs;->getAdObject()Lcom/flurry/sdk/s;

    move-result-object v1

    iget-object v2, p0, Lcom/flurry/sdk/gs;->C:Lcom/flurry/sdk/gt$a;

    invoke-static {v0, p2, v1, v2}, Lcom/flurry/sdk/gi;->a(Landroid/content/Context;Lcom/flurry/sdk/gj;Lcom/flurry/sdk/s;Lcom/flurry/sdk/gt$a;)Lcom/flurry/sdk/gh;

    move-result-object v0

    iput-object v0, p0, Lcom/flurry/sdk/gs;->e:Lcom/flurry/sdk/gh;

    iget-object v0, p0, Lcom/flurry/sdk/gs;->e:Lcom/flurry/sdk/gh;

    invoke-direct {p0, p1}, Lcom/flurry/sdk/gs;->a(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/flurry/sdk/gh;->setVideoUri(Landroid/net/Uri;)V

    iget-object v0, p0, Lcom/flurry/sdk/gs;->e:Lcom/flurry/sdk/gh;

    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v1, v3, v3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Lcom/flurry/sdk/gh;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcom/flurry/sdk/gs;->e:Lcom/flurry/sdk/gh;

    invoke-virtual {v0}, Lcom/flurry/sdk/gh;->initLayout()V

    :cond_1
    iget-object v0, p0, Lcom/flurry/sdk/gs;->e:Lcom/flurry/sdk/gh;

    invoke-virtual {p0, v0}, Lcom/flurry/sdk/gs;->addView(Landroid/view/View;)V

    goto :goto_0
.end method

.method private declared-synchronized a()Z
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/flurry/sdk/gs;->i:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method static synthetic a(Lcom/flurry/sdk/gs;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/flurry/sdk/gs;->v:Z

    return p1
.end method

.method static synthetic b(Lcom/flurry/sdk/gs;)Landroid/app/AlertDialog;
    .locals 1

    iget-object v0, p0, Lcom/flurry/sdk/gs;->z:Landroid/app/AlertDialog;

    return-object v0
.end method

.method private declared-synchronized b()V
    .locals 1

    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lcom/flurry/sdk/gs;->a()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/flurry/sdk/gs;->d()V

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/flurry/sdk/gs;->setFlurryJsEnvInitialized(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private b(II)V
    .locals 6

    const/4 v5, 0x3

    const/4 v4, 0x0

    invoke-virtual {p0}, Lcom/flurry/sdk/gs;->getContext()Landroid/content/Context;

    move-result-object v0

    instance-of v0, v0, Landroid/app/Activity;

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/flurry/sdk/gs;->d:Ljava/lang/String;

    const-string v1, "no activity present"

    invoke-static {v5, v0, v1}, Lcom/flurry/sdk/kg;->a(ILjava/lang/String;Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p0}, Lcom/flurry/sdk/gs;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    invoke-static {}, Lcom/flurry/sdk/i;->a()Lcom/flurry/sdk/i;

    move-result-object v1

    invoke-virtual {v1}, Lcom/flurry/sdk/i;->d()Lcom/flurry/sdk/q;

    move-result-object v1

    invoke-virtual {p0}, Lcom/flurry/sdk/gs;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/flurry/sdk/q;->c(Landroid/content/Context;)V

    invoke-static {}, Lcom/flurry/sdk/i;->a()Lcom/flurry/sdk/i;

    move-result-object v1

    invoke-virtual {v1}, Lcom/flurry/sdk/i;->e()Lcom/flurry/sdk/w;

    move-result-object v1

    invoke-virtual {p0}, Lcom/flurry/sdk/gs;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/flurry/sdk/w;->b(Landroid/content/Context;)V

    iget-object v1, p0, Lcom/flurry/sdk/gs;->s:Landroid/app/Dialog;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/flurry/sdk/gs;->d:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "collapse("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v5, v1, v2}, Lcom/flurry/sdk/kg;->a(ILjava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/flurry/sdk/gs;->s:Landroid/app/Dialog;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/flurry/sdk/gs;->s:Landroid/app/Dialog;

    invoke-virtual {v1}, Landroid/app/Dialog;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/flurry/sdk/gs;->s:Landroid/app/Dialog;

    invoke-virtual {v1}, Landroid/app/Dialog;->hide()V

    iget-object v1, p0, Lcom/flurry/sdk/gs;->s:Landroid/app/Dialog;

    invoke-virtual {v1, v4}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    iget-object v1, p0, Lcom/flurry/sdk/gs;->s:Landroid/app/Dialog;

    invoke-virtual {v1}, Landroid/app/Dialog;->dismiss()V

    :cond_2
    iput-object v4, p0, Lcom/flurry/sdk/gs;->s:Landroid/app/Dialog;

    iget v1, p0, Lcom/flurry/sdk/gs;->r:I

    invoke-static {v0, v1}, Lcom/flurry/sdk/ez;->a(Landroid/app/Activity;I)V

    iget-object v0, p0, Lcom/flurry/sdk/gs;->t:Landroid/widget/FrameLayout;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/flurry/sdk/gs;->g:Lcom/flurry/sdk/he;

    if-eqz v0, :cond_3

    const/4 v0, -0x1

    iget-object v1, p0, Lcom/flurry/sdk/gs;->t:Landroid/widget/FrameLayout;

    iget-object v2, p0, Lcom/flurry/sdk/gs;->g:Lcom/flurry/sdk/he;

    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->indexOfChild(Landroid/view/View;)I

    move-result v1

    if-eq v0, v1, :cond_3

    iget-object v0, p0, Lcom/flurry/sdk/gs;->t:Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/flurry/sdk/gs;->g:Lcom/flurry/sdk/he;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    :cond_3
    iput-object v4, p0, Lcom/flurry/sdk/gs;->t:Landroid/widget/FrameLayout;

    :cond_4
    iget-object v0, p0, Lcom/flurry/sdk/gs;->g:Lcom/flurry/sdk/he;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/flurry/sdk/gs;->g:Lcom/flurry/sdk/he;

    invoke-virtual {v0}, Lcom/flurry/sdk/he;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/flurry/sdk/gs;->g:Lcom/flurry/sdk/he;

    invoke-virtual {p0, v0}, Lcom/flurry/sdk/gs;->addView(Landroid/view/View;)V

    goto/16 :goto_0
.end method

.method private b(Lcom/flurry/sdk/a;)V
    .locals 4

    invoke-direct {p0}, Lcom/flurry/sdk/gs;->getCurrentAdFrame()Lcom/flurry/sdk/cj;

    move-result-object v0

    iget-object v0, v0, Lcom/flurry/sdk/cj;->d:Lcom/flurry/sdk/cn;

    iget v0, v0, Lcom/flurry/sdk/cn;->a:I

    invoke-direct {p0}, Lcom/flurry/sdk/gs;->getCurrentAdFrame()Lcom/flurry/sdk/cj;

    move-result-object v1

    iget-object v1, v1, Lcom/flurry/sdk/cj;->d:Lcom/flurry/sdk/cn;

    iget v1, v1, Lcom/flurry/sdk/cn;->b:I

    invoke-static {v0}, Lcom/flurry/sdk/lr;->b(I)I

    move-result v2

    invoke-static {v1}, Lcom/flurry/sdk/lr;->b(I)I

    move-result v1

    iget-object v0, p0, Lcom/flurry/sdk/gs;->a:Ljava/lang/String;

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/flurry/sdk/gs;->a:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/flurry/sdk/gs;->initLayout()V

    :cond_0
    invoke-virtual {p1}, Lcom/flurry/sdk/a;->c()Lcom/flurry/sdk/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/flurry/sdk/b;->b()Lcom/flurry/sdk/s;

    move-result-object v0

    instance-of v3, v0, Lcom/flurry/sdk/t;

    if-eqz v3, :cond_1

    check-cast v0, Lcom/flurry/sdk/t;

    invoke-interface {v0}, Lcom/flurry/sdk/t;->y()Landroid/widget/RelativeLayout;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-direct {p0, v2, v1}, Lcom/flurry/sdk/gs;->b(II)V

    :cond_1
    return-void
.end method

.method static synthetic b(Lcom/flurry/sdk/gs;Lcom/flurry/sdk/a;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/flurry/sdk/gs;->a(Lcom/flurry/sdk/a;)V

    return-void
.end method

.method private b(Ljava/lang/String;)V
    .locals 2

    new-instance v0, Lcom/flurry/sdk/kn;

    invoke-direct {v0}, Lcom/flurry/sdk/kn;-><init>()V

    invoke-virtual {v0, p1}, Lcom/flurry/sdk/kn;->a(Ljava/lang/String;)V

    const/16 v1, 0x2710

    invoke-virtual {v0, v1}, Lcom/flurry/sdk/kn;->d(I)V

    new-instance v1, Lcom/flurry/sdk/lc;

    invoke-direct {v1}, Lcom/flurry/sdk/lc;-><init>()V

    invoke-virtual {v0, v1}, Lcom/flurry/sdk/kn;->b(Lcom/flurry/sdk/lb;)V

    new-instance v1, Lcom/flurry/sdk/gs$5;

    invoke-direct {v1, p0, p1}, Lcom/flurry/sdk/gs$5;-><init>(Lcom/flurry/sdk/gs;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/flurry/sdk/kn;->a(Lcom/flurry/sdk/kn$a;)V

    invoke-static {}, Lcom/flurry/sdk/jq;->a()Lcom/flurry/sdk/jq;

    move-result-object v1

    invoke-virtual {v1, p0, v0}, Lcom/flurry/sdk/jq;->a(Ljava/lang/Object;Lcom/flurry/sdk/lz;)V

    return-void
.end method

.method static synthetic b(Lcom/flurry/sdk/gs;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/flurry/sdk/gs;->u:Z

    return p1
.end method

.method static synthetic c(Lcom/flurry/sdk/gs;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/flurry/sdk/gs;->d:Ljava/lang/String;

    return-object v0
.end method

.method private declared-synchronized c()V
    .locals 1

    monitor-enter p0

    const/4 v0, 0x0

    :try_start_0
    invoke-direct {p0, v0}, Lcom/flurry/sdk/gs;->setFlurryJsEnvInitialized(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private c(Ljava/lang/String;)V
    .locals 4

    iget-object v0, p0, Lcom/flurry/sdk/gs;->g:Lcom/flurry/sdk/he;

    if-eqz v0, :cond_0

    const/4 v0, 0x3

    iget-object v1, p0, Lcom/flurry/sdk/gs;->d:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Callcomplete "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/flurry/sdk/kg;->a(ILjava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/flurry/sdk/gs;->g:Lcom/flurry/sdk/he;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "javascript:flurryadapter.callComplete(\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\');"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/flurry/sdk/he;->loadUrl(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method static synthetic c(Lcom/flurry/sdk/gs;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/flurry/sdk/gs;->x:Z

    return p1
.end method

.method static synthetic d(Lcom/flurry/sdk/gs;)Lcom/flurry/sdk/gh;
    .locals 1

    iget-object v0, p0, Lcom/flurry/sdk/gs;->e:Lcom/flurry/sdk/gh;

    return-object v0
.end method

.method private d()V
    .locals 3

    const/4 v0, 0x3

    iget-object v1, p0, Lcom/flurry/sdk/gs;->d:Ljava/lang/String;

    const-string v2, "initializeFlurryJsEnv"

    invoke-static {v0, v1, v2}, Lcom/flurry/sdk/kg;->a(ILjava/lang/String;Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "javascript:(function() {"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "var Hogan={};(function(Hogan,useArrayBuffer){Hogan.Template=function(renderFunc,text,compiler,options){this.r=renderFunc||this.r;this.c=compiler;this.options=options;this.text=text||\"\";this.buf=useArrayBuffer?[]:\"\"};Hogan.Template.prototype={r:function(context,partials,indent){return\"\"},v:hoganEscape,t:coerceToString,render:function render(context,partials,indent){return this.ri([context],partials||{},indent)},ri:function(context,partials,indent){return this.r(context,partials,indent)},rp:function(name,context,partials,indent){var partial=partials[name];if(!partial){return\"\"}if(this.c&&typeof partial==\"string\"){partial=this.c.compile(partial,this.options)}return partial.ri(context,partials,indent)},rs:function(context,partials,section){var tail=context[context.length-1];if(!isArray(tail)){section(context,partials,this);return}for(var i=0;i<tail.length;i++){context.push(tail[i]);section(context,partials,this);context.pop()}},s:function(val,ctx,partials,inverted,start,end,tags){var pass;if(isArray(val)&&val.length===0){return false}if(typeof val==\"function\"){val=this.ls(val,ctx,partials,inverted,start,end,tags)}pass=(val===\"\")||!!val;if(!inverted&&pass&&ctx){ctx.push((typeof val==\"object\")?val:ctx[ctx.length-1])}return pass},d:function(key,ctx,partials,returnFound){var names=key.split(\".\"),val=this.f(names[0],ctx,partials,returnFound),cx=null;if(key===\".\"&&isArray(ctx[ctx.length-2])){return ctx[ctx.length-1]}for(var i=1;i<names.length;i++){if(val&&typeof val==\"object\"&&names[i] in val){cx=val;val=val[names[i]]}else{val=\"\"}}if(returnFound&&!val){return false}if(!returnFound&&typeof val==\"function\"){ctx.push(cx);val=this.lv(val,ctx,partials);ctx.pop()}return val},f:function(key,ctx,partials,returnFound){var val=false,v=null,found=false;for(var i=ctx.length-1;i>=0;i--){v=ctx[i];if(v&&typeof v==\"object\"&&key in v){val=v[key];found=true;break}}if(!found){return(returnFound)?false:\"\"}if(!returnFound&&typeof val==\"function\"){val=this.lv(val,ctx,partials)}return val},ho:function(val,cx,partials,text,tags){var compiler=this.c;var options=this.options;options.delimiters=tags;var text=val.call(cx,text);text=(text==null)?String(text):text.toString();this.b(compiler.compile(text,options).render(cx,partials));return false},b:(useArrayBuffer)?function(s){this.buf.push(s)}:function(s){this.buf+=s},fl:(useArrayBuffer)?function(){var r=this.buf.join(\"\");this.buf=[];return r}:function(){var r=this.buf;this.buf=\"\";return r},ls:function(val,ctx,partials,inverted,start,end,tags){var cx=ctx[ctx.length-1],t=null;if(!inverted&&this.c&&val.length>0){return this.ho(val,cx,partials,this.text.substring(start,end),tags)}t=val.call(cx);if(typeof t==\"function\"){if(inverted){return true}else{if(this.c){return this.ho(t,cx,partials,this.text.substring(start,end),tags)}}}return t},lv:function(val,ctx,partials){var cx=ctx[ctx.length-1];var result=val.call(cx);if(typeof result==\"function\"){result=coerceToString(result.call(cx));if(this.c&&~result.indexOf(\"{\\u007B\")){return this.c.compile(result,this.options).render(cx,partials)}}return coerceToString(result)}};var rAmp=/&/g,rLt=/</g,rGt=/>/g,rApos=/\\\'/g,rQuot=/\\\"/g,hChars=/[&<>\\\"\\\']/;function coerceToString(val){return String((val===null||val===undefined)?\"\":val)}function hoganEscape(str){str=coerceToString(str);return hChars.test(str)?str.replace(rAmp,\"&amp;\").replace(rLt,\"&lt;\").replace(rGt,\"&gt;\").replace(rApos,\"&#39;\").replace(rQuot,\"&quot;\"):str}var isArray=Array.isArray||function(a){return Object.prototype.toString.call(a)===\"[object Array]\"}})(typeof exports!==\"undefined\"?exports:Hogan);(function(Hogan){var rIsWhitespace=/\\S/,rQuot=/\\\"/g,rNewline=/\\n/g,rCr=/\\r/g,rSlash=/\\\\/g,tagTypes={\"#\":1,\"^\":2,\"/\":3,\"!\":4,\">\":5,\"<\":6,\"=\":7,_v:8,\"{\":9,\"&\":10};Hogan.scan=function scan(text,delimiters){var len=text.length,IN_TEXT=0,IN_TAG_TYPE=1,IN_TAG=2,state=IN_TEXT,tagType=null,tag=null,buf=\"\",tokens=[],seenTag=false,i=0,lineStart=0,otag=\"{{\",ctag=\"}}\";function addBuf(){if(buf.length>0){tokens.push(new String(buf));buf=\"\"}}function lineIsWhitespace(){var isAllWhitespace=true;for(var j=lineStart;j<tokens.length;j++){isAllWhitespace=(tokens[j].tag&&tagTypes[tokens[j].tag]<tagTypes._v)||(!tokens[j].tag&&tokens[j].match(rIsWhitespace)===null);if(!isAllWhitespace){return false}}return isAllWhitespace}function filterLine(haveSeenTag,noNewLine){addBuf();if(haveSeenTag&&lineIsWhitespace()){for(var j=lineStart,next;j<tokens.length;j++){if(!tokens[j].tag){if((next=tokens[j+1])&&next.tag==\">\"){next.indent=tokens[j].toString()}tokens.splice(j,1)}}}else{if(!noNewLine){tokens.push({tag:\"\\n\"})}}seenTag=false;lineStart=tokens.length}function changeDelimiters(text,index){var close=\"=\"+ctag,closeIndex=text.indexOf(close,index),delimiters=trim(text.substring(text.indexOf(\"=\",index)+1,closeIndex)).split(\" \");otag=delimiters[0];ctag=delimiters[1];return closeIndex+close.length-1}if(delimiters){delimiters=delimiters.split(\" \");otag=delimiters[0];ctag=delimiters[1]}for(i=0;i<len;i++){if(state==IN_TEXT){if(tagChange(otag,text,i)){--i;addBuf();state=IN_TAG_TYPE}else{if(text.charAt(i)==\"\\n\"){filterLine(seenTag)}else{buf+=text.charAt(i)}}}else{if(state==IN_TAG_TYPE){i+=otag.length-1;tag=tagTypes[text.charAt(i+1)];tagType=tag?text.charAt(i+1):\"_v\";if(tagType==\"=\"){i=changeDelimiters(text,i);state=IN_TEXT}else{if(tag){i++}state=IN_TAG}seenTag=i}else{if(tagChange(ctag,text,i)){tokens.push({tag:tagType,n:trim(buf),otag:otag,ctag:ctag,i:(tagType==\"/\")?seenTag-ctag.length:i+otag.length});buf=\"\";i+=ctag.length-1;state=IN_TEXT;if(tagType==\"{\"){if(ctag==\"}}\"){i++}else{cleanTripleStache(tokens[tokens.length-1])}}}else{buf+=text.charAt(i)}}}}filterLine(seenTag,true);return tokens};function cleanTripleStache(token){if(token.n.substr(token.n.length-1)===\"}\"){token.n=token.n.substring(0,token.n.length-1)}}function trim(s){if(s.trim){return s.trim()}return s.replace(/^\\s*|\\s*$/g,\"\")}function tagChange(tag,text,index){if(text.charAt(index)!=tag.charAt(0)){return false}for(var i=1,l=tag.length;i<l;i++){if(text.charAt(index+i)!=tag.charAt(i)){return false}}return true}function buildTree(tokens,kind,stack,customTags){var instructions=[],opener=null,token=null;while(tokens.length>0){token=tokens.shift();if(token.tag==\"#\"||token.tag==\"^\"||isOpener(token,customTags)){stack.push(token);token.nodes=buildTree(tokens,token.tag,stack,customTags);instructions.push(token)}else{if(token.tag==\"/\"){if(stack.length===0){throw new Error(\"Closing tag without opener: /\"+token.n)}opener=stack.pop();if(token.n!=opener.n&&!isCloser(token.n,opener.n,customTags)){throw new Error(\"Nesting error: \"+opener.n+\" vs. \"+token.n)}opener.end=token.i;return instructions}else{instructions.push(token)}}}if(stack.length>0){throw new Error(\"missing closing tag: \"+stack.pop().n)}return instructions}function isOpener(token,tags){for(var i=0,l=tags.length;i<l;i++){if(tags[i].o==token.n){token.tag=\"#\";return true}}}function isCloser(close,open,tags){for(var i=0,l=tags.length;i<l;i++){if(tags[i].c==close&&tags[i].o==open){return true}}}Hogan.generate=function(tree,text,options){var code=\'var _=this;_.b(i=i||\"\");\'+walk(tree)+\"return _.fl();\";if(options.asString){return\"function(c,p,i){\"+code+\";}\"}return new Hogan.Template(new Function(\"c\",\"p\",\"i\",code),text,Hogan,options)};function esc(s){return s.replace(rSlash,\"\\\\\\\\\").replace(rQuot,\'\\\\\"\').replace(rNewline,\"\\\\n\").replace(rCr,\"\\\\r\")}function chooseMethod(s){return(~s.indexOf(\".\"))?\"d\":\"f\"}function walk(tree){var code=\"\";for(var i=0,l=tree.length;i<l;i++){var tag=tree[i].tag;if(tag==\"#\"){code+=section(tree[i].nodes,tree[i].n,chooseMethod(tree[i].n),tree[i].i,tree[i].end,tree[i].otag+\" \"+tree[i].ctag)}else{if(tag==\"^\"){code+=invertedSection(tree[i].nodes,tree[i].n,chooseMethod(tree[i].n))}else{if(tag==\"<\"||tag==\">\"){code+=partial(tree[i])}else{if(tag==\"{\"||tag==\"&\"){code+=tripleStache(tree[i].n,chooseMethod(tree[i].n))}else{if(tag==\"\\n\"){code+=text(\'\"\\\\n\"\'+(tree.length-1==i?\"\":\" + i\"))}else{if(tag==\"_v\"){code+=variable(tree[i].n,chooseMethod(tree[i].n))}else{if(tag===undefined){code+=text(\'\"\'+esc(tree[i])+\'\"\')}}}}}}}}return code}function section(nodes,id,method,start,end,tags){return\"if(_.s(_.\"+method+\'(\"\'+esc(id)+\'\",c,p,1),c,p,0,\'+start+\",\"+end+\',\"\'+tags+\'\")){_.rs(c,p,function(c,p,_){\'+walk(nodes)+\"});c.pop();}\"}function invertedSection(nodes,id,method){return\"if(!_.s(_.\"+method+\'(\"\'+esc(id)+\'\",c,p,1),c,p,1,0,0,\"\")){\'+walk(nodes)+\"};\"}function partial(tok){return\'_.b(_.rp(\"\'+esc(tok.n)+\'\",c,p,\"\'+(tok.indent||\"\")+\'\"));\'}function tripleStache(id,method){return\"_.b(_.t(_.\"+method+\'(\"\'+esc(id)+\'\",c,p,0)));\'}function variable(id,method){return\"_.b(_.v(_.\"+method+\'(\"\'+esc(id)+\'\",c,p,0)));\'}function text(id){return\"_.b(\"+id+\");\"}Hogan.parse=function(tokens,text,options){options=options||{};return buildTree(tokens,\"\",[],options.sectionTags||[])},Hogan.cache={};Hogan.compile=function(text,options){options=options||{};var key=text+\"||\"+!!options.asString;var t=this.cache[key];if(t){return t}t=this.generate(this.parse(this.scan(text,options.delimiters),text,options),text,options);return this.cache[key]=t}})(typeof exports!==\"undefined\"?exports:Hogan);"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "var flurryBridgeCtor=function(w){var flurryadapter={};flurryadapter.flurryCallQueue=[];flurryadapter.flurryCallInProgress=false;flurryadapter.callComplete=function(cmd){if(cmd.length > 0){try{if(window.mraid){ mraid.flurryBridgeListenerEvent(cmd);}}catch(error){ }} if(this.flurryCallQueue.length==0){this.flurryCallInProgress=false;return}var adapterCall=this.flurryCallQueue.splice(0,1)[0];this.executeNativeCall(adapterCall);return\"OK\"};flurryadapter.executeCall=function(command){var adapterCall=\"flurry://flurrycall?event=\"+command;var value;for(var i=1;i<arguments.length;i+=2){value=arguments[i+1];if(value==null)continue;adapterCall+=\"&\"+arguments[i]+\"=\"+escape(value)}if(this.flurryCallInProgress)this.flurryCallQueue.push(adapterCall);else this.executeNativeCall(adapterCall)};flurryadapter.executeNativeCall=function(adapterCall){if(adapterCall.length==0)return;this.flurryCallInProgress=true;w.location=adapterCall};return flurryadapter};"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "window.Hogan=Hogan;window.flurryadapter=flurryBridgeCtor(window);"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "window.flurryAdapterAvailable=true;if(typeof window.FlurryAdapterReady === \'function\'){window.FlurryAdapterReady();}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "})();"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/flurry/sdk/gs;->g:Lcom/flurry/sdk/he;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/flurry/sdk/gs;->g:Lcom/flurry/sdk/he;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/flurry/sdk/he;->loadUrl(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method static synthetic e(Lcom/flurry/sdk/gs;)Lcom/flurry/sdk/he;
    .locals 1

    iget-object v0, p0, Lcom/flurry/sdk/gs;->g:Lcom/flurry/sdk/he;

    return-object v0
.end method

.method private e()V
    .locals 7

    const/4 v6, 0x3

    iget-object v0, p0, Lcom/flurry/sdk/gs;->d:Ljava/lang/String;

    const-string v1, "activateFlurryJsEnv"

    invoke-static {v6, v0, v1}, Lcom/flurry/sdk/kg;->a(ILjava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/flurry/sdk/gs;->getCurrentContent()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_1

    const-string v1, "{}"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/flurry/sdk/gs;->g:Lcom/flurry/sdk/he;

    invoke-virtual {v1}, Lcom/flurry/sdk/he;->getUrl()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/flurry/sdk/ma;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v1}, Lcom/flurry/sdk/ma;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    iget-object v3, p0, Lcom/flurry/sdk/gs;->d:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "content before {{mustached}} tags replacement = \'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v6, v3, v4}, Lcom/flurry/sdk/kg;->a(ILjava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v2, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/flurry/sdk/gs;->d:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "content after {{mustached}} tags replacement = \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v6, v1, v2}, Lcom/flurry/sdk/kg;->a(ILjava/lang/String;Ljava/lang/String;)V

    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "javascript:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "(function(){"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "if(!window.Hogan){var Hogan={};(function(Hogan,useArrayBuffer){Hogan.Template=function(renderFunc,text,compiler,options){this.r=renderFunc||this.r;this.c=compiler;this.options=options;this.text=text||\"\";this.buf=useArrayBuffer?[]:\"\"};Hogan.Template.prototype={r:function(context,partials,indent){return\"\"},v:hoganEscape,t:coerceToString,render:function render(context,partials,indent){return this.ri([context],partials||{},indent)},ri:function(context,partials,indent){return this.r(context,partials,indent)},rp:function(name,context,partials,indent){var partial=partials[name];if(!partial){return\"\"}if(this.c&&typeof partial==\"string\"){partial=this.c.compile(partial,this.options)}return partial.ri(context,partials,indent)},rs:function(context,partials,section){var tail=context[context.length-1];if(!isArray(tail)){section(context,partials,this);return}for(var i=0;i<tail.length;i++){context.push(tail[i]);section(context,partials,this);context.pop()}},s:function(val,ctx,partials,inverted,start,end,tags){var pass;if(isArray(val)&&val.length===0){return false}if(typeof val==\"function\"){val=this.ls(val,ctx,partials,inverted,start,end,tags)}pass=(val===\"\")||!!val;if(!inverted&&pass&&ctx){ctx.push((typeof val==\"object\")?val:ctx[ctx.length-1])}return pass},d:function(key,ctx,partials,returnFound){var names=key.split(\".\"),val=this.f(names[0],ctx,partials,returnFound),cx=null;if(key===\".\"&&isArray(ctx[ctx.length-2])){return ctx[ctx.length-1]}for(var i=1;i<names.length;i++){if(val&&typeof val==\"object\"&&names[i] in val){cx=val;val=val[names[i]]}else{val=\"\"}}if(returnFound&&!val){return false}if(!returnFound&&typeof val==\"function\"){ctx.push(cx);val=this.lv(val,ctx,partials);ctx.pop()}return val},f:function(key,ctx,partials,returnFound){var val=false,v=null,found=false;for(var i=ctx.length-1;i>=0;i--){v=ctx[i];if(v&&typeof v==\"object\"&&key in v){val=v[key];found=true;break}}if(!found){return(returnFound)?false:\"\"}if(!returnFound&&typeof val==\"function\"){val=this.lv(val,ctx,partials)}return val},ho:function(val,cx,partials,text,tags){var compiler=this.c;var options=this.options;options.delimiters=tags;var text=val.call(cx,text);text=(text==null)?String(text):text.toString();this.b(compiler.compile(text,options).render(cx,partials));return false},b:(useArrayBuffer)?function(s){this.buf.push(s)}:function(s){this.buf+=s},fl:(useArrayBuffer)?function(){var r=this.buf.join(\"\");this.buf=[];return r}:function(){var r=this.buf;this.buf=\"\";return r},ls:function(val,ctx,partials,inverted,start,end,tags){var cx=ctx[ctx.length-1],t=null;if(!inverted&&this.c&&val.length>0){return this.ho(val,cx,partials,this.text.substring(start,end),tags)}t=val.call(cx);if(typeof t==\"function\"){if(inverted){return true}else{if(this.c){return this.ho(t,cx,partials,this.text.substring(start,end),tags)}}}return t},lv:function(val,ctx,partials){var cx=ctx[ctx.length-1];var result=val.call(cx);if(typeof result==\"function\"){result=coerceToString(result.call(cx));if(this.c&&~result.indexOf(\"{\\u007B\")){return this.c.compile(result,this.options).render(cx,partials)}}return coerceToString(result)}};var rAmp=/&/g,rLt=/</g,rGt=/>/g,rApos=/\\\'/g,rQuot=/\\\"/g,hChars=/[&<>\\\"\\\']/;function coerceToString(val){return String((val===null||val===undefined)?\"\":val)}function hoganEscape(str){str=coerceToString(str);return hChars.test(str)?str.replace(rAmp,\"&amp;\").replace(rLt,\"&lt;\").replace(rGt,\"&gt;\").replace(rApos,\"&#39;\").replace(rQuot,\"&quot;\"):str}var isArray=Array.isArray||function(a){return Object.prototype.toString.call(a)===\"[object Array]\"}})(typeof exports!==\"undefined\"?exports:Hogan);(function(Hogan){var rIsWhitespace=/\\S/,rQuot=/\\\"/g,rNewline=/\\n/g,rCr=/\\r/g,rSlash=/\\\\/g,tagTypes={\"#\":1,\"^\":2,\"/\":3,\"!\":4,\">\":5,\"<\":6,\"=\":7,_v:8,\"{\":9,\"&\":10};Hogan.scan=function scan(text,delimiters){var len=text.length,IN_TEXT=0,IN_TAG_TYPE=1,IN_TAG=2,state=IN_TEXT,tagType=null,tag=null,buf=\"\",tokens=[],seenTag=false,i=0,lineStart=0,otag=\"{{\",ctag=\"}}\";function addBuf(){if(buf.length>0){tokens.push(new String(buf));buf=\"\"}}function lineIsWhitespace(){var isAllWhitespace=true;for(var j=lineStart;j<tokens.length;j++){isAllWhitespace=(tokens[j].tag&&tagTypes[tokens[j].tag]<tagTypes._v)||(!tokens[j].tag&&tokens[j].match(rIsWhitespace)===null);if(!isAllWhitespace){return false}}return isAllWhitespace}function filterLine(haveSeenTag,noNewLine){addBuf();if(haveSeenTag&&lineIsWhitespace()){for(var j=lineStart,next;j<tokens.length;j++){if(!tokens[j].tag){if((next=tokens[j+1])&&next.tag==\">\"){next.indent=tokens[j].toString()}tokens.splice(j,1)}}}else{if(!noNewLine){tokens.push({tag:\"\\n\"})}}seenTag=false;lineStart=tokens.length}function changeDelimiters(text,index){var close=\"=\"+ctag,closeIndex=text.indexOf(close,index),delimiters=trim(text.substring(text.indexOf(\"=\",index)+1,closeIndex)).split(\" \");otag=delimiters[0];ctag=delimiters[1];return closeIndex+close.length-1}if(delimiters){delimiters=delimiters.split(\" \");otag=delimiters[0];ctag=delimiters[1]}for(i=0;i<len;i++){if(state==IN_TEXT){if(tagChange(otag,text,i)){--i;addBuf();state=IN_TAG_TYPE}else{if(text.charAt(i)==\"\\n\"){filterLine(seenTag)}else{buf+=text.charAt(i)}}}else{if(state==IN_TAG_TYPE){i+=otag.length-1;tag=tagTypes[text.charAt(i+1)];tagType=tag?text.charAt(i+1):\"_v\";if(tagType==\"=\"){i=changeDelimiters(text,i);state=IN_TEXT}else{if(tag){i++}state=IN_TAG}seenTag=i}else{if(tagChange(ctag,text,i)){tokens.push({tag:tagType,n:trim(buf),otag:otag,ctag:ctag,i:(tagType==\"/\")?seenTag-ctag.length:i+otag.length});buf=\"\";i+=ctag.length-1;state=IN_TEXT;if(tagType==\"{\"){if(ctag==\"}}\"){i++}else{cleanTripleStache(tokens[tokens.length-1])}}}else{buf+=text.charAt(i)}}}}filterLine(seenTag,true);return tokens};function cleanTripleStache(token){if(token.n.substr(token.n.length-1)===\"}\"){token.n=token.n.substring(0,token.n.length-1)}}function trim(s){if(s.trim){return s.trim()}return s.replace(/^\\s*|\\s*$/g,\"\")}function tagChange(tag,text,index){if(text.charAt(index)!=tag.charAt(0)){return false}for(var i=1,l=tag.length;i<l;i++){if(text.charAt(index+i)!=tag.charAt(i)){return false}}return true}function buildTree(tokens,kind,stack,customTags){var instructions=[],opener=null,token=null;while(tokens.length>0){token=tokens.shift();if(token.tag==\"#\"||token.tag==\"^\"||isOpener(token,customTags)){stack.push(token);token.nodes=buildTree(tokens,token.tag,stack,customTags);instructions.push(token)}else{if(token.tag==\"/\"){if(stack.length===0){throw new Error(\"Closing tag without opener: /\"+token.n)}opener=stack.pop();if(token.n!=opener.n&&!isCloser(token.n,opener.n,customTags)){throw new Error(\"Nesting error: \"+opener.n+\" vs. \"+token.n)}opener.end=token.i;return instructions}else{instructions.push(token)}}}if(stack.length>0){throw new Error(\"missing closing tag: \"+stack.pop().n)}return instructions}function isOpener(token,tags){for(var i=0,l=tags.length;i<l;i++){if(tags[i].o==token.n){token.tag=\"#\";return true}}}function isCloser(close,open,tags){for(var i=0,l=tags.length;i<l;i++){if(tags[i].c==close&&tags[i].o==open){return true}}}Hogan.generate=function(tree,text,options){var code=\'var _=this;_.b(i=i||\"\");\'+walk(tree)+\"return _.fl();\";if(options.asString){return\"function(c,p,i){\"+code+\";}\"}return new Hogan.Template(new Function(\"c\",\"p\",\"i\",code),text,Hogan,options)};function esc(s){return s.replace(rSlash,\"\\\\\\\\\").replace(rQuot,\'\\\\\"\').replace(rNewline,\"\\\\n\").replace(rCr,\"\\\\r\")}function chooseMethod(s){return(~s.indexOf(\".\"))?\"d\":\"f\"}function walk(tree){var code=\"\";for(var i=0,l=tree.length;i<l;i++){var tag=tree[i].tag;if(tag==\"#\"){code+=section(tree[i].nodes,tree[i].n,chooseMethod(tree[i].n),tree[i].i,tree[i].end,tree[i].otag+\" \"+tree[i].ctag)}else{if(tag==\"^\"){code+=invertedSection(tree[i].nodes,tree[i].n,chooseMethod(tree[i].n))}else{if(tag==\"<\"||tag==\">\"){code+=partial(tree[i])}else{if(tag==\"{\"||tag==\"&\"){code+=tripleStache(tree[i].n,chooseMethod(tree[i].n))}else{if(tag==\"\\n\"){code+=text(\'\"\\\\n\"\'+(tree.length-1==i?\"\":\" + i\"))}else{if(tag==\"_v\"){code+=variable(tree[i].n,chooseMethod(tree[i].n))}else{if(tag===undefined){code+=text(\'\"\'+esc(tree[i])+\'\"\')}}}}}}}}return code}function section(nodes,id,method,start,end,tags){return\"if(_.s(_.\"+method+\'(\"\'+esc(id)+\'\",c,p,1),c,p,0,\'+start+\",\"+end+\',\"\'+tags+\'\")){_.rs(c,p,function(c,p,_){\'+walk(nodes)+\"});c.pop();}\"}function invertedSection(nodes,id,method){return\"if(!_.s(_.\"+method+\'(\"\'+esc(id)+\'\",c,p,1),c,p,1,0,0,\"\")){\'+walk(nodes)+\"};\"}function partial(tok){return\'_.b(_.rp(\"\'+esc(tok.n)+\'\",c,p,\"\'+(tok.indent||\"\")+\'\"));\'}function tripleStache(id,method){return\"_.b(_.t(_.\"+method+\'(\"\'+esc(id)+\'\",c,p,0)));\'}function variable(id,method){return\"_.b(_.v(_.\"+method+\'(\"\'+esc(id)+\'\",c,p,0)));\'}function text(id){return\"_.b(\"+id+\");\"}Hogan.parse=function(tokens,text,options){options=options||{};return buildTree(tokens,\"\",[],options.sectionTags||[])},Hogan.cache={};Hogan.compile=function(text,options){options=options||{};var key=text+\"||\"+!!options.asString;var t=this.cache[key];if(t){return t}t=this.generate(this.parse(this.scan(text,options.delimiters),text,options),text,options);return this.cache[key]=t}})(typeof exports!==\"undefined\"?exports:Hogan);window.Hogan=Hogan;}"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "if(!window.flurryadapter){var flurryBridgeCtor=function(w){var flurryadapter={};flurryadapter.flurryCallQueue=[];flurryadapter.flurryCallInProgress=false;flurryadapter.callComplete=function(cmd){if(cmd.length > 0){try{if(window.mraid){ mraid.flurryBridgeListenerEvent(cmd);}}catch(error){ }} if(this.flurryCallQueue.length==0){this.flurryCallInProgress=false;return}var adapterCall=this.flurryCallQueue.splice(0,1)[0];this.executeNativeCall(adapterCall);return\"OK\"};flurryadapter.executeCall=function(command){var adapterCall=\"flurry://flurrycall?event=\"+command;var value;for(var i=1;i<arguments.length;i+=2){value=arguments[i+1];if(value==null)continue;adapterCall+=\"&\"+arguments[i]+\"=\"+escape(value)}if(this.flurryCallInProgress)this.flurryCallQueue.push(adapterCall);else this.executeNativeCall(adapterCall)};flurryadapter.executeNativeCall=function(adapterCall){if(adapterCall.length==0)return;this.flurryCallInProgress=true;w.location=adapterCall};return flurryadapter};window.flurryadapter=flurryBridgeCtor(window);}"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "if(!window.flurryAdapterAvailable){window.flurryAdapterAvailable=true;if(typeof window.FlurryAdapterReady === \'function\'){window.FlurryAdapterReady();} }"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Lcom/flurry/sdk/lt;->g(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "var content=\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\';var compiled=window.Hogan.compile(document.body.innerHTML);var rendered=compiled.render(JSON.parse(content));document.body.innerHTML=rendered;"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "})();"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/flurry/sdk/gs;->g:Lcom/flurry/sdk/he;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/flurry/sdk/gs;->g:Lcom/flurry/sdk/he;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/flurry/sdk/he;->loadUrl(Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method private f()V
    .locals 3

    const/4 v0, 0x3

    iget-object v1, p0, Lcom/flurry/sdk/gs;->d:Ljava/lang/String;

    const-string v2, "closing ad unity view"

    invoke-static {v0, v1, v2}, Lcom/flurry/sdk/kg;->a(ILjava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/flurry/sdk/gs;->e:Lcom/flurry/sdk/gh;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/flurry/sdk/gs;->e:Lcom/flurry/sdk/gh;

    invoke-virtual {v0}, Lcom/flurry/sdk/gh;->A()V

    :cond_0
    invoke-virtual {p0}, Lcom/flurry/sdk/gs;->onViewClose()V

    return-void
.end method

.method static synthetic f(Lcom/flurry/sdk/gs;)V
    .locals 0

    invoke-direct {p0}, Lcom/flurry/sdk/gs;->b()V

    return-void
.end method

.method private g()V
    .locals 2

    iget-object v0, p0, Lcom/flurry/sdk/gs;->g:Lcom/flurry/sdk/he;

    const-string v1, "javascript:(function() { document.getElementById(\'flurry_interstitial_close\').style.display = \'none\'; })()"

    invoke-virtual {v0, v1}, Lcom/flurry/sdk/he;->loadUrl(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic g(Lcom/flurry/sdk/gs;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/flurry/sdk/gs;->v:Z

    return v0
.end method

.method private getCurrentAdFrame()Lcom/flurry/sdk/cj;
    .locals 1

    invoke-virtual {p0}, Lcom/flurry/sdk/gs;->getAdController()Lcom/flurry/sdk/au;

    move-result-object v0

    invoke-virtual {v0}, Lcom/flurry/sdk/au;->j()Lcom/flurry/sdk/cj;

    move-result-object v0

    return-object v0
.end method

.method private getCurrentBinding()I
    .locals 1

    invoke-direct {p0}, Lcom/flurry/sdk/gs;->getCurrentAdFrame()Lcom/flurry/sdk/cj;

    move-result-object v0

    iget v0, v0, Lcom/flurry/sdk/cj;->a:I

    return v0
.end method

.method private getCurrentContent()Ljava/lang/String;
    .locals 1

    invoke-direct {p0}, Lcom/flurry/sdk/gs;->getCurrentAdFrame()Lcom/flurry/sdk/cj;

    move-result-object v0

    iget-object v0, v0, Lcom/flurry/sdk/cj;->c:Ljava/lang/String;

    return-object v0
.end method

.method private getCurrentDisplay()Ljava/lang/String;
    .locals 1

    invoke-direct {p0}, Lcom/flurry/sdk/gs;->getCurrentAdFrame()Lcom/flurry/sdk/cj;

    move-result-object v0

    iget-object v0, v0, Lcom/flurry/sdk/cj;->b:Ljava/lang/String;

    return-object v0
.end method

.method private getCurrentFormat()Ljava/lang/String;
    .locals 1

    invoke-direct {p0}, Lcom/flurry/sdk/gs;->getCurrentAdFrame()Lcom/flurry/sdk/cj;

    move-result-object v0

    iget-object v0, v0, Lcom/flurry/sdk/cj;->d:Lcom/flurry/sdk/cn;

    iget-object v0, v0, Lcom/flurry/sdk/cn;->d:Ljava/lang/String;

    return-object v0
.end method

.method private getWebViewFactory()Lcom/flurry/sdk/hj;
    .locals 3

    iget-object v0, p0, Lcom/flurry/sdk/gs;->l:Lcom/flurry/sdk/hj;

    if-nez v0, :cond_0

    new-instance v0, Lcom/flurry/sdk/hj;

    invoke-direct {v0}, Lcom/flurry/sdk/hj;-><init>()V

    iput-object v0, p0, Lcom/flurry/sdk/gs;->l:Lcom/flurry/sdk/hj;

    const-string v0, "WebViewFactory:"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Created new WebViewFactory: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/flurry/sdk/gs;->l:Lcom/flurry/sdk/hj;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/flurry/sdk/kg;->e(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/flurry/sdk/gs;->l:Lcom/flurry/sdk/hj;

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/flurry/sdk/gs;->l:Lcom/flurry/sdk/hj;

    goto :goto_0
.end method

.method private h()Z
    .locals 2

    invoke-direct {p0}, Lcom/flurry/sdk/gs;->getCurrentFormat()Ljava/lang/String;

    move-result-object v0

    const-string v1, "takeover"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method static synthetic h(Lcom/flurry/sdk/gs;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/flurry/sdk/gs;->w:Z

    return v0
.end method

.method static synthetic i(Lcom/flurry/sdk/gs;)Lcom/flurry/sdk/hj;
    .locals 1

    invoke-direct {p0}, Lcom/flurry/sdk/gs;->getWebViewFactory()Lcom/flurry/sdk/hj;

    move-result-object v0

    return-object v0
.end method

.method private i()V
    .locals 3

    invoke-virtual {p0}, Lcom/flurry/sdk/gs;->getContext()Landroid/content/Context;

    move-result-object v0

    instance-of v0, v0, Landroid/app/Activity;

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p0}, Lcom/flurry/sdk/gs;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    invoke-direct {p0}, Lcom/flurry/sdk/gs;->h()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/flurry/sdk/gs;->getAdUnit()Lcom/flurry/sdk/co;

    move-result-object v1

    iget-object v1, v1, Lcom/flurry/sdk/co;->v:Lcom/flurry/sdk/dc;

    invoke-static {v0, v1}, Lcom/flurry/sdk/ez;->a(Landroid/app/Activity;Lcom/flurry/sdk/dc;)I

    move-result v1

    const/4 v2, -0x1

    if-eq v2, v1, :cond_0

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/flurry/sdk/ez;->a(Landroid/app/Activity;IZ)Z

    goto :goto_0
.end method

.method private j()V
    .locals 4

    const/4 v3, 0x1

    const/4 v2, -0x2

    invoke-direct {p0}, Lcom/flurry/sdk/gs;->h()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/flurry/sdk/gs;->B:Z

    if-nez v0, :cond_0

    iput-boolean v3, p0, Lcom/flurry/sdk/gs;->B:Z

    new-instance v0, Lcom/flurry/sdk/ci;

    invoke-virtual {p0}, Lcom/flurry/sdk/gs;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/flurry/sdk/ci;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/flurry/sdk/gs;->A:Lcom/flurry/sdk/ci;

    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v2, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    const/16 v1, 0xb

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    iget-object v1, p0, Lcom/flurry/sdk/gs;->A:Lcom/flurry/sdk/ci;

    invoke-virtual {v1, v0}, Lcom/flurry/sdk/ci;->setDefaultLayoutParams(Landroid/widget/RelativeLayout$LayoutParams;)V

    iget-object v0, p0, Lcom/flurry/sdk/gs;->A:Lcom/flurry/sdk/ci;

    new-instance v1, Lcom/flurry/sdk/gs$7;

    invoke-direct {v1, p0}, Lcom/flurry/sdk/gs$7;-><init>(Lcom/flurry/sdk/gs;)V

    invoke-virtual {v0, v1}, Lcom/flurry/sdk/ci;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {p0, v3}, Lcom/flurry/sdk/gs;->setMraidButtonVisibility(Z)V

    iget-object v0, p0, Lcom/flurry/sdk/gs;->A:Lcom/flurry/sdk/ci;

    invoke-virtual {p0, v0}, Lcom/flurry/sdk/gs;->addView(Landroid/view/View;)V

    :cond_0
    return-void
.end method

.method static synthetic j(Lcom/flurry/sdk/gs;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/flurry/sdk/gs;->u:Z

    return v0
.end method

.method static synthetic k(Lcom/flurry/sdk/gs;)Z
    .locals 1

    invoke-direct {p0}, Lcom/flurry/sdk/gs;->h()Z

    move-result v0

    return v0
.end method

.method static synthetic l(Lcom/flurry/sdk/gs;)I
    .locals 1

    invoke-direct {p0}, Lcom/flurry/sdk/gs;->getCurrentBinding()I

    move-result v0

    return v0
.end method

.method static synthetic m(Lcom/flurry/sdk/gs;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/flurry/sdk/gs;->B:Z

    return v0
.end method

.method static synthetic n(Lcom/flurry/sdk/gs;)V
    .locals 0

    invoke-direct {p0}, Lcom/flurry/sdk/gs;->c()V

    return-void
.end method

.method static synthetic o(Lcom/flurry/sdk/gs;)V
    .locals 0

    invoke-direct {p0}, Lcom/flurry/sdk/gs;->e()V

    return-void
.end method

.method static synthetic p(Lcom/flurry/sdk/gs;)V
    .locals 0

    invoke-direct {p0}, Lcom/flurry/sdk/gs;->g()V

    return-void
.end method

.method static synthetic q(Lcom/flurry/sdk/gs;)V
    .locals 0

    invoke-direct {p0}, Lcom/flurry/sdk/gs;->j()V

    return-void
.end method

.method static synthetic r(Lcom/flurry/sdk/gs;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/flurry/sdk/gs;->c:Z

    return v0
.end method

.method static synthetic s(Lcom/flurry/sdk/gs;)Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/flurry/sdk/gs;->m:Landroid/view/View;

    return-object v0
.end method

.method private declared-synchronized setFlurryJsEnvInitialized(Z)V
    .locals 1

    monitor-enter p0

    :try_start_0
    iput-boolean p1, p0, Lcom/flurry/sdk/gs;->i:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method static synthetic t(Lcom/flurry/sdk/gs;)Landroid/webkit/WebChromeClient;
    .locals 1

    iget-object v0, p0, Lcom/flurry/sdk/gs;->k:Landroid/webkit/WebChromeClient;

    return-object v0
.end method

.method static synthetic u(Lcom/flurry/sdk/gs;)Landroid/widget/FrameLayout;
    .locals 1

    iget-object v0, p0, Lcom/flurry/sdk/gs;->q:Landroid/widget/FrameLayout;

    return-object v0
.end method

.method static synthetic v(Lcom/flurry/sdk/gs;)Landroid/app/Dialog;
    .locals 1

    iget-object v0, p0, Lcom/flurry/sdk/gs;->p:Landroid/app/Dialog;

    return-object v0
.end method

.method static synthetic w(Lcom/flurry/sdk/gs;)Landroid/app/Dialog;
    .locals 1

    iget-object v0, p0, Lcom/flurry/sdk/gs;->s:Landroid/app/Dialog;

    return-object v0
.end method

.method static synthetic x(Lcom/flurry/sdk/gs;)I
    .locals 1

    iget v0, p0, Lcom/flurry/sdk/gs;->n:I

    return v0
.end method

.method static synthetic y(Lcom/flurry/sdk/gs;)Landroid/webkit/WebChromeClient$CustomViewCallback;
    .locals 1

    iget-object v0, p0, Lcom/flurry/sdk/gs;->o:Landroid/webkit/WebChromeClient$CustomViewCallback;

    return-object v0
.end method


# virtual methods
.method public a(Lcom/flurry/sdk/bb;Landroid/net/Uri;)V
    .locals 2

    sget-object v0, Lcom/flurry/sdk/bb;->W:Lcom/flurry/sdk/bb;

    invoke-virtual {p1, v0}, Lcom/flurry/sdk/bb;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "useCustomClose"

    invoke-virtual {p2, v0}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "true"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/flurry/sdk/gs;->setMraidButtonVisibility(Z)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/flurry/sdk/gs;->setMraidButtonVisibility(Z)V

    goto :goto_0
.end method

.method public a(Lcom/flurry/sdk/bb;Ljava/util/Map;Lcom/flurry/sdk/au;I)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/flurry/sdk/bb;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/flurry/sdk/au;",
            "I)V"
        }
    .end annotation

    const/4 v0, 0x3

    iget-object v1, p0, Lcom/flurry/sdk/gs;->d:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "fireEvent(event="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ",params="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/flurry/sdk/kg;->a(ILjava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/flurry/sdk/gs;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {p0}, Lcom/flurry/sdk/gs;->getAdObject()Lcom/flurry/sdk/s;

    move-result-object v3

    move-object v0, p1

    move-object v1, p2

    move-object v4, p3

    move v5, p4

    invoke-static/range {v0 .. v5}, Lcom/flurry/sdk/fa;->a(Lcom/flurry/sdk/bb;Ljava/util/Map;Landroid/content/Context;Lcom/flurry/sdk/s;Lcom/flurry/sdk/au;I)V

    return-void
.end method

.method a(Landroid/view/View;)Z
    .locals 1

    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_0

    if-ne v0, p0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public cleanupLayout()V
    .locals 2

    iget-object v0, p0, Lcom/flurry/sdk/gs;->e:Lcom/flurry/sdk/gh;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/flurry/sdk/gs;->e:Lcom/flurry/sdk/gh;

    invoke-virtual {v0}, Lcom/flurry/sdk/gh;->cleanupLayout()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/flurry/sdk/gs;->e:Lcom/flurry/sdk/gh;

    :cond_0
    invoke-static {}, Lcom/flurry/sdk/kc;->a()Lcom/flurry/sdk/kc;

    move-result-object v0

    iget-object v1, p0, Lcom/flurry/sdk/gs;->b:Lcom/flurry/sdk/kb;

    invoke-virtual {v0, v1}, Lcom/flurry/sdk/kc;->a(Lcom/flurry/sdk/kb;)V

    return-void
.end method

.method public initLayout()V
    .locals 8

    const/4 v5, 0x0

    const/4 v4, 0x1

    const/4 v7, -0x1

    const/4 v6, 0x0

    const/4 v0, 0x3

    iget-object v1, p0, Lcom/flurry/sdk/gs;->d:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "initLayout: ad creative layout: {width = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-direct {p0}, Lcom/flurry/sdk/gs;->getCurrentAdFrame()Lcom/flurry/sdk/cj;

    move-result-object v3

    iget-object v3, v3, Lcom/flurry/sdk/cj;->d:Lcom/flurry/sdk/cn;

    iget v3, v3, Lcom/flurry/sdk/cn;->a:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", height = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-direct {p0}, Lcom/flurry/sdk/gs;->getCurrentAdFrame()Lcom/flurry/sdk/cj;

    move-result-object v3

    iget-object v3, v3, Lcom/flurry/sdk/cj;->d:Lcom/flurry/sdk/cn;

    iget v3, v3, Lcom/flurry/sdk/cn;->b:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", adFrameIndex = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/flurry/sdk/gs;->getAdController()Lcom/flurry/sdk/au;

    move-result-object v3

    invoke-virtual {v3}, Lcom/flurry/sdk/au;->c()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", context = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/flurry/sdk/gs;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "}"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/flurry/sdk/kg;->a(ILjava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/flurry/sdk/gs;->cleanupLayout()V

    invoke-static {}, Lcom/flurry/sdk/kc;->a()Lcom/flurry/sdk/kc;

    move-result-object v0

    const-string v1, "com.flurry.android.impl.ads.views.AdViewEvent"

    iget-object v2, p0, Lcom/flurry/sdk/gs;->b:Lcom/flurry/sdk/kb;

    invoke-virtual {v0, v1, v2}, Lcom/flurry/sdk/kc;->a(Ljava/lang/String;Lcom/flurry/sdk/kb;)V

    invoke-virtual {p0}, Lcom/flurry/sdk/gs;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0}, Lcom/flurry/sdk/gs;->removeAllViews()V

    invoke-virtual {p0, v4}, Lcom/flurry/sdk/gs;->setFocusable(Z)V

    invoke-virtual {p0, v4}, Lcom/flurry/sdk/gs;->setFocusableInTouchMode(Z)V

    invoke-virtual {p0}, Lcom/flurry/sdk/gs;->requestLayout()V

    invoke-direct {p0}, Lcom/flurry/sdk/gs;->getCurrentBinding()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "errorCode"

    sget-object v2, Lcom/flurry/sdk/ba;->e:Lcom/flurry/sdk/ba;

    invoke-virtual {v2}, Lcom/flurry/sdk/ba;->a()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/flurry/sdk/bb;->g:Lcom/flurry/sdk/bb;

    invoke-virtual {p0}, Lcom/flurry/sdk/gs;->getAdController()Lcom/flurry/sdk/au;

    move-result-object v2

    invoke-virtual {p0, v1, v0, v2, v6}, Lcom/flurry/sdk/gs;->a(Lcom/flurry/sdk/bb;Ljava/util/Map;Lcom/flurry/sdk/au;I)V

    :goto_0
    return-void

    :pswitch_0
    invoke-direct {p0}, Lcom/flurry/sdk/gs;->getCurrentDisplay()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/flurry/sdk/gj;->c:Lcom/flurry/sdk/gj;

    invoke-direct {p0, v0, v1}, Lcom/flurry/sdk/gs;->a(Ljava/lang/String;Lcom/flurry/sdk/gj;)V

    goto :goto_0

    :pswitch_1
    invoke-virtual {p0}, Lcom/flurry/sdk/gs;->getAdController()Lcom/flurry/sdk/au;

    move-result-object v1

    invoke-virtual {p0}, Lcom/flurry/sdk/gs;->getAdFrameIndex()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/flurry/sdk/au;->d(I)Lcom/flurry/sdk/fm;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/flurry/sdk/fm;->f()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/flurry/sdk/gj;->a:Lcom/flurry/sdk/gj;

    invoke-direct {p0, v0, v1}, Lcom/flurry/sdk/gs;->a(Ljava/lang/String;Lcom/flurry/sdk/gj;)V

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/flurry/sdk/gs;->g:Lcom/flurry/sdk/he;

    if-nez v1, :cond_1

    invoke-direct {p0}, Lcom/flurry/sdk/gs;->getWebViewFactory()Lcom/flurry/sdk/hj;

    move-result-object v1

    invoke-virtual {v1}, Lcom/flurry/sdk/hj;->a()V

    invoke-direct {p0}, Lcom/flurry/sdk/gs;->getWebViewFactory()Lcom/flurry/sdk/hj;

    move-result-object v1

    invoke-virtual {p0}, Lcom/flurry/sdk/gs;->getAdObject()Lcom/flurry/sdk/s;

    move-result-object v2

    invoke-direct {p0}, Lcom/flurry/sdk/gs;->getCurrentAdFrame()Lcom/flurry/sdk/cj;

    move-result-object v3

    invoke-virtual {v1, v0, v2, v3}, Lcom/flurry/sdk/hj;->a(Landroid/content/Context;Lcom/flurry/sdk/s;Lcom/flurry/sdk/cj;)V

    invoke-direct {p0}, Lcom/flurry/sdk/gs;->getWebViewFactory()Lcom/flurry/sdk/hj;

    move-result-object v0

    invoke-virtual {v0}, Lcom/flurry/sdk/hj;->c()Lcom/flurry/sdk/he;

    move-result-object v0

    iput-object v0, p0, Lcom/flurry/sdk/gs;->g:Lcom/flurry/sdk/he;

    iget-object v0, p0, Lcom/flurry/sdk/gs;->g:Lcom/flurry/sdk/he;

    invoke-virtual {v0}, Lcom/flurry/sdk/he;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    iget-object v0, p0, Lcom/flurry/sdk/gs;->g:Lcom/flurry/sdk/he;

    invoke-virtual {v0, v6}, Lcom/flurry/sdk/he;->setVerticalScrollBarEnabled(Z)V

    iget-object v0, p0, Lcom/flurry/sdk/gs;->g:Lcom/flurry/sdk/he;

    invoke-virtual {v0, v6}, Lcom/flurry/sdk/he;->setHorizontalScrollBarEnabled(Z)V

    iget-object v0, p0, Lcom/flurry/sdk/gs;->g:Lcom/flurry/sdk/he;

    invoke-virtual {v0, v6}, Lcom/flurry/sdk/he;->setBackgroundColor(I)V

    iget-object v0, p0, Lcom/flurry/sdk/gs;->g:Lcom/flurry/sdk/he;

    invoke-virtual {v0, v6}, Lcom/flurry/sdk/he;->clearCache(Z)V

    new-instance v0, Lcom/flurry/sdk/gs$a;

    invoke-direct {v0, p0, v5}, Lcom/flurry/sdk/gs$a;-><init>(Lcom/flurry/sdk/gs;Lcom/flurry/sdk/gs$1;)V

    iput-object v0, p0, Lcom/flurry/sdk/gs;->k:Landroid/webkit/WebChromeClient;

    iget-object v0, p0, Lcom/flurry/sdk/gs;->g:Lcom/flurry/sdk/he;

    iget-object v1, p0, Lcom/flurry/sdk/gs;->k:Landroid/webkit/WebChromeClient;

    invoke-virtual {v0, v1}, Lcom/flurry/sdk/he;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    new-instance v0, Lcom/flurry/sdk/gs$b;

    invoke-direct {v0, p0, v5}, Lcom/flurry/sdk/gs$b;-><init>(Lcom/flurry/sdk/gs;Lcom/flurry/sdk/gs$1;)V

    iput-object v0, p0, Lcom/flurry/sdk/gs;->j:Landroid/webkit/WebViewClient;

    iget-object v0, p0, Lcom/flurry/sdk/gs;->g:Lcom/flurry/sdk/he;

    iget-object v1, p0, Lcom/flurry/sdk/gs;->j:Landroid/webkit/WebViewClient;

    invoke-virtual {v0, v1}, Lcom/flurry/sdk/he;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    :cond_1
    iget-object v0, p0, Lcom/flurry/sdk/gs;->g:Lcom/flurry/sdk/he;

    const-string v1, "base://url/"

    invoke-direct {p0}, Lcom/flurry/sdk/gs;->getCurrentDisplay()Ljava/lang/String;

    move-result-object v2

    const-string v3, "text/html"

    const-string v4, "utf-8"

    const-string v5, "base://url/"

    invoke-virtual/range {v0 .. v5}, Lcom/flurry/sdk/he;->loadDataWithBaseURL(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/flurry/sdk/gs;->getAdController()Lcom/flurry/sdk/au;

    move-result-object v0

    sget-object v1, Lcom/flurry/sdk/bb;->f:Lcom/flurry/sdk/bb;

    invoke-virtual {v1}, Lcom/flurry/sdk/bb;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/flurry/sdk/au;->e(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    sget-object v0, Lcom/flurry/sdk/bb;->f:Lcom/flurry/sdk/bb;

    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v1

    invoke-virtual {p0}, Lcom/flurry/sdk/gs;->getAdController()Lcom/flurry/sdk/au;

    move-result-object v2

    invoke-virtual {p0, v0, v1, v2, v6}, Lcom/flurry/sdk/gs;->a(Lcom/flurry/sdk/bb;Ljava/util/Map;Lcom/flurry/sdk/au;I)V

    invoke-virtual {p0}, Lcom/flurry/sdk/gs;->getAdController()Lcom/flurry/sdk/au;

    move-result-object v0

    sget-object v1, Lcom/flurry/sdk/bb;->f:Lcom/flurry/sdk/bb;

    invoke-virtual {v1}, Lcom/flurry/sdk/bb;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/flurry/sdk/au;->f(Ljava/lang/String;)V

    :cond_2
    iget-boolean v0, p0, Lcom/flurry/sdk/gs;->v:Z

    if-eqz v0, :cond_3

    const-string v0, "adLoadComplete"

    invoke-direct {p0, v0}, Lcom/flurry/sdk/gs;->c(Ljava/lang/String;)V

    :cond_3
    iget-object v0, p0, Lcom/flurry/sdk/gs;->g:Lcom/flurry/sdk/he;

    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v1, v7, v7}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Lcom/flurry/sdk/he;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {p0}, Lcom/flurry/sdk/gs;->dismissProgressDialog()V

    invoke-direct {p0}, Lcom/flurry/sdk/gs;->h()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-virtual {p0}, Lcom/flurry/sdk/gs;->showProgressDialog()V

    :cond_4
    invoke-direct {p0}, Lcom/flurry/sdk/gs;->i()V

    goto/16 :goto_0

    :pswitch_2
    iget-object v1, p0, Lcom/flurry/sdk/gs;->g:Lcom/flurry/sdk/he;

    if-nez v1, :cond_5

    invoke-direct {p0}, Lcom/flurry/sdk/gs;->getWebViewFactory()Lcom/flurry/sdk/hj;

    move-result-object v1

    invoke-virtual {v1}, Lcom/flurry/sdk/hj;->a()V

    invoke-direct {p0}, Lcom/flurry/sdk/gs;->getWebViewFactory()Lcom/flurry/sdk/hj;

    move-result-object v1

    invoke-virtual {p0}, Lcom/flurry/sdk/gs;->getAdObject()Lcom/flurry/sdk/s;

    move-result-object v2

    invoke-direct {p0}, Lcom/flurry/sdk/gs;->getCurrentAdFrame()Lcom/flurry/sdk/cj;

    move-result-object v3

    invoke-virtual {v1, v0, v2, v3}, Lcom/flurry/sdk/hj;->a(Landroid/content/Context;Lcom/flurry/sdk/s;Lcom/flurry/sdk/cj;)V

    invoke-direct {p0}, Lcom/flurry/sdk/gs;->getWebViewFactory()Lcom/flurry/sdk/hj;

    move-result-object v0

    invoke-virtual {v0}, Lcom/flurry/sdk/hj;->c()Lcom/flurry/sdk/he;

    move-result-object v0

    iput-object v0, p0, Lcom/flurry/sdk/gs;->g:Lcom/flurry/sdk/he;

    iget-object v0, p0, Lcom/flurry/sdk/gs;->g:Lcom/flurry/sdk/he;

    invoke-virtual {v0}, Lcom/flurry/sdk/he;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    iget-object v0, p0, Lcom/flurry/sdk/gs;->g:Lcom/flurry/sdk/he;

    invoke-virtual {v0, v6}, Lcom/flurry/sdk/he;->setVerticalScrollBarEnabled(Z)V

    iget-object v0, p0, Lcom/flurry/sdk/gs;->g:Lcom/flurry/sdk/he;

    invoke-virtual {v0, v6}, Lcom/flurry/sdk/he;->setHorizontalScrollBarEnabled(Z)V

    iget-object v0, p0, Lcom/flurry/sdk/gs;->g:Lcom/flurry/sdk/he;

    invoke-virtual {v0, v6}, Lcom/flurry/sdk/he;->setBackgroundColor(I)V

    iget-object v0, p0, Lcom/flurry/sdk/gs;->g:Lcom/flurry/sdk/he;

    invoke-virtual {v0, v6}, Lcom/flurry/sdk/he;->clearCache(Z)V

    new-instance v0, Lcom/flurry/sdk/gs$a;

    invoke-direct {v0, p0, v5}, Lcom/flurry/sdk/gs$a;-><init>(Lcom/flurry/sdk/gs;Lcom/flurry/sdk/gs$1;)V

    iput-object v0, p0, Lcom/flurry/sdk/gs;->k:Landroid/webkit/WebChromeClient;

    iget-object v0, p0, Lcom/flurry/sdk/gs;->g:Lcom/flurry/sdk/he;

    iget-object v1, p0, Lcom/flurry/sdk/gs;->k:Landroid/webkit/WebChromeClient;

    invoke-virtual {v0, v1}, Lcom/flurry/sdk/he;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    new-instance v0, Lcom/flurry/sdk/gs$b;

    invoke-direct {v0, p0, v5}, Lcom/flurry/sdk/gs$b;-><init>(Lcom/flurry/sdk/gs;Lcom/flurry/sdk/gs$1;)V

    iput-object v0, p0, Lcom/flurry/sdk/gs;->j:Landroid/webkit/WebViewClient;

    iget-object v0, p0, Lcom/flurry/sdk/gs;->g:Lcom/flurry/sdk/he;

    iget-object v1, p0, Lcom/flurry/sdk/gs;->j:Landroid/webkit/WebViewClient;

    invoke-virtual {v0, v1}, Lcom/flurry/sdk/he;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    :cond_5
    iget-object v0, p0, Lcom/flurry/sdk/gs;->a:Ljava/lang/String;

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/flurry/sdk/gs;->a:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/flurry/sdk/gs;->b(Ljava/lang/String;)V

    :cond_6
    :goto_1
    iget-object v0, p0, Lcom/flurry/sdk/gs;->g:Lcom/flurry/sdk/he;

    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v1, v7, v7}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Lcom/flurry/sdk/he;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {p0}, Lcom/flurry/sdk/gs;->dismissProgressDialog()V

    invoke-direct {p0}, Lcom/flurry/sdk/gs;->h()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-virtual {p0}, Lcom/flurry/sdk/gs;->showProgressDialog()V

    :cond_7
    invoke-direct {p0}, Lcom/flurry/sdk/gs;->i()V

    goto/16 :goto_0

    :cond_8
    invoke-virtual {p0}, Lcom/flurry/sdk/gs;->getAdFrameIndex()I

    move-result v0

    if-nez v0, :cond_b

    invoke-virtual {p0}, Lcom/flurry/sdk/gs;->getAdController()Lcom/flurry/sdk/au;

    move-result-object v0

    invoke-virtual {v0}, Lcom/flurry/sdk/au;->v()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_9

    invoke-direct {p0}, Lcom/flurry/sdk/gs;->getCurrentDisplay()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/flurry/sdk/gs;->b(Ljava/lang/String;)V

    goto :goto_1

    :cond_9
    invoke-direct {p0}, Lcom/flurry/sdk/gs;->getCurrentDisplay()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/flurry/sdk/ma;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget-object v0, p0, Lcom/flurry/sdk/gs;->g:Lcom/flurry/sdk/he;

    const-string v3, "text/html"

    const-string v4, "utf-8"

    move-object v5, v1

    invoke-virtual/range {v0 .. v5}, Lcom/flurry/sdk/he;->loadDataWithBaseURL(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/flurry/sdk/gs;->getAdController()Lcom/flurry/sdk/au;

    move-result-object v0

    sget-object v1, Lcom/flurry/sdk/bb;->f:Lcom/flurry/sdk/bb;

    invoke-virtual {v1}, Lcom/flurry/sdk/bb;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/flurry/sdk/au;->e(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_a

    sget-object v0, Lcom/flurry/sdk/bb;->f:Lcom/flurry/sdk/bb;

    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v1

    invoke-virtual {p0}, Lcom/flurry/sdk/gs;->getAdController()Lcom/flurry/sdk/au;

    move-result-object v2

    invoke-virtual {p0, v0, v1, v2, v6}, Lcom/flurry/sdk/gs;->a(Lcom/flurry/sdk/bb;Ljava/util/Map;Lcom/flurry/sdk/au;I)V

    invoke-virtual {p0}, Lcom/flurry/sdk/gs;->getAdController()Lcom/flurry/sdk/au;

    move-result-object v0

    sget-object v1, Lcom/flurry/sdk/bb;->f:Lcom/flurry/sdk/bb;

    invoke-virtual {v1}, Lcom/flurry/sdk/bb;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/flurry/sdk/au;->f(Ljava/lang/String;)V

    :cond_a
    iget-boolean v0, p0, Lcom/flurry/sdk/gs;->v:Z

    if-eqz v0, :cond_6

    const-string v0, "adLoadComplete"

    invoke-direct {p0, v0}, Lcom/flurry/sdk/gs;->c(Ljava/lang/String;)V

    goto :goto_1

    :cond_b
    invoke-direct {p0}, Lcom/flurry/sdk/gs;->getCurrentDisplay()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/flurry/sdk/gs;->b(Ljava/lang/String;)V

    goto :goto_1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public onActivityDestroy()V
    .locals 5
    .annotation build Landroid/annotation/TargetApi;
        value = 0xb
    .end annotation

    const/4 v4, 0x0

    const/4 v3, 0x0

    const/4 v0, 0x3

    iget-object v1, p0, Lcom/flurry/sdk/gs;->d:Ljava/lang/String;

    const-string v2, "onDestroy"

    invoke-static {v0, v1, v2}, Lcom/flurry/sdk/kg;->a(ILjava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/flurry/sdk/gs;->z:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/flurry/sdk/gs;->z:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/flurry/sdk/gs;->z:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    iput-object v4, p0, Lcom/flurry/sdk/gs;->z:Landroid/app/AlertDialog;

    :cond_0
    invoke-virtual {p0}, Lcom/flurry/sdk/gs;->dismissProgressDialog()V

    iget-object v0, p0, Lcom/flurry/sdk/gs;->e:Lcom/flurry/sdk/gh;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/flurry/sdk/gs;->e:Lcom/flurry/sdk/gh;

    invoke-virtual {v0}, Lcom/flurry/sdk/gh;->onActivityDestroy()V

    :cond_1
    iget-object v0, p0, Lcom/flurry/sdk/gs;->g:Lcom/flurry/sdk/he;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/flurry/sdk/gs;->k:Landroid/webkit/WebChromeClient;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/flurry/sdk/gs;->k:Landroid/webkit/WebChromeClient;

    invoke-virtual {v0}, Landroid/webkit/WebChromeClient;->onHideCustomView()V

    :cond_2
    iget-object v0, p0, Lcom/flurry/sdk/gs;->s:Landroid/app/Dialog;

    if-eqz v0, :cond_3

    invoke-direct {p0, v3, v3}, Lcom/flurry/sdk/gs;->b(II)V

    :cond_3
    iput-boolean v3, p0, Lcom/flurry/sdk/gs;->y:Z

    invoke-virtual {p0}, Lcom/flurry/sdk/gs;->cleanupLayout()V

    iget-object v0, p0, Lcom/flurry/sdk/gs;->g:Lcom/flurry/sdk/he;

    invoke-virtual {p0, v0}, Lcom/flurry/sdk/gs;->removeView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/flurry/sdk/gs;->g:Lcom/flurry/sdk/he;

    invoke-virtual {v0}, Lcom/flurry/sdk/he;->stopLoading()V

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-lt v0, v1, :cond_4

    iget-object v0, p0, Lcom/flurry/sdk/gs;->g:Lcom/flurry/sdk/he;

    invoke-virtual {v0}, Lcom/flurry/sdk/he;->onPause()V

    :cond_4
    iget-object v0, p0, Lcom/flurry/sdk/gs;->g:Lcom/flurry/sdk/he;

    invoke-virtual {v0}, Lcom/flurry/sdk/he;->destroy()V

    iput-object v4, p0, Lcom/flurry/sdk/gs;->g:Lcom/flurry/sdk/he;

    invoke-direct {p0}, Lcom/flurry/sdk/gs;->getWebViewFactory()Lcom/flurry/sdk/hj;

    move-result-object v0

    invoke-virtual {v0}, Lcom/flurry/sdk/hj;->a()V

    iput-object v4, p0, Lcom/flurry/sdk/gs;->l:Lcom/flurry/sdk/hj;

    :cond_5
    return-void
.end method

.method public onActivityPause()V
    .locals 2
    .annotation build Landroid/annotation/TargetApi;
        value = 0xb
    .end annotation

    iget-object v0, p0, Lcom/flurry/sdk/gs;->g:Lcom/flurry/sdk/he;

    if-eqz v0, :cond_0

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-lt v0, v1, :cond_0

    iget-object v0, p0, Lcom/flurry/sdk/gs;->g:Lcom/flurry/sdk/he;

    invoke-virtual {v0}, Lcom/flurry/sdk/he;->onPause()V

    :cond_0
    iget-object v0, p0, Lcom/flurry/sdk/gs;->e:Lcom/flurry/sdk/gh;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/flurry/sdk/gs;->e:Lcom/flurry/sdk/gh;

    invoke-virtual {v0}, Lcom/flurry/sdk/gh;->onActivityPause()V

    :cond_1
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/flurry/sdk/gs;->f:Z

    return-void
.end method

.method public onActivityResume()V
    .locals 4
    .annotation build Landroid/annotation/TargetApi;
        value = 0xb
    .end annotation

    const/4 v3, 0x1

    invoke-static {}, Lcom/flurry/sdk/kc;->a()Lcom/flurry/sdk/kc;

    move-result-object v0

    const-string v1, "com.flurry.android.impl.ads.views.AdViewEvent"

    iget-object v2, p0, Lcom/flurry/sdk/gs;->b:Lcom/flurry/sdk/kb;

    invoke-virtual {v0, v1, v2}, Lcom/flurry/sdk/kc;->a(Ljava/lang/String;Lcom/flurry/sdk/kb;)V

    iget-object v0, p0, Lcom/flurry/sdk/gs;->g:Lcom/flurry/sdk/he;

    if-eqz v0, :cond_0

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-lt v0, v1, :cond_0

    iput-boolean v3, p0, Lcom/flurry/sdk/gs;->f:Z

    iget-object v0, p0, Lcom/flurry/sdk/gs;->g:Lcom/flurry/sdk/he;

    invoke-virtual {v0}, Lcom/flurry/sdk/he;->onResume()V

    :cond_0
    iget-object v0, p0, Lcom/flurry/sdk/gs;->e:Lcom/flurry/sdk/gh;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/flurry/sdk/gs;->e:Lcom/flurry/sdk/gh;

    invoke-virtual {v0}, Lcom/flurry/sdk/gh;->onActivityResume()V

    :cond_1
    iget-object v0, p0, Lcom/flurry/sdk/gs;->e:Lcom/flurry/sdk/gh;

    if-eqz v0, :cond_2

    iput-boolean v3, p0, Lcom/flurry/sdk/gs;->f:Z

    :cond_2
    return-void
.end method

.method public onActivityStop()V
    .locals 1
    .annotation build Landroid/annotation/TargetApi;
        value = 0xb
    .end annotation

    iget-object v0, p0, Lcom/flurry/sdk/gs;->z:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/flurry/sdk/gs;->z:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/flurry/sdk/gs;->z:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/flurry/sdk/gs;->z:Landroid/app/AlertDialog;

    :cond_0
    iget-object v0, p0, Lcom/flurry/sdk/gs;->e:Lcom/flurry/sdk/gh;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/flurry/sdk/gs;->e:Lcom/flurry/sdk/gh;

    invoke-virtual {v0}, Lcom/flurry/sdk/gh;->onActivityStop()V

    :cond_1
    invoke-virtual {p0}, Lcom/flurry/sdk/gs;->dismissProgressDialog()V

    return-void
.end method

.method public onBackKey()Z
    .locals 4

    sget-object v0, Lcom/flurry/sdk/bb;->u:Lcom/flurry/sdk/bb;

    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v1

    invoke-virtual {p0}, Lcom/flurry/sdk/gs;->getAdController()Lcom/flurry/sdk/au;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/flurry/sdk/gs;->a(Lcom/flurry/sdk/bb;Ljava/util/Map;Lcom/flurry/sdk/au;I)V

    const/4 v0, 0x1

    return v0
.end method

.method protected onViewLoadTimeout()V
    .locals 6

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    const-string v0, "errorCode"

    sget-object v2, Lcom/flurry/sdk/ba;->b:Lcom/flurry/sdk/ba;

    invoke-virtual {v2}, Lcom/flurry/sdk/ba;->a()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/flurry/sdk/bb;->u:Lcom/flurry/sdk/bb;

    invoke-virtual {p0}, Lcom/flurry/sdk/gs;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {p0}, Lcom/flurry/sdk/gs;->getAdObject()Lcom/flurry/sdk/s;

    move-result-object v3

    invoke-virtual {p0}, Lcom/flurry/sdk/gs;->getAdController()Lcom/flurry/sdk/au;

    move-result-object v4

    const/4 v5, 0x0

    invoke-static/range {v0 .. v5}, Lcom/flurry/sdk/fa;->a(Lcom/flurry/sdk/bb;Ljava/util/Map;Landroid/content/Context;Lcom/flurry/sdk/s;Lcom/flurry/sdk/au;I)V

    return-void
.end method

.method public setMraidButtonVisibility(Z)V
    .locals 2

    iget-object v0, p0, Lcom/flurry/sdk/gs;->A:Lcom/flurry/sdk/ci;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/flurry/sdk/gs;->A:Lcom/flurry/sdk/ci;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/flurry/sdk/ci;->setVisibility(I)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/flurry/sdk/gs;->A:Lcom/flurry/sdk/ci;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/flurry/sdk/ci;->setVisibility(I)V

    goto :goto_0
.end method
