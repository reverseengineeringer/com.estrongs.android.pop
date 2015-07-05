.class public final enum Lcom/estrongs/fs/impl/usb/fs/ntfs/utils/SizeUnit;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/estrongs/fs/impl/usb/fs/ntfs/utils/SizeUnit;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/estrongs/fs/impl/usb/fs/ntfs/utils/SizeUnit;

.field public static final enum B:Lcom/estrongs/fs/impl/usb/fs/ntfs/utils/SizeUnit;

.field public static final enum E:Lcom/estrongs/fs/impl/usb/fs/ntfs/utils/SizeUnit;

.field public static final enum G:Lcom/estrongs/fs/impl/usb/fs/ntfs/utils/SizeUnit;

.field public static final enum K:Lcom/estrongs/fs/impl/usb/fs/ntfs/utils/SizeUnit;

.field public static final enum M:Lcom/estrongs/fs/impl/usb/fs/ntfs/utils/SizeUnit;

.field public static final MAX:Lcom/estrongs/fs/impl/usb/fs/ntfs/utils/SizeUnit;

.field public static final MIN:Lcom/estrongs/fs/impl/usb/fs/ntfs/utils/SizeUnit;

.field public static final enum P:Lcom/estrongs/fs/impl/usb/fs/ntfs/utils/SizeUnit;

.field public static final enum T:Lcom/estrongs/fs/impl/usb/fs/ntfs/utils/SizeUnit;


# instance fields
.field private final multiplier:J

.field private final unit:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    new-instance v1, Lcom/estrongs/fs/impl/usb/fs/ntfs/utils/SizeUnit;

    const-string v2, "B"

    const/4 v3, 0x0

    const-wide/16 v4, 0x1

    const-string v6, "B"

    invoke-direct/range {v1 .. v6}, Lcom/estrongs/fs/impl/usb/fs/ntfs/utils/SizeUnit;-><init>(Ljava/lang/String;IJLjava/lang/String;)V

    sput-object v1, Lcom/estrongs/fs/impl/usb/fs/ntfs/utils/SizeUnit;->B:Lcom/estrongs/fs/impl/usb/fs/ntfs/utils/SizeUnit;

    new-instance v1, Lcom/estrongs/fs/impl/usb/fs/ntfs/utils/SizeUnit;

    const-string v2, "K"

    const/4 v3, 0x1

    const-wide/16 v4, 0x400

    const-string v6, "K"

    invoke-direct/range {v1 .. v6}, Lcom/estrongs/fs/impl/usb/fs/ntfs/utils/SizeUnit;-><init>(Ljava/lang/String;IJLjava/lang/String;)V

    sput-object v1, Lcom/estrongs/fs/impl/usb/fs/ntfs/utils/SizeUnit;->K:Lcom/estrongs/fs/impl/usb/fs/ntfs/utils/SizeUnit;

    new-instance v1, Lcom/estrongs/fs/impl/usb/fs/ntfs/utils/SizeUnit;

    const-string v2, "M"

    const/4 v3, 0x2

    const-wide/32 v4, 0x100000

    const-string v6, "M"

    invoke-direct/range {v1 .. v6}, Lcom/estrongs/fs/impl/usb/fs/ntfs/utils/SizeUnit;-><init>(Ljava/lang/String;IJLjava/lang/String;)V

    sput-object v1, Lcom/estrongs/fs/impl/usb/fs/ntfs/utils/SizeUnit;->M:Lcom/estrongs/fs/impl/usb/fs/ntfs/utils/SizeUnit;

    new-instance v1, Lcom/estrongs/fs/impl/usb/fs/ntfs/utils/SizeUnit;

    const-string v2, "G"

    const/4 v3, 0x3

    const-wide/32 v4, 0x40000000

    const-string v6, "G"

    invoke-direct/range {v1 .. v6}, Lcom/estrongs/fs/impl/usb/fs/ntfs/utils/SizeUnit;-><init>(Ljava/lang/String;IJLjava/lang/String;)V

    sput-object v1, Lcom/estrongs/fs/impl/usb/fs/ntfs/utils/SizeUnit;->G:Lcom/estrongs/fs/impl/usb/fs/ntfs/utils/SizeUnit;

    new-instance v1, Lcom/estrongs/fs/impl/usb/fs/ntfs/utils/SizeUnit;

    const-string v2, "T"

    const/4 v3, 0x4

    const-wide v4, 0x10000000000L

    const-string v6, "T"

    invoke-direct/range {v1 .. v6}, Lcom/estrongs/fs/impl/usb/fs/ntfs/utils/SizeUnit;-><init>(Ljava/lang/String;IJLjava/lang/String;)V

    sput-object v1, Lcom/estrongs/fs/impl/usb/fs/ntfs/utils/SizeUnit;->T:Lcom/estrongs/fs/impl/usb/fs/ntfs/utils/SizeUnit;

    new-instance v1, Lcom/estrongs/fs/impl/usb/fs/ntfs/utils/SizeUnit;

    const-string v2, "P"

    const/4 v3, 0x5

    const-wide/high16 v4, 0x4000000000000L

    const-string v6, "P"

    invoke-direct/range {v1 .. v6}, Lcom/estrongs/fs/impl/usb/fs/ntfs/utils/SizeUnit;-><init>(Ljava/lang/String;IJLjava/lang/String;)V

    sput-object v1, Lcom/estrongs/fs/impl/usb/fs/ntfs/utils/SizeUnit;->P:Lcom/estrongs/fs/impl/usb/fs/ntfs/utils/SizeUnit;

    new-instance v1, Lcom/estrongs/fs/impl/usb/fs/ntfs/utils/SizeUnit;

    const-string v2, "E"

    const/4 v3, 0x6

    const-wide/high16 v4, 0x1000000000000000L

    const-string v6, "E"

    invoke-direct/range {v1 .. v6}, Lcom/estrongs/fs/impl/usb/fs/ntfs/utils/SizeUnit;-><init>(Ljava/lang/String;IJLjava/lang/String;)V

    sput-object v1, Lcom/estrongs/fs/impl/usb/fs/ntfs/utils/SizeUnit;->E:Lcom/estrongs/fs/impl/usb/fs/ntfs/utils/SizeUnit;

    const/4 v0, 0x7

    new-array v0, v0, [Lcom/estrongs/fs/impl/usb/fs/ntfs/utils/SizeUnit;

    const/4 v1, 0x0

    sget-object v2, Lcom/estrongs/fs/impl/usb/fs/ntfs/utils/SizeUnit;->B:Lcom/estrongs/fs/impl/usb/fs/ntfs/utils/SizeUnit;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    sget-object v2, Lcom/estrongs/fs/impl/usb/fs/ntfs/utils/SizeUnit;->K:Lcom/estrongs/fs/impl/usb/fs/ntfs/utils/SizeUnit;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    sget-object v2, Lcom/estrongs/fs/impl/usb/fs/ntfs/utils/SizeUnit;->M:Lcom/estrongs/fs/impl/usb/fs/ntfs/utils/SizeUnit;

    aput-object v2, v0, v1

    const/4 v1, 0x3

    sget-object v2, Lcom/estrongs/fs/impl/usb/fs/ntfs/utils/SizeUnit;->G:Lcom/estrongs/fs/impl/usb/fs/ntfs/utils/SizeUnit;

    aput-object v2, v0, v1

    const/4 v1, 0x4

    sget-object v2, Lcom/estrongs/fs/impl/usb/fs/ntfs/utils/SizeUnit;->T:Lcom/estrongs/fs/impl/usb/fs/ntfs/utils/SizeUnit;

    aput-object v2, v0, v1

    const/4 v1, 0x5

    sget-object v2, Lcom/estrongs/fs/impl/usb/fs/ntfs/utils/SizeUnit;->P:Lcom/estrongs/fs/impl/usb/fs/ntfs/utils/SizeUnit;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/estrongs/fs/impl/usb/fs/ntfs/utils/SizeUnit;->E:Lcom/estrongs/fs/impl/usb/fs/ntfs/utils/SizeUnit;

    aput-object v2, v0, v1

    sput-object v0, Lcom/estrongs/fs/impl/usb/fs/ntfs/utils/SizeUnit;->$VALUES:[Lcom/estrongs/fs/impl/usb/fs/ntfs/utils/SizeUnit;

    sget-object v0, Lcom/estrongs/fs/impl/usb/fs/ntfs/utils/SizeUnit;->B:Lcom/estrongs/fs/impl/usb/fs/ntfs/utils/SizeUnit;

    sput-object v0, Lcom/estrongs/fs/impl/usb/fs/ntfs/utils/SizeUnit;->MIN:Lcom/estrongs/fs/impl/usb/fs/ntfs/utils/SizeUnit;

    sget-object v0, Lcom/estrongs/fs/impl/usb/fs/ntfs/utils/SizeUnit;->E:Lcom/estrongs/fs/impl/usb/fs/ntfs/utils/SizeUnit;

    sput-object v0, Lcom/estrongs/fs/impl/usb/fs/ntfs/utils/SizeUnit;->MAX:Lcom/estrongs/fs/impl/usb/fs/ntfs/utils/SizeUnit;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IJLjava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-wide p3, p0, Lcom/estrongs/fs/impl/usb/fs/ntfs/utils/SizeUnit;->multiplier:J

    iput-object p5, p0, Lcom/estrongs/fs/impl/usb/fs/ntfs/utils/SizeUnit;->unit:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/estrongs/fs/impl/usb/fs/ntfs/utils/SizeUnit;
    .locals 1

    const-class v0, Lcom/estrongs/fs/impl/usb/fs/ntfs/utils/SizeUnit;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/estrongs/fs/impl/usb/fs/ntfs/utils/SizeUnit;

    return-object v0
.end method

.method public static values()[Lcom/estrongs/fs/impl/usb/fs/ntfs/utils/SizeUnit;
    .locals 1

    sget-object v0, Lcom/estrongs/fs/impl/usb/fs/ntfs/utils/SizeUnit;->$VALUES:[Lcom/estrongs/fs/impl/usb/fs/ntfs/utils/SizeUnit;

    invoke-virtual {v0}, [Lcom/estrongs/fs/impl/usb/fs/ntfs/utils/SizeUnit;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/estrongs/fs/impl/usb/fs/ntfs/utils/SizeUnit;

    return-object v0
.end method


# virtual methods
.method public getMultiplier()J
    .locals 2

    iget-wide v0, p0, Lcom/estrongs/fs/impl/usb/fs/ntfs/utils/SizeUnit;->multiplier:J

    return-wide v0
.end method

.method public getUnit()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/fs/impl/usb/fs/ntfs/utils/SizeUnit;->unit:Ljava/lang/String;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-wide v2, p0, Lcom/estrongs/fs/impl/usb/fs/ntfs/utils/SizeUnit;->multiplier:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/estrongs/fs/impl/usb/fs/ntfs/utils/SizeUnit;->unit:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
