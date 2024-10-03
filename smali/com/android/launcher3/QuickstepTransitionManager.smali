.class public Lcom/android/launcher3/QuickstepTransitionManager;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/launcher3/DeviceProfile$OnDeviceProfileChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/launcher3/QuickstepTransitionManager$StartingWindowListener;,
        Lcom/android/launcher3/QuickstepTransitionManager$AppLaunchAnimationRunner;,
        Lcom/android/launcher3/QuickstepTransitionManager$ContainerAnimationRunner;,
        Lcom/android/launcher3/QuickstepTransitionManager$AnimOpenProperties;,
        Lcom/android/launcher3/QuickstepTransitionManager$LaunchDepthController;,
        Lcom/android/launcher3/QuickstepTransitionManager$WallpaperOpenLauncherAnimationRunner;,
        Lcom/android/launcher3/QuickstepTransitionManager$SpringAnimRunner;
    }
.end annotation


# static fields
.field private static final ENABLE_SHELL_STARTING_SURFACE:Z

.field public static final NAV_FADE_IN_INTERPOLATOR:Landroid/view/animation/Interpolator;

.field public static final NAV_FADE_OUT_INTERPOLATOR:Landroid/view/animation/Interpolator;


# instance fields
.field private mAppLaunchRunner:Lcom/android/launcher3/LauncherAnimationRunner$RemoteAnimationFactory;

.field private mBackAnimationController:Lcom/android/quickstep/LauncherBackAnimationController;

.field private final mClosingWindowTransY:F

.field private mDeviceProfile:Lcom/android/launcher3/DeviceProfile;

.field protected final mDragLayer:Lcom/android/launcher3/dragndrop/DragLayer;

.field private final mForceInvisibleListener:Landroid/animation/AnimatorListenerAdapter;

.field protected final mHandler:Landroid/os/Handler;

.field private mKeyguardGoingAwayRunner:Lcom/android/launcher3/LauncherAnimationRunner$RemoteAnimationFactory;

.field protected final mLauncher:Lcom/android/launcher3/uioverrides/QuickstepLauncher;

.field private mLauncherOpenTransition:Landroid/window/RemoteTransition;

.field private mLauncherOpenTranslucentTransition:Landroid/window/RemoteTransition;

.field private final mMaxShadowRadius:F

.field private final mOpeningInterpolator:Landroid/view/animation/Interpolator;

.field private final mOpeningXInterpolator:Landroid/view/animation/Interpolator;

.field private mRemoteAnimationProvider:Lcom/android/quickstep/util/RemoteAnimationProvider;

.field private final mStartingWindowListener:Lcom/android/launcher3/QuickstepTransitionManager$StartingWindowListener;

.field private mTaskStartParams:Ljava/util/LinkedHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashMap<",
            "Ljava/lang/Integer;",
            "Landroid/util/Pair<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;>;"
        }
    .end annotation
.end field

.field private mTranslucentGoogleAssistant:Z

.field private mWallpaperOpenRunner:Lcom/android/launcher3/LauncherAnimationRunner$RemoteAnimationFactory;

.field private mWallpaperOpenTransitionRunner:Lcom/android/launcher3/LauncherAnimationRunner$RemoteAnimationFactory;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const-string v0, "persist.debug.shell_starting_surface"

    const/4 v1, 0x1

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/android/launcher3/QuickstepTransitionManager;->ENABLE_SHELL_STARTING_SURFACE:Z

    new-instance v0, Landroid/view/animation/PathInterpolator;

    const/4 v1, 0x0

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-direct {v0, v1, v1, v1, v2}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    sput-object v0, Lcom/android/launcher3/QuickstepTransitionManager;->NAV_FADE_IN_INTERPOLATOR:Landroid/view/animation/Interpolator;

    new-instance v0, Landroid/view/animation/PathInterpolator;

    const v3, 0x3e4ccccd    # 0.2f

    invoke-direct {v0, v3, v1, v2, v2}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    sput-object v0, Lcom/android/launcher3/QuickstepTransitionManager;->NAV_FADE_OUT_INTERPOLATOR:Landroid/view/animation/Interpolator;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/android/launcher3/QuickstepTransitionManager$StartingWindowListener;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/launcher3/QuickstepTransitionManager$StartingWindowListener;-><init>(Lcom/android/launcher3/QuickstepTransitionManager$1;)V

    iput-object v0, p0, Lcom/android/launcher3/QuickstepTransitionManager;->mStartingWindowListener:Lcom/android/launcher3/QuickstepTransitionManager$StartingWindowListener;

    new-instance v1, Lcom/android/launcher3/QuickstepTransitionManager$1;

    invoke-direct {v1, p0}, Lcom/android/launcher3/QuickstepTransitionManager$1;-><init>(Lcom/android/launcher3/QuickstepTransitionManager;)V

    iput-object v1, p0, Lcom/android/launcher3/QuickstepTransitionManager;->mForceInvisibleListener:Landroid/animation/AnimatorListenerAdapter;

    invoke-static {p1}, Lcom/android/launcher3/Launcher;->getLauncher(Landroid/content/Context;)Lcom/android/launcher3/Launcher;

    move-result-object v1

    invoke-static {v1}, Lcom/android/launcher3/Launcher;->cast(Lcom/android/launcher3/views/ActivityContext;)Lcom/android/launcher3/Launcher;

    move-result-object v1

    check-cast v1, Lcom/android/launcher3/uioverrides/QuickstepLauncher;

    iput-object v1, p0, Lcom/android/launcher3/QuickstepTransitionManager;->mLauncher:Lcom/android/launcher3/uioverrides/QuickstepLauncher;

    invoke-virtual {v1}, Lcom/android/launcher3/Launcher;->getDragLayer()Lcom/android/launcher3/dragndrop/NTDragLayer;

    move-result-object v2

    iput-object v2, p0, Lcom/android/launcher3/QuickstepTransitionManager;->mDragLayer:Lcom/android/launcher3/dragndrop/DragLayer;

    new-instance v2, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v2, p0, Lcom/android/launcher3/QuickstepTransitionManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1}, Lq2/m;->getDeviceProfile()Lj3/a;

    move-result-object v2

    iput-object v2, p0, Lcom/android/launcher3/QuickstepTransitionManager;->mDeviceProfile:Lcom/android/launcher3/DeviceProfile;

    new-instance v2, Lcom/android/quickstep/LauncherBackAnimationController;

    invoke-direct {v2, v1, p0}, Lcom/android/quickstep/LauncherBackAnimationController;-><init>(Lcom/android/launcher3/uioverrides/QuickstepLauncher;Lcom/android/launcher3/QuickstepTransitionManager;)V

    iput-object v2, p0, Lcom/android/launcher3/QuickstepTransitionManager;->mBackAnimationController:Lcom/android/quickstep/LauncherBackAnimationController;

    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f070113

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    int-to-float v3, v3

    iput v3, p0, Lcom/android/launcher3/QuickstepTransitionManager;->mClosingWindowTransY:F

    const v3, 0x7f07034a

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    int-to-float v2, v2

    iput v2, p0, Lcom/android/launcher3/QuickstepTransitionManager;->mMaxShadowRadius:F

    invoke-interface {v1, p0}, Lcom/android/launcher3/views/ActivityContext;->addOnDeviceProfileChangeListener(Lcom/android/launcher3/DeviceProfile$OnDeviceProfileChangeListener;)V

    invoke-direct {p0}, Lcom/android/launcher3/QuickstepTransitionManager;->supportsSSplashScreen()Z

    move-result v2

    if-eqz v2, :cond_0

    new-instance v2, Lcom/android/launcher3/QuickstepTransitionManager$2;

    const/4 v3, 0x5

    invoke-direct {v2, p0, v3}, Lcom/android/launcher3/QuickstepTransitionManager$2;-><init>(Lcom/android/launcher3/QuickstepTransitionManager;I)V

    iput-object v2, p0, Lcom/android/launcher3/QuickstepTransitionManager;->mTaskStartParams:Ljava/util/LinkedHashMap;

    invoke-virtual {v0, p0}, Lcom/android/launcher3/QuickstepTransitionManager$StartingWindowListener;->setTransitionManager(Lcom/android/launcher3/QuickstepTransitionManager;)V

    sget-object v2, Lcom/android/quickstep/SystemUiProxy;->INSTANCE:Lcom/android/launcher3/util/MainThreadInitializedObject;

    invoke-virtual {v2, v1}, Lcom/android/launcher3/util/MainThreadInitializedObject;->get(Landroid/content/Context;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/quickstep/SystemUiProxy;

    invoke-virtual {v1, v0}, Lcom/android/quickstep/SystemUiProxy;->setStartingWindowListener(Ld1/b;)V

    :cond_0
    const/high16 v0, 0x7f0d0000

    invoke-static {p1, v0}, Landroid/view/animation/AnimationUtils;->loadInterpolator(Landroid/content/Context;I)Landroid/view/animation/Interpolator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher3/QuickstepTransitionManager;->mOpeningXInterpolator:Landroid/view/animation/Interpolator;

    const v0, 0x7f0d0016

    invoke-static {p1, v0}, Landroid/view/animation/AnimationUtils;->loadInterpolator(Landroid/content/Context;I)Landroid/view/animation/Interpolator;

    move-result-object p1

    iput-object p1, p0, Lcom/android/launcher3/QuickstepTransitionManager;->mOpeningInterpolator:Landroid/view/animation/Interpolator;

    return-void
.end method

.method public static synthetic a(Landroid/animation/AnimatorSet;)V
    .locals 0

    invoke-static {p0}, Lcom/android/launcher3/QuickstepTransitionManager;->lambda$getOpeningWindowAnimatorsForWidget$9(Landroid/animation/AnimatorSet;)V

    return-void
.end method

.method static synthetic access$1000(Lcom/android/launcher3/QuickstepTransitionManager;Landroid/animation/AnimatorSet;Lcom/nothing/launcher/widget/a;[Landroid/view/RemoteAnimationTarget;[Landroid/view/RemoteAnimationTarget;[Landroid/view/RemoteAnimationTarget;Z)V
    .locals 0

    invoke-direct/range {p0 .. p6}, Lcom/android/launcher3/QuickstepTransitionManager;->composeWidgetLaunchAnimator(Landroid/animation/AnimatorSet;Lcom/nothing/launcher/widget/a;[Landroid/view/RemoteAnimationTarget;[Landroid/view/RemoteAnimationTarget;[Landroid/view/RemoteAnimationTarget;Z)V

    return-void
.end method

.method static synthetic access$1100(Lcom/android/launcher3/QuickstepTransitionManager;Landroid/animation/Animator;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/launcher3/QuickstepTransitionManager;->addCujInstrumentation(Landroid/animation/Animator;I)V

    return-void
.end method

.method static synthetic access$1200(Lcom/android/launcher3/QuickstepTransitionManager;Landroid/animation/AnimatorSet;Landroid/view/View;[Landroid/view/RemoteAnimationTarget;[Landroid/view/RemoteAnimationTarget;[Landroid/view/RemoteAnimationTarget;ZLcom/android/launcher3/LauncherAnimationRunner$AnimationResult;)V
    .locals 0

    invoke-direct/range {p0 .. p7}, Lcom/android/launcher3/QuickstepTransitionManager;->composeIconLaunchAnimator(Landroid/animation/AnimatorSet;Landroid/view/View;[Landroid/view/RemoteAnimationTarget;[Landroid/view/RemoteAnimationTarget;[Landroid/view/RemoteAnimationTarget;ZLcom/android/launcher3/LauncherAnimationRunner$AnimationResult;)V

    return-void
.end method

.method static synthetic access$1300(Lcom/android/launcher3/QuickstepTransitionManager;)Landroid/animation/AnimatorListenerAdapter;
    .locals 0

    iget-object p0, p0, Lcom/android/launcher3/QuickstepTransitionManager;->mForceInvisibleListener:Landroid/animation/AnimatorListenerAdapter;

    return-object p0
.end method

.method static synthetic access$1400(Lcom/android/launcher3/QuickstepTransitionManager;)Ljava/util/LinkedHashMap;
    .locals 0

    iget-object p0, p0, Lcom/android/launcher3/QuickstepTransitionManager;->mTaskStartParams:Ljava/util/LinkedHashMap;

    return-object p0
.end method

.method static synthetic access$200(Lcom/android/launcher3/QuickstepTransitionManager;)Landroid/view/animation/Interpolator;
    .locals 0

    iget-object p0, p0, Lcom/android/launcher3/QuickstepTransitionManager;->mOpeningXInterpolator:Landroid/view/animation/Interpolator;

    return-object p0
.end method

.method static synthetic access$300(Lcom/android/launcher3/QuickstepTransitionManager;)Landroid/view/animation/Interpolator;
    .locals 0

    iget-object p0, p0, Lcom/android/launcher3/QuickstepTransitionManager;->mOpeningInterpolator:Landroid/view/animation/Interpolator;

    return-object p0
.end method

.method static synthetic access$400(Lcom/android/launcher3/QuickstepTransitionManager;)Lcom/android/launcher3/DeviceProfile;
    .locals 0

    iget-object p0, p0, Lcom/android/launcher3/QuickstepTransitionManager;->mDeviceProfile:Lcom/android/launcher3/DeviceProfile;

    return-object p0
.end method

.method static synthetic access$500(Lcom/android/launcher3/QuickstepTransitionManager;)F
    .locals 0

    iget p0, p0, Lcom/android/launcher3/QuickstepTransitionManager;->mClosingWindowTransY:F

    return p0
.end method

.method static synthetic access$600(Lcom/android/launcher3/QuickstepTransitionManager;[Landroid/view/RemoteAnimationTarget;)Landroid/animation/Animator;
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/launcher3/QuickstepTransitionManager;->getFallbackClosingWindowAnimators([Landroid/view/RemoteAnimationTarget;)Landroid/animation/Animator;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$700([Landroid/view/RemoteAnimationTarget;)I
    .locals 0

    invoke-static {p0}, Lcom/android/launcher3/QuickstepTransitionManager;->getRotationChange([Landroid/view/RemoteAnimationTarget;)I

    move-result p0

    return p0
.end method

.method static synthetic access$800(Lcom/android/launcher3/QuickstepTransitionManager;[Landroid/view/RemoteAnimationTarget;I)Landroid/graphics/Rect;
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/launcher3/QuickstepTransitionManager;->getWindowTargetBounds([Landroid/view/RemoteAnimationTarget;I)Landroid/graphics/Rect;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$900(Lcom/android/launcher3/QuickstepTransitionManager;[Landroid/view/RemoteAnimationTarget;I)Z
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/launcher3/QuickstepTransitionManager;->launcherIsATargetWithMode([Landroid/view/RemoteAnimationTarget;I)Z

    move-result p0

    return p0
.end method

.method private addCujInstrumentation(Landroid/animation/Animator;I)V
    .locals 1

    new-instance v0, Lcom/android/launcher3/QuickstepTransitionManager$15;

    invoke-direct {v0, p0, p2}, Lcom/android/launcher3/QuickstepTransitionManager$15;-><init>(Lcom/android/launcher3/QuickstepTransitionManager;I)V

    invoke-virtual {p1, v0}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    return-void
.end method

.method private addRemoteAnimations(Landroid/view/RemoteAnimationDefinition;)V
    .locals 10

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/launcher3/QuickstepTransitionManager;->createWallpaperOpenRunner(Z)Lcom/android/launcher3/LauncherAnimationRunner$RemoteAnimationFactory;

    move-result-object v1

    iput-object v1, p0, Lcom/android/launcher3/QuickstepTransitionManager;->mWallpaperOpenRunner:Lcom/android/launcher3/LauncherAnimationRunner$RemoteAnimationFactory;

    new-instance v1, Landroid/view/RemoteAnimationAdapter;

    new-instance v3, Lcom/android/launcher3/LauncherAnimationRunner;

    iget-object v2, p0, Lcom/android/launcher3/QuickstepTransitionManager;->mHandler:Landroid/os/Handler;

    iget-object v4, p0, Lcom/android/launcher3/QuickstepTransitionManager;->mWallpaperOpenRunner:Lcom/android/launcher3/LauncherAnimationRunner$RemoteAnimationFactory;

    invoke-direct {v3, v2, v4, v0}, Lcom/android/launcher3/LauncherAnimationRunner;-><init>(Landroid/os/Handler;Lcom/android/launcher3/LauncherAnimationRunner$RemoteAnimationFactory;Z)V

    const-wide/16 v4, 0xfa

    const-wide/16 v6, 0x0

    move-object v2, v1

    invoke-direct/range {v2 .. v7}, Landroid/view/RemoteAnimationAdapter;-><init>(Landroid/view/IRemoteAnimationRunner;JJ)V

    const/16 v2, 0xd

    const/4 v3, 0x1

    invoke-virtual {p1, v2, v3, v1}, Landroid/view/RemoteAnimationDefinition;->addRemoteAnimation(IILandroid/view/RemoteAnimationAdapter;)V

    new-instance v1, Landroid/view/RemoteAnimationAdapter;

    new-instance v5, Lcom/android/launcher3/LauncherAnimationRunner;

    iget-object v2, p0, Lcom/android/launcher3/QuickstepTransitionManager;->mHandler:Landroid/os/Handler;

    iget-object v4, p0, Lcom/android/launcher3/QuickstepTransitionManager;->mWallpaperOpenRunner:Lcom/android/launcher3/LauncherAnimationRunner$RemoteAnimationFactory;

    invoke-direct {v5, v2, v4, v0}, Lcom/android/launcher3/LauncherAnimationRunner;-><init>(Landroid/os/Handler;Lcom/android/launcher3/LauncherAnimationRunner$RemoteAnimationFactory;Z)V

    const-wide/16 v6, 0xfa

    const-wide/16 v8, 0x0

    move-object v4, v1

    invoke-direct/range {v4 .. v9}, Landroid/view/RemoteAnimationAdapter;-><init>(Landroid/view/IRemoteAnimationRunner;JJ)V

    const/16 v0, 0x19

    invoke-virtual {p1, v0, v3, v1}, Landroid/view/RemoteAnimationDefinition;->addRemoteAnimation(IILandroid/view/RemoteAnimationAdapter;)V

    sget-object v0, Lcom/android/launcher3/config/FeatureFlags;->KEYGUARD_ANIMATION:Lcom/android/launcher3/config/FeatureFlags$BooleanFlag;

    invoke-virtual {v0}, Lcom/android/launcher3/config/FeatureFlags$BooleanFlag;->get()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, v3}, Lcom/android/launcher3/QuickstepTransitionManager;->createWallpaperOpenRunner(Z)Lcom/android/launcher3/LauncherAnimationRunner$RemoteAnimationFactory;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher3/QuickstepTransitionManager;->mKeyguardGoingAwayRunner:Lcom/android/launcher3/LauncherAnimationRunner$RemoteAnimationFactory;

    const/16 v0, 0x15

    new-instance v1, Landroid/view/RemoteAnimationAdapter;

    new-instance v5, Lcom/android/launcher3/LauncherAnimationRunner;

    iget-object v2, p0, Lcom/android/launcher3/QuickstepTransitionManager;->mHandler:Landroid/os/Handler;

    iget-object p0, p0, Lcom/android/launcher3/QuickstepTransitionManager;->mKeyguardGoingAwayRunner:Lcom/android/launcher3/LauncherAnimationRunner$RemoteAnimationFactory;

    invoke-direct {v5, v2, p0, v3}, Lcom/android/launcher3/LauncherAnimationRunner;-><init>(Landroid/os/Handler;Lcom/android/launcher3/LauncherAnimationRunner$RemoteAnimationFactory;Z)V

    const-wide/16 v6, 0xfa

    const-wide/16 v8, 0x0

    move-object v4, v1

    invoke-direct/range {v4 .. v9}, Landroid/view/RemoteAnimationAdapter;-><init>(Landroid/view/IRemoteAnimationRunner;JJ)V

    invoke-virtual {p1, v0, v1}, Landroid/view/RemoteAnimationDefinition;->addRemoteAnimation(ILandroid/view/RemoteAnimationAdapter;)V

    :cond_0
    return-void
.end method

.method private areAllTargetsTranslucent([Landroid/view/RemoteAnimationTarget;)Z
    .locals 3
    .param p1    # [Landroid/view/RemoteAnimationTarget;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    const/4 p0, 0x1

    const/4 v0, 0x0

    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_2

    aget-object v1, p1, v0

    iget v2, v1, Landroid/view/RemoteAnimationTarget;->mode:I

    if-nez v2, :cond_0

    iget-boolean v1, v1, Landroid/view/RemoteAnimationTarget;->isTranslucent:Z

    and-int/2addr p0, v1

    :cond_0
    if-nez p0, :cond_1

    goto :goto_1

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    return p0
.end method

.method public static synthetic b()Ljava/lang/Boolean;
    .locals 1

    invoke-static {}, Lcom/android/launcher3/QuickstepTransitionManager;->lambda$composeWidgetLaunchAnimator$1()Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public static synthetic c(Landroid/view/View;)V
    .locals 0

    invoke-static {p0}, Lcom/android/launcher3/QuickstepTransitionManager;->lambda$getLauncherContentAnimator$6(Landroid/view/View;)V

    return-void
.end method

.method private composeIconLaunchAnimator(Landroid/animation/AnimatorSet;Landroid/view/View;[Landroid/view/RemoteAnimationTarget;[Landroid/view/RemoteAnimationTarget;[Landroid/view/RemoteAnimationTarget;ZLcom/android/launcher3/LauncherAnimationRunner$AnimationResult;)V
    .locals 10
    .param p1    # Landroid/animation/AnimatorSet;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # [Landroid/view/RemoteAnimationTarget;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p4    # [Landroid/view/RemoteAnimationTarget;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p5    # [Landroid/view/RemoteAnimationTarget;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    move-object v6, p0

    move-object v7, p1

    iget-object v0, v6, Lcom/android/launcher3/QuickstepTransitionManager;->mLauncher:Lcom/android/launcher3/uioverrides/QuickstepLauncher;

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getStateManager()Lcom/android/launcher3/statemanager/StateManager;

    move-result-object v0

    sget-object v1, Lcom/android/launcher3/p3;->a:Lcom/android/launcher3/p3;

    const/4 v8, 0x0

    new-array v2, v8, [Landroid/animation/Animator;

    invoke-virtual {v0, v1, p1, v2}, Lcom/android/launcher3/statemanager/StateManager;->setCurrentAnimation(Ljava/util/function/Supplier;Landroid/animation/AnimatorSet;[Landroid/animation/Animator;)V

    iget-object v0, v6, Lcom/android/launcher3/QuickstepTransitionManager;->mLauncher:Lcom/android/launcher3/uioverrides/QuickstepLauncher;

    invoke-static {v0}, Lcom/android/launcher3/util/window/RefreshRateTracker;->getSingleFrameMs(Landroid/content/Context;)I

    move-result v9

    move-object v0, p0

    move-object v1, p2

    move-object v2, p3

    move-object v3, p4

    move-object v4, p5

    move/from16 v5, p6

    invoke-direct/range {v0 .. v5}, Lcom/android/launcher3/QuickstepTransitionManager;->getOpeningWindowAnimators(Landroid/view/View;[Landroid/view/RemoteAnimationTarget;[Landroid/view/RemoteAnimationTarget;[Landroid/view/RemoteAnimationTarget;Z)Landroid/animation/Animator;

    move-result-object v0

    int-to-long v1, v9

    invoke-virtual {v0, v1, v2}, Landroid/animation/Animator;->setStartDelay(J)V

    invoke-virtual {p1, v0}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    if-eqz p6, :cond_0

    const/4 v0, 0x1

    move-object/from16 v1, p7

    invoke-direct {p0, v0, v9, v8, v1}, Lcom/android/launcher3/QuickstepTransitionManager;->getLauncherContentAnimator(ZIZLcom/android/launcher3/LauncherAnimationRunner$AnimationResult;)Landroid/util/Pair;

    move-result-object v0

    iget-object v1, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, Landroid/animation/Animator;

    invoke-virtual {p1, v1}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    new-instance v1, Lcom/android/launcher3/QuickstepTransitionManager$3;

    invoke-direct {v1, p0, v0}, Lcom/android/launcher3/QuickstepTransitionManager$3;-><init>(Lcom/android/launcher3/QuickstepTransitionManager;Landroid/util/Pair;)V

    invoke-virtual {p1, v1}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    :cond_0
    return-void
.end method

.method private composeWidgetLaunchAnimator(Landroid/animation/AnimatorSet;Lcom/nothing/launcher/widget/a;[Landroid/view/RemoteAnimationTarget;[Landroid/view/RemoteAnimationTarget;[Landroid/view/RemoteAnimationTarget;Z)V
    .locals 6
    .param p1    # Landroid/animation/AnimatorSet;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/nothing/launcher/widget/a;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # [Landroid/view/RemoteAnimationTarget;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p4    # [Landroid/view/RemoteAnimationTarget;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p5    # [Landroid/view/RemoteAnimationTarget;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iget-object v0, p0, Lcom/android/launcher3/QuickstepTransitionManager;->mLauncher:Lcom/android/launcher3/uioverrides/QuickstepLauncher;

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getStateManager()Lcom/android/launcher3/statemanager/StateManager;

    move-result-object v0

    sget-object v1, Lcom/android/launcher3/o3;->a:Lcom/android/launcher3/o3;

    const/4 v2, 0x0

    new-array v2, v2, [Landroid/animation/Animator;

    invoke-virtual {v0, v1, p1, v2}, Lcom/android/launcher3/statemanager/StateManager;->setCurrentAnimation(Ljava/util/function/Supplier;Landroid/animation/AnimatorSet;[Landroid/animation/Animator;)V

    move-object v0, p0

    move-object v1, p2

    move-object v2, p3

    move-object v3, p4

    move-object v4, p5

    move v5, p6

    invoke-direct/range {v0 .. v5}, Lcom/android/launcher3/QuickstepTransitionManager;->getOpeningWindowAnimatorsForWidget(Lcom/nothing/launcher/widget/a;[Landroid/view/RemoteAnimationTarget;[Landroid/view/RemoteAnimationTarget;[Landroid/view/RemoteAnimationTarget;Z)Landroid/animation/Animator;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    return-void
.end method

.method public static synthetic d()Ljava/lang/Boolean;
    .locals 1

    invoke-static {}, Lcom/android/launcher3/QuickstepTransitionManager;->lambda$composeIconLaunchAnimator$0()Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public static synthetic e(Lcom/android/launcher3/QuickstepTransitionManager;Ljava/util/List;Z)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/launcher3/QuickstepTransitionManager;->lambda$getLauncherContentAnimator$7(Ljava/util/List;Z)V

    return-void
.end method

.method public static synthetic f(Lcom/android/launcher3/QuickstepTransitionManager;Lcom/android/quickstep/views/RecentsView;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/launcher3/QuickstepTransitionManager;->lambda$composeViewContentAnimator$8(Lcom/android/quickstep/views/RecentsView;)V

    return-void
.end method

.method private findLauncherView(Landroid/view/RemoteAnimationTarget;)Landroid/view/View;
    .locals 8
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    const/4 v0, 0x0

    if-eqz p1, :cond_8

    iget-object v1, p1, Landroid/view/RemoteAnimationTarget;->taskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    if-nez v1, :cond_0

    goto/16 :goto_2

    :cond_0
    const/4 v2, 0x4

    new-array v3, v2, [Landroid/content/ComponentName;

    iget-object v4, v1, Landroid/app/ActivityManager$RunningTaskInfo;->baseActivity:Landroid/content/ComponentName;

    const/4 v5, 0x0

    aput-object v4, v3, v5

    iget-object v4, v1, Landroid/app/ActivityManager$RunningTaskInfo;->origActivity:Landroid/content/ComponentName;

    const/4 v6, 0x1

    aput-object v4, v3, v6

    const/4 v4, 0x2

    iget-object v7, v1, Landroid/app/ActivityManager$RunningTaskInfo;->realActivity:Landroid/content/ComponentName;

    aput-object v7, v3, v4

    const/4 v4, 0x3

    iget-object v1, v1, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    aput-object v1, v3, v4

    :goto_0
    if-ge v5, v2, :cond_2

    aget-object v1, v3, v5

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_1

    invoke-virtual {v1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    :cond_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_2
    move-object v1, v0

    :goto_1
    if-nez v1, :cond_3

    return-object v0

    :cond_3
    const-string v2, "com.google.android.apps.googleassistant"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    iget-boolean v2, p1, Landroid/view/RemoteAnimationTarget;->isTranslucent:Z

    if-eqz v2, :cond_4

    iput-boolean v6, p0, Lcom/android/launcher3/QuickstepTransitionManager;->mTranslucentGoogleAssistant:Z

    return-object v0

    :cond_4
    iget-object v0, p1, Landroid/view/RemoteAnimationTarget;->taskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object v0, v0, Landroid/app/ActivityManager$RunningTaskInfo;->launchCookies:Ljava/util/ArrayList;

    if-nez v0, :cond_5

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    :cond_5
    const/high16 v2, -0x80000000

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_7

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/IBinder;

    invoke-static {v3}, Lcom/android/launcher3/util/ObjectWrapper;->unwrap(Landroid/os/IBinder;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    if-eqz v3, :cond_6

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v2

    :cond_7
    iget-object p0, p0, Lcom/android/launcher3/QuickstepTransitionManager;->mLauncher:Lcom/android/launcher3/uioverrides/QuickstepLauncher;

    iget-object p1, p1, Landroid/view/RemoteAnimationTarget;->taskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    iget p1, p1, Landroid/app/ActivityManager$RunningTaskInfo;->userId:I

    invoke-static {p1}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object p1

    invoke-virtual {p0, v2, v1, p1, v6}, Lcom/android/launcher3/Launcher;->getFirstMatchForAppClose(ILjava/lang/String;Landroid/os/UserHandle;Z)Landroid/view/View;

    move-result-object p0

    return-object p0

    :cond_8
    :goto_2
    return-object v0
.end method

.method private findLauncherView([Landroid/view/RemoteAnimationTarget;)Landroid/view/View;
    .locals 5
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    aget-object v2, p1, v1

    iget v3, v2, Landroid/view/RemoteAnimationTarget;->mode:I

    const/4 v4, 0x1

    if-ne v3, v4, :cond_0

    invoke-direct {p0, v2}, Lcom/android/launcher3/QuickstepTransitionManager;->findLauncherView(Landroid/view/RemoteAnimationTarget;)Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_0

    return-object v2

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public static synthetic g([FLandroid/animation/AnimatorSet;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/android/launcher3/QuickstepTransitionManager;->lambda$getLauncherContentAnimator$5([FLandroid/animation/AnimatorSet;Landroid/view/View;)V

    return-void
.end method

.method private getBackgroundAnimator()Landroid/animation/ObjectAnimator;
    .locals 5

    new-instance v0, Lcom/android/launcher3/QuickstepTransitionManager$LaunchDepthController;

    iget-object v1, p0, Lcom/android/launcher3/QuickstepTransitionManager;->mLauncher:Lcom/android/launcher3/uioverrides/QuickstepLauncher;

    invoke-direct {v0, v1}, Lcom/android/launcher3/QuickstepTransitionManager$LaunchDepthController;-><init>(Lcom/android/launcher3/uioverrides/QuickstepLauncher;)V

    iget-object v1, v0, Lcom/android/quickstep/util/BaseDepthController;->stateDepth:Lcom/android/launcher3/util/MultiPropertyFactory$MultiProperty;

    sget-object v2, Lcom/android/launcher3/util/MultiPropertyFactory;->MULTI_PROPERTY_VALUE:Landroid/util/FloatProperty;

    const/4 v3, 0x1

    new-array v3, v3, [F

    sget-object v4, Lcom/android/launcher3/LauncherState;->BACKGROUND_APP:Lcom/android/launcher3/LauncherState;

    iget-object p0, p0, Lcom/android/launcher3/QuickstepTransitionManager;->mLauncher:Lcom/android/launcher3/uioverrides/QuickstepLauncher;

    invoke-virtual {v4, p0}, Lcom/android/launcher3/LauncherState;->getDepth(Landroid/content/Context;)F

    move-result p0

    const/4 v4, 0x0

    aput p0, v3, v4

    invoke-static {v1, v2, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object p0

    const-wide/16 v1, 0x1f4

    invoke-virtual {p0, v1, v2}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object p0

    new-instance v1, Lcom/android/launcher3/r3;

    invoke-direct {v1, v0}, Lcom/android/launcher3/r3;-><init>(Lcom/android/launcher3/QuickstepTransitionManager$LaunchDepthController;)V

    invoke-static {v1}, Lcom/android/launcher3/anim/AnimatorListeners;->forEndCallback(Ljava/lang/Runnable;)Landroid/animation/Animator$AnimatorListener;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    return-object p0
.end method

.method private getClosingWindowAnimators(Landroid/animation/AnimatorSet;[Landroid/view/RemoteAnimationTarget;Landroid/view/View;Landroid/graphics/PointF;Landroid/graphics/RectF;F)Lcom/android/quickstep/util/RectFSpringAnim;
    .locals 18

    move-object/from16 v8, p0

    move-object/from16 v2, p2

    move-object/from16 v0, p3

    new-instance v3, Landroid/graphics/RectF;

    invoke-direct {v3}, Landroid/graphics/RectF;-><init>()V

    array-length v1, v2

    const/4 v4, 0x0

    move v5, v4

    :goto_0
    const/4 v6, 0x0

    const/4 v7, 0x1

    if-ge v5, v1, :cond_1

    aget-object v9, v2, v5

    iget v10, v9, Landroid/view/RemoteAnimationTarget;->mode:I

    if-ne v10, v7, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_1
    move-object v9, v6

    :goto_1
    iget v1, v9, Landroid/view/RemoteAnimationTarget;->taskId:I

    invoke-static {v1}, Lcom/android/quickstep/utils/TransitionSmoothHelper;->getData(I)Lcom/android/quickstep/utils/TransitionSmoothHelper$TransitionData;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Lcom/android/quickstep/utils/TransitionSmoothHelper$TransitionData;->getWindowCrop()Landroid/graphics/Rect;

    move-result-object v5

    if-eqz v5, :cond_2

    invoke-virtual {v1}, Lcom/android/quickstep/utils/TransitionSmoothHelper$TransitionData;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v5

    if-eqz v5, :cond_2

    invoke-virtual {v1}, Lcom/android/quickstep/utils/TransitionSmoothHelper$TransitionData;->getCornerRadius()F

    move-result v5

    new-instance v10, Landroid/graphics/RectF;

    invoke-virtual {v1}, Lcom/android/quickstep/utils/TransitionSmoothHelper$TransitionData;->getWindowCrop()Landroid/graphics/Rect;

    move-result-object v11

    invoke-direct {v10, v11}, Landroid/graphics/RectF;-><init>(Landroid/graphics/Rect;)V

    invoke-virtual {v1}, Lcom/android/quickstep/utils/TransitionSmoothHelper$TransitionData;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v1

    invoke-virtual {v1, v10}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    new-instance v1, Landroid/graphics/RectF;

    iget v11, v10, Landroid/graphics/RectF;->left:F

    iget v12, v10, Landroid/graphics/RectF;->top:F

    iget v13, v10, Landroid/graphics/RectF;->right:F

    iget v10, v10, Landroid/graphics/RectF;->bottom:F

    invoke-direct {v1, v11, v12, v13, v10}, Landroid/graphics/RectF;-><init>(FFFF)V

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "getClosingWindowAnimators: fix startRect "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    const-string v11, "QuickstepTransitionManager"

    invoke-static {v11, v10}, Ly2/e;->l(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    :cond_2
    move-object/from16 v1, p5

    move/from16 v5, p6

    :goto_2
    instance-of v10, v0, Lcom/nothing/launcher/widget/a;

    if-eqz v10, :cond_8

    invoke-virtual/range {p3 .. p3}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v10

    instance-of v10, v10, Landroid/view/ViewGroup;

    const/16 v16, 0x0

    if-eqz v10, :cond_4

    new-instance v12, Landroid/util/Size;

    iget-object v10, v8, Lcom/android/launcher3/QuickstepTransitionManager;->mDeviceProfile:Lcom/android/launcher3/DeviceProfile;

    iget v11, v10, Lcom/android/launcher3/DeviceProfile;->availableWidthPx:I

    iget v10, v10, Lcom/android/launcher3/DeviceProfile;->availableHeightPx:I

    invoke-direct {v12, v11, v10}, Landroid/util/Size;-><init>(II)V

    iget-object v10, v8, Lcom/android/launcher3/QuickstepTransitionManager;->mLauncher:Lcom/android/launcher3/uioverrides/QuickstepLauncher;

    invoke-static {v10, v9}, Lcom/android/quickstep/views/FloatingWidgetView;->getDefaultBackgroundColor(Landroid/content/Context;Landroid/view/RemoteAnimationTarget;)I

    move-result v15

    iget-object v9, v8, Lcom/android/launcher3/QuickstepTransitionManager;->mLauncher:Lcom/android/launcher3/uioverrides/QuickstepLauncher;

    move-object v10, v0

    check-cast v10, Lcom/nothing/launcher/widget/a;

    iget-object v11, v8, Lcom/android/launcher3/QuickstepTransitionManager;->mDeviceProfile:Lcom/android/launcher3/DeviceProfile;

    iget-boolean v11, v11, Lcom/android/launcher3/DeviceProfile;->isMultiWindowMode:Z

    if-eqz v11, :cond_3

    move/from16 v13, v16

    goto :goto_3

    :cond_3
    invoke-static {v9}, Lcom/android/systemui/shared/system/QuickStepContract;->getWindowCornerRadius(Landroid/content/Context;)F

    move-result v11

    move v13, v11

    :goto_3
    const/4 v14, 0x0

    move-object v11, v3

    invoke-static/range {v9 .. v15}, Lcom/android/quickstep/views/FloatingWidgetView;->getFloatingWidgetView(Lcom/android/launcher3/Launcher;Lcom/nothing/launcher/widget/a;Landroid/graphics/RectF;Landroid/util/Size;FZI)Lcom/android/quickstep/views/FloatingWidgetView;

    move-result-object v9

    goto :goto_4

    :cond_4
    invoke-direct/range {p0 .. p0}, Lcom/android/launcher3/QuickstepTransitionManager;->getDefaultWindowTargetRect()Landroid/graphics/RectF;

    move-result-object v9

    invoke-virtual {v3, v9}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    move-object v9, v6

    :goto_4
    invoke-virtual {v3}, Landroid/graphics/RectF;->width()F

    move-result v10

    cmpl-float v10, v10, v16

    if-eqz v10, :cond_6

    invoke-virtual {v3}, Landroid/graphics/RectF;->height()F

    move-result v10

    cmpl-float v10, v10, v16

    if-nez v10, :cond_5

    goto :goto_5

    :cond_5
    move v10, v4

    goto :goto_6

    :cond_6
    :goto_5
    move v10, v7

    :goto_6
    if-eqz v10, :cond_7

    const-string v10, "NT-"

    const-string v11, "Match invalid widget display rect, replace it with default card size."

    invoke-static {v10, v11}, Ly2/e;->l(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual/range {p3 .. p3}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/model/data/ItemInfo;

    if-eqz v0, :cond_7

    iget-object v10, v8, Lcom/android/launcher3/QuickstepTransitionManager;->mLauncher:Lcom/android/launcher3/uioverrides/QuickstepLauncher;

    invoke-virtual {v10}, Lq2/m;->getDeviceProfile()Lj3/a;

    move-result-object v10

    iget v11, v0, Lcom/android/launcher3/model/data/ItemInfo;->spanX:I

    iget v0, v0, Lcom/android/launcher3/model/data/ItemInfo;->spanY:I

    invoke-static {v10, v11, v0}, Lcom/android/launcher3/widget/util/WidgetSizes;->getWidgetSizePx(Lcom/android/launcher3/DeviceProfile;II)Landroid/util/Size;

    move-result-object v0

    iget v10, v3, Landroid/graphics/RectF;->left:F

    iget v11, v3, Landroid/graphics/RectF;->top:F

    invoke-virtual {v0}, Landroid/util/Size;->getWidth()I

    move-result v12

    int-to-float v12, v12

    add-float/2addr v12, v10

    iget v13, v3, Landroid/graphics/RectF;->top:F

    invoke-virtual {v0}, Landroid/util/Size;->getHeight()I

    move-result v0

    int-to-float v0, v0

    add-float/2addr v13, v0

    invoke-virtual {v3, v10, v11, v12, v13}, Landroid/graphics/RectF;->set(FFFF)V

    :cond_7
    move v0, v4

    goto :goto_9

    :cond_8
    if-eqz v0, :cond_b

    iget-object v9, v8, Lcom/android/launcher3/QuickstepTransitionManager;->mLauncher:Lcom/android/launcher3/uioverrides/QuickstepLauncher;

    const/4 v11, 0x0

    invoke-virtual {v9}, Lcom/android/launcher3/uioverrides/QuickstepLauncher;->getTaskbarUIController()Lcom/android/launcher3/taskbar/LauncherTaskbarUIController;

    move-result-object v10

    if-nez v10, :cond_9

    move-object v12, v6

    goto :goto_7

    :cond_9
    iget-object v10, v8, Lcom/android/launcher3/QuickstepTransitionManager;->mLauncher:Lcom/android/launcher3/uioverrides/QuickstepLauncher;

    invoke-virtual {v10}, Lcom/android/launcher3/uioverrides/QuickstepLauncher;->getTaskbarUIController()Lcom/android/launcher3/taskbar/LauncherTaskbarUIController;

    move-result-object v10

    invoke-virtual {v10, v0}, Lcom/android/launcher3/taskbar/TaskbarUIController;->findMatchingView(Landroid/view/View;)Landroid/view/View;

    move-result-object v10

    move-object v12, v10

    :goto_7
    const/4 v13, 0x1

    const/4 v15, 0x0

    move-object/from16 v10, p3

    move-object v14, v3

    invoke-static/range {v9 .. v15}, Lcom/android/launcher3/views/FloatingIconView;->getFloatingIconView(Lcom/android/launcher3/Launcher;Landroid/view/View;Landroid/view/View;Landroid/view/View;ZLandroid/graphics/RectF;Z)Lcom/android/launcher3/views/FloatingIconView;

    move-result-object v9

    invoke-virtual/range {p3 .. p3}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v10

    instance-of v10, v10, Lcom/android/launcher3/model/data/ItemInfo;

    if-eqz v10, :cond_a

    invoke-virtual/range {p3 .. p3}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/model/data/ItemInfo;

    invoke-virtual {v0}, Lcom/android/launcher3/model/data/ItemInfo;->isInHotseat()Z

    move-result v0

    if-eqz v0, :cond_a

    move v0, v7

    goto :goto_8

    :cond_a
    move v0, v4

    :goto_8
    move-object/from16 v17, v9

    move-object v9, v6

    move-object/from16 v6, v17

    goto :goto_9

    :cond_b
    invoke-direct/range {p0 .. p0}, Lcom/android/launcher3/QuickstepTransitionManager;->getDefaultWindowTargetRect()Landroid/graphics/RectF;

    move-result-object v0

    invoke-virtual {v3, v0}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    move v0, v4

    move-object v9, v6

    :goto_9
    iget-object v10, v8, Lcom/android/launcher3/QuickstepTransitionManager;->mDeviceProfile:Lcom/android/launcher3/DeviceProfile;

    iget-boolean v10, v10, Lcom/android/launcher3/DeviceProfile;->isTaskbarPresent:Z

    if-eqz v10, :cond_c

    if-eqz v0, :cond_c

    move v4, v7

    :cond_c
    new-instance v10, Lcom/android/quickstep/util/RectFSpringAnim;

    if-eqz v4, :cond_d

    new-instance v0, Lcom/android/quickstep/util/RectFSpringAnim$TaskbarHotseatSpringConfig;

    iget-object v4, v8, Lcom/android/launcher3/QuickstepTransitionManager;->mLauncher:Lcom/android/launcher3/uioverrides/QuickstepLauncher;

    invoke-direct {v0, v4, v1, v3}, Lcom/android/quickstep/util/RectFSpringAnim$TaskbarHotseatSpringConfig;-><init>(Landroid/content/Context;Landroid/graphics/RectF;Landroid/graphics/RectF;)V

    goto :goto_a

    :cond_d
    new-instance v0, Lcom/android/quickstep/util/RectFSpringAnim$DefaultSpringConfig;

    iget-object v4, v8, Lcom/android/launcher3/QuickstepTransitionManager;->mLauncher:Lcom/android/launcher3/uioverrides/QuickstepLauncher;

    iget-object v7, v8, Lcom/android/launcher3/QuickstepTransitionManager;->mDeviceProfile:Lcom/android/launcher3/DeviceProfile;

    invoke-direct {v0, v4, v7, v1, v3}, Lcom/android/quickstep/util/RectFSpringAnim$DefaultSpringConfig;-><init>(Landroid/content/Context;Lcom/android/launcher3/DeviceProfile;Landroid/graphics/RectF;Landroid/graphics/RectF;)V

    :goto_a
    invoke-direct {v10, v0}, Lcom/android/quickstep/util/RectFSpringAnim;-><init>(Lcom/android/quickstep/util/RectFSpringAnim$SpringConfig;)V

    invoke-static/range {p2 .. p2}, Lcom/android/launcher3/QuickstepTransitionManager;->getRotationChange([Landroid/view/RemoteAnimationTarget;)I

    move-result v0

    invoke-direct {v8, v2, v0}, Lcom/android/launcher3/QuickstepTransitionManager;->getWindowTargetBounds([Landroid/view/RemoteAnimationTarget;I)Landroid/graphics/Rect;

    move-result-object v4

    if-eqz v6, :cond_e

    invoke-virtual {v10, v6}, Lcom/android/quickstep/util/RectFSpringAnim;->addAnimatorListener(Landroid/animation/Animator$AnimatorListener;)V

    new-instance v0, Lcom/android/launcher3/w3;

    invoke-direct {v0, v10}, Lcom/android/launcher3/w3;-><init>(Lcom/android/quickstep/util/RectFSpringAnim;)V

    invoke-virtual {v6, v0}, Lcom/android/launcher3/views/FloatingIconView;->setOnTargetChangeListener(Ljava/lang/Runnable;)V

    new-instance v0, Lcom/android/launcher3/v3;

    invoke-direct {v0, v10}, Lcom/android/launcher3/v3;-><init>(Lcom/android/quickstep/util/RectFSpringAnim;)V

    invoke-virtual {v6, v0}, Lcom/android/launcher3/views/FloatingIconView;->setFastFinishRunnable(Ljava/lang/Runnable;)V

    new-instance v7, Lcom/android/launcher3/QuickstepTransitionManager$11;

    move-object v0, v7

    move-object/from16 v1, p0

    move-object/from16 v2, p2

    invoke-direct/range {v0 .. v6}, Lcom/android/launcher3/QuickstepTransitionManager$11;-><init>(Lcom/android/launcher3/QuickstepTransitionManager;[Landroid/view/RemoteAnimationTarget;Landroid/graphics/RectF;Landroid/graphics/Rect;FLcom/android/launcher3/views/FloatingIconView;)V

    invoke-virtual {v10, v7}, Lcom/android/quickstep/util/RectFSpringAnim;->addOnUpdateListener(Lcom/android/quickstep/util/RectFSpringAnim$OnUpdateListener;)V

    goto :goto_b

    :cond_e
    if-eqz v9, :cond_f

    invoke-virtual {v10, v9}, Lcom/android/quickstep/util/RectFSpringAnim;->addAnimatorListener(Landroid/animation/Animator$AnimatorListener;)V

    new-instance v0, Lcom/android/launcher3/w3;

    invoke-direct {v0, v10}, Lcom/android/launcher3/w3;-><init>(Lcom/android/quickstep/util/RectFSpringAnim;)V

    invoke-virtual {v9, v0}, Lcom/android/quickstep/views/FloatingWidgetView;->setOnTargetChangeListener(Ljava/lang/Runnable;)V

    new-instance v0, Lcom/android/launcher3/v3;

    invoke-direct {v0, v10}, Lcom/android/launcher3/v3;-><init>(Lcom/android/quickstep/util/RectFSpringAnim;)V

    invoke-virtual {v9, v0}, Lcom/android/quickstep/views/FloatingWidgetView;->setFastFinishRunnable(Ljava/lang/Runnable;)V

    const/high16 v7, 0x3f800000    # 1.0f

    new-instance v11, Lcom/android/launcher3/QuickstepTransitionManager$12;

    move-object v0, v11

    move-object/from16 v1, p0

    move-object/from16 v2, p2

    move-object v6, v9

    invoke-direct/range {v0 .. v7}, Lcom/android/launcher3/QuickstepTransitionManager$12;-><init>(Lcom/android/launcher3/QuickstepTransitionManager;[Landroid/view/RemoteAnimationTarget;Landroid/graphics/RectF;Landroid/graphics/Rect;FLcom/android/quickstep/views/FloatingWidgetView;F)V

    invoke-virtual {v10, v11}, Lcom/android/quickstep/util/RectFSpringAnim;->addOnUpdateListener(Lcom/android/quickstep/util/RectFSpringAnim$OnUpdateListener;)V

    goto :goto_b

    :cond_f
    new-instance v6, Lcom/android/launcher3/QuickstepTransitionManager$SpringAnimRunner;

    move-object v0, v6

    move-object/from16 v1, p0

    move-object/from16 v2, p2

    invoke-direct/range {v0 .. v5}, Lcom/android/launcher3/QuickstepTransitionManager$SpringAnimRunner;-><init>(Lcom/android/launcher3/QuickstepTransitionManager;[Landroid/view/RemoteAnimationTarget;Landroid/graphics/RectF;Landroid/graphics/Rect;F)V

    invoke-virtual {v10, v6}, Lcom/android/quickstep/util/RectFSpringAnim;->addOnUpdateListener(Lcom/android/quickstep/util/RectFSpringAnim$OnUpdateListener;)V

    :goto_b
    new-instance v0, Lcom/android/launcher3/QuickstepTransitionManager$13;

    move-object/from16 v1, p4

    invoke-direct {v0, v8, v10, v1}, Lcom/android/launcher3/QuickstepTransitionManager$13;-><init>(Lcom/android/launcher3/QuickstepTransitionManager;Lcom/android/quickstep/util/RectFSpringAnim;Landroid/graphics/PointF;)V

    move-object/from16 v1, p1

    invoke-virtual {v1, v0}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    return-object v10
.end method

.method private getDefaultWindowTargetRect()Landroid/graphics/RectF;
    .locals 5
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    iget-object v0, p0, Lcom/android/launcher3/QuickstepTransitionManager;->mLauncher:Lcom/android/launcher3/uioverrides/QuickstepLauncher;

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getOverviewPanel()Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/quickstep/views/RecentsView;

    invoke-virtual {v0}, Lcom/android/quickstep/views/RecentsView;->getPagedOrientationHandler()Lcom/android/launcher3/touch/PagedOrientationHandler;

    move-result-object v0

    iget-object p0, p0, Lcom/android/launcher3/QuickstepTransitionManager;->mLauncher:Lcom/android/launcher3/uioverrides/QuickstepLauncher;

    invoke-virtual {p0}, Lq2/m;->getDeviceProfile()Lj3/a;

    move-result-object p0

    iget v1, p0, Lcom/android/launcher3/DeviceProfile;->iconSizePx:I

    div-int/lit8 v1, v1, 0x2

    iget v2, p0, Lcom/android/launcher3/DeviceProfile;->availableWidthPx:I

    iget v3, p0, Lcom/android/launcher3/DeviceProfile;->availableHeightPx:I

    invoke-interface {v0, v2, v3}, Lcom/android/launcher3/touch/PagedOrientationHandler;->getPrimaryValue(II)I

    move-result v2

    int-to-float v2, v2

    iget v3, p0, Lcom/android/launcher3/DeviceProfile;->availableWidthPx:I

    iget v4, p0, Lcom/android/launcher3/DeviceProfile;->availableHeightPx:I

    invoke-interface {v0, v3, v4}, Lcom/android/launcher3/touch/PagedOrientationHandler;->getSecondaryValue(II)I

    move-result v0

    int-to-float v0, v0

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v2, v3

    iget p0, p0, Lcom/android/launcher3/DeviceProfile;->hotseatBarSizePx:I

    int-to-float p0, p0

    sub-float/2addr v0, p0

    new-instance p0, Landroid/graphics/RectF;

    int-to-float v1, v1

    sub-float v3, v2, v1

    sub-float v4, v0, v1

    add-float/2addr v2, v1

    add-float/2addr v0, v1

    invoke-direct {p0, v3, v4, v2, v0}, Landroid/graphics/RectF;-><init>(FFFF)V

    return-object p0
.end method

.method private getFallbackClosingWindowAnimators([Landroid/view/RemoteAnimationTarget;)Landroid/animation/Animator;
    .locals 13

    invoke-static {p1}, Lcom/android/launcher3/QuickstepTransitionManager;->getRotationChange([Landroid/view/RemoteAnimationTarget;)I

    move-result v7

    new-instance v10, Lcom/android/quickstep/util/SurfaceTransactionApplier;

    iget-object v0, p0, Lcom/android/launcher3/QuickstepTransitionManager;->mDragLayer:Lcom/android/launcher3/dragndrop/DragLayer;

    invoke-direct {v10, v0}, Lcom/android/quickstep/util/SurfaceTransactionApplier;-><init>(Landroid/view/View;)V

    new-instance v8, Landroid/graphics/Matrix;

    invoke-direct {v8}, Landroid/graphics/Matrix;-><init>()V

    new-instance v5, Landroid/graphics/Point;

    invoke-direct {v5}, Landroid/graphics/Point;-><init>()V

    new-instance v6, Landroid/graphics/Rect;

    invoke-direct {v6}, Landroid/graphics/Rect;-><init>()V

    const/4 v0, 0x2

    new-array v0, v0, [F

    fill-array-data v0, :array_0

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v11

    iget-object v0, p0, Lcom/android/launcher3/QuickstepTransitionManager;->mDeviceProfile:Lcom/android/launcher3/DeviceProfile;

    iget-boolean v0, v0, Lcom/android/launcher3/DeviceProfile;->isMultiWindowMode:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    move v9, v1

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/launcher3/QuickstepTransitionManager;->mLauncher:Lcom/android/launcher3/uioverrides/QuickstepLauncher;

    invoke-static {v0}, Lcom/android/systemui/shared/system/QuickStepContract;->getWindowCornerRadius(Landroid/content/Context;)F

    move-result v0

    move v9, v0

    :goto_0
    invoke-direct {p0, p1}, Lcom/android/launcher3/QuickstepTransitionManager;->areAllTargetsTranslucent([Landroid/view/RemoteAnimationTarget;)Z

    move-result v0

    if-eqz v0, :cond_1

    move v3, v1

    goto :goto_1

    :cond_1
    iget v0, p0, Lcom/android/launcher3/QuickstepTransitionManager;->mMaxShadowRadius:F

    move v3, v0

    :goto_1
    const/16 v0, 0xfa

    int-to-long v0, v0

    invoke-virtual {v11, v0, v1}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    new-instance v12, Lcom/android/launcher3/QuickstepTransitionManager$14;

    const/16 v2, 0xfa

    move-object v0, v12

    move-object v1, p0

    move-object v4, p1

    invoke-direct/range {v0 .. v10}, Lcom/android/launcher3/QuickstepTransitionManager$14;-><init>(Lcom/android/launcher3/QuickstepTransitionManager;IF[Landroid/view/RemoteAnimationTarget;Landroid/graphics/Point;Landroid/graphics/Rect;ILandroid/graphics/Matrix;FLcom/android/quickstep/util/SurfaceTransactionApplier;)V

    invoke-virtual {v11, v12}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    return-object v11

    nop

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method private getLauncherContentAnimator(ZIZLcom/android/launcher3/LauncherAnimationRunner$AnimationResult;)Landroid/util/Pair;
    .locals 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ZIZ",
            "Lcom/android/launcher3/LauncherAnimationRunner$AnimationResult;",
            ")",
            "Landroid/util/Pair<",
            "Landroid/animation/AnimatorSet;",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation

    move-object/from16 v1, p0

    move/from16 v0, p1

    new-instance v6, Landroid/animation/AnimatorSet;

    invoke-direct {v6}, Landroid/animation/AnimatorSet;-><init>()V

    const/high16 v2, 0x3f800000    # 1.0f

    const/4 v3, 0x1

    const/4 v4, 0x2

    const/4 v5, 0x0

    new-array v7, v4, [F

    if-eqz v0, :cond_0

    fill-array-data v7, :array_0

    goto :goto_1

    :cond_0
    sget-boolean v8, Lcom/android/quickstep/utils/TransitionSmoothHelper;->SMOOTH_FEATURE:Z

    if-eqz v8, :cond_1

    invoke-static {}, Lcom/android/quickstep/utils/TransitionSmoothHelper;->getAllAppsContentAlpha()F

    move-result v8

    goto :goto_0

    :cond_1
    const/4 v8, 0x0

    :goto_0
    aput v8, v7, v5

    aput v2, v7, v3

    :goto_1
    new-array v8, v4, [F

    if-eqz v0, :cond_2

    aput v2, v8, v5

    iget-object v2, v1, Lcom/android/launcher3/QuickstepTransitionManager;->mDeviceProfile:Lcom/android/launcher3/DeviceProfile;

    iget v2, v2, Lcom/android/launcher3/DeviceProfile;->workspaceContentScale:F

    aput v2, v8, v3

    goto :goto_2

    :cond_2
    iget-object v9, v1, Lcom/android/launcher3/QuickstepTransitionManager;->mDeviceProfile:Lcom/android/launcher3/DeviceProfile;

    iget v9, v9, Lcom/android/launcher3/DeviceProfile;->workspaceContentScale:F

    aput v9, v8, v5

    aput v2, v8, v3

    :goto_2
    iget-object v2, v1, Lcom/android/launcher3/QuickstepTransitionManager;->mLauncher:Lcom/android/launcher3/uioverrides/QuickstepLauncher;

    invoke-virtual {v2}, Lcom/android/launcher3/Launcher;->pauseExpensiveViewUpdates()V

    iget-object v2, v1, Lcom/android/launcher3/QuickstepTransitionManager;->mLauncher:Lcom/android/launcher3/uioverrides/QuickstepLauncher;

    sget-object v9, Lcom/android/launcher3/LauncherState;->ALL_APPS:Lcom/android/launcher3/LauncherState;

    invoke-virtual {v2, v9}, Lcom/android/launcher3/statemanager/StatefulActivity;->isInState(Lcom/android/launcher3/statemanager/BaseState;)Z

    move-result v2

    const-wide/16 v9, 0x15e

    if-eqz v2, :cond_5

    iget-object v2, v1, Lcom/android/launcher3/QuickstepTransitionManager;->mLauncher:Lcom/android/launcher3/uioverrides/QuickstepLauncher;

    invoke-virtual {v2}, Lcom/android/launcher3/Launcher;->getHiddenAppsPagedView()Lcom/nothing/launcher/hiddenapps/NTHiddenAppsPagedView;

    move-result-object v11

    invoke-virtual {v11}, Lcom/nothing/launcher/hiddenapps/NTHiddenAppsPagedView;->getContentAlpha()F

    move-result v12

    sget-object v2, Lcom/android/launcher3/LauncherAnimUtils;->SCALE_PROPERTY:Landroid/util/FloatProperty;

    invoke-virtual {v2, v11}, Landroid/util/FloatProperty;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/Float;

    invoke-virtual {v13}, Ljava/lang/Float;->floatValue()F

    move-result v13

    iget-object v14, v1, Lcom/android/launcher3/QuickstepTransitionManager;->mDeviceProfile:Lcom/android/launcher3/DeviceProfile;

    iget-boolean v14, v14, Lcom/android/launcher3/DeviceProfile;->isTablet:Z

    if-eqz v14, :cond_3

    new-array v7, v4, [F

    fill-array-data v7, :array_1

    :cond_3
    aget v14, v7, v5

    invoke-virtual {v11, v14}, Landroid/view/View;->setAlpha(F)V

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "getLauncherContentAnimator: isAppOpening = "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, ", alpha = "

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Landroid/view/View;->getAlpha()F

    move-result v0

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v0, ", contentAlpha = "

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v12}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v0, ", animatingAlpha = "

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget v0, v7, v5

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v0, ", "

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget v0, v7, v3

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v14, "QuickstepTransitionManager"

    invoke-static {v14, v0}, Ly2/e;->l(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/nothing/launcher/hiddenapps/NTHiddenAppsPagedView;->m:Lcom/nothing/launcher/hiddenapps/NTHiddenAppsPagedView$b;

    invoke-virtual {v0}, Lcom/nothing/launcher/hiddenapps/NTHiddenAppsPagedView$b;->a()Landroid/util/FloatProperty;

    move-result-object v0

    invoke-static {v0, v7}, Landroid/animation/PropertyValuesHolder;->ofFloat(Landroid/util/Property;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v0

    new-array v3, v3, [Landroid/animation/PropertyValuesHolder;

    aput-object v0, v3, v5

    invoke-static {v11, v3}, Landroid/animation/ObjectAnimator;->ofPropertyValuesHolder(Ljava/lang/Object;[Landroid/animation/PropertyValuesHolder;)Landroid/animation/ObjectAnimator;

    move-result-object v0

    const-wide/16 v14, 0xd9

    invoke-virtual {v0, v14, v15}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    sget-object v3, Lcom/android/launcher3/anim/Interpolators;->LINEAR:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v3}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    const/4 v3, 0x0

    invoke-virtual {v11, v4, v3}, Landroid/view/View;->setLayerType(ILandroid/graphics/Paint;)V

    new-instance v3, Lcom/android/launcher3/QuickstepTransitionManager$4;

    invoke-direct {v3, v1, v11}, Lcom/android/launcher3/QuickstepTransitionManager$4;-><init>(Lcom/android/launcher3/QuickstepTransitionManager;Landroid/view/View;)V

    invoke-virtual {v0, v3}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    if-nez p3, :cond_4

    aget v3, v8, v5

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    invoke-virtual {v2, v11, v3}, Landroid/util/FloatProperty;->set(Ljava/lang/Object;Ljava/lang/Float;)V

    invoke-static {v11, v2, v8}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    sget-object v3, Lcom/android/launcher3/anim/Interpolators;->AGGRESSIVE_EASE:Landroid/view/animation/Interpolator;

    invoke-virtual {v2, v3}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    invoke-virtual {v2, v9, v10}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    invoke-virtual {v6, v2}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    :cond_4
    invoke-virtual {v6, v0}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    new-instance v7, Lcom/android/launcher3/s3;

    move-object v0, v7

    move-object/from16 v1, p0

    move-object/from16 v2, p4

    move v3, v12

    move-object v4, v11

    move v5, v13

    invoke-direct/range {v0 .. v5}, Lcom/android/launcher3/s3;-><init>(Lcom/android/launcher3/QuickstepTransitionManager;Lcom/android/launcher3/LauncherAnimationRunner$AnimationResult;FLandroid/view/View;F)V

    goto :goto_3

    :cond_5
    iget-object v2, v1, Lcom/android/launcher3/QuickstepTransitionManager;->mLauncher:Lcom/android/launcher3/uioverrides/QuickstepLauncher;

    sget-object v11, Lcom/android/launcher3/LauncherState;->OVERVIEW:Lcom/android/launcher3/LauncherState;

    invoke-virtual {v2, v11}, Lcom/android/launcher3/statemanager/StatefulActivity;->isInState(Lcom/android/launcher3/statemanager/BaseState;)Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-virtual {v1, v6, v7, v8}, Lcom/android/launcher3/QuickstepTransitionManager;->composeViewContentAnimator(Landroid/animation/AnimatorSet;[F[F)Ljava/lang/Runnable;

    move-result-object v7

    :goto_3
    move/from16 v0, p2

    goto/16 :goto_6

    :cond_6
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iget-object v7, v1, Lcom/android/launcher3/QuickstepTransitionManager;->mLauncher:Lcom/android/launcher3/uioverrides/QuickstepLauncher;

    invoke-virtual {v7}, Lcom/android/launcher3/Launcher;->getWorkspace()Lcom/android/launcher3/Workspace;

    move-result-object v7

    new-instance v11, Lcom/android/launcher3/y3;

    invoke-direct {v11, v2}, Lcom/android/launcher3/y3;-><init>(Ljava/util/List;)V

    invoke-virtual {v7, v11}, Lcom/android/launcher3/PagedView;->forEachVisiblePage(Ljava/util/function/Consumer;)V

    iget-object v7, v1, Lcom/android/launcher3/QuickstepTransitionManager;->mDeviceProfile:Lcom/android/launcher3/DeviceProfile;

    iget-boolean v11, v7, Lcom/android/launcher3/DeviceProfile;->isTaskbarPresent:Z

    if-eqz v11, :cond_7

    iget-boolean v7, v7, Lcom/android/launcher3/DeviceProfile;->isQsbInline:Z

    if-nez v7, :cond_8

    iget-object v7, v1, Lcom/android/launcher3/QuickstepTransitionManager;->mLauncher:Lcom/android/launcher3/uioverrides/QuickstepLauncher;

    invoke-virtual {v7}, Lcom/android/launcher3/Launcher;->getHotseat()Lcom/android/launcher3/Hotseat;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/launcher3/Hotseat;->getQsb()Landroid/view/View;

    move-result-object v7

    goto :goto_4

    :cond_7
    iget-object v7, v1, Lcom/android/launcher3/QuickstepTransitionManager;->mLauncher:Lcom/android/launcher3/uioverrides/QuickstepLauncher;

    invoke-virtual {v7}, Lcom/android/launcher3/Launcher;->getHotseat()Lcom/android/launcher3/Hotseat;

    move-result-object v7

    :goto_4
    invoke-interface {v2, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_8
    new-instance v7, Lcom/android/launcher3/m3;

    invoke-direct {v7, v8, v6}, Lcom/android/launcher3/m3;-><init>([FLandroid/animation/AnimatorSet;)V

    invoke-interface {v2, v7}, Ljava/util/List;->forEach(Ljava/util/function/Consumer;)V

    sget-object v7, Lcom/android/launcher3/config/FeatureFlags;->ENABLE_SCRIM_FOR_APP_LAUNCH:Lcom/android/launcher3/config/FeatureFlags$BooleanFlag;

    invoke-virtual {v7}, Lcom/android/launcher3/config/FeatureFlags$BooleanFlag;->get()Z

    move-result v7

    if-eqz v7, :cond_a

    iget-object v8, v1, Lcom/android/launcher3/QuickstepTransitionManager;->mLauncher:Lcom/android/launcher3/uioverrides/QuickstepLauncher;

    const v11, 0x7f040405

    invoke-static {v8, v11}, Lcom/android/launcher3/util/Themes;->getAttrColor(Landroid/content/Context;I)I

    move-result v8

    invoke-static {v8, v5}, Landroidx/core/graphics/ColorUtils;->setAlphaComponent(II)I

    move-result v11

    if-eqz v0, :cond_9

    new-array v0, v4, [I

    aput v11, v0, v5

    aput v8, v0, v3

    goto :goto_5

    :cond_9
    new-array v0, v4, [I

    aput v8, v0, v5

    aput v11, v0, v3

    :goto_5
    iget-object v3, v1, Lcom/android/launcher3/QuickstepTransitionManager;->mLauncher:Lcom/android/launcher3/uioverrides/QuickstepLauncher;

    invoke-virtual {v3}, Lcom/android/launcher3/Launcher;->getScrimView()Lcom/android/launcher3/views/ScrimView;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v4

    instance-of v4, v4, Landroid/graphics/drawable/ColorDrawable;

    if-eqz v4, :cond_a

    aget v4, v0, v5

    invoke-virtual {v3, v4}, Lcom/android/launcher3/views/ScrimView;->setBackgroundColor(I)V

    sget-object v4, Lcom/android/launcher3/LauncherAnimUtils;->VIEW_BACKGROUND_COLOR:Landroid/util/IntProperty;

    invoke-static {v3, v4, v0}, Landroid/animation/ObjectAnimator;->ofArgb(Ljava/lang/Object;Landroid/util/Property;[I)Landroid/animation/ObjectAnimator;

    move-result-object v0

    invoke-virtual {v0, v9, v10}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    sget-object v3, Lcom/android/launcher3/anim/Interpolators;->DEACCEL_1_5:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v3}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    invoke-virtual {v6, v0}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    :cond_a
    new-instance v0, Lcom/android/launcher3/u3;

    invoke-direct {v0, v1, v2, v7}, Lcom/android/launcher3/u3;-><init>(Lcom/android/launcher3/QuickstepTransitionManager;Ljava/util/List;Z)V

    move-object v7, v0

    goto/16 :goto_3

    :goto_6
    int-to-long v0, v0

    invoke-virtual {v6, v0, v1}, Landroid/animation/AnimatorSet;->setStartDelay(J)V

    new-instance v0, Landroid/util/Pair;

    invoke-direct {v0, v6, v7}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v0

    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data

    :array_1
    .array-data 4
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
    .end array-data
.end method

.method private getOpeningWindowAnimators(Landroid/view/View;[Landroid/view/RemoteAnimationTarget;[Landroid/view/RemoteAnimationTarget;[Landroid/view/RemoteAnimationTarget;Z)Landroid/animation/Animator;
    .locals 30

    move-object/from16 v15, p0

    move-object/from16 v10, p1

    move-object/from16 v13, p2

    invoke-static/range {p2 .. p2}, Lcom/android/launcher3/QuickstepTransitionManager;->getRotationChange([Landroid/view/RemoteAnimationTarget;)I

    move-result v11

    invoke-direct {v15, v13, v11}, Lcom/android/launcher3/QuickstepTransitionManager;->getWindowTargetBounds([Landroid/view/RemoteAnimationTarget;I)Landroid/graphics/Rect;

    move-result-object v7

    invoke-direct {v15, v13}, Lcom/android/launcher3/QuickstepTransitionManager;->areAllTargetsTranslucent([Landroid/view/RemoteAnimationTarget;)Z

    move-result v18

    new-instance v12, Landroid/graphics/RectF;

    invoke-direct {v12}, Landroid/graphics/RectF;-><init>()V

    iget-object v0, v15, Lcom/android/launcher3/QuickstepTransitionManager;->mLauncher:Lcom/android/launcher3/uioverrides/QuickstepLauncher;

    invoke-virtual {v0}, Lcom/android/launcher3/uioverrides/QuickstepLauncher;->getTaskbarUIController()Lcom/android/launcher3/taskbar/LauncherTaskbarUIController;

    move-result-object v1

    if-eqz v1, :cond_1

    iget-object v1, v15, Lcom/android/launcher3/QuickstepTransitionManager;->mLauncher:Lcom/android/launcher3/uioverrides/QuickstepLauncher;

    invoke-static {v1}, Lcom/android/launcher3/util/DisplayController;->isTransientTaskbar(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    iget-object v1, v15, Lcom/android/launcher3/QuickstepTransitionManager;->mLauncher:Lcom/android/launcher3/uioverrides/QuickstepLauncher;

    invoke-virtual {v1}, Lcom/android/launcher3/uioverrides/QuickstepLauncher;->getTaskbarUIController()Lcom/android/launcher3/taskbar/LauncherTaskbarUIController;

    move-result-object v1

    invoke-virtual {v1, v10}, Lcom/android/launcher3/taskbar/TaskbarUIController;->findMatchingView(Landroid/view/View;)Landroid/view/View;

    move-result-object v1

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v1, 0x0

    :goto_1
    move-object v2, v1

    const/4 v3, 0x0

    xor-int/lit8 v4, v18, 0x1

    const/4 v6, 0x1

    move-object/from16 v1, p1

    move-object v5, v12

    invoke-static/range {v0 .. v6}, Lcom/android/launcher3/views/FloatingIconView;->getFloatingIconView(Lcom/android/launcher3/Launcher;Landroid/view/View;Landroid/view/View;Landroid/view/View;ZLandroid/graphics/RectF;Z)Lcom/android/launcher3/views/FloatingIconView;

    move-result-object v14

    new-instance v9, Landroid/graphics/Rect;

    invoke-direct {v9}, Landroid/graphics/Rect;-><init>()V

    new-instance v16, Landroid/graphics/Matrix;

    invoke-direct/range {v16 .. v16}, Landroid/graphics/Matrix;-><init>()V

    new-instance v8, Lcom/android/quickstep/RemoteAnimationTargets;

    const/4 v6, 0x0

    move-object/from16 v0, p3

    move-object/from16 v1, p4

    invoke-direct {v8, v13, v0, v1, v6}, Lcom/android/quickstep/RemoteAnimationTargets;-><init>([Landroid/view/RemoteAnimationTarget;[Landroid/view/RemoteAnimationTarget;[Landroid/view/RemoteAnimationTarget;I)V

    new-instance v5, Lcom/android/quickstep/util/SurfaceTransactionApplier;

    invoke-direct {v5, v14}, Lcom/android/quickstep/util/SurfaceTransactionApplier;-><init>(Landroid/view/View;)V

    invoke-virtual {v8, v5}, Lcom/android/quickstep/RemoteAnimationTargets;->addReleaseCheck(Lcom/android/quickstep/RemoteAnimationTargets$ReleaseCheck;)V

    invoke-virtual {v8}, Lcom/android/quickstep/RemoteAnimationTargets;->getNavBarRemoteAnimationTarget()Landroid/view/RemoteAnimationTarget;

    move-result-object v17

    const/4 v4, 0x2

    new-array v3, v4, [I

    iget-object v0, v15, Lcom/android/launcher3/QuickstepTransitionManager;->mDragLayer:Lcom/android/launcher3/dragndrop/DragLayer;

    invoke-virtual {v0, v3}, Landroid/widget/FrameLayout;->getLocationOnScreen([I)V

    invoke-direct/range {p0 .. p0}, Lcom/android/launcher3/QuickstepTransitionManager;->supportsSSplashScreen()Z

    move-result v0

    const/4 v2, 0x1

    if-eqz v0, :cond_3

    invoke-virtual {v8}, Lcom/android/quickstep/RemoteAnimationTargets;->getFirstAppTargetTaskId()I

    move-result v0

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v1

    iget-object v4, v15, Lcom/android/launcher3/QuickstepTransitionManager;->mTaskStartParams:Ljava/util/LinkedHashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v4, v6, v1}, Ljava/util/LinkedHashMap;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/Pair;

    iget-object v4, v15, Lcom/android/launcher3/QuickstepTransitionManager;->mTaskStartParams:Ljava/util/LinkedHashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/util/LinkedHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ne v0, v2, :cond_2

    move v0, v2

    goto :goto_2

    :cond_2
    const/4 v0, 0x0

    :goto_2
    move/from16 v20, v0

    goto :goto_3

    :cond_3
    const/16 v20, 0x0

    :goto_3
    new-instance v6, Lcom/android/launcher3/QuickstepTransitionManager$AnimOpenProperties;

    iget-object v0, v15, Lcom/android/launcher3/QuickstepTransitionManager;->mLauncher:Lcom/android/launcher3/uioverrides/QuickstepLauncher;

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iget-object v4, v15, Lcom/android/launcher3/QuickstepTransitionManager;->mDeviceProfile:Lcom/android/launcher3/DeviceProfile;

    const/16 v19, 0x0

    aget v21, v3, v19

    aget v22, v3, v2

    invoke-virtual {v14}, Lcom/android/launcher3/views/FloatingIconView;->isDifferentFromAppIcon()Z

    move-result v23

    move-object v0, v6

    move-object v2, v4

    move-object/from16 v24, v3

    move-object v3, v7

    const/4 v7, 0x2

    move-object v4, v12

    move-object/from16 v25, v5

    move-object/from16 v5, p1

    move-object v13, v6

    move/from16 v6, v21

    move/from16 v21, v11

    move v11, v7

    move/from16 v7, v22

    move-object/from16 v26, v8

    move/from16 v8, v20

    move-object v11, v9

    move/from16 v9, v23

    invoke-direct/range {v0 .. v9}, Lcom/android/launcher3/QuickstepTransitionManager$AnimOpenProperties;-><init>(Landroid/content/res/Resources;Lcom/android/launcher3/DeviceProfile;Landroid/graphics/Rect;Landroid/graphics/RectF;Landroid/view/View;IIZZ)V

    iget v0, v13, Lcom/android/launcher3/QuickstepTransitionManager$AnimOpenProperties;->cropCenterXStart:I

    iget v1, v13, Lcom/android/launcher3/QuickstepTransitionManager$AnimOpenProperties;->cropWidthStart:I

    div-int/lit8 v2, v1, 0x2

    sub-int/2addr v0, v2

    iget v2, v13, Lcom/android/launcher3/QuickstepTransitionManager$AnimOpenProperties;->cropCenterYStart:I

    iget v3, v13, Lcom/android/launcher3/QuickstepTransitionManager$AnimOpenProperties;->cropHeightStart:I

    div-int/lit8 v4, v3, 0x2

    sub-int/2addr v2, v4

    add-int/2addr v1, v0

    add-int/2addr v3, v2

    invoke-virtual {v11, v0, v2, v1, v3}, Landroid/graphics/Rect;->set(IIII)V

    new-instance v20, Landroid/graphics/RectF;

    invoke-direct/range {v20 .. v20}, Landroid/graphics/RectF;-><init>()V

    new-instance v9, Landroid/graphics/RectF;

    invoke-direct {v9}, Landroid/graphics/RectF;-><init>()V

    new-instance v22, Landroid/graphics/Point;

    invoke-direct/range {v22 .. v22}, Landroid/graphics/Point;-><init>()V

    new-instance v8, Landroid/animation/AnimatorSet;

    invoke-direct {v8}, Landroid/animation/AnimatorSet;-><init>()V

    const/4 v7, 0x2

    new-array v0, v7, [F

    fill-array-data v0, :array_0

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v6

    const-wide/16 v0, 0x1f4

    invoke-virtual {v6, v0, v1}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    sget-object v0, Lcom/android/launcher3/anim/Interpolators;->LINEAR:Landroid/view/animation/Interpolator;

    invoke-virtual {v6, v0}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    invoke-virtual {v6, v14}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    new-instance v0, Lcom/android/launcher3/QuickstepTransitionManager$5;

    move-object/from16 v1, v26

    invoke-direct {v0, v15, v10, v1}, Lcom/android/launcher3/QuickstepTransitionManager$5;-><init>(Lcom/android/launcher3/QuickstepTransitionManager;Landroid/view/View;Lcom/android/quickstep/RemoteAnimationTargets;)V

    invoke-virtual {v6, v0}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    iget-object v0, v15, Lcom/android/launcher3/QuickstepTransitionManager;->mLauncher:Lcom/android/launcher3/uioverrides/QuickstepLauncher;

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-static {v0}, Lcom/android/systemui/shared/system/QuickStepContract;->supportsRoundedCornersOnWindows(Landroid/content/res/Resources;)Z

    move-result v0

    const/4 v10, 0x0

    if-eqz v0, :cond_4

    invoke-virtual {v11}, Landroid/graphics/Rect;->width()I

    move-result v0

    invoke-virtual {v11}, Landroid/graphics/Rect;->height()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    int-to-float v0, v0

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v0, v1

    move v3, v0

    goto :goto_4

    :cond_4
    move v3, v10

    :goto_4
    iget-object v0, v15, Lcom/android/launcher3/QuickstepTransitionManager;->mDeviceProfile:Lcom/android/launcher3/DeviceProfile;

    iget-boolean v0, v0, Lcom/android/launcher3/DeviceProfile;->isMultiWindowMode:Z

    if-eqz v0, :cond_5

    move v4, v10

    goto :goto_5

    :cond_5
    iget-object v0, v15, Lcom/android/launcher3/QuickstepTransitionManager;->mLauncher:Lcom/android/launcher3/uioverrides/QuickstepLauncher;

    invoke-static {v0}, Lcom/android/systemui/shared/system/QuickStepContract;->getWindowCornerRadius(Landroid/content/Context;)F

    move-result v0

    move v4, v0

    :goto_5
    if-eqz v18, :cond_6

    move v5, v10

    goto :goto_6

    :cond_6
    iget v0, v15, Lcom/android/launcher3/QuickstepTransitionManager;->mMaxShadowRadius:F

    move v5, v0

    :goto_6
    new-instance v2, Lcom/android/launcher3/QuickstepTransitionManager$6;

    move-object v0, v2

    move-object/from16 v1, p0

    move-object/from16 v27, v2

    move-object v2, v13

    move-object v13, v6

    move-object v6, v12

    move v12, v7

    move-object v7, v11

    move-object v11, v8

    move/from16 v8, v21

    move-object/from16 v10, v24

    move-object v12, v11

    move-object/from16 v11, v20

    move-object/from16 v28, v12

    move-object v12, v14

    move-object v14, v13

    move-object/from16 v13, p2

    move-object/from16 v29, v14

    move-object/from16 v14, v16

    move-object/from16 v15, v22

    move-object/from16 v16, v17

    move-object/from16 v17, v25

    invoke-direct/range {v0 .. v17}, Lcom/android/launcher3/QuickstepTransitionManager$6;-><init>(Lcom/android/launcher3/QuickstepTransitionManager;Lcom/android/launcher3/QuickstepTransitionManager$AnimOpenProperties;FFFLandroid/graphics/RectF;Landroid/graphics/Rect;ILandroid/graphics/RectF;[ILandroid/graphics/RectF;Lcom/android/launcher3/views/FloatingIconView;[Landroid/view/RemoteAnimationTarget;Landroid/graphics/Matrix;Landroid/graphics/Point;Landroid/view/RemoteAnimationTarget;Lcom/android/quickstep/util/SurfaceTransactionApplier;)V

    move-object/from16 v1, v27

    move-object/from16 v0, v29

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Lcom/android/quickstep/util/MultiValueUpdateListener;->onUpdate(FZ)V

    if-nez v18, :cond_8

    if-nez p5, :cond_7

    goto :goto_7

    :cond_7
    const/4 v1, 0x2

    new-array v1, v1, [Landroid/animation/Animator;

    aput-object v0, v1, v19

    invoke-direct/range {p0 .. p0}, Lcom/android/launcher3/QuickstepTransitionManager;->getBackgroundAnimator()Landroid/animation/ObjectAnimator;

    move-result-object v2

    aput-object v2, v1, v3

    move-object/from16 v2, v28

    invoke-virtual {v2, v1}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    goto :goto_8

    :cond_8
    :goto_7
    move-object/from16 v2, v28

    invoke-virtual {v2, v0}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    :goto_8
    new-instance v1, Lcom/android/launcher3/QuickstepTransitionManager$7;

    move-object/from16 v3, p0

    invoke-direct {v1, v3, v0}, Lcom/android/launcher3/QuickstepTransitionManager$7;-><init>(Lcom/android/launcher3/QuickstepTransitionManager;Landroid/animation/ValueAnimator;)V

    invoke-virtual {v2, v1}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    return-object v2

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method private getOpeningWindowAnimatorsForWidget(Lcom/nothing/launcher/widget/a;[Landroid/view/RemoteAnimationTarget;[Landroid/view/RemoteAnimationTarget;[Landroid/view/RemoteAnimationTarget;Z)Landroid/animation/Animator;
    .locals 22

    move-object/from16 v13, p0

    move-object/from16 v9, p2

    invoke-static/range {p2 .. p2}, Lcom/android/launcher3/QuickstepTransitionManager;->getRotationChange([Landroid/view/RemoteAnimationTarget;)I

    move-result v0

    invoke-direct {v13, v9, v0}, Lcom/android/launcher3/QuickstepTransitionManager;->getWindowTargetBounds([Landroid/view/RemoteAnimationTarget;I)Landroid/graphics/Rect;

    move-result-object v5

    invoke-direct {v13, v9}, Lcom/android/launcher3/QuickstepTransitionManager;->areAllTargetsTranslucent([Landroid/view/RemoteAnimationTarget;)Z

    move-result v21

    new-instance v4, Landroid/graphics/RectF;

    invoke-direct {v4}, Landroid/graphics/RectF;-><init>()V

    new-instance v6, Landroid/graphics/Rect;

    invoke-direct {v6}, Landroid/graphics/Rect;-><init>()V

    new-instance v7, Landroid/graphics/Matrix;

    invoke-direct {v7}, Landroid/graphics/Matrix;-><init>()V

    new-instance v0, Lcom/android/quickstep/RemoteAnimationTargets;

    const/4 v12, 0x0

    move-object/from16 v1, p3

    move-object/from16 v2, p4

    invoke-direct {v0, v9, v1, v2, v12}, Lcom/android/quickstep/RemoteAnimationTargets;-><init>([Landroid/view/RemoteAnimationTarget;[Landroid/view/RemoteAnimationTarget;[Landroid/view/RemoteAnimationTarget;I)V

    invoke-virtual {v0}, Lcom/android/quickstep/RemoteAnimationTargets;->getFirstAppTarget()Landroid/view/RemoteAnimationTarget;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-direct/range {p0 .. p0}, Lcom/android/launcher3/QuickstepTransitionManager;->supportsSSplashScreen()Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, v13, Lcom/android/launcher3/QuickstepTransitionManager;->mTaskStartParams:Ljava/util/LinkedHashMap;

    iget v3, v1, Landroid/view/RemoteAnimationTarget;->taskId:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/LinkedHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, v13, Lcom/android/launcher3/QuickstepTransitionManager;->mTaskStartParams:Ljava/util/LinkedHashMap;

    iget v3, v1, Landroid/view/RemoteAnimationTarget;->taskId:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/util/Pair;

    iget-object v2, v2, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    goto :goto_0

    :cond_0
    move v2, v12

    :goto_0
    iget-object v3, v13, Lcom/android/launcher3/QuickstepTransitionManager;->mTaskStartParams:Ljava/util/LinkedHashMap;

    iget v8, v1, Landroid/view/RemoteAnimationTarget;->taskId:I

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v3, v8}, Ljava/util/LinkedHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_1
    move v2, v12

    :goto_1
    if-nez v2, :cond_2

    iget-object v2, v13, Lcom/android/launcher3/QuickstepTransitionManager;->mLauncher:Lcom/android/launcher3/uioverrides/QuickstepLauncher;

    invoke-static {v2, v1}, Lcom/android/quickstep/views/FloatingWidgetView;->getDefaultBackgroundColor(Landroid/content/Context;Landroid/view/RemoteAnimationTarget;)I

    move-result v1

    move/from16 v20, v1

    goto :goto_2

    :cond_2
    move/from16 v20, v2

    :goto_2
    iget-object v1, v13, Lcom/android/launcher3/QuickstepTransitionManager;->mDeviceProfile:Lcom/android/launcher3/DeviceProfile;

    iget-boolean v1, v1, Lcom/android/launcher3/DeviceProfile;->isMultiWindowMode:Z

    const/4 v2, 0x0

    if-eqz v1, :cond_3

    move v3, v2

    goto :goto_3

    :cond_3
    iget-object v1, v13, Lcom/android/launcher3/QuickstepTransitionManager;->mLauncher:Lcom/android/launcher3/uioverrides/QuickstepLauncher;

    invoke-static {v1}, Lcom/android/systemui/shared/system/QuickStepContract;->getWindowCornerRadius(Landroid/content/Context;)F

    move-result v1

    move v3, v1

    :goto_3
    iget-object v14, v13, Lcom/android/launcher3/QuickstepTransitionManager;->mLauncher:Lcom/android/launcher3/uioverrides/QuickstepLauncher;

    new-instance v1, Landroid/util/Size;

    invoke-virtual {v5}, Landroid/graphics/Rect;->width()I

    move-result v8

    invoke-virtual {v5}, Landroid/graphics/Rect;->height()I

    move-result v10

    invoke-direct {v1, v8, v10}, Landroid/util/Size;-><init>(II)V

    move-object/from16 v15, p1

    move-object/from16 v16, v4

    move-object/from16 v17, v1

    move/from16 v18, v3

    move/from16 v19, v21

    invoke-static/range {v14 .. v20}, Lcom/android/quickstep/views/FloatingWidgetView;->getFloatingWidgetView(Lcom/android/launcher3/Launcher;Lcom/nothing/launcher/widget/a;Landroid/graphics/RectF;Landroid/util/Size;FZI)Lcom/android/quickstep/views/FloatingWidgetView;

    move-result-object v10

    iget-object v1, v13, Lcom/android/launcher3/QuickstepTransitionManager;->mLauncher:Lcom/android/launcher3/uioverrides/QuickstepLauncher;

    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-static {v1}, Lcom/android/systemui/shared/system/QuickStepContract;->supportsRoundedCornersOnWindows(Landroid/content/res/Resources;)Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-virtual {v10}, Lcom/android/quickstep/views/FloatingWidgetView;->getInitialCornerRadius()F

    move-result v1

    move v2, v1

    :cond_4
    new-instance v14, Lcom/android/quickstep/util/SurfaceTransactionApplier;

    invoke-direct {v14, v10}, Lcom/android/quickstep/util/SurfaceTransactionApplier;-><init>(Landroid/view/View;)V

    invoke-virtual {v0, v14}, Lcom/android/quickstep/RemoteAnimationTargets;->addReleaseCheck(Lcom/android/quickstep/RemoteAnimationTargets$ReleaseCheck;)V

    invoke-virtual {v0}, Lcom/android/quickstep/RemoteAnimationTargets;->getNavBarRemoteAnimationTarget()Landroid/view/RemoteAnimationTarget;

    move-result-object v11

    new-instance v15, Landroid/animation/AnimatorSet;

    invoke-direct {v15}, Landroid/animation/AnimatorSet;-><init>()V

    const/4 v8, 0x2

    new-array v1, v8, [F

    fill-array-data v1, :array_0

    invoke-static {v1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v1

    const-wide/16 v8, 0x1f4

    invoke-virtual {v1, v8, v9}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    sget-object v8, Lcom/android/launcher3/anim/Interpolators;->LINEAR:Landroid/view/animation/Interpolator;

    invoke-virtual {v1, v8}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    invoke-virtual {v1, v10}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    new-instance v8, Lcom/android/launcher3/QuickstepTransitionManager$8;

    invoke-direct {v8, v13, v0}, Lcom/android/launcher3/QuickstepTransitionManager$8;-><init>(Lcom/android/launcher3/QuickstepTransitionManager;Lcom/android/quickstep/RemoteAnimationTargets;)V

    invoke-virtual {v1, v8}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    new-instance v0, Lcom/android/launcher3/q3;

    invoke-direct {v0, v15}, Lcom/android/launcher3/q3;-><init>(Landroid/animation/AnimatorSet;)V

    invoke-virtual {v10, v0}, Lcom/android/quickstep/views/FloatingWidgetView;->setFastFinishRunnable(Ljava/lang/Runnable;)V

    new-instance v9, Lcom/android/launcher3/QuickstepTransitionManager$9;

    move-object v0, v9

    move-object v8, v1

    move-object/from16 v1, p0

    move-object v13, v8

    move-object/from16 p1, v15

    const/4 v15, 0x2

    move/from16 v8, v21

    move-object v15, v9

    move-object/from16 v9, p2

    move/from16 v17, v12

    move-object v12, v14

    invoke-direct/range {v0 .. v12}, Lcom/android/launcher3/QuickstepTransitionManager$9;-><init>(Lcom/android/launcher3/QuickstepTransitionManager;FFLandroid/graphics/RectF;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Matrix;Z[Landroid/view/RemoteAnimationTarget;Lcom/android/quickstep/views/FloatingWidgetView;Landroid/view/RemoteAnimationTarget;Lcom/android/quickstep/util/SurfaceTransactionApplier;)V

    invoke-virtual {v13, v15}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    if-nez v21, :cond_6

    if-nez p5, :cond_5

    goto :goto_4

    :cond_5
    const/4 v0, 0x2

    new-array v0, v0, [Landroid/animation/Animator;

    aput-object v13, v0, v17

    const/4 v1, 0x1

    invoke-direct/range {p0 .. p0}, Lcom/android/launcher3/QuickstepTransitionManager;->getBackgroundAnimator()Landroid/animation/ObjectAnimator;

    move-result-object v2

    aput-object v2, v0, v1

    move-object/from16 v1, p1

    invoke-virtual {v1, v0}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    goto :goto_5

    :cond_6
    :goto_4
    move-object/from16 v1, p1

    invoke-virtual {v1, v13}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    :goto_5
    return-object v1

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method private static getRotationChange([Landroid/view/RemoteAnimationTarget;)I
    .locals 6

    array-length v0, p0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v1, v0, :cond_1

    aget-object v3, p0, v1

    iget v4, v3, Landroid/view/RemoteAnimationTarget;->rotationChange:I

    invoke-static {v4}, Ljava/lang/Math;->abs(I)I

    move-result v4

    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v5

    if-le v4, v5, :cond_0

    iget v2, v3, Landroid/view/RemoteAnimationTarget;->rotationChange:I

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return v2
.end method

.method private getUnlockWindowAnimator([Landroid/view/RemoteAnimationTarget;[Landroid/view/RemoteAnimationTarget;)Landroid/animation/Animator;
    .locals 3

    new-instance p2, Lcom/android/quickstep/util/SurfaceTransactionApplier;

    iget-object v0, p0, Lcom/android/launcher3/QuickstepTransitionManager;->mDragLayer:Lcom/android/launcher3/dragndrop/DragLayer;

    invoke-direct {p2, v0}, Lcom/android/quickstep/util/SurfaceTransactionApplier;-><init>(Landroid/view/View;)V

    const/4 v0, 0x2

    new-array v0, v0, [F

    fill-array-data v0, :array_0

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    const-wide/16 v1, 0xfa

    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    iget-object v1, p0, Lcom/android/launcher3/QuickstepTransitionManager;->mDeviceProfile:Lcom/android/launcher3/DeviceProfile;

    iget-boolean v1, v1, Lcom/android/launcher3/DeviceProfile;->isMultiWindowMode:Z

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/android/launcher3/QuickstepTransitionManager;->mLauncher:Lcom/android/launcher3/uioverrides/QuickstepLauncher;

    invoke-static {v1}, Lcom/android/systemui/shared/system/QuickStepContract;->getWindowCornerRadius(Landroid/content/Context;)F

    move-result v1

    :goto_0
    new-instance v2, Lcom/android/launcher3/QuickstepTransitionManager$10;

    invoke-direct {v2, p0, p1, v1, p2}, Lcom/android/launcher3/QuickstepTransitionManager$10;-><init>(Lcom/android/launcher3/QuickstepTransitionManager;[Landroid/view/RemoteAnimationTarget;FLcom/android/quickstep/util/SurfaceTransactionApplier;)V

    invoke-virtual {v0, v2}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    return-object v0

    nop

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method private getWindowTargetBounds([Landroid/view/RemoteAnimationTarget;I)Landroid/graphics/Rect;
    .locals 5
    .param p1    # [Landroid/view/RemoteAnimationTarget;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    array-length v0, p1

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_0

    aget-object v3, p1, v2

    iget v4, v3, Landroid/view/RemoteAnimationTarget;->mode:I

    if-eqz v4, :cond_1

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    :cond_1
    new-instance p1, Landroid/graphics/Rect;

    if-nez v3, :cond_2

    iget-object p0, p0, Lcom/android/launcher3/QuickstepTransitionManager;->mDeviceProfile:Lcom/android/launcher3/DeviceProfile;

    iget p2, p0, Lcom/android/launcher3/DeviceProfile;->widthPx:I

    iget p0, p0, Lcom/android/launcher3/DeviceProfile;->heightPx:I

    invoke-direct {p1, v1, v1, p2, p0}, Landroid/graphics/Rect;-><init>(IIII)V

    return-object p1

    :cond_2
    iget-object v0, v3, Landroid/view/RemoteAnimationTarget;->screenSpaceBounds:Landroid/graphics/Rect;

    invoke-direct {p1, v0}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    iget-object v0, v3, Landroid/view/RemoteAnimationTarget;->localBounds:Landroid/graphics/Rect;

    if-eqz v0, :cond_3

    invoke-virtual {p1, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    goto :goto_1

    :cond_3
    iget-object v0, v3, Landroid/view/RemoteAnimationTarget;->position:Landroid/graphics/Point;

    iget v1, v0, Landroid/graphics/Point;->x:I

    iget v0, v0, Landroid/graphics/Point;->y:I

    invoke-virtual {p1, v1, v0}, Landroid/graphics/Rect;->offsetTo(II)V

    :goto_1
    if-eqz p2, :cond_5

    rem-int/lit8 v0, p2, 0x2

    const/4 v1, 0x1

    if-ne v0, v1, :cond_4

    iget-object v0, p0, Lcom/android/launcher3/QuickstepTransitionManager;->mDeviceProfile:Lcom/android/launcher3/DeviceProfile;

    iget v1, v0, Lcom/android/launcher3/DeviceProfile;->heightPx:I

    iget v0, v0, Lcom/android/launcher3/DeviceProfile;->widthPx:I

    goto :goto_2

    :cond_4
    iget-object v0, p0, Lcom/android/launcher3/QuickstepTransitionManager;->mDeviceProfile:Lcom/android/launcher3/DeviceProfile;

    iget v1, v0, Lcom/android/launcher3/DeviceProfile;->widthPx:I

    iget v0, v0, Lcom/android/launcher3/DeviceProfile;->heightPx:I

    :goto_2
    rsub-int/lit8 p2, p2, 0x4

    invoke-static {p1, v1, v0, p2}, Lcom/android/launcher3/Utilities;->rotateBounds(Landroid/graphics/Rect;III)V

    :cond_5
    iget-object p2, p0, Lcom/android/launcher3/QuickstepTransitionManager;->mDeviceProfile:Lcom/android/launcher3/DeviceProfile;

    iget-boolean p2, p2, Lcom/android/launcher3/DeviceProfile;->isTaskbarPresentInApps:Z

    if-eqz p2, :cond_6

    iget-boolean p2, v3, Landroid/view/RemoteAnimationTarget;->willShowImeOnTarget:Z

    if-nez p2, :cond_6

    iget-object p0, p0, Lcom/android/launcher3/QuickstepTransitionManager;->mLauncher:Lcom/android/launcher3/uioverrides/QuickstepLauncher;

    invoke-static {p0}, Lcom/android/launcher3/util/DisplayController;->isTransientTaskbar(Landroid/content/Context;)Z

    move-result p0

    if-nez p0, :cond_6

    iget p0, p1, Landroid/graphics/Rect;->bottom:I

    iget-object p2, v3, Landroid/view/RemoteAnimationTarget;->contentInsets:Landroid/graphics/Rect;

    iget p2, p2, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr p0, p2

    iput p0, p1, Landroid/graphics/Rect;->bottom:I

    :cond_6
    return-object p1
.end method

.method public static synthetic h(Ljava/util/List;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/android/launcher3/QuickstepTransitionManager;->lambda$getLauncherContentAnimator$4(Ljava/util/List;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic i(Lcom/android/launcher3/QuickstepTransitionManager;Lcom/android/launcher3/LauncherAnimationRunner$AnimationResult;FLandroid/view/View;F)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/launcher3/QuickstepTransitionManager;->lambda$getLauncherContentAnimator$3(Lcom/android/launcher3/LauncherAnimationRunner$AnimationResult;FLandroid/view/View;F)V

    return-void
.end method

.method public static synthetic j(Lcom/android/launcher3/QuickstepTransitionManager;Lcom/android/quickstep/util/RemoteAnimationProvider;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/launcher3/QuickstepTransitionManager;->lambda$setRemoteAnimationProvider$2(Lcom/android/quickstep/util/RemoteAnimationProvider;)V

    return-void
.end method

.method private static synthetic lambda$composeIconLaunchAnimator$0()Ljava/lang/Boolean;
    .locals 1

    sget-boolean v0, Lcom/android/quickstep/utils/TransitionSmoothHelper;->SMOOTH_FEATURE:Z

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/android/quickstep/utils/TransitionSmoothHelper;->inRecents()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method private synthetic lambda$composeViewContentAnimator$8(Lcom/android/quickstep/views/RecentsView;)V
    .locals 2

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/android/quickstep/views/RecentsView;->setFreezeViewVisibility(Z)V

    sget-object v0, Lcom/android/launcher3/LauncherAnimUtils;->SCALE_PROPERTY:Landroid/util/FloatProperty;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Landroid/util/FloatProperty;->set(Ljava/lang/Object;Ljava/lang/Float;)V

    iget-object p1, p0, Lcom/android/launcher3/QuickstepTransitionManager;->mLauncher:Lcom/android/launcher3/uioverrides/QuickstepLauncher;

    invoke-virtual {p1}, Lcom/android/launcher3/Launcher;->getStateManager()Lcom/android/launcher3/statemanager/StateManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/launcher3/statemanager/StateManager;->reapplyState()V

    iget-object p0, p0, Lcom/android/launcher3/QuickstepTransitionManager;->mLauncher:Lcom/android/launcher3/uioverrides/QuickstepLauncher;

    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->resumeExpensiveViewUpdates()V

    return-void
.end method

.method private static synthetic lambda$composeWidgetLaunchAnimator$1()Ljava/lang/Boolean;
    .locals 1

    sget-boolean v0, Lcom/android/quickstep/utils/TransitionSmoothHelper;->SMOOTH_FEATURE:Z

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/android/quickstep/utils/TransitionSmoothHelper;->inRecents()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method private synthetic lambda$getLauncherContentAnimator$3(Lcom/android/launcher3/LauncherAnimationRunner$AnimationResult;FLandroid/view/View;F)V
    .locals 3

    if-eqz p1, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Result is not null, isInterceptByBack = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/android/launcher3/LauncherAnimationRunner$AnimationResult;->isInterceptByBack()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const-string v0, "Empty result"

    :goto_0
    const-string v1, "QuickstepTransitionManager"

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Lcom/android/launcher3/LauncherAnimationRunner$AnimationResult;->isInterceptByBack()Z

    move-result p1

    if-nez p1, :cond_1

    goto :goto_1

    :cond_1
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "allApps skip setAlpha in end "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Landroid/view/View;->getAlpha()F

    move-result p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Ly2/e;->l(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    :cond_2
    :goto_1
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "restore apps views alpha to "

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v2, ", animationResult = "

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Ly2/e;->l(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p3, p2}, Landroid/view/View;->setAlpha(F)V

    :goto_2
    sget-object p1, Lcom/android/launcher3/LauncherAnimUtils;->SCALE_PROPERTY:Landroid/util/FloatProperty;

    invoke-static {p4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p2

    invoke-virtual {p1, p3, p2}, Landroid/util/FloatProperty;->set(Ljava/lang/Object;Ljava/lang/Float;)V

    const/4 p1, 0x0

    const/4 p2, 0x0

    invoke-virtual {p3, p1, p2}, Landroid/view/View;->setLayerType(ILandroid/graphics/Paint;)V

    iget-object p0, p0, Lcom/android/launcher3/QuickstepTransitionManager;->mLauncher:Lcom/android/launcher3/uioverrides/QuickstepLauncher;

    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->resumeExpensiveViewUpdates()V

    return-void
.end method

.method private static synthetic lambda$getLauncherContentAnimator$4(Ljava/util/List;Landroid/view/View;)V
    .locals 0

    check-cast p1, Lcom/android/launcher3/CellLayout;

    invoke-virtual {p1}, Lcom/android/launcher3/CellLayout;->getShortcutsAndWidgets()Lcom/android/launcher3/ShortcutAndWidgetContainer;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private static synthetic lambda$getLauncherContentAnimator$5([FLandroid/animation/AnimatorSet;Landroid/view/View;)V
    .locals 2

    const/4 v0, 0x2

    const/4 v1, 0x0

    invoke-virtual {p2, v0, v1}, Landroid/view/View;->setLayerType(ILandroid/graphics/Paint;)V

    sget-object v0, Lcom/android/launcher3/LauncherAnimUtils;->SCALE_PROPERTY:Landroid/util/FloatProperty;

    invoke-static {p2, v0, p0}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object p0

    const-wide/16 v0, 0x15e

    invoke-virtual {p0, v0, v1}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object p0

    sget-object p2, Lcom/android/launcher3/anim/Interpolators;->DEACCEL_1_5:Landroid/view/animation/Interpolator;

    invoke-virtual {p0, p2}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    invoke-virtual {p1, p0}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    return-void
.end method

.method private static synthetic lambda$getLauncherContentAnimator$6(Landroid/view/View;)V
    .locals 2

    sget-object v0, Lcom/android/launcher3/LauncherAnimUtils;->SCALE_PROPERTY:Landroid/util/FloatProperty;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-virtual {v0, p0, v1}, Landroid/util/FloatProperty;->set(Ljava/lang/Object;Ljava/lang/Float;)V

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/view/View;->setLayerType(ILandroid/graphics/Paint;)V

    return-void
.end method

.method private synthetic lambda$getLauncherContentAnimator$7(Ljava/util/List;Z)V
    .locals 1

    sget-object v0, Lcom/android/launcher3/n3;->g:Lcom/android/launcher3/n3;

    invoke-interface {p1, v0}, Ljava/util/List;->forEach(Ljava/util/function/Consumer;)V

    if-eqz p2, :cond_0

    iget-object p1, p0, Lcom/android/launcher3/QuickstepTransitionManager;->mLauncher:Lcom/android/launcher3/uioverrides/QuickstepLauncher;

    invoke-virtual {p1}, Lcom/android/launcher3/Launcher;->getScrimView()Lcom/android/launcher3/views/ScrimView;

    move-result-object p1

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Lcom/android/launcher3/views/ScrimView;->setBackgroundColor(I)V

    :cond_0
    iget-object p0, p0, Lcom/android/launcher3/QuickstepTransitionManager;->mLauncher:Lcom/android/launcher3/uioverrides/QuickstepLauncher;

    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->resumeExpensiveViewUpdates()V

    return-void
.end method

.method private static synthetic lambda$getOpeningWindowAnimatorsForWidget$9(Landroid/animation/AnimatorSet;)V
    .locals 1

    sget-boolean v0, Lcom/android/quickstep/utils/TransitionSmoothHelper;->SMOOTH_FEATURE:Z

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/android/quickstep/utils/TransitionSmoothHelper;->inRecents()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const-string p0, "QuickstepTransitionManager"

    const-string v0, "setFastFinishRunnable: skip end"

    invoke-static {p0, v0}, Ly2/e;->c(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_1
    :goto_0
    invoke-virtual {p0}, Landroid/animation/AnimatorSet;->end()V

    :goto_1
    return-void
.end method

.method private synthetic lambda$setRemoteAnimationProvider$2(Lcom/android/quickstep/util/RemoteAnimationProvider;)V
    .locals 1

    iget-object v0, p0, Lcom/android/launcher3/QuickstepTransitionManager;->mRemoteAnimationProvider:Lcom/android/quickstep/util/RemoteAnimationProvider;

    if-ne p1, v0, :cond_0

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/android/launcher3/QuickstepTransitionManager;->mRemoteAnimationProvider:Lcom/android/quickstep/util/RemoteAnimationProvider;

    :cond_0
    return-void
.end method

.method private launcherIsATargetWithMode([Landroid/view/RemoteAnimationTarget;I)Z
    .locals 5

    array-length v0, p1

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_1

    aget-object v3, p1, v2

    iget v4, v3, Landroid/view/RemoteAnimationTarget;->mode:I

    if-ne v4, p2, :cond_0

    iget-object v3, v3, Landroid/view/RemoteAnimationTarget;->taskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    if-eqz v3, :cond_0

    iget-object v3, v3, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    if-eqz v3, :cond_0

    iget-object v4, p0, Lcom/android/launcher3/QuickstepTransitionManager;->mLauncher:Lcom/android/launcher3/uioverrides/QuickstepLauncher;

    invoke-virtual {v4}, Landroid/app/Activity;->getComponentName()Landroid/content/ComponentName;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return v1
.end method

.method private shouldPlayFallbackClosingAnimation([Landroid/view/RemoteAnimationTarget;)Z
    .locals 6

    array-length p0, p1

    const/4 v0, 0x0

    move v1, v0

    move v2, v1

    :goto_0
    if-ge v1, p0, :cond_2

    aget-object v3, p1, v1

    iget v4, v3, Landroid/view/RemoteAnimationTarget;->mode:I

    const/4 v5, 0x1

    if-ne v4, v5, :cond_1

    add-int/lit8 v2, v2, 0x1

    if-gt v2, v5, :cond_0

    iget-object v3, v3, Landroid/view/RemoteAnimationTarget;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {v3}, Landroid/app/WindowConfiguration;->getWindowingMode()I

    move-result v3

    const/4 v4, 0x6

    if-ne v3, v4, :cond_1

    :cond_0
    return v5

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return v0
.end method

.method private supportsSSplashScreen()Z
    .locals 0

    invoke-virtual {p0}, Lcom/android/launcher3/QuickstepTransitionManager;->hasControlRemoteAppTransitionPermission()Z

    move-result p0

    if-eqz p0, :cond_0

    sget-boolean p0, Lcom/android/launcher3/Utilities;->ATLEAST_S:Z

    if-eqz p0, :cond_0

    sget-boolean p0, Lcom/android/launcher3/QuickstepTransitionManager;->ENABLE_SHELL_STARTING_SURFACE:Z

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private unregisterRemoteAnimations()V
    .locals 1

    sget-object v0, Lcom/android/launcher3/config/FeatureFlags;->SEPARATE_RECENTS_ACTIVITY:Lcom/android/launcher3/config/FeatureFlags$BooleanFlag;

    invoke-virtual {v0}, Lcom/android/launcher3/config/FeatureFlags$BooleanFlag;->get()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/android/launcher3/QuickstepTransitionManager;->hasControlRemoteAppTransitionPermission()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/launcher3/QuickstepTransitionManager;->mLauncher:Lcom/android/launcher3/uioverrides/QuickstepLauncher;

    invoke-virtual {v0}, Landroid/app/Activity;->unregisterRemoteAnimations()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/launcher3/QuickstepTransitionManager;->mWallpaperOpenRunner:Lcom/android/launcher3/LauncherAnimationRunner$RemoteAnimationFactory;

    iput-object v0, p0, Lcom/android/launcher3/QuickstepTransitionManager;->mAppLaunchRunner:Lcom/android/launcher3/LauncherAnimationRunner$RemoteAnimationFactory;

    iput-object v0, p0, Lcom/android/launcher3/QuickstepTransitionManager;->mKeyguardGoingAwayRunner:Lcom/android/launcher3/LauncherAnimationRunner$RemoteAnimationFactory;

    :cond_1
    return-void
.end method


# virtual methods
.method protected composeRecentsLaunchAnimator(Landroid/animation/AnimatorSet;Landroid/view/View;[Landroid/view/RemoteAnimationTarget;[Landroid/view/RemoteAnimationTarget;[Landroid/view/RemoteAnimationTarget;Z)V
    .locals 11
    .param p1    # Landroid/animation/AnimatorSet;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # [Landroid/view/RemoteAnimationTarget;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p4    # [Landroid/view/RemoteAnimationTarget;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p5    # [Landroid/view/RemoteAnimationTarget;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    move-object v0, p0

    iget-object v1, v0, Lcom/android/launcher3/QuickstepTransitionManager;->mLauncher:Lcom/android/launcher3/uioverrides/QuickstepLauncher;

    invoke-virtual {v1}, Lcom/android/launcher3/Launcher;->getStateManager()Lcom/android/launcher3/statemanager/StateManager;

    move-result-object v8

    iget-object v1, v0, Lcom/android/launcher3/QuickstepTransitionManager;->mLauncher:Lcom/android/launcher3/uioverrides/QuickstepLauncher;

    invoke-virtual {v1}, Lcom/android/launcher3/Launcher;->getOverviewPanel()Landroid/view/View;

    move-result-object v1

    move-object v9, v1

    check-cast v9, Lcom/android/quickstep/views/RecentsView;

    iget-object v0, v0, Lcom/android/launcher3/QuickstepTransitionManager;->mLauncher:Lcom/android/launcher3/uioverrides/QuickstepLauncher;

    invoke-virtual {v0}, Lcom/android/launcher3/uioverrides/QuickstepLauncher;->getDepthController()Lcom/android/launcher3/statehandlers/DepthController;

    move-result-object v10

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object/from16 v6, p5

    move/from16 v7, p6

    invoke-static/range {v2 .. v10}, Lcom/android/quickstep/TaskViewUtils;->composeRecentsLaunchAnimator(Landroid/animation/AnimatorSet;Landroid/view/View;[Landroid/view/RemoteAnimationTarget;[Landroid/view/RemoteAnimationTarget;[Landroid/view/RemoteAnimationTarget;ZLcom/android/launcher3/statemanager/StateManager;Lcom/android/quickstep/views/RecentsView;Lcom/android/launcher3/statehandlers/DepthController;)V

    return-void
.end method

.method protected composeViewContentAnimator(Landroid/animation/AnimatorSet;[F[F)Ljava/lang/Runnable;
    .locals 3
    .param p1    # Landroid/animation/AnimatorSet;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iget-object v0, p0, Lcom/android/launcher3/QuickstepTransitionManager;->mLauncher:Lcom/android/launcher3/uioverrides/QuickstepLauncher;

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getOverviewPanel()Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/quickstep/views/RecentsView;

    sget-object v1, Lcom/android/quickstep/views/RecentsView;->CONTENT_ALPHA:Landroid/util/FloatProperty;

    invoke-static {v0, v1, p2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object p2

    const-wide/16 v1, 0xd9

    invoke-virtual {p2, v1, v2}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    sget-object v1, Lcom/android/launcher3/anim/Interpolators;->LINEAR:Landroid/view/animation/Interpolator;

    invoke-virtual {p2, v1}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    invoke-virtual {p1, p2}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    const/4 p2, 0x1

    invoke-virtual {v0, p2}, Lcom/android/quickstep/views/RecentsView;->setFreezeViewVisibility(Z)V

    sget-object p2, Lcom/android/launcher3/LauncherAnimUtils;->SCALE_PROPERTY:Landroid/util/FloatProperty;

    invoke-static {v0, p2, p3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object p2

    sget-object p3, Lcom/android/launcher3/anim/Interpolators;->AGGRESSIVE_EASE:Landroid/view/animation/Interpolator;

    invoke-virtual {p2, p3}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    const-wide/16 v1, 0x15e

    invoke-virtual {p2, v1, v2}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    invoke-virtual {p1, p2}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    new-instance p1, Lcom/android/launcher3/t3;

    invoke-direct {p1, p0, v0}, Lcom/android/launcher3/t3;-><init>(Lcom/android/launcher3/QuickstepTransitionManager;Lcom/android/quickstep/views/RecentsView;)V

    return-object p1
.end method

.method public createWallpaperOpenAnimations([Landroid/view/RemoteAnimationTarget;[Landroid/view/RemoteAnimationTarget;ZLandroid/graphics/RectF;FZ)Landroid/util/Pair;
    .locals 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Landroid/view/RemoteAnimationTarget;",
            "[",
            "Landroid/view/RemoteAnimationTarget;",
            "Z",
            "Landroid/graphics/RectF;",
            "FZ)",
            "Landroid/util/Pair<",
            "Lcom/android/quickstep/util/RectFSpringAnim;",
            "Landroid/animation/AnimatorSet;",
            ">;"
        }
    .end annotation

    move-object/from16 v7, p0

    move-object/from16 v8, p1

    const/4 v9, 0x0

    iput-boolean v9, v7, Lcom/android/launcher3/QuickstepTransitionManager;->mTranslucentGoogleAssistant:Z

    iget-object v0, v7, Lcom/android/launcher3/QuickstepTransitionManager;->mRemoteAnimationProvider:Lcom/android/quickstep/util/RemoteAnimationProvider;

    move-object/from16 v1, p2

    if-eqz v0, :cond_0

    invoke-virtual {v0, v8, v1}, Lcom/android/quickstep/util/RemoteAnimationProvider;->createWindowAnimation([Landroid/view/RemoteAnimationTarget;[Landroid/view/RemoteAnimationTarget;)Landroid/animation/AnimatorSet;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_f

    new-instance v11, Landroid/animation/AnimatorSet;

    invoke-direct {v11}, Landroid/animation/AnimatorSet;-><init>()V

    iget-object v0, v7, Lcom/android/launcher3/QuickstepTransitionManager;->mLauncher:Lcom/android/launcher3/uioverrides/QuickstepLauncher;

    invoke-virtual {v0}, Lcom/android/launcher3/BaseActivity;->isForceInvisible()Z

    move-result v0

    const/4 v12, 0x1

    if-nez v0, :cond_2

    invoke-direct {v7, v8, v9}, Lcom/android/launcher3/QuickstepTransitionManager;->launcherIsATargetWithMode([Landroid/view/RemoteAnimationTarget;I)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_1

    :cond_1
    move v13, v9

    goto :goto_2

    :cond_2
    :goto_1
    move v13, v12

    :goto_2
    invoke-direct/range {p0 .. p1}, Lcom/android/launcher3/QuickstepTransitionManager;->findLauncherView([Landroid/view/RemoteAnimationTarget;)Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_3

    if-nez v13, :cond_5

    :cond_3
    iget-object v2, v7, Lcom/android/launcher3/QuickstepTransitionManager;->mLauncher:Lcom/android/launcher3/uioverrides/QuickstepLauncher;

    invoke-virtual {v2}, Lcom/android/launcher3/Launcher;->getWorkspace()Lcom/android/launcher3/Workspace;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/launcher3/Workspace;->isOverlayShown()Z

    move-result v2

    if-nez v2, :cond_5

    invoke-direct/range {p0 .. p1}, Lcom/android/launcher3/QuickstepTransitionManager;->shouldPlayFallbackClosingAnimation([Landroid/view/RemoteAnimationTarget;)Z

    move-result v2

    if-eqz v2, :cond_4

    goto :goto_3

    :cond_4
    move v2, v9

    goto :goto_4

    :cond_5
    :goto_3
    move v2, v12

    :goto_4
    if-eqz p3, :cond_6

    invoke-direct/range {p0 .. p2}, Lcom/android/launcher3/QuickstepTransitionManager;->getUnlockWindowAnimator([Landroid/view/RemoteAnimationTarget;[Landroid/view/RemoteAnimationTarget;)Landroid/animation/Animator;

    move-result-object v0

    :goto_5
    invoke-virtual {v11, v0}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    goto/16 :goto_8

    :cond_6
    sget-object v1, Lcom/android/launcher3/config/FeatureFlags;->ENABLE_BACK_SWIPE_HOME_ANIMATION:Lcom/android/launcher3/config/FeatureFlags$BooleanFlag;

    invoke-virtual {v1}, Lcom/android/launcher3/config/FeatureFlags$BooleanFlag;->get()Z

    move-result v1

    if-eqz v1, :cond_c

    if-nez v2, :cond_c

    iget-object v1, v7, Lcom/android/launcher3/QuickstepTransitionManager;->mLauncher:Lcom/android/launcher3/uioverrides/QuickstepLauncher;

    invoke-static {v1}, Lcom/android/launcher3/util/DynamicResource;->provider(Landroid/content/Context;)Li0/h;

    move-result-object v1

    const v2, 0x7f070586

    invoke-interface {v1, v2}, Li0/h;->getDimension(I)F

    move-result v1

    new-instance v14, Landroid/graphics/PointF;

    const/4 v2, 0x0

    neg-float v1, v1

    invoke-direct {v14, v2, v1}, Landroid/graphics/PointF;-><init>(FF)V

    iget-object v1, v7, Lcom/android/launcher3/QuickstepTransitionManager;->mLauncher:Lcom/android/launcher3/uioverrides/QuickstepLauncher;

    sget-object v15, Lcom/android/launcher3/LauncherState;->OVERVIEW:Lcom/android/launcher3/LauncherState;

    invoke-virtual {v1, v15}, Lcom/android/launcher3/statemanager/StatefulActivity;->isInState(Lcom/android/launcher3/statemanager/BaseState;)Z

    move-result v1

    if-nez v1, :cond_8

    iget-object v1, v7, Lcom/android/launcher3/QuickstepTransitionManager;->mLauncher:Lcom/android/launcher3/uioverrides/QuickstepLauncher;

    sget-object v2, Lcom/android/launcher3/LauncherState;->OVERVIEW_SPLIT_SELECT:Lcom/android/launcher3/LauncherState;

    invoke-virtual {v1, v2}, Lcom/android/launcher3/statemanager/StatefulActivity;->isInState(Lcom/android/launcher3/statemanager/BaseState;)Z

    move-result v1

    if-eqz v1, :cond_7

    goto :goto_6

    :cond_7
    move-object v6, v0

    goto :goto_7

    :cond_8
    :goto_6
    const/4 v6, 0x0

    :goto_7
    move-object/from16 v0, p0

    move-object v1, v11

    move-object/from16 v2, p1

    move-object v3, v6

    move-object v4, v14

    move-object/from16 v5, p4

    move-object v10, v6

    move/from16 v6, p5

    invoke-direct/range {v0 .. v6}, Lcom/android/launcher3/QuickstepTransitionManager;->getClosingWindowAnimators(Landroid/animation/AnimatorSet;[Landroid/view/RemoteAnimationTarget;Landroid/view/View;Landroid/graphics/PointF;Landroid/graphics/RectF;F)Lcom/android/quickstep/util/RectFSpringAnim;

    move-result-object v0

    new-instance v1, Lcom/android/launcher3/QuickstepTransitionManager$16;

    invoke-direct {v1, v7}, Lcom/android/launcher3/QuickstepTransitionManager$16;-><init>(Lcom/android/launcher3/QuickstepTransitionManager;)V

    invoke-virtual {v11, v1}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    new-instance v1, Lr2/a;

    invoke-direct {v1}, Lr2/a;-><init>()V

    invoke-virtual {v11, v1}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    iget-object v1, v7, Lcom/android/launcher3/QuickstepTransitionManager;->mLauncher:Lcom/android/launcher3/uioverrides/QuickstepLauncher;

    sget-object v2, Lcom/android/launcher3/LauncherState;->ALL_APPS:Lcom/android/launcher3/LauncherState;

    invoke-virtual {v1, v2}, Lcom/android/launcher3/statemanager/StatefulActivity;->isInState(Lcom/android/launcher3/statemanager/BaseState;)Z

    move-result v1

    if-eqz v1, :cond_9

    move v1, v12

    goto/16 :goto_9

    :cond_9
    if-nez p6, :cond_b

    iget-object v1, v7, Lcom/android/launcher3/QuickstepTransitionManager;->mLauncher:Lcom/android/launcher3/uioverrides/QuickstepLauncher;

    invoke-virtual {v1, v15}, Lcom/android/launcher3/statemanager/StatefulActivity;->isInState(Lcom/android/launcher3/statemanager/BaseState;)Z

    move-result v1

    if-nez v1, :cond_a

    iget-object v1, v7, Lcom/android/launcher3/QuickstepTransitionManager;->mLauncher:Lcom/android/launcher3/uioverrides/QuickstepLauncher;

    sget-object v2, Lcom/android/launcher3/LauncherState;->OVERVIEW_SPLIT_SELECT:Lcom/android/launcher3/LauncherState;

    invoke-virtual {v1, v2}, Lcom/android/launcher3/statemanager/StatefulActivity;->isInState(Lcom/android/launcher3/statemanager/BaseState;)Z

    move-result v1

    if-nez v1, :cond_a

    iget-object v1, v7, Lcom/android/launcher3/QuickstepTransitionManager;->mLauncher:Lcom/android/launcher3/uioverrides/QuickstepLauncher;

    sget-object v2, Lcom/android/launcher3/LauncherState;->FOLDER_STATE:Lcom/android/launcher3/LauncherState;

    invoke-virtual {v1, v2}, Lcom/android/launcher3/statemanager/StatefulActivity;->isInState(Lcom/android/launcher3/statemanager/BaseState;)Z

    move-result v1

    if-nez v1, :cond_a

    iget-boolean v1, v7, Lcom/android/launcher3/QuickstepTransitionManager;->mTranslucentGoogleAssistant:Z

    if-nez v1, :cond_a

    if-eqz v10, :cond_a

    new-instance v1, Lcom/android/quickstep/util/StaggeredWorkspaceAnim;

    iget-object v2, v7, Lcom/android/launcher3/QuickstepTransitionManager;->mLauncher:Lcom/android/launcher3/uioverrides/QuickstepLauncher;

    iget v3, v14, Landroid/graphics/PointF;->y:F

    invoke-direct {v1, v2, v3, v12, v10}, Lcom/android/quickstep/util/StaggeredWorkspaceAnim;-><init>(Lcom/android/launcher3/Launcher;FZLandroid/view/View;)V

    invoke-virtual {v1}, Lcom/android/quickstep/util/StaggeredWorkspaceAnim;->getAnimators()Landroid/animation/AnimatorSet;

    move-result-object v1

    invoke-virtual {v11, v1}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    invoke-direct/range {p0 .. p1}, Lcom/android/launcher3/QuickstepTransitionManager;->areAllTargetsTranslucent([Landroid/view/RemoteAnimationTarget;)Z

    move-result v1

    if-nez v1, :cond_a

    iget-object v1, v7, Lcom/android/launcher3/QuickstepTransitionManager;->mLauncher:Lcom/android/launcher3/uioverrides/QuickstepLauncher;

    invoke-virtual {v1}, Lcom/android/launcher3/uioverrides/QuickstepLauncher;->getDepthController()Lcom/android/launcher3/statehandlers/DepthController;

    move-result-object v1

    iget-object v1, v1, Lcom/android/quickstep/util/BaseDepthController;->stateDepth:Lcom/android/launcher3/util/MultiPropertyFactory$MultiProperty;

    sget-object v2, Lcom/android/launcher3/util/MultiPropertyFactory;->MULTI_PROPERTY_VALUE:Landroid/util/FloatProperty;

    const/4 v3, 0x2

    new-array v3, v3, [F

    sget-object v4, Lcom/android/launcher3/LauncherState;->BACKGROUND_APP:Lcom/android/launcher3/LauncherState;

    iget-object v5, v7, Lcom/android/launcher3/QuickstepTransitionManager;->mLauncher:Lcom/android/launcher3/uioverrides/QuickstepLauncher;

    invoke-virtual {v4, v5}, Lcom/android/launcher3/LauncherState;->getDepth(Landroid/content/Context;)F

    move-result v4

    aput v4, v3, v9

    sget-object v4, Lcom/android/launcher3/LauncherState;->NORMAL:Lcom/android/launcher3/LauncherState;

    iget-object v5, v7, Lcom/android/launcher3/QuickstepTransitionManager;->mLauncher:Lcom/android/launcher3/uioverrides/QuickstepLauncher;

    invoke-virtual {v4, v5}, Lcom/android/launcher3/LauncherState;->getDepth(Landroid/content/Context;)F

    move-result v4

    aput v4, v3, v12

    invoke-static {v1, v2, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    invoke-virtual {v11, v1}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    :cond_a
    move v1, v9

    move v12, v1

    goto :goto_9

    :cond_b
    move v1, v9

    goto :goto_9

    :cond_c
    invoke-direct/range {p0 .. p1}, Lcom/android/launcher3/QuickstepTransitionManager;->getFallbackClosingWindowAnimators([Landroid/view/RemoteAnimationTarget;)Landroid/animation/Animator;

    move-result-object v0

    goto/16 :goto_5

    :goto_8
    move v1, v9

    const/4 v0, 0x0

    :goto_9
    if-eqz v13, :cond_e

    const/16 v2, 0x9

    invoke-direct {v7, v11, v2}, Lcom/android/launcher3/QuickstepTransitionManager;->addCujInstrumentation(Landroid/animation/Animator;I)V

    iget-object v2, v7, Lcom/android/launcher3/QuickstepTransitionManager;->mLauncher:Lcom/android/launcher3/uioverrides/QuickstepLauncher;

    invoke-virtual {v2}, Lcom/android/launcher3/Launcher;->getStateManager()Lcom/android/launcher3/statemanager/StateManager;

    move-result-object v2

    new-array v3, v9, [Landroid/animation/Animator;

    invoke-virtual {v2, v11, v3}, Lcom/android/launcher3/statemanager/StateManager;->setCurrentAnimation(Landroid/animation/AnimatorSet;[Landroid/animation/Animator;)V

    iget-object v2, v7, Lcom/android/launcher3/QuickstepTransitionManager;->mLauncher:Lcom/android/launcher3/uioverrides/QuickstepLauncher;

    sget-object v3, Lcom/android/launcher3/LauncherState;->ALL_APPS:Lcom/android/launcher3/LauncherState;

    invoke-virtual {v2, v3}, Lcom/android/launcher3/statemanager/StatefulActivity;->isInState(Lcom/android/launcher3/statemanager/BaseState;)Z

    move-result v2

    if-eqz v2, :cond_d

    const/16 v2, 0x64

    const/4 v3, 0x0

    invoke-direct {v7, v9, v2, v1, v3}, Lcom/android/launcher3/QuickstepTransitionManager;->getLauncherContentAnimator(ZIZLcom/android/launcher3/LauncherAnimationRunner$AnimationResult;)Landroid/util/Pair;

    move-result-object v1

    iget-object v2, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v2, Landroid/animation/Animator;

    invoke-virtual {v11, v2}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    new-instance v2, Lcom/android/launcher3/QuickstepTransitionManager$17;

    invoke-direct {v2, v7, v1}, Lcom/android/launcher3/QuickstepTransitionManager$17;-><init>(Lcom/android/launcher3/QuickstepTransitionManager;Landroid/util/Pair;)V

    invoke-virtual {v11, v2}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    goto :goto_a

    :cond_d
    if-eqz v12, :cond_e

    new-instance v1, Lcom/android/quickstep/util/WorkspaceRevealAnim;

    iget-object v2, v7, Lcom/android/launcher3/QuickstepTransitionManager;->mLauncher:Lcom/android/launcher3/uioverrides/QuickstepLauncher;

    invoke-direct {v1, v2, v9}, Lcom/android/quickstep/util/WorkspaceRevealAnim;-><init>(Lcom/android/launcher3/Launcher;Z)V

    invoke-virtual {v1}, Lcom/android/quickstep/util/WorkspaceRevealAnim;->getAnimators()Landroid/animation/AnimatorSet;

    move-result-object v1

    invoke-virtual {v11, v1}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    :cond_e
    :goto_a
    move-object v10, v0

    move-object v0, v11

    goto :goto_b

    :cond_f
    const/4 v3, 0x0

    move-object v10, v3

    :goto_b
    new-instance v1, Landroid/util/Pair;

    invoke-direct {v1, v10, v0}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v1
.end method

.method createWallpaperOpenRunner(Z)Lcom/android/launcher3/LauncherAnimationRunner$RemoteAnimationFactory;
    .locals 2

    new-instance v0, Lcom/android/launcher3/QuickstepTransitionManager$WallpaperOpenLauncherAnimationRunner;

    iget-object v1, p0, Lcom/android/launcher3/QuickstepTransitionManager;->mHandler:Landroid/os/Handler;

    invoke-direct {v0, p0, v1, p1}, Lcom/android/launcher3/QuickstepTransitionManager$WallpaperOpenLauncherAnimationRunner;-><init>(Lcom/android/launcher3/QuickstepTransitionManager;Landroid/os/Handler;Z)V

    return-object v0
.end method

.method public getActivityLaunchOptions(Landroid/view/View;)Lcom/android/launcher3/util/ActivityOptionsWrapper;
    .locals 8

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/android/launcher3/QuickstepTransitionManager;->isLaunchingFromRecents(Landroid/view/View;[Landroid/view/RemoteAnimationTarget;)Z

    move-result v0

    new-instance v1, Lcom/android/launcher3/util/RunnableList;

    invoke-direct {v1}, Lcom/android/launcher3/util/RunnableList;-><init>()V

    new-instance v2, Lcom/android/quickstep/util/TaskRestartedDuringLaunchListener;

    invoke-direct {v2}, Lcom/android/quickstep/util/TaskRestartedDuringLaunchListener;-><init>()V

    new-instance v3, Lcom/android/launcher3/j;

    invoke-direct {v3, v1}, Lcom/android/launcher3/j;-><init>(Lcom/android/launcher3/util/RunnableList;)V

    invoke-virtual {v2, v3}, Lcom/android/quickstep/util/TaskRestartedDuringLaunchListener;->register(Ljava/lang/Runnable;)V

    new-instance v3, Lcom/android/launcher3/x3;

    invoke-direct {v3, v2}, Lcom/android/launcher3/x3;-><init>(Lcom/android/quickstep/util/TaskRestartedDuringLaunchListener;)V

    invoke-virtual {v1, v3}, Lcom/android/launcher3/util/RunnableList;->add(Ljava/lang/Runnable;)V

    new-instance v2, Lcom/android/launcher3/QuickstepTransitionManager$AppLaunchAnimationRunner;

    invoke-direct {v2, p0, p1, v1}, Lcom/android/launcher3/QuickstepTransitionManager$AppLaunchAnimationRunner;-><init>(Lcom/android/launcher3/QuickstepTransitionManager;Landroid/view/View;Lcom/android/launcher3/util/RunnableList;)V

    iput-object v2, p0, Lcom/android/launcher3/QuickstepTransitionManager;->mAppLaunchRunner:Lcom/android/launcher3/LauncherAnimationRunner$RemoteAnimationFactory;

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/launcher3/model/data/ItemInfo;

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Lcom/android/launcher3/model/data/ItemInfo;->shouldUseBackgroundAnimation()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/launcher3/QuickstepTransitionManager;->mStartingWindowListener:Lcom/android/launcher3/QuickstepTransitionManager$StartingWindowListener;

    invoke-static {p1, v2, v1}, Lcom/android/launcher3/QuickstepTransitionManager$ContainerAnimationRunner;->access$100(Landroid/view/View;Lcom/android/launcher3/QuickstepTransitionManager$StartingWindowListener;Lcom/android/launcher3/util/RunnableList;)Lcom/android/launcher3/QuickstepTransitionManager$ContainerAnimationRunner;

    move-result-object p1

    if-eqz p1, :cond_0

    iput-object p1, p0, Lcom/android/launcher3/QuickstepTransitionManager;->mAppLaunchRunner:Lcom/android/launcher3/LauncherAnimationRunner$RemoteAnimationFactory;

    :cond_0
    new-instance p1, Lcom/android/launcher3/LauncherAnimationRunner;

    iget-object v2, p0, Lcom/android/launcher3/QuickstepTransitionManager;->mHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/android/launcher3/QuickstepTransitionManager;->mAppLaunchRunner:Lcom/android/launcher3/LauncherAnimationRunner$RemoteAnimationFactory;

    const/4 v4, 0x1

    invoke-direct {p1, v2, v3, v4}, Lcom/android/launcher3/LauncherAnimationRunner;-><init>(Landroid/os/Handler;Lcom/android/launcher3/LauncherAnimationRunner$RemoteAnimationFactory;Z)V

    if-eqz v0, :cond_1

    const-wide/16 v2, 0x150

    goto :goto_0

    :cond_1
    const-wide/16 v2, 0x1f4

    :goto_0
    move-wide v4, v2

    const-wide/16 v2, 0x78

    sub-long v2, v4, v2

    const-wide/16 v6, 0x60

    sub-long v6, v2, v6

    new-instance v0, Landroid/view/RemoteAnimationAdapter;

    move-object v2, v0

    move-object v3, p1

    invoke-direct/range {v2 .. v7}, Landroid/view/RemoteAnimationAdapter;-><init>(Landroid/view/IRemoteAnimationRunner;JJ)V

    new-instance v2, Landroid/window/RemoteTransition;

    invoke-virtual {p1}, Lcom/android/systemui/shared/system/RemoteAnimationRunnerCompat;->toRemoteTransition()Landroid/window/IRemoteTransition;

    move-result-object p1

    iget-object p0, p0, Lcom/android/launcher3/QuickstepTransitionManager;->mLauncher:Lcom/android/launcher3/uioverrides/QuickstepLauncher;

    invoke-virtual {p0}, Landroid/app/Activity;->getIApplicationThread()Landroid/app/IApplicationThread;

    move-result-object p0

    const-string v3, "QuickstepLaunch"

    invoke-direct {v2, p1, p0, v3}, Landroid/window/RemoteTransition;-><init>(Landroid/window/IRemoteTransition;Landroid/app/IApplicationThread;Ljava/lang/String;)V

    invoke-static {v0, v2}, Landroid/app/ActivityOptions;->makeRemoteAnimation(Landroid/view/RemoteAnimationAdapter;Landroid/window/RemoteTransition;)Landroid/app/ActivityOptions;

    move-result-object p0

    new-instance p1, Lcom/android/launcher3/util/ActivityOptionsWrapper;

    invoke-direct {p1, p0, v1}, Lcom/android/launcher3/util/ActivityOptionsWrapper;-><init>(Landroid/app/ActivityOptions;Lcom/android/launcher3/util/RunnableList;)V

    return-object p1
.end method

.method public getBackgroundColor()I
    .locals 0

    iget-object p0, p0, Lcom/android/launcher3/QuickstepTransitionManager;->mLauncher:Lcom/android/launcher3/uioverrides/QuickstepLauncher;

    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->getScrimView()Lcom/android/launcher3/views/ScrimView;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/launcher3/views/ScrimView;->getBackgroundColor()I

    move-result p0

    return p0
.end method

.method public hasControlRemoteAppTransitionPermission()Z
    .locals 1

    iget-object p0, p0, Lcom/android/launcher3/QuickstepTransitionManager;->mLauncher:Lcom/android/launcher3/uioverrides/QuickstepLauncher;

    const-string v0, "android.permission.CONTROL_REMOTE_APP_TRANSITION_ANIMATIONS"

    invoke-virtual {p0, v0}, Landroid/app/Activity;->checkSelfPermission(Ljava/lang/String;)I

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method protected isLaunchingFromRecents(Landroid/view/View;[Landroid/view/RemoteAnimationTarget;)Z
    .locals 1
    .param p1    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # [Landroid/view/RemoteAnimationTarget;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    iget-object v0, p0, Lcom/android/launcher3/QuickstepTransitionManager;->mLauncher:Lcom/android/launcher3/uioverrides/QuickstepLauncher;

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getStateManager()Lcom/android/launcher3/statemanager/StateManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/statemanager/StateManager;->getState()Lcom/android/launcher3/statemanager/BaseState;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/LauncherState;

    iget-boolean v0, v0, Lcom/android/launcher3/LauncherState;->overviewUi:Z

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/android/launcher3/QuickstepTransitionManager;->mLauncher:Lcom/android/launcher3/uioverrides/QuickstepLauncher;

    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->getOverviewPanel()Landroid/view/View;

    move-result-object p0

    check-cast p0, Lcom/android/quickstep/views/RecentsView;

    invoke-static {p0, p1, p2}, Lcom/android/quickstep/TaskViewUtils;->findTaskViewToLaunch(Lcom/android/quickstep/views/RecentsView;Landroid/view/View;[Landroid/view/RemoteAnimationTarget;)Lcom/android/quickstep/views/TaskView;

    move-result-object p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public onActivityDestroyed()V
    .locals 2

    invoke-direct {p0}, Lcom/android/launcher3/QuickstepTransitionManager;->unregisterRemoteAnimations()V

    invoke-virtual {p0}, Lcom/android/launcher3/QuickstepTransitionManager;->unregisterRemoteTransitions()V

    iget-object v0, p0, Lcom/android/launcher3/QuickstepTransitionManager;->mStartingWindowListener:Lcom/android/launcher3/QuickstepTransitionManager$StartingWindowListener;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/launcher3/QuickstepTransitionManager$StartingWindowListener;->setTransitionManager(Lcom/android/launcher3/QuickstepTransitionManager;)V

    sget-object v0, Lcom/android/quickstep/SystemUiProxy;->INSTANCE:Lcom/android/launcher3/util/MainThreadInitializedObject;

    iget-object p0, p0, Lcom/android/launcher3/QuickstepTransitionManager;->mLauncher:Lcom/android/launcher3/uioverrides/QuickstepLauncher;

    invoke-virtual {v0, p0}, Lcom/android/launcher3/util/MainThreadInitializedObject;->get(Landroid/content/Context;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/quickstep/SystemUiProxy;

    invoke-virtual {p0, v1}, Lcom/android/quickstep/SystemUiProxy;->setStartingWindowListener(Ld1/b;)V

    return-void
.end method

.method public onDeviceProfileChanged(Lcom/android/launcher3/DeviceProfile;)V
    .locals 0

    iput-object p1, p0, Lcom/android/launcher3/QuickstepTransitionManager;->mDeviceProfile:Lcom/android/launcher3/DeviceProfile;

    return-void
.end method

.method public registerRemoteAnimations()V
    .locals 1

    sget-object v0, Lcom/android/launcher3/config/FeatureFlags;->SEPARATE_RECENTS_ACTIVITY:Lcom/android/launcher3/config/FeatureFlags$BooleanFlag;

    invoke-virtual {v0}, Lcom/android/launcher3/config/FeatureFlags$BooleanFlag;->get()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/android/launcher3/QuickstepTransitionManager;->hasControlRemoteAppTransitionPermission()Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Landroid/view/RemoteAnimationDefinition;

    invoke-direct {v0}, Landroid/view/RemoteAnimationDefinition;-><init>()V

    invoke-direct {p0, v0}, Lcom/android/launcher3/QuickstepTransitionManager;->addRemoteAnimations(Landroid/view/RemoteAnimationDefinition;)V

    iget-object p0, p0, Lcom/android/launcher3/QuickstepTransitionManager;->mLauncher:Lcom/android/launcher3/uioverrides/QuickstepLauncher;

    invoke-virtual {p0, v0}, Landroid/app/Activity;->registerRemoteAnimations(Landroid/view/RemoteAnimationDefinition;)V

    :cond_1
    return-void
.end method

.method public registerRemoteTransitions()V
    .locals 9

    sget-boolean v0, Lcom/android/quickstep/TaskAnimationManager;->ENABLE_SHELL_TRANSITIONS:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/quickstep/SystemUiProxy;->INSTANCE:Lcom/android/launcher3/util/MainThreadInitializedObject;

    iget-object v1, p0, Lcom/android/launcher3/QuickstepTransitionManager;->mLauncher:Lcom/android/launcher3/uioverrides/QuickstepLauncher;

    invoke-virtual {v0, v1}, Lcom/android/launcher3/util/MainThreadInitializedObject;->get(Landroid/content/Context;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/quickstep/SystemUiProxy;

    invoke-virtual {v0}, Lcom/android/quickstep/SystemUiProxy;->shareTransactionQueue()V

    :cond_0
    sget-object v0, Lcom/android/launcher3/config/FeatureFlags;->SEPARATE_RECENTS_ACTIVITY:Lcom/android/launcher3/config/FeatureFlags$BooleanFlag;

    invoke-virtual {v0}, Lcom/android/launcher3/config/FeatureFlags$BooleanFlag;->get()Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    :cond_1
    invoke-virtual {p0}, Lcom/android/launcher3/QuickstepTransitionManager;->hasControlRemoteAppTransitionPermission()Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/launcher3/QuickstepTransitionManager;->createWallpaperOpenRunner(Z)Lcom/android/launcher3/LauncherAnimationRunner$RemoteAnimationFactory;

    move-result-object v1

    iput-object v1, p0, Lcom/android/launcher3/QuickstepTransitionManager;->mWallpaperOpenTransitionRunner:Lcom/android/launcher3/LauncherAnimationRunner$RemoteAnimationFactory;

    new-instance v1, Landroid/window/RemoteTransition;

    new-instance v2, Lcom/android/launcher3/LauncherAnimationRunner;

    iget-object v3, p0, Lcom/android/launcher3/QuickstepTransitionManager;->mHandler:Landroid/os/Handler;

    iget-object v4, p0, Lcom/android/launcher3/QuickstepTransitionManager;->mWallpaperOpenTransitionRunner:Lcom/android/launcher3/LauncherAnimationRunner$RemoteAnimationFactory;

    invoke-direct {v2, v3, v4, v0}, Lcom/android/launcher3/LauncherAnimationRunner;-><init>(Landroid/os/Handler;Lcom/android/launcher3/LauncherAnimationRunner$RemoteAnimationFactory;Z)V

    invoke-virtual {v2}, Lcom/android/systemui/shared/system/RemoteAnimationRunnerCompat;->toRemoteTransition()Landroid/window/IRemoteTransition;

    move-result-object v2

    iget-object v3, p0, Lcom/android/launcher3/QuickstepTransitionManager;->mLauncher:Lcom/android/launcher3/uioverrides/QuickstepLauncher;

    invoke-virtual {v3}, Landroid/app/Activity;->getIApplicationThread()Landroid/app/IApplicationThread;

    move-result-object v3

    const-string v4, "QuickstepLaunchHome_OpenTransluent"

    invoke-direct {v1, v2, v3, v4}, Landroid/window/RemoteTransition;-><init>(Landroid/window/IRemoteTransition;Landroid/app/IApplicationThread;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/android/launcher3/QuickstepTransitionManager;->mLauncherOpenTranslucentTransition:Landroid/window/RemoteTransition;

    new-instance v1, Landroid/window/TransitionFilter;

    invoke-direct {v1}, Landroid/window/TransitionFilter;-><init>()V

    const/16 v2, 0x100

    iput v2, v1, Landroid/window/TransitionFilter;->mNotFlags:I

    const/4 v3, 0x1

    new-array v4, v3, [Landroid/window/TransitionFilter$Requirement;

    new-instance v5, Landroid/window/TransitionFilter$Requirement;

    invoke-direct {v5}, Landroid/window/TransitionFilter$Requirement;-><init>()V

    aput-object v5, v4, v0

    iput-object v4, v1, Landroid/window/TransitionFilter;->mRequirements:[Landroid/window/TransitionFilter$Requirement;

    aget-object v5, v4, v0

    iput v3, v5, Landroid/window/TransitionFilter$Requirement;->mActivityType:I

    aget-object v5, v4, v0

    const/4 v6, 0x4

    iput v6, v5, Landroid/window/TransitionFilter$Requirement;->mFlags:I

    aget-object v4, v4, v0

    const/4 v5, 0x2

    new-array v6, v5, [I

    fill-array-data v6, :array_0

    iput-object v6, v4, Landroid/window/TransitionFilter$Requirement;->mModes:[I

    sget-object v4, Lcom/android/quickstep/SystemUiProxy;->INSTANCE:Lcom/android/launcher3/util/MainThreadInitializedObject;

    iget-object v6, p0, Lcom/android/launcher3/QuickstepTransitionManager;->mLauncher:Lcom/android/launcher3/uioverrides/QuickstepLauncher;

    invoke-virtual {v4, v6}, Lcom/android/launcher3/util/MainThreadInitializedObject;->get(Landroid/content/Context;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/quickstep/SystemUiProxy;

    iget-object v7, p0, Lcom/android/launcher3/QuickstepTransitionManager;->mLauncherOpenTranslucentTransition:Landroid/window/RemoteTransition;

    invoke-virtual {v6, v7, v1}, Lcom/android/quickstep/SystemUiProxy;->registerRemoteTransition(Landroid/window/RemoteTransition;Landroid/window/TransitionFilter;)V

    new-instance v1, Landroid/window/RemoteTransition;

    new-instance v6, Lcom/android/launcher3/LauncherAnimationRunner;

    iget-object v7, p0, Lcom/android/launcher3/QuickstepTransitionManager;->mHandler:Landroid/os/Handler;

    iget-object v8, p0, Lcom/android/launcher3/QuickstepTransitionManager;->mWallpaperOpenTransitionRunner:Lcom/android/launcher3/LauncherAnimationRunner$RemoteAnimationFactory;

    invoke-direct {v6, v7, v8, v0}, Lcom/android/launcher3/LauncherAnimationRunner;-><init>(Landroid/os/Handler;Lcom/android/launcher3/LauncherAnimationRunner$RemoteAnimationFactory;Z)V

    invoke-virtual {v6}, Lcom/android/systemui/shared/system/RemoteAnimationRunnerCompat;->toRemoteTransition()Landroid/window/IRemoteTransition;

    move-result-object v6

    iget-object v7, p0, Lcom/android/launcher3/QuickstepTransitionManager;->mLauncher:Lcom/android/launcher3/uioverrides/QuickstepLauncher;

    invoke-virtual {v7}, Landroid/app/Activity;->getIApplicationThread()Landroid/app/IApplicationThread;

    move-result-object v7

    const-string v8, "QuickstepLaunchHome"

    invoke-direct {v1, v6, v7, v8}, Landroid/window/RemoteTransition;-><init>(Landroid/window/IRemoteTransition;Landroid/app/IApplicationThread;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/android/launcher3/QuickstepTransitionManager;->mLauncherOpenTransition:Landroid/window/RemoteTransition;

    new-instance v1, Landroid/window/TransitionFilter;

    invoke-direct {v1}, Landroid/window/TransitionFilter;-><init>()V

    iput v2, v1, Landroid/window/TransitionFilter;->mNotFlags:I

    new-array v2, v5, [Landroid/window/TransitionFilter$Requirement;

    new-instance v6, Landroid/window/TransitionFilter$Requirement;

    invoke-direct {v6}, Landroid/window/TransitionFilter$Requirement;-><init>()V

    aput-object v6, v2, v0

    new-instance v6, Landroid/window/TransitionFilter$Requirement;

    invoke-direct {v6}, Landroid/window/TransitionFilter$Requirement;-><init>()V

    aput-object v6, v2, v3

    iput-object v2, v1, Landroid/window/TransitionFilter;->mRequirements:[Landroid/window/TransitionFilter$Requirement;

    aget-object v6, v2, v0

    iput v5, v6, Landroid/window/TransitionFilter$Requirement;->mActivityType:I

    aget-object v2, v2, v0

    iget-object v6, p0, Lcom/android/launcher3/QuickstepTransitionManager;->mLauncher:Lcom/android/launcher3/uioverrides/QuickstepLauncher;

    invoke-virtual {v6}, Landroid/app/Activity;->getComponentName()Landroid/content/ComponentName;

    move-result-object v6

    iput-object v6, v2, Landroid/window/TransitionFilter$Requirement;->mTopActivity:Landroid/content/ComponentName;

    iget-object v2, v1, Landroid/window/TransitionFilter;->mRequirements:[Landroid/window/TransitionFilter$Requirement;

    aget-object v6, v2, v0

    new-array v7, v5, [I

    fill-array-data v7, :array_1

    iput-object v7, v6, Landroid/window/TransitionFilter$Requirement;->mModes:[I

    aget-object v0, v2, v0

    iput v3, v0, Landroid/window/TransitionFilter$Requirement;->mOrder:I

    aget-object v0, v2, v3

    iput v3, v0, Landroid/window/TransitionFilter$Requirement;->mActivityType:I

    aget-object v0, v2, v3

    new-array v2, v5, [I

    fill-array-data v2, :array_2

    iput-object v2, v0, Landroid/window/TransitionFilter$Requirement;->mModes:[I

    iget-object v0, p0, Lcom/android/launcher3/QuickstepTransitionManager;->mLauncher:Lcom/android/launcher3/uioverrides/QuickstepLauncher;

    invoke-virtual {v4, v0}, Lcom/android/launcher3/util/MainThreadInitializedObject;->get(Landroid/content/Context;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/quickstep/SystemUiProxy;

    iget-object v2, p0, Lcom/android/launcher3/QuickstepTransitionManager;->mLauncherOpenTransition:Landroid/window/RemoteTransition;

    invoke-virtual {v0, v2, v1}, Lcom/android/quickstep/SystemUiProxy;->registerRemoteTransition(Landroid/window/RemoteTransition;Landroid/window/TransitionFilter;)V

    :cond_2
    iget-object v0, p0, Lcom/android/launcher3/QuickstepTransitionManager;->mBackAnimationController:Lcom/android/quickstep/LauncherBackAnimationController;

    if-eqz v0, :cond_3

    iget-object p0, p0, Lcom/android/launcher3/QuickstepTransitionManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, p0}, Lcom/android/quickstep/LauncherBackAnimationController;->registerBackCallbacks(Landroid/os/Handler;)V

    :cond_3
    return-void

    :array_0
    .array-data 4
        0x2
        0x4
    .end array-data

    :array_1
    .array-data 4
        0x1
        0x3
    .end array-data

    :array_2
    .array-data 4
        0x2
        0x4
    .end array-data
.end method

.method public setRemoteAnimationProvider(Lcom/android/quickstep/util/RemoteAnimationProvider;Landroid/os/CancellationSignal;)V
    .locals 1

    iput-object p1, p0, Lcom/android/launcher3/QuickstepTransitionManager;->mRemoteAnimationProvider:Lcom/android/quickstep/util/RemoteAnimationProvider;

    new-instance v0, Lcom/android/launcher3/l3;

    invoke-direct {v0, p0, p1}, Lcom/android/launcher3/l3;-><init>(Lcom/android/launcher3/QuickstepTransitionManager;Lcom/android/quickstep/util/RemoteAnimationProvider;)V

    invoke-virtual {p2, v0}, Landroid/os/CancellationSignal;->setOnCancelListener(Landroid/os/CancellationSignal$OnCancelListener;)V

    return-void
.end method

.method protected unregisterRemoteTransitions()V
    .locals 4

    sget-boolean v0, Lcom/android/quickstep/TaskAnimationManager;->ENABLE_SHELL_TRANSITIONS:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/quickstep/SystemUiProxy;->INSTANCE:Lcom/android/launcher3/util/MainThreadInitializedObject;

    iget-object v1, p0, Lcom/android/launcher3/QuickstepTransitionManager;->mLauncher:Lcom/android/launcher3/uioverrides/QuickstepLauncher;

    invoke-virtual {v0, v1}, Lcom/android/launcher3/util/MainThreadInitializedObject;->get(Landroid/content/Context;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/quickstep/SystemUiProxy;

    invoke-virtual {v0}, Lcom/android/quickstep/SystemUiProxy;->unshareTransactionQueue()V

    :cond_0
    sget-object v0, Lcom/android/launcher3/config/FeatureFlags;->SEPARATE_RECENTS_ACTIVITY:Lcom/android/launcher3/config/FeatureFlags$BooleanFlag;

    invoke-virtual {v0}, Lcom/android/launcher3/config/FeatureFlags$BooleanFlag;->get()Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    :cond_1
    invoke-virtual {p0}, Lcom/android/launcher3/QuickstepTransitionManager;->hasControlRemoteAppTransitionPermission()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/launcher3/QuickstepTransitionManager;->mLauncherOpenTransition:Landroid/window/RemoteTransition;

    if-nez v0, :cond_2

    return-void

    :cond_2
    sget-object v0, Lcom/android/quickstep/SystemUiProxy;->INSTANCE:Lcom/android/launcher3/util/MainThreadInitializedObject;

    iget-object v2, p0, Lcom/android/launcher3/QuickstepTransitionManager;->mLauncher:Lcom/android/launcher3/uioverrides/QuickstepLauncher;

    invoke-virtual {v0, v2}, Lcom/android/launcher3/util/MainThreadInitializedObject;->get(Landroid/content/Context;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/quickstep/SystemUiProxy;

    iget-object v3, p0, Lcom/android/launcher3/QuickstepTransitionManager;->mLauncherOpenTransition:Landroid/window/RemoteTransition;

    invoke-virtual {v2, v3}, Lcom/android/quickstep/SystemUiProxy;->unregisterRemoteTransition(Landroid/window/RemoteTransition;)V

    iput-object v1, p0, Lcom/android/launcher3/QuickstepTransitionManager;->mLauncherOpenTransition:Landroid/window/RemoteTransition;

    iput-object v1, p0, Lcom/android/launcher3/QuickstepTransitionManager;->mWallpaperOpenTransitionRunner:Lcom/android/launcher3/LauncherAnimationRunner$RemoteAnimationFactory;

    iget-object v2, p0, Lcom/android/launcher3/QuickstepTransitionManager;->mLauncherOpenTranslucentTransition:Landroid/window/RemoteTransition;

    if-nez v2, :cond_3

    return-void

    :cond_3
    iget-object v2, p0, Lcom/android/launcher3/QuickstepTransitionManager;->mLauncher:Lcom/android/launcher3/uioverrides/QuickstepLauncher;

    invoke-virtual {v0, v2}, Lcom/android/launcher3/util/MainThreadInitializedObject;->get(Landroid/content/Context;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/quickstep/SystemUiProxy;

    iget-object v2, p0, Lcom/android/launcher3/QuickstepTransitionManager;->mLauncherOpenTranslucentTransition:Landroid/window/RemoteTransition;

    invoke-virtual {v0, v2}, Lcom/android/quickstep/SystemUiProxy;->unregisterRemoteTransition(Landroid/window/RemoteTransition;)V

    iput-object v1, p0, Lcom/android/launcher3/QuickstepTransitionManager;->mLauncherOpenTranslucentTransition:Landroid/window/RemoteTransition;

    :cond_4
    iget-object v0, p0, Lcom/android/launcher3/QuickstepTransitionManager;->mBackAnimationController:Lcom/android/quickstep/LauncherBackAnimationController;

    if-eqz v0, :cond_5

    invoke-virtual {v0}, Lcom/android/quickstep/LauncherBackAnimationController;->unregisterBackCallbacks()V

    iput-object v1, p0, Lcom/android/launcher3/QuickstepTransitionManager;->mBackAnimationController:Lcom/android/quickstep/LauncherBackAnimationController;

    :cond_5
    return-void
.end method
