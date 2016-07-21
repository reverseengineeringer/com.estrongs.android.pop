.class Lcom/estrongs/android/pop/app/hz;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Lcom/estrongs/android/pop/app/PopPreferenceActivity;


# direct methods
.method constructor <init>(Lcom/estrongs/android/pop/app/PopPreferenceActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/pop/app/hz;->a:Lcom/estrongs/android/pop/app/PopPreferenceActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 6

    const/4 v5, 0x1

    const/4 v4, 0x0

    move-object v0, p1

    check-cast v0, Lcom/estrongs/android/ui/dialog/ci;

    const v1, 0x7f0e050b

    invoke-virtual {v0, v1}, Lcom/estrongs/android/ui/dialog/ci;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    const v1, 0x7f0e050f

    invoke-virtual {v0, v1}, Lcom/estrongs/android/ui/dialog/ci;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_0

    new-instance v1, Ljava/lang/String;

    const-string v3, ""

    invoke-direct {v1, v3}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    :cond_0
    const v3, 0x7f0e0511

    invoke-virtual {v0, v3}, Lcom/estrongs/android/ui/dialog/ci;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    new-instance v0, Ljava/lang/String;

    const-string v3, ""

    invoke-direct {v0, v3}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    :cond_1
    iget-object v3, p0, Lcom/estrongs/android/pop/app/hz;->a:Lcom/estrongs/android/pop/app/PopPreferenceActivity;

    invoke-static {v3}, Lcom/estrongs/android/pop/ad;->a(Landroid/content/Context;)Lcom/estrongs/android/pop/ad;

    move-result-object v3

    invoke-virtual {v3}, Lcom/estrongs/android/pop/ad;->H()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/estrongs/android/pop/app/hz;->a:Lcom/estrongs/android/pop/app/PopPreferenceActivity;

    const v1, 0x7f08043f

    invoke-static {v0, v1, v5}, Lcom/estrongs/android/ui/view/ak;->a(Landroid/content/Context;II)V

    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    :goto_0
    return-void

    :cond_2
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/estrongs/android/pop/app/hz;->a:Lcom/estrongs/android/pop/app/PopPreferenceActivity;

    const v1, 0x7f080428

    invoke-static {v0, v1, v5}, Lcom/estrongs/android/ui/view/ak;->a(Landroid/content/Context;II)V

    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    goto :goto_0

    :cond_3
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_4

    iget-object v0, p0, Lcom/estrongs/android/pop/app/hz;->a:Lcom/estrongs/android/pop/app/PopPreferenceActivity;

    invoke-static {v0}, Lcom/estrongs/android/pop/ad;->a(Landroid/content/Context;)Lcom/estrongs/android/pop/ad;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/estrongs/android/pop/ad;->x(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/estrongs/android/pop/app/hz;->a:Lcom/estrongs/android/pop/app/PopPreferenceActivity;

    const v1, 0x7f08043c

    invoke-static {v0, v1, v5}, Lcom/estrongs/android/ui/view/ak;->a(Landroid/content/Context;II)V

    :goto_1
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    goto :goto_0

    :cond_4
    iget-object v0, p0, Lcom/estrongs/android/pop/app/hz;->a:Lcom/estrongs/android/pop/app/PopPreferenceActivity;

    invoke-static {v0}, Lcom/estrongs/android/pop/ad;->a(Landroid/content/Context;)Lcom/estrongs/android/pop/ad;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/estrongs/android/pop/ad;->x(Ljava/lang/String;)V

    invoke-static {}, Lcom/estrongs/android/pop/FexApplication;->a()Lcom/estrongs/android/pop/FexApplication;

    move-result-object v0

    iget-object v1, p0, Lcom/estrongs/android/pop/app/hz;->a:Lcom/estrongs/android/pop/app/PopPreferenceActivity;

    iget-object v1, v1, Lcom/estrongs/android/pop/app/PopPreferenceActivity;->f:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1, v4}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    invoke-virtual {v0, v4}, Lcom/estrongs/android/pop/FexApplication;->c(Z)V

    iget-object v1, p0, Lcom/estrongs/android/pop/app/hz;->a:Lcom/estrongs/android/pop/app/PopPreferenceActivity;

    iget-object v1, v1, Lcom/estrongs/android/pop/app/PopPreferenceActivity;->g:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1, v4}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    invoke-virtual {v0, v4}, Lcom/estrongs/android/pop/FexApplication;->d(Z)V

    iget-object v1, p0, Lcom/estrongs/android/pop/app/hz;->a:Lcom/estrongs/android/pop/app/PopPreferenceActivity;

    iget-object v1, v1, Lcom/estrongs/android/pop/app/PopPreferenceActivity;->h:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1, v4}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    invoke-virtual {v0, v4}, Lcom/estrongs/android/pop/FexApplication;->e(Z)V

    iget-object v0, p0, Lcom/estrongs/android/pop/app/hz;->a:Lcom/estrongs/android/pop/app/PopPreferenceActivity;

    iget-object v0, v0, Lcom/estrongs/android/pop/app/PopPreferenceActivity;->p:Landroid/preference/Preference;

    invoke-virtual {v0, v4}, Landroid/preference/Preference;->setEnabled(Z)V

    iget-object v0, p0, Lcom/estrongs/android/pop/app/hz;->a:Lcom/estrongs/android/pop/app/PopPreferenceActivity;

    const v1, 0x7f0804a7

    invoke-static {v0, v1, v5}, Lcom/estrongs/android/ui/view/ak;->a(Landroid/content/Context;II)V

    goto :goto_1
.end method
