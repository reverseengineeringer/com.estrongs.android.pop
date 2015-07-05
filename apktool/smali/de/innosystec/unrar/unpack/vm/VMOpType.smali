.class public final enum Lde/innosystec/unrar/unpack/vm/VMOpType;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lde/innosystec/unrar/unpack/vm/VMOpType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lde/innosystec/unrar/unpack/vm/VMOpType;

.field public static final enum VM_OPINT:Lde/innosystec/unrar/unpack/vm/VMOpType;

.field public static final enum VM_OPNONE:Lde/innosystec/unrar/unpack/vm/VMOpType;

.field public static final enum VM_OPREG:Lde/innosystec/unrar/unpack/vm/VMOpType;

.field public static final enum VM_OPREGMEM:Lde/innosystec/unrar/unpack/vm/VMOpType;


# instance fields
.field private opType:I


# direct methods
.method static constructor <clinit>()V
    .locals 6

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Lde/innosystec/unrar/unpack/vm/VMOpType;

    const-string v1, "VM_OPREG"

    invoke-direct {v0, v1, v2, v2}, Lde/innosystec/unrar/unpack/vm/VMOpType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lde/innosystec/unrar/unpack/vm/VMOpType;->VM_OPREG:Lde/innosystec/unrar/unpack/vm/VMOpType;

    new-instance v0, Lde/innosystec/unrar/unpack/vm/VMOpType;

    const-string v1, "VM_OPINT"

    invoke-direct {v0, v1, v3, v3}, Lde/innosystec/unrar/unpack/vm/VMOpType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lde/innosystec/unrar/unpack/vm/VMOpType;->VM_OPINT:Lde/innosystec/unrar/unpack/vm/VMOpType;

    new-instance v0, Lde/innosystec/unrar/unpack/vm/VMOpType;

    const-string v1, "VM_OPREGMEM"

    invoke-direct {v0, v1, v4, v4}, Lde/innosystec/unrar/unpack/vm/VMOpType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lde/innosystec/unrar/unpack/vm/VMOpType;->VM_OPREGMEM:Lde/innosystec/unrar/unpack/vm/VMOpType;

    new-instance v0, Lde/innosystec/unrar/unpack/vm/VMOpType;

    const-string v1, "VM_OPNONE"

    invoke-direct {v0, v1, v5, v5}, Lde/innosystec/unrar/unpack/vm/VMOpType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lde/innosystec/unrar/unpack/vm/VMOpType;->VM_OPNONE:Lde/innosystec/unrar/unpack/vm/VMOpType;

    const/4 v0, 0x4

    new-array v0, v0, [Lde/innosystec/unrar/unpack/vm/VMOpType;

    sget-object v1, Lde/innosystec/unrar/unpack/vm/VMOpType;->VM_OPREG:Lde/innosystec/unrar/unpack/vm/VMOpType;

    aput-object v1, v0, v2

    sget-object v1, Lde/innosystec/unrar/unpack/vm/VMOpType;->VM_OPINT:Lde/innosystec/unrar/unpack/vm/VMOpType;

    aput-object v1, v0, v3

    sget-object v1, Lde/innosystec/unrar/unpack/vm/VMOpType;->VM_OPREGMEM:Lde/innosystec/unrar/unpack/vm/VMOpType;

    aput-object v1, v0, v4

    sget-object v1, Lde/innosystec/unrar/unpack/vm/VMOpType;->VM_OPNONE:Lde/innosystec/unrar/unpack/vm/VMOpType;

    aput-object v1, v0, v5

    sput-object v0, Lde/innosystec/unrar/unpack/vm/VMOpType;->$VALUES:[Lde/innosystec/unrar/unpack/vm/VMOpType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lde/innosystec/unrar/unpack/vm/VMOpType;->opType:I

    return-void
.end method

.method public static findOpType(I)Lde/innosystec/unrar/unpack/vm/VMOpType;
    .locals 1

    sget-object v0, Lde/innosystec/unrar/unpack/vm/VMOpType;->VM_OPREG:Lde/innosystec/unrar/unpack/vm/VMOpType;

    invoke-virtual {v0, p0}, Lde/innosystec/unrar/unpack/vm/VMOpType;->equals(I)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lde/innosystec/unrar/unpack/vm/VMOpType;->VM_OPREG:Lde/innosystec/unrar/unpack/vm/VMOpType;

    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lde/innosystec/unrar/unpack/vm/VMOpType;->VM_OPINT:Lde/innosystec/unrar/unpack/vm/VMOpType;

    invoke-virtual {v0, p0}, Lde/innosystec/unrar/unpack/vm/VMOpType;->equals(I)Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Lde/innosystec/unrar/unpack/vm/VMOpType;->VM_OPINT:Lde/innosystec/unrar/unpack/vm/VMOpType;

    goto :goto_0

    :cond_1
    sget-object v0, Lde/innosystec/unrar/unpack/vm/VMOpType;->VM_OPREGMEM:Lde/innosystec/unrar/unpack/vm/VMOpType;

    invoke-virtual {v0, p0}, Lde/innosystec/unrar/unpack/vm/VMOpType;->equals(I)Z

    move-result v0

    if-eqz v0, :cond_2

    sget-object v0, Lde/innosystec/unrar/unpack/vm/VMOpType;->VM_OPREGMEM:Lde/innosystec/unrar/unpack/vm/VMOpType;

    goto :goto_0

    :cond_2
    sget-object v0, Lde/innosystec/unrar/unpack/vm/VMOpType;->VM_OPNONE:Lde/innosystec/unrar/unpack/vm/VMOpType;

    invoke-virtual {v0, p0}, Lde/innosystec/unrar/unpack/vm/VMOpType;->equals(I)Z

    move-result v0

    if-eqz v0, :cond_3

    sget-object v0, Lde/innosystec/unrar/unpack/vm/VMOpType;->VM_OPNONE:Lde/innosystec/unrar/unpack/vm/VMOpType;

    goto :goto_0

    :cond_3
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static valueOf(Ljava/lang/String;)Lde/innosystec/unrar/unpack/vm/VMOpType;
    .locals 1

    const-class v0, Lde/innosystec/unrar/unpack/vm/VMOpType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lde/innosystec/unrar/unpack/vm/VMOpType;

    return-object v0
.end method

.method public static values()[Lde/innosystec/unrar/unpack/vm/VMOpType;
    .locals 1

    sget-object v0, Lde/innosystec/unrar/unpack/vm/VMOpType;->$VALUES:[Lde/innosystec/unrar/unpack/vm/VMOpType;

    invoke-virtual {v0}, [Lde/innosystec/unrar/unpack/vm/VMOpType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lde/innosystec/unrar/unpack/vm/VMOpType;

    return-object v0
.end method


# virtual methods
.method public equals(I)Z
    .locals 1

    iget v0, p0, Lde/innosystec/unrar/unpack/vm/VMOpType;->opType:I

    if-ne v0, p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getOpType()I
    .locals 1

    iget v0, p0, Lde/innosystec/unrar/unpack/vm/VMOpType;->opType:I

    return v0
.end method
