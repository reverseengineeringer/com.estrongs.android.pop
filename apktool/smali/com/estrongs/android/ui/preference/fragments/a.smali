.class Lcom/estrongs/android/ui/preference/fragments/a;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# instance fields
.field final synthetic a:Lcom/estrongs/android/ui/preference/fragments/AppPreferenceFragment;


# direct methods
.method constructor <init>(Lcom/estrongs/android/ui/preference/fragments/AppPreferenceFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/ui/preference/fragments/a;->a:Lcom/estrongs/android/ui/preference/fragments/AppPreferenceFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 6

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    const-string v4, ""

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/ui/preference/fragments/a;->a:Lcom/estrongs/android/ui/preference/fragments/AppPreferenceFragment;

    invoke-static {v0}, Lcom/estrongs/android/ui/preference/fragments/AppPreferenceFragment;->a(Lcom/estrongs/android/ui/preference/fragments/AppPreferenceFragment;)V

    :goto_0
    return v2

    :cond_0
    invoke-static {v3}, Lcom/estrongs/fs/impl/local/h;->h(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {v3}, Lcom/estrongs/fs/impl/local/h;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    move v0, v1

    :goto_1
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    invoke-virtual {v3, v4}, Ljava/lang/String;->charAt(I)C

    move-result v4

    const/16 v5, 0x2f

    if-eq v4, v5, :cond_1

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    :cond_1
    iget-object v4, p0, Lcom/estrongs/android/ui/preference/fragments/a;->a:Lcom/estrongs/android/ui/preference/fragments/AppPreferenceFragment;

    invoke-static {v4, v3}, Lcom/estrongs/android/ui/preference/fragments/AppPreferenceFragment;->a(Lcom/estrongs/android/ui/preference/fragments/AppPreferenceFragment;Ljava/lang/String;)Ljava/lang/String;

    iget-object v4, p0, Lcom/estrongs/android/ui/preference/fragments/a;->a:Lcom/estrongs/android/ui/preference/fragments/AppPreferenceFragment;

    invoke-static {v4, v1}, Lcom/estrongs/android/ui/preference/fragments/AppPreferenceFragment;->a(Lcom/estrongs/android/ui/preference/fragments/AppPreferenceFragment;I)I

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/estrongs/android/ui/preference/fragments/a;->a:Lcom/estrongs/android/ui/preference/fragments/AppPreferenceFragment;

    invoke-static {v0}, Lcom/estrongs/android/ui/preference/fragments/AppPreferenceFragment;->b(Lcom/estrongs/android/ui/preference/fragments/AppPreferenceFragment;)Landroid/preference/EditTextPreference;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/preference/EditTextPreference;->setSummary(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/estrongs/android/ui/preference/fragments/a;->a:Lcom/estrongs/android/ui/preference/fragments/AppPreferenceFragment;

    invoke-static {v0}, Lcom/estrongs/android/ui/preference/fragments/AppPreferenceFragment;->b(Lcom/estrongs/android/ui/preference/fragments/AppPreferenceFragment;)Landroid/preference/EditTextPreference;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/preference/EditTextPreference;->setText(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/estrongs/android/ui/preference/fragments/a;->a:Lcom/estrongs/android/ui/preference/fragments/AppPreferenceFragment;

    invoke-static {v0}, Lcom/estrongs/android/ui/preference/fragments/AppPreferenceFragment;->c(Lcom/estrongs/android/ui/preference/fragments/AppPreferenceFragment;)Lcom/estrongs/android/pop/ad;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/estrongs/android/pop/ad;->s(Ljava/lang/String;)V

    move v2, v1

    goto :goto_0

    :cond_2
    move v0, v2

    goto :goto_1

    :cond_3
    iget-object v0, p0, Lcom/estrongs/android/ui/preference/fragments/a;->a:Lcom/estrongs/android/ui/preference/fragments/AppPreferenceFragment;

    invoke-static {v0}, Lcom/estrongs/android/ui/preference/fragments/AppPreferenceFragment;->a(Lcom/estrongs/android/ui/preference/fragments/AppPreferenceFragment;)V

    goto :goto_0
.end method
