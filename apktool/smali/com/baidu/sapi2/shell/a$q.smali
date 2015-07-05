.class Lcom/baidu/sapi2/shell/a$q;
.super Lcom/baidu/cloudsdk/common/http/HttpResponseHandler;


# instance fields
.field final synthetic a:Lcom/baidu/sapi2/shell/callback/VoiceCheckCallBack;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Lcom/baidu/sapi2/shell/a;


# direct methods
.method constructor <init>(Lcom/baidu/sapi2/shell/a;Lcom/baidu/sapi2/shell/callback/VoiceCheckCallBack;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/baidu/sapi2/shell/a$q;->c:Lcom/baidu/sapi2/shell/a;

    iput-object p2, p0, Lcom/baidu/sapi2/shell/a$q;->a:Lcom/baidu/sapi2/shell/callback/VoiceCheckCallBack;

    iput-object p3, p0, Lcom/baidu/sapi2/shell/a$q;->b:Ljava/lang/String;

    invoke-direct {p0}, Lcom/baidu/cloudsdk/common/http/HttpResponseHandler;-><init>()V

    return-void
.end method


# virtual methods
.method protected onFailure(Ljava/lang/Throwable;Ljava/lang/String;)V
    .locals 3

    iget-object v0, p0, Lcom/baidu/sapi2/shell/a$q;->c:Lcom/baidu/sapi2/shell/a;

    invoke-static {v0}, Lcom/baidu/sapi2/shell/a;->a(Lcom/baidu/sapi2/shell/a;)Lcom/baidu/sapi2/utils/e;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/sapi2/utils/e;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/baidu/sapi2/shell/a$q;->c:Lcom/baidu/sapi2/shell/a;

    invoke-static {v0}, Lcom/baidu/sapi2/shell/a;->a(Lcom/baidu/sapi2/shell/a;)Lcom/baidu/sapi2/utils/e;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/sapi2/utils/e;->d()V

    iget-object v0, p0, Lcom/baidu/sapi2/shell/a$q;->c:Lcom/baidu/sapi2/shell/a;

    iget-object v1, p0, Lcom/baidu/sapi2/shell/a$q;->a:Lcom/baidu/sapi2/shell/callback/VoiceCheckCallBack;

    invoke-static {v0, v1, p2}, Lcom/baidu/sapi2/shell/a;->a(Lcom/baidu/sapi2/shell/a;Lcom/baidu/sapi2/shell/callback/VoiceCheckCallBack;Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/baidu/sapi2/shell/a$q;->c:Lcom/baidu/sapi2/shell/a;

    invoke-static {v0}, Lcom/baidu/sapi2/shell/a;->a(Lcom/baidu/sapi2/shell/a;)Lcom/baidu/sapi2/utils/e;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/sapi2/utils/e;->b()V

    iget-object v0, p0, Lcom/baidu/sapi2/shell/a$q;->c:Lcom/baidu/sapi2/shell/a;

    iget-object v1, p0, Lcom/baidu/sapi2/shell/a$q;->a:Lcom/baidu/sapi2/shell/callback/VoiceCheckCallBack;

    iget-object v2, p0, Lcom/baidu/sapi2/shell/a$q;->b:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/baidu/sapi2/shell/a;->a(Lcom/baidu/sapi2/shell/callback/VoiceCheckCallBack;Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected onSuccess(ILjava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/baidu/sapi2/shell/a$q;->c:Lcom/baidu/sapi2/shell/a;

    invoke-static {v0}, Lcom/baidu/sapi2/shell/a;->a(Lcom/baidu/sapi2/shell/a;)Lcom/baidu/sapi2/utils/e;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/sapi2/utils/e;->d()V

    iget-object v0, p0, Lcom/baidu/sapi2/shell/a$q;->c:Lcom/baidu/sapi2/shell/a;

    iget-object v1, p0, Lcom/baidu/sapi2/shell/a$q;->a:Lcom/baidu/sapi2/shell/callback/VoiceCheckCallBack;

    invoke-static {v0, v1, p2}, Lcom/baidu/sapi2/shell/a;->a(Lcom/baidu/sapi2/shell/a;Lcom/baidu/sapi2/shell/callback/VoiceCheckCallBack;Ljava/lang/String;)V

    return-void
.end method
