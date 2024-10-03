.class public Lcom/android/quickstep/interaction/GestureSandboxActivity;
.super Landroidx/fragment/app/FragmentActivity;
.source "SourceFile"


# static fields
.field private static final KEY_CURRENT_STEP:Ljava/lang/String; = "current_step"

.field static final KEY_GESTURE_COMPLETE:Ljava/lang/String; = "gesture_complete"

.field private static final KEY_TUTORIAL_STEPS:Ljava/lang/String; = "tutorial_steps"

.field static final KEY_TUTORIAL_TYPE:Ljava/lang/String; = "tutorial_type"

.field static final KEY_USE_TUTORIAL_MENU:Ljava/lang/String; = "use_tutorial_menu"


# instance fields
.field private mBinder:Lcom/android/quickstep/TouchInteractionService$TISBinder;

.field private mCurrentStep:I

.field private mFragment:Lcom/android/quickstep/interaction/GestureSandboxFragment;

.field private mNumSteps:I

.field private mRotationPrompt:Landroid/view/View;

.field private mSharedPrefs:Landroid/content/SharedPreferences;

.field private mShowRotationPrompt:Z

.field private mStatsLogManager:Lcom/android/launcher3/logging/StatsLogManager;

.field private mTISBindHelper:Lcom/android/quickstep/util/TISBindHelper;

.field private mTutorialSteps:[Lcom/android/quickstep/interaction/TutorialController$TutorialType;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroidx/fragment/app/FragmentActivity;-><init>()V

    return-void
.end method

.method private correctUserOrientation()V
    .locals 3

    sget-object v0, Lcom/android/launcher3/InvariantDeviceProfile;->INSTANCE:Lcom/android/launcher3/util/MainThreadInitializedObject;

    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/launcher3/util/MainThreadInitializedObject;->get(Landroid/content/Context;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/InvariantDeviceProfile;

    invoke-virtual {v0, p0}, Lcom/android/launcher3/InvariantDeviceProfile;->getDeviceProfile(Landroid/content/Context;)Lj3/a;

    move-result-object v0

    iget-boolean v0, v0, Lcom/android/launcher3/DeviceProfile;->isTablet:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    const/4 v2, 0x0

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    iput-boolean v1, p0, Lcom/android/quickstep/interaction/GestureSandboxActivity;->mShowRotationPrompt:Z

    iget-object v0, p0, Lcom/android/quickstep/interaction/GestureSandboxActivity;->mRotationPrompt:Landroid/view/View;

    if-eqz v1, :cond_1

    goto :goto_1

    :cond_1
    const/16 v2, 0x8

    :goto_1
    invoke-virtual {p0, v0, v2}, Lcom/android/quickstep/interaction/GestureSandboxActivity;->updateVisibility(Landroid/view/View;I)V

    goto :goto_2

    :cond_2
    invoke-virtual {p0, v1}, Landroid/app/Activity;->setRequestedOrientation(I)V

    :goto_2
    return-void
.end method

.method private disableSystemGestures()V
    .locals 5

    invoke-virtual {p0}, Landroid/app/Activity;->getDisplay()Landroid/view/Display;

    move-result-object v0

    if-eqz v0, :cond_0

    new-instance v1, Landroid/util/DisplayMetrics;

    invoke-direct {v1}, Landroid/util/DisplayMetrics;-><init>()V

    invoke-virtual {v0, v1}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p0

    const/4 v0, 0x1

    new-array v0, v0, [Landroid/graphics/Rect;

    new-instance v2, Landroid/graphics/Rect;

    iget v3, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    iget v1, v1, Landroid/util/DisplayMetrics;->heightPixels:I

    const/4 v4, 0x0

    invoke-direct {v2, v4, v4, v3, v1}, Landroid/graphics/Rect;-><init>(IIII)V

    aput-object v2, v0, v4

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/view/Window;->setSystemGestureExclusionRects(Ljava/util/List;)V

    :cond_0
    return-void
.end method

.method private getTutorialStepNames()[Ljava/lang/String;
    .locals 6

    iget-object p0, p0, Lcom/android/quickstep/interaction/GestureSandboxActivity;->mTutorialSteps:[Lcom/android/quickstep/interaction/TutorialController$TutorialType;

    const/4 v0, 0x0

    if-nez p0, :cond_0

    new-array p0, v0, [Ljava/lang/String;

    return-object p0

    :cond_0
    array-length v1, p0

    new-array v1, v1, [Ljava/lang/String;

    array-length v2, p0

    move v3, v0

    :goto_0
    if-ge v0, v2, :cond_1

    aget-object v4, p0, v0

    add-int/lit8 v5, v3, 0x1

    invoke-virtual {v4}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v1, v3

    add-int/lit8 v0, v0, 0x1

    move v3, v5

    goto :goto_0

    :cond_1
    return-object v1
.end method

.method private getTutorialSteps(Landroid/os/Bundle;)[Lcom/android/quickstep/interaction/TutorialController$TutorialType;
    .locals 6

    const/4 v0, 0x3

    new-array v1, v0, [Lcom/android/quickstep/interaction/TutorialController$TutorialType;

    sget-object v2, Lcom/android/quickstep/interaction/TutorialController$TutorialType;->HOME_NAVIGATION:Lcom/android/quickstep/interaction/TutorialController$TutorialType;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    sget-object v2, Lcom/android/quickstep/interaction/TutorialController$TutorialType;->BACK_NAVIGATION:Lcom/android/quickstep/interaction/TutorialController$TutorialType;

    const/4 v4, 0x1

    aput-object v2, v1, v4

    sget-object v2, Lcom/android/quickstep/interaction/TutorialController$TutorialType;->OVERVIEW_NAVIGATION:Lcom/android/quickstep/interaction/TutorialController$TutorialType;

    const/4 v5, 0x2

    aput-object v2, v1, v5

    iput v4, p0, Lcom/android/quickstep/interaction/GestureSandboxActivity;->mCurrentStep:I

    iput v0, p0, Lcom/android/quickstep/interaction/GestureSandboxActivity;->mNumSteps:I

    if-eqz p1, :cond_5

    const-string v0, "tutorial_steps"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    goto :goto_2

    :cond_0
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    instance-of v2, v0, Ljava/lang/String;

    if-eqz v2, :cond_2

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    const-string v2, ","

    invoke-virtual {v0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_2
    instance-of v2, v0, [Ljava/lang/String;

    if-eqz v2, :cond_5

    check-cast v0, [Ljava/lang/String;

    :goto_0
    if-eqz v0, :cond_5

    array-length v2, v0

    if-nez v2, :cond_3

    goto :goto_2

    :cond_3
    array-length v1, v0

    new-array v2, v1, [Lcom/android/quickstep/interaction/TutorialController$TutorialType;

    :goto_1
    array-length v5, v0

    if-ge v3, v5, :cond_4

    aget-object v5, v0, v3

    invoke-static {v5}, Lcom/android/quickstep/interaction/TutorialController$TutorialType;->valueOf(Ljava/lang/String;)Lcom/android/quickstep/interaction/TutorialController$TutorialType;

    move-result-object v5

    aput-object v5, v2, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_4
    const/4 v0, -0x1

    const-string v3, "current_step"

    invoke-virtual {p1, v3, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result p1

    invoke-static {p1, v4}, Ljava/lang/Math;->max(II)I

    move-result p1

    iput p1, p0, Lcom/android/quickstep/interaction/GestureSandboxActivity;->mCurrentStep:I

    iput v1, p0, Lcom/android/quickstep/interaction/GestureSandboxActivity;->mNumSteps:I

    return-object v2

    :cond_5
    :goto_2
    return-object v1
.end method

.method private hideSystemUI()V
    .locals 2

    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x1706

    invoke-virtual {v0, v1}, Landroid/view/View;->setSystemUiVisibility(I)V

    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/view/Window;->setNavigationBarColor(I)V

    return-void
.end method

.method private synthetic lambda$launchTutorialMenu$1()V
    .locals 0

    iget-object p0, p0, Lcom/android/quickstep/interaction/GestureSandboxActivity;->mFragment:Lcom/android/quickstep/interaction/GestureSandboxFragment;

    invoke-virtual {p0}, Lcom/android/quickstep/interaction/GestureSandboxFragment;->onAttachedToWindow()V

    return-void
.end method

.method private synthetic lambda$launchTutorialStep$0()V
    .locals 0

    iget-object p0, p0, Lcom/android/quickstep/interaction/GestureSandboxActivity;->mFragment:Lcom/android/quickstep/interaction/GestureSandboxFragment;

    invoke-virtual {p0}, Lcom/android/quickstep/interaction/GestureSandboxFragment;->onAttachedToWindow()V

    return-void
.end method

.method private makeTutorialFragment(Lcom/android/quickstep/interaction/TutorialController$TutorialType;ZZ)Lcom/android/quickstep/interaction/TutorialFragment;
    .locals 0
    .param p1    # Lcom/android/quickstep/interaction/TutorialController$TutorialType;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-static {p1, p2, p3}, Lcom/android/quickstep/interaction/TutorialFragment;->newInstance(Lcom/android/quickstep/interaction/TutorialController$TutorialType;ZZ)Lcom/android/quickstep/interaction/TutorialFragment;

    move-result-object p0

    return-object p0
.end method

.method private onTISConnected(Lcom/android/quickstep/TouchInteractionService$TISBinder;)V
    .locals 0

    iput-object p1, p0, Lcom/android/quickstep/interaction/GestureSandboxActivity;->mBinder:Lcom/android/quickstep/TouchInteractionService$TISBinder;

    invoke-virtual {p0}, Landroid/app/Activity;->isResumed()Z

    move-result p1

    invoke-direct {p0, p1}, Lcom/android/quickstep/interaction/GestureSandboxActivity;->updateServiceState(Z)V

    return-void
.end method

.method public static synthetic q(Lcom/android/quickstep/interaction/GestureSandboxActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/quickstep/interaction/GestureSandboxActivity;->lambda$launchTutorialMenu$1()V

    return-void
.end method

.method public static synthetic r(Lcom/android/quickstep/interaction/GestureSandboxActivity;Lcom/android/quickstep/TouchInteractionService$TISBinder;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/quickstep/interaction/GestureSandboxActivity;->onTISConnected(Lcom/android/quickstep/TouchInteractionService$TISBinder;)V

    return-void
.end method

.method public static synthetic s(Lcom/android/quickstep/interaction/GestureSandboxActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/quickstep/interaction/GestureSandboxActivity;->lambda$launchTutorialStep$0()V

    return-void
.end method

.method private updateServiceState(Z)V
    .locals 1

    iget-object v0, p0, Lcom/android/quickstep/interaction/GestureSandboxActivity;->mBinder:Lcom/android/quickstep/TouchInteractionService$TISBinder;

    if-eqz v0, :cond_1

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Landroid/app/Activity;->getTaskId()I

    move-result p0

    goto :goto_0

    :cond_0
    const/4 p0, -0x1

    :goto_0
    invoke-virtual {v0, p0}, Lcom/android/quickstep/TouchInteractionService$TISBinder;->setGestureBlockedTaskId(I)V

    :cond_1
    return-void
.end method


# virtual methods
.method public continueTutorial()V
    .locals 2

    invoke-virtual {p0}, Lcom/android/quickstep/interaction/GestureSandboxActivity;->isTutorialComplete()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/quickstep/interaction/GestureSandboxActivity;->mTutorialSteps:[Lcom/android/quickstep/interaction/TutorialController$TutorialType;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget v1, p0, Lcom/android/quickstep/interaction/GestureSandboxActivity;->mCurrentStep:I

    aget-object v0, v0, v1

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/android/quickstep/interaction/GestureSandboxActivity;->launchTutorialStep(Lcom/android/quickstep/interaction/TutorialController$TutorialType;Z)V

    iget v0, p0, Lcom/android/quickstep/interaction/GestureSandboxActivity;->mCurrentStep:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/quickstep/interaction/GestureSandboxActivity;->mCurrentStep:I

    return-void

    :cond_1
    :goto_0
    iget-object p0, p0, Lcom/android/quickstep/interaction/GestureSandboxActivity;->mFragment:Lcom/android/quickstep/interaction/GestureSandboxFragment;

    invoke-virtual {p0}, Lcom/android/quickstep/interaction/GestureSandboxFragment;->close()V

    return-void
.end method

.method public getCurrentStep()I
    .locals 0

    iget p0, p0, Lcom/android/quickstep/interaction/GestureSandboxActivity;->mCurrentStep:I

    return p0
.end method

.method public getNumSteps()I
    .locals 0

    iget p0, p0, Lcom/android/quickstep/interaction/GestureSandboxActivity;->mNumSteps:I

    return p0
.end method

.method protected getSharedPrefs()Landroid/content/SharedPreferences;
    .locals 0

    iget-object p0, p0, Lcom/android/quickstep/interaction/GestureSandboxActivity;->mSharedPrefs:Landroid/content/SharedPreferences;

    return-object p0
.end method

.method protected getStatsLogManager()Lcom/android/launcher3/logging/StatsLogManager;
    .locals 0

    iget-object p0, p0, Lcom/android/quickstep/interaction/GestureSandboxActivity;->mStatsLogManager:Lcom/android/launcher3/logging/StatsLogManager;

    return-object p0
.end method

.method protected isRotationPromptShowing()Z
    .locals 0

    iget-boolean p0, p0, Lcom/android/quickstep/interaction/GestureSandboxActivity;->mShowRotationPrompt:Z

    return p0
.end method

.method public isTutorialComplete()Z
    .locals 1

    iget v0, p0, Lcom/android/quickstep/interaction/GestureSandboxActivity;->mCurrentStep:I

    iget p0, p0, Lcom/android/quickstep/interaction/GestureSandboxActivity;->mNumSteps:I

    if-lt v0, p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public launchTutorialMenu()V
    .locals 3

    new-instance v0, Lcom/android/quickstep/interaction/MenuFragment;

    invoke-direct {v0}, Lcom/android/quickstep/interaction/MenuFragment;-><init>()V

    iput-object v0, p0, Lcom/android/quickstep/interaction/GestureSandboxActivity;->mFragment:Lcom/android/quickstep/interaction/GestureSandboxFragment;

    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentManager;->beginTransaction()Landroidx/fragment/app/FragmentTransaction;

    move-result-object v0

    iget-object v1, p0, Lcom/android/quickstep/interaction/GestureSandboxActivity;->mFragment:Lcom/android/quickstep/interaction/GestureSandboxFragment;

    const v2, 0x7f0b01b4

    invoke-virtual {v0, v2, v1}, Landroidx/fragment/app/FragmentTransaction;->replace(ILandroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransaction;

    move-result-object v0

    new-instance v1, Lcom/android/quickstep/interaction/l;

    invoke-direct {v1, p0}, Lcom/android/quickstep/interaction/l;-><init>(Lcom/android/quickstep/interaction/GestureSandboxActivity;)V

    invoke-virtual {v0, v1}, Landroidx/fragment/app/FragmentTransaction;->runOnCommit(Ljava/lang/Runnable;)Landroidx/fragment/app/FragmentTransaction;

    move-result-object p0

    invoke-virtual {p0}, Landroidx/fragment/app/FragmentTransaction;->commit()I

    return-void
.end method

.method public launchTutorialStep(Lcom/android/quickstep/interaction/TutorialController$TutorialType;Z)V
    .locals 1
    .param p1    # Lcom/android/quickstep/interaction/TutorialController$TutorialType;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, p2}, Lcom/android/quickstep/interaction/GestureSandboxActivity;->makeTutorialFragment(Lcom/android/quickstep/interaction/TutorialController$TutorialType;ZZ)Lcom/android/quickstep/interaction/TutorialFragment;

    move-result-object p1

    iput-object p1, p0, Lcom/android/quickstep/interaction/GestureSandboxActivity;->mFragment:Lcom/android/quickstep/interaction/GestureSandboxFragment;

    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/fragment/app/FragmentManager;->beginTransaction()Landroidx/fragment/app/FragmentTransaction;

    move-result-object p1

    iget-object p2, p0, Lcom/android/quickstep/interaction/GestureSandboxActivity;->mFragment:Lcom/android/quickstep/interaction/GestureSandboxFragment;

    const v0, 0x7f0b01b4

    invoke-virtual {p1, v0, p2}, Landroidx/fragment/app/FragmentTransaction;->replace(ILandroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransaction;

    move-result-object p1

    new-instance p2, Lcom/android/quickstep/interaction/m;

    invoke-direct {p2, p0}, Lcom/android/quickstep/interaction/m;-><init>(Lcom/android/quickstep/interaction/GestureSandboxActivity;)V

    invoke-virtual {p1, p2}, Landroidx/fragment/app/FragmentTransaction;->runOnCommit(Ljava/lang/Runnable;)Landroidx/fragment/app/FragmentTransaction;

    move-result-object p0

    invoke-virtual {p0}, Landroidx/fragment/app/FragmentTransaction;->commit()I

    return-void
.end method

.method public onAttachedToWindow()V
    .locals 1

    invoke-super {p0}, Landroid/app/Activity;->onAttachedToWindow()V

    iget-object v0, p0, Lcom/android/quickstep/interaction/GestureSandboxActivity;->mFragment:Lcom/android/quickstep/interaction/GestureSandboxFragment;

    invoke-virtual {v0}, Lcom/android/quickstep/interaction/GestureSandboxFragment;->shouldDisableSystemGestures()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/android/quickstep/interaction/GestureSandboxActivity;->disableSystemGestures()V

    :cond_0
    iget-object p0, p0, Lcom/android/quickstep/interaction/GestureSandboxActivity;->mFragment:Lcom/android/quickstep/interaction/GestureSandboxFragment;

    invoke-virtual {p0}, Lcom/android/quickstep/interaction/GestureSandboxFragment;->onAttachedToWindow()V

    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0

    invoke-super {p0, p1}, Landroidx/activity/ComponentActivity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    sget-object p1, Lcom/android/launcher3/config/FeatureFlags;->ENABLE_NEW_GESTURE_NAV_TUTORIAL:Lcom/android/launcher3/config/FeatureFlags$BooleanFlag;

    invoke-virtual {p1}, Lcom/android/launcher3/config/FeatureFlags$BooleanFlag;->get()Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-direct {p0}, Lcom/android/quickstep/interaction/GestureSandboxActivity;->correctUserOrientation()V

    :cond_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 5

    invoke-super {p0, p1}, Landroidx/fragment/app/FragmentActivity;->onCreate(Landroid/os/Bundle;)V

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/app/Activity;->requestWindowFeature(I)Z

    const v1, 0x7f0e008a

    invoke-virtual {p0, v1}, Landroidx/activity/ComponentActivity;->setContentView(I)V

    invoke-static {p0}, Lcom/android/launcher3/LauncherPrefs;->getPrefs(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    iput-object v1, p0, Lcom/android/quickstep/interaction/GestureSandboxActivity;->mSharedPrefs:Landroid/content/SharedPreferences;

    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/android/launcher3/logging/StatsLogManager;->newInstance(Landroid/content/Context;)Lcom/android/launcher3/logging/StatsLogManager;

    move-result-object v1

    iput-object v1, p0, Lcom/android/quickstep/interaction/GestureSandboxActivity;->mStatsLogManager:Lcom/android/launcher3/logging/StatsLogManager;

    if-nez p1, :cond_0

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p1

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_1

    const-string v2, "gesture_complete"

    invoke-virtual {p1, v2, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_1

    move v2, v0

    goto :goto_0

    :cond_1
    move v2, v1

    :goto_0
    sget-object v3, Lcom/android/launcher3/config/FeatureFlags;->ENABLE_NEW_GESTURE_NAV_TUTORIAL:Lcom/android/launcher3/config/FeatureFlags$BooleanFlag;

    invoke-virtual {v3}, Lcom/android/launcher3/config/FeatureFlags$BooleanFlag;->get()Z

    move-result v4

    if-eqz v4, :cond_3

    if-eqz p1, :cond_3

    const-string v4, "use_tutorial_menu"

    invoke-virtual {p1, v4, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    if-eqz v4, :cond_3

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/quickstep/interaction/GestureSandboxActivity;->mTutorialSteps:[Lcom/android/quickstep/interaction/TutorialController$TutorialType;

    const-string v1, "tutorial_type"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/quickstep/interaction/TutorialController$TutorialType;

    if-nez p1, :cond_2

    new-instance p1, Lcom/android/quickstep/interaction/MenuFragment;

    invoke-direct {p1}, Lcom/android/quickstep/interaction/MenuFragment;-><init>()V

    goto :goto_1

    :cond_2
    invoke-direct {p0, p1, v2, v0}, Lcom/android/quickstep/interaction/GestureSandboxActivity;->makeTutorialFragment(Lcom/android/quickstep/interaction/TutorialController$TutorialType;ZZ)Lcom/android/quickstep/interaction/TutorialFragment;

    move-result-object p1

    goto :goto_1

    :cond_3
    invoke-direct {p0, p1}, Lcom/android/quickstep/interaction/GestureSandboxActivity;->getTutorialSteps(Landroid/os/Bundle;)[Lcom/android/quickstep/interaction/TutorialController$TutorialType;

    move-result-object p1

    iput-object p1, p0, Lcom/android/quickstep/interaction/GestureSandboxActivity;->mTutorialSteps:[Lcom/android/quickstep/interaction/TutorialController$TutorialType;

    iget v4, p0, Lcom/android/quickstep/interaction/GestureSandboxActivity;->mCurrentStep:I

    sub-int/2addr v4, v0

    aget-object p1, p1, v4

    invoke-direct {p0, p1, v2, v1}, Lcom/android/quickstep/interaction/GestureSandboxActivity;->makeTutorialFragment(Lcom/android/quickstep/interaction/TutorialController$TutorialType;ZZ)Lcom/android/quickstep/interaction/TutorialFragment;

    move-result-object p1

    :goto_1
    iput-object p1, p0, Lcom/android/quickstep/interaction/GestureSandboxActivity;->mFragment:Lcom/android/quickstep/interaction/GestureSandboxFragment;

    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/fragment/app/FragmentManager;->beginTransaction()Landroidx/fragment/app/FragmentTransaction;

    move-result-object p1

    const v0, 0x7f0b01b4

    iget-object v1, p0, Lcom/android/quickstep/interaction/GestureSandboxActivity;->mFragment:Lcom/android/quickstep/interaction/GestureSandboxFragment;

    invoke-virtual {p1, v0, v1}, Landroidx/fragment/app/FragmentTransaction;->add(ILandroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransaction;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/fragment/app/FragmentTransaction;->commit()I

    const p1, 0x7f0b030d

    invoke-virtual {p0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/android/quickstep/interaction/GestureSandboxActivity;->mRotationPrompt:Landroid/view/View;

    invoke-virtual {v3}, Lcom/android/launcher3/config/FeatureFlags$BooleanFlag;->get()Z

    move-result p1

    if-eqz p1, :cond_4

    invoke-direct {p0}, Lcom/android/quickstep/interaction/GestureSandboxActivity;->correctUserOrientation()V

    :cond_4
    new-instance p1, Lcom/android/quickstep/util/TISBindHelper;

    new-instance v0, Lcom/android/quickstep/interaction/n;

    invoke-direct {v0, p0}, Lcom/android/quickstep/interaction/n;-><init>(Lcom/android/quickstep/interaction/GestureSandboxActivity;)V

    invoke-direct {p1, p0, v0}, Lcom/android/quickstep/util/TISBindHelper;-><init>(Landroid/content/Context;Ljava/util/function/Consumer;)V

    iput-object p1, p0, Lcom/android/quickstep/interaction/GestureSandboxActivity;->mTISBindHelper:Lcom/android/quickstep/util/TISBindHelper;

    return-void
.end method

.method protected onDestroy()V
    .locals 1

    invoke-super {p0}, Landroidx/fragment/app/FragmentActivity;->onDestroy()V

    iget-object v0, p0, Lcom/android/quickstep/interaction/GestureSandboxActivity;->mTISBindHelper:Lcom/android/quickstep/util/TISBindHelper;

    invoke-virtual {v0}, Lcom/android/quickstep/util/TISBindHelper;->onDestroy()V

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/quickstep/interaction/GestureSandboxActivity;->updateServiceState(Z)V

    return-void
.end method

.method public onDetachedFromWindow()V
    .locals 0

    invoke-super {p0}, Landroid/app/Activity;->onDetachedFromWindow()V

    iget-object p0, p0, Lcom/android/quickstep/interaction/GestureSandboxActivity;->mFragment:Lcom/android/quickstep/interaction/GestureSandboxFragment;

    invoke-virtual {p0}, Lcom/android/quickstep/interaction/GestureSandboxFragment;->onDetachedFromWindow()V

    return-void
.end method

.method protected onPause()V
    .locals 1

    invoke-super {p0}, Landroidx/fragment/app/FragmentActivity;->onPause()V

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/quickstep/interaction/GestureSandboxActivity;->updateServiceState(Z)V

    return-void
.end method

.method protected onResume()V
    .locals 1

    invoke-super {p0}, Landroidx/fragment/app/FragmentActivity;->onResume()V

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/quickstep/interaction/GestureSandboxActivity;->updateServiceState(Z)V

    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .param p1    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-direct {p0}, Lcom/android/quickstep/interaction/GestureSandboxActivity;->getTutorialStepNames()[Ljava/lang/String;

    move-result-object v0

    const-string v1, "tutorial_steps"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putStringArray(Ljava/lang/String;[Ljava/lang/String;)V

    iget v0, p0, Lcom/android/quickstep/interaction/GestureSandboxActivity;->mCurrentStep:I

    const-string v1, "current_step"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    iget-object v0, p0, Lcom/android/quickstep/interaction/GestureSandboxActivity;->mFragment:Lcom/android/quickstep/interaction/GestureSandboxFragment;

    invoke-virtual {v0, p1}, Landroidx/fragment/app/Fragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    invoke-super {p0, p1}, Landroidx/activity/ComponentActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .locals 0

    invoke-super {p0, p1}, Landroid/app/Activity;->onWindowFocusChanged(Z)V

    if-eqz p1, :cond_0

    invoke-direct {p0}, Lcom/android/quickstep/interaction/GestureSandboxActivity;->hideSystemUI()V

    :cond_0
    return-void
.end method

.method updateVisibility(Landroid/view/View;I)V
    .locals 0

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result p0

    if-ne p0, p2, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    :cond_1
    :goto_0
    return-void
.end method
