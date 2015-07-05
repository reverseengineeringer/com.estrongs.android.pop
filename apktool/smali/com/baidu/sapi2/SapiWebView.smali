.class public final Lcom/baidu/sapi2/SapiWebView;
.super Landroid/webkit/WebView;


# static fields
.field public static final DEFAULT_TIMEOUT_MILLIS:J = 0x15f90L

.field private static final a:I = 0x1

.field private static final ad:Ljava/lang/String; = "javascript:(function(){if(window.Pass&&Pass.client&&Pass.client.net){Pass.client.net()}}())"

.field private static final b:I = 0x0

.field private static final c:Ljava/lang/String; = "http://www.baidu.com"

.field private static final d:Ljava/lang/String; = "__wp-action"

.field private static final e:Ljava/lang/String; = "auth-widget"

.field private static final f:Ljava/lang/String; = "forget-pwd"

.field private static final g:Ljava/lang/String; = "modify-pwd"

.field private static final h:Ljava/lang/String; = "text/html"

.field private static final i:Ljava/lang/String; = "UTF-8"

.field private static final j:Ljava/lang/String; = "<link href=\"\" type=text/css rel=stylesheet id=product-skin>"

.field private static final k:Ljava/lang/String; = "file:///android_asset"

.field private static final l:Ljava/lang/String; = "#login"

.field private static final m:Ljava/lang/String; = "#authPwd"

.field private static final n:Ljava/lang/String; = "#reg"

.field private static final o:Ljava/lang/String; = "#canshare_accounts"

.field private static final p:Ljava/lang/String; = "#sms_login"

.field private static final q:Ljava/lang/String; = "#fastReg"

.field private static final r:Ljava/lang/String; = "#fastRegSuccess"

.field private static final s:Ljava/lang/String; = "#fastRegVerify"

.field private static final t:Ljava/lang/String; = "\u60a8\u7684\u624b\u673a\u88ab\u6076\u610f\u8f6f\u4ef6\u7be1\u6539\uff0c\u53ef\u80fd\u65e0\u6cd5\u4f7f\u7528\u7b2c\u4e09\u65b9\u5e10\u53f7\u767b\u5f55\u767e\u5ea6\uff0c\u8bf7\u66f4\u6362\u5176\u4ed6\u767b\u5f55\u65b9\u5f0f"

.field private static final u:Ljava/lang/String; = "\u5df2\u81ea\u52a8\u8bc6\u522b\u5e76\u586b\u5199\u77ed\u4fe1\u9a8c\u8bc1\u7801"

.field private static final v:Ljava/lang/String; = "\u53d1\u9001\u4e00\u6761\u77ed\u4fe1\uff0c\u5373\u53ef\u5b8c\u6210\u6ce8\u518c\u3002"

.field private static final w:Ljava/lang/String; = "\u670d\u52a1\u9519\u8bef\uff0c\u8bf7\u7a0d\u540e\u91cd\u8bd5"

.field private static final x:Ljava/lang/String; = "\u5fae\u4fe1\u672a\u5b89\u88c5"


# instance fields
.field private A:Landroid/os/Handler;

.field private B:Landroid/os/Handler;

.field private C:Landroid/os/Handler;

.field private D:Lcom/baidu/sapi2/SapiWebView$FastRegHandler;

.field private E:Lcom/baidu/sapi2/SapiWebView$VoiceLoginHandler;

.field private F:Lcom/baidu/sapi2/SapiWebView$NMLoginHandler;

.field private G:Lcom/baidu/sapi2/SapiWebView$LCLoginHandler;

.field private H:Lcom/baidu/sapi2/SapiWebView$UniteVerifyHandler;

.field private I:Lcom/baidu/sapi2/SapiWebView$WeixinHandler;

.field private J:Lcom/baidu/sapi2/SapiWebView$ChangePwdCallback;

.field private K:Lcom/baidu/sapi2/SapiWebView$AuthWidgetCallback;

.field private L:Lcom/baidu/sapi2/SapiWebView$UniteVerifyCallback;

.field private M:Lcom/baidu/sapi2/SapiWebView$UniteBindCallback;

.field private N:Lcom/baidu/sapi2/plugin/sso/SsoHandler;

.field private O:Landroid/view/View;

.field private P:Landroid/view/View;

.field private Q:Ljava/lang/String;

.field private R:Landroid/widget/ProgressBar;

.field private S:Landroid/app/ProgressDialog;

.field private T:J

.field private U:Landroid/os/Handler;

.field private V:Lcom/baidu/sapi2/SapiWebView$TimeoutTask;

.field private W:Landroid/content/BroadcastReceiver;

.field private Z:Lcom/baidu/sapi2/SapiWebView$SmsHandler;

.field private aa:Ljava/lang/Runnable;

.field private ab:Lcom/baidu/sapi2/SapiWebView$OnFinishCallback;

.field private ac:Lcom/baidu/sapi2/SapiWebView$OnBackCallback;

.field private ae:Lcom/baidu/sapi2/SapiWebView$FastRegAction;

.field private af:Lcom/baidu/sapi2/shell/response/SapiAccountResponse;

.field private y:Lcom/baidu/sapi2/SapiConfiguration;

.field private z:Lcom/baidu/sapi2/shell/listener/AuthorizationListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    invoke-direct {p0, p1}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    new-instance v0, Lcom/baidu/sapi2/SapiWebView$1;

    invoke-direct {v0, p0}, Lcom/baidu/sapi2/SapiWebView$1;-><init>(Lcom/baidu/sapi2/SapiWebView;)V

    iput-object v0, p0, Lcom/baidu/sapi2/SapiWebView;->U:Landroid/os/Handler;

    new-instance v0, Lcom/baidu/sapi2/SapiWebView$TimeoutTask;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/baidu/sapi2/SapiWebView$TimeoutTask;-><init>(Lcom/baidu/sapi2/SapiWebView;Lcom/baidu/sapi2/SapiWebView$1;)V

    iput-object v0, p0, Lcom/baidu/sapi2/SapiWebView;->V:Lcom/baidu/sapi2/SapiWebView$TimeoutTask;

    invoke-direct {p0}, Lcom/baidu/sapi2/SapiWebView;->a()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    invoke-direct {p0, p1, p2}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    new-instance v0, Lcom/baidu/sapi2/SapiWebView$1;

    invoke-direct {v0, p0}, Lcom/baidu/sapi2/SapiWebView$1;-><init>(Lcom/baidu/sapi2/SapiWebView;)V

    iput-object v0, p0, Lcom/baidu/sapi2/SapiWebView;->U:Landroid/os/Handler;

    new-instance v0, Lcom/baidu/sapi2/SapiWebView$TimeoutTask;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/baidu/sapi2/SapiWebView$TimeoutTask;-><init>(Lcom/baidu/sapi2/SapiWebView;Lcom/baidu/sapi2/SapiWebView$1;)V

    iput-object v0, p0, Lcom/baidu/sapi2/SapiWebView;->V:Lcom/baidu/sapi2/SapiWebView$TimeoutTask;

    invoke-direct {p0}, Lcom/baidu/sapi2/SapiWebView;->a()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2

    invoke-direct {p0, p1, p2, p3}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    new-instance v0, Lcom/baidu/sapi2/SapiWebView$1;

    invoke-direct {v0, p0}, Lcom/baidu/sapi2/SapiWebView$1;-><init>(Lcom/baidu/sapi2/SapiWebView;)V

    iput-object v0, p0, Lcom/baidu/sapi2/SapiWebView;->U:Landroid/os/Handler;

    new-instance v0, Lcom/baidu/sapi2/SapiWebView$TimeoutTask;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/baidu/sapi2/SapiWebView$TimeoutTask;-><init>(Lcom/baidu/sapi2/SapiWebView;Lcom/baidu/sapi2/SapiWebView$1;)V

    iput-object v0, p0, Lcom/baidu/sapi2/SapiWebView;->V:Lcom/baidu/sapi2/SapiWebView$TimeoutTask;

    invoke-direct {p0}, Lcom/baidu/sapi2/SapiWebView;->a()V

    return-void
.end method

.method static synthetic A(Lcom/baidu/sapi2/SapiWebView;)Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/baidu/sapi2/SapiWebView;->O:Landroid/view/View;

    return-object v0
.end method

.method static synthetic B(Lcom/baidu/sapi2/SapiWebView;)Landroid/app/ProgressDialog;
    .locals 1

    iget-object v0, p0, Lcom/baidu/sapi2/SapiWebView;->S:Landroid/app/ProgressDialog;

    return-object v0
.end method

.method static synthetic C(Lcom/baidu/sapi2/SapiWebView;)Lcom/baidu/sapi2/SapiWebView$WeixinHandler;
    .locals 1

    iget-object v0, p0, Lcom/baidu/sapi2/SapiWebView;->I:Lcom/baidu/sapi2/SapiWebView$WeixinHandler;

    return-object v0
.end method

.method static synthetic a(Lcom/baidu/sapi2/SapiWebView;Landroid/app/ProgressDialog;)Landroid/app/ProgressDialog;
    .locals 0

    iput-object p1, p0, Lcom/baidu/sapi2/SapiWebView;->S:Landroid/app/ProgressDialog;

    return-object p1
.end method

.method static a(Landroid/content/Context;Ljava/lang/String;)Lcom/baidu/sapi2/shell/response/SapiAccountResponse;
    .locals 5

    const/4 v0, 0x0

    const-string v1, "<client>([\\S\\s]*?)</client>"

    invoke-static {v1, p1}, Lcom/baidu/sapi2/SapiWebView;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    :try_start_0
    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v3

    new-instance v2, Ljava/io/ByteArrayInputStream;

    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-direct {v2, v1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    const-string v1, "UTF-8"

    invoke-interface {v3, v2, v1}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    invoke-interface {v3}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result v1

    move v4, v1

    move-object v1, v0

    move v0, v4

    :goto_1
    const/4 v2, 0x1

    if-eq v0, v2, :cond_11

    packed-switch v0, :pswitch_data_0

    :cond_2
    :goto_2
    :pswitch_0
    :try_start_1
    invoke-interface {v3}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v0

    goto :goto_1

    :pswitch_1
    invoke-interface {v3}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v2, "data"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    if-nez v1, :cond_2

    new-instance v2, Lcom/baidu/sapi2/shell/response/SocialResponse;

    invoke-direct {v2}, Lcom/baidu/sapi2/shell/response/SocialResponse;-><init>()V

    move-object v1, v2

    goto :goto_2

    :cond_3
    if-nez v1, :cond_4

    const-string v2, "error_code"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    new-instance v2, Lcom/baidu/sapi2/shell/response/SocialResponse;

    invoke-direct {v2}, Lcom/baidu/sapi2/shell/response/SocialResponse;-><init>()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    :try_start_2
    invoke-interface {v3}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, v2, Lcom/baidu/sapi2/shell/response/SocialResponse;->errorCode:I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    move-object v1, v2

    goto :goto_2

    :cond_4
    if-nez v1, :cond_5

    :try_start_3
    const-string v2, "error_description"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_5

    new-instance v2, Lcom/baidu/sapi2/shell/response/SocialResponse;

    invoke-direct {v2}, Lcom/baidu/sapi2/shell/response/SocialResponse;-><init>()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    :try_start_4
    invoke-interface {v3}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v2, Lcom/baidu/sapi2/shell/response/SocialResponse;->errorMsg:Ljava/lang/String;
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3

    move-object v1, v2

    goto :goto_2

    :cond_5
    if-eqz v1, :cond_2

    :try_start_5
    const-string v2, "error_code"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_7

    invoke-interface {v3}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, v1, Lcom/baidu/sapi2/shell/response/SocialResponse;->errorCode:I
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0

    goto :goto_2

    :catch_0
    move-exception v0

    :goto_3
    invoke-static {v0}, Lcom/baidu/sapi2/utils/L;->e(Ljava/lang/Throwable;)V

    move-object v0, v1

    :goto_4
    if-eqz v0, :cond_0

    new-instance v1, Lcom/baidu/sapi2/SapiAccount;

    invoke-direct {v1}, Lcom/baidu/sapi2/SapiAccount;-><init>()V

    iget-object v2, v0, Lcom/baidu/sapi2/shell/response/SocialResponse;->uid:Ljava/lang/String;

    iput-object v2, v1, Lcom/baidu/sapi2/SapiAccount;->uid:Ljava/lang/String;

    iget-object v2, v0, Lcom/baidu/sapi2/shell/response/SocialResponse;->bduss:Ljava/lang/String;

    iput-object v2, v1, Lcom/baidu/sapi2/SapiAccount;->bduss:Ljava/lang/String;

    iget-object v2, v0, Lcom/baidu/sapi2/shell/response/SocialResponse;->displayname:Ljava/lang/String;

    iput-object v2, v1, Lcom/baidu/sapi2/SapiAccount;->displayname:Ljava/lang/String;

    iget-object v2, v0, Lcom/baidu/sapi2/shell/response/SocialResponse;->username:Ljava/lang/String;

    iput-object v2, v1, Lcom/baidu/sapi2/SapiAccount;->username:Ljava/lang/String;

    iget-object v2, v0, Lcom/baidu/sapi2/shell/response/SocialResponse;->stoken:Ljava/lang/String;

    iput-object v2, v1, Lcom/baidu/sapi2/SapiAccount;->stoken:Ljava/lang/String;

    iget-object v2, v0, Lcom/baidu/sapi2/shell/response/SocialResponse;->ptoken:Ljava/lang/String;

    iput-object v2, v1, Lcom/baidu/sapi2/SapiAccount;->ptoken:Ljava/lang/String;

    invoke-static {p0}, Lcom/baidu/sapi2/utils/SapiUtils;->getAppName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/baidu/sapi2/SapiAccount;->app:Ljava/lang/String;

    iget-object v2, v0, Lcom/baidu/sapi2/shell/response/SocialResponse;->socialType:Lcom/baidu/sapi2/utils/enums/SocialType;

    iget-object v3, v0, Lcom/baidu/sapi2/shell/response/SocialResponse;->socialPortraitUrl:Ljava/lang/String;

    invoke-static {v1, v2, v3}, Lcom/baidu/sapi2/utils/d;->a(Lcom/baidu/sapi2/SapiAccount;Lcom/baidu/sapi2/utils/enums/SocialType;Ljava/lang/String;)V

    invoke-static {v1}, Lcom/baidu/sapi2/utils/SapiUtils;->isValidAccount(Lcom/baidu/sapi2/SapiAccount;)Z

    move-result v2

    if-eqz v2, :cond_6

    const/4 v2, 0x0

    iput v2, v0, Lcom/baidu/sapi2/shell/response/SocialResponse;->errorCode:I

    :cond_6
    invoke-static {}, Lcom/baidu/sapi2/share/b;->a()Lcom/baidu/sapi2/share/b;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/baidu/sapi2/share/b;->a(Lcom/baidu/sapi2/SapiAccount;)V

    goto/16 :goto_0

    :cond_7
    :try_start_6
    const-string v2, "error_description"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_8

    invoke-interface {v3}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/baidu/sapi2/shell/response/SocialResponse;->errorMsg:Ljava/lang/String;

    goto/16 :goto_2

    :cond_8
    const-string v2, "is_binded"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_9

    invoke-interface {v3}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v0

    const-string v2, "1"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    iput-boolean v0, v1, Lcom/baidu/sapi2/shell/response/SocialResponse;->isBinded:Z

    goto/16 :goto_2

    :cond_9
    const-string v2, "display_name"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_a

    invoke-interface {v3}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/baidu/sapi2/shell/response/SocialResponse;->displayname:Ljava/lang/String;

    goto/16 :goto_2

    :cond_a
    const-string v2, "passport_uname"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_b

    invoke-interface {v3}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/baidu/sapi2/shell/response/SocialResponse;->username:Ljava/lang/String;

    goto/16 :goto_2

    :cond_b
    const-string v2, "bduid"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_c

    invoke-interface {v3}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/baidu/sapi2/shell/response/SocialResponse;->uid:Ljava/lang/String;

    goto/16 :goto_2

    :cond_c
    const-string v2, "bduss"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_d

    invoke-interface {v3}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/baidu/sapi2/shell/response/SocialResponse;->bduss:Ljava/lang/String;

    goto/16 :goto_2

    :cond_d
    const-string v2, "ptoken"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_e

    invoke-interface {v3}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/baidu/sapi2/shell/response/SocialResponse;->ptoken:Ljava/lang/String;

    goto/16 :goto_2

    :cond_e
    const-string v2, "os_username"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_f

    invoke-interface {v3}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/baidu/sapi2/shell/response/SocialResponse;->socialUname:Ljava/lang/String;

    goto/16 :goto_2

    :cond_f
    const-string v2, "os_headurl"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_10

    invoke-interface {v3}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/baidu/sapi2/shell/response/SocialResponse;->socialPortraitUrl:Ljava/lang/String;

    goto/16 :goto_2

    :cond_10
    const-string v2, "os_type"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v3}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Lcom/baidu/sapi2/utils/enums/SocialType;->getSocialType(I)Lcom/baidu/sapi2/utils/enums/SocialType;

    move-result-object v0

    iput-object v0, v1, Lcom/baidu/sapi2/shell/response/SocialResponse;->socialType:Lcom/baidu/sapi2/utils/enums/SocialType;
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0

    goto/16 :goto_2

    :cond_11
    move-object v0, v1

    goto/16 :goto_4

    :catch_1
    move-exception v1

    move-object v4, v1

    move-object v1, v0

    move-object v0, v4

    goto/16 :goto_3

    :catch_2
    move-exception v0

    move-object v1, v2

    goto/16 :goto_3

    :catch_3
    move-exception v0

    move-object v1, v2

    goto/16 :goto_3

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method static synthetic a(Lcom/baidu/sapi2/SapiWebView;Lcom/baidu/sapi2/shell/response/SapiAccountResponse;)Lcom/baidu/sapi2/shell/response/SapiAccountResponse;
    .locals 0

    iput-object p1, p0, Lcom/baidu/sapi2/SapiWebView;->af:Lcom/baidu/sapi2/shell/response/SapiAccountResponse;

    return-object p1
.end method

.method static a(Ljava/lang/String;)Lcom/baidu/sapi2/shell/response/SapiAccountResponse;
    .locals 7

    const/4 v0, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x0

    const-string v1, "<client>([\\S\\s]*?)</client>"

    invoke-static {v1, p0}, Lcom/baidu/sapi2/SapiWebView;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    :try_start_0
    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v5

    new-instance v2, Ljava/io/ByteArrayInputStream;

    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-direct {v2, v1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    const-string v1, "UTF-8"

    invoke-interface {v5, v2, v1}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    invoke-interface {v5}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    move-result v1

    move v6, v1

    move-object v1, v0

    move v0, v6

    :goto_1
    if-eq v0, v3, :cond_13

    packed-switch v0, :pswitch_data_0

    :cond_2
    :goto_2
    :pswitch_0
    :try_start_1
    invoke-interface {v5}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v0

    goto :goto_1

    :pswitch_1
    invoke-interface {v5}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v2, "data"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    if-nez v1, :cond_2

    new-instance v2, Lcom/baidu/sapi2/shell/response/SapiAccountResponse;

    invoke-direct {v2}, Lcom/baidu/sapi2/shell/response/SapiAccountResponse;-><init>()V

    move-object v1, v2

    goto :goto_2

    :cond_3
    if-nez v1, :cond_4

    const-string v2, "error_code"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    new-instance v2, Lcom/baidu/sapi2/shell/response/SapiAccountResponse;

    invoke-direct {v2}, Lcom/baidu/sapi2/shell/response/SapiAccountResponse;-><init>()V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    :try_start_2
    invoke-interface {v5}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, v2, Lcom/baidu/sapi2/shell/response/SapiAccountResponse;->errorCode:I
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_2

    move-object v1, v2

    goto :goto_2

    :cond_4
    if-nez v1, :cond_5

    :try_start_3
    const-string v2, "error_description"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_5

    new-instance v2, Lcom/baidu/sapi2/shell/response/SapiAccountResponse;

    invoke-direct {v2}, Lcom/baidu/sapi2/shell/response/SapiAccountResponse;-><init>()V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_0

    :try_start_4
    invoke-interface {v5}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v2, Lcom/baidu/sapi2/shell/response/SapiAccountResponse;->errorMsg:Ljava/lang/String;
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_3

    move-object v1, v2

    goto :goto_2

    :cond_5
    if-eqz v1, :cond_2

    :try_start_5
    const-string v2, "errno"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-interface {v5}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, v1, Lcom/baidu/sapi2/shell/response/SapiAccountResponse;->errorCode:I
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_0

    goto :goto_2

    :catch_0
    move-exception v0

    :goto_3
    invoke-static {v0}, Lcom/baidu/sapi2/utils/L;->e(Ljava/lang/Throwable;)V

    move-object v0, v1

    :goto_4
    if-eqz v0, :cond_0

    iget-object v1, v0, Lcom/baidu/sapi2/shell/response/SapiAccountResponse;->bduss:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    iget v1, v0, Lcom/baidu/sapi2/shell/response/SapiAccountResponse;->errorCode:I

    const/16 v2, -0x64

    if-ne v1, v2, :cond_0

    iput v4, v0, Lcom/baidu/sapi2/shell/response/SapiAccountResponse;->errorCode:I

    goto/16 :goto_0

    :cond_6
    :try_start_6
    const-string v2, "uname"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_7

    invoke-interface {v5}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/baidu/sapi2/shell/response/SapiAccountResponse;->username:Ljava/lang/String;

    goto/16 :goto_2

    :cond_7
    const-string v2, "errmsg"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_8

    invoke-interface {v5}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/baidu/sapi2/shell/response/SapiAccountResponse;->errorMsg:Ljava/lang/String;

    goto/16 :goto_2

    :cond_8
    const-string v2, "bduss"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_9

    invoke-interface {v5}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/baidu/sapi2/shell/response/SapiAccountResponse;->bduss:Ljava/lang/String;

    goto/16 :goto_2

    :cond_9
    const-string v2, "ptoken"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_a

    invoke-interface {v5}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/baidu/sapi2/shell/response/SapiAccountResponse;->ptoken:Ljava/lang/String;

    goto/16 :goto_2

    :cond_a
    const-string v2, "stoken"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_b

    invoke-interface {v5}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/baidu/sapi2/shell/response/SapiAccountResponse;->stoken:Ljava/lang/String;

    goto/16 :goto_2

    :cond_b
    const-string v2, "displayname"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_c

    invoke-interface {v5}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/baidu/sapi2/shell/response/SapiAccountResponse;->displayname:Ljava/lang/String;

    goto/16 :goto_2

    :cond_c
    const-string v2, "uid"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_d

    invoke-interface {v5}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/baidu/sapi2/shell/response/SapiAccountResponse;->uid:Ljava/lang/String;

    goto/16 :goto_2

    :cond_d
    const-string v2, "authsid"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_f

    invoke-interface {v5}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/baidu/sapi2/shell/response/SapiAccountResponse;->authSid:Ljava/lang/String;

    iget-object v0, v1, Lcom/baidu/sapi2/shell/response/SapiAccountResponse;->authSid:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_e

    move v0, v3

    :goto_5
    iput-boolean v0, v1, Lcom/baidu/sapi2/shell/response/SapiAccountResponse;->newReg:Z

    goto/16 :goto_2

    :cond_e
    move v0, v4

    goto :goto_5

    :cond_f
    const-string v2, "account"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_10

    iget-object v0, v1, Lcom/baidu/sapi2/shell/response/SapiAccountResponse;->reloginCredentials:Lcom/baidu/sapi2/SapiAccount$ReloginCredentials;

    invoke-interface {v5}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/baidu/sapi2/SapiAccount$ReloginCredentials;->account:Ljava/lang/String;

    goto/16 :goto_2

    :cond_10
    const-string v2, "accounttype"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_11

    iget-object v0, v1, Lcom/baidu/sapi2/shell/response/SapiAccountResponse;->reloginCredentials:Lcom/baidu/sapi2/SapiAccount$ReloginCredentials;

    invoke-interface {v5}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/baidu/sapi2/SapiAccount$ReloginCredentials;->accountType:Ljava/lang/String;

    goto/16 :goto_2

    :cond_11
    const-string v2, "password"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_12

    iget-object v0, v1, Lcom/baidu/sapi2/shell/response/SapiAccountResponse;->reloginCredentials:Lcom/baidu/sapi2/SapiAccount$ReloginCredentials;

    invoke-interface {v5}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/baidu/sapi2/SapiAccount$ReloginCredentials;->password:Ljava/lang/String;

    goto/16 :goto_2

    :cond_12
    const-string v2, "ubi"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, v1, Lcom/baidu/sapi2/shell/response/SapiAccountResponse;->reloginCredentials:Lcom/baidu/sapi2/SapiAccount$ReloginCredentials;

    invoke-interface {v5}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/baidu/sapi2/SapiAccount$ReloginCredentials;->ubi:Ljava/lang/String;
    :try_end_6
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_0

    goto/16 :goto_2

    :cond_13
    move-object v0, v1

    goto/16 :goto_4

    :catch_1
    move-exception v1

    move-object v6, v1

    move-object v1, v0

    move-object v0, v6

    goto/16 :goto_3

    :catch_2
    move-exception v0

    move-object v1, v2

    goto/16 :goto_3

    :catch_3
    move-exception v0

    move-object v1, v2

    goto/16 :goto_3

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method static a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    const-string v0, ""

    invoke-static {p0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    return-object v0

    :cond_1
    invoke-virtual {v1, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    :goto_0
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->find()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v1}, Ljava/util/regex/Matcher;->group()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private a()V
    .locals 2
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "AddJavascriptInterface"
        }
    .end annotation

    const-wide/32 v0, 0x15f90

    iput-wide v0, p0, Lcom/baidu/sapi2/SapiWebView;->T:J

    const-string v0, "\u5df2\u81ea\u52a8\u8bc6\u522b\u5e76\u586b\u5199\u77ed\u4fe1\u9a8c\u8bc1\u7801"

    iput-object v0, p0, Lcom/baidu/sapi2/SapiWebView;->Q:Ljava/lang/String;

    invoke-static {}, Lcom/baidu/sapi2/SapiAccountManager;->getInstance()Lcom/baidu/sapi2/SapiAccountManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/sapi2/SapiAccountManager;->getSapiConfiguration()Lcom/baidu/sapi2/SapiConfiguration;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/sapi2/SapiWebView;->y:Lcom/baidu/sapi2/SapiConfiguration;

    invoke-direct {p0}, Lcom/baidu/sapi2/SapiWebView;->b()V

    new-instance v0, Lcom/baidu/sapi2/SapiWebView$SapiWebViewShell;

    invoke-direct {v0, p0}, Lcom/baidu/sapi2/SapiWebView$SapiWebViewShell;-><init>(Lcom/baidu/sapi2/SapiWebView;)V

    const-string v1, "sapi_obj"

    invoke-virtual {p0, v0, v1}, Lcom/baidu/sapi2/SapiWebView;->addJavascriptInterface(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/baidu/sapi2/SapiWebView$2;

    invoke-direct {v0, p0}, Lcom/baidu/sapi2/SapiWebView$2;-><init>(Lcom/baidu/sapi2/SapiWebView;)V

    invoke-virtual {p0, v0}, Lcom/baidu/sapi2/SapiWebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    new-instance v0, Lcom/baidu/sapi2/SapiWebView$3;

    invoke-direct {v0, p0}, Lcom/baidu/sapi2/SapiWebView$3;-><init>(Lcom/baidu/sapi2/SapiWebView;)V

    invoke-virtual {p0, v0}, Lcom/baidu/sapi2/SapiWebView;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    iget-object v0, p0, Lcom/baidu/sapi2/SapiWebView;->z:Lcom/baidu/sapi2/shell/listener/AuthorizationListener;

    if-nez v0, :cond_0

    new-instance v0, Lcom/baidu/sapi2/SapiWebView$DefaultAuthorizationListener;

    invoke-direct {v0, p0}, Lcom/baidu/sapi2/SapiWebView$DefaultAuthorizationListener;-><init>(Lcom/baidu/sapi2/SapiWebView;)V

    iput-object v0, p0, Lcom/baidu/sapi2/SapiWebView;->z:Lcom/baidu/sapi2/shell/listener/AuthorizationListener;

    :cond_0
    iget-object v0, p0, Lcom/baidu/sapi2/SapiWebView;->I:Lcom/baidu/sapi2/SapiWebView$WeixinHandler;

    if-nez v0, :cond_1

    new-instance v0, Lcom/baidu/sapi2/SapiWebView$DefaultWeixinHandler;

    invoke-direct {v0, p0}, Lcom/baidu/sapi2/SapiWebView$DefaultWeixinHandler;-><init>(Lcom/baidu/sapi2/SapiWebView;)V

    iput-object v0, p0, Lcom/baidu/sapi2/SapiWebView;->I:Lcom/baidu/sapi2/SapiWebView$WeixinHandler;

    :cond_1
    new-instance v0, Lcom/baidu/sapi2/SapiWebView$SmsHandler;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/baidu/sapi2/SapiWebView$SmsHandler;-><init>(Lcom/baidu/sapi2/SapiWebView;Lcom/baidu/sapi2/SapiWebView$1;)V

    iput-object v0, p0, Lcom/baidu/sapi2/SapiWebView;->Z:Lcom/baidu/sapi2/SapiWebView$SmsHandler;

    new-instance v0, Lcom/baidu/sapi2/SapiWebView$4;

    invoke-direct {v0, p0}, Lcom/baidu/sapi2/SapiWebView$4;-><init>(Lcom/baidu/sapi2/SapiWebView;)V

    iput-object v0, p0, Lcom/baidu/sapi2/SapiWebView;->aa:Ljava/lang/Runnable;

    return-void
.end method

.method private a(I)V
    .locals 2

    invoke-static {}, Lcom/baidu/sapi2/SapiAccountManager;->getInstance()Lcom/baidu/sapi2/SapiAccountManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/sapi2/SapiAccountManager;->getAccountService()Lcom/baidu/sapi2/shell/SapiAccountService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/sapi2/shell/SapiAccountService;->a()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "&loginInitType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-direct {p0, p1}, Lcom/baidu/sapi2/SapiWebView;->b(I)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "#canshare_accounts"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/baidu/sapi2/SapiWebView;->loadUrl(Ljava/lang/String;)V

    return-void
.end method

.method private a(Landroid/os/Handler;)V
    .locals 3

    iget-object v0, p0, Lcom/baidu/sapi2/SapiWebView;->W:Landroid/content/BroadcastReceiver;

    if-nez v0, :cond_0

    new-instance v0, Lcom/baidu/sapi2/SapiWebView$SMSReceiver;

    invoke-direct {v0, p1}, Lcom/baidu/sapi2/SapiWebView$SMSReceiver;-><init>(Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/baidu/sapi2/SapiWebView;->W:Landroid/content/BroadcastReceiver;

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "android.provider.Telephony.SMS_RECEIVED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const v1, 0x7fffffff

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->setPriority(I)V

    invoke-virtual {p0}, Lcom/baidu/sapi2/SapiWebView;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/baidu/sapi2/SapiWebView;->W:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    :cond_0
    return-void
.end method

.method static synthetic a(Lcom/baidu/sapi2/SapiWebView;)V
    .locals 0

    invoke-direct {p0}, Lcom/baidu/sapi2/SapiWebView;->f()V

    return-void
.end method

.method static synthetic a(Lcom/baidu/sapi2/SapiWebView;Landroid/os/Handler;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/baidu/sapi2/SapiWebView;->a(Landroid/os/Handler;)V

    return-void
.end method

.method static synthetic a(Lcom/baidu/sapi2/SapiWebView;Ljava/lang/String;)V
    .locals 0

    invoke-super {p0, p1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic a(Lcom/baidu/sapi2/SapiWebView;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-super/range {p0 .. p5}, Landroid/webkit/WebView;->loadDataWithBaseURL(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private a(Lcom/baidu/sapi2/shell/response/SapiAccountResponse;)V
    .locals 2

    iput-object p1, p0, Lcom/baidu/sapi2/SapiWebView;->af:Lcom/baidu/sapi2/shell/response/SapiAccountResponse;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/baidu/sapi2/SapiAccountManager;->getInstance()Lcom/baidu/sapi2/SapiAccountManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/baidu/sapi2/SapiAccountManager;->getAccountService()Lcom/baidu/sapi2/shell/SapiAccountService;

    move-result-object v1

    invoke-virtual {v1}, Lcom/baidu/sapi2/shell/SapiAccountService;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "&authsid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p1, Lcom/baidu/sapi2/shell/response/SapiAccountResponse;->authSid:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "&bduss="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p1, Lcom/baidu/sapi2/shell/response/SapiAccountResponse;->bduss:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "&ptoken="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p1, Lcom/baidu/sapi2/shell/response/SapiAccountResponse;->ptoken:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "&stoken="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p1, Lcom/baidu/sapi2/shell/response/SapiAccountResponse;->stoken:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "#fastRegSuccess"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/baidu/sapi2/SapiWebView;->loadUrl(Ljava/lang/String;)V

    return-void
.end method

.method private b(I)I
    .locals 1

    if-nez p1, :cond_1

    iget-object v0, p0, Lcom/baidu/sapi2/SapiWebView;->y:Lcom/baidu/sapi2/SapiConfiguration;

    iget-object v0, v0, Lcom/baidu/sapi2/SapiConfiguration;->smsLoginConfig:Lcom/baidu/sapi2/SapiConfiguration$SmsLoginConfig;

    iget-object v0, v0, Lcom/baidu/sapi2/SapiConfiguration$SmsLoginConfig;->flagLoginBtnType:Lcom/baidu/sapi2/utils/enums/Switch;

    invoke-virtual {v0}, Lcom/baidu/sapi2/utils/enums/Switch;->ordinal()I

    move-result p1

    :cond_0
    :goto_0
    return p1

    :cond_1
    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    const/4 v0, 0x2

    if-eq p1, v0, :cond_0

    const/4 p1, 0x0

    goto :goto_0
.end method

.method static synthetic b(Lcom/baidu/sapi2/SapiWebView;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/baidu/sapi2/SapiWebView;->U:Landroid/os/Handler;

    return-object v0
.end method

.method static b(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    :try_start_0
    invoke-static {}, Lcom/baidu/sapi2/SapiAccountManager;->getInstance()Lcom/baidu/sapi2/SapiAccountManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/sapi2/SapiAccountManager;->getSapiConfiguration()Lcom/baidu/sapi2/SapiConfiguration;

    move-result-object v0

    iget-object v0, v0, Lcom/baidu/sapi2/SapiConfiguration;->skin:Ljava/lang/String;

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "file:///android_asset"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "<link href=\"\" type=text/css rel=stylesheet id=product-skin>"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "<link type=\"text/css\" rel=\"stylesheet\" href=\""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "\">"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    :cond_0
    :goto_0
    return-object p0

    :cond_1
    const-string v0, "<link href=\"\" type=text/css rel=stylesheet id=product-skin>"

    const-string v1, ""

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object p0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/baidu/sapi2/utils/L;->e(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method private b()V
    .locals 3
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "SetJavaScriptEnabled"
        }
    .end annotation

    const/4 v2, 0x0

    invoke-virtual {p0}, Lcom/baidu/sapi2/SapiWebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    invoke-virtual {p0, v2}, Lcom/baidu/sapi2/SapiWebView;->setScrollBarStyle(I)V

    invoke-virtual {p0}, Lcom/baidu/sapi2/SapiWebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/webkit/WebSettings;->setSaveFormData(Z)V

    invoke-virtual {p0}, Lcom/baidu/sapi2/SapiWebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/webkit/WebSettings;->setSavePassword(Z)V

    new-instance v0, Lcom/baidu/sapi2/SapiWebView$5;

    invoke-direct {v0, p0}, Lcom/baidu/sapi2/SapiWebView$5;-><init>(Lcom/baidu/sapi2/SapiWebView;)V

    invoke-virtual {p0, v0}, Lcom/baidu/sapi2/SapiWebView;->setDownloadListener(Landroid/webkit/DownloadListener;)V

    return-void
.end method

.method static synthetic b(Lcom/baidu/sapi2/SapiWebView;Lcom/baidu/sapi2/shell/response/SapiAccountResponse;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/baidu/sapi2/SapiWebView;->a(Lcom/baidu/sapi2/shell/response/SapiAccountResponse;)V

    return-void
.end method

.method static synthetic b(Lcom/baidu/sapi2/SapiWebView;Ljava/lang/String;)V
    .locals 0

    invoke-super {p0, p1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    return-void
.end method

.method private b(Lcom/baidu/sapi2/shell/response/SapiAccountResponse;)V
    .locals 4

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    new-instance v0, Lcom/baidu/sapi2/SapiAccount;

    invoke-direct {v0}, Lcom/baidu/sapi2/SapiAccount;-><init>()V

    iget-object v1, p1, Lcom/baidu/sapi2/shell/response/SapiAccountResponse;->uid:Ljava/lang/String;

    iput-object v1, v0, Lcom/baidu/sapi2/SapiAccount;->uid:Ljava/lang/String;

    iget-object v1, p1, Lcom/baidu/sapi2/shell/response/SapiAccountResponse;->bduss:Ljava/lang/String;

    iput-object v1, v0, Lcom/baidu/sapi2/SapiAccount;->bduss:Ljava/lang/String;

    iget-object v1, p1, Lcom/baidu/sapi2/shell/response/SapiAccountResponse;->displayname:Ljava/lang/String;

    iput-object v1, v0, Lcom/baidu/sapi2/SapiAccount;->displayname:Ljava/lang/String;

    iget-object v1, p1, Lcom/baidu/sapi2/shell/response/SapiAccountResponse;->stoken:Ljava/lang/String;

    iput-object v1, v0, Lcom/baidu/sapi2/SapiAccount;->stoken:Ljava/lang/String;

    iget-object v1, p1, Lcom/baidu/sapi2/shell/response/SapiAccountResponse;->ptoken:Ljava/lang/String;

    iput-object v1, v0, Lcom/baidu/sapi2/SapiAccount;->ptoken:Ljava/lang/String;

    iget-object v1, p1, Lcom/baidu/sapi2/shell/response/SapiAccountResponse;->email:Ljava/lang/String;

    iput-object v1, v0, Lcom/baidu/sapi2/SapiAccount;->email:Ljava/lang/String;

    iget-object v1, p1, Lcom/baidu/sapi2/shell/response/SapiAccountResponse;->username:Ljava/lang/String;

    iput-object v1, v0, Lcom/baidu/sapi2/SapiAccount;->username:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/baidu/sapi2/SapiWebView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/baidu/sapi2/utils/SapiUtils;->getAppName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/baidu/sapi2/SapiAccount;->app:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/baidu/sapi2/SapiWebView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/baidu/sapi2/c;->a(Landroid/content/Context;)Lcom/baidu/sapi2/c;

    move-result-object v1

    iget-object v2, p1, Lcom/baidu/sapi2/shell/response/SapiAccountResponse;->uid:Ljava/lang/String;

    iget-object v3, p1, Lcom/baidu/sapi2/shell/response/SapiAccountResponse;->reloginCredentials:Lcom/baidu/sapi2/SapiAccount$ReloginCredentials;

    invoke-virtual {v1, v2, v3}, Lcom/baidu/sapi2/c;->a(Ljava/lang/String;Lcom/baidu/sapi2/SapiAccount$ReloginCredentials;)V

    invoke-static {}, Lcom/baidu/sapi2/share/b;->a()Lcom/baidu/sapi2/share/b;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/baidu/sapi2/share/b;->a(Lcom/baidu/sapi2/SapiAccount;)V

    iget-object v0, p0, Lcom/baidu/sapi2/SapiWebView;->z:Lcom/baidu/sapi2/shell/listener/AuthorizationListener;

    if-eqz v0, :cond_0

    new-instance v0, Lcom/baidu/sapi2/SapiWebView$15;

    invoke-direct {v0, p0}, Lcom/baidu/sapi2/SapiWebView$15;-><init>(Lcom/baidu/sapi2/SapiWebView;)V

    invoke-virtual {p0, v0}, Lcom/baidu/sapi2/SapiWebView;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method static synthetic c(Lcom/baidu/sapi2/SapiWebView;)Lcom/baidu/sapi2/SapiWebView$TimeoutTask;
    .locals 1

    iget-object v0, p0, Lcom/baidu/sapi2/SapiWebView;->V:Lcom/baidu/sapi2/SapiWebView$TimeoutTask;

    return-object v0
.end method

.method static synthetic c(Lcom/baidu/sapi2/SapiWebView;Lcom/baidu/sapi2/shell/response/SapiAccountResponse;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/baidu/sapi2/SapiWebView;->b(Lcom/baidu/sapi2/shell/response/SapiAccountResponse;)V

    return-void
.end method

.method private c(Ljava/lang/String;)V
    .locals 1

    invoke-virtual {p0}, Lcom/baidu/sapi2/SapiWebView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/baidu/sapi2/utils/SapiUtils;->hasActiveNetwork(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "javascript:"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/baidu/sapi2/SapiWebView;->g()V

    :goto_0
    return-void

    :cond_0
    new-instance v0, Lcom/baidu/sapi2/SapiWebView$14;

    invoke-direct {v0, p0, p1}, Lcom/baidu/sapi2/SapiWebView$14;-><init>(Lcom/baidu/sapi2/SapiWebView;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/baidu/sapi2/SapiWebView;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method private c()Z
    .locals 2

    iget-object v0, p0, Lcom/baidu/sapi2/SapiWebView;->y:Lcom/baidu/sapi2/SapiConfiguration;

    invoke-virtual {v0}, Lcom/baidu/sapi2/SapiConfiguration;->loginShareStrategy()Lcom/baidu/sapi2/utils/enums/LoginShareStrategy;

    move-result-object v0

    sget-object v1, Lcom/baidu/sapi2/utils/enums/LoginShareStrategy;->CHOICE:Lcom/baidu/sapi2/utils/enums/LoginShareStrategy;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/baidu/sapi2/SapiWebView;->y:Lcom/baidu/sapi2/SapiConfiguration;

    invoke-virtual {v0}, Lcom/baidu/sapi2/SapiConfiguration;->loginShareStrategy()Lcom/baidu/sapi2/utils/enums/LoginShareStrategy;

    move-result-object v0

    sget-object v1, Lcom/baidu/sapi2/utils/enums/LoginShareStrategy;->SILENT:Lcom/baidu/sapi2/utils/enums/LoginShareStrategy;

    if-ne v0, v1, :cond_1

    :cond_0
    invoke-static {}, Lcom/baidu/sapi2/SapiAccountManager;->getInstance()Lcom/baidu/sapi2/SapiAccountManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/sapi2/SapiAccountManager;->getShareAccounts()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic d(Lcom/baidu/sapi2/SapiWebView;)J
    .locals 2

    iget-wide v0, p0, Lcom/baidu/sapi2/SapiWebView;->T:J

    return-wide v0
.end method

.method private d(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "BDUSS="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ";domain=baidu.com;path=/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private d()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/baidu/sapi2/SapiWebView;->a(I)V

    return-void
.end method

.method static synthetic e(Lcom/baidu/sapi2/SapiWebView;)Lcom/baidu/sapi2/SapiWebView$AuthWidgetCallback;
    .locals 1

    iget-object v0, p0, Lcom/baidu/sapi2/SapiWebView;->K:Lcom/baidu/sapi2/SapiWebView$AuthWidgetCallback;

    return-object v0
.end method

.method private e()V
    .locals 2

    invoke-virtual {p0}, Lcom/baidu/sapi2/SapiWebView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/baidu/sapi2/utils/SapiUtils;->isSimReady(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/baidu/sapi2/SapiWebView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/baidu/sapi2/utils/SapiUtils;->hasActiveNetwork(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/baidu/sapi2/SapiAccountManager;->getInstance()Lcom/baidu/sapi2/SapiAccountManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/baidu/sapi2/SapiAccountManager;->getAccountService()Lcom/baidu/sapi2/shell/SapiAccountService;

    move-result-object v1

    invoke-virtual {v1}, Lcom/baidu/sapi2/shell/SapiAccountService;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "&regLink=0"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "#sms_login"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/baidu/sapi2/SapiWebView;->loadUrl(Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/baidu/sapi2/SapiAccountManager;->getInstance()Lcom/baidu/sapi2/SapiAccountManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/baidu/sapi2/SapiAccountManager;->getAccountService()Lcom/baidu/sapi2/shell/SapiAccountService;

    move-result-object v1

    invoke-virtual {v1}, Lcom/baidu/sapi2/shell/SapiAccountService;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "#fastReg"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/baidu/sapi2/SapiWebView;->loadUrl(Ljava/lang/String;)V

    new-instance v0, Lcom/baidu/sapi2/SapiWebView$FastRegAction;

    invoke-direct {v0, p0}, Lcom/baidu/sapi2/SapiWebView$FastRegAction;-><init>(Lcom/baidu/sapi2/SapiWebView;)V

    iput-object v0, p0, Lcom/baidu/sapi2/SapiWebView;->ae:Lcom/baidu/sapi2/SapiWebView$FastRegAction;

    iget-object v0, p0, Lcom/baidu/sapi2/SapiWebView;->ae:Lcom/baidu/sapi2/SapiWebView$FastRegAction;

    invoke-static {v0}, Lcom/baidu/sapi2/SapiWebView$FastRegAction;->a(Lcom/baidu/sapi2/SapiWebView$FastRegAction;)V

    goto :goto_0
.end method

.method static synthetic f(Lcom/baidu/sapi2/SapiWebView;)Lcom/baidu/sapi2/SapiWebView$ChangePwdCallback;
    .locals 1

    iget-object v0, p0, Lcom/baidu/sapi2/SapiWebView;->J:Lcom/baidu/sapi2/SapiWebView$ChangePwdCallback;

    return-object v0
.end method

.method private f()V
    .locals 1

    invoke-virtual {p0}, Lcom/baidu/sapi2/SapiWebView;->stopLoading()V

    new-instance v0, Lcom/baidu/sapi2/SapiWebView$8;

    invoke-direct {v0, p0}, Lcom/baidu/sapi2/SapiWebView$8;-><init>(Lcom/baidu/sapi2/SapiWebView;)V

    invoke-virtual {p0, v0}, Lcom/baidu/sapi2/SapiWebView;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method static synthetic g(Lcom/baidu/sapi2/SapiWebView;)Landroid/widget/ProgressBar;
    .locals 1

    iget-object v0, p0, Lcom/baidu/sapi2/SapiWebView;->R:Landroid/widget/ProgressBar;

    return-object v0
.end method

.method private g()V
    .locals 1

    new-instance v0, Lcom/baidu/sapi2/SapiWebView$9;

    invoke-direct {v0, p0}, Lcom/baidu/sapi2/SapiWebView$9;-><init>(Lcom/baidu/sapi2/SapiWebView;)V

    invoke-virtual {p0, v0}, Lcom/baidu/sapi2/SapiWebView;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private h()V
    .locals 2

    iget-object v0, p0, Lcom/baidu/sapi2/SapiWebView;->W:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_0

    :try_start_0
    invoke-virtual {p0}, Lcom/baidu/sapi2/SapiWebView;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/baidu/sapi2/SapiWebView;->W:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/baidu/sapi2/SapiWebView;->W:Landroid/content/BroadcastReceiver;

    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method static synthetic h(Lcom/baidu/sapi2/SapiWebView;)V
    .locals 0

    invoke-direct {p0}, Lcom/baidu/sapi2/SapiWebView;->h()V

    return-void
.end method

.method static synthetic i(Lcom/baidu/sapi2/SapiWebView;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/baidu/sapi2/SapiWebView;->Q:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic j(Lcom/baidu/sapi2/SapiWebView;)Ljava/lang/Runnable;
    .locals 1

    iget-object v0, p0, Lcom/baidu/sapi2/SapiWebView;->aa:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic k(Lcom/baidu/sapi2/SapiWebView;)Lcom/baidu/sapi2/SapiWebView$FastRegHandler;
    .locals 1

    iget-object v0, p0, Lcom/baidu/sapi2/SapiWebView;->D:Lcom/baidu/sapi2/SapiWebView$FastRegHandler;

    return-object v0
.end method

.method static synthetic l(Lcom/baidu/sapi2/SapiWebView;)Lcom/baidu/sapi2/SapiConfiguration;
    .locals 1

    iget-object v0, p0, Lcom/baidu/sapi2/SapiWebView;->y:Lcom/baidu/sapi2/SapiConfiguration;

    return-object v0
.end method

.method static synthetic m(Lcom/baidu/sapi2/SapiWebView;)Lcom/baidu/sapi2/shell/listener/AuthorizationListener;
    .locals 1

    iget-object v0, p0, Lcom/baidu/sapi2/SapiWebView;->z:Lcom/baidu/sapi2/shell/listener/AuthorizationListener;

    return-object v0
.end method

.method static synthetic n(Lcom/baidu/sapi2/SapiWebView;)Lcom/baidu/sapi2/SapiWebView$FastRegAction;
    .locals 1

    iget-object v0, p0, Lcom/baidu/sapi2/SapiWebView;->ae:Lcom/baidu/sapi2/SapiWebView$FastRegAction;

    return-object v0
.end method

.method static synthetic o(Lcom/baidu/sapi2/SapiWebView;)Lcom/baidu/sapi2/SapiWebView$UniteVerifyCallback;
    .locals 1

    iget-object v0, p0, Lcom/baidu/sapi2/SapiWebView;->L:Lcom/baidu/sapi2/SapiWebView$UniteVerifyCallback;

    return-object v0
.end method

.method static synthetic p(Lcom/baidu/sapi2/SapiWebView;)Lcom/baidu/sapi2/SapiWebView$UniteBindCallback;
    .locals 1

    iget-object v0, p0, Lcom/baidu/sapi2/SapiWebView;->M:Lcom/baidu/sapi2/SapiWebView$UniteBindCallback;

    return-object v0
.end method

.method static synthetic q(Lcom/baidu/sapi2/SapiWebView;)Lcom/baidu/sapi2/SapiWebView$SmsHandler;
    .locals 1

    iget-object v0, p0, Lcom/baidu/sapi2/SapiWebView;->Z:Lcom/baidu/sapi2/SapiWebView$SmsHandler;

    return-object v0
.end method

.method static synthetic r(Lcom/baidu/sapi2/SapiWebView;)Lcom/baidu/sapi2/shell/response/SapiAccountResponse;
    .locals 1

    iget-object v0, p0, Lcom/baidu/sapi2/SapiWebView;->af:Lcom/baidu/sapi2/shell/response/SapiAccountResponse;

    return-object v0
.end method

.method static synthetic s(Lcom/baidu/sapi2/SapiWebView;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/baidu/sapi2/SapiWebView;->A:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic t(Lcom/baidu/sapi2/SapiWebView;)Lcom/baidu/sapi2/SapiWebView$NMLoginHandler;
    .locals 1

    iget-object v0, p0, Lcom/baidu/sapi2/SapiWebView;->F:Lcom/baidu/sapi2/SapiWebView$NMLoginHandler;

    return-object v0
.end method

.method static synthetic u(Lcom/baidu/sapi2/SapiWebView;)Lcom/baidu/sapi2/SapiWebView$LCLoginHandler;
    .locals 1

    iget-object v0, p0, Lcom/baidu/sapi2/SapiWebView;->G:Lcom/baidu/sapi2/SapiWebView$LCLoginHandler;

    return-object v0
.end method

.method static synthetic v(Lcom/baidu/sapi2/SapiWebView;)Lcom/baidu/sapi2/SapiWebView$VoiceLoginHandler;
    .locals 1

    iget-object v0, p0, Lcom/baidu/sapi2/SapiWebView;->E:Lcom/baidu/sapi2/SapiWebView$VoiceLoginHandler;

    return-object v0
.end method

.method static synthetic w(Lcom/baidu/sapi2/SapiWebView;)Lcom/baidu/sapi2/SapiWebView$UniteVerifyHandler;
    .locals 1

    iget-object v0, p0, Lcom/baidu/sapi2/SapiWebView;->H:Lcom/baidu/sapi2/SapiWebView$UniteVerifyHandler;

    return-object v0
.end method

.method static synthetic x(Lcom/baidu/sapi2/SapiWebView;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/baidu/sapi2/SapiWebView;->B:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic y(Lcom/baidu/sapi2/SapiWebView;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/baidu/sapi2/SapiWebView;->C:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic z(Lcom/baidu/sapi2/SapiWebView;)Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/baidu/sapi2/SapiWebView;->P:Landroid/view/View;

    return-object v0
.end method


# virtual methods
.method a(Landroid/content/Context;Ljava/util/List;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Lorg/apache/http/NameValuePair;",
            ">;)V"
        }
    .end annotation

    invoke-static {p1}, Landroid/webkit/CookieSyncManager;->createInstance(Landroid/content/Context;)Landroid/webkit/CookieSyncManager;

    invoke-static {}, Landroid/webkit/CookieManager;->getInstance()Landroid/webkit/CookieManager;

    move-result-object v1

    const/4 v0, 0x1

    invoke-virtual {v1, v0}, Landroid/webkit/CookieManager;->setAcceptCookie(Z)V

    iget-object v0, p0, Lcom/baidu/sapi2/SapiWebView;->y:Lcom/baidu/sapi2/SapiConfiguration;

    iget-object v0, v0, Lcom/baidu/sapi2/SapiConfiguration;->clientId:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/baidu/sapi2/SapiWebView;->y:Lcom/baidu/sapi2/SapiConfiguration;

    invoke-virtual {p0}, Lcom/baidu/sapi2/SapiWebView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/baidu/sapi2/utils/SapiUtils;->getClientId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/baidu/sapi2/SapiConfiguration;->clientId:Ljava/lang/String;

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "cuid="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/baidu/sapi2/SapiWebView;->y:Lcom/baidu/sapi2/SapiConfiguration;

    iget-object v2, v2, Lcom/baidu/sapi2/SapiConfiguration;->clientId:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ";domain="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/baidu/sapi2/SapiWebView;->y:Lcom/baidu/sapi2/SapiConfiguration;

    iget-object v2, v2, Lcom/baidu/sapi2/SapiConfiguration;->environment:Lcom/baidu/sapi2/utils/enums/Domain;

    invoke-virtual {v2}, Lcom/baidu/sapi2/utils/enums/Domain;->getWap()Ljava/lang/String;

    move-result-object v2

    const-string v3, "http://"

    const-string v4, ""

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "(:[0-9]{1,4})?"

    const-string v4, ""

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ";path=/"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/baidu/sapi2/SapiWebView;->y:Lcom/baidu/sapi2/SapiConfiguration;

    iget-object v2, v2, Lcom/baidu/sapi2/SapiConfiguration;->environment:Lcom/baidu/sapi2/utils/enums/Domain;

    invoke-virtual {v2}, Lcom/baidu/sapi2/utils/enums/Domain;->getWap()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Landroid/webkit/CookieManager;->setCookie(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p2, :cond_2

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/http/NameValuePair;

    invoke-interface {v0}, Lorg/apache/http/NameValuePair;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    invoke-interface {v0}, Lorg/apache/http/NameValuePair;->getValue()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    invoke-interface {v0}, Lorg/apache/http/NameValuePair;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0}, Lorg/apache/http/NameValuePair;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v3, v0}, Landroid/webkit/CookieManager;->setCookie(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    invoke-static {}, Landroid/webkit/CookieSyncManager;->getInstance()Landroid/webkit/CookieSyncManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/CookieSyncManager;->sync()V

    return-void
.end method

.method public back()V
    .locals 1

    iget-object v0, p0, Lcom/baidu/sapi2/SapiWebView;->af:Lcom/baidu/sapi2/shell/response/SapiAccountResponse;

    invoke-direct {p0, v0}, Lcom/baidu/sapi2/SapiWebView;->b(Lcom/baidu/sapi2/shell/response/SapiAccountResponse;)V

    const-string v0, "javascript:(function(){if(window.Pass&&Pass.switchView){Pass.switchView(\'back\')}}())"

    invoke-static {p0, v0}, Lcom/baidu/sapi2/SapiWebView;->a(Lcom/baidu/sapi2/SapiWebView;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/baidu/sapi2/SapiWebView;->O:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/baidu/sapi2/SapiWebView;->O:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/baidu/sapi2/SapiWebView;->P:Landroid/view/View;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/baidu/sapi2/SapiWebView;->P:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_2

    :cond_1
    invoke-virtual {p0}, Lcom/baidu/sapi2/SapiWebView;->finish()V

    :cond_2
    return-void
.end method

.method public finish()V
    .locals 2

    invoke-direct {p0}, Lcom/baidu/sapi2/SapiWebView;->h()V

    iget-object v0, p0, Lcom/baidu/sapi2/SapiWebView;->ae:Lcom/baidu/sapi2/SapiWebView$FastRegAction;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/baidu/sapi2/SapiWebView;->ae:Lcom/baidu/sapi2/SapiWebView$FastRegAction;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/baidu/sapi2/SapiWebView$FastRegAction;->a(Lcom/baidu/sapi2/SapiWebView$FastRegAction;Z)Z

    iget-object v0, p0, Lcom/baidu/sapi2/SapiWebView;->ae:Lcom/baidu/sapi2/SapiWebView$FastRegAction;

    invoke-static {v0}, Lcom/baidu/sapi2/SapiWebView$FastRegAction;->c(Lcom/baidu/sapi2/SapiWebView$FastRegAction;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/baidu/sapi2/SapiWebView;->ae:Lcom/baidu/sapi2/SapiWebView$FastRegAction;

    invoke-static {v1}, Lcom/baidu/sapi2/SapiWebView$FastRegAction;->b(Lcom/baidu/sapi2/SapiWebView$FastRegAction;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    :cond_0
    iget-object v0, p0, Lcom/baidu/sapi2/SapiWebView;->ab:Lcom/baidu/sapi2/SapiWebView$OnFinishCallback;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/baidu/sapi2/SapiWebView;->ab:Lcom/baidu/sapi2/SapiWebView$OnFinishCallback;

    invoke-interface {v0}, Lcom/baidu/sapi2/SapiWebView$OnFinishCallback;->onFinish()V

    :cond_1
    return-void
.end method

.method public getTimeoutMillis()J
    .locals 2

    iget-wide v0, p0, Lcom/baidu/sapi2/SapiWebView;->T:J

    return-wide v0
.end method

.method public loadAuthWidget(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/baidu/sapi2/SapiWebView;->loadAuthWidget(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public loadAuthWidget(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 5

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "bduss can\'t be empty"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "authToken can\'t be empty"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    invoke-virtual {p0}, Lcom/baidu/sapi2/SapiWebView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/baidu/sapi2/utils/SapiUtils;->webLogin(Landroid/content/Context;Ljava/lang/String;)Z

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    :try_start_0
    new-instance v0, Lorg/apache/http/message/BasicNameValuePair;

    const-string v2, "token"

    const-string v3, "UTF-8"

    invoke-static {p2, v3}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v2, v3}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v0, Lorg/apache/http/message/BasicNameValuePair;

    const-string v2, "u"

    const-string v3, "http://www.baidu.com?__wp-action=auth-widget"

    const-string v4, "UTF-8"

    invoke-static {v3, v4}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v2, v3}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    new-instance v0, Lorg/apache/http/message/BasicNameValuePair;

    const-string v2, "skin"

    invoke-direct {v0, v2, p3}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_2
    :goto_0
    invoke-static {}, Lcom/baidu/sapi2/SapiAccountManager;->getInstance()Lcom/baidu/sapi2/SapiAccountManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/sapi2/SapiAccountManager;->getAccountService()Lcom/baidu/sapi2/shell/SapiAccountService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/sapi2/shell/SapiAccountService;->e()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_3

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "&"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {v1}, Lcom/baidu/sapi2/utils/SapiUtils;->createRequestParams(Ljava/util/List;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_3
    invoke-virtual {p0, v0}, Lcom/baidu/sapi2/SapiWebView;->loadUrl(Ljava/lang/String;)V

    return-void

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/baidu/sapi2/utils/L;->e(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public loadBindWidget(Lcom/baidu/sapi2/utils/enums/BindWidgetAction;Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/baidu/sapi2/SapiWebView;->loadBindWidget(Lcom/baidu/sapi2/utils/enums/BindWidgetAction;Ljava/lang/String;Z)V

    return-void
.end method

.method public loadBindWidget(Lcom/baidu/sapi2/utils/enums/BindWidgetAction;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 5

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "BindWidgetAction can\'t be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "bduss can\'t be empty"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    new-instance v0, Lorg/apache/http/message/BasicNameValuePair;

    const-string v2, "skin"

    invoke-direct {v0, v2, p3}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_2
    if-eqz p4, :cond_3

    new-instance v0, Lorg/apache/http/message/BasicNameValuePair;

    const-string v2, "skip"

    const-string v3, "1"

    invoke-direct {v0, v2, v3}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_3
    invoke-static {}, Lcom/baidu/sapi2/SapiAccountManager;->getInstance()Lcom/baidu/sapi2/SapiAccountManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/sapi2/SapiAccountManager;->getAccountService()Lcom/baidu/sapi2/shell/SapiAccountService;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/baidu/sapi2/shell/SapiAccountService;->a(Lcom/baidu/sapi2/utils/enums/BindWidgetAction;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_4

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "&"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {v1}, Lcom/baidu/sapi2/utils/SapiUtils;->createRequestParams(Ljava/util/List;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_4
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "BIND_BDUSS="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ";domain="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/baidu/sapi2/SapiWebView;->y:Lcom/baidu/sapi2/SapiConfiguration;

    iget-object v2, v2, Lcom/baidu/sapi2/SapiConfiguration;->environment:Lcom/baidu/sapi2/utils/enums/Domain;

    invoke-virtual {v2}, Lcom/baidu/sapi2/utils/enums/Domain;->getWap()Ljava/lang/String;

    move-result-object v2

    const-string v3, "http://"

    const-string v4, ""

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "(:[0-9]{1,4})?"

    const-string v4, ""

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ";path=/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    new-instance v3, Lorg/apache/http/message/BasicNameValuePair;

    iget-object v4, p0, Lcom/baidu/sapi2/SapiWebView;->y:Lcom/baidu/sapi2/SapiConfiguration;

    iget-object v4, v4, Lcom/baidu/sapi2/SapiConfiguration;->environment:Lcom/baidu/sapi2/utils/enums/Domain;

    invoke-virtual {v4}, Lcom/baidu/sapi2/utils/enums/Domain;->getWap()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4, v1}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "BDUSS="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ";domain=baidu.com;path=/"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v3, Lorg/apache/http/message/BasicNameValuePair;

    iget-object v4, p0, Lcom/baidu/sapi2/SapiWebView;->y:Lcom/baidu/sapi2/SapiConfiguration;

    iget-object v4, v4, Lcom/baidu/sapi2/SapiConfiguration;->environment:Lcom/baidu/sapi2/utils/enums/Domain;

    invoke-virtual {v4}, Lcom/baidu/sapi2/utils/enums/Domain;->getWap()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4, v1}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0, v0, v2}, Lcom/baidu/sapi2/SapiWebView;->loadUrl(Ljava/lang/String;Ljava/util/List;)V

    return-void
.end method

.method public loadBindWidget(Lcom/baidu/sapi2/utils/enums/BindWidgetAction;Ljava/lang/String;Z)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0, p3}, Lcom/baidu/sapi2/SapiWebView;->loadBindWidget(Lcom/baidu/sapi2/utils/enums/BindWidgetAction;Ljava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method

.method public loadDataWithBaseURL(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 7

    new-instance v0, Lcom/baidu/sapi2/SapiWebView$7;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-direct/range {v0 .. v6}, Lcom/baidu/sapi2/SapiWebView$7;-><init>(Lcom/baidu/sapi2/SapiWebView;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/baidu/sapi2/SapiWebView;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public loadFastReg()V
    .locals 2

    sget-object v0, Lcom/baidu/sapi2/SapiWebView$16;->a:[I

    invoke-virtual {p0}, Lcom/baidu/sapi2/SapiWebView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/baidu/sapi2/c;->a(Landroid/content/Context;)Lcom/baidu/sapi2/c;

    move-result-object v1

    invoke-virtual {v1}, Lcom/baidu/sapi2/c;->k()Lcom/baidu/sapi2/b;

    move-result-object v1

    invoke-virtual {v1}, Lcom/baidu/sapi2/b;->d()Lcom/baidu/sapi2/utils/enums/RegistMode;

    move-result-object v1

    invoke-virtual {v1}, Lcom/baidu/sapi2/utils/enums/RegistMode;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    invoke-direct {p0}, Lcom/baidu/sapi2/SapiWebView;->e()V

    :goto_0
    return-void

    :pswitch_0
    invoke-direct {p0}, Lcom/baidu/sapi2/SapiWebView;->e()V

    goto :goto_0

    :pswitch_1
    invoke-virtual {p0}, Lcom/baidu/sapi2/SapiWebView;->loadRegist()V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public loadFillUProfile(Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/baidu/sapi2/SapiWebView;->loadFillUProfile(Ljava/lang/String;Z)V

    return-void
.end method

.method public loadFillUProfile(Ljava/lang/String;Z)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/baidu/sapi2/SapiWebView;->loadFillUProfile(Ljava/lang/String;ZLjava/lang/String;)V

    return-void
.end method

.method public loadFillUProfile(Ljava/lang/String;ZLjava/lang/String;)V
    .locals 4

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "bduss can\'t be empty"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    new-instance v0, Lorg/apache/http/message/BasicNameValuePair;

    const-string v2, "skin"

    invoke-direct {v0, v2, p3}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    if-eqz p2, :cond_2

    new-instance v0, Lorg/apache/http/message/BasicNameValuePair;

    const-string v2, "simplify"

    const-string v3, "1"

    invoke-direct {v0, v2, v3}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_2
    invoke-static {}, Lcom/baidu/sapi2/SapiAccountManager;->getInstance()Lcom/baidu/sapi2/SapiAccountManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/sapi2/SapiAccountManager;->getAccountService()Lcom/baidu/sapi2/shell/SapiAccountService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/sapi2/shell/SapiAccountService;->h()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_3

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "&"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {v1}, Lcom/baidu/sapi2/utils/SapiUtils;->createRequestParams(Ljava/util/List;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_3
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    new-instance v2, Lorg/apache/http/message/BasicNameValuePair;

    invoke-direct {p0, p1}, Lcom/baidu/sapi2/SapiWebView;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v0, v3}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0, v0, v1}, Lcom/baidu/sapi2/SapiWebView;->loadUrl(Ljava/lang/String;Ljava/util/List;)V

    return-void
.end method

.method public loadForgetPwd()V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/baidu/sapi2/SapiWebView;->loadForgetPwd(Ljava/lang/String;)V

    return-void
.end method

.method public loadForgetPwd(Ljava/lang/String;)V
    .locals 5

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    :try_start_0
    new-instance v0, Lorg/apache/http/message/BasicNameValuePair;

    const-string v2, "u"

    const-string v3, "http://www.baidu.com?__wp-action=forget-pwd"

    const-string v4, "UTF-8"

    invoke-static {v3, v4}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v2, v3}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Lorg/apache/http/message/BasicNameValuePair;

    const-string v2, "skin"

    invoke-direct {v0, v2, p1}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    invoke-static {}, Lcom/baidu/sapi2/SapiAccountManager;->getInstance()Lcom/baidu/sapi2/SapiAccountManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/sapi2/SapiAccountManager;->getAccountService()Lcom/baidu/sapi2/shell/SapiAccountService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/sapi2/shell/SapiAccountService;->b()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "&"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {v1}, Lcom/baidu/sapi2/utils/SapiUtils;->createRequestParams(Ljava/util/List;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_1
    invoke-virtual {p0, v0}, Lcom/baidu/sapi2/SapiWebView;->loadUrl(Ljava/lang/String;)V

    return-void

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/baidu/sapi2/utils/L;->e(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public loadLogin()V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/baidu/sapi2/SapiWebView;->loadLogin(I)V

    return-void
.end method

.method public loadLogin(I)V
    .locals 2

    invoke-direct {p0}, Lcom/baidu/sapi2/SapiWebView;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0, p1}, Lcom/baidu/sapi2/SapiWebView;->a(I)V

    :goto_0
    return-void

    :cond_0
    packed-switch p1, :pswitch_data_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/baidu/sapi2/SapiAccountManager;->getInstance()Lcom/baidu/sapi2/SapiAccountManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/baidu/sapi2/SapiAccountManager;->getAccountService()Lcom/baidu/sapi2/shell/SapiAccountService;

    move-result-object v1

    invoke-virtual {v1}, Lcom/baidu/sapi2/shell/SapiAccountService;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "#login"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/baidu/sapi2/SapiWebView;->loadUrl(Ljava/lang/String;)V

    goto :goto_0

    :pswitch_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/baidu/sapi2/SapiAccountManager;->getInstance()Lcom/baidu/sapi2/SapiAccountManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/baidu/sapi2/SapiAccountManager;->getAccountService()Lcom/baidu/sapi2/shell/SapiAccountService;

    move-result-object v1

    invoke-virtual {v1}, Lcom/baidu/sapi2/shell/SapiAccountService;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "#login"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/baidu/sapi2/SapiWebView;->loadUrl(Ljava/lang/String;)V

    goto :goto_0

    :pswitch_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/baidu/sapi2/SapiAccountManager;->getInstance()Lcom/baidu/sapi2/SapiAccountManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/baidu/sapi2/SapiAccountManager;->getAccountService()Lcom/baidu/sapi2/shell/SapiAccountService;

    move-result-object v1

    invoke-virtual {v1}, Lcom/baidu/sapi2/shell/SapiAccountService;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "#sms_login"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/baidu/sapi2/SapiWebView;->loadUrl(Ljava/lang/String;)V

    goto :goto_0

    :pswitch_2
    iget-object v0, p0, Lcom/baidu/sapi2/SapiWebView;->D:Lcom/baidu/sapi2/SapiWebView$FastRegHandler;

    if-eqz v0, :cond_1

    new-instance v0, Lcom/baidu/sapi2/SapiWebView$6;

    invoke-direct {v0, p0}, Lcom/baidu/sapi2/SapiWebView$6;-><init>(Lcom/baidu/sapi2/SapiWebView;)V

    invoke-virtual {p0, v0}, Lcom/baidu/sapi2/SapiWebView;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/baidu/sapi2/SapiWebView;->loadFastReg()V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public loadLoginWithUserName(Ljava/lang/String;)V
    .locals 3

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/baidu/sapi2/SapiWebView;->loadLogin()V

    :goto_0
    return-void

    :cond_0
    const-string v0, ""

    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "disusername="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "UTF-8"

    invoke-static {p1, v2}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_1
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/baidu/sapi2/SapiAccountManager;->getInstance()Lcom/baidu/sapi2/SapiAccountManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/baidu/sapi2/SapiAccountManager;->getAccountService()Lcom/baidu/sapi2/shell/SapiAccountService;

    move-result-object v2

    invoke-virtual {v2}, Lcom/baidu/sapi2/shell/SapiAccountService;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "&"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "#authPwd"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/baidu/sapi2/SapiWebView;->loadUrl(Ljava/lang/String;)V

    goto :goto_0

    :catch_0
    move-exception v1

    invoke-static {v1}, Lcom/baidu/sapi2/utils/L;->e(Ljava/lang/Throwable;)V

    goto :goto_1

    :cond_1
    invoke-virtual {p0}, Lcom/baidu/sapi2/SapiWebView;->loadLogin()V

    goto :goto_0
.end method

.method public loadModifyPwd(Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/baidu/sapi2/SapiWebView;->loadModifyPwd(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public loadModifyPwd(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "bduss can\'t be empty"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    :try_start_0
    new-instance v0, Lorg/apache/http/message/BasicNameValuePair;

    const-string v2, "u"

    const-string v3, "http://www.baidu.com?__wp-action=modify-pwd"

    const-string v4, "UTF-8"

    invoke-static {v3, v4}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v2, v3}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    new-instance v0, Lorg/apache/http/message/BasicNameValuePair;

    const-string v2, "skin"

    invoke-direct {v0, v2, p2}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    :goto_0
    invoke-static {}, Lcom/baidu/sapi2/SapiAccountManager;->getInstance()Lcom/baidu/sapi2/SapiAccountManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/sapi2/SapiAccountManager;->getAccountService()Lcom/baidu/sapi2/shell/SapiAccountService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/sapi2/shell/SapiAccountService;->c()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_2

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "&"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {v1}, Lcom/baidu/sapi2/utils/SapiUtils;->createRequestParams(Ljava/util/List;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "BIND_BDUSS="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ";domain="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/baidu/sapi2/SapiWebView;->y:Lcom/baidu/sapi2/SapiConfiguration;

    iget-object v2, v2, Lcom/baidu/sapi2/SapiConfiguration;->environment:Lcom/baidu/sapi2/utils/enums/Domain;

    invoke-virtual {v2}, Lcom/baidu/sapi2/utils/enums/Domain;->getWap()Ljava/lang/String;

    move-result-object v2

    const-string v3, "http://"

    const-string v4, ""

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "(:[0-9]{1,4})?"

    const-string v4, ""

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ";path=/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    new-instance v3, Lorg/apache/http/message/BasicNameValuePair;

    iget-object v4, p0, Lcom/baidu/sapi2/SapiWebView;->y:Lcom/baidu/sapi2/SapiConfiguration;

    iget-object v4, v4, Lcom/baidu/sapi2/SapiConfiguration;->environment:Lcom/baidu/sapi2/utils/enums/Domain;

    invoke-virtual {v4}, Lcom/baidu/sapi2/utils/enums/Domain;->getWap()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4, v1}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "BDUSS="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ";domain=baidu.com;path=/"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v3, Lorg/apache/http/message/BasicNameValuePair;

    iget-object v4, p0, Lcom/baidu/sapi2/SapiWebView;->y:Lcom/baidu/sapi2/SapiConfiguration;

    iget-object v4, v4, Lcom/baidu/sapi2/SapiConfiguration;->environment:Lcom/baidu/sapi2/utils/enums/Domain;

    invoke-virtual {v4}, Lcom/baidu/sapi2/utils/enums/Domain;->getWap()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4, v1}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0, v0, v2}, Lcom/baidu/sapi2/SapiWebView;->loadUrl(Ljava/lang/String;Ljava/util/List;)V

    return-void

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/baidu/sapi2/utils/L;->e(Ljava/lang/Throwable;)V

    goto/16 :goto_0
.end method

.method public loadOperationRecord(Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/baidu/sapi2/SapiWebView;->loadOperationRecord(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public loadOperationRecord(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "bduss can\'t be empty"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    invoke-virtual {p0}, Lcom/baidu/sapi2/SapiWebView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/baidu/sapi2/utils/SapiUtils;->webLogin(Landroid/content/Context;Ljava/lang/String;)Z

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    new-instance v0, Lorg/apache/http/message/BasicNameValuePair;

    const-string v2, "skin"

    invoke-direct {v0, v2, p2}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    invoke-static {}, Lcom/baidu/sapi2/SapiAccountManager;->getInstance()Lcom/baidu/sapi2/SapiAccountManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/sapi2/SapiAccountManager;->getAccountService()Lcom/baidu/sapi2/shell/SapiAccountService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/sapi2/shell/SapiAccountService;->d()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_2

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "&"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {v1}, Lcom/baidu/sapi2/utils/SapiUtils;->createRequestParams(Ljava/util/List;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_2
    invoke-virtual {p0, v0}, Lcom/baidu/sapi2/SapiWebView;->loadUrl(Ljava/lang/String;)V

    return-void
.end method

.method public loadQuickUserReg()V
    .locals 3

    iget-object v0, p0, Lcom/baidu/sapi2/SapiWebView;->y:Lcom/baidu/sapi2/SapiConfiguration;

    iget-boolean v0, v0, Lcom/baidu/sapi2/SapiConfiguration;->quickUserEnabled:Z

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/baidu/sapi2/SapiWebView;->loadRegist()V

    :goto_0
    return-void

    :cond_0
    invoke-static {}, Lcom/baidu/sapi2/SapiAccountManager;->getInstance()Lcom/baidu/sapi2/SapiAccountManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/sapi2/SapiAccountManager;->getAccountService()Lcom/baidu/sapi2/shell/SapiAccountService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/sapi2/shell/SapiAccountService;->a()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/baidu/sapi2/SapiWebView;->y:Lcom/baidu/sapi2/SapiConfiguration;

    iget-object v1, v1, Lcom/baidu/sapi2/SapiConfiguration;->registMode:Lcom/baidu/sapi2/utils/enums/RegistMode;

    sget-object v2, Lcom/baidu/sapi2/utils/enums/RegistMode;->QUICK_USER:Lcom/baidu/sapi2/utils/enums/RegistMode;

    if-eq v1, v2, :cond_1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "&regtype=2"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "#reg"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/baidu/sapi2/SapiWebView;->loadUrl(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public loadRegist()V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/baidu/sapi2/SapiWebView;->loadRegist(Ljava/util/List;)V

    return-void
.end method

.method public loadRegist(Ljava/util/List;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lorg/apache/http/NameValuePair;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/baidu/sapi2/SapiAccountManager;->getInstance()Lcom/baidu/sapi2/SapiAccountManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/sapi2/SapiAccountManager;->getAccountService()Lcom/baidu/sapi2/shell/SapiAccountService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/sapi2/shell/SapiAccountService;->a()Ljava/lang/String;

    move-result-object v1

    iget-object v0, p0, Lcom/baidu/sapi2/SapiWebView;->y:Lcom/baidu/sapi2/SapiConfiguration;

    iget-boolean v0, v0, Lcom/baidu/sapi2/SapiConfiguration;->quickUserEnabled:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/baidu/sapi2/SapiWebView;->y:Lcom/baidu/sapi2/SapiConfiguration;

    iget-object v0, v0, Lcom/baidu/sapi2/SapiConfiguration;->registMode:Lcom/baidu/sapi2/utils/enums/RegistMode;

    sget-object v2, Lcom/baidu/sapi2/utils/enums/RegistMode;->QUICK_USER:Lcom/baidu/sapi2/utils/enums/RegistMode;

    if-ne v0, v2, :cond_0

    const-string v0, "regtype=2"

    const-string v2, "regtype=1"

    invoke-virtual {v1, v0, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    :cond_0
    if-eqz p1, :cond_3

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_1
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/http/NameValuePair;

    invoke-interface {v0}, Lorg/apache/http/NameValuePair;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_1

    invoke-interface {v0}, Lorg/apache/http/NameValuePair;->getValue()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_1

    :try_start_0
    new-instance v4, Lorg/apache/http/message/BasicNameValuePair;

    invoke-interface {v0}, Lorg/apache/http/NameValuePair;->getName()Ljava/lang/String;

    move-result-object v5

    const-string v6, "UTF-8"

    invoke-static {v5, v6}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v0}, Lorg/apache/http/NameValuePair;->getValue()Ljava/lang/String;

    move-result-object v0

    const-string v6, "UTF-8"

    invoke-static {v0, v6}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v4, v5, v0}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/baidu/sapi2/utils/L;->e(Ljava/lang/Throwable;)V

    goto :goto_0

    :cond_2
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "&"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {v2}, Lcom/baidu/sapi2/utils/SapiUtils;->createRequestParams(Ljava/util/List;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "#reg"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/baidu/sapi2/SapiWebView;->loadUrl(Ljava/lang/String;)V

    return-void

    :cond_3
    move-object v0, v1

    goto :goto_1
.end method

.method public loadSinaSSOLogin()V
    .locals 4

    new-instance v1, Lcom/baidu/sapi2/plugin/sso/SsoHandler;

    invoke-virtual {p0}, Lcom/baidu/sapi2/SapiWebView;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    const-string v2, "2512457640"

    const-string v3, "http://www.baidu.com"

    invoke-direct {v1, v0, v2, v3}, Lcom/baidu/sapi2/plugin/sso/SsoHandler;-><init>(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/baidu/sapi2/SapiWebView;->N:Lcom/baidu/sapi2/plugin/sso/SsoHandler;

    iget-object v0, p0, Lcom/baidu/sapi2/SapiWebView;->N:Lcom/baidu/sapi2/plugin/sso/SsoHandler;

    new-instance v1, Lcom/baidu/sapi2/SapiWebView$10;

    invoke-direct {v1, p0}, Lcom/baidu/sapi2/SapiWebView$10;-><init>(Lcom/baidu/sapi2/SapiWebView;)V

    invoke-virtual {v0, v1}, Lcom/baidu/sapi2/plugin/sso/SsoHandler;->authorize(Lcom/baidu/sapi2/plugin/SSOListener;)V

    invoke-virtual {p0}, Lcom/baidu/sapi2/SapiWebView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/baidu/sapi2/c;->a(Landroid/content/Context;)Lcom/baidu/sapi2/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/sapi2/c;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lcom/baidu/sapi2/SapiWebView$11;

    invoke-direct {v0, p0}, Lcom/baidu/sapi2/SapiWebView$11;-><init>(Lcom/baidu/sapi2/SapiWebView;)V

    invoke-virtual {p0, v0}, Lcom/baidu/sapi2/SapiWebView;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method public loadSmsLogin()V
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-direct {p0}, Lcom/baidu/sapi2/SapiWebView;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/baidu/sapi2/SapiWebView;->d()V

    :goto_0
    return-void

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/baidu/sapi2/SapiAccountManager;->getInstance()Lcom/baidu/sapi2/SapiAccountManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/baidu/sapi2/SapiAccountManager;->getAccountService()Lcom/baidu/sapi2/shell/SapiAccountService;

    move-result-object v1

    invoke-virtual {v1}, Lcom/baidu/sapi2/shell/SapiAccountService;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "#sms_login"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/baidu/sapi2/SapiWebView;->loadUrl(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public loadSocialLogin(Lcom/baidu/sapi2/utils/enums/SocialType;)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/baidu/sapi2/SapiWebView;->loadSocialLogin(Lcom/baidu/sapi2/utils/enums/SocialType;Z)V

    return-void
.end method

.method public loadSocialLogin(Lcom/baidu/sapi2/utils/enums/SocialType;Z)V
    .locals 2

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "SocialType can\'t be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    sget-object v0, Lcom/baidu/sapi2/utils/enums/SocialType;->UNKNOWN:Lcom/baidu/sapi2/utils/enums/SocialType;

    if-ne p1, v0, :cond_1

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Unknown SocialType"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    invoke-static {}, Lcom/baidu/sapi2/SapiAccountManager;->getInstance()Lcom/baidu/sapi2/SapiAccountManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/sapi2/SapiAccountManager;->getAccountService()Lcom/baidu/sapi2/shell/SapiAccountService;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/baidu/sapi2/shell/SapiAccountService;->a(Lcom/baidu/sapi2/utils/enums/SocialType;)Ljava/lang/String;

    move-result-object v0

    if-eqz p2, :cond_2

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "&is_force_login=1"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_2
    invoke-virtual {p0, v0}, Lcom/baidu/sapi2/SapiWebView;->loadUrl(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/baidu/sapi2/SapiWebView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/baidu/sapi2/c;->a(Landroid/content/Context;)Lcom/baidu/sapi2/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/sapi2/c;->c()Z

    move-result v0

    if-eqz v0, :cond_3

    new-instance v0, Lcom/baidu/sapi2/SapiWebView$13;

    invoke-direct {v0, p0}, Lcom/baidu/sapi2/SapiWebView$13;-><init>(Lcom/baidu/sapi2/SapiWebView;)V

    invoke-virtual {p0, v0}, Lcom/baidu/sapi2/SapiWebView;->post(Ljava/lang/Runnable;)Z

    :cond_3
    return-void
.end method

.method public loadUniteBind(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Invalid params: bindToken can\'t be empty"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    :try_start_0
    new-instance v0, Lorg/apache/http/message/BasicNameValuePair;

    const-string v2, "token"

    const-string v3, "UTF-8"

    invoke-static {p1, v3}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v2, v3}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    if-eqz p2, :cond_1

    new-instance v0, Lorg/apache/http/message/BasicNameValuePair;

    const-string v2, "u"

    invoke-direct {v0, v2, p2}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    :goto_0
    invoke-static {}, Lcom/baidu/sapi2/SapiAccountManager;->getInstance()Lcom/baidu/sapi2/SapiAccountManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/sapi2/SapiAccountManager;->getAccountService()Lcom/baidu/sapi2/shell/SapiAccountService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/sapi2/shell/SapiAccountService;->g()Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "&"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {v1}, Lcom/baidu/sapi2/utils/SapiUtils;->createRequestParams(Ljava/util/List;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/baidu/sapi2/SapiWebView;->loadUrl(Ljava/lang/String;)V

    return-void

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/baidu/sapi2/utils/L;->e(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public loadUniteVerify(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Invalid Params: verifyToken can\'t be empty"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    :try_start_0
    new-instance v0, Lorg/apache/http/message/BasicNameValuePair;

    const-string v2, "token"

    const-string v3, "UTF-8"

    invoke-static {p1, v3}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v2, v3}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    if-eqz p2, :cond_1

    new-instance v0, Lorg/apache/http/message/BasicNameValuePair;

    const-string v2, "u"

    invoke-direct {v0, v2, p2}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    if-eqz p3, :cond_2

    new-instance v0, Lorg/apache/http/message/BasicNameValuePair;

    const-string v2, "adtext"

    const-string v3, "UTF-8"

    invoke-static {p3, v3}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v2, v3}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_2
    :goto_0
    invoke-static {}, Lcom/baidu/sapi2/SapiAccountManager;->getInstance()Lcom/baidu/sapi2/SapiAccountManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/sapi2/SapiAccountManager;->getAccountService()Lcom/baidu/sapi2/shell/SapiAccountService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/sapi2/shell/SapiAccountService;->f()Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "&"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {v1}, Lcom/baidu/sapi2/utils/SapiUtils;->createRequestParams(Ljava/util/List;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/baidu/sapi2/SapiWebView;->loadUrl(Ljava/lang/String;)V

    return-void

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/baidu/sapi2/utils/L;->e(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public loadUrl(Ljava/lang/String;)V
    .locals 1

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/baidu/sapi2/SapiWebView;->loadUrl(Ljava/lang/String;Ljava/util/List;)V

    return-void
.end method

.method public loadUrl(Ljava/lang/String;Ljava/util/List;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lorg/apache/http/NameValuePair;",
            ">;)V"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/baidu/sapi2/SapiWebView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Lcom/baidu/sapi2/SapiWebView;->a(Landroid/content/Context;Ljava/util/List;)V

    invoke-virtual {p0}, Lcom/baidu/sapi2/SapiWebView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/baidu/sapi2/SapiCache;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/baidu/sapi2/SapiWebView;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v3, "text/html"

    const-string v4, "UTF-8"

    move-object v0, p0

    move-object v1, p1

    move-object v5, p1

    invoke-virtual/range {v0 .. v5}, Lcom/baidu/sapi2/SapiWebView;->loadDataWithBaseURL(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    invoke-direct {p0, p1}, Lcom/baidu/sapi2/SapiWebView;->c(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public loadWeixinSSOLogin()V
    .locals 4

    invoke-virtual {p0}, Lcom/baidu/sapi2/SapiWebView;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/baidu/sapi2/SapiWebView;->y:Lcom/baidu/sapi2/SapiConfiguration;

    iget-object v1, v1, Lcom/baidu/sapi2/SapiConfiguration;->wxAppID:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/tencent/mm/sdk/openapi/WXAPIFactory;->createWXAPI(Landroid/content/Context;Ljava/lang/String;)Lcom/tencent/mm/sdk/openapi/IWXAPI;

    move-result-object v0

    invoke-interface {v0}, Lcom/tencent/mm/sdk/openapi/IWXAPI;->isWXAppInstalled()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/baidu/sapi2/SapiWebView;->I:Lcom/baidu/sapi2/SapiWebView$WeixinHandler;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/baidu/sapi2/SapiWebView;->I:Lcom/baidu/sapi2/SapiWebView$WeixinHandler;

    invoke-interface {v0}, Lcom/baidu/sapi2/SapiWebView$WeixinHandler;->handleNotInstall()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-static {}, Lcom/baidu/sapi2/SapiAccountManager;->getInstance()Lcom/baidu/sapi2/SapiAccountManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/sapi2/SapiAccountManager;->getAccountService()Lcom/baidu/sapi2/shell/SapiAccountService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/sapi2/shell/SapiAccountService;->k()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/baidu/cloudsdk/common/http/AsyncHttpClient;

    invoke-direct {v1}, Lcom/baidu/cloudsdk/common/http/AsyncHttpClient;-><init>()V

    invoke-virtual {p0}, Lcom/baidu/sapi2/SapiWebView;->getContext()Landroid/content/Context;

    move-result-object v2

    new-instance v3, Lcom/baidu/sapi2/SapiWebView$12;

    invoke-direct {v3, p0}, Lcom/baidu/sapi2/SapiWebView$12;-><init>(Lcom/baidu/sapi2/SapiWebView;)V

    invoke-virtual {v1, v2, v0, v3}, Lcom/baidu/cloudsdk/common/http/AsyncHttpClient;->get(Landroid/content/Context;Ljava/lang/String;Lcom/baidu/cloudsdk/common/http/HttpResponseHandler;)V

    goto :goto_0
.end method

.method public onAuthorizedResult(IILandroid/content/Intent;)V
    .locals 1

    iget-object v0, p0, Lcom/baidu/sapi2/SapiWebView;->N:Lcom/baidu/sapi2/plugin/sso/SsoHandler;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/baidu/sapi2/SapiWebView;->N:Lcom/baidu/sapi2/plugin/sso/SsoHandler;

    invoke-virtual {v0, p1, p2, p3}, Lcom/baidu/sapi2/plugin/sso/SsoHandler;->authorizeCallBack(IILandroid/content/Intent;)V

    :cond_0
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1

    const/4 v0, 0x4

    if-ne p1, v0, :cond_1

    iget-object v0, p0, Lcom/baidu/sapi2/SapiWebView;->ac:Lcom/baidu/sapi2/SapiWebView$OnBackCallback;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/baidu/sapi2/SapiWebView;->ac:Lcom/baidu/sapi2/SapiWebView$OnBackCallback;

    invoke-interface {v0}, Lcom/baidu/sapi2/SapiWebView$OnBackCallback;->onBack()V

    :cond_0
    invoke-virtual {p0}, Lcom/baidu/sapi2/SapiWebView;->back()V

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    invoke-super {p0, p1, p2}, Landroid/webkit/WebView;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public onScrollChanged(IIII)V
    .locals 2

    iget-object v0, p0, Lcom/baidu/sapi2/SapiWebView;->R:Landroid/widget/ProgressBar;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/baidu/sapi2/SapiWebView;->R:Landroid/widget/ProgressBar;

    invoke-virtual {v0}, Landroid/widget/ProgressBar;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/AbsoluteLayout$LayoutParams;

    iput p1, v0, Landroid/widget/AbsoluteLayout$LayoutParams;->x:I

    iput p2, v0, Landroid/widget/AbsoluteLayout$LayoutParams;->y:I

    iget-object v1, p0, Lcom/baidu/sapi2/SapiWebView;->R:Landroid/widget/ProgressBar;

    invoke-virtual {v1, v0}, Landroid/widget/ProgressBar;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_0
    invoke-super {p0, p1, p2, p3, p4}, Landroid/webkit/WebView;->onScrollChanged(IIII)V

    return-void
.end method

.method public setAuthWidgetCallback(Lcom/baidu/sapi2/SapiWebView$AuthWidgetCallback;)V
    .locals 0

    iput-object p1, p0, Lcom/baidu/sapi2/SapiWebView;->K:Lcom/baidu/sapi2/SapiWebView$AuthWidgetCallback;

    return-void
.end method

.method public setAuthorizationListener(Lcom/baidu/sapi2/shell/listener/AuthorizationListener;)V
    .locals 0

    iput-object p1, p0, Lcom/baidu/sapi2/SapiWebView;->z:Lcom/baidu/sapi2/shell/listener/AuthorizationListener;

    return-void
.end method

.method public setChangePwdCallback(Lcom/baidu/sapi2/SapiWebView$ChangePwdCallback;)V
    .locals 0

    iput-object p1, p0, Lcom/baidu/sapi2/SapiWebView;->J:Lcom/baidu/sapi2/SapiWebView$ChangePwdCallback;

    return-void
.end method

.method public setDeviceLoginHandler(Landroid/os/Handler;)V
    .locals 0

    iput-object p1, p0, Lcom/baidu/sapi2/SapiWebView;->C:Landroid/os/Handler;

    return-void
.end method

.method public setFastRegHandler(Lcom/baidu/sapi2/SapiWebView$FastRegHandler;)V
    .locals 0

    iput-object p1, p0, Lcom/baidu/sapi2/SapiWebView;->D:Lcom/baidu/sapi2/SapiWebView$FastRegHandler;

    return-void
.end method

.method public setLcLoginHandler(Lcom/baidu/sapi2/SapiWebView$LCLoginHandler;)V
    .locals 0

    iput-object p1, p0, Lcom/baidu/sapi2/SapiWebView;->G:Lcom/baidu/sapi2/SapiWebView$LCLoginHandler;

    return-void
.end method

.method public setNmLoginHandler(Lcom/baidu/sapi2/SapiWebView$NMLoginHandler;)V
    .locals 0

    iput-object p1, p0, Lcom/baidu/sapi2/SapiWebView;->F:Lcom/baidu/sapi2/SapiWebView$NMLoginHandler;

    return-void
.end method

.method public final setNoNetworkView(Landroid/view/View;)V
    .locals 3

    const/4 v2, -0x1

    iget-object v0, p0, Lcom/baidu/sapi2/SapiWebView;->O:Landroid/view/View;

    if-nez v0, :cond_0

    iput-object p1, p0, Lcom/baidu/sapi2/SapiWebView;->O:Landroid/view/View;

    iget-object v0, p0, Lcom/baidu/sapi2/SapiWebView;->O:Landroid/view/View;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/baidu/sapi2/SapiWebView;->O:Landroid/view/View;

    new-instance v1, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v1, v2, v2}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v0, v1}, Lcom/baidu/sapi2/SapiWebView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :cond_0
    return-void
.end method

.method public setOnBackCallback(Lcom/baidu/sapi2/SapiWebView$OnBackCallback;)V
    .locals 0

    iput-object p1, p0, Lcom/baidu/sapi2/SapiWebView;->ac:Lcom/baidu/sapi2/SapiWebView$OnBackCallback;

    return-void
.end method

.method public setOnFinishCallback(Lcom/baidu/sapi2/SapiWebView$OnFinishCallback;)V
    .locals 0

    iput-object p1, p0, Lcom/baidu/sapi2/SapiWebView;->ab:Lcom/baidu/sapi2/SapiWebView$OnFinishCallback;

    return-void
.end method

.method public setProgressBar(Landroid/widget/ProgressBar;)V
    .locals 1

    iget-object v0, p0, Lcom/baidu/sapi2/SapiWebView;->R:Landroid/widget/ProgressBar;

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iput-object p1, p0, Lcom/baidu/sapi2/SapiWebView;->R:Landroid/widget/ProgressBar;

    iget-object v0, p0, Lcom/baidu/sapi2/SapiWebView;->R:Landroid/widget/ProgressBar;

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1}, Lcom/baidu/sapi2/SapiWebView;->addView(Landroid/view/View;)V

    goto :goto_0
.end method

.method public setQrAppLoginHandler(Landroid/os/Handler;)V
    .locals 0

    iput-object p1, p0, Lcom/baidu/sapi2/SapiWebView;->B:Landroid/os/Handler;

    return-void
.end method

.method public setSmsAutoCompleteHint(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/baidu/sapi2/SapiWebView;->Q:Ljava/lang/String;

    return-void
.end method

.method public setSocialLoginHandler(Landroid/os/Handler;)V
    .locals 0

    iput-object p1, p0, Lcom/baidu/sapi2/SapiWebView;->A:Landroid/os/Handler;

    return-void
.end method

.method public setTimeoutMillis(J)V
    .locals 1

    iput-wide p1, p0, Lcom/baidu/sapi2/SapiWebView;->T:J

    return-void
.end method

.method public final setTimeoutView(Landroid/view/View;)V
    .locals 3

    const/4 v2, -0x1

    iget-object v0, p0, Lcom/baidu/sapi2/SapiWebView;->P:Landroid/view/View;

    if-nez v0, :cond_0

    iput-object p1, p0, Lcom/baidu/sapi2/SapiWebView;->P:Landroid/view/View;

    iget-object v0, p0, Lcom/baidu/sapi2/SapiWebView;->P:Landroid/view/View;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/baidu/sapi2/SapiWebView;->P:Landroid/view/View;

    new-instance v1, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v1, v2, v2}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v0, v1}, Lcom/baidu/sapi2/SapiWebView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :cond_0
    return-void
.end method

.method public setUniteBindCallback(Lcom/baidu/sapi2/SapiWebView$UniteBindCallback;)V
    .locals 0

    iput-object p1, p0, Lcom/baidu/sapi2/SapiWebView;->M:Lcom/baidu/sapi2/SapiWebView$UniteBindCallback;

    return-void
.end method

.method public setUniteVerifyCallback(Lcom/baidu/sapi2/SapiWebView$UniteVerifyCallback;)V
    .locals 0

    iput-object p1, p0, Lcom/baidu/sapi2/SapiWebView;->L:Lcom/baidu/sapi2/SapiWebView$UniteVerifyCallback;

    return-void
.end method

.method public setUniteVerifyHandler(Lcom/baidu/sapi2/SapiWebView$UniteVerifyHandler;)V
    .locals 0

    iput-object p1, p0, Lcom/baidu/sapi2/SapiWebView;->H:Lcom/baidu/sapi2/SapiWebView$UniteVerifyHandler;

    return-void
.end method

.method public setVoiceLoginHandler(Lcom/baidu/sapi2/SapiWebView$VoiceLoginHandler;)V
    .locals 0

    iput-object p1, p0, Lcom/baidu/sapi2/SapiWebView;->E:Lcom/baidu/sapi2/SapiWebView$VoiceLoginHandler;

    return-void
.end method

.method public setWeixinHandler(Lcom/baidu/sapi2/SapiWebView$WeixinHandler;)V
    .locals 0

    iput-object p1, p0, Lcom/baidu/sapi2/SapiWebView;->I:Lcom/baidu/sapi2/SapiWebView$WeixinHandler;

    return-void
.end method

.method public weixinSSOLogin(Ljava/lang/String;Ljava/lang/String;)V
    .locals 6

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    :cond_1
    invoke-static {}, Lcom/baidu/sapi2/SapiAccountManager;->getInstance()Lcom/baidu/sapi2/SapiAccountManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/sapi2/SapiAccountManager;->getAccountService()Lcom/baidu/sapi2/shell/SapiAccountService;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/baidu/sapi2/shell/SapiAccountService;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/util/ArrayList;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mkey="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ";domain=."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/baidu/sapi2/SapiWebView;->y:Lcom/baidu/sapi2/SapiConfiguration;

    iget-object v3, v3, Lcom/baidu/sapi2/SapiConfiguration;->environment:Lcom/baidu/sapi2/utils/enums/Domain;

    invoke-virtual {v3}, Lcom/baidu/sapi2/utils/enums/Domain;->getURL()Ljava/lang/String;

    move-result-object v3

    const-string v4, "http://"

    const-string v5, ""

    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "(:[0-9]{1,4})?"

    const-string v5, ""

    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ";path=/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lorg/apache/http/message/BasicNameValuePair;

    iget-object v4, p0, Lcom/baidu/sapi2/SapiWebView;->y:Lcom/baidu/sapi2/SapiConfiguration;

    iget-object v4, v4, Lcom/baidu/sapi2/SapiConfiguration;->environment:Lcom/baidu/sapi2/utils/enums/Domain;

    invoke-virtual {v4}, Lcom/baidu/sapi2/utils/enums/Domain;->getURL()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4, v2}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0, v0, v1}, Lcom/baidu/sapi2/SapiWebView;->loadUrl(Ljava/lang/String;Ljava/util/List;)V

    return-void
.end method
