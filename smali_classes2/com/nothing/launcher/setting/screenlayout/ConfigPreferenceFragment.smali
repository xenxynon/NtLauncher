.class public final Lcom/nothing/launcher/setting/screenlayout/ConfigPreferenceFragment;
.super Landroidx/preference/PreferenceFragmentCompat;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/nothing/launcher/setting/screenlayout/ConfigPreferenceFragment$a;
    }
.end annotation


# static fields
.field public static final h:Lcom/nothing/launcher/setting/screenlayout/ConfigPreferenceFragment$a;


# instance fields
.field private final g:Ln5/e;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/nothing/launcher/setting/screenlayout/ConfigPreferenceFragment$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/nothing/launcher/setting/screenlayout/ConfigPreferenceFragment$a;-><init>(Lkotlin/jvm/internal/i;)V

    sput-object v0, Lcom/nothing/launcher/setting/screenlayout/ConfigPreferenceFragment;->h:Lcom/nothing/launcher/setting/screenlayout/ConfigPreferenceFragment$a;

    return-void
.end method

.method public constructor <init>()V
    .locals 5

    invoke-direct {p0}, Landroidx/preference/PreferenceFragmentCompat;-><init>()V

    sget-object v0, Lcom/nothing/launcher/setting/screenlayout/ConfigPreferenceFragment$b;->g:Lcom/nothing/launcher/setting/screenlayout/ConfigPreferenceFragment$b;

    const-class v1, Lcom/nothing/launcher/setting/screenlayout/a;

    invoke-static {v1}, Lkotlin/jvm/internal/b0;->b(Ljava/lang/Class;)Lf6/c;

    move-result-object v1

    new-instance v2, Lcom/nothing/launcher/setting/screenlayout/ConfigPreferenceFragment$d;

    invoke-direct {v2, p0}, Lcom/nothing/launcher/setting/screenlayout/ConfigPreferenceFragment$d;-><init>(Landroidx/fragment/app/Fragment;)V

    new-instance v3, Lcom/nothing/launcher/setting/screenlayout/ConfigPreferenceFragment$e;

    const/4 v4, 0x0

    invoke-direct {v3, v4, p0}, Lcom/nothing/launcher/setting/screenlayout/ConfigPreferenceFragment$e;-><init>(Ly5/a;Landroidx/fragment/app/Fragment;)V

    if-nez v0, :cond_0

    new-instance v0, Lcom/nothing/launcher/setting/screenlayout/ConfigPreferenceFragment$f;

    invoke-direct {v0, p0}, Lcom/nothing/launcher/setting/screenlayout/ConfigPreferenceFragment$f;-><init>(Landroidx/fragment/app/Fragment;)V

    :cond_0
    invoke-static {p0, v1, v2, v3, v0}, Landroidx/fragment/app/FragmentViewModelLazyKt;->createViewModelLazy(Landroidx/fragment/app/Fragment;Lf6/c;Ly5/a;Ly5/a;Ly5/a;)Ln5/e;

    move-result-object v0

    iput-object v0, p0, Lcom/nothing/launcher/setting/screenlayout/ConfigPreferenceFragment;->g:Ln5/e;

    return-void
.end method

.method public static final synthetic a(Lcom/nothing/launcher/setting/screenlayout/ConfigPreferenceFragment;)Lcom/nothing/launcher/setting/screenlayout/a;
    .locals 0

    invoke-direct {p0}, Lcom/nothing/launcher/setting/screenlayout/ConfigPreferenceFragment;->b()Lcom/nothing/launcher/setting/screenlayout/a;

    move-result-object p0

    return-object p0
.end method

.method private final b()Lcom/nothing/launcher/setting/screenlayout/a;
    .locals 0

    iget-object p0, p0, Lcom/nothing/launcher/setting/screenlayout/ConfigPreferenceFragment;->g:Ln5/e;

    invoke-interface {p0}, Ln5/e;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/nothing/launcher/setting/screenlayout/a;

    return-object p0
.end method

.method private final c()V
    .locals 7

    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object v0

    const-string v1, "preferenceScreen"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/n;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Landroidx/preference/PreferenceGroup;->getPreferenceCount()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_7

    add-int/lit8 v3, v2, 0x1

    invoke-static {v0, v2}, Landroidx/preference/PreferenceGroupKt;->get(Landroidx/preference/PreferenceGroup;I)Landroidx/preference/Preference;

    move-result-object v2

    invoke-virtual {v2}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_6

    invoke-virtual {v4}, Ljava/lang/String;->hashCode()I

    move-result v5

    const v6, -0x361bd4cb

    if-eq v5, v6, :cond_4

    const v6, -0x31dedccf    # -6.7585952E8f

    if-eq v5, v6, :cond_2

    const v6, -0x11ccb8ee

    if-eq v5, v6, :cond_0

    goto :goto_2

    :cond_0
    const-string v5, "pref_display_searchbar"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    goto :goto_2

    :cond_1
    instance-of v4, v2, Lcom/nothing/ui/support/NtCustSwitchPreference;

    if-eqz v4, :cond_6

    check-cast v2, Lcom/nothing/ui/support/NtCustSwitchPreference;

    invoke-direct {p0}, Lcom/nothing/launcher/setting/screenlayout/ConfigPreferenceFragment;->b()Lcom/nothing/launcher/setting/screenlayout/a;

    move-result-object v4

    invoke-virtual {v4}, Lcom/nothing/launcher/setting/screenlayout/a;->r()Lt4/c;

    move-result-object v4

    invoke-virtual {v4}, Lt4/c;->d()Z

    move-result v4

    goto :goto_1

    :cond_2
    const-string v5, "pref_display_workspace_label"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_3

    goto :goto_2

    :cond_3
    instance-of v4, v2, Lcom/nothing/ui/support/NtCustSwitchPreference;

    if-eqz v4, :cond_6

    check-cast v2, Lcom/nothing/ui/support/NtCustSwitchPreference;

    invoke-direct {p0}, Lcom/nothing/launcher/setting/screenlayout/ConfigPreferenceFragment;->b()Lcom/nothing/launcher/setting/screenlayout/a;

    move-result-object v4

    invoke-virtual {v4}, Lcom/nothing/launcher/setting/screenlayout/a;->r()Lt4/c;

    move-result-object v4

    invoke-virtual {v4}, Lt4/c;->c()Z

    move-result v4

    :goto_1
    invoke-virtual {v2, v4}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    goto :goto_2

    :cond_4
    const-string v5, "pref_app_grid_column"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_5

    goto :goto_2

    :cond_5
    instance-of v4, v2, Lcom/nothing/launcher/setting/screenlayout/GridConfigPreference;

    if-eqz v4, :cond_6

    check-cast v2, Lcom/nothing/launcher/setting/screenlayout/GridConfigPreference;

    invoke-direct {p0}, Lcom/nothing/launcher/setting/screenlayout/ConfigPreferenceFragment;->b()Lcom/nothing/launcher/setting/screenlayout/a;

    move-result-object v4

    invoke-virtual {v4}, Lcom/nothing/launcher/setting/screenlayout/a;->r()Lt4/c;

    move-result-object v4

    invoke-virtual {v4}, Lt4/c;->e()I

    move-result v4

    invoke-virtual {v2, v4}, Lcom/nothing/launcher/setting/screenlayout/GridConfigPreference;->g(I)V

    new-instance v4, Lcom/nothing/launcher/setting/screenlayout/ConfigPreferenceFragment$c;

    invoke-direct {v4, p0}, Lcom/nothing/launcher/setting/screenlayout/ConfigPreferenceFragment$c;-><init>(Lcom/nothing/launcher/setting/screenlayout/ConfigPreferenceFragment;)V

    invoke-virtual {v2, v4}, Lcom/nothing/launcher/setting/screenlayout/GridConfigPreference;->f(Ly5/l;)V

    :cond_6
    :goto_2
    move v2, v3

    goto/16 :goto_0

    :cond_7
    return-void
.end method


# virtual methods
.method public onCreatePreferences(Landroid/os/Bundle;Ljava/lang/String;)V
    .locals 0

    const p1, 0x7f15000c

    invoke-virtual {p0, p1, p2}, Landroidx/preference/PreferenceFragmentCompat;->setPreferencesFromResource(ILjava/lang/String;)V

    invoke-direct {p0}, Lcom/nothing/launcher/setting/screenlayout/ConfigPreferenceFragment;->c()V

    return-void
.end method

.method public onPreferenceTreeClick(Landroidx/preference/Preference;)Z
    .locals 3

    const-string v0, "preference"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v0

    const-string v1, "pref_display_searchbar"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/n;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    invoke-direct {p0}, Lcom/nothing/launcher/setting/screenlayout/ConfigPreferenceFragment;->b()Lcom/nothing/launcher/setting/screenlayout/a;

    move-result-object p0

    invoke-virtual {p0}, Lcom/nothing/launcher/setting/screenlayout/a;->u()V

    goto :goto_0

    :cond_0
    const-string v1, "pref_display_workspace_label"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/n;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/nothing/launcher/setting/screenlayout/ConfigPreferenceFragment;->b()Lcom/nothing/launcher/setting/screenlayout/a;

    move-result-object p0

    invoke-virtual {p0}, Lcom/nothing/launcher/setting/screenlayout/a;->t()V

    goto :goto_0

    :cond_1
    invoke-super {p0, p1}, Landroidx/preference/PreferenceFragmentCompat;->onPreferenceTreeClick(Landroidx/preference/Preference;)Z

    move-result v2

    :goto_0
    return v2
.end method
