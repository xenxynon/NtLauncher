.class public final Lcom/android/quickstep/RecentsActivity;
.super Lcom/android/launcher3/statemanager/StatefulActivity;
.source "SourceFile"

# interfaces
.implements Lcom/android/quickstep/IWindowModeTips;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/launcher3/statemanager/StatefulActivity<",
        "Lcom/android/quickstep/fallback/RecentsState;",
        ">;",
        "Lcom/android/quickstep/IWindowModeTips;"
    }
.end annotation


# static fields
.field public static final ACTIVITY_TRACKER:Lcom/android/launcher3/util/ActivityTracker;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/launcher3/util/ActivityTracker<",
            "Lcom/android/quickstep/RecentsActivity;",
            ">;"
        }
    .end annotation
.end field

.field private static final HOME_APPEAR_DURATION:J = 0xfaL

.field private static final RECENTS_ANIMATION_TIMEOUT:J = 0x3e8L


# instance fields
.field private mActionsView:Lcom/android/quickstep/views/OverviewActionsView;

.field private mActivityLaunchAnimationRunner:Lcom/android/launcher3/LauncherAnimationRunner$RemoteAnimationFactory;

.field private final mAnimationStartTimeoutRunnable:Ljava/lang/Runnable;

.field private final mAnimationToHomeFactory:Lcom/android/launcher3/LauncherAnimationRunner$RemoteAnimationFactory;

.field private mDragLayer:Lcom/android/quickstep/fallback/RecentsDragLayer;

.field private mFallbackRecentsView:Lcom/android/quickstep/fallback/FallbackRecentsView;

.field private final mHandler:Landroid/os/Handler;

.field private mOverviewTip:Landroid/view/View;

.field private final mScreenOnListener:Lcom/android/launcher3/util/ScreenOnTracker$ScreenOnListener;

.field private mScrimView:Lcom/android/launcher3/views/ScrimView;

.field private mStateManager:Lcom/android/launcher3/statemanager/StateManager;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/launcher3/statemanager/StateManager<",
            "Lcom/android/quickstep/fallback/RecentsState;",
            ">;"
        }
    .end annotation
.end field

.field private mTISBindHelper:Lcom/android/quickstep/util/TISBindHelper;

.field private mTaskbarManager:Lcom/android/launcher3/taskbar/TaskbarManager;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private mTaskbarUIController:Lcom/android/launcher3/taskbar/FallbackTaskbarUIController;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private mUiHandler:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/launcher3/util/ActivityTracker;

    invoke-direct {v0}, Lcom/android/launcher3/util/ActivityTracker;-><init>()V

    sput-object v0, Lcom/android/quickstep/RecentsActivity;->ACTIVITY_TRACKER:Lcom/android/launcher3/util/ActivityTracker;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Lcom/android/launcher3/statemanager/StatefulActivity;-><init>()V

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/quickstep/RecentsActivity;->mUiHandler:Landroid/os/Handler;

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/quickstep/RecentsActivity;->mHandler:Landroid/os/Handler;

    new-instance v0, Lcom/android/quickstep/f4;

    invoke-direct {v0, p0}, Lcom/android/quickstep/f4;-><init>(Lcom/android/quickstep/RecentsActivity;)V

    iput-object v0, p0, Lcom/android/quickstep/RecentsActivity;->mAnimationStartTimeoutRunnable:Ljava/lang/Runnable;

    new-instance v0, Lcom/android/quickstep/e4;

    invoke-direct {v0, p0}, Lcom/android/quickstep/e4;-><init>(Lcom/android/quickstep/RecentsActivity;)V

    iput-object v0, p0, Lcom/android/quickstep/RecentsActivity;->mScreenOnListener:Lcom/android/launcher3/util/ScreenOnTracker$ScreenOnListener;

    new-instance v0, Lcom/android/quickstep/d4;

    invoke-direct {v0, p0}, Lcom/android/quickstep/d4;-><init>(Lcom/android/quickstep/RecentsActivity;)V

    iput-object v0, p0, Lcom/android/quickstep/RecentsActivity;->mAnimationToHomeFactory:Lcom/android/launcher3/LauncherAnimationRunner$RemoteAnimationFactory;

    return-void
.end method

.method static synthetic access$000(Lcom/android/quickstep/RecentsActivity;)Ljava/lang/Runnable;
    .locals 0

    iget-object p0, p0, Lcom/android/quickstep/RecentsActivity;->mAnimationStartTimeoutRunnable:Ljava/lang/Runnable;

    return-object p0
.end method

.method static synthetic access$100(Lcom/android/quickstep/RecentsActivity;)Landroid/os/Handler;
    .locals 0

    iget-object p0, p0, Lcom/android/quickstep/RecentsActivity;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic access$200(Lcom/android/quickstep/RecentsActivity;Lcom/android/quickstep/views/TaskView;[Landroid/view/RemoteAnimationTarget;[Landroid/view/RemoteAnimationTarget;[Landroid/view/RemoteAnimationTarget;)Landroid/animation/AnimatorSet;
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/quickstep/RecentsActivity;->composeRecentsLaunchAnimator(Lcom/android/quickstep/views/TaskView;[Landroid/view/RemoteAnimationTarget;[Landroid/view/RemoteAnimationTarget;[Landroid/view/RemoteAnimationTarget;)Landroid/animation/AnimatorSet;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$300(Lcom/android/quickstep/RecentsActivity;)Landroid/animation/AnimatorListenerAdapter;
    .locals 0

    invoke-direct {p0}, Lcom/android/quickstep/RecentsActivity;->resetStateListener()Landroid/animation/AnimatorListenerAdapter;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$400(Lcom/android/quickstep/RecentsActivity;)Lcom/android/quickstep/fallback/FallbackRecentsView;
    .locals 0

    iget-object p0, p0, Lcom/android/quickstep/RecentsActivity;->mFallbackRecentsView:Lcom/android/quickstep/fallback/FallbackRecentsView;

    return-object p0
.end method

.method static synthetic access$500(Lcom/android/quickstep/RecentsActivity;)Lcom/android/launcher3/statemanager/StateManager;
    .locals 0

    iget-object p0, p0, Lcom/android/quickstep/RecentsActivity;->mStateManager:Lcom/android/launcher3/statemanager/StateManager;

    return-object p0
.end method

.method private composeRecentsLaunchAnimator(Lcom/android/quickstep/views/TaskView;[Landroid/view/RemoteAnimationTarget;[Landroid/view/RemoteAnimationTarget;[Landroid/view/RemoteAnimationTarget;)Landroid/animation/AnimatorSet;
    .locals 12

    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    invoke-virtual {p0}, Landroid/app/Activity;->getTaskId()I

    move-result v1

    const/4 v2, 0x1

    move-object v5, p2

    invoke-static {p2, v1, v2}, Lcom/android/quickstep/TaskUtils;->taskIsATargetWithMode([Landroid/view/RemoteAnimationTarget;II)Z

    move-result v1

    new-instance v2, Lcom/android/launcher3/anim/PendingAnimation;

    const-wide/16 v10, 0x150

    invoke-direct {v2, v10, v11}, Lcom/android/launcher3/anim/PendingAnimation;-><init>(J)V

    xor-int/lit8 v4, v1, 0x1

    const/4 v8, 0x0

    move-object v3, p1

    move-object v5, p2

    move-object v6, p3

    move-object/from16 v7, p4

    move-object v9, v2

    invoke-static/range {v3 .. v9}, Lcom/android/quickstep/TaskViewUtils;->createRecentsWindowAnimator(Lcom/android/quickstep/views/TaskView;Z[Landroid/view/RemoteAnimationTarget;[Landroid/view/RemoteAnimationTarget;[Landroid/view/RemoteAnimationTarget;Lcom/android/launcher3/statehandlers/DepthController;Lcom/android/launcher3/anim/PendingAnimation;)V

    invoke-virtual {v2}, Lcom/android/launcher3/anim/PendingAnimation;->buildAnim()Landroid/animation/AnimatorSet;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    if-eqz v1, :cond_0

    move-object v1, p0

    iget-object v2, v1, Lcom/android/quickstep/RecentsActivity;->mFallbackRecentsView:Lcom/android/quickstep/fallback/FallbackRecentsView;

    move-object v3, p1

    invoke-virtual {v2, p1}, Lcom/android/quickstep/views/RecentsView;->createAdjacentPageAnimForTaskLaunch(Lcom/android/quickstep/views/TaskView;)Landroid/animation/AnimatorSet;

    move-result-object v2

    sget-object v3, Lcom/android/launcher3/anim/Interpolators;->TOUCH_RESPONSE_INTERPOLATOR:Landroid/view/animation/Interpolator;

    invoke-virtual {v2, v3}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    invoke-virtual {v2, v10, v11}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    invoke-direct {p0}, Lcom/android/quickstep/RecentsActivity;->resetStateListener()Landroid/animation/AnimatorListenerAdapter;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    invoke-virtual {v0, v2}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    :cond_0
    return-object v0
.end method

.method private initDeviceProfile()V
    .locals 1

    invoke-virtual {p0}, Lcom/android/quickstep/RecentsActivity;->createDeviceProfile()Lcom/android/launcher3/DeviceProfile;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher3/BaseActivity;->mDeviceProfile:Lcom/android/launcher3/DeviceProfile;

    invoke-virtual {p0}, Lcom/android/launcher3/BaseDraggingActivity;->onDeviceProfileInitiated()V

    return-void
.end method

.method private synthetic lambda$new$1()V
    .locals 2

    invoke-virtual {p0}, Lcom/android/quickstep/RecentsActivity;->getStateManager()Lcom/android/launcher3/statemanager/StateManager;

    move-result-object p0

    sget-object v0, Lcom/android/quickstep/fallback/RecentsState;->HOME:Lcom/android/quickstep/fallback/RecentsState;

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/android/launcher3/statemanager/StateManager;->goToState(Lcom/android/launcher3/statemanager/BaseState;Z)V

    return-void
.end method

.method private synthetic lambda$new$2(I[Landroid/view/RemoteAnimationTarget;[Landroid/view/RemoteAnimationTarget;[Landroid/view/RemoteAnimationTarget;Lcom/android/launcher3/LauncherAnimationRunner$AnimationResult;)V
    .locals 5

    invoke-virtual {p0}, Lcom/android/quickstep/RecentsActivity;->getStateManager()Lcom/android/launcher3/statemanager/StateManager;

    move-result-object p1

    sget-object v0, Lcom/android/quickstep/fallback/RecentsState;->BG_LAUNCHER:Lcom/android/quickstep/fallback/RecentsState;

    const-wide/16 v1, 0xfa

    invoke-virtual {p1, v0, v1, v2}, Lcom/android/launcher3/statemanager/StateManager;->createAnimationToNewWorkspace(Lcom/android/launcher3/statemanager/BaseState;J)Lcom/android/launcher3/anim/AnimatorPlaybackController;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/launcher3/anim/AnimatorPlaybackController;->dispatchOnStart()Lcom/android/launcher3/anim/AnimatorPlaybackController;

    new-instance v0, Lcom/android/quickstep/RemoteAnimationTargets;

    const/4 v3, 0x0

    invoke-direct {v0, p2, p3, p4, v3}, Lcom/android/quickstep/RemoteAnimationTargets;-><init>([Landroid/view/RemoteAnimationTarget;[Landroid/view/RemoteAnimationTarget;[Landroid/view/RemoteAnimationTarget;I)V

    iget-object p2, v0, Lcom/android/quickstep/RemoteAnimationTargets;->apps:[Landroid/view/RemoteAnimationTarget;

    array-length p3, p2

    :goto_0
    if-ge v3, p3, :cond_0

    aget-object p4, p2, v3

    new-instance v0, Landroid/view/SurfaceControl$Transaction;

    invoke-direct {v0}, Landroid/view/SurfaceControl$Transaction;-><init>()V

    iget-object p4, p4, Landroid/view/RemoteAnimationTarget;->leash:Landroid/view/SurfaceControl;

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-virtual {v0, p4, v4}, Landroid/view/SurfaceControl$Transaction;->setAlpha(Landroid/view/SurfaceControl;F)Landroid/view/SurfaceControl$Transaction;

    move-result-object p4

    invoke-virtual {p4}, Landroid/view/SurfaceControl$Transaction;->apply()V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    new-instance p2, Landroid/animation/AnimatorSet;

    invoke-direct {p2}, Landroid/animation/AnimatorSet;-><init>()V

    invoke-virtual {p1}, Lcom/android/launcher3/anim/AnimatorPlaybackController;->getAnimationPlayer()Landroid/animation/ValueAnimator;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    invoke-virtual {p2, v1, v2}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    new-instance p1, Lcom/android/quickstep/h4;

    invoke-direct {p1, p0}, Lcom/android/quickstep/h4;-><init>(Lcom/android/quickstep/RecentsActivity;)V

    const/4 p3, 0x1

    invoke-virtual {p5, p2, p0, p1, p3}, Lcom/android/launcher3/LauncherAnimationRunner$AnimationResult;->setAnimation(Landroid/animation/AnimatorSet;Landroid/content/Context;Ljava/lang/Runnable;Z)V

    return-void
.end method

.method private synthetic lambda$startHome$0(Lcom/android/quickstep/views/RecentsView;)V
    .locals 1

    new-instance v0, Lcom/android/quickstep/g4;

    invoke-direct {v0, p0}, Lcom/android/quickstep/g4;-><init>(Lcom/android/quickstep/RecentsActivity;)V

    const/4 p0, 0x1

    invoke-virtual {p1, p0, v0}, Lcom/android/quickstep/views/RecentsView;->finishRecentsAnimation(ZLjava/lang/Runnable;)V

    return-void
.end method

.method private onAnimationStartTimeout()V
    .locals 0

    iget-object p0, p0, Lcom/android/quickstep/RecentsActivity;->mActivityLaunchAnimationRunner:Lcom/android/launcher3/LauncherAnimationRunner$RemoteAnimationFactory;

    if-eqz p0, :cond_0

    invoke-interface {p0}, Lcom/android/launcher3/LauncherAnimationRunner$RemoteAnimationFactory;->onAnimationCancelled()V

    :cond_0
    return-void
.end method

.method private onScreenOnChanged(Z)V
    .locals 0

    if-nez p1, :cond_0

    invoke-virtual {p0}, Lcom/android/launcher3/BaseActivity;->isStarted()Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/android/quickstep/RecentsActivity;->startHome()V

    :cond_0
    return-void
.end method

.method private onTISConnected(Lcom/android/quickstep/TouchInteractionService$TISBinder;)V
    .locals 0

    invoke-virtual {p1}, Lcom/android/quickstep/TouchInteractionService$TISBinder;->getTaskbarManager()Lcom/android/launcher3/taskbar/TaskbarManager;

    move-result-object p1

    iput-object p1, p0, Lcom/android/quickstep/RecentsActivity;->mTaskbarManager:Lcom/android/launcher3/taskbar/TaskbarManager;

    if-eqz p1, :cond_0

    invoke-virtual {p1, p0}, Lcom/android/launcher3/taskbar/TaskbarManager;->setActivity(Lcom/android/launcher3/statemanager/StatefulActivity;)V

    :cond_0
    return-void
.end method

.method public static synthetic r(Lcom/android/quickstep/RecentsActivity;I[Landroid/view/RemoteAnimationTarget;[Landroid/view/RemoteAnimationTarget;[Landroid/view/RemoteAnimationTarget;Lcom/android/launcher3/LauncherAnimationRunner$AnimationResult;)V
    .locals 0

    invoke-direct/range {p0 .. p5}, Lcom/android/quickstep/RecentsActivity;->lambda$new$2(I[Landroid/view/RemoteAnimationTarget;[Landroid/view/RemoteAnimationTarget;[Landroid/view/RemoteAnimationTarget;Lcom/android/launcher3/LauncherAnimationRunner$AnimationResult;)V

    return-void
.end method

.method private resetStateListener()Landroid/animation/AnimatorListenerAdapter;
    .locals 1

    new-instance v0, Lcom/android/quickstep/RecentsActivity$2;

    invoke-direct {v0, p0}, Lcom/android/quickstep/RecentsActivity$2;-><init>(Lcom/android/quickstep/RecentsActivity;)V

    return-object v0
.end method

.method public static synthetic s(Lcom/android/quickstep/RecentsActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/quickstep/RecentsActivity;->onAnimationStartTimeout()V

    return-void
.end method

.method private startHomeInternal()V
    .locals 8

    new-instance v6, Lcom/android/launcher3/LauncherAnimationRunner;

    invoke-virtual {p0}, Landroid/app/Activity;->getMainThreadHandler()Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/android/quickstep/RecentsActivity;->mAnimationToHomeFactory:Lcom/android/launcher3/LauncherAnimationRunner$RemoteAnimationFactory;

    const/4 v2, 0x1

    invoke-direct {v6, v0, v1, v2}, Lcom/android/launcher3/LauncherAnimationRunner;-><init>(Landroid/os/Handler;Lcom/android/launcher3/LauncherAnimationRunner$RemoteAnimationFactory;Z)V

    new-instance v7, Landroid/view/RemoteAnimationAdapter;

    const-wide/16 v2, 0xfa

    const-wide/16 v4, 0x0

    move-object v0, v7

    move-object v1, v6

    invoke-direct/range {v0 .. v5}, Landroid/view/RemoteAnimationAdapter;-><init>(Landroid/view/IRemoteAnimationRunner;JJ)V

    new-instance v0, Landroid/window/RemoteTransition;

    invoke-virtual {v6}, Lcom/android/systemui/shared/system/RemoteAnimationRunnerCompat;->toRemoteTransition()Landroid/window/IRemoteTransition;

    move-result-object v1

    invoke-virtual {p0}, Landroid/app/Activity;->getIApplicationThread()Landroid/app/IApplicationThread;

    move-result-object v2

    const-string v3, "StartHomeFromRecents"

    invoke-direct {v0, v1, v2, v3}, Landroid/window/RemoteTransition;-><init>(Landroid/window/IRemoteTransition;Landroid/app/IApplicationThread;Ljava/lang/String;)V

    invoke-static {v7, v0}, Landroid/app/ActivityOptions;->makeRemoteAnimation(Landroid/view/RemoteAnimationAdapter;Landroid/window/RemoteTransition;)Landroid/app/ActivityOptions;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ActivityOptions;->toBundle()Landroid/os/Bundle;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/quickstep/OverviewComponentObserver;->startHomeIntentSafely(Landroid/content/Context;Landroid/os/Bundle;)V

    return-void
.end method

.method public static synthetic t(Lcom/android/quickstep/RecentsActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/quickstep/RecentsActivity;->startHomeInternal()V

    return-void
.end method

.method public static synthetic u(Lcom/android/quickstep/RecentsActivity;Lcom/android/quickstep/views/RecentsView;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/quickstep/RecentsActivity;->lambda$startHome$0(Lcom/android/quickstep/views/RecentsView;)V

    return-void
.end method

.method public static synthetic v(Lcom/android/quickstep/RecentsActivity;Lcom/android/quickstep/TouchInteractionService$TISBinder;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/quickstep/RecentsActivity;->onTISConnected(Lcom/android/quickstep/TouchInteractionService$TISBinder;)V

    return-void
.end method

.method public static synthetic w(Lcom/android/quickstep/RecentsActivity;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/quickstep/RecentsActivity;->onScreenOnChanged(Z)V

    return-void
.end method

.method public static synthetic x(Lcom/android/quickstep/RecentsActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/quickstep/RecentsActivity;->lambda$new$1()V

    return-void
.end method


# virtual methods
.method public bridge synthetic addOnDeviceProfileChangeListener(Lcom/android/launcher3/DeviceProfile$OnDeviceProfileChangeListener;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/android/launcher3/views/ActivityContext;->addOnDeviceProfileChangeListener(Lcom/android/launcher3/DeviceProfile$OnDeviceProfileChangeListener;)V

    return-void
.end method

.method public bridge synthetic applyOverwritesToLogItem(Lcom/android/launcher3/logger/LauncherAtom$ItemInfo$Builder;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/android/launcher3/views/ActivityContext;->applyOverwritesToLogItem(Lcom/android/launcher3/logger/LauncherAtom$ItemInfo$Builder;)V

    return-void
.end method

.method public bridge synthetic canUseMultipleShadesForPopup()Z
    .locals 0

    invoke-super {p0}, Lcom/android/launcher3/views/ActivityContext;->canUseMultipleShadesForPopup()Z

    move-result p0

    return p0
.end method

.method protected collectStateHandlers(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/launcher3/statemanager/StateManager$StateHandler;",
            ">;)V"
        }
    .end annotation

    new-instance v0, Lcom/android/quickstep/fallback/FallbackRecentsStateController;

    invoke-direct {v0, p0}, Lcom/android/quickstep/fallback/FallbackRecentsStateController;-><init>(Lcom/android/quickstep/RecentsActivity;)V

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public createAtomicAnimationFactory()Lcom/android/launcher3/statemanager/StateManager$AtomicAnimationFactory;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/android/launcher3/statemanager/StateManager$AtomicAnimationFactory<",
            "Lcom/android/quickstep/fallback/RecentsState;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/android/quickstep/util/RecentsAtomicAnimationFactory;

    invoke-direct {v0, p0}, Lcom/android/quickstep/util/RecentsAtomicAnimationFactory;-><init>(Lcom/android/launcher3/statemanager/StatefulActivity;)V

    return-object v0
.end method

.method protected createDeviceProfile()Lcom/android/launcher3/DeviceProfile;
    .locals 2

    sget-object v0, Lcom/android/launcher3/InvariantDeviceProfile;->INSTANCE:Lcom/android/launcher3/util/MainThreadInitializedObject;

    invoke-virtual {v0, p0}, Lcom/android/launcher3/util/MainThreadInitializedObject;->get(Landroid/content/Context;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/InvariantDeviceProfile;

    invoke-virtual {v0, p0}, Lcom/android/launcher3/InvariantDeviceProfile;->getRecentActivityDeviceProfile(Landroid/content/Context;)Lcom/android/launcher3/DeviceProfile;

    move-result-object v0

    iget-object v1, p0, Lcom/android/quickstep/RecentsActivity;->mDragLayer:Lcom/android/quickstep/fallback/RecentsDragLayer;

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Landroid/app/Activity;->isInMultiWindowMode()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/android/launcher3/BaseDraggingActivity;->getMultiWindowDisplaySize()Lcom/android/launcher3/util/WindowBounds;

    move-result-object v1

    invoke-virtual {v0, p0, v1}, Lcom/android/launcher3/DeviceProfile;->getMultiWindowProfile(Landroid/content/Context;Lcom/android/launcher3/util/WindowBounds;)Lcom/android/launcher3/DeviceProfile;

    move-result-object p0

    goto :goto_0

    :cond_0
    invoke-virtual {v0, p0}, Lcom/android/launcher3/DeviceProfile;->copy(Landroid/content/Context;)Lcom/android/launcher3/DeviceProfile;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method public dispatchDeviceProfileChanged()V
    .locals 3

    invoke-super {p0}, Lcom/android/launcher3/views/ActivityContext;->dispatchDeviceProfileChanged()V

    invoke-virtual {p0}, Lcom/android/launcher3/BaseActivity;->getDeviceProfile()Lj3/a;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/launcher3/DeviceProfile;->toSmallString()Ljava/lang/String;

    move-result-object p0

    const-wide/16 v0, 0x1000

    const-string v2, "RecentsActivity#DeviceProfileChanged"

    invoke-static {v0, v1, v2, p0}, Landroid/os/Trace;->instantForTrack(JLjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public dump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 0

    invoke-super {p0, p1, p2, p3, p4}, Landroid/app/Activity;->dump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p4, "Misc:"

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p3, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\t"

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1, p3}, Lcom/android/launcher3/BaseActivity;->dumpMisc(Ljava/lang/String;Ljava/io/PrintWriter;)V

    return-void
.end method

.method public bridge synthetic findFolderIcon(I)Lcom/android/launcher3/folder/BaseFolderIcon;
    .locals 0
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    invoke-super {p0, p1}, Lcom/android/launcher3/views/ActivityContext;->findFolderIcon(I)Lcom/android/launcher3/folder/BaseFolderIcon;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic getAccessibilityDelegate()Landroid/view/View$AccessibilityDelegate;
    .locals 0

    invoke-super {p0}, Lcom/android/launcher3/views/ActivityContext;->getAccessibilityDelegate()Landroid/view/View$AccessibilityDelegate;

    move-result-object p0

    return-object p0
.end method

.method public getActionsView()Lcom/android/quickstep/views/OverviewActionsView;
    .locals 0

    iget-object p0, p0, Lcom/android/quickstep/RecentsActivity;->mActionsView:Lcom/android/quickstep/views/OverviewActionsView;

    return-object p0
.end method

.method public getActivityLaunchOptions(Landroid/view/View;Lcom/android/launcher3/model/data/ItemInfo;)Lcom/android/launcher3/util/ActivityOptionsWrapper;
    .locals 9
    .param p2    # Lcom/android/launcher3/model/data/ItemInfo;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    instance-of v0, p1, Lcom/android/quickstep/views/TaskView;

    if-nez v0, :cond_0

    invoke-super {p0, p1, p2}, Lcom/android/launcher3/BaseDraggingActivity;->getActivityLaunchOptions(Landroid/view/View;Lcom/android/launcher3/model/data/ItemInfo;)Lcom/android/launcher3/util/ActivityOptionsWrapper;

    move-result-object p0

    return-object p0

    :cond_0
    move-object p2, p1

    check-cast p2, Lcom/android/quickstep/views/TaskView;

    new-instance v0, Lcom/android/launcher3/util/RunnableList;

    invoke-direct {v0}, Lcom/android/launcher3/util/RunnableList;-><init>()V

    new-instance v1, Lcom/android/quickstep/RecentsActivity$1;

    invoke-direct {v1, p0, p2, v0}, Lcom/android/quickstep/RecentsActivity$1;-><init>(Lcom/android/quickstep/RecentsActivity;Lcom/android/quickstep/views/TaskView;Lcom/android/launcher3/util/RunnableList;)V

    iput-object v1, p0, Lcom/android/quickstep/RecentsActivity;->mActivityLaunchAnimationRunner:Lcom/android/launcher3/LauncherAnimationRunner$RemoteAnimationFactory;

    new-instance p2, Lcom/android/launcher3/LauncherAnimationRunner;

    iget-object v1, p0, Lcom/android/quickstep/RecentsActivity;->mUiHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/android/quickstep/RecentsActivity;->mActivityLaunchAnimationRunner:Lcom/android/launcher3/LauncherAnimationRunner$RemoteAnimationFactory;

    const/4 v8, 0x1

    invoke-direct {p2, v1, v2, v8}, Lcom/android/launcher3/LauncherAnimationRunner;-><init>(Landroid/os/Handler;Lcom/android/launcher3/LauncherAnimationRunner$RemoteAnimationFactory;Z)V

    new-instance v1, Landroid/view/RemoteAnimationAdapter;

    const-wide/16 v4, 0x150

    const-wide/16 v6, 0x78

    move-object v2, v1

    move-object v3, p2

    invoke-direct/range {v2 .. v7}, Landroid/view/RemoteAnimationAdapter;-><init>(Landroid/view/IRemoteAnimationRunner;JJ)V

    new-instance v2, Landroid/window/RemoteTransition;

    invoke-virtual {p2}, Lcom/android/systemui/shared/system/RemoteAnimationRunnerCompat;->toRemoteTransition()Landroid/window/IRemoteTransition;

    move-result-object p2

    invoke-virtual {p0}, Landroid/app/Activity;->getIApplicationThread()Landroid/app/IApplicationThread;

    move-result-object v3

    const-string v4, "LaunchFromRecents"

    invoke-direct {v2, p2, v3, v4}, Landroid/window/RemoteTransition;-><init>(Landroid/window/IRemoteTransition;Landroid/app/IApplicationThread;Ljava/lang/String;)V

    invoke-static {v1, v2}, Landroid/app/ActivityOptions;->makeRemoteAnimation(Landroid/view/RemoteAnimationAdapter;Landroid/window/RemoteTransition;)Landroid/app/ActivityOptions;

    move-result-object p2

    new-instance v1, Lcom/android/launcher3/util/ActivityOptionsWrapper;

    invoke-direct {v1, p2, v0}, Lcom/android/launcher3/util/ActivityOptionsWrapper;-><init>(Landroid/app/ActivityOptions;Lcom/android/launcher3/util/RunnableList;)V

    iget-object p2, v1, Lcom/android/launcher3/util/ActivityOptionsWrapper;->options:Landroid/app/ActivityOptions;

    invoke-virtual {p2, v8}, Landroid/app/ActivityOptions;->setSplashScreenStyle(I)Landroid/app/ActivityOptions;

    iget-object p2, v1, Lcom/android/launcher3/util/ActivityOptionsWrapper;->options:Landroid/app/ActivityOptions;

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Landroid/view/View;->getDisplay()Landroid/view/Display;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Landroid/view/View;->getDisplay()Landroid/view/Display;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/Display;->getDisplayId()I

    move-result p1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    invoke-virtual {p2, p1}, Landroid/app/ActivityOptions;->setLaunchDisplayId(I)Landroid/app/ActivityOptions;

    iget-object p1, p0, Lcom/android/quickstep/RecentsActivity;->mHandler:Landroid/os/Handler;

    iget-object p0, p0, Lcom/android/quickstep/RecentsActivity;->mAnimationStartTimeoutRunnable:Ljava/lang/Runnable;

    const-wide/16 v2, 0x3e8

    invoke-virtual {p1, p0, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    iget-object p0, v1, Lcom/android/launcher3/util/ActivityOptionsWrapper;->options:Landroid/app/ActivityOptions;

    invoke-virtual {p0, v8}, Landroid/app/ActivityOptions;->setPendingIntentBackgroundActivityStartMode(I)Landroid/app/ActivityOptions;

    return-object v1
.end method

.method public bridge synthetic getAppsView()Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;
    .locals 0

    invoke-super {p0}, Lcom/android/launcher3/views/ActivityContext;->getAppsView()Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic getCellPosMapper()Lcom/android/launcher3/celllayout/CellPosMapper;
    .locals 0

    invoke-super {p0}, Lcom/android/launcher3/views/ActivityContext;->getCellPosMapper()Lcom/android/launcher3/celllayout/CellPosMapper;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic getDotInfoForItem(Lcom/android/launcher3/model/data/ItemInfo;)Lcom/android/launcher3/dot/DotInfo;
    .locals 0

    invoke-super {p0, p1}, Lcom/android/launcher3/views/ActivityContext;->getDotInfoForItem(Lcom/android/launcher3/model/data/ItemInfo;)Lcom/android/launcher3/dot/DotInfo;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic getDragController()Lcom/android/launcher3/dragndrop/DragController;
    .locals 0

    invoke-super {p0}, Lcom/android/launcher3/views/ActivityContext;->getDragController()Lcom/android/launcher3/dragndrop/DragController;

    move-result-object p0

    return-object p0
.end method

.method public getDragLayer()Lcom/android/launcher3/views/BaseDragLayer;
    .locals 0

    iget-object p0, p0, Lcom/android/quickstep/RecentsActivity;->mDragLayer:Lcom/android/quickstep/fallback/RecentsDragLayer;

    return-object p0
.end method

.method public bridge synthetic getDropTargetHandler()Lcom/android/launcher3/DropTargetHandler;
    .locals 0

    invoke-super {p0}, Lcom/android/launcher3/views/ActivityContext;->getDropTargetHandler()Lcom/android/launcher3/DropTargetHandler;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic getFolderBoundingBox()Landroid/graphics/Rect;
    .locals 0

    invoke-super {p0}, Lcom/android/launcher3/views/ActivityContext;->getFolderBoundingBox()Landroid/graphics/Rect;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic getHiddenAppsPagedView()Lcom/nothing/launcher/hiddenapps/NTHiddenAppsPagedView;
    .locals 0
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    invoke-super {p0}, Lcom/android/launcher3/views/ActivityContext;->getHiddenAppsPagedView()Lcom/nothing/launcher/hiddenapps/NTHiddenAppsPagedView;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic getHiddenAppsView()Lcom/nothing/launcher/hiddenapps/HiddenAppsContainerView;
    .locals 0
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    invoke-super {p0}, Lcom/android/launcher3/views/ActivityContext;->getHiddenAppsView()Lcom/nothing/launcher/hiddenapps/HiddenAppsContainerView;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic getOnboardingPrefs()Lcom/android/launcher3/util/OnboardingPrefs;
    .locals 0
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    invoke-super {p0}, Lcom/android/launcher3/views/ActivityContext;->getOnboardingPrefs()Lcom/android/launcher3/util/OnboardingPrefs;

    move-result-object p0

    return-object p0
.end method

.method public getOverviewPanel()Landroid/view/View;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Landroid/view/View;",
            ">()TT;"
        }
    .end annotation

    iget-object p0, p0, Lcom/android/quickstep/RecentsActivity;->mFallbackRecentsView:Lcom/android/quickstep/fallback/FallbackRecentsView;

    return-object p0
.end method

.method public bridge synthetic getPopupDataProvider()Lcom/android/launcher3/popup/PopupDataProvider;
    .locals 0
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    invoke-super {p0}, Lcom/android/launcher3/views/ActivityContext;->getPopupDataProvider()Lcom/android/launcher3/popup/PopupDataProvider;

    move-result-object p0

    return-object p0
.end method

.method public getScrimView()Lcom/android/launcher3/views/ScrimView;
    .locals 0

    iget-object p0, p0, Lcom/android/quickstep/RecentsActivity;->mScrimView:Lcom/android/launcher3/views/ScrimView;

    return-object p0
.end method

.method public getStateManager()Lcom/android/launcher3/statemanager/StateManager;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/android/launcher3/statemanager/StateManager<",
            "Lcom/android/quickstep/fallback/RecentsState;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/android/quickstep/RecentsActivity;->mStateManager:Lcom/android/launcher3/statemanager/StateManager;

    return-object p0
.end method

.method public bridge synthetic getStringCache()Lcom/android/launcher3/model/StringCache;
    .locals 0
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    invoke-super {p0}, Lcom/android/launcher3/views/ActivityContext;->getStringCache()Lcom/android/launcher3/model/StringCache;

    move-result-object p0

    return-object p0
.end method

.method public getTaskbarUIController()Lcom/android/launcher3/taskbar/FallbackTaskbarUIController;
    .locals 0

    iget-object p0, p0, Lcom/android/quickstep/RecentsActivity;->mTaskbarUIController:Lcom/android/launcher3/taskbar/FallbackTaskbarUIController;

    return-object p0
.end method

.method public bridge synthetic hideKeyboard()V
    .locals 0

    invoke-super {p0}, Lcom/android/launcher3/views/ActivityContext;->hideKeyboard()V

    return-void
.end method

.method public bridge synthetic invalidateParent(Lcom/android/launcher3/model/data/ItemInfo;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/android/launcher3/views/ActivityContext;->invalidateParent(Lcom/android/launcher3/model/data/ItemInfo;)V

    return-void
.end method

.method public bridge synthetic isBindingItems()Z
    .locals 0

    invoke-super {p0}, Lcom/android/launcher3/views/ActivityContext;->isBindingItems()Z

    move-result p0

    return p0
.end method

.method public bridge synthetic logAppLaunch(Lcom/android/launcher3/logging/StatsLogManager;Lcom/android/launcher3/model/data/ItemInfo;Lcom/android/launcher3/logging/InstanceId;)V
    .locals 0

    invoke-super {p0, p1, p2, p3}, Lcom/android/launcher3/views/ActivityContext;->logAppLaunch(Lcom/android/launcher3/logging/StatsLogManager;Lcom/android/launcher3/model/data/ItemInfo;Lcom/android/launcher3/logging/InstanceId;)V

    return-void
.end method

.method public onBackPressed()V
    .locals 0

    invoke-virtual {p0}, Lcom/android/quickstep/RecentsActivity;->startHome()V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Lcom/android/launcher3/statemanager/StatefulActivity;->onCreate(Landroid/os/Bundle;)V

    new-instance p1, Lcom/android/launcher3/statemanager/StateManager;

    sget-object v0, Lcom/android/quickstep/fallback/RecentsState;->BG_LAUNCHER:Lcom/android/quickstep/fallback/RecentsState;

    invoke-direct {p1, p0, v0}, Lcom/android/launcher3/statemanager/StateManager;-><init>(Lcom/android/launcher3/statemanager/StatefulActivity;Lcom/android/launcher3/statemanager/BaseState;)V

    iput-object p1, p0, Lcom/android/quickstep/RecentsActivity;->mStateManager:Lcom/android/launcher3/statemanager/StateManager;

    invoke-direct {p0}, Lcom/android/quickstep/RecentsActivity;->initDeviceProfile()V

    invoke-virtual {p0}, Lcom/android/quickstep/RecentsActivity;->setupViews()V

    invoke-virtual {p0}, Lcom/android/launcher3/BaseActivity;->getSystemUiController()Lcom/android/launcher3/util/SystemUiController;

    move-result-object p1

    const v0, 0x7f0402a9

    invoke-static {p0, v0}, Lcom/android/launcher3/util/Themes;->getAttrBoolean(Landroid/content/Context;I)Z

    move-result v0

    const/4 v1, 0x0

    invoke-virtual {p1, v1, v0}, Lcom/android/launcher3/util/SystemUiController;->updateUiState(IZ)V

    sget-object p1, Lcom/android/quickstep/RecentsActivity;->ACTIVITY_TRACKER:Lcom/android/launcher3/util/ActivityTracker;

    invoke-virtual {p1, p0}, Lcom/android/launcher3/util/ActivityTracker;->handleCreate(Lcom/android/launcher3/BaseActivity;)Z

    return-void
.end method

.method protected onDestroy()V
    .locals 1

    invoke-super {p0}, Lcom/android/launcher3/BaseDraggingActivity;->onDestroy()V

    sget-object v0, Lcom/android/quickstep/RecentsActivity;->ACTIVITY_TRACKER:Lcom/android/launcher3/util/ActivityTracker;

    invoke-virtual {v0, p0}, Lcom/android/launcher3/util/ActivityTracker;->onActivityDestroyed(Lcom/android/launcher3/BaseActivity;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/quickstep/RecentsActivity;->mActivityLaunchAnimationRunner:Lcom/android/launcher3/LauncherAnimationRunner$RemoteAnimationFactory;

    iget-object v0, p0, Lcom/android/quickstep/RecentsActivity;->mTISBindHelper:Lcom/android/quickstep/util/TISBindHelper;

    invoke-virtual {v0}, Lcom/android/quickstep/util/TISBindHelper;->onDestroy()V

    iget-object v0, p0, Lcom/android/quickstep/RecentsActivity;->mTaskbarManager:Lcom/android/launcher3/taskbar/TaskbarManager;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p0}, Lcom/android/launcher3/taskbar/TaskbarManager;->clearActivity(Lcom/android/launcher3/statemanager/StatefulActivity;)V

    :cond_0
    sget-object v0, Lcom/android/launcher3/util/ScreenOnTracker;->INSTANCE:Lcom/android/launcher3/util/MainThreadInitializedObject;

    invoke-virtual {v0, p0}, Lcom/android/launcher3/util/MainThreadInitializedObject;->get(Landroid/content/Context;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/util/ScreenOnTracker;

    iget-object p0, p0, Lcom/android/quickstep/RecentsActivity;->mScreenOnListener:Lcom/android/launcher3/util/ScreenOnTracker$ScreenOnListener;

    invoke-virtual {v0, p0}, Lcom/android/launcher3/util/ScreenOnTracker;->removeListener(Lcom/android/launcher3/util/ScreenOnTracker$ScreenOnListener;)V

    return-void
.end method

.method public onEnterAnimationComplete()V
    .locals 1

    invoke-super {p0}, Landroid/app/Activity;->onEnterAnimationComplete()V

    sget-object v0, Lcom/android/quickstep/RecentsModel;->INSTANCE:Lcom/android/launcher3/util/MainThreadInitializedObject;

    invoke-virtual {v0, p0}, Lcom/android/launcher3/util/MainThreadInitializedObject;->get(Landroid/content/Context;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/quickstep/RecentsModel;

    invoke-virtual {p0}, Lcom/android/quickstep/RecentsModel;->getThumbnailCache()Lcom/android/quickstep/TaskThumbnailCache;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/quickstep/TaskThumbnailCache;->getHighResLoadingState()Lcom/android/quickstep/TaskThumbnailCache$HighResLoadingState;

    move-result-object p0

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/quickstep/TaskThumbnailCache$HighResLoadingState;->setVisible(Z)V

    return-void
.end method

.method protected onHandleConfigurationChanged()V
    .locals 2

    invoke-direct {p0}, Lcom/android/quickstep/RecentsActivity;->initDeviceProfile()V

    const/4 v0, 0x1

    const v1, 0x2289d8b

    invoke-static {p0, v0, v1}, Lcom/android/launcher3/AbstractFloatingView;->closeOpenViews(Lcom/android/launcher3/views/ActivityContext;ZI)V

    invoke-virtual {p0}, Lcom/android/quickstep/RecentsActivity;->dispatchDeviceProfileChanged()V

    invoke-virtual {p0}, Lcom/android/launcher3/statemanager/StatefulActivity;->reapplyUi()V

    iget-object p0, p0, Lcom/android/quickstep/RecentsActivity;->mDragLayer:Lcom/android/quickstep/fallback/RecentsDragLayer;

    invoke-virtual {p0}, Lcom/android/quickstep/fallback/RecentsDragLayer;->recreateControllers()V

    return-void
.end method

.method public onMultiWindowModeChanged(ZLandroid/content/res/Configuration;)V
    .locals 0

    invoke-virtual {p0}, Lcom/android/quickstep/RecentsActivity;->onHandleConfigurationChanged()V

    invoke-super {p0, p1, p2}, Lcom/android/launcher3/BaseActivity;->onMultiWindowModeChanged(ZLandroid/content/res/Configuration;)V

    return-void
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 0

    invoke-super {p0, p1}, Landroidx/activity/ComponentActivity;->onNewIntent(Landroid/content/Intent;)V

    sget-object p1, Lcom/android/quickstep/RecentsActivity;->ACTIVITY_TRACKER:Lcom/android/launcher3/util/ActivityTracker;

    invoke-virtual {p1, p0}, Lcom/android/launcher3/util/ActivityTracker;->handleNewIntent(Lcom/android/launcher3/BaseActivity;)Z

    return-void
.end method

.method protected onResume()V
    .locals 1

    invoke-super {p0}, Lcom/android/launcher3/statemanager/StatefulActivity;->onResume()V

    invoke-virtual {p0}, Landroid/app/Activity;->getBaseContext()Landroid/content/Context;

    move-result-object p0

    const/4 v0, 0x2

    invoke-static {p0, v0}, Lcom/android/launcher3/compat/AccessibilityManagerCompat;->sendStateEventToTest(Landroid/content/Context;I)V

    return-void
.end method

.method protected onStart()V
    .locals 2

    iget-object v0, p0, Lcom/android/quickstep/RecentsActivity;->mFallbackRecentsView:Lcom/android/quickstep/fallback/FallbackRecentsView;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Lcom/android/quickstep/views/RecentsView;->setContentAlpha(F)V

    invoke-super {p0}, Lcom/android/launcher3/BaseDraggingActivity;->onStart()V

    iget-object p0, p0, Lcom/android/quickstep/RecentsActivity;->mFallbackRecentsView:Lcom/android/quickstep/fallback/FallbackRecentsView;

    invoke-virtual {p0}, Lcom/android/quickstep/views/RecentsView;->updateLocusId()V

    return-void
.end method

.method public bridge synthetic onStateSetEnd(Lcom/android/launcher3/statemanager/BaseState;)V
    .locals 0

    check-cast p1, Lcom/android/quickstep/fallback/RecentsState;

    invoke-virtual {p0, p1}, Lcom/android/quickstep/RecentsActivity;->onStateSetEnd(Lcom/android/quickstep/fallback/RecentsState;)V

    return-void
.end method

.method public onStateSetEnd(Lcom/android/quickstep/fallback/RecentsState;)V
    .locals 1

    invoke-super {p0, p1}, Lcom/android/launcher3/statemanager/StatefulActivity;->onStateSetEnd(Lcom/android/launcher3/statemanager/BaseState;)V

    sget-object v0, Lcom/android/quickstep/fallback/RecentsState;->DEFAULT:Lcom/android/quickstep/fallback/RecentsState;

    if-ne p1, v0, :cond_0

    invoke-virtual {p0}, Landroid/app/Activity;->getBaseContext()Landroid/content/Context;

    move-result-object p0

    const/4 p1, 0x2

    invoke-static {p0, p1}, Lcom/android/launcher3/compat/AccessibilityManagerCompat;->sendStateEventToTest(Landroid/content/Context;I)V

    :cond_0
    return-void
.end method

.method protected onStop()V
    .locals 1

    invoke-super {p0}, Lcom/android/launcher3/statemanager/StatefulActivity;->onStop()V

    const/16 v0, 0x14

    invoke-virtual {p0, v0}, Lcom/android/quickstep/RecentsActivity;->onTrimMemory(I)V

    iget-object p0, p0, Lcom/android/quickstep/RecentsActivity;->mFallbackRecentsView:Lcom/android/quickstep/fallback/FallbackRecentsView;

    invoke-virtual {p0}, Lcom/android/quickstep/views/RecentsView;->updateLocusId()V

    return-void
.end method

.method public onTrimMemory(I)V
    .locals 1

    invoke-super {p0, p1}, Landroidx/activity/ComponentActivity;->onTrimMemory(I)V

    sget-object v0, Lcom/android/quickstep/RecentsModel;->INSTANCE:Lcom/android/launcher3/util/MainThreadInitializedObject;

    invoke-virtual {v0, p0}, Lcom/android/launcher3/util/MainThreadInitializedObject;->get(Landroid/content/Context;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/quickstep/RecentsModel;

    invoke-virtual {p0, p1}, Lcom/android/quickstep/RecentsModel;->onTrimMemory(I)V

    return-void
.end method

.method public bridge synthetic removeOnDeviceProfileChangeListener(Lcom/android/launcher3/DeviceProfile$OnDeviceProfileChangeListener;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/android/launcher3/views/ActivityContext;->removeOnDeviceProfileChangeListener(Lcom/android/launcher3/DeviceProfile$OnDeviceProfileChangeListener;)V

    return-void
.end method

.method public returnToHomescreen()V
    .locals 0

    invoke-super {p0}, Lcom/android/launcher3/BaseDraggingActivity;->returnToHomescreen()V

    return-void
.end method

.method public runOnBindToTouchInteractionService(Ljava/lang/Runnable;)V
    .locals 0

    iget-object p0, p0, Lcom/android/quickstep/RecentsActivity;->mTISBindHelper:Lcom/android/quickstep/util/TISBindHelper;

    invoke-virtual {p0, p1}, Lcom/android/quickstep/util/TISBindHelper;->runOnBindToTouchInteractionService(Ljava/lang/Runnable;)V

    return-void
.end method

.method public bridge synthetic sendPendingIntentWithAnimation(Landroid/view/View;Landroid/app/PendingIntent;Lcom/android/launcher3/model/data/ItemInfo;)Lcom/android/launcher3/util/RunnableList;
    .locals 0
    .param p1    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Lcom/android/launcher3/model/data/ItemInfo;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    invoke-super {p0, p1, p2, p3}, Lcom/android/launcher3/views/ActivityContext;->sendPendingIntentWithAnimation(Landroid/view/View;Landroid/app/PendingIntent;Lcom/android/launcher3/model/data/ItemInfo;)Lcom/android/launcher3/util/RunnableList;

    move-result-object p0

    return-object p0
.end method

.method public setTaskbarUIController(Lcom/android/launcher3/taskbar/FallbackTaskbarUIController;)V
    .locals 0

    iput-object p1, p0, Lcom/android/quickstep/RecentsActivity;->mTaskbarUIController:Lcom/android/launcher3/taskbar/FallbackTaskbarUIController;

    return-void
.end method

.method public setTipsViewState(I)V
    .locals 2

    and-int/lit8 v0, p1, 0x1

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    const/16 v0, 0x8

    :goto_0
    and-int/lit8 p1, p1, 0x2

    if-eqz p1, :cond_1

    const/4 v1, 0x1

    :cond_1
    iget-object p1, p0, Lcom/android/quickstep/RecentsActivity;->mOverviewTip:Landroid/view/View;

    if-eqz p1, :cond_2

    invoke-virtual {p1, v1}, Landroid/view/View;->setActivated(Z)V

    iget-object p0, p0, Lcom/android/quickstep/RecentsActivity;->mOverviewTip:Landroid/view/View;

    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    :cond_2
    return-void
.end method

.method protected setupViews()V
    .locals 11

    const v0, 0x7f0e0075

    invoke-virtual {p0, v0}, Lcom/android/launcher3/statemanager/StatefulActivity;->inflateRootView(I)V

    invoke-virtual {p0}, Lcom/android/launcher3/statemanager/StatefulActivity;->getRootView()Lcom/android/launcher3/LauncherRootView;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroidx/activity/ComponentActivity;->setContentView(Landroid/view/View;)V

    const v0, 0x7f0b0156

    invoke-virtual {p0, v0}, Lcom/android/launcher3/statemanager/StatefulActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/quickstep/fallback/RecentsDragLayer;

    iput-object v0, p0, Lcom/android/quickstep/RecentsActivity;->mDragLayer:Lcom/android/quickstep/fallback/RecentsDragLayer;

    const v0, 0x7f0b0320

    invoke-virtual {p0, v0}, Lcom/android/launcher3/statemanager/StatefulActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/views/ScrimView;

    iput-object v0, p0, Lcom/android/quickstep/RecentsActivity;->mScrimView:Lcom/android/launcher3/views/ScrimView;

    const v0, 0x7f0b02bd

    invoke-virtual {p0, v0}, Lcom/android/launcher3/statemanager/StatefulActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/quickstep/fallback/FallbackRecentsView;

    iput-object v0, p0, Lcom/android/quickstep/RecentsActivity;->mFallbackRecentsView:Lcom/android/quickstep/fallback/FallbackRecentsView;

    const v0, 0x7f0b02bc

    invoke-virtual {p0, v0}, Lcom/android/launcher3/statemanager/StatefulActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/quickstep/views/OverviewActionsView;

    iput-object v0, p0, Lcom/android/quickstep/RecentsActivity;->mActionsView:Lcom/android/quickstep/views/OverviewActionsView;

    const v0, 0x7f0b02be

    invoke-virtual {p0, v0}, Lcom/android/launcher3/statemanager/StatefulActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/quickstep/RecentsActivity;->mOverviewTip:Landroid/view/View;

    sget-object v0, Lcom/android/launcher3/graphics/SysUiScrim;->SYSUI_PROGRESS:Landroid/util/FloatProperty;

    invoke-virtual {p0}, Lcom/android/launcher3/statemanager/StatefulActivity;->getRootView()Lcom/android/launcher3/LauncherRootView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/launcher3/LauncherRootView;->getSysUiScrim()Lcom/android/launcher3/graphics/SysUiScrim;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/util/FloatProperty;->set(Ljava/lang/Object;Ljava/lang/Float;)V

    new-instance v0, Lcom/android/quickstep/util/SplitSelectStateController;

    iget-object v5, p0, Lcom/android/quickstep/RecentsActivity;->mHandler:Landroid/os/Handler;

    invoke-virtual {p0}, Lcom/android/quickstep/RecentsActivity;->getStateManager()Lcom/android/launcher3/statemanager/StateManager;

    move-result-object v6

    invoke-virtual {p0}, Lcom/android/launcher3/BaseActivity;->getStatsLogManager()Lcom/android/launcher3/logging/StatsLogManager;

    move-result-object v8

    sget-object v1, Lcom/android/quickstep/SystemUiProxy;->INSTANCE:Lcom/android/launcher3/util/MainThreadInitializedObject;

    invoke-virtual {v1, p0}, Lcom/android/launcher3/util/MainThreadInitializedObject;->get(Landroid/content/Context;)Ljava/lang/Object;

    move-result-object v1

    move-object v9, v1

    check-cast v9, Lcom/android/quickstep/SystemUiProxy;

    sget-object v1, Lcom/android/quickstep/RecentsModel;->INSTANCE:Lcom/android/launcher3/util/MainThreadInitializedObject;

    invoke-virtual {v1, p0}, Lcom/android/launcher3/util/MainThreadInitializedObject;->get(Landroid/content/Context;)Ljava/lang/Object;

    move-result-object v1

    move-object v10, v1

    check-cast v10, Lcom/android/quickstep/RecentsModel;

    const/4 v7, 0x0

    move-object v3, v0

    move-object v4, p0

    invoke-direct/range {v3 .. v10}, Lcom/android/quickstep/util/SplitSelectStateController;-><init>(Landroid/content/Context;Landroid/os/Handler;Lcom/android/launcher3/statemanager/StateManager;Lcom/android/launcher3/statehandlers/DepthController;Lcom/android/launcher3/logging/StatsLogManager;Lcom/android/quickstep/SystemUiProxy;Lcom/android/quickstep/RecentsModel;)V

    iget-object v1, p0, Lcom/android/quickstep/RecentsActivity;->mDragLayer:Lcom/android/quickstep/fallback/RecentsDragLayer;

    invoke-virtual {v1}, Lcom/android/quickstep/fallback/RecentsDragLayer;->recreateControllers()V

    iget-object v1, p0, Lcom/android/quickstep/RecentsActivity;->mFallbackRecentsView:Lcom/android/quickstep/fallback/FallbackRecentsView;

    iget-object v2, p0, Lcom/android/quickstep/RecentsActivity;->mActionsView:Lcom/android/quickstep/views/OverviewActionsView;

    invoke-virtual {v1, v2, v0}, Lcom/android/quickstep/fallback/FallbackRecentsView;->init(Lcom/android/quickstep/views/OverviewActionsView;Lcom/android/quickstep/util/SplitSelectStateController;)V

    new-instance v0, Lcom/android/quickstep/util/TISBindHelper;

    new-instance v1, Lcom/android/quickstep/j4;

    invoke-direct {v1, p0}, Lcom/android/quickstep/j4;-><init>(Lcom/android/quickstep/RecentsActivity;)V

    invoke-direct {v0, p0, v1}, Lcom/android/quickstep/util/TISBindHelper;-><init>(Landroid/content/Context;Ljava/util/function/Consumer;)V

    iput-object v0, p0, Lcom/android/quickstep/RecentsActivity;->mTISBindHelper:Lcom/android/quickstep/util/TISBindHelper;

    invoke-static {p0}, Lcom/android/quickstep/utils/ThumbnailOverlayHelp;->update(Landroid/content/Context;)V

    sget-object v0, Lcom/android/launcher3/util/ScreenOnTracker;->INSTANCE:Lcom/android/launcher3/util/MainThreadInitializedObject;

    invoke-virtual {v0, p0}, Lcom/android/launcher3/util/MainThreadInitializedObject;->get(Landroid/content/Context;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/util/ScreenOnTracker;

    iget-object p0, p0, Lcom/android/quickstep/RecentsActivity;->mScreenOnListener:Lcom/android/launcher3/util/ScreenOnTracker$ScreenOnListener;

    invoke-virtual {v0, p0}, Lcom/android/launcher3/util/ScreenOnTracker;->addListener(Lcom/android/launcher3/util/ScreenOnTracker$ScreenOnListener;)V

    return-void
.end method

.method public bridge synthetic startActivitySafely(Landroid/view/View;Landroid/content/Intent;Lcom/android/launcher3/model/data/ItemInfo;)Lcom/android/launcher3/util/RunnableList;
    .locals 0
    .param p3    # Lcom/android/launcher3/model/data/ItemInfo;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    invoke-super {p0, p1, p2, p3}, Lcom/android/launcher3/views/ActivityContext;->startActivitySafely(Landroid/view/View;Landroid/content/Intent;Lcom/android/launcher3/model/data/ItemInfo;)Lcom/android/launcher3/util/RunnableList;

    move-result-object p0

    return-object p0
.end method

.method public startHome()V
    .locals 2

    invoke-virtual {p0}, Lcom/android/quickstep/RecentsActivity;->getOverviewPanel()Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/quickstep/views/RecentsView;

    new-instance v1, Lcom/android/quickstep/i4;

    invoke-direct {v1, p0, v0}, Lcom/android/quickstep/i4;-><init>(Lcom/android/quickstep/RecentsActivity;Lcom/android/quickstep/views/RecentsView;)V

    invoke-virtual {v0, v1}, Lcom/android/quickstep/views/RecentsView;->switchToScreenshot(Ljava/lang/Runnable;)V

    return-void
.end method

.method public bridge synthetic startShortcut(Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Rect;Landroid/os/Bundle;Landroid/os/UserHandle;)V
    .locals 0

    invoke-super/range {p0 .. p5}, Lcom/android/launcher3/views/ActivityContext;->startShortcut(Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Rect;Landroid/os/Bundle;Landroid/os/UserHandle;)V

    return-void
.end method

.method public bridge synthetic startShortcutIntentSafely(Landroid/content/Intent;Landroid/os/Bundle;Lcom/android/launcher3/model/data/ItemInfo;)V
    .locals 0

    invoke-super {p0, p1, p2, p3}, Lcom/android/launcher3/views/ActivityContext;->startShortcutIntentSafely(Landroid/content/Intent;Landroid/os/Bundle;Lcom/android/launcher3/model/data/ItemInfo;)V

    return-void
.end method

.method public bridge synthetic startSplitSelection(Lcom/android/launcher3/util/SplitConfigurationOptions$SplitSelectSource;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/android/launcher3/views/ActivityContext;->startSplitSelection(Lcom/android/launcher3/util/SplitConfigurationOptions$SplitSelectSource;)V

    return-void
.end method

.method public bridge synthetic updateOpenFolderPosition([ILandroid/graphics/Rect;II)V
    .locals 0

    invoke-super {p0, p1, p2, p3, p4}, Lcom/android/launcher3/views/ActivityContext;->updateOpenFolderPosition([ILandroid/graphics/Rect;II)V

    return-void
.end method
