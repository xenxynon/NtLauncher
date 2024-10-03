.class public Lcom/android/quickstep/interaction/AllSetActivity;
.super Landroid/app/Activity;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/quickstep/interaction/AllSetActivity$BgDrawable;,
        Lcom/android/quickstep/interaction/AllSetActivity$SkipButtonAccessibilityDelegate;
    }
.end annotation


# static fields
.field private static final ANIMATION_PAUSE_ALPHA_THRESHOLD:F = 0.1f

.field private static final EXTRA_ACCENT_COLOR_DARK_MODE:Ljava/lang/String; = "suwColorAccentDark"

.field private static final EXTRA_ACCENT_COLOR_LIGHT_MODE:Ljava/lang/String; = "suwColorAccentLight"

.field private static final EXTRA_DEVICE_NAME:Ljava/lang/String; = "suwDeviceName"

.field private static final HINT_BOTTOM_FACTOR:F = 0.060000002f

.field private static final LOG_TAG:Ljava/lang/String; = "AllSetActivity"

.field private static final LOTTIE_PRIMARY_COLOR_TOKEN:Ljava/lang/String; = ".primary"

.field private static final LOTTIE_TERTIARY_COLOR_TOKEN:Ljava/lang/String; = ".tertiary"

.field private static final MAX_SWIPE_DURATION:I = 0x15e

.field private static final URI_SYSTEM_NAVIGATION_SETTING:Ljava/lang/String; = "#Intent;action=com.android.settings.SEARCH_RESULT_TRAMPOLINE;S.:settings:fragment_args_key=gesture_system_navigation_input_summary;S.:settings:show_fragment=com.android.settings.gestures.SystemNavigationGestureSettings;end"


# instance fields
.field private mAnimatedBackground:Lcom/airbnb/lottie/LottieAnimationView;

.field private mBackground:Lcom/android/quickstep/interaction/AllSetActivity$BgDrawable;

.field private mBackgroundAnimatorListener:Landroid/animation/Animator$AnimatorListener;

.field private mBinder:Lcom/android/quickstep/TouchInteractionService$TISBinder;

.field private mLauncherStartAnim:Lcom/android/launcher3/anim/AnimatorPlaybackController;

.field private mRootView:Landroid/view/View;

.field private final mSwipeProgress:Lcom/android/launcher3/anim/AnimatedFloat;

.field private mSwipeUpShift:F

.field private mTISBindHelper:Lcom/android/quickstep/util/TISBindHelper;

.field private mTaskbarManager:Lcom/android/launcher3/taskbar/TaskbarManager;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private mVibrator:Landroid/os/Vibrator;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 3

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/quickstep/interaction/AllSetActivity;->mTaskbarManager:Lcom/android/launcher3/taskbar/TaskbarManager;

    new-instance v1, Lcom/android/launcher3/anim/AnimatedFloat;

    new-instance v2, Lcom/android/quickstep/interaction/c;

    invoke-direct {v2, p0}, Lcom/android/quickstep/interaction/c;-><init>(Lcom/android/quickstep/interaction/AllSetActivity;)V

    invoke-direct {v1, v2}, Lcom/android/launcher3/anim/AnimatedFloat;-><init>(Ljava/lang/Runnable;)V

    iput-object v1, p0, Lcom/android/quickstep/interaction/AllSetActivity;->mSwipeProgress:Lcom/android/launcher3/anim/AnimatedFloat;

    iput-object v0, p0, Lcom/android/quickstep/interaction/AllSetActivity;->mLauncherStartAnim:Lcom/android/launcher3/anim/AnimatorPlaybackController;

    return-void
.end method

.method public static synthetic a(Lcom/android/quickstep/interaction/AllSetActivity;Lcom/android/quickstep/TouchInteractionService$TISBinder;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/quickstep/interaction/AllSetActivity;->onTISConnected(Lcom/android/quickstep/TouchInteractionService$TISBinder;)V

    return-void
.end method

.method static synthetic access$100(Lcom/android/quickstep/interaction/AllSetActivity;Ljava/lang/Runnable;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/quickstep/interaction/AllSetActivity;->runOnUiHelperThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/quickstep/interaction/AllSetActivity;)Landroid/os/Vibrator;
    .locals 0

    iget-object p0, p0, Lcom/android/quickstep/interaction/AllSetActivity;->mVibrator:Landroid/os/Vibrator;

    return-object p0
.end method

.method public static synthetic b(Lcom/android/quickstep/interaction/AllSetActivity;Lcom/android/quickstep/GestureState;)Lcom/android/launcher3/anim/AnimatedFloat;
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/quickstep/interaction/AllSetActivity;->createSwipeUpProxy(Lcom/android/quickstep/GestureState;)Lcom/android/launcher3/anim/AnimatedFloat;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic c(Lcom/android/quickstep/interaction/AllSetActivity;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/quickstep/interaction/AllSetActivity;->lambda$onCreate$0(Landroid/view/View;)V

    return-void
.end method

.method private clearBinderOverride()V
    .locals 2

    iget-object v0, p0, Lcom/android/quickstep/interaction/AllSetActivity;->mBinder:Lcom/android/quickstep/TouchInteractionService$TISBinder;

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/quickstep/interaction/AllSetActivity;->setSetupUIVisible(Z)V

    iget-object v0, p0, Lcom/android/quickstep/interaction/AllSetActivity;->mBinder:Lcom/android/quickstep/TouchInteractionService$TISBinder;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/quickstep/TouchInteractionService$TISBinder;->setSwipeUpProxy(Ljava/util/function/Function;)V

    iget-object p0, p0, Lcom/android/quickstep/interaction/AllSetActivity;->mBinder:Lcom/android/quickstep/TouchInteractionService$TISBinder;

    invoke-virtual {p0, v1}, Lcom/android/quickstep/TouchInteractionService$TISBinder;->setOverviewTargetChangeListener(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method private createSwipeUpProxy(Lcom/android/quickstep/GestureState;)Lcom/android/launcher3/anim/AnimatedFloat;
    .locals 1

    invoke-virtual {p1}, Lcom/android/quickstep/GestureState;->getRunningTaskId()I

    move-result p1

    invoke-virtual {p0}, Landroid/app/Activity;->getTaskId()I

    move-result v0

    if-eq p1, v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    iget-object p1, p0, Lcom/android/quickstep/interaction/AllSetActivity;->mSwipeProgress:Lcom/android/launcher3/anim/AnimatedFloat;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/android/launcher3/anim/AnimatedFloat;->updateValue(F)V

    iget-object p0, p0, Lcom/android/quickstep/interaction/AllSetActivity;->mSwipeProgress:Lcom/android/launcher3/anim/AnimatedFloat;

    return-object p0
.end method

.method public static synthetic d(Lcom/android/quickstep/interaction/AllSetActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/quickstep/interaction/AllSetActivity;->onSwipeProgressUpdate()V

    return-void
.end method

.method private dispatchLauncherAnimStartEnd()V
    .locals 1

    iget-object v0, p0, Lcom/android/quickstep/interaction/AllSetActivity;->mLauncherStartAnim:Lcom/android/launcher3/anim/AnimatorPlaybackController;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/launcher3/anim/AnimatorPlaybackController;->dispatchOnStart()Lcom/android/launcher3/anim/AnimatorPlaybackController;

    iget-object v0, p0, Lcom/android/quickstep/interaction/AllSetActivity;->mLauncherStartAnim:Lcom/android/launcher3/anim/AnimatorPlaybackController;

    invoke-virtual {v0}, Lcom/android/launcher3/anim/AnimatorPlaybackController;->dispatchOnEnd()Lcom/android/launcher3/anim/AnimatorPlaybackController;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/quickstep/interaction/AllSetActivity;->mLauncherStartAnim:Lcom/android/launcher3/anim/AnimatorPlaybackController;

    :cond_0
    return-void
.end method

.method private getContentViewAlphaForSwipeProgress()F
    .locals 6

    iget-object p0, p0, Lcom/android/quickstep/interaction/AllSetActivity;->mSwipeProgress:Lcom/android/launcher3/anim/AnimatedFloat;

    iget v0, p0, Lcom/android/launcher3/anim/AnimatedFloat;->value:F

    sget-object v5, Lcom/android/launcher3/anim/Interpolators;->LINEAR:Landroid/view/animation/Interpolator;

    const/4 v1, 0x0

    const v2, 0x3d75c290    # 0.060000002f

    const/high16 v3, 0x3f800000    # 1.0f

    const/4 v4, 0x0

    invoke-static/range {v0 .. v5}, Lcom/android/launcher3/Utilities;->mapBoundToRange(FFFFFLandroid/view/animation/Interpolator;)F

    move-result p0

    return p0
.end method

.method private synthetic lambda$onCreate$0(Landroid/view/View;)V
    .locals 1

    :try_start_0
    const-string p1, "#Intent;action=com.android.settings.SEARCH_RESULT_TRAMPOLINE;S.:settings:fragment_args_key=gesture_system_navigation_input_summary;S.:settings:show_fragment=com.android.settings.gestures.SystemNavigationGestureSettings;end"

    const/4 v0, 0x0

    invoke-static {p1, v0}, Landroid/content/Intent;->parseUri(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {p0, p1, v0}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string p1, "AllSetActivity"

    const-string v0, "Failed to parse system nav settings intent"

    invoke-static {p1, v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method

.method private maybeResumeOrPauseBackgroundAnimation()V
    .locals 2

    invoke-direct {p0}, Lcom/android/quickstep/interaction/AllSetActivity;->getContentViewAlphaForSwipeProgress()F

    move-result v0

    const v1, 0x3dcccccd    # 0.1f

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    invoke-virtual {p0}, Landroid/app/Activity;->isResumed()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/android/quickstep/interaction/AllSetActivity;->mAnimatedBackground:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {v1}, Lcom/airbnb/lottie/LottieAnimationView;->isAnimating()Z

    move-result v1

    if-eqz v1, :cond_1

    if-nez v0, :cond_1

    iget-object p0, p0, Lcom/android/quickstep/interaction/AllSetActivity;->mAnimatedBackground:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {p0}, Lcom/airbnb/lottie/LottieAnimationView;->pauseAnimation()V

    goto :goto_1

    :cond_1
    iget-object v1, p0, Lcom/android/quickstep/interaction/AllSetActivity;->mAnimatedBackground:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {v1}, Lcom/airbnb/lottie/LottieAnimationView;->isAnimating()Z

    move-result v1

    if-nez v1, :cond_2

    if-eqz v0, :cond_2

    iget-object p0, p0, Lcom/android/quickstep/interaction/AllSetActivity;->mAnimatedBackground:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {p0}, Lcom/airbnb/lottie/LottieAnimationView;->resumeAnimation()V

    :cond_2
    :goto_1
    return-void
.end method

.method private onSwipeProgressUpdate()V
    .locals 3

    iget-object v0, p0, Lcom/android/quickstep/interaction/AllSetActivity;->mBackground:Lcom/android/quickstep/interaction/AllSetActivity$BgDrawable;

    iget-object v1, p0, Lcom/android/quickstep/interaction/AllSetActivity;->mSwipeProgress:Lcom/android/launcher3/anim/AnimatedFloat;

    iget v1, v1, Lcom/android/launcher3/anim/AnimatedFloat;->value:F

    invoke-virtual {v0, v1}, Lcom/android/quickstep/interaction/AllSetActivity$BgDrawable;->setProgress(F)V

    invoke-direct {p0}, Lcom/android/quickstep/interaction/AllSetActivity;->getContentViewAlphaForSwipeProgress()F

    move-result v0

    iget-object v1, p0, Lcom/android/quickstep/interaction/AllSetActivity;->mRootView:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setAlpha(F)V

    iget-object v1, p0, Lcom/android/quickstep/interaction/AllSetActivity;->mRootView:Landroid/view/View;

    const/high16 v2, 0x3f800000    # 1.0f

    sub-float/2addr v0, v2

    iget v2, p0, Lcom/android/quickstep/interaction/AllSetActivity;->mSwipeUpShift:F

    mul-float/2addr v0, v2

    invoke-virtual {v1, v0}, Landroid/view/View;->setTranslationY(F)V

    iget-object v0, p0, Lcom/android/quickstep/interaction/AllSetActivity;->mLauncherStartAnim:Lcom/android/launcher3/anim/AnimatorPlaybackController;

    if-eqz v0, :cond_0

    sget-object v1, Lcom/android/launcher3/anim/Interpolators;->FAST_OUT_SLOW_IN:Landroid/view/animation/Interpolator;

    iget-object v2, p0, Lcom/android/quickstep/interaction/AllSetActivity;->mSwipeProgress:Lcom/android/launcher3/anim/AnimatedFloat;

    iget v2, v2, Lcom/android/launcher3/anim/AnimatedFloat;->value:F

    invoke-interface {v1, v2}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/launcher3/anim/AnimatorPlaybackController;->setPlayFraction(F)V

    :cond_0
    invoke-direct {p0}, Lcom/android/quickstep/interaction/AllSetActivity;->maybeResumeOrPauseBackgroundAnimation()V

    return-void
.end method

.method private onTISConnected(Lcom/android/quickstep/TouchInteractionService$TISBinder;)V
    .locals 1

    iput-object p1, p0, Lcom/android/quickstep/interaction/AllSetActivity;->mBinder:Lcom/android/quickstep/TouchInteractionService$TISBinder;

    invoke-virtual {p1}, Lcom/android/quickstep/TouchInteractionService$TISBinder;->getTaskbarManager()Lcom/android/launcher3/taskbar/TaskbarManager;

    move-result-object p1

    iput-object p1, p0, Lcom/android/quickstep/interaction/AllSetActivity;->mTaskbarManager:Lcom/android/launcher3/taskbar/TaskbarManager;

    invoke-virtual {p0}, Landroid/app/Activity;->isResumed()Z

    move-result p1

    invoke-direct {p0, p1}, Lcom/android/quickstep/interaction/AllSetActivity;->setSetupUIVisible(Z)V

    iget-object p1, p0, Lcom/android/quickstep/interaction/AllSetActivity;->mBinder:Lcom/android/quickstep/TouchInteractionService$TISBinder;

    invoke-virtual {p0}, Landroid/app/Activity;->isResumed()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lcom/android/quickstep/interaction/e;

    invoke-direct {v0, p0}, Lcom/android/quickstep/interaction/e;-><init>(Lcom/android/quickstep/interaction/AllSetActivity;)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p1, v0}, Lcom/android/quickstep/TouchInteractionService$TISBinder;->setSwipeUpProxy(Ljava/util/function/Function;)V

    iget-object p1, p0, Lcom/android/quickstep/interaction/AllSetActivity;->mBinder:Lcom/android/quickstep/TouchInteractionService$TISBinder;

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Lcom/android/quickstep/interaction/b;

    invoke-direct {v0, p1}, Lcom/android/quickstep/interaction/b;-><init>(Lcom/android/quickstep/TouchInteractionService$TISBinder;)V

    invoke-virtual {p1, v0}, Lcom/android/quickstep/TouchInteractionService$TISBinder;->setOverviewTargetChangeListener(Ljava/lang/Runnable;)V

    iget-object p1, p0, Lcom/android/quickstep/interaction/AllSetActivity;->mBinder:Lcom/android/quickstep/TouchInteractionService$TISBinder;

    invoke-virtual {p1}, Lcom/android/quickstep/TouchInteractionService$TISBinder;->preloadOverviewForSUWAllSet()V

    iget-object p1, p0, Lcom/android/quickstep/interaction/AllSetActivity;->mTaskbarManager:Lcom/android/launcher3/taskbar/TaskbarManager;

    if-eqz p1, :cond_1

    const/16 v0, 0x15e

    invoke-virtual {p1, v0}, Lcom/android/launcher3/taskbar/TaskbarManager;->createLauncherStartFromSuwAnim(I)Lcom/android/launcher3/anim/AnimatorPlaybackController;

    move-result-object p1

    iput-object p1, p0, Lcom/android/quickstep/interaction/AllSetActivity;->mLauncherStartAnim:Lcom/android/launcher3/anim/AnimatorPlaybackController;

    :cond_1
    return-void
.end method

.method private runOnUiHelperThread(Ljava/lang/Runnable;)V
    .locals 1

    invoke-virtual {p0}, Landroid/app/Activity;->isResumed()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/android/quickstep/interaction/AllSetActivity;->getContentViewAlphaForSwipeProgress()F

    move-result p0

    const v0, 0x3dcccccd    # 0.1f

    cmpg-float p0, p0, v0

    if-gtz p0, :cond_0

    goto :goto_0

    :cond_0
    sget-object p0, Lcom/android/launcher3/util/Executors;->UI_HELPER_EXECUTOR:Lcom/android/launcher3/util/LooperExecutor;

    invoke-virtual {p0, p1}, Lcom/android/launcher3/util/LooperExecutor;->execute(Ljava/lang/Runnable;)V

    :cond_1
    :goto_0
    return-void
.end method

.method private setSetupUIVisible(Z)V
    .locals 1

    iget-object v0, p0, Lcom/android/quickstep/interaction/AllSetActivity;->mBinder:Lcom/android/quickstep/TouchInteractionService$TISBinder;

    if-eqz v0, :cond_1

    iget-object p0, p0, Lcom/android/quickstep/interaction/AllSetActivity;->mTaskbarManager:Lcom/android/launcher3/taskbar/TaskbarManager;

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/launcher3/taskbar/TaskbarManager;->setSetupUIVisible(Z)V

    :cond_1
    :goto_0
    return-void
.end method

.method private startBackgroundAnimation()V
    .locals 6

    sget-boolean v0, Lcom/android/launcher3/Utilities;->ATLEAST_S:Z

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/quickstep/interaction/AllSetActivity;->mVibrator:Landroid/os/Vibrator;

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    const/4 v1, 0x1

    new-array v2, v1, [I

    const/4 v3, 0x0

    const/4 v4, 0x2

    aput v4, v2, v3

    invoke-virtual {v0, v2}, Landroid/os/Vibrator;->areAllPrimitivesSupported([I)Z

    move-result v0

    const/4 v2, 0x7

    if-nez v0, :cond_1

    iget-object v5, p0, Lcom/android/quickstep/interaction/AllSetActivity;->mVibrator:Landroid/os/Vibrator;

    new-array v1, v1, [I

    aput v2, v1, v3

    invoke-virtual {v5, v1}, Landroid/os/Vibrator;->areAllPrimitivesSupported([I)Z

    move-result v1

    if-nez v1, :cond_1

    return-void

    :cond_1
    iget-object v1, p0, Lcom/android/quickstep/interaction/AllSetActivity;->mBackgroundAnimatorListener:Landroid/animation/Animator$AnimatorListener;

    if-nez v1, :cond_3

    invoke-static {}, Landroid/os/VibrationEffect;->startComposition()Landroid/os/VibrationEffect$Composition;

    move-result-object v1

    if-eqz v0, :cond_2

    goto :goto_0

    :cond_2
    move v4, v2

    :goto_0
    const/high16 v0, 0x3f800000    # 1.0f

    const/16 v2, 0x32

    invoke-virtual {v1, v4, v0, v2}, Landroid/os/VibrationEffect$Composition;->addPrimitive(IFI)Landroid/os/VibrationEffect$Composition;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/VibrationEffect$Composition;->compose()Landroid/os/VibrationEffect;

    move-result-object v0

    new-instance v1, Lcom/android/quickstep/interaction/AllSetActivity$1;

    invoke-direct {v1, p0, v0}, Lcom/android/quickstep/interaction/AllSetActivity$1;-><init>(Lcom/android/quickstep/interaction/AllSetActivity;Landroid/os/VibrationEffect;)V

    iput-object v1, p0, Lcom/android/quickstep/interaction/AllSetActivity;->mBackgroundAnimatorListener:Landroid/animation/Animator$AnimatorListener;

    :cond_3
    iget-object v0, p0, Lcom/android/quickstep/interaction/AllSetActivity;->mAnimatedBackground:Lcom/airbnb/lottie/LottieAnimationView;

    iget-object v1, p0, Lcom/android/quickstep/interaction/AllSetActivity;->mBackgroundAnimatorListener:Landroid/animation/Animator$AnimatorListener;

    invoke-virtual {v0, v1}, Lcom/airbnb/lottie/LottieAnimationView;->addAnimatorListener(Landroid/animation/Animator$AnimatorListener;)V

    iget-object p0, p0, Lcom/android/quickstep/interaction/AllSetActivity;->mAnimatedBackground:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {p0}, Lcom/airbnb/lottie/LottieAnimationView;->playAnimation()V

    :cond_4
    :goto_1
    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 7
    .param p1    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f0e0029

    invoke-virtual {p0, p1}, Landroid/app/Activity;->setContentView(I)V

    const p1, 0x7f0b0309

    invoke-virtual {p0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/android/quickstep/interaction/AllSetActivity;->mRootView:Landroid/view/View;

    const/16 v0, 0x700

    invoke-virtual {p1, v0}, Landroid/view/View;->setSystemUiVisibility(I)V

    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->uiMode:I

    and-int/lit8 v0, v0, 0x30

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/16 v3, 0x20

    if-ne v0, v3, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    if-eqz v0, :cond_1

    const-string v4, "suwColorAccentDark"

    goto :goto_1

    :cond_1
    const-string v4, "suwColorAccentLight"

    :goto_1
    if-eqz v0, :cond_2

    const/4 v0, -0x1

    goto :goto_2

    :cond_2
    const/high16 v0, -0x1000000

    :goto_2
    invoke-virtual {v3, v4, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    const v4, 0x7f0b01e9

    invoke-virtual {p0, v4}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    invoke-virtual {v4}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v4, v0}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    new-instance v4, Lcom/android/quickstep/interaction/AllSetActivity$BgDrawable;

    invoke-direct {v4, p0}, Lcom/android/quickstep/interaction/AllSetActivity$BgDrawable;-><init>(Landroid/content/Context;)V

    iput-object v4, p0, Lcom/android/quickstep/interaction/AllSetActivity;->mBackground:Lcom/android/quickstep/interaction/AllSetActivity$BgDrawable;

    iget-object v5, p0, Lcom/android/quickstep/interaction/AllSetActivity;->mRootView:Landroid/view/View;

    invoke-virtual {v5, v4}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    const v4, 0x7f070096

    invoke-virtual {p1, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v4

    iput v4, p0, Lcom/android/quickstep/interaction/AllSetActivity;->mSwipeUpShift:F

    const v4, 0x7f0b0386

    invoke-virtual {p0, v4}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    const-string v5, "suwDeviceName"

    invoke-virtual {v3, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const v5, 0x7f12006f

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_3

    goto :goto_3

    :cond_3
    const v3, 0x7f1200c2

    invoke-virtual {p0, v3}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v3

    :goto_3
    aput-object v3, v1, v2

    invoke-virtual {p0, v5, v1}, Landroid/app/Activity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v1, 0x7f0b0293

    invoke-virtual {p0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    new-instance v0, Lcom/android/quickstep/interaction/a;

    invoke-direct {v0, p0}, Lcom/android/quickstep/interaction/a;-><init>(Lcom/android/quickstep/interaction/AllSetActivity;)V

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0b01d6

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    sget-object v1, Lcom/android/launcher3/InvariantDeviceProfile;->INSTANCE:Lcom/android/launcher3/util/MainThreadInitializedObject;

    invoke-virtual {v1, p0}, Lcom/android/launcher3/util/MainThreadInitializedObject;->get(Landroid/content/Context;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/launcher3/InvariantDeviceProfile;

    invoke-virtual {v1, p0}, Lcom/android/launcher3/InvariantDeviceProfile;->getDeviceProfile(Landroid/content/Context;)Lj3/a;

    move-result-object v1

    iget-boolean v1, v1, Lcom/android/launcher3/DeviceProfile;->isGestureMode:Z

    if-nez v1, :cond_4

    const v1, 0x7f12006e

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    :cond_4
    new-instance v1, Lcom/android/quickstep/interaction/AllSetActivity$SkipButtonAccessibilityDelegate;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/android/quickstep/interaction/AllSetActivity$SkipButtonAccessibilityDelegate;-><init>(Lcom/android/quickstep/interaction/AllSetActivity;Lcom/android/quickstep/interaction/AllSetActivity$1;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setAccessibilityDelegate(Landroid/view/View$AccessibilityDelegate;)V

    new-instance v0, Lcom/android/quickstep/util/TISBindHelper;

    new-instance v1, Lcom/android/quickstep/interaction/d;

    invoke-direct {v1, p0}, Lcom/android/quickstep/interaction/d;-><init>(Lcom/android/quickstep/interaction/AllSetActivity;)V

    invoke-direct {v0, p0, v1}, Lcom/android/quickstep/util/TISBindHelper;-><init>(Landroid/content/Context;Ljava/util/function/Consumer;)V

    iput-object v0, p0, Lcom/android/quickstep/interaction/AllSetActivity;->mTISBindHelper:Lcom/android/quickstep/util/TISBindHelper;

    const-class v0, Landroid/os/Vibrator;

    invoke-virtual {p0, v0}, Landroid/app/Activity;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Vibrator;

    iput-object v0, p0, Lcom/android/quickstep/interaction/AllSetActivity;->mVibrator:Landroid/os/Vibrator;

    const v0, 0x7f0b0085

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/airbnb/lottie/LottieAnimationView;

    iput-object v0, p0, Lcom/android/quickstep/interaction/AllSetActivity;->mAnimatedBackground:Lcom/airbnb/lottie/LottieAnimationView;

    const/high16 v1, 0x7f110000

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object p1

    invoke-virtual {v0, p1, v2}, Lcom/airbnb/lottie/LottieAnimationView;->setAnimation(Ljava/io/InputStream;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/android/quickstep/interaction/AllSetActivity;->mAnimatedBackground:Lcom/airbnb/lottie/LottieAnimationView;

    const v0, 0x7f060031

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const v1, 0x7f060032

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, ".primary"

    const-string v3, ".tertiary"

    invoke-static {v2, v0, v3, v1}, Ljava/util/Map;->of(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v0

    invoke-virtual {p0}, Landroid/app/Activity;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v1

    invoke-static {p1, v0, v1}, Lcom/android/quickstep/util/LottieAnimationColorUtils;->updateColors(Lcom/airbnb/lottie/LottieAnimationView;Ljava/util/Map;Landroid/content/res/Resources$Theme;)V

    invoke-direct {p0}, Lcom/android/quickstep/interaction/AllSetActivity;->startBackgroundAnimation()V

    return-void
.end method

.method protected onDestroy()V
    .locals 2

    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    iget-object v0, p0, Lcom/android/quickstep/interaction/AllSetActivity;->mTISBindHelper:Lcom/android/quickstep/util/TISBindHelper;

    invoke-virtual {v0}, Lcom/android/quickstep/util/TISBindHelper;->onDestroy()V

    invoke-direct {p0}, Lcom/android/quickstep/interaction/AllSetActivity;->clearBinderOverride()V

    iget-object v0, p0, Lcom/android/quickstep/interaction/AllSetActivity;->mBackgroundAnimatorListener:Landroid/animation/Animator$AnimatorListener;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/android/quickstep/interaction/AllSetActivity;->mAnimatedBackground:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {v1, v0}, Lcom/airbnb/lottie/LottieAnimationView;->removeAnimatorListener(Landroid/animation/Animator$AnimatorListener;)V

    :cond_0
    invoke-direct {p0}, Lcom/android/quickstep/interaction/AllSetActivity;->dispatchLauncherAnimStartEnd()V

    return-void
.end method

.method protected onPause()V
    .locals 2

    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    invoke-direct {p0}, Lcom/android/quickstep/interaction/AllSetActivity;->clearBinderOverride()V

    invoke-direct {p0}, Lcom/android/quickstep/interaction/AllSetActivity;->maybeResumeOrPauseBackgroundAnimation()V

    iget-object v0, p0, Lcom/android/quickstep/interaction/AllSetActivity;->mSwipeProgress:Lcom/android/launcher3/anim/AnimatedFloat;

    iget v0, v0, Lcom/android/launcher3/anim/AnimatedFloat;->value:F

    const/high16 v1, 0x3f800000    # 1.0f

    cmpl-float v0, v0, v1

    if-ltz v0, :cond_0

    invoke-virtual {p0}, Landroid/app/Activity;->finishAndRemoveTask()V

    invoke-direct {p0}, Lcom/android/quickstep/interaction/AllSetActivity;->dispatchLauncherAnimStartEnd()V

    :cond_0
    return-void
.end method

.method protected onResume()V
    .locals 2

    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    invoke-direct {p0}, Lcom/android/quickstep/interaction/AllSetActivity;->maybeResumeOrPauseBackgroundAnimation()V

    iget-object v0, p0, Lcom/android/quickstep/interaction/AllSetActivity;->mBinder:Lcom/android/quickstep/TouchInteractionService$TISBinder;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/quickstep/interaction/AllSetActivity;->setSetupUIVisible(Z)V

    iget-object v0, p0, Lcom/android/quickstep/interaction/AllSetActivity;->mBinder:Lcom/android/quickstep/TouchInteractionService$TISBinder;

    new-instance v1, Lcom/android/quickstep/interaction/e;

    invoke-direct {v1, p0}, Lcom/android/quickstep/interaction/e;-><init>(Lcom/android/quickstep/interaction/AllSetActivity;)V

    invoke-virtual {v0, v1}, Lcom/android/quickstep/TouchInteractionService$TISBinder;->setSwipeUpProxy(Ljava/util/function/Function;)V

    :cond_0
    return-void
.end method
