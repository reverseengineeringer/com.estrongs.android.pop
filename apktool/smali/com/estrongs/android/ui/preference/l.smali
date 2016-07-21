.class Lcom/estrongs/android/ui/preference/l;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/estrongs/android/util/d;


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/estrongs/android/ui/preference/k;


# direct methods
.method constructor <init>(Lcom/estrongs/android/ui/preference/k;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/ui/preference/l;->b:Lcom/estrongs/android/ui/preference/k;

    iput-object p2, p0, Lcom/estrongs/android/ui/preference/l;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 4

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/estrongs/android/ui/preference/l;->a:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x1

    :try_start_0
    invoke-static {p1}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    if-nez v2, :cond_0

    move v0, v1

    :cond_0
    :goto_0
    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/estrongs/android/ui/preference/l;->b:Lcom/estrongs/android/ui/preference/k;

    iget-object v0, v0, Lcom/estrongs/android/ui/preference/k;->a:Lcom/estrongs/android/ui/preference/FtpServerPreference;

    invoke-static {v0}, Lcom/estrongs/android/pop/ad;->a(Landroid/content/Context;)Lcom/estrongs/android/pop/ad;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/estrongs/android/pop/ad;->E(Ljava/lang/String;)V

    sput-object p1, Lcom/estrongs/android/ftp/a;->f:Ljava/lang/String;

    iget-object v0, p0, Lcom/estrongs/android/ui/preference/l;->b:Lcom/estrongs/android/ui/preference/k;

    iget-object v0, v0, Lcom/estrongs/android/ui/preference/k;->a:Lcom/estrongs/android/ui/preference/FtpServerPreference;

    iget-object v0, v0, Lcom/estrongs/android/ui/preference/FtpServerPreference;->d:Landroid/preference/Preference;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/estrongs/android/ui/preference/l;->b:Lcom/estrongs/android/ui/preference/k;

    iget-object v2, v2, Lcom/estrongs/android/ui/preference/k;->a:Lcom/estrongs/android/ui/preference/FtpServerPreference;

    const v3, 0x7f080534

    invoke-virtual {v2, v3}, Lcom/estrongs/android/ui/preference/FtpServerPreference;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    :cond_1
    :goto_1
    return-void

    :catch_0
    move-exception v0

    move v0, v1

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/estrongs/android/ui/preference/l;->b:Lcom/estrongs/android/ui/preference/k;

    iget-object v0, v0, Lcom/estrongs/android/ui/preference/k;->a:Lcom/estrongs/android/ui/preference/FtpServerPreference;

    const v2, 0x7f080536

    invoke-static {v0, v2, v1}, Lcom/estrongs/android/ui/view/ak;->a(Landroid/content/Context;II)V

    goto :goto_1
.end method
