.class public final enum Lcom/baidu/sapi2/utils/enums/BindWidgetAction;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/baidu/sapi2/utils/enums/BindWidgetAction;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum BIND_EMAIL:Lcom/baidu/sapi2/utils/enums/BindWidgetAction;

.field public static final enum BIND_MOBILE:Lcom/baidu/sapi2/utils/enums/BindWidgetAction;

.field public static final enum REBIND_EMAIL:Lcom/baidu/sapi2/utils/enums/BindWidgetAction;

.field public static final enum REBIND_MOBILE:Lcom/baidu/sapi2/utils/enums/BindWidgetAction;

.field public static final enum UNBIND_EMAIL:Lcom/baidu/sapi2/utils/enums/BindWidgetAction;

.field public static final enum UNBIND_MOBILE:Lcom/baidu/sapi2/utils/enums/BindWidgetAction;

.field private static final synthetic c:[Lcom/baidu/sapi2/utils/enums/BindWidgetAction;


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 10

    const/4 v9, 0x4

    const/4 v8, 0x3

    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    new-instance v0, Lcom/baidu/sapi2/utils/enums/BindWidgetAction;

    const-string v1, "BIND_MOBILE"

    const-string v2, "/wp/bindwidget-bindmobile"

    const-string v3, "\u7ed1\u5b9a\u624b\u673a"

    invoke-direct {v0, v1, v5, v2, v3}, Lcom/baidu/sapi2/utils/enums/BindWidgetAction;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/baidu/sapi2/utils/enums/BindWidgetAction;->BIND_MOBILE:Lcom/baidu/sapi2/utils/enums/BindWidgetAction;

    new-instance v0, Lcom/baidu/sapi2/utils/enums/BindWidgetAction;

    const-string v1, "BIND_EMAIL"

    const-string v2, "/wp/bindwidget-bindemail"

    const-string v3, "\u7ed1\u5b9a\u90ae\u7bb1"

    invoke-direct {v0, v1, v6, v2, v3}, Lcom/baidu/sapi2/utils/enums/BindWidgetAction;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/baidu/sapi2/utils/enums/BindWidgetAction;->BIND_EMAIL:Lcom/baidu/sapi2/utils/enums/BindWidgetAction;

    new-instance v0, Lcom/baidu/sapi2/utils/enums/BindWidgetAction;

    const-string v1, "REBIND_MOBILE"

    const-string v2, "/wp/bindwidget-rebindmobile"

    const-string v3, "\u6362\u7ed1\u624b\u673a"

    invoke-direct {v0, v1, v7, v2, v3}, Lcom/baidu/sapi2/utils/enums/BindWidgetAction;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/baidu/sapi2/utils/enums/BindWidgetAction;->REBIND_MOBILE:Lcom/baidu/sapi2/utils/enums/BindWidgetAction;

    new-instance v0, Lcom/baidu/sapi2/utils/enums/BindWidgetAction;

    const-string v1, "REBIND_EMAIL"

    const-string v2, "/wp/bindwidget-rebindemail"

    const-string v3, "\u6362\u7ed1\u90ae\u7bb1"

    invoke-direct {v0, v1, v8, v2, v3}, Lcom/baidu/sapi2/utils/enums/BindWidgetAction;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/baidu/sapi2/utils/enums/BindWidgetAction;->REBIND_EMAIL:Lcom/baidu/sapi2/utils/enums/BindWidgetAction;

    new-instance v0, Lcom/baidu/sapi2/utils/enums/BindWidgetAction;

    const-string v1, "UNBIND_MOBILE"

    const-string v2, "/wp/bindwidget-unbindmobile"

    const-string v3, "\u89e3\u7ed1\u624b\u673a"

    invoke-direct {v0, v1, v9, v2, v3}, Lcom/baidu/sapi2/utils/enums/BindWidgetAction;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/baidu/sapi2/utils/enums/BindWidgetAction;->UNBIND_MOBILE:Lcom/baidu/sapi2/utils/enums/BindWidgetAction;

    new-instance v0, Lcom/baidu/sapi2/utils/enums/BindWidgetAction;

    const-string v1, "UNBIND_EMAIL"

    const/4 v2, 0x5

    const-string v3, "/wp/bindwidget-unbindemail"

    const-string v4, "\u89e3\u7ed1\u90ae\u7bb1"

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/baidu/sapi2/utils/enums/BindWidgetAction;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/baidu/sapi2/utils/enums/BindWidgetAction;->UNBIND_EMAIL:Lcom/baidu/sapi2/utils/enums/BindWidgetAction;

    const/4 v0, 0x6

    new-array v0, v0, [Lcom/baidu/sapi2/utils/enums/BindWidgetAction;

    sget-object v1, Lcom/baidu/sapi2/utils/enums/BindWidgetAction;->BIND_MOBILE:Lcom/baidu/sapi2/utils/enums/BindWidgetAction;

    aput-object v1, v0, v5

    sget-object v1, Lcom/baidu/sapi2/utils/enums/BindWidgetAction;->BIND_EMAIL:Lcom/baidu/sapi2/utils/enums/BindWidgetAction;

    aput-object v1, v0, v6

    sget-object v1, Lcom/baidu/sapi2/utils/enums/BindWidgetAction;->REBIND_MOBILE:Lcom/baidu/sapi2/utils/enums/BindWidgetAction;

    aput-object v1, v0, v7

    sget-object v1, Lcom/baidu/sapi2/utils/enums/BindWidgetAction;->REBIND_EMAIL:Lcom/baidu/sapi2/utils/enums/BindWidgetAction;

    aput-object v1, v0, v8

    sget-object v1, Lcom/baidu/sapi2/utils/enums/BindWidgetAction;->UNBIND_MOBILE:Lcom/baidu/sapi2/utils/enums/BindWidgetAction;

    aput-object v1, v0, v9

    const/4 v1, 0x5

    sget-object v2, Lcom/baidu/sapi2/utils/enums/BindWidgetAction;->UNBIND_EMAIL:Lcom/baidu/sapi2/utils/enums/BindWidgetAction;

    aput-object v2, v0, v1

    sput-object v0, Lcom/baidu/sapi2/utils/enums/BindWidgetAction;->c:[Lcom/baidu/sapi2/utils/enums/BindWidgetAction;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Lcom/baidu/sapi2/utils/enums/BindWidgetAction;->a:Ljava/lang/String;

    iput-object p4, p0, Lcom/baidu/sapi2/utils/enums/BindWidgetAction;->b:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/baidu/sapi2/utils/enums/BindWidgetAction;
    .locals 1

    const-class v0, Lcom/baidu/sapi2/utils/enums/BindWidgetAction;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/baidu/sapi2/utils/enums/BindWidgetAction;

    return-object v0
.end method

.method public static values()[Lcom/baidu/sapi2/utils/enums/BindWidgetAction;
    .locals 1

    sget-object v0, Lcom/baidu/sapi2/utils/enums/BindWidgetAction;->c:[Lcom/baidu/sapi2/utils/enums/BindWidgetAction;

    invoke-virtual {v0}, [Lcom/baidu/sapi2/utils/enums/BindWidgetAction;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/baidu/sapi2/utils/enums/BindWidgetAction;

    return-object v0
.end method


# virtual methods
.method public getName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/baidu/sapi2/utils/enums/BindWidgetAction;->b:Ljava/lang/String;

    return-object v0
.end method

.method public getUri()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/baidu/sapi2/utils/enums/BindWidgetAction;->a:Ljava/lang/String;

    return-object v0
.end method
