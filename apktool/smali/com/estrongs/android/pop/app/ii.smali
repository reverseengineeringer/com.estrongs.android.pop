.class Lcom/estrongs/android/pop/app/ii;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# instance fields
.field final synthetic a:Lcom/estrongs/android/pop/app/PopPreferenceActivity;


# direct methods
.method constructor <init>(Lcom/estrongs/android/pop/app/PopPreferenceActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/pop/app/ii;->a:Lcom/estrongs/android/pop/app/PopPreferenceActivity;

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

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/pop/app/ii;->a:Lcom/estrongs/android/pop/app/PopPreferenceActivity;

    invoke-virtual {v0, v5}, Lcom/estrongs/android/pop/app/PopPreferenceActivity;->showDialog(I)V

    move v0, v1

    :goto_0
    return v0

    :cond_0
    iget-object v2, p0, Lcom/estrongs/android/pop/app/ii;->a:Lcom/estrongs/android/pop/app/PopPreferenceActivity;

    invoke-static {v2, v0}, Lcom/estrongs/android/pop/app/PopPreferenceActivity;->a(Lcom/estrongs/android/pop/app/PopPreferenceActivity;Ljava/lang/String;)Z

    move-result v2

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {v0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v4, 0x2f

    if-eq v3, v4, :cond_1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "/"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_1
    iget-object v3, p0, Lcom/estrongs/android/pop/app/ii;->a:Lcom/estrongs/android/pop/app/PopPreferenceActivity;

    invoke-static {v3, v0}, Lcom/estrongs/android/pop/app/PopPreferenceActivity;->b(Lcom/estrongs/android/pop/app/PopPreferenceActivity;Ljava/lang/String;)Ljava/lang/String;

    iget-object v3, p0, Lcom/estrongs/android/pop/app/ii;->a:Lcom/estrongs/android/pop/app/PopPreferenceActivity;

    const/4 v4, 0x3

    invoke-static {v3, v4}, Lcom/estrongs/android/pop/app/PopPreferenceActivity;->a(Lcom/estrongs/android/pop/app/PopPreferenceActivity;I)I

    if-eqz v2, :cond_2

    iget-object v1, p0, Lcom/estrongs/android/pop/app/ii;->a:Lcom/estrongs/android/pop/app/PopPreferenceActivity;

    iget-object v1, v1, Lcom/estrongs/android/pop/app/PopPreferenceActivity;->e:Landroid/preference/EditTextPreference;

    invoke-virtual {v1, v0}, Landroid/preference/EditTextPreference;->setSummary(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/estrongs/android/pop/app/ii;->a:Lcom/estrongs/android/pop/app/PopPreferenceActivity;

    iget-object v1, v1, Lcom/estrongs/android/pop/app/PopPreferenceActivity;->e:Landroid/preference/EditTextPreference;

    invoke-virtual {v1, v0}, Landroid/preference/EditTextPreference;->setText(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/estrongs/android/pop/app/ii;->a:Lcom/estrongs/android/pop/app/PopPreferenceActivity;

    iget-object v1, v1, Lcom/estrongs/android/pop/app/PopPreferenceActivity;->b:Lcom/estrongs/android/pop/ad;

    invoke-virtual {v1, v0}, Lcom/estrongs/android/pop/ad;->u(Ljava/lang/String;)V

    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/estrongs/android/pop/app/ii;->a:Lcom/estrongs/android/pop/app/PopPreferenceActivity;

    invoke-virtual {v0, v5}, Lcom/estrongs/android/pop/app/PopPreferenceActivity;->showDialog(I)V

    move v0, v1

    goto :goto_0
.end method
