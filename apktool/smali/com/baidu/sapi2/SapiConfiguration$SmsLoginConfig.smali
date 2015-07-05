.class public Lcom/baidu/sapi2/SapiConfiguration$SmsLoginConfig;
.super Ljava/lang/Object;


# instance fields
.field public final flagLoginBtnType:Lcom/baidu/sapi2/utils/enums/Switch;

.field public final flagShowFastRegLink:Lcom/baidu/sapi2/utils/enums/Switch;

.field public final flagShowLoginLink:Lcom/baidu/sapi2/utils/enums/Switch;

.field public final flagShowSmsLoginLink:Lcom/baidu/sapi2/utils/enums/Switch;


# direct methods
.method public constructor <init>(Lcom/baidu/sapi2/utils/enums/Switch;Lcom/baidu/sapi2/utils/enums/Switch;Lcom/baidu/sapi2/utils/enums/Switch;)V
    .locals 1
    .param p3    # Lcom/baidu/sapi2/utils/enums/Switch;
        .annotation runtime Ljava/lang/Deprecated;
        .end annotation
    .end param

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-nez p1, :cond_0

    sget-object p1, Lcom/baidu/sapi2/utils/enums/Switch;->OFF:Lcom/baidu/sapi2/utils/enums/Switch;

    :cond_0
    if-nez p2, :cond_1

    sget-object p2, Lcom/baidu/sapi2/utils/enums/Switch;->OFF:Lcom/baidu/sapi2/utils/enums/Switch;

    :cond_1
    if-nez p3, :cond_2

    sget-object p3, Lcom/baidu/sapi2/utils/enums/Switch;->OFF:Lcom/baidu/sapi2/utils/enums/Switch;

    :cond_2
    iput-object p1, p0, Lcom/baidu/sapi2/SapiConfiguration$SmsLoginConfig;->flagShowLoginLink:Lcom/baidu/sapi2/utils/enums/Switch;

    iput-object p2, p0, Lcom/baidu/sapi2/SapiConfiguration$SmsLoginConfig;->flagShowSmsLoginLink:Lcom/baidu/sapi2/utils/enums/Switch;

    iput-object p3, p0, Lcom/baidu/sapi2/SapiConfiguration$SmsLoginConfig;->flagLoginBtnType:Lcom/baidu/sapi2/utils/enums/Switch;

    sget-object v0, Lcom/baidu/sapi2/utils/enums/Switch;->OFF:Lcom/baidu/sapi2/utils/enums/Switch;

    iput-object v0, p0, Lcom/baidu/sapi2/SapiConfiguration$SmsLoginConfig;->flagShowFastRegLink:Lcom/baidu/sapi2/utils/enums/Switch;

    return-void
.end method

.method public constructor <init>(Lcom/baidu/sapi2/utils/enums/Switch;Lcom/baidu/sapi2/utils/enums/Switch;Lcom/baidu/sapi2/utils/enums/Switch;Lcom/baidu/sapi2/utils/enums/Switch;)V
    .locals 0
    .param p3    # Lcom/baidu/sapi2/utils/enums/Switch;
        .annotation runtime Ljava/lang/Deprecated;
        .end annotation
    .end param

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-nez p1, :cond_0

    sget-object p1, Lcom/baidu/sapi2/utils/enums/Switch;->OFF:Lcom/baidu/sapi2/utils/enums/Switch;

    :cond_0
    if-nez p2, :cond_1

    sget-object p2, Lcom/baidu/sapi2/utils/enums/Switch;->OFF:Lcom/baidu/sapi2/utils/enums/Switch;

    :cond_1
    if-nez p3, :cond_2

    sget-object p3, Lcom/baidu/sapi2/utils/enums/Switch;->OFF:Lcom/baidu/sapi2/utils/enums/Switch;

    :cond_2
    if-nez p4, :cond_3

    sget-object p4, Lcom/baidu/sapi2/utils/enums/Switch;->OFF:Lcom/baidu/sapi2/utils/enums/Switch;

    :cond_3
    iput-object p1, p0, Lcom/baidu/sapi2/SapiConfiguration$SmsLoginConfig;->flagShowLoginLink:Lcom/baidu/sapi2/utils/enums/Switch;

    iput-object p2, p0, Lcom/baidu/sapi2/SapiConfiguration$SmsLoginConfig;->flagShowSmsLoginLink:Lcom/baidu/sapi2/utils/enums/Switch;

    iput-object p3, p0, Lcom/baidu/sapi2/SapiConfiguration$SmsLoginConfig;->flagLoginBtnType:Lcom/baidu/sapi2/utils/enums/Switch;

    iput-object p4, p0, Lcom/baidu/sapi2/SapiConfiguration$SmsLoginConfig;->flagShowFastRegLink:Lcom/baidu/sapi2/utils/enums/Switch;

    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/baidu/sapi2/SapiConfiguration$SmsLoginConfig;->flagShowLoginLink:Lcom/baidu/sapi2/utils/enums/Switch;

    invoke-virtual {v1}, Lcom/baidu/sapi2/utils/enums/Switch;->ordinal()I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/baidu/sapi2/SapiConfiguration$SmsLoginConfig;->flagShowSmsLoginLink:Lcom/baidu/sapi2/utils/enums/Switch;

    invoke-virtual {v1}, Lcom/baidu/sapi2/utils/enums/Switch;->ordinal()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/baidu/sapi2/SapiConfiguration$SmsLoginConfig;->flagLoginBtnType:Lcom/baidu/sapi2/utils/enums/Switch;

    invoke-virtual {v1}, Lcom/baidu/sapi2/utils/enums/Switch;->ordinal()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
