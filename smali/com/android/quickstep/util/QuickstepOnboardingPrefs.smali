.class public Lcom/android/quickstep/util/QuickstepOnboardingPrefs;
.super Lcom/android/launcher3/util/OnboardingPrefs;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/launcher3/util/OnboardingPrefs<",
        "Lcom/android/launcher3/uioverrides/QuickstepLauncher;",
        ">;"
    }
.end annotation


# static fields
.field private static final SP_KEY_EDU_HAS_SHOWN:Ljava/lang/String; = "sp_key_edu_has_shown"

.field private static final SP_VALUE_EDU_HAS_SHOWN:I = 0x1


# direct methods
.method public constructor <init>(Lcom/android/launcher3/uioverrides/QuickstepLauncher;Landroid/content/SharedPreferences;)V
    .locals 2

    invoke-direct {p0, p1, p2}, Lcom/android/launcher3/util/OnboardingPrefs;-><init>(Lcom/android/launcher3/views/ActivityContext;Landroid/content/SharedPreferences;)V

    invoke-virtual {p1}, Lcom/android/launcher3/Launcher;->getStateManager()Lcom/android/launcher3/statemanager/StateManager;

    move-result-object p2

    const-string v0, "launcher.apps_view_shown"

    invoke-virtual {p0, v0}, Lcom/android/launcher3/util/OnboardingPrefs;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Lcom/android/quickstep/util/QuickstepOnboardingPrefs$1;

    invoke-direct {v0, p0, p2}, Lcom/android/quickstep/util/QuickstepOnboardingPrefs$1;-><init>(Lcom/android/quickstep/util/QuickstepOnboardingPrefs;Lcom/android/launcher3/statemanager/StateManager;)V

    invoke-virtual {p2, v0}, Lcom/android/launcher3/statemanager/StateManager;->addStateListener(Lcom/android/launcher3/statemanager/StateManager$StateListener;)V

    :cond_0
    invoke-static {}, Lcom/android/launcher3/Utilities;->isRunningInTestHarness()Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "launcher.hotseat_discovery_tip_count"

    invoke-virtual {p0, v0}, Lcom/android/launcher3/util/OnboardingPrefs;->hasReachedMaxCount(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    new-instance v0, Lcom/android/quickstep/util/QuickstepOnboardingPrefs$2;

    invoke-direct {v0, p0, p2}, Lcom/android/quickstep/util/QuickstepOnboardingPrefs$2;-><init>(Lcom/android/quickstep/util/QuickstepOnboardingPrefs;Lcom/android/launcher3/statemanager/StateManager;)V

    invoke-virtual {p2, v0}, Lcom/android/launcher3/statemanager/StateManager;->addStateListener(Lcom/android/launcher3/statemanager/StateManager$StateListener;)V

    :cond_1
    invoke-static {p1}, Lcom/android/launcher3/util/DisplayController;->getNavigationMode(Landroid/content/Context;)Lcom/android/launcher3/util/NavigationMode;

    move-result-object v0

    sget-object v1, Lcom/android/launcher3/util/NavigationMode;->NO_BUTTON:Lcom/android/launcher3/util/NavigationMode;

    if-ne v0, v1, :cond_2

    invoke-direct {p0}, Lcom/android/quickstep/util/QuickstepOnboardingPrefs;->isEDUHasShown()Z

    move-result v0

    if-nez v0, :cond_2

    new-instance v0, Lcom/android/quickstep/util/QuickstepOnboardingPrefs$3;

    invoke-direct {v0, p0, p1}, Lcom/android/quickstep/util/QuickstepOnboardingPrefs$3;-><init>(Lcom/android/quickstep/util/QuickstepOnboardingPrefs;Lcom/android/launcher3/uioverrides/QuickstepLauncher;)V

    invoke-virtual {p2, v0}, Lcom/android/launcher3/statemanager/StateManager;->addStateListener(Lcom/android/launcher3/statemanager/StateManager$StateListener;)V

    :cond_2
    const-string p1, "launcher.all_apps_visited_count"

    invoke-virtual {p0, p1}, Lcom/android/launcher3/util/OnboardingPrefs;->hasReachedMaxCount(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_3

    iget-object p1, p0, Lcom/android/launcher3/util/OnboardingPrefs;->mLauncher:Lcom/android/launcher3/views/ActivityContext;

    check-cast p1, Lcom/android/launcher3/uioverrides/QuickstepLauncher;

    invoke-virtual {p1}, Lcom/android/launcher3/Launcher;->getStateManager()Lcom/android/launcher3/statemanager/StateManager;

    move-result-object p1

    new-instance p2, Lcom/android/quickstep/util/QuickstepOnboardingPrefs$4;

    invoke-direct {p2, p0}, Lcom/android/quickstep/util/QuickstepOnboardingPrefs$4;-><init>(Lcom/android/quickstep/util/QuickstepOnboardingPrefs;)V

    invoke-virtual {p1, p2}, Lcom/android/launcher3/statemanager/StateManager;->addStateListener(Lcom/android/launcher3/statemanager/StateManager$StateListener;)V

    :cond_3
    return-void
.end method

.method static synthetic access$000(Lcom/android/quickstep/util/QuickstepOnboardingPrefs;)Lcom/android/launcher3/views/ActivityContext;
    .locals 0

    iget-object p0, p0, Lcom/android/launcher3/util/OnboardingPrefs;->mLauncher:Lcom/android/launcher3/views/ActivityContext;

    return-object p0
.end method

.method static synthetic access$100(Lcom/android/quickstep/util/QuickstepOnboardingPrefs;)Landroid/content/SharedPreferences;
    .locals 0

    iget-object p0, p0, Lcom/android/launcher3/util/OnboardingPrefs;->mSharedPrefs:Landroid/content/SharedPreferences;

    return-object p0
.end method

.method static synthetic access$200(Lcom/android/quickstep/util/QuickstepOnboardingPrefs;)Lcom/android/launcher3/views/ActivityContext;
    .locals 0

    iget-object p0, p0, Lcom/android/launcher3/util/OnboardingPrefs;->mLauncher:Lcom/android/launcher3/views/ActivityContext;

    return-object p0
.end method

.method static synthetic access$300(Lcom/android/quickstep/util/QuickstepOnboardingPrefs;)Lcom/android/launcher3/views/ActivityContext;
    .locals 0

    iget-object p0, p0, Lcom/android/launcher3/util/OnboardingPrefs;->mLauncher:Lcom/android/launcher3/views/ActivityContext;

    return-object p0
.end method

.method static synthetic access$400(Lcom/android/quickstep/util/QuickstepOnboardingPrefs;)Lcom/android/launcher3/views/ActivityContext;
    .locals 0

    iget-object p0, p0, Lcom/android/launcher3/util/OnboardingPrefs;->mLauncher:Lcom/android/launcher3/views/ActivityContext;

    return-object p0
.end method

.method static synthetic access$500(Lcom/android/quickstep/util/QuickstepOnboardingPrefs;)Lcom/android/launcher3/views/ActivityContext;
    .locals 0

    iget-object p0, p0, Lcom/android/launcher3/util/OnboardingPrefs;->mLauncher:Lcom/android/launcher3/views/ActivityContext;

    return-object p0
.end method

.method static synthetic access$600(Lcom/android/quickstep/util/QuickstepOnboardingPrefs;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/quickstep/util/QuickstepOnboardingPrefs;->setEDUHasShown()V

    return-void
.end method

.method static synthetic access$700(Lcom/android/quickstep/util/QuickstepOnboardingPrefs;)Lcom/android/launcher3/views/ActivityContext;
    .locals 0

    iget-object p0, p0, Lcom/android/launcher3/util/OnboardingPrefs;->mLauncher:Lcom/android/launcher3/views/ActivityContext;

    return-object p0
.end method

.method static synthetic access$800(Lcom/android/quickstep/util/QuickstepOnboardingPrefs;)Lcom/android/launcher3/views/ActivityContext;
    .locals 0

    iget-object p0, p0, Lcom/android/launcher3/util/OnboardingPrefs;->mLauncher:Lcom/android/launcher3/views/ActivityContext;

    return-object p0
.end method

.method static synthetic access$900(Lcom/android/quickstep/util/QuickstepOnboardingPrefs;)Lcom/android/launcher3/views/ActivityContext;
    .locals 0

    iget-object p0, p0, Lcom/android/launcher3/util/OnboardingPrefs;->mLauncher:Lcom/android/launcher3/views/ActivityContext;

    return-object p0
.end method

.method private isEDUHasShown()Z
    .locals 2

    iget-object p0, p0, Lcom/android/launcher3/util/OnboardingPrefs;->mSharedPrefs:Landroid/content/SharedPreferences;

    const-string v0, "sp_key_edu_has_shown"

    const/4 v1, 0x0

    invoke-interface {p0, v0, v1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result p0

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    move v1, v0

    :cond_0
    return v1
.end method

.method private setEDUHasShown()V
    .locals 2

    iget-object p0, p0, Lcom/android/launcher3/util/OnboardingPrefs;->mSharedPrefs:Landroid/content/SharedPreferences;

    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    const-string v0, "sp_key_edu_has_shown"

    const/4 v1, 0x1

    invoke-interface {p0, v0, v1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method
