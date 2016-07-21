.class public Lcom/estrongs/fs/impl/usb/fs/ntfs/a/b;
.super Lcom/estrongs/fs/impl/usb/fs/ntfs/a/i;

# interfaces
.implements Lcom/estrongs/fs/impl/usb/fs/ntfs/a/a;


# static fields
.field private static final a:Ljava/lang/String;


# instance fields
.field private b:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/estrongs/fs/impl/usb/fs/ntfs/a/b;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/estrongs/fs/impl/usb/fs/ntfs/a/b;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/estrongs/fs/impl/usb/fs/ntfs/n;I)V
    .locals 1

    invoke-direct {p0, p1, p2}, Lcom/estrongs/fs/impl/usb/fs/ntfs/a/i;-><init>(Lcom/estrongs/fs/impl/usb/fs/ntfs/n;I)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/estrongs/fs/impl/usb/fs/ntfs/a/b;->b:Z

    return-void
.end method


# virtual methods
.method public a()Ljava/util/Iterator;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<",
            "Lcom/estrongs/fs/impl/usb/fs/ntfs/a/g;",
            ">;"
        }
    .end annotation

    const/4 v5, 0x0

    invoke-virtual {p0}, Lcom/estrongs/fs/impl/usb/fs/ntfs/a/b;->p()I

    move-result v6

    iget-boolean v0, p0, Lcom/estrongs/fs/impl/usb/fs/ntfs/a/b;->b:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/estrongs/fs/impl/usb/fs/ntfs/a/b;->a:Ljava/lang/String;

    const-string v1, "Allocating %d clusters for non-resident attribute"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/estrongs/android/util/l;->b(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    invoke-virtual {p0}, Lcom/estrongs/fs/impl/usb/fs/ntfs/a/b;->j()Lcom/estrongs/fs/impl/usb/fs/ntfs/n;

    move-result-object v0

    invoke-virtual {v0}, Lcom/estrongs/fs/impl/usb/fs/ntfs/n;->r()Lcom/estrongs/fs/impl/usb/fs/ntfs/ab;

    move-result-object v0

    invoke-virtual {v0}, Lcom/estrongs/fs/impl/usb/fs/ntfs/ab;->b()I

    move-result v0

    mul-int/2addr v0, v6

    new-array v4, v0, [B

    invoke-virtual {p0}, Lcom/estrongs/fs/impl/usb/fs/ntfs/a/b;->b()J

    move-result-wide v2

    move-object v1, p0

    invoke-virtual/range {v1 .. v6}, Lcom/estrongs/fs/impl/usb/fs/ntfs/a/b;->a(J[BII)I

    new-instance v0, Lcom/estrongs/fs/impl/usb/fs/ntfs/a/d;

    invoke-virtual {p0}, Lcom/estrongs/fs/impl/usb/fs/ntfs/a/b;->n()J

    move-result-wide v2

    invoke-direct {v0, v4, v5, v2, v3}, Lcom/estrongs/fs/impl/usb/fs/ntfs/a/d;-><init>([BIJ)V

    invoke-virtual {v0}, Lcom/estrongs/fs/impl/usb/fs/ntfs/a/d;->a()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method
