.class public final enum Lorg/simpleframework/xml/DefaultType;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lorg/simpleframework/xml/DefaultType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic ENUM$VALUES:[Lorg/simpleframework/xml/DefaultType;

.field public static final enum FIELD:Lorg/simpleframework/xml/DefaultType;

.field public static final enum PROPERTY:Lorg/simpleframework/xml/DefaultType;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Lorg/simpleframework/xml/DefaultType;

    const-string v1, "FIELD"

    invoke-direct {v0, v1, v2}, Lorg/simpleframework/xml/DefaultType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/simpleframework/xml/DefaultType;->FIELD:Lorg/simpleframework/xml/DefaultType;

    new-instance v0, Lorg/simpleframework/xml/DefaultType;

    const-string v1, "PROPERTY"

    invoke-direct {v0, v1, v3}, Lorg/simpleframework/xml/DefaultType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/simpleframework/xml/DefaultType;->PROPERTY:Lorg/simpleframework/xml/DefaultType;

    const/4 v0, 0x2

    new-array v0, v0, [Lorg/simpleframework/xml/DefaultType;

    sget-object v1, Lorg/simpleframework/xml/DefaultType;->FIELD:Lorg/simpleframework/xml/DefaultType;

    aput-object v1, v0, v2

    sget-object v1, Lorg/simpleframework/xml/DefaultType;->PROPERTY:Lorg/simpleframework/xml/DefaultType;

    aput-object v1, v0, v3

    sput-object v0, Lorg/simpleframework/xml/DefaultType;->ENUM$VALUES:[Lorg/simpleframework/xml/DefaultType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/simpleframework/xml/DefaultType;
    .locals 1

    const-class v0, Lorg/simpleframework/xml/DefaultType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lorg/simpleframework/xml/DefaultType;

    return-object v0
.end method

.method public static values()[Lorg/simpleframework/xml/DefaultType;
    .locals 4

    const/4 v3, 0x0

    sget-object v0, Lorg/simpleframework/xml/DefaultType;->ENUM$VALUES:[Lorg/simpleframework/xml/DefaultType;

    array-length v1, v0

    new-array v2, v1, [Lorg/simpleframework/xml/DefaultType;

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method
