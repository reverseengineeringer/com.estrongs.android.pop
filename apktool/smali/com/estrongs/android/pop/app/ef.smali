.class public Lcom/estrongs/android/pop/app/ef;
.super Ljava/lang/Object;


# instance fields
.field public a:Ljava/lang/String;

.field public b:Ljava/lang/String;

.field public c:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lcom/estrongs/android/pop/app/ef;->a:Ljava/lang/String;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/estrongs/android/pop/app/ef;->b:Ljava/lang/String;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/estrongs/android/pop/app/ef;->c:Z

    return-void
.end method

.method static a([Ljava/lang/String;)[Lcom/estrongs/android/pop/app/ef;
    .locals 4

    array-length v0, p0

    new-array v1, v0, [Lcom/estrongs/android/pop/app/ef;

    const/4 v0, 0x0

    :goto_0
    array-length v2, p0

    if-ge v0, v2, :cond_0

    new-instance v2, Lcom/estrongs/android/pop/app/ef;

    invoke-direct {v2}, Lcom/estrongs/android/pop/app/ef;-><init>()V

    aput-object v2, v1, v0

    aget-object v2, v1, v0

    aget-object v3, p0, v0

    iput-object v3, v2, Lcom/estrongs/android/pop/app/ef;->b:Ljava/lang/String;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-object v1
.end method
