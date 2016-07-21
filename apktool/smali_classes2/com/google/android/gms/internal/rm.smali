.class public Lcom/google/android/gms/internal/rm;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/cast/u;


# static fields
.field private static final a:Lcom/google/android/gms/cast/internal/w;


# instance fields
.field private b:Lcom/google/android/gms/common/api/i;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/common/api/i",
            "<",
            "Lcom/google/android/gms/internal/rt;",
            ">;"
        }
    .end annotation
.end field

.field private c:Landroid/hardware/display/VirtualDisplay;

.field private final d:Lcom/google/android/gms/internal/sa;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/google/android/gms/cast/internal/w;

    const-string v1, "CastRemoteDisplayApiImpl"

    invoke-direct {v0, v1}, Lcom/google/android/gms/cast/internal/w;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/google/android/gms/internal/rm;->a:Lcom/google/android/gms/cast/internal/w;

    return-void
.end method

.method public constructor <init>(Lcom/google/android/gms/common/api/i;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/i",
            "<",
            "Lcom/google/android/gms/internal/rt;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/google/android/gms/internal/rn;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/rn;-><init>(Lcom/google/android/gms/internal/rm;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/rm;->d:Lcom/google/android/gms/internal/sa;

    iput-object p1, p0, Lcom/google/android/gms/internal/rm;->b:Lcom/google/android/gms/common/api/i;

    return-void
.end method

.method static synthetic a()Lcom/google/android/gms/cast/internal/w;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/rm;->a:Lcom/google/android/gms/cast/internal/w;

    return-object v0
.end method

.method static synthetic a(Lcom/google/android/gms/internal/rm;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/internal/rm;->b()V

    return-void
.end method

.method static synthetic b(Lcom/google/android/gms/internal/rm;)Lcom/google/android/gms/common/api/i;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/rm;->b:Lcom/google/android/gms/common/api/i;

    return-object v0
.end method

.method private b()V
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/internal/rm;->c:Landroid/hardware/display/VirtualDisplay;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/internal/rm;->c:Landroid/hardware/display/VirtualDisplay;

    invoke-virtual {v0}, Landroid/hardware/display/VirtualDisplay;->getDisplay()Landroid/view/Display;

    move-result-object v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/google/android/gms/internal/rm;->a:Lcom/google/android/gms/cast/internal/w;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "releasing virtual display: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/internal/rm;->c:Landroid/hardware/display/VirtualDisplay;

    invoke-virtual {v2}, Landroid/hardware/display/VirtualDisplay;->getDisplay()Landroid/view/Display;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/Display;->getDisplayId()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/cast/internal/w;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/rm;->c:Landroid/hardware/display/VirtualDisplay;

    invoke-virtual {v0}, Landroid/hardware/display/VirtualDisplay;->release()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/rm;->c:Landroid/hardware/display/VirtualDisplay;

    :cond_1
    return-void
.end method


# virtual methods
.method public a(Lcom/google/android/gms/common/api/n;)Lcom/google/android/gms/common/api/w;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/n;",
            ")",
            "Lcom/google/android/gms/common/api/w",
            "<",
            "Lcom/google/android/gms/cast/t;",
            ">;"
        }
    .end annotation

    sget-object v0, Lcom/google/android/gms/internal/rm;->a:Lcom/google/android/gms/cast/internal/w;

    const-string v1, "stopRemoteDisplay"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/cast/internal/w;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    new-instance v0, Lcom/google/android/gms/internal/ro;

    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/internal/ro;-><init>(Lcom/google/android/gms/internal/rm;Lcom/google/android/gms/common/api/n;)V

    invoke-interface {p1, v0}, Lcom/google/android/gms/common/api/n;->b(Lcom/google/android/gms/common/api/af;)Lcom/google/android/gms/common/api/af;

    move-result-object v0

    return-object v0
.end method
