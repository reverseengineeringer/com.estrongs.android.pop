.class public Lcom/duapps/ad/b;
.super Ljava/lang/Object;


# static fields
.field public static final a:Lcom/duapps/ad/b;

.field public static final b:Lcom/duapps/ad/b;

.field public static final c:Lcom/duapps/ad/b;

.field public static final d:Lcom/duapps/ad/b;

.field public static final e:Lcom/duapps/ad/b;

.field public static final f:Lcom/duapps/ad/b;

.field public static final g:Lcom/duapps/ad/b;

.field public static final h:Lcom/duapps/ad/b;

.field public static final i:Lcom/duapps/ad/b;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field


# instance fields
.field private final j:I

.field private final k:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/duapps/ad/b;

    const/16 v1, 0x3e8

    const-string v2, "Network Error"

    invoke-direct {v0, v1, v2}, Lcom/duapps/ad/b;-><init>(ILjava/lang/String;)V

    sput-object v0, Lcom/duapps/ad/b;->a:Lcom/duapps/ad/b;

    new-instance v0, Lcom/duapps/ad/b;

    const/16 v1, 0x3e9

    const-string v2, "No Fill"

    invoke-direct {v0, v1, v2}, Lcom/duapps/ad/b;-><init>(ILjava/lang/String;)V

    sput-object v0, Lcom/duapps/ad/b;->b:Lcom/duapps/ad/b;

    new-instance v0, Lcom/duapps/ad/b;

    const/16 v1, 0x3ea

    const-string v2, "Ad was re-loaded too frequently"

    invoke-direct {v0, v1, v2}, Lcom/duapps/ad/b;-><init>(ILjava/lang/String;)V

    sput-object v0, Lcom/duapps/ad/b;->c:Lcom/duapps/ad/b;

    new-instance v0, Lcom/duapps/ad/b;

    const/16 v1, 0x7d0

    const-string v2, "Server Error"

    invoke-direct {v0, v1, v2}, Lcom/duapps/ad/b;-><init>(ILjava/lang/String;)V

    sput-object v0, Lcom/duapps/ad/b;->d:Lcom/duapps/ad/b;

    new-instance v0, Lcom/duapps/ad/b;

    const/16 v1, 0x7d1

    const-string v2, "Internal Error"

    invoke-direct {v0, v1, v2}, Lcom/duapps/ad/b;-><init>(ILjava/lang/String;)V

    sput-object v0, Lcom/duapps/ad/b;->e:Lcom/duapps/ad/b;

    new-instance v0, Lcom/duapps/ad/b;

    const/16 v1, 0xbb8

    const-string v2, "Time Out"

    invoke-direct {v0, v1, v2}, Lcom/duapps/ad/b;-><init>(ILjava/lang/String;)V

    sput-object v0, Lcom/duapps/ad/b;->f:Lcom/duapps/ad/b;

    new-instance v0, Lcom/duapps/ad/b;

    const/16 v1, 0xbb9

    const-string v2, "unknow error"

    invoke-direct {v0, v1, v2}, Lcom/duapps/ad/b;-><init>(ILjava/lang/String;)V

    sput-object v0, Lcom/duapps/ad/b;->g:Lcom/duapps/ad/b;

    new-instance v0, Lcom/duapps/ad/b;

    const/16 v1, 0x3eb

    const-string v2, "image download failed"

    invoke-direct {v0, v1, v2}, Lcom/duapps/ad/b;-><init>(ILjava/lang/String;)V

    sput-object v0, Lcom/duapps/ad/b;->h:Lcom/duapps/ad/b;

    new-instance v0, Lcom/duapps/ad/b;

    const/16 v1, 0x7d2

    const-string v2, "Native ad failed to load due to missing properties"

    invoke-direct {v0, v1, v2}, Lcom/duapps/ad/b;-><init>(ILjava/lang/String;)V

    sput-object v0, Lcom/duapps/ad/b;->i:Lcom/duapps/ad/b;

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p2, "unknown error"

    :cond_0
    iput p1, p0, Lcom/duapps/ad/b;->j:I

    iput-object p2, p0, Lcom/duapps/ad/b;->k:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public a()I
    .locals 1

    iget v0, p0, Lcom/duapps/ad/b;->j:I

    return v0
.end method

.method public b()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/duapps/ad/b;->k:Ljava/lang/String;

    return-object v0
.end method
