.class public final enum Lorg/simpleframework/xml/stream/Mode;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lorg/simpleframework/xml/stream/Mode;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum DATA:Lorg/simpleframework/xml/stream/Mode;

.field private static final synthetic ENUM$VALUES:[Lorg/simpleframework/xml/stream/Mode;

.field public static final enum ESCAPE:Lorg/simpleframework/xml/stream/Mode;

.field public static final enum INHERIT:Lorg/simpleframework/xml/stream/Mode;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Lorg/simpleframework/xml/stream/Mode;

    const-string v1, "DATA"

    invoke-direct {v0, v1, v2}, Lorg/simpleframework/xml/stream/Mode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/simpleframework/xml/stream/Mode;->DATA:Lorg/simpleframework/xml/stream/Mode;

    new-instance v0, Lorg/simpleframework/xml/stream/Mode;

    const-string v1, "ESCAPE"

    invoke-direct {v0, v1, v3}, Lorg/simpleframework/xml/stream/Mode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/simpleframework/xml/stream/Mode;->ESCAPE:Lorg/simpleframework/xml/stream/Mode;

    new-instance v0, Lorg/simpleframework/xml/stream/Mode;

    const-string v1, "INHERIT"

    invoke-direct {v0, v1, v4}, Lorg/simpleframework/xml/stream/Mode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/simpleframework/xml/stream/Mode;->INHERIT:Lorg/simpleframework/xml/stream/Mode;

    const/4 v0, 0x3

    new-array v0, v0, [Lorg/simpleframework/xml/stream/Mode;

    sget-object v1, Lorg/simpleframework/xml/stream/Mode;->DATA:Lorg/simpleframework/xml/stream/Mode;

    aput-object v1, v0, v2

    sget-object v1, Lorg/simpleframework/xml/stream/Mode;->ESCAPE:Lorg/simpleframework/xml/stream/Mode;

    aput-object v1, v0, v3

    sget-object v1, Lorg/simpleframework/xml/stream/Mode;->INHERIT:Lorg/simpleframework/xml/stream/Mode;

    aput-object v1, v0, v4

    sput-object v0, Lorg/simpleframework/xml/stream/Mode;->ENUM$VALUES:[Lorg/simpleframework/xml/stream/Mode;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/simpleframework/xml/stream/Mode;
    .locals 1

    const-class v0, Lorg/simpleframework/xml/stream/Mode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lorg/simpleframework/xml/stream/Mode;

    return-object v0
.end method

.method public static values()[Lorg/simpleframework/xml/stream/Mode;
    .locals 4

    const/4 v3, 0x0

    sget-object v0, Lorg/simpleframework/xml/stream/Mode;->ENUM$VALUES:[Lorg/simpleframework/xml/stream/Mode;

    array-length v1, v0

    new-array v2, v1, [Lorg/simpleframework/xml/stream/Mode;

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method
