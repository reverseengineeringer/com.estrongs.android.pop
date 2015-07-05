.class Lcom/estrongs/android/ui/preference/f;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Lcom/estrongs/android/ui/preference/FtpServerPreference;


# direct methods
.method constructor <init>(Lcom/estrongs/android/ui/preference/FtpServerPreference;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/ui/preference/f;->a:Lcom/estrongs/android/ui/preference/FtpServerPreference;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 6

    const v5, 0x7f0b0144

    move-object v0, p1

    check-cast v0, Lcom/estrongs/android/ui/dialog/cg;

    const v1, 0x7f0a02bd

    invoke-virtual {v0, v1}, Lcom/estrongs/android/ui/dialog/cg;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f0a02be

    invoke-virtual {v0, v2}, Lcom/estrongs/android/ui/dialog/cg;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/estrongs/android/ui/preference/f;->a:Lcom/estrongs/android/ui/preference/FtpServerPreference;

    invoke-static {v2}, Lcom/estrongs/android/pop/ad;->a(Landroid/content/Context;)Lcom/estrongs/android/pop/ad;

    move-result-object v2

    invoke-virtual {v2, v1, v0}, Lcom/estrongs/android/pop/ad;->g(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_0
    invoke-static {}, Lcom/estrongs/android/ftp/k;->a()Lcom/estrongs/android/ftp/k;

    move-result-object v2

    iget-object v3, p0, Lcom/estrongs/android/ui/preference/f;->a:Lcom/estrongs/android/ui/preference/FtpServerPreference;

    new-instance v4, Lcom/estrongs/android/ui/preference/g;

    invoke-direct {v4, p0, v2, v1, v0}, Lcom/estrongs/android/ui/preference/g;-><init>(Lcom/estrongs/android/ui/preference/f;Lcom/estrongs/android/ftp/k;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2, v3, v4}, Lcom/estrongs/android/ftp/k;->a(Landroid/content/Context;Lcom/estrongs/android/ftp/m;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/estrongs/android/ui/preference/f;->a:Lcom/estrongs/android/ui/preference/FtpServerPreference;

    iget-object v1, v0, Lcom/estrongs/android/ui/preference/FtpServerPreference;->c:Landroid/preference/Preference;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/estrongs/android/ui/preference/f;->a:Lcom/estrongs/android/ui/preference/FtpServerPreference;

    invoke-virtual {v2, v5}, Lcom/estrongs/android/ui/preference/FtpServerPreference;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v0, p0, Lcom/estrongs/android/ui/preference/f;->a:Lcom/estrongs/android/ui/preference/FtpServerPreference;

    const v3, 0x7f0b006c

    invoke-virtual {v0, v3}, Lcom/estrongs/android/ui/preference/FtpServerPreference;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    :goto_1
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    return-void

    :cond_1
    iget-object v0, p0, Lcom/estrongs/android/ui/preference/f;->a:Lcom/estrongs/android/ui/preference/FtpServerPreference;

    iget-object v0, v0, Lcom/estrongs/android/ui/preference/FtpServerPreference;->c:Landroid/preference/Preference;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/estrongs/android/ui/preference/f;->a:Lcom/estrongs/android/ui/preference/FtpServerPreference;

    invoke-virtual {v3, v5}, Lcom/estrongs/android/ui/preference/FtpServerPreference;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_1

    :catch_0
    move-exception v0

    goto :goto_0
.end method
