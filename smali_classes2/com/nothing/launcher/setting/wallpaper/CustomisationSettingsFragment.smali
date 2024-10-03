.class public final Lcom/nothing/launcher/setting/wallpaper/CustomisationSettingsFragment;
.super Lcom/nothing/launcher/setting/BaseSettingsFragment;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/nothing/launcher/setting/wallpaper/CustomisationSettingsFragment$a;
    }
.end annotation


# static fields
.field public static final i:Lcom/nothing/launcher/setting/wallpaper/CustomisationSettingsFragment$a;


# instance fields
.field private g:Ljava/lang/String;

.field private h:F


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/nothing/launcher/setting/wallpaper/CustomisationSettingsFragment$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/nothing/launcher/setting/wallpaper/CustomisationSettingsFragment$a;-><init>(Lkotlin/jvm/internal/i;)V

    sput-object v0, Lcom/nothing/launcher/setting/wallpaper/CustomisationSettingsFragment;->i:Lcom/nothing/launcher/setting/wallpaper/CustomisationSettingsFragment$a;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/nothing/launcher/setting/BaseSettingsFragment;-><init>()V

    return-void
.end method

.method private final c()V
    .locals 3

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "requireContext()"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/n;->d(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v2, Lo3/b;->p:Lo3/b$b;

    invoke-virtual {v2}, Lo3/b$b;->a()Lo3/b;

    move-result-object v2

    invoke-virtual {v2, v0}, Lo3/b;->l(Landroid/content/Context;)Lv3/a;

    move-result-object v2

    invoke-static {v2, v0}, Lb3/d;->a(Lv3/a;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/nothing/launcher/setting/wallpaper/CustomisationSettingsFragment;->g:Ljava/lang/String;

    const-string v0, "pref_icon_pack"

    invoke-virtual {p0, v0}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v2, p0, Lcom/nothing/launcher/setting/wallpaper/CustomisationSettingsFragment;->g:Ljava/lang/String;

    if-nez v2, :cond_0

    const-string v2, "iconPackNameInUse"

    invoke-static {v2}, Lkotlin/jvm/internal/n;->t(Ljava/lang/String;)V

    const/4 v2, 0x0

    :cond_0
    invoke-virtual {v0, v2}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0, v1}, Lkotlin/jvm/internal/n;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0}, Lw2/a;->b(Landroid/content/Context;)Z

    move-result p0

    invoke-virtual {v0, p0}, Landroidx/preference/Preference;->setVisible(Z)V

    :cond_1
    return-void
.end method

.method private final d()V
    .locals 0

    invoke-direct {p0}, Lcom/nothing/launcher/setting/wallpaper/CustomisationSettingsFragment;->f()V

    invoke-direct {p0}, Lcom/nothing/launcher/setting/wallpaper/CustomisationSettingsFragment;->e()V

    invoke-direct {p0}, Lcom/nothing/launcher/setting/wallpaper/CustomisationSettingsFragment;->c()V

    return-void
.end method

.method private final e()V
    .locals 2

    const-string v0, "pref_home_screen_layout"

    invoke-virtual {p0, v0}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object p0

    const-string v1, "requireContext()"

    invoke-static {p0, v1}, Lkotlin/jvm/internal/n;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0}, Lw2/a;->b(Landroid/content/Context;)Z

    move-result p0

    invoke-virtual {v0, p0}, Landroidx/preference/Preference;->setVisible(Z)V

    :cond_0
    return-void
.end method

.method private final f()V
    .locals 2

    new-instance v0, Lcom/nothing/launcher/setting/wallpaper/CustomisationSettingsFragment$b;

    invoke-direct {v0, p0}, Lcom/nothing/launcher/setting/wallpaper/CustomisationSettingsFragment$b;-><init>(Lcom/nothing/launcher/setting/wallpaper/CustomisationSettingsFragment;)V

    const-string v1, "pref_enable_wallpaper_scrolling"

    invoke-virtual {p0, v1}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v1

    check-cast v1, Lcom/nothing/ui/support/NtCustSwitchPreference;

    if-eqz v1, :cond_0

    invoke-virtual {v1, v0}, Landroidx/preference/Preference;->setPreferenceDataStore(Landroidx/preference/PreferenceDataStore;)V

    sget-object v0, Lu4/d;->a:Lu4/d;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {v0, p0}, Lu4/d;->a(Landroid/content/Context;)Z

    move-result p0

    invoke-virtual {v1, p0}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    :cond_0
    return-void
.end method


# virtual methods
.method public onCreatePreferences(Landroid/os/Bundle;Ljava/lang/String;)V
    .locals 1

    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceManager()Landroidx/preference/PreferenceManager;

    move-result-object p1

    const-string v0, "com.android.launcher3.prefs"

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceManager;->setSharedPreferencesName(Ljava/lang/String;)V

    const p1, 0x7f150001

    invoke-virtual {p0, p1, p2}, Landroidx/preference/PreferenceFragmentCompat;->setPreferencesFromResource(ILjava/lang/String;)V

    invoke-direct {p0}, Lcom/nothing/launcher/setting/wallpaper/CustomisationSettingsFragment;->d()V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    if-eqz p1, :cond_0

    const-string p2, "com.android.launcher3.WALLPAPER_OFFSET"

    invoke-virtual {p1, p2}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;)F

    move-result p1

    goto :goto_0

    :cond_0
    iget p1, p0, Lcom/nothing/launcher/setting/wallpaper/CustomisationSettingsFragment;->h:F

    :goto_0
    iput p1, p0, Lcom/nothing/launcher/setting/wallpaper/CustomisationSettingsFragment;->h:F

    return-void
.end method

.method public onPreferenceTreeClick(Landroidx/preference/Preference;)Z
    .locals 3

    const-string v0, "preference"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v0

    const-string v1, "pref_wallpaper_and_style"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/n;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    const-string v2, "requireContext()"

    if-eqz v1, :cond_0

    sget-object v0, Lz4/a;->a:Lz4/a;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v2}, Lkotlin/jvm/internal/n;->d(Ljava/lang/Object;Ljava/lang/String;)V

    iget v2, p0, Lcom/nothing/launcher/setting/wallpaper/CustomisationSettingsFragment;->h:F

    invoke-virtual {v0, v1, v2}, Lz4/a;->n(Landroid/content/Context;F)V

    goto :goto_0

    :cond_0
    const-string v1, "pref_icon_pack"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/n;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Lz4/a;->a:Lz4/a;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v2}, Lkotlin/jvm/internal/n;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lz4/a;->l(Landroid/content/Context;)V

    :cond_1
    :goto_0
    invoke-super {p0, p1}, Landroidx/preference/PreferenceFragmentCompat;->onPreferenceTreeClick(Landroidx/preference/Preference;)Z

    move-result p0

    return p0
.end method

.method public onResume()V
    .locals 0

    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onResume()V

    invoke-direct {p0}, Lcom/nothing/launcher/setting/wallpaper/CustomisationSettingsFragment;->c()V

    return-void
.end method
