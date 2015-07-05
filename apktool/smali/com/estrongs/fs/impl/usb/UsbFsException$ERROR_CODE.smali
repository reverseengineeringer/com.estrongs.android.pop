.class public final enum Lcom/estrongs/fs/impl/usb/UsbFsException$ERROR_CODE;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/estrongs/fs/impl/usb/UsbFsException$ERROR_CODE;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/estrongs/fs/impl/usb/UsbFsException$ERROR_CODE;

.field public static final enum USB_ERROR_ADDRESS_OVERFLOW:Lcom/estrongs/fs/impl/usb/UsbFsException$ERROR_CODE;

.field public static final enum USB_ERROR_IO_ERROR:Lcom/estrongs/fs/impl/usb/UsbFsException$ERROR_CODE;

.field public static final enum USB_ERROR_NONE:Lcom/estrongs/fs/impl/usb/UsbFsException$ERROR_CODE;

.field public static final enum USB_ERROR_OPERATION_FAILED:Lcom/estrongs/fs/impl/usb/UsbFsException$ERROR_CODE;

.field public static final enum USB_ERROR_OPERATION_NOT_SUPPORT:Lcom/estrongs/fs/impl/usb/UsbFsException$ERROR_CODE;

.field public static final enum USB_ERROR_TYPE_NOT_SUPPORTE:Lcom/estrongs/fs/impl/usb/UsbFsException$ERROR_CODE;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    new-instance v0, Lcom/estrongs/fs/impl/usb/UsbFsException$ERROR_CODE;

    const-string v1, "USB_ERROR_NONE"

    invoke-direct {v0, v1, v3}, Lcom/estrongs/fs/impl/usb/UsbFsException$ERROR_CODE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/estrongs/fs/impl/usb/UsbFsException$ERROR_CODE;->USB_ERROR_NONE:Lcom/estrongs/fs/impl/usb/UsbFsException$ERROR_CODE;

    new-instance v0, Lcom/estrongs/fs/impl/usb/UsbFsException$ERROR_CODE;

    const-string v1, "USB_ERROR_TYPE_NOT_SUPPORTE"

    invoke-direct {v0, v1, v4}, Lcom/estrongs/fs/impl/usb/UsbFsException$ERROR_CODE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/estrongs/fs/impl/usb/UsbFsException$ERROR_CODE;->USB_ERROR_TYPE_NOT_SUPPORTE:Lcom/estrongs/fs/impl/usb/UsbFsException$ERROR_CODE;

    new-instance v0, Lcom/estrongs/fs/impl/usb/UsbFsException$ERROR_CODE;

    const-string v1, "USB_ERROR_OPERATION_NOT_SUPPORT"

    invoke-direct {v0, v1, v5}, Lcom/estrongs/fs/impl/usb/UsbFsException$ERROR_CODE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/estrongs/fs/impl/usb/UsbFsException$ERROR_CODE;->USB_ERROR_OPERATION_NOT_SUPPORT:Lcom/estrongs/fs/impl/usb/UsbFsException$ERROR_CODE;

    new-instance v0, Lcom/estrongs/fs/impl/usb/UsbFsException$ERROR_CODE;

    const-string v1, "USB_ERROR_IO_ERROR"

    invoke-direct {v0, v1, v6}, Lcom/estrongs/fs/impl/usb/UsbFsException$ERROR_CODE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/estrongs/fs/impl/usb/UsbFsException$ERROR_CODE;->USB_ERROR_IO_ERROR:Lcom/estrongs/fs/impl/usb/UsbFsException$ERROR_CODE;

    new-instance v0, Lcom/estrongs/fs/impl/usb/UsbFsException$ERROR_CODE;

    const-string v1, "USB_ERROR_OPERATION_FAILED"

    invoke-direct {v0, v1, v7}, Lcom/estrongs/fs/impl/usb/UsbFsException$ERROR_CODE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/estrongs/fs/impl/usb/UsbFsException$ERROR_CODE;->USB_ERROR_OPERATION_FAILED:Lcom/estrongs/fs/impl/usb/UsbFsException$ERROR_CODE;

    new-instance v0, Lcom/estrongs/fs/impl/usb/UsbFsException$ERROR_CODE;

    const-string v1, "USB_ERROR_ADDRESS_OVERFLOW"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/estrongs/fs/impl/usb/UsbFsException$ERROR_CODE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/estrongs/fs/impl/usb/UsbFsException$ERROR_CODE;->USB_ERROR_ADDRESS_OVERFLOW:Lcom/estrongs/fs/impl/usb/UsbFsException$ERROR_CODE;

    const/4 v0, 0x6

    new-array v0, v0, [Lcom/estrongs/fs/impl/usb/UsbFsException$ERROR_CODE;

    sget-object v1, Lcom/estrongs/fs/impl/usb/UsbFsException$ERROR_CODE;->USB_ERROR_NONE:Lcom/estrongs/fs/impl/usb/UsbFsException$ERROR_CODE;

    aput-object v1, v0, v3

    sget-object v1, Lcom/estrongs/fs/impl/usb/UsbFsException$ERROR_CODE;->USB_ERROR_TYPE_NOT_SUPPORTE:Lcom/estrongs/fs/impl/usb/UsbFsException$ERROR_CODE;

    aput-object v1, v0, v4

    sget-object v1, Lcom/estrongs/fs/impl/usb/UsbFsException$ERROR_CODE;->USB_ERROR_OPERATION_NOT_SUPPORT:Lcom/estrongs/fs/impl/usb/UsbFsException$ERROR_CODE;

    aput-object v1, v0, v5

    sget-object v1, Lcom/estrongs/fs/impl/usb/UsbFsException$ERROR_CODE;->USB_ERROR_IO_ERROR:Lcom/estrongs/fs/impl/usb/UsbFsException$ERROR_CODE;

    aput-object v1, v0, v6

    sget-object v1, Lcom/estrongs/fs/impl/usb/UsbFsException$ERROR_CODE;->USB_ERROR_OPERATION_FAILED:Lcom/estrongs/fs/impl/usb/UsbFsException$ERROR_CODE;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/estrongs/fs/impl/usb/UsbFsException$ERROR_CODE;->USB_ERROR_ADDRESS_OVERFLOW:Lcom/estrongs/fs/impl/usb/UsbFsException$ERROR_CODE;

    aput-object v2, v0, v1

    sput-object v0, Lcom/estrongs/fs/impl/usb/UsbFsException$ERROR_CODE;->$VALUES:[Lcom/estrongs/fs/impl/usb/UsbFsException$ERROR_CODE;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/estrongs/fs/impl/usb/UsbFsException$ERROR_CODE;
    .locals 1

    const-class v0, Lcom/estrongs/fs/impl/usb/UsbFsException$ERROR_CODE;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/estrongs/fs/impl/usb/UsbFsException$ERROR_CODE;

    return-object v0
.end method

.method public static values()[Lcom/estrongs/fs/impl/usb/UsbFsException$ERROR_CODE;
    .locals 1

    sget-object v0, Lcom/estrongs/fs/impl/usb/UsbFsException$ERROR_CODE;->$VALUES:[Lcom/estrongs/fs/impl/usb/UsbFsException$ERROR_CODE;

    invoke-virtual {v0}, [Lcom/estrongs/fs/impl/usb/UsbFsException$ERROR_CODE;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/estrongs/fs/impl/usb/UsbFsException$ERROR_CODE;

    return-object v0
.end method
