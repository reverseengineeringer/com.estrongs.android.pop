.class Lcom/estrongs/android/ui/preference/i;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/estrongs/android/ftp/m;


# instance fields
.field final synthetic a:Lcom/estrongs/android/ftp/k;

.field final synthetic b:Lcom/estrongs/android/ui/preference/FtpServerPreference;


# direct methods
.method constructor <init>(Lcom/estrongs/android/ui/preference/FtpServerPreference;Lcom/estrongs/android/ftp/k;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/ui/preference/i;->b:Lcom/estrongs/android/ui/preference/FtpServerPreference;

    iput-object p2, p0, Lcom/estrongs/android/ui/preference/i;->a:Lcom/estrongs/android/ftp/k;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/estrongs/android/ui/preference/i;->a:Lcom/estrongs/android/ftp/k;

    invoke-virtual {v0}, Lcom/estrongs/android/ftp/k;->b()Lcom/estrongs/android/ftp/a;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/estrongs/android/ftp/a;->i()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/ui/preference/i;->b:Lcom/estrongs/android/ui/preference/FtpServerPreference;

    invoke-static {v0}, Lcom/estrongs/android/pop/ad;->a(Landroid/content/Context;)Lcom/estrongs/android/pop/ad;

    move-result-object v0

    invoke-virtual {v0}, Lcom/estrongs/android/pop/ad;->V()I

    :cond_0
    iget-object v0, p0, Lcom/estrongs/android/ui/preference/i;->a:Lcom/estrongs/android/ftp/k;

    iget-object v1, p0, Lcom/estrongs/android/ui/preference/i;->b:Lcom/estrongs/android/ui/preference/FtpServerPreference;

    invoke-virtual {v0, v1}, Lcom/estrongs/android/ftp/k;->b(Landroid/content/Context;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method
