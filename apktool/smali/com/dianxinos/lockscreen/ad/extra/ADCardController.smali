.class public Lcom/dianxinos/lockscreen/ad/extra/ADCardController;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/duapps/ad/j;


# static fields
.field private static final a:Ljava/lang/String;


# instance fields
.field private b:Lcom/duapps/ad/f;

.field private c:Landroid/content/Context;

.field private d:I

.field private e:Lcom/dianxinos/lockscreen/ad/extra/BaseCardView;

.field private f:Lcom/dianxinos/lockscreen/ad/extra/e;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/dianxinos/lockscreen/ad/extra/ADCardController;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/dianxinos/lockscreen/ad/extra/ADCardController;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, v0}, Lcom/dianxinos/lockscreen/ad/extra/ADCardController;-><init>(Landroid/content/Context;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;II)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/dianxinos/lockscreen/ad/extra/ADCardController;->c:Landroid/content/Context;

    iput p2, p0, Lcom/dianxinos/lockscreen/ad/extra/ADCardController;->d:I

    new-instance v0, Lcom/duapps/ad/f;

    invoke-direct {v0, p1, p2, p3}, Lcom/duapps/ad/f;-><init>(Landroid/content/Context;II)V

    iput-object v0, p0, Lcom/dianxinos/lockscreen/ad/extra/ADCardController;->b:Lcom/duapps/ad/f;

    return-void
.end method

.method static synthetic a(Lcom/dianxinos/lockscreen/ad/extra/ADCardController;Lcom/dianxinos/lockscreen/ad/extra/BaseCardView;)Lcom/dianxinos/lockscreen/ad/extra/BaseCardView;
    .locals 0

    iput-object p1, p0, Lcom/dianxinos/lockscreen/ad/extra/ADCardController;->e:Lcom/dianxinos/lockscreen/ad/extra/BaseCardView;

    return-object p1
.end method

.method static synthetic a(Lcom/dianxinos/lockscreen/ad/extra/ADCardController;)Lcom/dianxinos/lockscreen/ad/extra/e;
    .locals 1

    iget-object v0, p0, Lcom/dianxinos/lockscreen/ad/extra/ADCardController;->f:Lcom/dianxinos/lockscreen/ad/extra/e;

    return-object v0
.end method

.method static synthetic b(Lcom/dianxinos/lockscreen/ad/extra/ADCardController;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/dianxinos/lockscreen/ad/extra/ADCardController;->c:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic c(Lcom/dianxinos/lockscreen/ad/extra/ADCardController;)Lcom/dianxinos/lockscreen/ad/extra/BaseCardView;
    .locals 1

    iget-object v0, p0, Lcom/dianxinos/lockscreen/ad/extra/ADCardController;->e:Lcom/dianxinos/lockscreen/ad/extra/BaseCardView;

    return-object v0
.end method

.method static synthetic c()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/dianxinos/lockscreen/ad/extra/ADCardController;->a:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public a()V
    .locals 1

    iget-object v0, p0, Lcom/dianxinos/lockscreen/ad/extra/ADCardController;->b:Lcom/duapps/ad/f;

    invoke-virtual {v0}, Lcom/duapps/ad/f;->a()V

    return-void
.end method

.method public a(Lcom/dianxinos/lockscreen/ad/extra/ADCardController$ADCardType;)V
    .locals 2

    iget-object v0, p0, Lcom/dianxinos/lockscreen/ad/extra/ADCardController;->b:Lcom/duapps/ad/f;

    new-instance v1, Lcom/dianxinos/lockscreen/ad/extra/a;

    invoke-direct {v1, p0, p1}, Lcom/dianxinos/lockscreen/ad/extra/a;-><init>(Lcom/dianxinos/lockscreen/ad/extra/ADCardController;Lcom/dianxinos/lockscreen/ad/extra/ADCardController$ADCardType;)V

    invoke-virtual {v0, v1}, Lcom/duapps/ad/f;->a(Lcom/duapps/ad/e;)V

    iget-object v0, p0, Lcom/dianxinos/lockscreen/ad/extra/ADCardController;->b:Lcom/duapps/ad/f;

    invoke-virtual {v0}, Lcom/duapps/ad/f;->d()V

    return-void
.end method

.method public a(Lcom/dianxinos/lockscreen/ad/extra/e;)V
    .locals 0

    iput-object p1, p0, Lcom/dianxinos/lockscreen/ad/extra/ADCardController;->f:Lcom/dianxinos/lockscreen/ad/extra/e;

    return-void
.end method

.method public a([Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public b()V
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/dianxinos/lockscreen/ad/extra/ADCardController;->e:Lcom/dianxinos/lockscreen/ad/extra/BaseCardView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/dianxinos/lockscreen/ad/extra/ADCardController;->e:Lcom/dianxinos/lockscreen/ad/extra/BaseCardView;

    invoke-virtual {v0}, Lcom/dianxinos/lockscreen/ad/extra/BaseCardView;->e()V

    iput-object v1, p0, Lcom/dianxinos/lockscreen/ad/extra/ADCardController;->e:Lcom/dianxinos/lockscreen/ad/extra/BaseCardView;

    :cond_0
    iget-object v0, p0, Lcom/dianxinos/lockscreen/ad/extra/ADCardController;->f:Lcom/dianxinos/lockscreen/ad/extra/e;

    if-eqz v0, :cond_1

    iput-object v1, p0, Lcom/dianxinos/lockscreen/ad/extra/ADCardController;->f:Lcom/dianxinos/lockscreen/ad/extra/e;

    :cond_1
    iget-object v0, p0, Lcom/dianxinos/lockscreen/ad/extra/ADCardController;->b:Lcom/duapps/ad/f;

    invoke-virtual {v0}, Lcom/duapps/ad/f;->e()V

    return-void
.end method
