.class public final Lcom/estrongs/fs/impl/usb/fs/ntfs/a/d;
.super Lcom/estrongs/fs/impl/usb/fs/ntfs/aa;


# static fields
.field private static final a:Ljava/lang/String;


# instance fields
.field private b:Z

.field private c:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/estrongs/fs/impl/usb/fs/ntfs/a/d;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/estrongs/fs/impl/usb/fs/ntfs/a/d;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>([BIJ)V
    .locals 1

    invoke-direct {p0, p1, p2}, Lcom/estrongs/fs/impl/usb/fs/ntfs/aa;-><init>([BI)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/estrongs/fs/impl/usb/fs/ntfs/a/d;->b:Z

    iput-wide p3, p0, Lcom/estrongs/fs/impl/usb/fs/ntfs/a/d;->c:J

    return-void
.end method

.method static synthetic a(Lcom/estrongs/fs/impl/usb/fs/ntfs/a/d;)J
    .locals 2

    iget-wide v0, p0, Lcom/estrongs/fs/impl/usb/fs/ntfs/a/d;->c:J

    return-wide v0
.end method

.method static synthetic b()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/estrongs/fs/impl/usb/fs/ntfs/a/d;->a:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic b(Lcom/estrongs/fs/impl/usb/fs/ntfs/a/d;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/estrongs/fs/impl/usb/fs/ntfs/a/d;->b:Z

    return v0
.end method


# virtual methods
.method public a()Ljava/util/Iterator;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<",
            "Lcom/estrongs/fs/impl/usb/fs/ntfs/a/g;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/estrongs/fs/impl/usb/fs/ntfs/a/f;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/estrongs/fs/impl/usb/fs/ntfs/a/f;-><init>(Lcom/estrongs/fs/impl/usb/fs/ntfs/a/d;Lcom/estrongs/fs/impl/usb/fs/ntfs/a/e;)V

    return-object v0
.end method
