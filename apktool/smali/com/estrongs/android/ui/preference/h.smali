.class Lcom/estrongs/android/ui/preference/h;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# instance fields
.field final synthetic a:Lcom/estrongs/android/ui/preference/FtpServerPreference;


# direct methods
.method constructor <init>(Lcom/estrongs/android/ui/preference/FtpServerPreference;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/ui/preference/h;->a:Lcom/estrongs/android/ui/preference/FtpServerPreference;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 6

    const/4 v1, 0x1

    const/4 v0, 0x0

    iget-object v2, p0, Lcom/estrongs/android/ui/preference/h;->a:Lcom/estrongs/android/ui/preference/FtpServerPreference;

    invoke-static {v2}, Lcom/estrongs/android/pop/ad;->a(Landroid/content/Context;)Lcom/estrongs/android/pop/ad;

    move-result-object v2

    invoke-virtual {v2}, Lcom/estrongs/android/pop/ad;->V()I

    move-result v2

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    const-string v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    iget-object v1, p0, Lcom/estrongs/android/ui/preference/h;->a:Lcom/estrongs/android/ui/preference/FtpServerPreference;

    const-string v2, "Port can\'t be null"

    invoke-static {v1, v2, v0}, Lcom/estrongs/android/ui/view/ag;->a(Landroid/content/Context;Ljava/lang/CharSequence;I)V

    :goto_0
    return v0

    :cond_0
    :try_start_0
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    const/16 v4, 0x400

    if-le v3, v4, :cond_1

    const v4, 0xffff

    if-lt v3, v4, :cond_2

    :cond_1
    new-instance v1, Ljava/lang/Exception;

    invoke-direct {v1}, Ljava/lang/Exception;-><init>()V

    throw v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception v1

    iget-object v1, p0, Lcom/estrongs/android/ui/preference/h;->a:Lcom/estrongs/android/ui/preference/FtpServerPreference;

    const v2, 0x7f0b0146

    invoke-static {v1, v2, v0}, Lcom/estrongs/android/ui/view/ag;->a(Landroid/content/Context;II)V

    goto :goto_0

    :cond_2
    if-ne v3, v2, :cond_3

    move v0, v1

    goto :goto_0

    :cond_3
    iget-object v2, p0, Lcom/estrongs/android/ui/preference/h;->a:Lcom/estrongs/android/ui/preference/FtpServerPreference;

    invoke-static {v2}, Lcom/estrongs/android/pop/ad;->a(Landroid/content/Context;)Lcom/estrongs/android/pop/ad;

    move-result-object v2

    invoke-virtual {v2, v3}, Lcom/estrongs/android/pop/ad;->b(I)V

    :try_start_1
    new-instance v2, Landroid/content/Intent;

    iget-object v4, p0, Lcom/estrongs/android/ui/preference/h;->a:Lcom/estrongs/android/ui/preference/FtpServerPreference;

    const-class v5, Lcom/estrongs/android/pop/ftp/ESFtpShortcut;

    invoke-direct {v2, v4, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v4, "mode"

    const/4 v5, 0x2

    invoke-virtual {v2, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :goto_1
    iget-object v2, p0, Lcom/estrongs/android/ui/preference/h;->a:Lcom/estrongs/android/ui/preference/FtpServerPreference;

    const v4, 0x7f0b0145

    invoke-static {v2, v4, v0}, Lcom/estrongs/android/ui/view/ag;->a(Landroid/content/Context;II)V

    iget-object v0, p0, Lcom/estrongs/android/ui/preference/h;->a:Lcom/estrongs/android/ui/preference/FtpServerPreference;

    iget-object v0, v0, Lcom/estrongs/android/ui/preference/FtpServerPreference;->b:Landroid/preference/EditTextPreference;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/estrongs/android/ui/preference/h;->a:Lcom/estrongs/android/ui/preference/FtpServerPreference;

    const v5, 0x7f0b0143

    invoke-virtual {v4, v5}, Lcom/estrongs/android/ui/preference/FtpServerPreference;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, ""

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/preference/EditTextPreference;->setSummary(Ljava/lang/CharSequence;)V

    move v0, v1

    goto :goto_0

    :catch_1
    move-exception v2

    goto :goto_1
.end method
