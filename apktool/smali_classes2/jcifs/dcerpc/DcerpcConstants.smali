.class public interface abstract Ljcifs/dcerpc/DcerpcConstants;
.super Ljava/lang/Object;


# static fields
.field public static final DCERPC_CONC_MPX:I = 0x10

.field public static final DCERPC_DID_NOT_EXECUTE:I = 0x20

.field public static final DCERPC_FIRST_FRAG:I = 0x1

.field public static final DCERPC_LAST_FRAG:I = 0x2

.field public static final DCERPC_MAYBE:I = 0x40

.field public static final DCERPC_OBJECT_UUID:I = 0x80

.field public static final DCERPC_PENDING_CANCEL:I = 0x4

.field public static final DCERPC_RESERVED_1:I = 0x8

.field public static final DCERPC_UUID_SYNTAX_NDR:Ljcifs/dcerpc/UUID;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Ljcifs/dcerpc/UUID;

    const-string v1, "8a885d04-1ceb-11c9-9fe8-08002b104860"

    invoke-direct {v0, v1}, Ljcifs/dcerpc/UUID;-><init>(Ljava/lang/String;)V

    sput-object v0, Ljcifs/dcerpc/DcerpcConstants;->DCERPC_UUID_SYNTAX_NDR:Ljcifs/dcerpc/UUID;

    return-void
.end method
