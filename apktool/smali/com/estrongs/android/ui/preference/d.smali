.class Lcom/estrongs/android/ui/preference/d;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# instance fields
.field final synthetic a:Lcom/estrongs/android/ui/preference/FtpServerPreference;


# direct methods
.method constructor <init>(Lcom/estrongs/android/ui/preference/FtpServerPreference;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/ui/preference/d;->a:Lcom/estrongs/android/ui/preference/FtpServerPreference;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 6

    const/16 v5, 0x69

    const/4 v1, 0x0

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/estrongs/android/ui/preference/d;->a:Lcom/estrongs/android/ui/preference/FtpServerPreference;

    const/4 v3, 0x3

    invoke-static {v2, v3}, Lcom/estrongs/android/ui/preference/FtpServerPreference;->a(Lcom/estrongs/android/ui/preference/FtpServerPreference;I)I

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/ui/preference/d;->a:Lcom/estrongs/android/ui/preference/FtpServerPreference;

    invoke-virtual {v0, v5}, Lcom/estrongs/android/ui/preference/FtpServerPreference;->showDialog(I)V

    move v0, v1

    :goto_0
    return v0

    :cond_0
    sget-boolean v2, Lcom/estrongs/android/pop/z;->n:Z

    if-eqz v2, :cond_1

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    move v0, v1

    goto :goto_0

    :cond_1
    iget-object v2, p0, Lcom/estrongs/android/ui/preference/d;->a:Lcom/estrongs/android/ui/preference/FtpServerPreference;

    invoke-static {v2, v0}, Lcom/estrongs/android/ui/preference/FtpServerPreference;->a(Lcom/estrongs/android/ui/preference/FtpServerPreference;Ljava/lang/String;)Z

    move-result v2

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {v0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v4, 0x2f

    if-eq v3, v4, :cond_2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "/"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_2
    iget-object v3, p0, Lcom/estrongs/android/ui/preference/d;->a:Lcom/estrongs/android/ui/preference/FtpServerPreference;

    invoke-static {v3, v0}, Lcom/estrongs/android/ui/preference/FtpServerPreference;->b(Lcom/estrongs/android/ui/preference/FtpServerPreference;Ljava/lang/String;)Ljava/lang/String;

    if-eqz v2, :cond_3

    iget-object v1, p0, Lcom/estrongs/android/ui/preference/d;->a:Lcom/estrongs/android/ui/preference/FtpServerPreference;

    iget-object v1, v1, Lcom/estrongs/android/ui/preference/FtpServerPreference;->a:Lcom/estrongs/android/ui/preference/DirChoosePreference;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/estrongs/android/ui/preference/d;->a:Lcom/estrongs/android/ui/preference/FtpServerPreference;

    const v4, 0x7f080243

    invoke-virtual {v3, v4}, Lcom/estrongs/android/ui/preference/FtpServerPreference;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/estrongs/android/ui/preference/DirChoosePreference;->setSummary(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/estrongs/android/ui/preference/d;->a:Lcom/estrongs/android/ui/preference/FtpServerPreference;

    iget-object v1, v1, Lcom/estrongs/android/ui/preference/FtpServerPreference;->a:Lcom/estrongs/android/ui/preference/DirChoosePreference;

    invoke-virtual {v1, v0}, Lcom/estrongs/android/ui/preference/DirChoosePreference;->setText(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/estrongs/android/ui/preference/d;->a:Lcom/estrongs/android/ui/preference/FtpServerPreference;

    invoke-static {v1}, Lcom/estrongs/android/ui/preference/FtpServerPreference;->a(Lcom/estrongs/android/ui/preference/FtpServerPreference;)Lcom/estrongs/android/pop/ad;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/estrongs/android/pop/ad;->D(Ljava/lang/String;)V

    :try_start_0
    invoke-static {}, Lcom/estrongs/android/ftp/k;->a()Lcom/estrongs/android/ftp/k;

    move-result-object v1

    iget-object v2, p0, Lcom/estrongs/android/ui/preference/d;->a:Lcom/estrongs/android/ui/preference/FtpServerPreference;

    new-instance v3, Lcom/estrongs/android/ui/preference/e;

    invoke-direct {v3, p0, v1, v0}, Lcom/estrongs/android/ui/preference/e;-><init>(Lcom/estrongs/android/ui/preference/d;Lcom/estrongs/android/ftp/k;Ljava/lang/String;)V

    invoke-virtual {v1, v2, v3}, Lcom/estrongs/android/ftp/k;->a(Landroid/content/Context;Lcom/estrongs/android/ftp/m;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    const/4 v0, 0x1

    goto/16 :goto_0

    :cond_3
    iget-object v0, p0, Lcom/estrongs/android/ui/preference/d;->a:Lcom/estrongs/android/ui/preference/FtpServerPreference;

    invoke-virtual {v0, v5}, Lcom/estrongs/android/ui/preference/FtpServerPreference;->showDialog(I)V

    move v0, v1

    goto/16 :goto_0

    :catch_0
    move-exception v0

    goto :goto_1
.end method
