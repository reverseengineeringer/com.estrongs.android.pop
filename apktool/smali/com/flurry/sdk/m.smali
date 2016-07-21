.class public Lcom/flurry/sdk/m;
.super Ljava/lang/Object;


# static fields
.field private static final a:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/flurry/sdk/m;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/flurry/sdk/m;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic a()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/flurry/sdk/m;->a:Ljava/lang/String;

    return-object v0
.end method

.method private a(Landroid/widget/ImageView;Landroid/graphics/Bitmap;)V
    .locals 2

    invoke-static {}, Lcom/flurry/sdk/js;->a()Lcom/flurry/sdk/js;

    move-result-object v0

    new-instance v1, Lcom/flurry/sdk/m$3;

    invoke-direct {v1, p0, p1, p2}, Lcom/flurry/sdk/m$3;-><init>(Lcom/flurry/sdk/m;Landroid/widget/ImageView;Landroid/graphics/Bitmap;)V

    invoke-virtual {v0, v1}, Lcom/flurry/sdk/js;->a(Ljava/lang/Runnable;)V

    return-void
.end method

.method private a(Lcom/flurry/sdk/da;Landroid/view/ViewGroup;I)V
    .locals 3

    const/4 v2, 0x5

    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    iget-object v0, p1, Lcom/flurry/sdk/da;->c:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/flurry/sdk/db;->c:Lcom/flurry/sdk/db;

    iget-object v1, p1, Lcom/flurry/sdk/da;->b:Lcom/flurry/sdk/db;

    invoke-virtual {v0, v1}, Lcom/flurry/sdk/db;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    instance-of v0, p2, Landroid/view/ViewGroup;

    if-nez v0, :cond_2

    sget-object v0, Lcom/flurry/sdk/m;->a:Ljava/lang/String;

    const-string v1, "The view must be an instance of ViewGroup in order to load the asset"

    invoke-static {v0, v1}, Lcom/flurry/sdk/kg;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    invoke-static {}, Lcom/flurry/sdk/i;->a()Lcom/flurry/sdk/i;

    move-result-object v0

    invoke-virtual {v0}, Lcom/flurry/sdk/i;->d()Lcom/flurry/sdk/q;

    move-result-object v0

    invoke-virtual {v0, p3}, Lcom/flurry/sdk/q;->a(I)Lcom/flurry/sdk/s;

    move-result-object v0

    if-nez v0, :cond_3

    sget-object v0, Lcom/flurry/sdk/m;->a:Ljava/lang/String;

    const-string v1, "Video error. Could not find ad object"

    invoke-static {v2, v0, v1}, Lcom/flurry/sdk/kg;->a(ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    instance-of v1, v0, Lcom/flurry/sdk/x;

    if-nez v1, :cond_4

    sget-object v0, Lcom/flurry/sdk/m;->a:Ljava/lang/String;

    const-string v1, "The ad must be an instance of FlurryAdNative to fetch video"

    invoke-static {v2, v0, v1}, Lcom/flurry/sdk/kg;->a(ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_4
    invoke-static {}, Lcom/flurry/sdk/js;->a()Lcom/flurry/sdk/js;

    move-result-object v1

    new-instance v2, Lcom/flurry/sdk/m$4;

    invoke-direct {v2, p0, p1, p2, v0}, Lcom/flurry/sdk/m$4;-><init>(Lcom/flurry/sdk/m;Lcom/flurry/sdk/da;Landroid/view/ViewGroup;Lcom/flurry/sdk/s;)V

    invoke-virtual {v1, v2}, Lcom/flurry/sdk/js;->b(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method private a(Lcom/flurry/sdk/da;Landroid/view/ViewGroup;Lcom/flurry/sdk/x;)V
    .locals 3

    iget-object v0, p1, Lcom/flurry/sdk/da;->c:Ljava/lang/String;

    invoke-direct {p0, p3}, Lcom/flurry/sdk/m;->a(Lcom/flurry/sdk/x;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-static {}, Lcom/flurry/sdk/i;->a()Lcom/flurry/sdk/i;

    move-result-object v1

    invoke-virtual {v1}, Lcom/flurry/sdk/i;->l()Lcom/flurry/sdk/ab;

    move-result-object v1

    invoke-virtual {v1, p3, v0}, Lcom/flurry/sdk/ab;->b(Lcom/flurry/sdk/x;Ljava/lang/String;)V

    :cond_0
    :goto_0
    invoke-direct {p0, p3, p2, v0}, Lcom/flurry/sdk/m;->a(Lcom/flurry/sdk/x;Landroid/view/ViewGroup;Ljava/lang/String;)V

    return-void

    :cond_1
    invoke-static {}, Lcom/flurry/sdk/i;->a()Lcom/flurry/sdk/i;

    move-result-object v1

    invoke-virtual {v1}, Lcom/flurry/sdk/i;->l()Lcom/flurry/sdk/ab;

    move-result-object v1

    invoke-virtual {v1, p3, v0}, Lcom/flurry/sdk/ab;->a(Lcom/flurry/sdk/x;Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "file://"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private a(Lcom/flurry/sdk/da;Landroid/widget/Button;I)V
    .locals 2

    iget-object v0, p1, Lcom/flurry/sdk/da;->c:Ljava/lang/String;

    invoke-virtual {p2, v0}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p1, Lcom/flurry/sdk/da;->a:Ljava/lang/String;

    const-string v1, "callToAction"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lcom/flurry/sdk/n;

    invoke-direct {v0}, Lcom/flurry/sdk/n;-><init>()V

    iput-object p2, v0, Lcom/flurry/sdk/n;->a:Landroid/widget/Button;

    iput p3, v0, Lcom/flurry/sdk/n;->b:I

    invoke-virtual {v0}, Lcom/flurry/sdk/n;->b()V

    :cond_0
    return-void
.end method

.method private a(Lcom/flurry/sdk/da;Landroid/widget/ImageView;I)V
    .locals 5

    const/4 v4, 0x3

    invoke-static {}, Lcom/flurry/sdk/i;->a()Lcom/flurry/sdk/i;

    move-result-object v0

    invoke-virtual {v0}, Lcom/flurry/sdk/i;->l()Lcom/flurry/sdk/ab;

    move-result-object v0

    iget-object v1, p1, Lcom/flurry/sdk/da;->c:Ljava/lang/String;

    invoke-virtual {v0, p3, v1}, Lcom/flurry/sdk/ab;->a(ILjava/lang/String;)Ljava/io/File;

    move-result-object v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/flurry/sdk/m;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Cached asset not available for image:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p1, Lcom/flurry/sdk/da;->c:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v0, v1}, Lcom/flurry/sdk/kg;->a(ILjava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lcom/flurry/sdk/kn;

    invoke-direct {v0}, Lcom/flurry/sdk/kn;-><init>()V

    iget-object v1, p1, Lcom/flurry/sdk/da;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/flurry/sdk/kn;->a(Ljava/lang/String;)V

    const v1, 0x9c40

    invoke-virtual {v0, v1}, Lcom/flurry/sdk/kn;->d(I)V

    sget-object v1, Lcom/flurry/sdk/kp$a;->b:Lcom/flurry/sdk/kp$a;

    invoke-virtual {v0, v1}, Lcom/flurry/sdk/kn;->a(Lcom/flurry/sdk/kp$a;)V

    new-instance v1, Lcom/flurry/sdk/dw;

    invoke-direct {v1}, Lcom/flurry/sdk/dw;-><init>()V

    invoke-virtual {v0, v1}, Lcom/flurry/sdk/kn;->b(Lcom/flurry/sdk/lb;)V

    new-instance v1, Lcom/flurry/sdk/m$2;

    invoke-direct {v1, p0, p2}, Lcom/flurry/sdk/m$2;-><init>(Lcom/flurry/sdk/m;Landroid/widget/ImageView;)V

    invoke-virtual {v0, v1}, Lcom/flurry/sdk/kn;->a(Lcom/flurry/sdk/kn$a;)V

    invoke-static {}, Lcom/flurry/sdk/jq;->a()Lcom/flurry/sdk/jq;

    move-result-object v1

    invoke-virtual {v1, p0, v0}, Lcom/flurry/sdk/jq;->a(Ljava/lang/Object;Lcom/flurry/sdk/lz;)V

    :goto_0
    return-void

    :cond_0
    sget-object v1, Lcom/flurry/sdk/m;->a:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Cached asset present for image:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p1, Lcom/flurry/sdk/da;->c:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v1, v2}, Lcom/flurry/sdk/kg;->a(ILjava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-direct {p0, p2, v0}, Lcom/flurry/sdk/m;->a(Landroid/widget/ImageView;Landroid/graphics/Bitmap;)V

    goto :goto_0
.end method

.method private a(Lcom/flurry/sdk/da;Landroid/widget/TextView;)V
    .locals 1

    iget-object v0, p1, Lcom/flurry/sdk/da;->c:Ljava/lang/String;

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method static synthetic a(Lcom/flurry/sdk/m;Landroid/widget/ImageView;Landroid/graphics/Bitmap;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/flurry/sdk/m;->a(Landroid/widget/ImageView;Landroid/graphics/Bitmap;)V

    return-void
.end method

.method static synthetic a(Lcom/flurry/sdk/m;Lcom/flurry/sdk/da;Landroid/view/ViewGroup;Lcom/flurry/sdk/x;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/flurry/sdk/m;->a(Lcom/flurry/sdk/da;Landroid/view/ViewGroup;Lcom/flurry/sdk/x;)V

    return-void
.end method

.method static synthetic a(Lcom/flurry/sdk/m;Lcom/flurry/sdk/da;Landroid/widget/ImageView;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/flurry/sdk/m;->a(Lcom/flurry/sdk/da;Landroid/widget/ImageView;I)V

    return-void
.end method

.method private a(Lcom/flurry/sdk/x;Landroid/view/ViewGroup;Ljava/lang/String;)V
    .locals 2

    invoke-static {}, Lcom/flurry/sdk/js;->a()Lcom/flurry/sdk/js;

    move-result-object v0

    new-instance v1, Lcom/flurry/sdk/m$5;

    invoke-direct {v1, p0, p1, p3, p2}, Lcom/flurry/sdk/m$5;-><init>(Lcom/flurry/sdk/m;Lcom/flurry/sdk/x;Ljava/lang/String;Landroid/view/ViewGroup;)V

    invoke-virtual {v0, v1}, Lcom/flurry/sdk/js;->a(Ljava/lang/Runnable;)V

    return-void
.end method

.method private a(Lcom/flurry/sdk/x;)Z
    .locals 1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/flurry/sdk/x;->l()Lcom/flurry/sdk/au;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/flurry/sdk/au;->m()Lcom/flurry/sdk/gk;

    move-result-object v0

    invoke-virtual {v0}, Lcom/flurry/sdk/gk;->h()Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private b(Lcom/flurry/sdk/da;Landroid/view/View;I)V
    .locals 2

    if-eqz p1, :cond_0

    sget-object v0, Lcom/flurry/sdk/db;->a:Lcom/flurry/sdk/db;

    iget-object v1, p1, Lcom/flurry/sdk/da;->b:Lcom/flurry/sdk/db;

    invoke-virtual {v0, v1}, Lcom/flurry/sdk/db;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    if-nez p2, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p1, Lcom/flurry/sdk/da;->a:Ljava/lang/String;

    const-string v1, "callToAction"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    instance-of v0, p2, Landroid/widget/Button;

    if-eqz v0, :cond_2

    check-cast p2, Landroid/widget/Button;

    invoke-direct {p0, p1, p2, p3}, Lcom/flurry/sdk/m;->a(Lcom/flurry/sdk/da;Landroid/widget/Button;I)V

    goto :goto_0

    :cond_2
    instance-of v0, p2, Landroid/widget/TextView;

    if-nez v0, :cond_3

    sget-object v0, Lcom/flurry/sdk/m;->a:Ljava/lang/String;

    const-string v1, "The view must be an instance of TextView in order to load the asset"

    invoke-static {v0, v1}, Lcom/flurry/sdk/kg;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    check-cast p2, Landroid/widget/TextView;

    invoke-direct {p0, p1, p2}, Lcom/flurry/sdk/m;->a(Lcom/flurry/sdk/da;Landroid/widget/TextView;)V

    goto :goto_0
.end method

.method private c(Lcom/flurry/sdk/da;Landroid/view/View;I)V
    .locals 2

    if-eqz p1, :cond_0

    iget-object v0, p1, Lcom/flurry/sdk/da;->c:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/flurry/sdk/db;->b:Lcom/flurry/sdk/db;

    iget-object v1, p1, Lcom/flurry/sdk/da;->b:Lcom/flurry/sdk/db;

    invoke-virtual {v0, v1}, Lcom/flurry/sdk/db;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    if-eqz p2, :cond_2

    instance-of v0, p2, Landroid/widget/ImageView;

    if-nez v0, :cond_3

    :cond_2
    sget-object v0, Lcom/flurry/sdk/m;->a:Ljava/lang/String;

    const-string v1, "The view must be an instance of ImageView in order to load the asset"

    invoke-static {v0, v1}, Lcom/flurry/sdk/kg;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    invoke-static {}, Lcom/flurry/sdk/js;->a()Lcom/flurry/sdk/js;

    move-result-object v0

    new-instance v1, Lcom/flurry/sdk/m$1;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/flurry/sdk/m$1;-><init>(Lcom/flurry/sdk/m;Lcom/flurry/sdk/da;Landroid/view/View;I)V

    invoke-virtual {v0, v1}, Lcom/flurry/sdk/js;->b(Ljava/lang/Runnable;)V

    goto :goto_0
.end method


# virtual methods
.method public a(Landroid/content/Context;Lcom/flurry/sdk/da;I)Landroid/view/View;
    .locals 3

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    sget-object v1, Lcom/flurry/sdk/m$6;->a:[I

    iget-object v2, p2, Lcom/flurry/sdk/da;->b:Lcom/flurry/sdk/db;

    invoke-virtual {v2}, Lcom/flurry/sdk/db;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    :goto_1
    invoke-virtual {p0, p2, v0, p3}, Lcom/flurry/sdk/m;->a(Lcom/flurry/sdk/da;Landroid/view/View;I)V

    goto :goto_0

    :pswitch_0
    iget-object v0, p2, Lcom/flurry/sdk/da;->a:Ljava/lang/String;

    const-string v1, "callToAction"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    new-instance v0, Landroid/widget/Button;

    invoke-direct {v0, p1}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    goto :goto_1

    :cond_2
    new-instance v0, Landroid/widget/TextView;

    invoke-direct {v0, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    goto :goto_1

    :pswitch_1
    new-instance v0, Landroid/widget/ImageView;

    invoke-direct {v0, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    goto :goto_1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public a(Lcom/flurry/sdk/da;I)Ljava/lang/String;
    .locals 3

    invoke-static {}, Lcom/flurry/sdk/i;->a()Lcom/flurry/sdk/i;

    move-result-object v0

    invoke-virtual {v0}, Lcom/flurry/sdk/i;->l()Lcom/flurry/sdk/ab;

    move-result-object v0

    iget-object v1, p1, Lcom/flurry/sdk/da;->c:Ljava/lang/String;

    invoke-virtual {v0, p2, v1}, Lcom/flurry/sdk/ab;->a(ILjava/lang/String;)Ljava/io/File;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object v0, p1, Lcom/flurry/sdk/da;->c:Ljava/lang/String;

    :goto_0
    return-object v0

    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "file://"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public a(Lcom/flurry/sdk/da;Landroid/view/View;I)V
    .locals 2

    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    sget-object v0, Lcom/flurry/sdk/m$6;->a:[I

    iget-object v1, p1, Lcom/flurry/sdk/da;->b:Lcom/flurry/sdk/db;

    invoke-virtual {v1}, Lcom/flurry/sdk/db;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    invoke-direct {p0, p1, p2, p3}, Lcom/flurry/sdk/m;->b(Lcom/flurry/sdk/da;Landroid/view/View;I)V

    goto :goto_0

    :pswitch_1
    invoke-direct {p0, p1, p2, p3}, Lcom/flurry/sdk/m;->c(Lcom/flurry/sdk/da;Landroid/view/View;I)V

    goto :goto_0

    :pswitch_2
    check-cast p2, Landroid/view/ViewGroup;

    invoke-direct {p0, p1, p2, p3}, Lcom/flurry/sdk/m;->a(Lcom/flurry/sdk/da;Landroid/view/ViewGroup;I)V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
