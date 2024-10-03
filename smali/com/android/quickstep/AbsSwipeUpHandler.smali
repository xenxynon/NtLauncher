.class public abstract Lcom/android/quickstep/AbsSwipeUpHandler;
.super Lcom/android/quickstep/SwipeUpAnimationLogic;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnApplyWindowInsetsListener;


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x1e
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/quickstep/AbsSwipeUpHandler$Factory;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lcom/android/launcher3/statemanager/StatefulActivity<",
        "TS;>;Q:",
        "Lcom/android/quickstep/views/RecentsView;",
        "S::",
        "Lcom/android/launcher3/statemanager/BaseState<",
        "TS;>;>",
        "Lcom/android/quickstep/SwipeUpAnimationLogic;",
        "Landroid/view/View$OnApplyWindowInsetsListener;"
    }
.end annotation


# static fields
.field public static final ALL_APPS_SHIFT_THRESHOLD:F = 2.0f

.field private static final ANIM_CALLBACK_DELAYED_MILLS:J = 0x15eL

.field private static FLAG_COUNT:I = 0x0

.field private static final LAUNCHER_UI_STATES:I

.field private static final LOG_NO_OP_PAGE_INDEX:I = -0x1

.field private static final MAX_QUICK_SWITCH_RECENTS_SCALE_PROGRESS:F = 0.07f

.field public static final MAX_SWIPE_DURATION:J = 0x15eL

.field public static final MIN_PROGRESS_FOR_OVERVIEW:F = 0.7f

.field public static final RECENTS_ATTACH_DURATION:J = 0x12cL

.field private static final SCREENSHOT_CAPTURED_EVT:Ljava/lang/String; = "ScreenshotCaptured"

.field private static final SPLASH_ANIMATION_DURATION:I = 0x15d

.field private static final SPLASH_APP_REVEAL_DELAY:I = 0x53

.field private static final SPLASH_APP_REVEAL_DURATION:I = 0x10a

.field private static final SPLASH_FADE_OUT_DURATION:I = 0x85

.field private static final STATE_APP_CONTROLLER_RECEIVED:I

.field private static final STATE_CAPTURE_SCREENSHOT:I

.field private static final STATE_CURRENT_TASK_FINISHED:I

.field private static final STATE_FINISH_WITH_NO_END:I

.field private static final STATE_GESTURE_CANCELLED:I

.field private static final STATE_GESTURE_COMPLETED:I

.field private static final STATE_GESTURE_STARTED:I

.field protected static final STATE_HANDLER_INVALIDATED:I

.field protected static final STATE_LAUNCHER_BIND_TO_SERVICE:I

.field protected static final STATE_LAUNCHER_DRAWN:I

.field protected static final STATE_LAUNCHER_PRESENT:I

.field protected static final STATE_LAUNCHER_STARTED:I

.field private static final STATE_NAMES:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final STATE_RESUME_LAST_TASK:I

.field private static final STATE_SCALED_CONTROLLER_HOME:I

.field private static final STATE_SCALED_CONTROLLER_RECENTS:I

.field protected static final STATE_SCREENSHOT_CAPTURED:I

.field private static final STATE_SCREENSHOT_VIEW_SHOWN:I

.field private static final STATE_SETTLED_ON_ALL_APPS:I

.field private static final STATE_START_NEW_TASK:I

.field private static final SWIPE_DURATION_MULTIPLIER:F

.field private static final TAG:Ljava/lang/String; = "AbsSwipeUpHandler"


# instance fields
.field protected mActivity:Lcom/android/launcher3/statemanager/StatefulActivity;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field protected final mActivityInitListener:Lcom/android/quickstep/util/ActivityInitListener;

.field protected final mActivityInterface:Lcom/android/quickstep/BaseActivityInterface;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/quickstep/BaseActivityInterface<",
            "TS;TT;>;"
        }
    .end annotation
.end field

.field private final mActivityRestartListener:Lcom/android/systemui/shared/system/TaskStackChangeListener;

.field private mAnimationFactory:Lcom/android/quickstep/BaseActivityInterface$AnimationFactory;

.field private mCanSlowSwipeGoHome:Z

.field protected mCanceled:Z

.field private mContinuingLastGesture:Z

.field mCurrentVelocityPxPerMs:F

.field protected mDeferredCleanupRecentsAnimationController:Lcom/android/quickstep/RecentsAnimationController;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field mFlingThreshold:F

.field protected mGestureEndCallback:Ljava/lang/Runnable;

.field private mGestureStarted:Z

.field private mHasEndedLauncherTransition:Z

.field private mHasMotionEverBeenPaused:Z

.field protected final mInputConsumerProxy:Lcom/android/quickstep/util/InputConsumerProxy;

.field private mIsDividerShown:Z

.field private mIsInAllAppsRegion:Z

.field private mIsLikelyToStartNewTask:Z

.field private mIsMotionPaused:Z

.field protected mIsSwipingPipToHome:Z

.field private final mIsTaskbarAllAppsOpen:Z

.field private final mIsTransientTaskbar:Z

.field private mLastTaskIsTranslucent:Z

.field private mLauncherFrameDrawnTime:J

.field private mLauncherTransitionController:Lcom/android/quickstep/util/AnimatorControllerWithResistance;

.field private final mLifecycleCallbacks:Lcom/android/launcher3/util/ActivityLifecycleCallbacksAdapter;

.field private mLogDirectionUpOrLeft:Z

.field private final mOnDeferredActivityLaunch:Ljava/lang/Runnable;

.field private final mOnRecentsScrollListener:Landroid/view/ViewTreeObserver$OnScrollChangedListener;

.field private mOpenSmoothToRecents:Landroid/animation/ValueAnimator;

.field private mParallelRunningAnim:Landroid/animation/Animator;

.field private final mQuickSwitchScaleScrollThreshold:F

.field protected mRecentsAnimationController:Lcom/android/quickstep/RecentsAnimationController;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private final mRecentsAnimationStartCallbacks:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field

.field protected mRecentsAnimationTargets:Lcom/android/quickstep/RecentsAnimationTargets;

.field protected mRecentsView:Lcom/android/quickstep/views/RecentsView;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TQ;"
        }
    .end annotation
.end field

.field private mRecentsViewScrollLinked:Z

.field private mRunningWindowAnim:[Lcom/android/quickstep/SwipeUpAnimationLogic$RunningWindowAnim;

.field private final mSplashMainWindowShiftLength:I

.field private mStartMovingTasks:Z

.field protected mStateCallback:Lcom/android/quickstep/MultiStateCallback;

.field private mSwipePipToHomeAnimator:Lcom/android/quickstep/util/SwipePipToHomeAnimator;

.field private final mSwipePipToHomeAnimators:[Lcom/android/quickstep/util/SwipePipToHomeAnimator;

.field private mSwipePipToHomeReleaseCheck:Lcom/android/quickstep/RemoteAnimationTargets$ReleaseCheck;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field protected final mTaskAnimationManager:Lcom/android/quickstep/TaskAnimationManager;

.field private mTaskSnapshot:Lcom/android/systemui/shared/recents/model/ThumbnailData;

.field private final mTaskbarAlreadyOpen:Z

.field private final mTaskbarAppWindowThreshold:I

.field private final mTaskbarCatchUpThreshold:I

.field private final mTaskbarHomeOverviewThreshold:I

.field private final mTouchTimeMs:J

.field private mWasLauncherAlreadyVisible:Z

.field private mWindowModeTipEnterShift:F

.field private mWindowModeTipShowShift:F

.field mWindowModeTipsState:I


# direct methods
.method static constructor <clinit>()V
    .locals 5

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/android/quickstep/AbsSwipeUpHandler;->STATE_NAMES:Ljava/util/ArrayList;

    const/4 v0, 0x0

    sput v0, Lcom/android/quickstep/AbsSwipeUpHandler;->FLAG_COUNT:I

    const-string v0, "STATE_LAUNCHER_PRESENT"

    invoke-static {v0}, Lcom/android/quickstep/AbsSwipeUpHandler;->getNextStateFlag(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/android/quickstep/AbsSwipeUpHandler;->STATE_LAUNCHER_PRESENT:I

    const-string v1, "STATE_LAUNCHER_STARTED"

    invoke-static {v1}, Lcom/android/quickstep/AbsSwipeUpHandler;->getNextStateFlag(Ljava/lang/String;)I

    move-result v1

    sput v1, Lcom/android/quickstep/AbsSwipeUpHandler;->STATE_LAUNCHER_STARTED:I

    const-string v2, "STATE_LAUNCHER_DRAWN"

    invoke-static {v2}, Lcom/android/quickstep/AbsSwipeUpHandler;->getNextStateFlag(Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/android/quickstep/AbsSwipeUpHandler;->STATE_LAUNCHER_DRAWN:I

    const-string v3, "STATE_LAUNCHER_BIND_TO_SERVICE"

    invoke-static {v3}, Lcom/android/quickstep/AbsSwipeUpHandler;->getNextStateFlag(Ljava/lang/String;)I

    move-result v3

    sput v3, Lcom/android/quickstep/AbsSwipeUpHandler;->STATE_LAUNCHER_BIND_TO_SERVICE:I

    const-string v4, "STATE_APP_CONTROLLER_RECEIVED"

    invoke-static {v4}, Lcom/android/quickstep/AbsSwipeUpHandler;->getNextStateFlag(Ljava/lang/String;)I

    move-result v4

    sput v4, Lcom/android/quickstep/AbsSwipeUpHandler;->STATE_APP_CONTROLLER_RECEIVED:I

    const-string v4, "STATE_SCALED_CONTROLLER_HOME"

    invoke-static {v4}, Lcom/android/quickstep/AbsSwipeUpHandler;->getNextStateFlag(Ljava/lang/String;)I

    move-result v4

    sput v4, Lcom/android/quickstep/AbsSwipeUpHandler;->STATE_SCALED_CONTROLLER_HOME:I

    const-string v4, "STATE_SCALED_CONTROLLER_RECENTS"

    invoke-static {v4}, Lcom/android/quickstep/AbsSwipeUpHandler;->getNextStateFlag(Ljava/lang/String;)I

    move-result v4

    sput v4, Lcom/android/quickstep/AbsSwipeUpHandler;->STATE_SCALED_CONTROLLER_RECENTS:I

    const-string v4, "STATE_HANDLER_INVALIDATED"

    invoke-static {v4}, Lcom/android/quickstep/AbsSwipeUpHandler;->getNextStateFlag(Ljava/lang/String;)I

    move-result v4

    sput v4, Lcom/android/quickstep/AbsSwipeUpHandler;->STATE_HANDLER_INVALIDATED:I

    const-string v4, "STATE_GESTURE_STARTED"

    invoke-static {v4}, Lcom/android/quickstep/AbsSwipeUpHandler;->getNextStateFlag(Ljava/lang/String;)I

    move-result v4

    sput v4, Lcom/android/quickstep/AbsSwipeUpHandler;->STATE_GESTURE_STARTED:I

    const-string v4, "STATE_GESTURE_CANCELLED"

    invoke-static {v4}, Lcom/android/quickstep/AbsSwipeUpHandler;->getNextStateFlag(Ljava/lang/String;)I

    move-result v4

    sput v4, Lcom/android/quickstep/AbsSwipeUpHandler;->STATE_GESTURE_CANCELLED:I

    const-string v4, "STATE_GESTURE_COMPLETED"

    invoke-static {v4}, Lcom/android/quickstep/AbsSwipeUpHandler;->getNextStateFlag(Ljava/lang/String;)I

    move-result v4

    sput v4, Lcom/android/quickstep/AbsSwipeUpHandler;->STATE_GESTURE_COMPLETED:I

    const-string v4, "STATE_CAPTURE_SCREENSHOT"

    invoke-static {v4}, Lcom/android/quickstep/AbsSwipeUpHandler;->getNextStateFlag(Ljava/lang/String;)I

    move-result v4

    sput v4, Lcom/android/quickstep/AbsSwipeUpHandler;->STATE_CAPTURE_SCREENSHOT:I

    const-string v4, "STATE_SCREENSHOT_CAPTURED"

    invoke-static {v4}, Lcom/android/quickstep/AbsSwipeUpHandler;->getNextStateFlag(Ljava/lang/String;)I

    move-result v4

    sput v4, Lcom/android/quickstep/AbsSwipeUpHandler;->STATE_SCREENSHOT_CAPTURED:I

    const-string v4, "STATE_SCREENSHOT_VIEW_SHOWN"

    invoke-static {v4}, Lcom/android/quickstep/AbsSwipeUpHandler;->getNextStateFlag(Ljava/lang/String;)I

    move-result v4

    sput v4, Lcom/android/quickstep/AbsSwipeUpHandler;->STATE_SCREENSHOT_VIEW_SHOWN:I

    const-string v4, "STATE_RESUME_LAST_TASK"

    invoke-static {v4}, Lcom/android/quickstep/AbsSwipeUpHandler;->getNextStateFlag(Ljava/lang/String;)I

    move-result v4

    sput v4, Lcom/android/quickstep/AbsSwipeUpHandler;->STATE_RESUME_LAST_TASK:I

    const-string v4, "STATE_START_NEW_TASK"

    invoke-static {v4}, Lcom/android/quickstep/AbsSwipeUpHandler;->getNextStateFlag(Ljava/lang/String;)I

    move-result v4

    sput v4, Lcom/android/quickstep/AbsSwipeUpHandler;->STATE_START_NEW_TASK:I

    const-string v4, "STATE_CURRENT_TASK_FINISHED"

    invoke-static {v4}, Lcom/android/quickstep/AbsSwipeUpHandler;->getNextStateFlag(Ljava/lang/String;)I

    move-result v4

    sput v4, Lcom/android/quickstep/AbsSwipeUpHandler;->STATE_CURRENT_TASK_FINISHED:I

    const-string v4, "STATE_FINISH_WITH_NO_END"

    invoke-static {v4}, Lcom/android/quickstep/AbsSwipeUpHandler;->getNextStateFlag(Ljava/lang/String;)I

    move-result v4

    sput v4, Lcom/android/quickstep/AbsSwipeUpHandler;->STATE_FINISH_WITH_NO_END:I

    const-string v4, "STATE_SETTLED_ON_ALL_APPS"

    invoke-static {v4}, Lcom/android/quickstep/AbsSwipeUpHandler;->getNextStateFlag(Ljava/lang/String;)I

    move-result v4

    sput v4, Lcom/android/quickstep/AbsSwipeUpHandler;->STATE_SETTLED_ON_ALL_APPS:I

    or-int/2addr v0, v2

    or-int/2addr v0, v1

    or-int/2addr v0, v3

    sput v0, Lcom/android/quickstep/AbsSwipeUpHandler;->LAUNCHER_UI_STATES:I

    const v0, 0x3fb6db6e

    const v1, 0x40555555

    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result v0

    sput v0, Lcom/android/quickstep/AbsSwipeUpHandler;->SWIPE_DURATION_MULTIPLIER:F

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/quickstep/RecentsAnimationDeviceState;Lcom/android/quickstep/TaskAnimationManager;Lcom/android/quickstep/GestureState;JZLcom/android/systemui/shared/system/InputConsumerController;)V
    .locals 12

    move-object v0, p0

    move-object v7, p1

    move-object v1, p2

    move-object/from16 v2, p4

    invoke-direct {p0, p1, p2, v2}, Lcom/android/quickstep/SwipeUpAnimationLogic;-><init>(Landroid/content/Context;Lcom/android/quickstep/RecentsAnimationDeviceState;Lcom/android/quickstep/GestureState;)V

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, v0, Lcom/android/quickstep/AbsSwipeUpHandler;->mRecentsAnimationStartCallbacks:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/quickstep/h0;

    invoke-direct {v1, p0}, Lcom/android/quickstep/h0;-><init>(Lcom/android/quickstep/AbsSwipeUpHandler;)V

    iput-object v1, v0, Lcom/android/quickstep/AbsSwipeUpHandler;->mOnRecentsScrollListener:Landroid/view/ViewTreeObserver$OnScrollChangedListener;

    const/4 v8, 0x0

    iput-boolean v8, v0, Lcom/android/quickstep/AbsSwipeUpHandler;->mRecentsViewScrollLinked:Z

    new-instance v1, Lcom/android/quickstep/AbsSwipeUpHandler$1;

    invoke-direct {v1, p0}, Lcom/android/quickstep/AbsSwipeUpHandler$1;-><init>(Lcom/android/quickstep/AbsSwipeUpHandler;)V

    iput-object v1, v0, Lcom/android/quickstep/AbsSwipeUpHandler;->mLifecycleCallbacks:Lcom/android/launcher3/util/ActivityLifecycleCallbacksAdapter;

    sget-object v1, Lcom/android/quickstep/s0;->a:Lcom/android/quickstep/s0;

    iput-object v1, v0, Lcom/android/quickstep/AbsSwipeUpHandler;->mAnimationFactory:Lcom/android/quickstep/BaseActivityInterface$AnimationFactory;

    iput v8, v0, Lcom/android/quickstep/AbsSwipeUpHandler;->mWindowModeTipsState:I

    iget-object v1, v0, Lcom/android/quickstep/SwipeUpAnimationLogic;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v3, 0x7f0704c2

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    iput v1, v0, Lcom/android/quickstep/AbsSwipeUpHandler;->mFlingThreshold:F

    const/4 v9, 0x1

    iput-boolean v9, v0, Lcom/android/quickstep/AbsSwipeUpHandler;->mLogDirectionUpOrLeft:Z

    new-instance v1, Lcom/android/quickstep/y;

    invoke-direct {v1, p0}, Lcom/android/quickstep/y;-><init>(Lcom/android/quickstep/AbsSwipeUpHandler;)V

    iput-object v1, v0, Lcom/android/quickstep/AbsSwipeUpHandler;->mOnDeferredActivityLaunch:Ljava/lang/Runnable;

    const/4 v1, 0x2

    new-array v1, v1, [Lcom/android/quickstep/util/SwipePipToHomeAnimator;

    iput-object v1, v0, Lcom/android/quickstep/AbsSwipeUpHandler;->mSwipePipToHomeAnimators:[Lcom/android/quickstep/util/SwipePipToHomeAnimator;

    iput-boolean v9, v0, Lcom/android/quickstep/AbsSwipeUpHandler;->mCanSlowSwipeGoHome:Z

    iput-boolean v9, v0, Lcom/android/quickstep/AbsSwipeUpHandler;->mIsDividerShown:Z

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/android/quickstep/AbsSwipeUpHandler;->mSwipePipToHomeReleaseCheck:Lcom/android/quickstep/RemoteAnimationTargets$ReleaseCheck;

    new-instance v1, Lcom/android/quickstep/AbsSwipeUpHandler$7;

    invoke-direct {v1, p0}, Lcom/android/quickstep/AbsSwipeUpHandler$7;-><init>(Lcom/android/quickstep/AbsSwipeUpHandler;)V

    iput-object v1, v0, Lcom/android/quickstep/AbsSwipeUpHandler;->mActivityRestartListener:Lcom/android/systemui/shared/system/TaskStackChangeListener;

    invoke-virtual/range {p4 .. p4}, Lcom/android/quickstep/GestureState;->getActivityInterface()Lcom/android/quickstep/BaseActivityInterface;

    move-result-object v10

    iput-object v10, v0, Lcom/android/quickstep/AbsSwipeUpHandler;->mActivityInterface:Lcom/android/quickstep/BaseActivityInterface;

    new-instance v1, Lcom/android/quickstep/i1;

    invoke-direct {v1, p0}, Lcom/android/quickstep/i1;-><init>(Lcom/android/quickstep/AbsSwipeUpHandler;)V

    invoke-virtual {v10, v1}, Lcom/android/quickstep/BaseActivityInterface;->createActivityInitListener(Ljava/util/function/Predicate;)Lcom/android/quickstep/util/ActivityInitListener;

    move-result-object v1

    iput-object v1, v0, Lcom/android/quickstep/AbsSwipeUpHandler;->mActivityInitListener:Lcom/android/quickstep/util/ActivityInitListener;

    new-instance v11, Lcom/android/quickstep/util/InputConsumerProxy;

    new-instance v3, Lcom/android/quickstep/k1;

    invoke-direct {v3, p0}, Lcom/android/quickstep/k1;-><init>(Lcom/android/quickstep/AbsSwipeUpHandler;)V

    new-instance v5, Lcom/android/quickstep/c;

    invoke-direct {v5, p0}, Lcom/android/quickstep/c;-><init>(Lcom/android/quickstep/AbsSwipeUpHandler;)V

    new-instance v6, Lcom/android/quickstep/util/InputProxyHandlerFactory;

    iget-object v1, v0, Lcom/android/quickstep/SwipeUpAnimationLogic;->mGestureState:Lcom/android/quickstep/GestureState;

    invoke-direct {v6, v10, v1}, Lcom/android/quickstep/util/InputProxyHandlerFactory;-><init>(Lcom/android/quickstep/BaseActivityInterface;Lcom/android/quickstep/GestureState;)V

    move-object v1, v11

    move-object v2, p1

    move-object/from16 v4, p8

    invoke-direct/range {v1 .. v6}, Lcom/android/quickstep/util/InputConsumerProxy;-><init>(Landroid/content/Context;Ljava/util/function/Supplier;Lcom/android/systemui/shared/system/InputConsumerController;Ljava/lang/Runnable;Ljava/util/function/Supplier;)V

    iput-object v11, v0, Lcom/android/quickstep/AbsSwipeUpHandler;->mInputConsumerProxy:Lcom/android/quickstep/util/InputConsumerProxy;

    move-object v1, p3

    iput-object v1, v0, Lcom/android/quickstep/AbsSwipeUpHandler;->mTaskAnimationManager:Lcom/android/quickstep/TaskAnimationManager;

    move-wide/from16 v1, p5

    iput-wide v1, v0, Lcom/android/quickstep/AbsSwipeUpHandler;->mTouchTimeMs:J

    move/from16 v1, p7

    iput-boolean v1, v0, Lcom/android/quickstep/AbsSwipeUpHandler;->mContinuingLastGesture:Z

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0704c1

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    iput v2, v0, Lcom/android/quickstep/AbsSwipeUpHandler;->mQuickSwitchScaleScrollThreshold:F

    const v2, 0x7f0704fd

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    neg-int v2, v2

    iput v2, v0, Lcom/android/quickstep/AbsSwipeUpHandler;->mSplashMainWindowShiftLength:I

    iget-object v2, v0, Lcom/android/quickstep/SwipeUpAnimationLogic;->mRemoteTargetHandles:[Lcom/android/quickstep/RemoteTargetGluer$RemoteTargetHandle;

    aget-object v2, v2, v8

    invoke-virtual {v2}, Lcom/android/quickstep/RemoteTargetGluer$RemoteTargetHandle;->getTaskViewSimulator()Lcom/android/quickstep/util/TaskViewSimulator;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/quickstep/util/TaskViewSimulator;->getOrientationState()Lcom/android/quickstep/util/RecentsOrientedState;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/quickstep/util/RecentsOrientedState;->getLauncherDeviceProfile()Lcom/android/launcher3/DeviceProfile;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/quickstep/AbsSwipeUpHandler;->initTransitionEndpoints(Lcom/android/launcher3/DeviceProfile;)V

    invoke-direct {p0}, Lcom/android/quickstep/AbsSwipeUpHandler;->initStateCallbacks()V

    iget-object v2, v0, Lcom/android/quickstep/SwipeUpAnimationLogic;->mDp:Lcom/android/launcher3/DeviceProfile;

    iget-boolean v2, v2, Lcom/android/launcher3/DeviceProfile;->isTaskbarPresent:Z

    if-eqz v2, :cond_0

    iget-object v2, v0, Lcom/android/quickstep/AbsSwipeUpHandler;->mActivity:Lcom/android/launcher3/statemanager/StatefulActivity;

    invoke-static {v2}, Lcom/android/launcher3/util/DisplayController;->isTransientTaskbar(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_0

    move v2, v9

    goto :goto_0

    :cond_0
    move v2, v8

    :goto_0
    iput-boolean v2, v0, Lcom/android/quickstep/AbsSwipeUpHandler;->mIsTransientTaskbar:Z

    invoke-virtual {v10}, Lcom/android/quickstep/BaseActivityInterface;->getTaskbarController()Lcom/android/launcher3/taskbar/TaskbarUIController;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Lcom/android/launcher3/taskbar/TaskbarUIController;->isTaskbarStashed()Z

    move-result v3

    if-nez v3, :cond_1

    move v3, v9

    goto :goto_1

    :cond_1
    move v3, v8

    :goto_1
    iput-boolean v3, v0, Lcom/android/quickstep/AbsSwipeUpHandler;->mTaskbarAlreadyOpen:Z

    if-eqz v2, :cond_2

    invoke-virtual {v2}, Lcom/android/launcher3/taskbar/TaskbarUIController;->isTaskbarAllAppsOpen()Z

    move-result v2

    if-eqz v2, :cond_2

    move v2, v9

    goto :goto_2

    :cond_2
    move v2, v8

    :goto_2
    iput-boolean v2, v0, Lcom/android/quickstep/AbsSwipeUpHandler;->mIsTaskbarAllAppsOpen:Z

    const v2, 0x7f07052a

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, v0, Lcom/android/quickstep/AbsSwipeUpHandler;->mTaskbarAppWindowThreshold:I

    if-nez v3, :cond_4

    iget-object v2, v0, Lcom/android/quickstep/SwipeUpAnimationLogic;->mGestureState:Lcom/android/quickstep/GestureState;

    invoke-virtual {v2}, Lcom/android/quickstep/GestureState;->isTrackpadGesture()Z

    move-result v2

    if-eqz v2, :cond_3

    goto :goto_3

    :cond_3
    move v9, v8

    :cond_4
    :goto_3
    if-eqz v9, :cond_5

    goto :goto_4

    :cond_5
    const v2, 0x7f070546

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v8

    :goto_4
    iput v8, v0, Lcom/android/quickstep/AbsSwipeUpHandler;->mTaskbarHomeOverviewThreshold:I

    const v2, 0x7f070531

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, v0, Lcom/android/quickstep/AbsSwipeUpHandler;->mTaskbarCatchUpThreshold:I

    return-void
.end method

.method public static synthetic A(Lcom/android/quickstep/AbsSwipeUpHandler;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/quickstep/AbsSwipeUpHandler;->lambda$onDeferredActivityLaunch$8()V

    return-void
.end method

.method public static synthetic B(I)Lcom/android/quickstep/util/ActiveGestureErrorDetector$GestureEvent;
    .locals 0

    invoke-static {p0}, Lcom/android/quickstep/AbsSwipeUpHandler;->getTrackedEventForState(I)Lcom/android/quickstep/util/ActiveGestureErrorDetector$GestureEvent;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic C(Lcom/android/quickstep/AbsSwipeUpHandler;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/quickstep/AbsSwipeUpHandler;->lambda$updateThumbnail$25()V

    return-void
.end method

.method public static synthetic D(Lcom/android/quickstep/AbsSwipeUpHandler;Lcom/android/systemui/shared/recents/model/ThumbnailData;IZ)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/android/quickstep/AbsSwipeUpHandler;->lambda$switchToScreenshot$23(Lcom/android/systemui/shared/recents/model/ThumbnailData;IZ)V

    return-void
.end method

.method public static synthetic E(Lcom/android/quickstep/AbsSwipeUpHandler;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/quickstep/AbsSwipeUpHandler;->lambda$setupLauncherUiAfterSwipeUpToRecentsAnimation$31()V

    return-void
.end method

.method public static synthetic F(Lcom/android/quickstep/util/SurfaceTransactionApplier;Lcom/android/quickstep/RemoteTargetGluer$RemoteTargetHandle;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/android/quickstep/AbsSwipeUpHandler;->lambda$linkRecentsViewScroll$32(Lcom/android/quickstep/util/SurfaceTransactionApplier;Lcom/android/quickstep/RemoteTargetGluer$RemoteTargetHandle;)V

    return-void
.end method

.method public static synthetic G(Lcom/android/quickstep/AbsSwipeUpHandler;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/quickstep/AbsSwipeUpHandler;->startInterceptingTouchesForGesture()V

    return-void
.end method

.method public static synthetic H(Lcom/android/quickstep/AbsSwipeUpHandler;)Ljava/lang/Integer;
    .locals 0

    invoke-direct {p0}, Lcom/android/quickstep/AbsSwipeUpHandler;->lambda$new$1()Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic I(Lcom/android/quickstep/AbsSwipeUpHandler;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/quickstep/AbsSwipeUpHandler;->onLauncherStart()V

    return-void
.end method

.method public static synthetic J(Lcom/android/quickstep/AbsSwipeUpHandler;FZLandroid/graphics/PointF;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/android/quickstep/AbsSwipeUpHandler;->lambda$onGestureEnded$13(FZLandroid/graphics/PointF;)V

    return-void
.end method

.method public static synthetic K(Lcom/android/quickstep/AbsSwipeUpHandler;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/quickstep/AbsSwipeUpHandler;->lambda$linkRecentsViewScroll$34()V

    return-void
.end method

.method public static synthetic L(Lcom/android/quickstep/AbsSwipeUpHandler;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/quickstep/AbsSwipeUpHandler;->onDeferredActivityLaunch()V

    return-void
.end method

.method public static synthetic M(Lcom/android/quickstep/AbsSwipeUpHandler;Lcom/android/quickstep/util/SurfaceTransactionApplier;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/quickstep/AbsSwipeUpHandler;->lambda$linkRecentsViewScroll$33(Lcom/android/quickstep/util/SurfaceTransactionApplier;)V

    return-void
.end method

.method public static synthetic N(Lcom/android/quickstep/AbsSwipeUpHandler;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/quickstep/AbsSwipeUpHandler;->lambda$animateToProgressInternal$18()V

    return-void
.end method

.method public static synthetic O(Lcom/android/quickstep/AbsSwipeUpHandler;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/quickstep/AbsSwipeUpHandler;->lambda$onAnimatorPlaybackControllerCreated$11()V

    return-void
.end method

.method public static synthetic P(Lcom/android/quickstep/AbsSwipeUpHandler;Landroid/view/RemoteAnimationTarget;)Z
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/quickstep/AbsSwipeUpHandler;->lambda$onTasksAppeared$37(Landroid/view/RemoteAnimationTarget;)Z

    move-result p0

    return p0
.end method

.method public static synthetic Q(Lcom/android/quickstep/AbsSwipeUpHandler;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/quickstep/AbsSwipeUpHandler;->lambda$setClampScrollOffset$12(Z)V

    return-void
.end method

.method public static synthetic R(Lcom/android/quickstep/AbsSwipeUpHandler;Landroid/animation/ValueAnimator;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/quickstep/AbsSwipeUpHandler;->lambda$animateToProgressInternal$19(Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method public static synthetic S(Lcom/android/quickstep/AbsSwipeUpHandler;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/quickstep/AbsSwipeUpHandler;->lambda$enableInputConsumerWithRecentTaskId$38()V

    return-void
.end method

.method public static synthetic T(Lcom/android/quickstep/AbsSwipeUpHandler;F)F
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/quickstep/AbsSwipeUpHandler;->lambda$endLauncherTransitionController$22(F)F

    move-result p0

    return p0
.end method

.method public static synthetic U(Lcom/android/quickstep/AbsSwipeUpHandler;Landroid/view/RemoteAnimationTarget;)Z
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/quickstep/AbsSwipeUpHandler;->lambda$onTasksAppeared$36(Landroid/view/RemoteAnimationTarget;)Z

    move-result p0

    return p0
.end method

.method public static synthetic V(Lcom/android/quickstep/AbsSwipeUpHandler;Lcom/android/quickstep/util/AnimatorControllerWithResistance;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/quickstep/AbsSwipeUpHandler;->onAnimatorPlaybackControllerCreated(Lcom/android/quickstep/util/AnimatorControllerWithResistance;)V

    return-void
.end method

.method public static synthetic W(Lcom/android/quickstep/AbsSwipeUpHandler;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/quickstep/AbsSwipeUpHandler;->onLauncherBindToService()V

    return-void
.end method

.method public static synthetic X(Lcom/android/quickstep/AbsSwipeUpHandler;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/quickstep/AbsSwipeUpHandler;->finishCurrentTransitionToRecents()V

    return-void
.end method

.method public static synthetic Y(Lcom/android/quickstep/AbsSwipeUpHandler;IZ)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/quickstep/AbsSwipeUpHandler;->lambda$switchToScreenshot$24(IZ)V

    return-void
.end method

.method public static synthetic Z(Lcom/android/quickstep/AbsSwipeUpHandler;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/quickstep/AbsSwipeUpHandler;->lambda$finishCurrentTransitionToHome$30()V

    return-void
.end method

.method public static synthetic a0(Lcom/android/quickstep/AbsSwipeUpHandler;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/quickstep/AbsSwipeUpHandler;->continueComputingRecentsScrollIfNecessary()V

    return-void
.end method

.method static synthetic access$000()I
    .locals 1

    sget v0, Lcom/android/quickstep/AbsSwipeUpHandler;->STATE_GESTURE_COMPLETED:I

    return v0
.end method

.method static synthetic access$102(Lcom/android/quickstep/AbsSwipeUpHandler;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/quickstep/AbsSwipeUpHandler;->mHasMotionEverBeenPaused:Z

    return p1
.end method

.method static synthetic access$200(Lcom/android/quickstep/AbsSwipeUpHandler;ZZ)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/quickstep/AbsSwipeUpHandler;->maybeUpdateRecentsAttachedState(ZZ)V

    return-void
.end method

.method static synthetic access$300(Lcom/android/quickstep/AbsSwipeUpHandler;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/android/quickstep/AbsSwipeUpHandler;->mIsInAllAppsRegion:Z

    return p0
.end method

.method static synthetic access$402(Lcom/android/quickstep/AbsSwipeUpHandler;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/quickstep/AbsSwipeUpHandler;->mIsMotionPaused:Z

    return p1
.end method

.method static synthetic access$500(Lcom/android/quickstep/AbsSwipeUpHandler;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/quickstep/AbsSwipeUpHandler;->endRunningWindowAnim(Z)V

    return-void
.end method

.method static synthetic access$600(Lcom/android/quickstep/AbsSwipeUpHandler;)Lcom/android/systemui/shared/system/TaskStackChangeListener;
    .locals 0

    iget-object p0, p0, Lcom/android/quickstep/AbsSwipeUpHandler;->mActivityRestartListener:Lcom/android/systemui/shared/system/TaskStackChangeListener;

    return-object p0
.end method

.method static synthetic access$702(Lcom/android/quickstep/AbsSwipeUpHandler;Landroid/animation/Animator;)Landroid/animation/Animator;
    .locals 0

    iput-object p1, p0, Lcom/android/quickstep/AbsSwipeUpHandler;->mParallelRunningAnim:Landroid/animation/Animator;

    return-object p1
.end method

.method static synthetic access$800(Lcom/android/quickstep/AbsSwipeUpHandler;Ljava/lang/Runnable;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/quickstep/AbsSwipeUpHandler;->finishRecentsAnimationOnTasksAppeared(Ljava/lang/Runnable;)V

    return-void
.end method

.method private animateToProgress(FFJLandroid/view/animation/Interpolator;Lcom/android/quickstep/GestureState$GestureEndTarget;Landroid/graphics/PointF;)V
    .locals 10
    .annotation build Landroidx/annotation/UiThread;
    .end annotation

    new-instance v9, Lcom/android/quickstep/q0;

    move-object v0, v9

    move-object v1, p0

    move v2, p1

    move v3, p2

    move-wide v4, p3

    move-object v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    invoke-direct/range {v0 .. v8}, Lcom/android/quickstep/q0;-><init>(Lcom/android/quickstep/AbsSwipeUpHandler;FFJLandroid/view/animation/Interpolator;Lcom/android/quickstep/GestureState$GestureEndTarget;Landroid/graphics/PointF;)V

    move-object v0, p0

    invoke-direct {p0, v9}, Lcom/android/quickstep/AbsSwipeUpHandler;->runOnRecentsAnimationAndLauncherBound(Ljava/lang/Runnable;)V

    return-void
.end method

.method private animateToProgressInternal(FFJLandroid/view/animation/Interpolator;Lcom/android/quickstep/GestureState$GestureEndTarget;Landroid/graphics/PointF;)V
    .locals 18
    .annotation build Landroidx/annotation/UiThread;
    .end annotation

    move-object/from16 v9, p0

    move/from16 v10, p1

    move/from16 v0, p2

    move-wide/from16 v2, p3

    move-object/from16 v1, p6

    move-object/from16 v11, p7

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Abs -> animateToProgressInternal start = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v5, ", end = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v5, ", target = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, ", duration = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "Recent"

    invoke-static {v5, v4}, Ly2/e;->c(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct/range {p0 .. p0}, Lcom/android/quickstep/AbsSwipeUpHandler;->maybeUpdateRecentsAttachedState()V

    iget-object v4, v9, Lcom/android/quickstep/SwipeUpAnimationLogic;->mGestureState:Lcom/android/quickstep/GestureState;

    invoke-virtual {v4}, Lcom/android/quickstep/GestureState;->getEndTarget()Lcom/android/quickstep/GestureState$GestureEndTarget;

    move-result-object v4

    iget-boolean v4, v4, Lcom/android/quickstep/GestureState$GestureEndTarget;->isLauncher:Z

    if-eqz v4, :cond_0

    iget-object v4, v9, Lcom/android/quickstep/AbsSwipeUpHandler;->mActivity:Lcom/android/launcher3/statemanager/StatefulActivity;

    invoke-static {v4}, Lcom/android/launcher3/dragndrop/DragView;->removeAllViews(Lcom/android/launcher3/views/ActivityContext;)V

    invoke-static {}, Lcom/android/systemui/shared/system/TaskStackChangeListeners;->getInstance()Lcom/android/systemui/shared/system/TaskStackChangeListeners;

    move-result-object v4

    iget-object v5, v9, Lcom/android/quickstep/AbsSwipeUpHandler;->mActivityRestartListener:Lcom/android/systemui/shared/system/TaskStackChangeListener;

    invoke-virtual {v4, v5}, Lcom/android/systemui/shared/system/TaskStackChangeListeners;->registerTaskStackListener(Lcom/android/systemui/shared/system/TaskStackChangeListener;)V

    iget-object v4, v9, Lcom/android/quickstep/AbsSwipeUpHandler;->mActivityInterface:Lcom/android/quickstep/BaseActivityInterface;

    iget-object v5, v9, Lcom/android/quickstep/SwipeUpAnimationLogic;->mGestureState:Lcom/android/quickstep/GestureState;

    invoke-virtual {v5}, Lcom/android/quickstep/GestureState;->getEndTarget()Lcom/android/quickstep/GestureState$GestureEndTarget;

    move-result-object v5

    iget-object v6, v9, Lcom/android/quickstep/AbsSwipeUpHandler;->mTaskAnimationManager:Lcom/android/quickstep/TaskAnimationManager;

    invoke-virtual {v6}, Lcom/android/quickstep/TaskAnimationManager;->getCurrentCallbacks()Lcom/android/quickstep/RecentsAnimationCallbacks;

    move-result-object v6

    invoke-virtual {v4, v5, v2, v3, v6}, Lcom/android/quickstep/BaseActivityInterface;->getParallelAnimationToLauncher(Lcom/android/quickstep/GestureState$GestureEndTarget;JLcom/android/quickstep/RecentsAnimationCallbacks;)Landroid/animation/Animator;

    move-result-object v4

    iput-object v4, v9, Lcom/android/quickstep/AbsSwipeUpHandler;->mParallelRunningAnim:Landroid/animation/Animator;

    if-eqz v4, :cond_0

    new-instance v5, Lcom/android/quickstep/AbsSwipeUpHandler$8;

    invoke-direct {v5, v9}, Lcom/android/quickstep/AbsSwipeUpHandler$8;-><init>(Lcom/android/quickstep/AbsSwipeUpHandler;)V

    invoke-virtual {v4, v5}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    iget-object v4, v9, Lcom/android/quickstep/AbsSwipeUpHandler;->mParallelRunningAnim:Landroid/animation/Animator;

    invoke-virtual {v4}, Landroid/animation/Animator;->start()V

    :cond_0
    iget-object v4, v9, Lcom/android/quickstep/SwipeUpAnimationLogic;->mGestureState:Lcom/android/quickstep/GestureState;

    invoke-virtual {v4}, Lcom/android/quickstep/GestureState;->getEndTarget()Lcom/android/quickstep/GestureState$GestureEndTarget;

    move-result-object v4

    sget-object v5, Lcom/android/quickstep/GestureState$GestureEndTarget;->HOME:Lcom/android/quickstep/GestureState$GestureEndTarget;

    const/4 v12, 0x1

    const/4 v13, 0x0

    if-ne v4, v5, :cond_10

    invoke-virtual/range {p0 .. p0}, Lcom/android/quickstep/SwipeUpAnimationLogic;->getOrientationHandler()Lcom/android/launcher3/touch/PagedOrientationHandler;

    move-result-object v0

    invoke-interface {v0, v11}, Lcom/android/launcher3/touch/PagedOrientationHandler;->adjustFloatingIconStartVelocity(Landroid/graphics/PointF;)V

    iget-object v0, v9, Lcom/android/quickstep/AbsSwipeUpHandler;->mRecentsAnimationTargets:Lcom/android/quickstep/RecentsAnimationTargets;

    const/4 v14, 0x0

    if-eqz v0, :cond_1

    iget-object v1, v9, Lcom/android/quickstep/SwipeUpAnimationLogic;->mGestureState:Lcom/android/quickstep/GestureState;

    invoke-virtual {v1}, Lcom/android/quickstep/GestureState;->getRunningTaskId()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/quickstep/RemoteAnimationTargets;->findTask(I)Landroid/view/RemoteAnimationTarget;

    move-result-object v0

    move-object v15, v0

    goto :goto_0

    :cond_1
    move-object v15, v14

    :goto_0
    if-eqz v15, :cond_2

    iget-object v0, v15, Landroid/view/RemoteAnimationTarget;->taskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object v0, v0, Landroid/app/ActivityManager$RunningTaskInfo;->launchCookies:Ljava/util/ArrayList;

    goto :goto_1

    :cond_2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    :goto_1
    move-object v1, v0

    if-eqz v15, :cond_3

    iget-boolean v0, v15, Landroid/view/RemoteAnimationTarget;->isTranslucent:Z

    if-eqz v0, :cond_3

    move v4, v12

    goto :goto_2

    :cond_3
    move v4, v13

    :goto_2
    if-eqz v15, :cond_4

    iget-object v0, v15, Landroid/view/RemoteAnimationTarget;->leash:Landroid/view/SurfaceControl;

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Landroid/view/SurfaceControl;->isValid()Z

    move-result v0

    if-eqz v0, :cond_4

    move v0, v12

    goto :goto_3

    :cond_4
    move v0, v13

    :goto_3
    invoke-direct {v9, v11}, Lcom/android/quickstep/AbsSwipeUpHandler;->canEnterWindowMode(Landroid/graphics/PointF;)Z

    move-result v16

    if-nez v16, :cond_5

    iget-object v5, v9, Lcom/android/quickstep/SwipeUpAnimationLogic;->mDeviceState:Lcom/android/quickstep/RecentsAnimationDeviceState;

    invoke-virtual {v5}, Lcom/android/quickstep/RecentsAnimationDeviceState;->isPipActive()Z

    move-result v5

    if-nez v5, :cond_5

    if-eqz v0, :cond_5

    if-eqz v15, :cond_5

    iget-boolean v0, v15, Landroid/view/RemoteAnimationTarget;->allowEnterPip:Z

    if-eqz v0, :cond_5

    iget-object v0, v15, Landroid/view/RemoteAnimationTarget;->taskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object v0, v0, Landroid/app/ActivityManager$RunningTaskInfo;->pictureInPictureParams:Landroid/app/PictureInPictureParams;

    if-eqz v0, :cond_5

    invoke-virtual {v0}, Landroid/app/PictureInPictureParams;->isAutoEnterEnabled()Z

    move-result v0

    if-eqz v0, :cond_5

    move/from16 v17, v12

    goto :goto_4

    :cond_5
    move/from16 v17, v13

    :goto_4
    move-object/from16 v0, p0

    move-wide/from16 v2, p3

    move/from16 v5, v17

    move/from16 v6, v16

    move-object v7, v15

    move/from16 v8, p1

    invoke-virtual/range {v0 .. v8}, Lcom/android/quickstep/AbsSwipeUpHandler;->createHomeAnimationFactory(Ljava/util/ArrayList;JZZZLandroid/view/RemoteAnimationTarget;F)Lcom/android/quickstep/SwipeUpAnimationLogic$HomeAnimationFactory;

    move-result-object v0

    iget-boolean v1, v9, Lcom/android/quickstep/SwipeUpAnimationLogic;->mIsSwipeForSplit:Z

    if-nez v1, :cond_6

    if-eqz v17, :cond_6

    move v1, v12

    goto :goto_5

    :cond_6
    move v1, v13

    :goto_5
    iput-boolean v1, v9, Lcom/android/quickstep/AbsSwipeUpHandler;->mIsSwipingPipToHome:Z

    if-eqz v1, :cond_8

    invoke-direct {v9, v0, v15, v10}, Lcom/android/quickstep/AbsSwipeUpHandler;->createWindowAnimationToPip(Lcom/android/quickstep/SwipeUpAnimationLogic$HomeAnimationFactory;Landroid/view/RemoteAnimationTarget;F)Lcom/android/quickstep/util/SwipePipToHomeAnimator;

    move-result-object v1

    iput-object v1, v9, Lcom/android/quickstep/AbsSwipeUpHandler;->mSwipePipToHomeAnimator:Lcom/android/quickstep/util/SwipePipToHomeAnimator;

    iget-object v2, v9, Lcom/android/quickstep/AbsSwipeUpHandler;->mSwipePipToHomeAnimators:[Lcom/android/quickstep/util/SwipePipToHomeAnimator;

    aput-object v1, v2, v13

    iget-object v1, v9, Lcom/android/quickstep/AbsSwipeUpHandler;->mSwipePipToHomeReleaseCheck:Lcom/android/quickstep/RemoteAnimationTargets$ReleaseCheck;

    if-eqz v1, :cond_7

    invoke-virtual {v1, v13}, Lcom/android/quickstep/RemoteAnimationTargets$ReleaseCheck;->setCanRelease(Z)V

    :cond_7
    sget-object v1, Lcom/android/launcher3/util/Executors;->UI_HELPER_EXECUTOR:Lcom/android/launcher3/util/LooperExecutor;

    new-instance v2, Lcom/android/quickstep/z;

    invoke-direct {v2, v9}, Lcom/android/quickstep/z;-><init>(Lcom/android/quickstep/AbsSwipeUpHandler;)V

    invoke-virtual {v1, v2}, Lcom/android/launcher3/util/LooperExecutor;->execute(Ljava/lang/Runnable;)V

    sget-object v1, Lcom/android/quickstep/SystemUiProxy;->INSTANCE:Lcom/android/launcher3/util/MainThreadInitializedObject;

    iget-object v2, v9, Lcom/android/quickstep/SwipeUpAnimationLogic;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v2}, Lcom/android/launcher3/util/MainThreadInitializedObject;->get(Landroid/content/Context;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/quickstep/SystemUiProxy;

    iget-object v2, v9, Lcom/android/quickstep/AbsSwipeUpHandler;->mSwipePipToHomeAnimator:Lcom/android/quickstep/util/SwipePipToHomeAnimator;

    invoke-virtual {v2}, Lcom/android/quickstep/util/SwipePipToHomeAnimator;->getTaskId()I

    move-result v2

    iget-object v3, v9, Lcom/android/quickstep/AbsSwipeUpHandler;->mSwipePipToHomeAnimator:Lcom/android/quickstep/util/SwipePipToHomeAnimator;

    invoke-virtual {v3}, Lcom/android/quickstep/util/SwipePipToHomeAnimator;->getComponentName()Landroid/content/ComponentName;

    move-result-object v3

    iget-object v4, v9, Lcom/android/quickstep/AbsSwipeUpHandler;->mSwipePipToHomeAnimator:Lcom/android/quickstep/util/SwipePipToHomeAnimator;

    invoke-virtual {v4}, Lcom/android/quickstep/util/SwipePipToHomeAnimator;->getDestinationBounds()Landroid/graphics/Rect;

    move-result-object v4

    iget-object v5, v9, Lcom/android/quickstep/AbsSwipeUpHandler;->mSwipePipToHomeAnimator:Lcom/android/quickstep/util/SwipePipToHomeAnimator;

    invoke-virtual {v5}, Lcom/android/quickstep/util/SwipePipToHomeAnimator;->getContentOverlay()Landroid/view/SurfaceControl;

    move-result-object v5

    invoke-virtual {v1, v2, v3, v4, v5}, Lcom/android/quickstep/SystemUiProxy;->stopSwipePipToHome(ILandroid/content/ComponentName;Landroid/graphics/Rect;Landroid/view/SurfaceControl;)V

    iget-object v1, v9, Lcom/android/quickstep/AbsSwipeUpHandler;->mSwipePipToHomeAnimators:[Lcom/android/quickstep/util/SwipePipToHomeAnimator;

    goto :goto_7

    :cond_8
    iput-object v14, v9, Lcom/android/quickstep/AbsSwipeUpHandler;->mSwipePipToHomeAnimator:Lcom/android/quickstep/util/SwipePipToHomeAnimator;

    iget-object v1, v9, Lcom/android/quickstep/AbsSwipeUpHandler;->mSwipePipToHomeReleaseCheck:Lcom/android/quickstep/RemoteAnimationTargets$ReleaseCheck;

    if-eqz v1, :cond_9

    invoke-virtual {v1, v12}, Lcom/android/quickstep/RemoteAnimationTargets$ReleaseCheck;->setCanRelease(Z)V

    iput-object v14, v9, Lcom/android/quickstep/AbsSwipeUpHandler;->mSwipePipToHomeReleaseCheck:Lcom/android/quickstep/RemoteAnimationTargets$ReleaseCheck;

    :cond_9
    if-eqz v16, :cond_a

    const-wide/16 v1, 0x15e

    goto :goto_6

    :cond_a
    const-wide/16 v1, 0x0

    :goto_6
    invoke-virtual {v9, v10, v0, v1, v2}, Lcom/android/quickstep/AbsSwipeUpHandler;->createWindowAnimationToHome(FLcom/android/quickstep/SwipeUpAnimationLogic$HomeAnimationFactory;J)[Lcom/android/quickstep/util/RectFSpringAnim;

    move-result-object v1

    aget-object v2, v1, v13

    new-instance v3, Lcom/android/quickstep/AbsSwipeUpHandler$9;

    invoke-direct {v3, v9}, Lcom/android/quickstep/AbsSwipeUpHandler$9;-><init>(Lcom/android/quickstep/AbsSwipeUpHandler;)V

    invoke-virtual {v2, v3}, Lcom/android/quickstep/util/RectFSpringAnim;->addAnimatorListener(Landroid/animation/Animator$AnimatorListener;)V

    :goto_7
    array-length v2, v1

    new-array v2, v2, [Lcom/android/quickstep/SwipeUpAnimationLogic$RunningWindowAnim;

    iput-object v2, v9, Lcom/android/quickstep/AbsSwipeUpHandler;->mRunningWindowAnim:[Lcom/android/quickstep/SwipeUpAnimationLogic$RunningWindowAnim;

    array-length v2, v1

    :goto_8
    if-ge v13, v2, :cond_d

    aget-object v3, v1, v13

    if-nez v3, :cond_b

    goto :goto_a

    :cond_b
    iget-object v4, v9, Lcom/android/quickstep/AbsSwipeUpHandler;->mActivity:Lcom/android/launcher3/statemanager/StatefulActivity;

    if-nez v4, :cond_c

    move-object v4, v14

    goto :goto_9

    :cond_c
    invoke-virtual {v4}, Lcom/android/launcher3/BaseActivity;->getDeviceProfile()Lj3/a;

    move-result-object v4

    :goto_9
    iget-object v5, v9, Lcom/android/quickstep/SwipeUpAnimationLogic;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v5, v4, v11}, Lcom/android/quickstep/util/RectFSpringAnim;->start(Landroid/content/Context;Lcom/android/launcher3/DeviceProfile;Landroid/graphics/PointF;)V

    iget-object v4, v9, Lcom/android/quickstep/AbsSwipeUpHandler;->mRunningWindowAnim:[Lcom/android/quickstep/SwipeUpAnimationLogic$RunningWindowAnim;

    invoke-static {v3}, Lcom/android/quickstep/SwipeUpAnimationLogic$RunningWindowAnim;->wrap(Lcom/android/quickstep/util/RectFSpringAnim;)Lcom/android/quickstep/SwipeUpAnimationLogic$RunningWindowAnim;

    move-result-object v3

    aput-object v3, v4, v13

    :goto_a
    add-int/lit8 v13, v13, 0x1

    goto :goto_8

    :cond_d
    iget v1, v11, Landroid/graphics/PointF;->y:F

    invoke-virtual {v0, v1}, Lcom/android/quickstep/SwipeUpAnimationLogic$HomeAnimationFactory;->setSwipeVelocity(F)V

    iget v1, v11, Landroid/graphics/PointF;->y:F

    invoke-virtual {v0, v1}, Lcom/android/quickstep/SwipeUpAnimationLogic$HomeAnimationFactory;->playAtomicAnimation(F)V

    iput-object v14, v9, Lcom/android/quickstep/AbsSwipeUpHandler;->mLauncherTransitionController:Lcom/android/quickstep/util/AnimatorControllerWithResistance;

    iget-object v0, v9, Lcom/android/quickstep/AbsSwipeUpHandler;->mRecentsView:Lcom/android/quickstep/views/RecentsView;

    if-eqz v0, :cond_e

    iget-object v1, v9, Lcom/android/quickstep/SwipeUpAnimationLogic;->mGestureState:Lcom/android/quickstep/GestureState;

    invoke-virtual {v1}, Lcom/android/quickstep/GestureState;->getEndTarget()Lcom/android/quickstep/GestureState$GestureEndTarget;

    move-result-object v1

    invoke-virtual/range {p0 .. p0}, Lcom/android/quickstep/SwipeUpAnimationLogic;->getRemoteTaskViewSimulators()[Lcom/android/quickstep/util/TaskViewSimulator;

    move-result-object v2

    invoke-virtual {v0, v14, v1, v2}, Lcom/android/quickstep/views/RecentsView;->onPrepareGestureEndAnimation(Landroid/animation/AnimatorSet;Lcom/android/quickstep/GestureState$GestureEndTarget;[Lcom/android/quickstep/util/TaskViewSimulator;)V

    :cond_e
    if-eqz v16, :cond_f

    invoke-direct/range {p0 .. p0}, Lcom/android/quickstep/AbsSwipeUpHandler;->enterWindowMode()V

    :cond_f
    invoke-static {}, Landroid/animation/ValueAnimator;->areAnimatorsEnabled()Z

    move-result v0

    if-nez v0, :cond_12

    invoke-direct {v9, v12}, Lcom/android/quickstep/AbsSwipeUpHandler;->endRunningWindowAnim(Z)V

    goto :goto_b

    :cond_10
    new-instance v4, Landroid/animation/AnimatorSet;

    invoke-direct {v4}, Landroid/animation/AnimatorSet;-><init>()V

    iget-object v5, v9, Lcom/android/quickstep/SwipeUpAnimationLogic;->mCurrentShift:Lcom/android/launcher3/anim/AnimatedFloat;

    invoke-virtual {v5, v10, v0}, Lcom/android/launcher3/anim/AnimatedFloat;->animateToValue(FF)Landroid/animation/ObjectAnimator;

    move-result-object v0

    new-instance v5, Lcom/android/quickstep/w;

    invoke-direct {v5, v9}, Lcom/android/quickstep/w;-><init>(Lcom/android/quickstep/AbsSwipeUpHandler;)V

    invoke-virtual {v0, v5}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    new-instance v5, Lcom/android/quickstep/AbsSwipeUpHandler$10;

    invoke-direct {v5, v9, v1}, Lcom/android/quickstep/AbsSwipeUpHandler$10;-><init>(Lcom/android/quickstep/AbsSwipeUpHandler;Lcom/android/quickstep/GestureState$GestureEndTarget;)V

    invoke-virtual {v0, v5}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    invoke-virtual {v4, v0}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    iget-object v0, v9, Lcom/android/quickstep/AbsSwipeUpHandler;->mRecentsView:Lcom/android/quickstep/views/RecentsView;

    if-eqz v0, :cond_11

    iget-object v1, v9, Lcom/android/quickstep/SwipeUpAnimationLogic;->mGestureState:Lcom/android/quickstep/GestureState;

    invoke-virtual {v1}, Lcom/android/quickstep/GestureState;->getEndTarget()Lcom/android/quickstep/GestureState$GestureEndTarget;

    move-result-object v1

    invoke-virtual/range {p0 .. p0}, Lcom/android/quickstep/SwipeUpAnimationLogic;->getRemoteTaskViewSimulators()[Lcom/android/quickstep/util/TaskViewSimulator;

    move-result-object v5

    invoke-virtual {v0, v4, v1, v5}, Lcom/android/quickstep/views/RecentsView;->onPrepareGestureEndAnimation(Landroid/animation/AnimatorSet;Lcom/android/quickstep/GestureState$GestureEndTarget;[Lcom/android/quickstep/util/TaskViewSimulator;)V

    :cond_11
    invoke-virtual {v4, v2, v3}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    move-result-object v0

    move-object/from16 v1, p5

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    invoke-virtual {v4}, Landroid/animation/AnimatorSet;->start()V

    new-array v0, v12, [Lcom/android/quickstep/SwipeUpAnimationLogic$RunningWindowAnim;

    invoke-static {v4}, Lcom/android/quickstep/SwipeUpAnimationLogic$RunningWindowAnim;->wrap(Landroid/animation/Animator;)Lcom/android/quickstep/SwipeUpAnimationLogic$RunningWindowAnim;

    move-result-object v1

    aput-object v1, v0, v13

    iput-object v0, v9, Lcom/android/quickstep/AbsSwipeUpHandler;->mRunningWindowAnim:[Lcom/android/quickstep/SwipeUpAnimationLogic$RunningWindowAnim;

    :cond_12
    :goto_b
    invoke-virtual/range {p0 .. p0}, Lcom/android/quickstep/AbsSwipeUpHandler;->resetWindowModeTipsState()V

    return-void
.end method

.method public static synthetic b0(Lcom/android/quickstep/AbsSwipeUpHandler;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/quickstep/AbsSwipeUpHandler;->startNewTask()V

    return-void
.end method

.method private buildAnimationController()V
    .locals 3

    invoke-direct {p0}, Lcom/android/quickstep/AbsSwipeUpHandler;->canCreateNewOrUpdateExistingLauncherTransitionController()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/quickstep/AbsSwipeUpHandler;->mActivity:Lcom/android/launcher3/statemanager/StatefulActivity;

    if-nez v0, :cond_1

    const-string p0, "AbsSwipeUpHandler"

    const-string v0, "mActivity is null"

    invoke-static {p0, v0}, Ly2/e;->f(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_1
    invoke-virtual {v0}, Lcom/android/launcher3/BaseActivity;->getDeviceProfile()Lj3/a;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/quickstep/AbsSwipeUpHandler;->initTransitionEndpoints(Lcom/android/launcher3/DeviceProfile;)V

    iget-object v0, p0, Lcom/android/quickstep/AbsSwipeUpHandler;->mAnimationFactory:Lcom/android/quickstep/BaseActivityInterface$AnimationFactory;

    iget p0, p0, Lcom/android/quickstep/SwipeUpAnimationLogic;->mTransitionDragLength:I

    int-to-long v1, p0

    invoke-interface {v0, v1, v2}, Lcom/android/quickstep/BaseActivityInterface$AnimationFactory;->createActivityInterface(J)V

    return-void
.end method

.method public static synthetic c0(Lcom/android/quickstep/AbsSwipeUpHandler;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/quickstep/AbsSwipeUpHandler;->lambda$onLauncherPresentAndGestureStarted$7()V

    return-void
.end method

.method private calculateEndTarget(Landroid/graphics/PointF;FZZ)Lcom/android/quickstep/GestureState$GestureEndTarget;
    .locals 6

    sget-object v0, Lcom/android/quickstep/util/ActiveGestureLog;->INSTANCE:Lcom/android/quickstep/util/ActiveGestureLog;

    new-instance v1, Lcom/android/quickstep/util/ActiveGestureLog$CompoundString;

    const-string v2, "calculateEndTarget: velocities=(x="

    invoke-direct {v1, v2}, Lcom/android/quickstep/util/ActiveGestureLog$CompoundString;-><init>(Ljava/lang/String;)V

    iget v2, p1, Landroid/graphics/PointF;->x:F

    invoke-direct {p0, v2}, Lcom/android/quickstep/AbsSwipeUpHandler;->dpiFromPx(F)F

    move-result v2

    invoke-static {v2}, Ljava/lang/Float;->toString(F)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/quickstep/util/ActiveGestureLog$CompoundString;->append(Ljava/lang/String;)Lcom/android/quickstep/util/ActiveGestureLog$CompoundString;

    move-result-object v1

    const-string v2, "dp/ms, y="

    invoke-virtual {v1, v2}, Lcom/android/quickstep/util/ActiveGestureLog$CompoundString;->append(Ljava/lang/String;)Lcom/android/quickstep/util/ActiveGestureLog$CompoundString;

    move-result-object v1

    iget v2, p1, Landroid/graphics/PointF;->y:F

    invoke-direct {p0, v2}, Lcom/android/quickstep/AbsSwipeUpHandler;->dpiFromPx(F)F

    move-result v2

    invoke-static {v2}, Ljava/lang/Float;->toString(F)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/quickstep/util/ActiveGestureLog$CompoundString;->append(Ljava/lang/String;)Lcom/android/quickstep/util/ActiveGestureLog$CompoundString;

    move-result-object v1

    const-string v2, "dp/ms), angle="

    invoke-virtual {v1, v2}, Lcom/android/quickstep/util/ActiveGestureLog$CompoundString;->append(Ljava/lang/String;)Lcom/android/quickstep/util/ActiveGestureLog$CompoundString;

    move-result-object v1

    iget v2, p1, Landroid/graphics/PointF;->y:F

    neg-float v2, v2

    float-to-double v2, v2

    iget v4, p1, Landroid/graphics/PointF;->x:F

    float-to-double v4, v4

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Double;->toString(D)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/quickstep/util/ActiveGestureLog$CompoundString;->append(Ljava/lang/String;)Lcom/android/quickstep/util/ActiveGestureLog$CompoundString;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/quickstep/util/ActiveGestureLog;->addLog(Lcom/android/quickstep/util/ActiveGestureLog$CompoundString;)V

    iget-object v0, p0, Lcom/android/quickstep/SwipeUpAnimationLogic;->mGestureState:Lcom/android/quickstep/GestureState;

    invoke-virtual {v0}, Lcom/android/quickstep/GestureState;->isHandlingAtomicEvent()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object p0, Lcom/android/quickstep/GestureState$GestureEndTarget;->RECENTS:Lcom/android/quickstep/GestureState$GestureEndTarget;

    return-object p0

    :cond_0
    if-eqz p4, :cond_1

    sget-object p1, Lcom/android/quickstep/GestureState$GestureEndTarget;->LAST_TASK:Lcom/android/quickstep/GestureState$GestureEndTarget;

    goto :goto_0

    :cond_1
    if-eqz p3, :cond_2

    invoke-direct {p0, p1, p2}, Lcom/android/quickstep/AbsSwipeUpHandler;->calculateEndTargetForFlingY(Landroid/graphics/PointF;F)Lcom/android/quickstep/GestureState$GestureEndTarget;

    move-result-object p1

    goto :goto_0

    :cond_2
    invoke-direct {p0, p1}, Lcom/android/quickstep/AbsSwipeUpHandler;->calculateEndTargetForNonFling(Landroid/graphics/PointF;)Lcom/android/quickstep/GestureState$GestureEndTarget;

    move-result-object p1

    :goto_0
    iget-object p0, p0, Lcom/android/quickstep/SwipeUpAnimationLogic;->mDeviceState:Lcom/android/quickstep/RecentsAnimationDeviceState;

    invoke-virtual {p0}, Lcom/android/quickstep/RecentsAnimationDeviceState;->isOverviewDisabled()Z

    move-result p0

    if-eqz p0, :cond_3

    sget-object p0, Lcom/android/quickstep/GestureState$GestureEndTarget;->RECENTS:Lcom/android/quickstep/GestureState$GestureEndTarget;

    if-ne p1, p0, :cond_3

    sget-object p0, Lcom/android/quickstep/GestureState$GestureEndTarget;->LAST_TASK:Lcom/android/quickstep/GestureState$GestureEndTarget;

    return-object p0

    :cond_3
    sget-boolean p0, Lcom/android/quickstep/views/DesktopTaskView;->DESKTOP_MODE_SUPPORTED:Z

    if-eqz p0, :cond_4

    sget-object p0, Lcom/android/quickstep/GestureState$GestureEndTarget;->NEW_TASK:Lcom/android/quickstep/GestureState$GestureEndTarget;

    if-ne p1, p0, :cond_4

    sget-object p0, Lcom/android/quickstep/GestureState$GestureEndTarget;->LAST_TASK:Lcom/android/quickstep/GestureState$GestureEndTarget;

    return-object p0

    :cond_4
    return-object p1
.end method

.method private calculateEndTargetForFlingY(Landroid/graphics/PointF;F)Lcom/android/quickstep/GestureState$GestureEndTarget;
    .locals 3

    invoke-direct {p0}, Lcom/android/quickstep/AbsSwipeUpHandler;->isScrollingToNewTask()Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    iget p1, p1, Landroid/graphics/PointF;->x:F

    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result p1

    invoke-static {p2}, Ljava/lang/Math;->abs(F)F

    move-result v0

    cmpl-float p1, p1, v0

    if-lez p1, :cond_0

    move p1, v1

    goto :goto_0

    :cond_0
    move p1, v2

    :goto_0
    const/4 v0, 0x0

    cmpg-float p2, p2, v0

    if-gez p2, :cond_1

    move p2, v1

    goto :goto_1

    :cond_1
    move p2, v2

    :goto_1
    iget-boolean v0, p0, Lcom/android/quickstep/AbsSwipeUpHandler;->mIsInAllAppsRegion:Z

    if-eqz v0, :cond_3

    if-eqz p2, :cond_2

    sget-object p0, Lcom/android/quickstep/GestureState$GestureEndTarget;->ALL_APPS:Lcom/android/quickstep/GestureState$GestureEndTarget;

    goto :goto_2

    :cond_2
    sget-object p0, Lcom/android/quickstep/GestureState$GestureEndTarget;->LAST_TASK:Lcom/android/quickstep/GestureState$GestureEndTarget;

    :goto_2
    return-object p0

    :cond_3
    if-nez p2, :cond_7

    iget-object p2, p0, Lcom/android/quickstep/AbsSwipeUpHandler;->mRecentsView:Lcom/android/quickstep/views/RecentsView;

    if-eqz p2, :cond_4

    invoke-virtual {p2}, Lcom/android/launcher3/PagedView;->getDestinationPage()I

    move-result p2

    iget-object p0, p0, Lcom/android/quickstep/AbsSwipeUpHandler;->mRecentsView:Lcom/android/quickstep/views/RecentsView;

    invoke-virtual {p0}, Lcom/android/quickstep/views/RecentsView;->getRunningTaskIndex()I

    move-result p0

    if-eq p2, p0, :cond_4

    goto :goto_3

    :cond_4
    move v1, v2

    :goto_3
    if-nez p1, :cond_6

    if-eqz v1, :cond_5

    goto :goto_4

    :cond_5
    sget-object p0, Lcom/android/quickstep/GestureState$GestureEndTarget;->LAST_TASK:Lcom/android/quickstep/GestureState$GestureEndTarget;

    goto :goto_5

    :cond_6
    :goto_4
    sget-object p0, Lcom/android/quickstep/GestureState$GestureEndTarget;->NEW_TASK:Lcom/android/quickstep/GestureState$GestureEndTarget;

    :goto_5
    return-object p0

    :cond_7
    if-eqz p1, :cond_8

    sget-object p0, Lcom/android/quickstep/GestureState$GestureEndTarget;->NEW_TASK:Lcom/android/quickstep/GestureState$GestureEndTarget;

    goto :goto_6

    :cond_8
    sget-object p0, Lcom/android/quickstep/GestureState$GestureEndTarget;->HOME:Lcom/android/quickstep/GestureState$GestureEndTarget;

    :goto_6
    return-object p0
.end method

.method private calculateEndTargetForNonFling(Landroid/graphics/PointF;)Lcom/android/quickstep/GestureState$GestureEndTarget;
    .locals 4

    invoke-direct {p0}, Lcom/android/quickstep/AbsSwipeUpHandler;->isScrollingToNewTask()Z

    move-result v0

    iget v1, p1, Landroid/graphics/PointF;->x:F

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    iget-object v2, p0, Lcom/android/quickstep/SwipeUpAnimationLogic;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0704c2

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    cmpl-float v1, v1, v2

    if-lez v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    iget-boolean v2, p0, Lcom/android/quickstep/AbsSwipeUpHandler;->mIsInAllAppsRegion:Z

    if-eqz v2, :cond_1

    sget-object p0, Lcom/android/quickstep/GestureState$GestureEndTarget;->ALL_APPS:Lcom/android/quickstep/GestureState$GestureEndTarget;

    return-object p0

    :cond_1
    if-eqz v0, :cond_2

    if-eqz v1, :cond_2

    sget-object p0, Lcom/android/quickstep/GestureState$GestureEndTarget;->NEW_TASK:Lcom/android/quickstep/GestureState$GestureEndTarget;

    return-object p0

    :cond_2
    iget-boolean v1, p0, Lcom/android/quickstep/AbsSwipeUpHandler;->mIsMotionPaused:Z

    if-eqz v1, :cond_4

    invoke-direct {p0, p1}, Lcom/android/quickstep/AbsSwipeUpHandler;->canEnterWindowMode(Landroid/graphics/PointF;)Z

    move-result p0

    if-eqz p0, :cond_3

    sget-object p0, Lcom/android/quickstep/GestureState$GestureEndTarget;->HOME:Lcom/android/quickstep/GestureState$GestureEndTarget;

    goto :goto_1

    :cond_3
    sget-object p0, Lcom/android/quickstep/GestureState$GestureEndTarget;->RECENTS:Lcom/android/quickstep/GestureState$GestureEndTarget;

    :goto_1
    return-object p0

    :cond_4
    if-eqz v0, :cond_5

    sget-object p0, Lcom/android/quickstep/GestureState$GestureEndTarget;->NEW_TASK:Lcom/android/quickstep/GestureState$GestureEndTarget;

    return-object p0

    :cond_5
    iget p1, p1, Landroid/graphics/PointF;->y:F

    const/4 v0, 0x0

    cmpg-float p1, p1, v0

    if-gez p1, :cond_6

    iget-boolean p0, p0, Lcom/android/quickstep/AbsSwipeUpHandler;->mCanSlowSwipeGoHome:Z

    if-eqz p0, :cond_6

    sget-object p0, Lcom/android/quickstep/GestureState$GestureEndTarget;->HOME:Lcom/android/quickstep/GestureState$GestureEndTarget;

    goto :goto_2

    :cond_6
    sget-object p0, Lcom/android/quickstep/GestureState$GestureEndTarget;->LAST_TASK:Lcom/android/quickstep/GestureState$GestureEndTarget;

    :goto_2
    return-object p0
.end method

.method private calculateWindowRotation(Landroid/view/RemoteAnimationTarget;Lcom/android/quickstep/util/RecentsOrientedState;)I
    .locals 0

    iget p0, p1, Landroid/view/RemoteAnimationTarget;->rotationChange:I

    if-eqz p0, :cond_1

    sget-boolean p1, Lcom/android/quickstep/TaskAnimationManager;->ENABLE_SHELL_TRANSITIONS:Z

    if-eqz p1, :cond_1

    invoke-static {p0}, Ljava/lang/Math;->abs(I)I

    move-result p0

    const/4 p1, 0x1

    if-ne p0, p1, :cond_0

    const/4 p1, 0x3

    :cond_0
    return p1

    :cond_1
    invoke-virtual {p2}, Lcom/android/quickstep/util/RecentsOrientedState;->getDisplayRotation()I

    move-result p0

    return p0
.end method

.method private canCreateNewOrUpdateExistingLauncherTransitionController()Z
    .locals 2

    iget-object v0, p0, Lcom/android/quickstep/SwipeUpAnimationLogic;->mGestureState:Lcom/android/quickstep/GestureState;

    invoke-virtual {v0}, Lcom/android/quickstep/GestureState;->getEndTarget()Lcom/android/quickstep/GestureState$GestureEndTarget;

    move-result-object v0

    sget-object v1, Lcom/android/quickstep/GestureState$GestureEndTarget;->HOME:Lcom/android/quickstep/GestureState$GestureEndTarget;

    if-eq v0, v1, :cond_0

    iget-boolean v0, p0, Lcom/android/quickstep/AbsSwipeUpHandler;->mHasEndedLauncherTransition:Z

    if-nez v0, :cond_0

    iget-object p0, p0, Lcom/android/quickstep/AbsSwipeUpHandler;->mActivity:Lcom/android/launcher3/statemanager/StatefulActivity;

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private canEnterWindowMode(Landroid/graphics/PointF;)Z
    .locals 6

    invoke-virtual {p0}, Lcom/android/quickstep/AbsSwipeUpHandler;->isWindowModeTipsSupport()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/quickstep/SwipeUpAnimationLogic;->mDp:Lcom/android/launcher3/DeviceProfile;

    iget-boolean v0, v0, Lcom/android/launcher3/DeviceProfile;->isMultiWindowMode:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget v0, p0, Lcom/android/quickstep/AbsSwipeUpHandler;->mWindowModeTipsState:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_1

    iget v0, p1, Landroid/graphics/PointF;->x:F

    float-to-double v2, v0

    iget p1, p1, Landroid/graphics/PointF;->y:F

    float-to-double v4, p1

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->hypot(DD)D

    move-result-wide v2

    const-wide v4, 0x400a666666666666L    # 3.3

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Double;->compare(DD)I

    move-result p1

    if-gez p1, :cond_1

    invoke-direct {p0}, Lcom/android/quickstep/AbsSwipeUpHandler;->isRunningTaskSupportWindowMode()Z

    move-result p0

    return p0

    :cond_1
    :goto_0
    return v1
.end method

.method private cancelCurrentAnimation()V
    .locals 3

    sget-object v0, Lcom/android/quickstep/util/ActiveGestureLog;->INSTANCE:Lcom/android/quickstep/util/ActiveGestureLog;

    sget-object v1, Lcom/android/quickstep/util/ActiveGestureErrorDetector$GestureEvent;->CANCEL_CURRENT_ANIMATION:Lcom/android/quickstep/util/ActiveGestureErrorDetector$GestureEvent;

    const-string v2, "AbsSwipeUpHandler.cancelCurrentAnimation"

    invoke-virtual {v0, v2, v1}, Lcom/android/quickstep/util/ActiveGestureLog;->addLog(Ljava/lang/String;Lcom/android/quickstep/util/ActiveGestureErrorDetector$GestureEvent;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/quickstep/AbsSwipeUpHandler;->mCanceled:Z

    iget-object v0, p0, Lcom/android/quickstep/SwipeUpAnimationLogic;->mCurrentShift:Lcom/android/launcher3/anim/AnimatedFloat;

    invoke-virtual {v0}, Lcom/android/launcher3/anim/AnimatedFloat;->cancelAnimation()V

    iget-object v0, p0, Lcom/android/quickstep/AbsSwipeUpHandler;->mInputConsumerProxy:Lcom/android/quickstep/util/InputConsumerProxy;

    invoke-virtual {v0}, Lcom/android/quickstep/util/InputConsumerProxy;->unregisterCallback()V

    iget-object v0, p0, Lcom/android/quickstep/AbsSwipeUpHandler;->mActivityInitListener:Lcom/android/quickstep/util/ActivityInitListener;

    invoke-virtual {v0}, Lcom/android/quickstep/util/ActivityInitListener;->unregister()V

    invoke-static {}, Lcom/android/systemui/shared/system/TaskStackChangeListeners;->getInstance()Lcom/android/systemui/shared/system/TaskStackChangeListeners;

    move-result-object v0

    iget-object v1, p0, Lcom/android/quickstep/AbsSwipeUpHandler;->mActivityRestartListener:Lcom/android/systemui/shared/system/TaskStackChangeListener;

    invoke-virtual {v0, v1}, Lcom/android/systemui/shared/system/TaskStackChangeListeners;->unregisterTaskStackListener(Lcom/android/systemui/shared/system/TaskStackChangeListener;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/quickstep/AbsSwipeUpHandler;->mTaskSnapshot:Lcom/android/systemui/shared/recents/model/ThumbnailData;

    return-void
.end method

.method private computeRecentsScrollIfInvisible()V
    .locals 1

    iget-object v0, p0, Lcom/android/quickstep/AbsSwipeUpHandler;->mRecentsView:Lcom/android/quickstep/views/RecentsView;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/android/quickstep/AbsSwipeUpHandler;->mRecentsView:Lcom/android/quickstep/views/RecentsView;

    invoke-virtual {p0}, Lcom/android/launcher3/PagedView;->computeScroll()V

    :cond_0
    return-void
.end method

.method private continueComputingRecentsScrollIfNecessary()V
    .locals 2

    iget-object v0, p0, Lcom/android/quickstep/SwipeUpAnimationLogic;->mGestureState:Lcom/android/quickstep/GestureState;

    sget v1, Lcom/android/quickstep/GestureState;->STATE_RECENTS_SCROLLING_FINISHED:I

    invoke-virtual {v0, v1}, Lcom/android/quickstep/GestureState;->hasState(I)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/quickstep/AbsSwipeUpHandler;->mStateCallback:Lcom/android/quickstep/MultiStateCallback;

    sget v1, Lcom/android/quickstep/AbsSwipeUpHandler;->STATE_HANDLER_INVALIDATED:I

    invoke-virtual {v0, v1}, Lcom/android/quickstep/MultiStateCallback;->hasStates(I)Z

    move-result v0

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/quickstep/AbsSwipeUpHandler;->mCanceled:Z

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/android/quickstep/AbsSwipeUpHandler;->computeRecentsScrollIfInvisible()V

    iget-object v0, p0, Lcom/android/quickstep/AbsSwipeUpHandler;->mRecentsView:Lcom/android/quickstep/views/RecentsView;

    if-eqz v0, :cond_0

    new-instance v1, Lcom/android/quickstep/f0;

    invoke-direct {v1, p0}, Lcom/android/quickstep/f0;-><init>(Lcom/android/quickstep/AbsSwipeUpHandler;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->postOnAnimation(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method private createWindowAnimationToPip(Lcom/android/quickstep/SwipeUpAnimationLogic$HomeAnimationFactory;Landroid/view/RemoteAnimationTarget;F)Lcom/android/quickstep/util/SwipePipToHomeAnimator;
    .locals 11
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    iget-object v0, p2, Landroid/view/RemoteAnimationTarget;->taskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object v1, p0, Lcom/android/quickstep/SwipeUpAnimationLogic;->mRemoteTargetHandles:[Lcom/android/quickstep/RemoteTargetGluer$RemoteTargetHandle;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-virtual {v1}, Lcom/android/quickstep/RemoteTargetGluer$RemoteTargetHandle;->getTaskViewSimulator()Lcom/android/quickstep/util/TaskViewSimulator;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/quickstep/util/TaskViewSimulator;->getOrientationState()Lcom/android/quickstep/util/RecentsOrientedState;

    move-result-object v1

    invoke-direct {p0, p2, v1}, Lcom/android/quickstep/AbsSwipeUpHandler;->calculateWindowRotation(Landroid/view/RemoteAnimationTarget;Lcom/android/quickstep/util/RecentsOrientedState;)I

    move-result v3

    invoke-virtual {v1}, Lcom/android/quickstep/util/RecentsOrientedState;->getRecentsActivityRotation()I

    move-result v1

    iget-object v4, p0, Lcom/android/quickstep/SwipeUpAnimationLogic;->mRemoteTargetHandles:[Lcom/android/quickstep/RemoteTargetGluer$RemoteTargetHandle;

    array-length v4, v4

    new-array v4, v4, [Landroid/graphics/Matrix;

    invoke-virtual {p0, v4, p3}, Lcom/android/quickstep/SwipeUpAnimationLogic;->updateProgressForStartRect([Landroid/graphics/Matrix;F)[Landroid/graphics/RectF;

    move-result-object p3

    aget-object p3, p3, v2

    aget-object v10, v4, v2

    new-instance v4, Landroid/graphics/Matrix;

    invoke-direct {v4}, Landroid/graphics/Matrix;-><init>()V

    invoke-virtual {v10, v4}, Landroid/graphics/Matrix;->invert(Landroid/graphics/Matrix;)Z

    invoke-virtual {v4, p3}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    invoke-direct {p0}, Lcom/android/quickstep/AbsSwipeUpHandler;->getKeepClearAreaForHotseat()Landroid/graphics/Rect;

    move-result-object v9

    sget-object v4, Lcom/android/quickstep/SystemUiProxy;->INSTANCE:Lcom/android/launcher3/util/MainThreadInitializedObject;

    iget-object v5, p0, Lcom/android/quickstep/SwipeUpAnimationLogic;->mContext:Landroid/content/Context;

    invoke-virtual {v4, v5}, Lcom/android/launcher3/util/MainThreadInitializedObject;->get(Landroid/content/Context;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/quickstep/SystemUiProxy;

    iget-object v5, v0, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    iget-object v6, v0, Landroid/app/ActivityManager$RunningTaskInfo;->topActivityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v7, p2, Landroid/view/RemoteAnimationTarget;->taskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object v7, v7, Landroid/app/ActivityManager$RunningTaskInfo;->pictureInPictureParams:Landroid/app/PictureInPictureParams;

    move v8, v1

    invoke-virtual/range {v4 .. v9}, Lcom/android/quickstep/SystemUiProxy;->startSwipePipToHome(Landroid/content/ComponentName;Landroid/content/pm/ActivityInfo;Landroid/app/PictureInPictureParams;ILandroid/graphics/Rect;)Landroid/graphics/Rect;

    move-result-object v4

    if-nez v4, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    new-instance v5, Landroid/graphics/Rect;

    invoke-direct {v5}, Landroid/graphics/Rect;-><init>()V

    iget-object v6, v0, Landroid/app/ActivityManager$RunningTaskInfo;->configuration:Landroid/content/res/Configuration;

    iget-object v6, v6, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {v6}, Landroid/app/WindowConfiguration;->getWindowingMode()I

    move-result v7

    const/4 v8, 0x1

    if-ne v7, v8, :cond_1

    iget-object v6, p0, Lcom/android/quickstep/SwipeUpAnimationLogic;->mRemoteTargetHandles:[Lcom/android/quickstep/RemoteTargetGluer$RemoteTargetHandle;

    aget-object v6, v6, v2

    invoke-virtual {v6}, Lcom/android/quickstep/RemoteTargetGluer$RemoteTargetHandle;->getTaskViewSimulator()Lcom/android/quickstep/util/TaskViewSimulator;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/quickstep/util/TaskViewSimulator;->getCurrentCropRect()Landroid/graphics/RectF;

    move-result-object v6

    invoke-virtual {v6, v5}, Landroid/graphics/RectF;->round(Landroid/graphics/Rect;)V

    goto :goto_0

    :cond_1
    invoke-virtual {v6}, Landroid/app/WindowConfiguration;->getBounds()Landroid/graphics/Rect;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    :goto_0
    new-instance v6, Lcom/android/quickstep/util/SwipePipToHomeAnimator$Builder;

    invoke-direct {v6}, Lcom/android/quickstep/util/SwipePipToHomeAnimator$Builder;-><init>()V

    iget-object v7, p0, Lcom/android/quickstep/SwipeUpAnimationLogic;->mContext:Landroid/content/Context;

    invoke-virtual {v6, v7}, Lcom/android/quickstep/util/SwipePipToHomeAnimator$Builder;->setContext(Landroid/content/Context;)Lcom/android/quickstep/util/SwipePipToHomeAnimator$Builder;

    move-result-object v6

    iget v7, p2, Landroid/view/RemoteAnimationTarget;->taskId:I

    invoke-virtual {v6, v7}, Lcom/android/quickstep/util/SwipePipToHomeAnimator$Builder;->setTaskId(I)Lcom/android/quickstep/util/SwipePipToHomeAnimator$Builder;

    move-result-object v6

    iget-object v7, v0, Landroid/app/ActivityManager$RunningTaskInfo;->topActivityInfo:Landroid/content/pm/ActivityInfo;

    invoke-virtual {v6, v7}, Lcom/android/quickstep/util/SwipePipToHomeAnimator$Builder;->setActivityInfo(Landroid/content/pm/ActivityInfo;)Lcom/android/quickstep/util/SwipePipToHomeAnimator$Builder;

    move-result-object v6

    iget-object v7, p0, Lcom/android/quickstep/SwipeUpAnimationLogic;->mDp:Lcom/android/launcher3/DeviceProfile;

    iget v7, v7, Lcom/android/launcher3/DeviceProfile;->iconSizePx:I

    invoke-virtual {v6, v7}, Lcom/android/quickstep/util/SwipePipToHomeAnimator$Builder;->setAppIconSizePx(I)Lcom/android/quickstep/util/SwipePipToHomeAnimator$Builder;

    move-result-object v6

    iget-object v7, p2, Landroid/view/RemoteAnimationTarget;->leash:Landroid/view/SurfaceControl;

    invoke-virtual {v6, v7}, Lcom/android/quickstep/util/SwipePipToHomeAnimator$Builder;->setLeash(Landroid/view/SurfaceControl;)Lcom/android/quickstep/util/SwipePipToHomeAnimator$Builder;

    move-result-object v6

    iget-object p2, p2, Landroid/view/RemoteAnimationTarget;->taskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object p2, p2, Landroid/app/ActivityManager$RunningTaskInfo;->pictureInPictureParams:Landroid/app/PictureInPictureParams;

    invoke-virtual {p2}, Landroid/app/PictureInPictureParams;->getSourceRectHint()Landroid/graphics/Rect;

    move-result-object p2

    invoke-virtual {v6, p2}, Lcom/android/quickstep/util/SwipePipToHomeAnimator$Builder;->setSourceRectHint(Landroid/graphics/Rect;)Lcom/android/quickstep/util/SwipePipToHomeAnimator$Builder;

    move-result-object p2

    invoke-virtual {p2, v5}, Lcom/android/quickstep/util/SwipePipToHomeAnimator$Builder;->setAppBounds(Landroid/graphics/Rect;)Lcom/android/quickstep/util/SwipePipToHomeAnimator$Builder;

    move-result-object p2

    invoke-virtual {p2, v10}, Lcom/android/quickstep/util/SwipePipToHomeAnimator$Builder;->setHomeToWindowPositionMap(Landroid/graphics/Matrix;)Lcom/android/quickstep/util/SwipePipToHomeAnimator$Builder;

    move-result-object p2

    invoke-virtual {p2, p3}, Lcom/android/quickstep/util/SwipePipToHomeAnimator$Builder;->setStartBounds(Landroid/graphics/RectF;)Lcom/android/quickstep/util/SwipePipToHomeAnimator$Builder;

    move-result-object p2

    invoke-virtual {p2, v4}, Lcom/android/quickstep/util/SwipePipToHomeAnimator$Builder;->setDestinationBounds(Landroid/graphics/Rect;)Lcom/android/quickstep/util/SwipePipToHomeAnimator$Builder;

    move-result-object p2

    iget-object p3, p0, Lcom/android/quickstep/AbsSwipeUpHandler;->mRecentsView:Lcom/android/quickstep/views/RecentsView;

    invoke-virtual {p3}, Lcom/android/quickstep/views/RecentsView;->getPipCornerRadius()I

    move-result p3

    invoke-virtual {p2, p3}, Lcom/android/quickstep/util/SwipePipToHomeAnimator$Builder;->setCornerRadius(I)Lcom/android/quickstep/util/SwipePipToHomeAnimator$Builder;

    move-result-object p2

    iget-object p3, p0, Lcom/android/quickstep/AbsSwipeUpHandler;->mRecentsView:Lcom/android/quickstep/views/RecentsView;

    invoke-virtual {p3}, Lcom/android/quickstep/views/RecentsView;->getPipShadowRadius()I

    move-result p3

    invoke-virtual {p2, p3}, Lcom/android/quickstep/util/SwipePipToHomeAnimator$Builder;->setShadowRadius(I)Lcom/android/quickstep/util/SwipePipToHomeAnimator$Builder;

    move-result-object p2

    iget-object p3, p0, Lcom/android/quickstep/AbsSwipeUpHandler;->mRecentsView:Lcom/android/quickstep/views/RecentsView;

    invoke-virtual {p2, p3}, Lcom/android/quickstep/util/SwipePipToHomeAnimator$Builder;->setAttachedView(Landroid/view/View;)Lcom/android/quickstep/util/SwipePipToHomeAnimator$Builder;

    move-result-object p2

    if-nez v1, :cond_3

    if-eq v3, v8, :cond_2

    const/4 p3, 0x3

    if-ne v3, p3, :cond_3

    :cond_2
    iget-object p3, p0, Lcom/android/quickstep/SwipeUpAnimationLogic;->mRemoteTargetHandles:[Lcom/android/quickstep/RemoteTargetGluer$RemoteTargetHandle;

    aget-object p3, p3, v2

    invoke-virtual {p3}, Lcom/android/quickstep/RemoteTargetGluer$RemoteTargetHandle;->getTaskViewSimulator()Lcom/android/quickstep/util/TaskViewSimulator;

    move-result-object p3

    iget-object v0, v0, Landroid/app/ActivityManager$RunningTaskInfo;->displayCutoutInsets:Landroid/graphics/Rect;

    invoke-virtual {p2, p3, v3, v0}, Lcom/android/quickstep/util/SwipePipToHomeAnimator$Builder;->setFromRotation(Lcom/android/quickstep/util/TaskViewSimulator;ILandroid/graphics/Rect;)Lcom/android/quickstep/util/SwipePipToHomeAnimator$Builder;

    :cond_3
    invoke-virtual {p2}, Lcom/android/quickstep/util/SwipePipToHomeAnimator$Builder;->build()Lcom/android/quickstep/util/SwipePipToHomeAnimator;

    move-result-object p2

    invoke-virtual {p1}, Lcom/android/quickstep/SwipeUpAnimationLogic$HomeAnimationFactory;->createActivityAnimationToHome()Lcom/android/launcher3/anim/AnimatorPlaybackController;

    move-result-object p1

    new-instance p3, Lcom/android/quickstep/AbsSwipeUpHandler$11;

    invoke-direct {p3, p0, p1}, Lcom/android/quickstep/AbsSwipeUpHandler$11;-><init>(Lcom/android/quickstep/AbsSwipeUpHandler;Lcom/android/launcher3/anim/AnimatorPlaybackController;)V

    invoke-virtual {p2, p3}, Lcom/android/quickstep/util/RectFSpringAnim;->addAnimatorListener(Landroid/animation/Animator$AnimatorListener;)V

    new-array p1, v8, [Lcom/android/quickstep/util/RectFSpringAnim;

    aput-object p2, p1, v2

    invoke-direct {p0, p1}, Lcom/android/quickstep/AbsSwipeUpHandler;->setupWindowAnimation([Lcom/android/quickstep/util/RectFSpringAnim;)V

    return-object p2
.end method

.method public static synthetic d(Lcom/android/quickstep/AbsSwipeUpHandler;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/quickstep/AbsSwipeUpHandler;->lambda$onSettledOnEndTarget$14()V

    return-void
.end method

.method public static synthetic d0(Lcom/android/quickstep/AbsSwipeUpHandler;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/quickstep/AbsSwipeUpHandler;->onSettledOnEndTarget()V

    return-void
.end method

.method private doLogGesture(Lcom/android/quickstep/GestureState$GestureEndTarget;Lcom/android/quickstep/views/TaskView;)V
    .locals 5
    .param p2    # Lcom/android/quickstep/views/TaskView;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    iget-object v0, p0, Lcom/android/quickstep/SwipeUpAnimationLogic;->mDp:Lcom/android/launcher3/DeviceProfile;

    if-eqz v0, :cond_9

    iget-boolean v0, v0, Lcom/android/launcher3/DeviceProfile;->isGestureMode:Z

    if-nez v0, :cond_0

    goto/16 :goto_4

    :cond_0
    sget-object v0, Lcom/android/quickstep/AbsSwipeUpHandler$14;->$SwitchMap$com$android$quickstep$GestureState$GestureEndTarget:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x2

    if-eq v0, v1, :cond_4

    const/4 v2, 0x3

    if-eq v0, v2, :cond_3

    const/4 v2, 0x4

    if-eq v0, v2, :cond_1

    const/4 v2, 0x5

    if-eq v0, v2, :cond_1

    sget-object v0, Lcom/android/launcher3/logging/StatsLogManager$LauncherEvent;->IGNORE:Lcom/android/launcher3/logging/StatsLogManager$LauncherEvent;

    goto :goto_0

    :cond_1
    iget-boolean v0, p0, Lcom/android/quickstep/AbsSwipeUpHandler;->mLogDirectionUpOrLeft:Z

    if-eqz v0, :cond_2

    sget-object v0, Lcom/android/launcher3/logging/StatsLogManager$LauncherEvent;->LAUNCHER_QUICKSWITCH_LEFT:Lcom/android/launcher3/logging/StatsLogManager$LauncherEvent;

    goto :goto_0

    :cond_2
    sget-object v0, Lcom/android/launcher3/logging/StatsLogManager$LauncherEvent;->LAUNCHER_QUICKSWITCH_RIGHT:Lcom/android/launcher3/logging/StatsLogManager$LauncherEvent;

    goto :goto_0

    :cond_3
    sget-object v0, Lcom/android/launcher3/logging/StatsLogManager$LauncherEvent;->LAUNCHER_OVERVIEW_GESTURE:Lcom/android/launcher3/logging/StatsLogManager$LauncherEvent;

    goto :goto_0

    :cond_4
    sget-object v0, Lcom/android/launcher3/logging/StatsLogManager$LauncherEvent;->LAUNCHER_HOME_GESTURE:Lcom/android/launcher3/logging/StatsLogManager$LauncherEvent;

    :goto_0
    iget-object v2, p0, Lcom/android/quickstep/SwipeUpAnimationLogic;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/launcher3/logging/StatsLogManager;->newInstance(Landroid/content/Context;)Lcom/android/launcher3/logging/StatsLogManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/launcher3/logging/StatsLogManager;->logger()Lcom/android/launcher3/logging/StatsLogManager$StatsLogger;

    move-result-object v2

    const/4 v3, 0x1

    invoke-interface {v2, v3}, Lcom/android/launcher3/logging/StatsLogManager$StatsLogger;->withSrcState(I)Lcom/android/launcher3/logging/StatsLogManager$StatsLogger;

    move-result-object v2

    iget v4, p1, Lcom/android/quickstep/GestureState$GestureEndTarget;->containerType:I

    invoke-interface {v2, v4}, Lcom/android/launcher3/logging/StatsLogManager$StatsLogger;->withDstState(I)Lcom/android/launcher3/logging/StatsLogManager$StatsLogger;

    move-result-object v2

    iget-object v4, p0, Lcom/android/quickstep/SwipeUpAnimationLogic;->mGestureState:Lcom/android/quickstep/GestureState;

    invoke-virtual {v4}, Lcom/android/quickstep/GestureState;->isTrackpadGesture()Z

    move-result v4

    if-eqz v4, :cond_5

    goto :goto_1

    :cond_5
    move v1, v3

    :goto_1
    invoke-interface {v2, v1}, Lcom/android/launcher3/logging/StatsLogManager$StatsLogger;->withInputType(I)Lcom/android/launcher3/logging/StatsLogManager$StatsLogger;

    move-result-object v1

    if-eqz p2, :cond_6

    invoke-virtual {p2}, Lcom/android/quickstep/views/TaskView;->getItemInfo()Lcom/android/launcher3/model/data/WorkspaceItemInfo;

    move-result-object p2

    invoke-interface {v1, p2}, Lcom/android/launcher3/logging/StatsLogManager$StatsLogger;->withItemInfo(Lcom/android/launcher3/model/data/ItemInfo;)Lcom/android/launcher3/logging/StatsLogManager$StatsLogger;

    :cond_6
    sget-object p2, Lcom/android/quickstep/GestureState$GestureEndTarget;->LAST_TASK:Lcom/android/quickstep/GestureState$GestureEndTarget;

    if-eq p1, p2, :cond_8

    iget-object p0, p0, Lcom/android/quickstep/AbsSwipeUpHandler;->mRecentsView:Lcom/android/quickstep/views/RecentsView;

    if-nez p0, :cond_7

    goto :goto_2

    :cond_7
    invoke-virtual {p0}, Lcom/android/launcher3/PagedView;->getNextPage()I

    move-result p0

    goto :goto_3

    :cond_8
    :goto_2
    const/4 p0, -0x1

    :goto_3
    invoke-interface {v1, p0}, Lcom/android/launcher3/logging/StatsLogManager$StatsLogger;->withRank(I)Lcom/android/launcher3/logging/StatsLogManager$StatsLogger;

    invoke-interface {v1, v0}, Lcom/android/launcher3/logging/StatsLogManager$StatsLogger;->log(Lcom/android/launcher3/logging/StatsLogManager$EventEnum;)V

    :cond_9
    :goto_4
    return-void
.end method

.method private dpiFromPx(F)F
    .locals 0

    iget-object p0, p0, Lcom/android/quickstep/SwipeUpAnimationLogic;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p0

    iget p0, p0, Landroid/util/DisplayMetrics;->densityDpi:I

    invoke-static {p1, p0}, Lcom/android/launcher3/Utilities;->dpiFromPx(FI)F

    move-result p0

    return p0
.end method

.method public static synthetic e(Lcom/android/quickstep/AbsSwipeUpHandler;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/quickstep/AbsSwipeUpHandler;->lambda$new$2()V

    return-void
.end method

.method public static synthetic e0(Lcom/android/quickstep/AbsSwipeUpHandler;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/quickstep/AbsSwipeUpHandler;->onLauncherPresentAndGestureStarted()V

    return-void
.end method

.method private enableInputConsumerWithRecentTaskId()V
    .locals 2

    sget-object v0, Lcom/android/launcher3/util/Executors;->UI_HELPER_EXECUTOR:Lcom/android/launcher3/util/LooperExecutor;

    new-instance v1, Lcom/android/quickstep/b0;

    invoke-direct {v1, p0}, Lcom/android/quickstep/b0;-><init>(Lcom/android/quickstep/AbsSwipeUpHandler;)V

    invoke-virtual {v0, v1}, Ljava/util/concurrent/AbstractExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    return-void
.end method

.method private endLauncherTransitionController()V
    .locals 2

    const-string v0, "Recent"

    const-string v1, "Abs -> endLauncherTransitionController."

    invoke-static {v0, v1}, Ly2/e;->c(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/quickstep/AbsSwipeUpHandler;->mHasEndedLauncherTransition:Z

    iget-object v0, p0, Lcom/android/quickstep/AbsSwipeUpHandler;->mLauncherTransitionController:Lcom/android/quickstep/util/AnimatorControllerWithResistance;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/quickstep/util/AnimatorControllerWithResistance;->getNormalController()Lcom/android/launcher3/anim/AnimatorPlaybackController;

    move-result-object v0

    new-instance v1, Lcom/android/quickstep/a;

    invoke-direct {v1, p0}, Lcom/android/quickstep/a;-><init>(Lcom/android/quickstep/AbsSwipeUpHandler;)V

    invoke-virtual {v0, v1}, Lcom/android/launcher3/anim/AnimatorPlaybackController;->dispatchSetInterpolator(Landroid/animation/TimeInterpolator;)V

    iget-object v0, p0, Lcom/android/quickstep/AbsSwipeUpHandler;->mLauncherTransitionController:Lcom/android/quickstep/util/AnimatorControllerWithResistance;

    invoke-virtual {v0}, Lcom/android/quickstep/util/AnimatorControllerWithResistance;->getNormalController()Lcom/android/launcher3/anim/AnimatorPlaybackController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/anim/AnimatorPlaybackController;->getAnimationPlayer()Landroid/animation/ValueAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->end()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/quickstep/AbsSwipeUpHandler;->mLauncherTransitionController:Lcom/android/quickstep/util/AnimatorControllerWithResistance;

    :cond_0
    iget-object p0, p0, Lcom/android/quickstep/AbsSwipeUpHandler;->mRecentsView:Lcom/android/quickstep/views/RecentsView;

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Lcom/android/launcher3/PagedView;->abortScrollerAnimation()V

    :cond_1
    return-void
.end method

.method private endRunningWindowAnim(Z)V
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Abs -> endRunningWindowAnim cancel = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Recent"

    invoke-static {v1, v0}, Ly2/e;->c(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/quickstep/AbsSwipeUpHandler;->mRunningWindowAnim:[Lcom/android/quickstep/SwipeUpAnimationLogic$RunningWindowAnim;

    if-eqz v0, :cond_3

    const/4 v1, 0x0

    if-eqz p1, :cond_1

    array-length p1, v0

    :goto_0
    if-ge v1, p1, :cond_3

    aget-object v2, v0, v1

    if-eqz v2, :cond_0

    invoke-interface {v2}, Lcom/android/quickstep/SwipeUpAnimationLogic$RunningWindowAnim;->cancel()V

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    array-length p1, v0

    :goto_1
    if-ge v1, p1, :cond_3

    aget-object v2, v0, v1

    if-eqz v2, :cond_2

    invoke-interface {v2}, Lcom/android/quickstep/SwipeUpAnimationLogic$RunningWindowAnim;->end()V

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_3
    iget-object p0, p0, Lcom/android/quickstep/AbsSwipeUpHandler;->mParallelRunningAnim:Landroid/animation/Animator;

    if-eqz p0, :cond_4

    invoke-virtual {p0}, Landroid/animation/Animator;->end()V

    :cond_4
    return-void
.end method

.method private enterWindowMode()V
    .locals 1

    invoke-static {}, Ly2/a;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/quickstep/SwipeUpAnimationLogic;->mGestureState:Lcom/android/quickstep/GestureState;

    invoke-virtual {v0}, Lcom/android/quickstep/GestureState;->getRunningTaskId()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/quickstep/AbsSwipeUpHandler;->enterWindowModeForAndroidT(I)V

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Lcom/android/quickstep/AbsSwipeUpHandler;->enterWindowModeForAndroidS()V

    :goto_0
    sget-object p0, Ly4/a;->h:Ly4/a;

    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Ly4/a;->e(I)V

    return-void
.end method

.method private enterWindowModeForAndroidS()V
    .locals 12

    const-string v0, "nothing.view.WindowManagerExt"

    invoke-static {v0}, Ly2/g;->c(Ljava/lang/String;)Ly2/g$f;

    move-result-object v0

    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/Class;

    const-class v3, Landroid/content/Context;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    const-string v3, "getInstance"

    invoke-interface {v0, v3, v2}, Ly2/g$f;->a(Ljava/lang/String;[Ljava/lang/Class;)Ly2/g$h;

    move-result-object v0

    new-array v2, v1, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/android/quickstep/SwipeUpAnimationLogic;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    aput-object v3, v2, v4

    const/4 v3, 0x0

    invoke-interface {v0, v3, v2}, Ly2/g$h;->a(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v2, p0, Lcom/android/quickstep/SwipeUpAnimationLogic;->mRemoteTargetHandles:[Lcom/android/quickstep/RemoteTargetGluer$RemoteTargetHandle;

    aget-object v2, v2, v4

    invoke-virtual {v2}, Lcom/android/quickstep/RemoteTargetGluer$RemoteTargetHandle;->getTaskViewSimulator()Lcom/android/quickstep/util/TaskViewSimulator;

    move-result-object v2

    new-instance v3, Landroid/graphics/RectF;

    invoke-virtual {v2}, Lcom/android/quickstep/util/TaskViewSimulator;->getCurrentCropRect()Landroid/graphics/RectF;

    move-result-object v5

    invoke-direct {v3, v5}, Landroid/graphics/RectF;-><init>(Landroid/graphics/RectF;)V

    invoke-virtual {v2}, Lcom/android/quickstep/util/TaskViewSimulator;->getCurrentMatrix()Landroid/graphics/Matrix;

    move-result-object v5

    invoke-virtual {v5, v3}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    new-instance v5, Landroid/graphics/Rect;

    invoke-direct {v5}, Landroid/graphics/Rect;-><init>()V

    invoke-virtual {v3, v5}, Landroid/graphics/RectF;->round(Landroid/graphics/Rect;)V

    iget-object p0, p0, Lcom/android/quickstep/SwipeUpAnimationLogic;->mGestureState:Lcom/android/quickstep/GestureState;

    invoke-virtual {p0}, Lcom/android/quickstep/GestureState;->getRunningTask()Lcom/android/quickstep/TopTaskTracker$CachedTaskInfo;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/quickstep/TopTaskTracker$CachedTaskInfo;->getTaskId()I

    move-result p0

    invoke-static {v0}, Ly2/g;->b(Ljava/lang/Object;)Ly2/g$f;

    move-result-object v3

    const/4 v6, 0x5

    new-array v7, v6, [Ljava/lang/Class;

    sget-object v8, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v8, v7, v4

    aput-object v8, v7, v1

    const/4 v9, 0x2

    aput-object v8, v7, v9

    const-class v8, Landroid/graphics/Rect;

    const/4 v10, 0x3

    aput-object v8, v7, v10

    sget-object v8, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    const/4 v11, 0x4

    aput-object v8, v7, v11

    const-string v8, "enterWindowMode"

    invoke-interface {v3, v8, v7}, Ly2/g$f;->a(Ljava/lang/String;[Ljava/lang/Class;)Ly2/g$h;

    move-result-object v3

    new-array v6, v6, [Ljava/lang/Object;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    aput-object p0, v6, v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    aput-object p0, v6, v1

    const/16 p0, 0xc

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    aput-object p0, v6, v9

    aput-object v5, v6, v10

    invoke-virtual {v2}, Lcom/android/quickstep/util/TaskViewSimulator;->getCurrentCornerRadius()F

    move-result p0

    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p0

    aput-object p0, v6, v11

    invoke-interface {v3, v0, v6}, Ly2/g$h;->a(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method private enterWindowModeForAndroidT(I)V
    .locals 11

    invoke-static {}, Lcom/android/quickstep/utils/WindowModeHelper;->isGestureEnterWindowModeSupport()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const-string v0, "android.view.NtWindowManager"

    invoke-static {v0}, Ly2/g;->c(Ljava/lang/String;)Ly2/g$f;

    move-result-object v0

    new-array v2, v1, [Ljava/lang/Class;

    const-string v3, "getInstance"

    invoke-interface {v0, v3, v2}, Ly2/g$f;->a(Ljava/lang/String;[Ljava/lang/Class;)Ly2/g$h;

    move-result-object v0

    const/4 v2, 0x0

    new-array v3, v1, [Ljava/lang/Object;

    invoke-interface {v0, v2, v3}, Ly2/g$h;->a(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object p0, p0, Lcom/android/quickstep/SwipeUpAnimationLogic;->mRemoteTargetHandles:[Lcom/android/quickstep/RemoteTargetGluer$RemoteTargetHandle;

    aget-object p0, p0, v1

    invoke-virtual {p0}, Lcom/android/quickstep/RemoteTargetGluer$RemoteTargetHandle;->getTaskViewSimulator()Lcom/android/quickstep/util/TaskViewSimulator;

    move-result-object p0

    new-instance v2, Landroid/graphics/RectF;

    invoke-virtual {p0}, Lcom/android/quickstep/util/TaskViewSimulator;->getCurrentCropRect()Landroid/graphics/RectF;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/graphics/RectF;-><init>(Landroid/graphics/RectF;)V

    invoke-virtual {p0}, Lcom/android/quickstep/util/TaskViewSimulator;->getCurrentMatrix()Landroid/graphics/Matrix;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    invoke-virtual {v2, v3}, Landroid/graphics/RectF;->round(Landroid/graphics/Rect;)V

    invoke-static {v0}, Ly2/g;->b(Ljava/lang/Object;)Ly2/g$f;

    move-result-object v2

    const/4 v4, 0x5

    new-array v5, v4, [Ljava/lang/Class;

    sget-object v6, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v6, v5, v1

    const/4 v7, 0x1

    aput-object v6, v5, v7

    const/4 v8, 0x2

    aput-object v6, v5, v8

    const-class v6, Landroid/graphics/Rect;

    const/4 v9, 0x3

    aput-object v6, v5, v9

    sget-object v6, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    const/4 v10, 0x4

    aput-object v6, v5, v10

    const-string v6, "enterWindowMode"

    invoke-interface {v2, v6, v5}, Ly2/g$f;->a(Ljava/lang/String;[Ljava/lang/Class;)Ly2/g$h;

    move-result-object v2

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v4, v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v4, v7

    const/16 p1, 0x65

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v4, v8

    aput-object v3, v4, v9

    invoke-virtual {p0}, Lcom/android/quickstep/util/TaskViewSimulator;->getCurrentCornerRadius()F

    move-result p0

    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p0

    aput-object p0, v4, v10

    invoke-interface {v2, v0, v4}, Ly2/g$h;->a(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    invoke-static {}, Lcom/android/quickstep/utils/WindowModeHelper;->constructWindowModeActivityOption()Landroid/app/ActivityOptions;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-direct {p0, v1}, Lcom/android/quickstep/AbsSwipeUpHandler;->endRunningWindowAnim(Z)V

    invoke-static {}, Lcom/android/systemui/shared/system/TaskStackChangeListeners;->getInstance()Lcom/android/systemui/shared/system/TaskStackChangeListeners;

    move-result-object v1

    iget-object p0, p0, Lcom/android/quickstep/AbsSwipeUpHandler;->mActivityRestartListener:Lcom/android/systemui/shared/system/TaskStackChangeListener;

    invoke-virtual {v1, p0}, Lcom/android/systemui/shared/system/TaskStackChangeListeners;->unregisterTaskStackListener(Lcom/android/systemui/shared/system/TaskStackChangeListener;)V

    invoke-static {}, Lcom/android/systemui/shared/system/ActivityManagerWrapper;->getInstance()Lcom/android/systemui/shared/system/ActivityManagerWrapper;

    move-result-object p0

    invoke-virtual {p0, p1, v0}, Lcom/android/systemui/shared/system/ActivityManagerWrapper;->startActivityFromRecents(ILandroid/app/ActivityOptions;)Z

    :cond_1
    :goto_0
    return-void
.end method

.method public static synthetic f(Lcom/android/quickstep/AbsSwipeUpHandler;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/quickstep/AbsSwipeUpHandler;->resumeLastTask()V

    return-void
.end method

.method public static synthetic f0(Lcom/android/quickstep/AbsSwipeUpHandler;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/quickstep/AbsSwipeUpHandler;->onRecentsViewScroll()V

    return-void
.end method

.method private finishCurrentTransitionToAllApps()V
    .locals 2
    .annotation build Landroidx/annotation/UiThread;
    .end annotation

    const-string v0, "Recent"

    const-string v1, "Abs -> finishCurrentTransitionToAllApps."

    invoke-static {v0, v1}, Ly2/e;->c(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/android/quickstep/AbsSwipeUpHandler;->finishCurrentTransitionToHome()V

    invoke-direct {p0}, Lcom/android/quickstep/AbsSwipeUpHandler;->reset()V

    return-void
.end method

.method private finishCurrentTransitionToHome()V
    .locals 3

    const-string v0, "Recent"

    const-string v1, "Abs -> finishCurrentTransitionToHome."

    invoke-static {v0, v1}, Ly2/e;->c(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/quickstep/AbsSwipeUpHandler;->hasTargets()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/quickstep/AbsSwipeUpHandler;->mRecentsAnimationController:Lcom/android/quickstep/RecentsAnimationController;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Lcom/android/quickstep/AbsSwipeUpHandler;->maybeFinishSwipePipToHome()V

    new-instance v0, Lcom/android/quickstep/e0;

    invoke-direct {v0, p0}, Lcom/android/quickstep/e0;-><init>(Lcom/android/quickstep/AbsSwipeUpHandler;)V

    invoke-virtual {p0, v0}, Lcom/android/quickstep/AbsSwipeUpHandler;->finishRecentsControllerToHome(Ljava/lang/Runnable;)V

    goto :goto_1

    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/android/quickstep/AbsSwipeUpHandler;->mStateCallback:Lcom/android/quickstep/MultiStateCallback;

    sget v1, Lcom/android/quickstep/AbsSwipeUpHandler;->STATE_CURRENT_TASK_FINISHED:I

    invoke-virtual {v0, v1}, Lcom/android/quickstep/MultiStateCallback;->setStateOnUiThread(I)V

    invoke-direct {p0}, Lcom/android/quickstep/AbsSwipeUpHandler;->maybeAbortSwipePipToHome()V

    :goto_1
    iget-object v0, p0, Lcom/android/quickstep/AbsSwipeUpHandler;->mSwipePipToHomeReleaseCheck:Lcom/android/quickstep/RemoteAnimationTargets$ReleaseCheck;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lcom/android/quickstep/RemoteAnimationTargets$ReleaseCheck;->setCanRelease(Z)V

    iput-object v1, p0, Lcom/android/quickstep/AbsSwipeUpHandler;->mSwipePipToHomeReleaseCheck:Lcom/android/quickstep/RemoteAnimationTargets$ReleaseCheck;

    :cond_2
    sget-object v0, Lcom/android/quickstep/GestureState$GestureEndTarget;->HOME:Lcom/android/quickstep/GestureState$GestureEndTarget;

    iget-object v2, p0, Lcom/android/quickstep/AbsSwipeUpHandler;->mRecentsView:Lcom/android/quickstep/views/RecentsView;

    if-nez v2, :cond_3

    goto :goto_2

    :cond_3
    invoke-virtual {v2}, Lcom/android/quickstep/views/RecentsView;->getCurrentPageTaskView()Lcom/android/quickstep/views/TaskView;

    move-result-object v1

    :goto_2
    invoke-direct {p0, v0, v1}, Lcom/android/quickstep/AbsSwipeUpHandler;->doLogGesture(Lcom/android/quickstep/GestureState$GestureEndTarget;Lcom/android/quickstep/views/TaskView;)V

    return-void
.end method

.method private finishCurrentTransitionToRecents()V
    .locals 3

    const-string v0, "Recent"

    const-string v1, "Abs -> finishCurrentTransitionToRecents."

    invoke-static {v0, v1}, Ly2/e;->c(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/android/quickstep/AbsSwipeUpHandler;->isNeedFinishLiveTileWindow()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " finishCurrentTransitionToRecents needFinishLiveTileWindow, finishRecentsAnimation runningtaskviewId "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/quickstep/AbsSwipeUpHandler;->mRecentsView:Lcom/android/quickstep/views/RecentsView;

    invoke-virtual {v2}, Lcom/android/quickstep/views/RecentsView;->getRunningTaskViewId()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "AbsSwipeUpHandler"

    invoke-static {v2, v0}, Ly2/e;->l(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/quickstep/AbsSwipeUpHandler;->mRecentsView:Lcom/android/quickstep/views/RecentsView;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/android/quickstep/views/RecentsView;->setRunningTaskHidden(Z)V

    iget-object v0, p0, Lcom/android/quickstep/AbsSwipeUpHandler;->mRecentsView:Lcom/android/quickstep/views/RecentsView;

    invoke-virtual {v0, v1}, Lcom/android/quickstep/views/RecentsView;->setRunningTaskViewShowScreenshot(Z)V

    iget-object v0, p0, Lcom/android/quickstep/AbsSwipeUpHandler;->mRecentsView:Lcom/android/quickstep/views/RecentsView;

    invoke-virtual {v0}, Lcom/android/quickstep/views/RecentsView;->cleanupRemoteTargets()V

    iget-object v0, p0, Lcom/android/quickstep/AbsSwipeUpHandler;->mRecentsView:Lcom/android/quickstep/views/RecentsView;

    new-instance v1, Lcom/android/quickstep/p;

    invoke-direct {v1, p0}, Lcom/android/quickstep/p;-><init>(Lcom/android/quickstep/AbsSwipeUpHandler;)V

    invoke-virtual {v0, v1}, Lcom/android/quickstep/views/RecentsView;->switchToScreenshot(Ljava/lang/Runnable;)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/quickstep/AbsSwipeUpHandler;->mRecentsView:Lcom/android/quickstep/views/RecentsView;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/quickstep/AbsSwipeUpHandler;->mActivityInterface:Lcom/android/quickstep/BaseActivityInterface;

    invoke-virtual {v0}, Lcom/android/quickstep/BaseActivityInterface;->getDesktopVisibilityController()Lcom/android/launcher3/statehandlers/DesktopVisibilityController;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/quickstep/AbsSwipeUpHandler;->mActivityInterface:Lcom/android/quickstep/BaseActivityInterface;

    invoke-virtual {v0}, Lcom/android/quickstep/BaseActivityInterface;->getDesktopVisibilityController()Lcom/android/launcher3/statehandlers/DesktopVisibilityController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/statehandlers/DesktopVisibilityController;->areFreeformTasksVisible()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/quickstep/AbsSwipeUpHandler;->mRecentsView:Lcom/android/quickstep/views/RecentsView;

    new-instance v1, Lcom/android/quickstep/h;

    invoke-direct {v1, p0}, Lcom/android/quickstep/h;-><init>(Lcom/android/quickstep/AbsSwipeUpHandler;)V

    invoke-virtual {v0, v1}, Lcom/android/quickstep/views/RecentsView;->switchToScreenshot(Ljava/lang/Runnable;)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/android/quickstep/AbsSwipeUpHandler;->mStateCallback:Lcom/android/quickstep/MultiStateCallback;

    sget v2, Lcom/android/quickstep/AbsSwipeUpHandler;->STATE_CURRENT_TASK_FINISHED:I

    invoke-virtual {v0, v2}, Lcom/android/quickstep/MultiStateCallback;->setStateOnUiThread(I)V

    iget-object p0, p0, Lcom/android/quickstep/AbsSwipeUpHandler;->mRecentsAnimationController:Lcom/android/quickstep/RecentsAnimationController;

    if-eqz p0, :cond_2

    invoke-virtual {p0, v1}, Lcom/android/quickstep/RecentsAnimationController;->detachNavigationBarFromApp(Z)V

    :cond_2
    :goto_0
    return-void
.end method

.method private finishRecentsAnimationOnTasksAppeared(Ljava/lang/Runnable;)V
    .locals 1

    iget-object v0, p0, Lcom/android/quickstep/AbsSwipeUpHandler;->mRecentsAnimationController:Lcom/android/quickstep/RecentsAnimationController;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/quickstep/AbsSwipeUpHandler;->mActivity:Lcom/android/launcher3/statemanager/StatefulActivity;

    invoke-virtual {v0}, Lcom/android/launcher3/statemanager/StatefulActivity;->getStateManager()Lcom/android/launcher3/statemanager/StateManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/statemanager/StateManager;->moveToRestState()V

    iget-object p0, p0, Lcom/android/quickstep/AbsSwipeUpHandler;->mRecentsAnimationController:Lcom/android/quickstep/RecentsAnimationController;

    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1}, Lcom/android/quickstep/RecentsAnimationController;->finish(ZLjava/lang/Runnable;)V

    :cond_0
    sget-object p0, Lcom/android/quickstep/util/ActiveGestureLog;->INSTANCE:Lcom/android/quickstep/util/ActiveGestureLog;

    const-string p1, "finishRecentsAnimationOnTasksAppeared"

    invoke-virtual {p0, p1}, Lcom/android/quickstep/util/ActiveGestureLog;->addLog(Ljava/lang/String;)V

    return-void
.end method

.method private flushOnRecentsAnimationAndLauncherBound()V
    .locals 2

    iget-object v0, p0, Lcom/android/quickstep/AbsSwipeUpHandler;->mRecentsAnimationTargets:Lcom/android/quickstep/RecentsAnimationTargets;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/quickstep/AbsSwipeUpHandler;->mStateCallback:Lcom/android/quickstep/MultiStateCallback;

    sget v1, Lcom/android/quickstep/AbsSwipeUpHandler;->STATE_LAUNCHER_BIND_TO_SERVICE:I

    invoke-virtual {v0, v1}, Lcom/android/quickstep/MultiStateCallback;->hasStates(I)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    iget-object v0, p0, Lcom/android/quickstep/AbsSwipeUpHandler;->mRecentsAnimationStartCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/android/quickstep/AbsSwipeUpHandler;->mRecentsAnimationStartCallbacks:Ljava/util/ArrayList;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Runnable;

    invoke-interface {v1}, Ljava/lang/Runnable;->run()V

    goto :goto_0

    :cond_1
    iget-object p0, p0, Lcom/android/quickstep/AbsSwipeUpHandler;->mRecentsAnimationStartCallbacks:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->clear()V

    :cond_2
    :goto_1
    return-void
.end method

.method public static synthetic g(Lcom/android/quickstep/AbsSwipeUpHandler;Ljava/util/function/Consumer;ZLjava/lang/Boolean;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/android/quickstep/AbsSwipeUpHandler;->lambda$startNewTask$35(Ljava/util/function/Consumer;ZLjava/lang/Boolean;)V

    return-void
.end method

.method public static synthetic g0(Lcom/android/quickstep/AbsSwipeUpHandler;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/quickstep/AbsSwipeUpHandler;->invalidateHandler()V

    return-void
.end method

.method private getActiveRecentsLayerTaskId()I
    .locals 4

    invoke-static {}, Lcom/android/quickstep/utils/WindowModeHelper;->isSupportGetActiveTaskId()Z

    move-result p0

    const/4 v0, 0x0

    if-eqz p0, :cond_0

    const-string p0, "android.view.NtWindowManager"

    invoke-static {p0}, Ly2/g;->c(Ljava/lang/String;)Ly2/g$f;

    move-result-object p0

    new-array v1, v0, [Ljava/lang/Class;

    const-string v2, "getInstance"

    invoke-interface {p0, v2, v1}, Ly2/g$f;->a(Ljava/lang/String;[Ljava/lang/Class;)Ly2/g$h;

    move-result-object p0

    const/4 v1, 0x0

    new-array v2, v0, [Ljava/lang/Object;

    invoke-interface {p0, v1, v2}, Ly2/g$h;->a(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-static {p0}, Ly2/g;->b(Ljava/lang/Object;)Ly2/g$f;

    move-result-object v1

    new-array v2, v0, [Ljava/lang/Class;

    const-string v3, "getActiveRecentsLayerTaskId"

    invoke-interface {v1, v3, v2}, Ly2/g$f;->a(Ljava/lang/String;[Ljava/lang/Class;)Ly2/g$h;

    move-result-object v1

    new-array v2, v0, [Ljava/lang/Object;

    invoke-interface {v1, p0, v2}, Ly2/g$h;->a(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    if-eqz p0, :cond_0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    :cond_0
    return v0
.end method

.method private getKeepClearAreaForHotseat()Landroid/graphics/Rect;
    .locals 4

    sget-boolean v0, Lcom/android/launcher3/uioverrides/QuickstepLauncher;->ENABLE_PIP_KEEP_CLEAR_ALGORITHM:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    new-instance v0, Landroid/graphics/Rect;

    iget-object p0, p0, Lcom/android/quickstep/SwipeUpAnimationLogic;->mDp:Lcom/android/launcher3/DeviceProfile;

    iget p0, p0, Lcom/android/launcher3/DeviceProfile;->hotseatBarSizePx:I

    invoke-direct {v0, v1, v1, v1, p0}, Landroid/graphics/Rect;-><init>(IIII)V

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/android/quickstep/SwipeUpAnimationLogic;->mDp:Lcom/android/launcher3/DeviceProfile;

    iget-boolean v2, v0, Lcom/android/launcher3/DeviceProfile;->isPhone:Z

    if-eqz v2, :cond_3

    invoke-virtual {v0}, Lcom/android/launcher3/DeviceProfile;->isSeascape()Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Landroid/graphics/Rect;

    iget-object p0, p0, Lcom/android/quickstep/SwipeUpAnimationLogic;->mDp:Lcom/android/launcher3/DeviceProfile;

    iget v2, p0, Lcom/android/launcher3/DeviceProfile;->hotseatBarSizePx:I

    iget p0, p0, Lcom/android/launcher3/DeviceProfile;->heightPx:I

    invoke-direct {v0, v1, v1, v2, p0}, Landroid/graphics/Rect;-><init>(IIII)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/android/quickstep/SwipeUpAnimationLogic;->mDp:Lcom/android/launcher3/DeviceProfile;

    iget-boolean v0, v0, Lcom/android/launcher3/DeviceProfile;->isLandscape:Z

    if-eqz v0, :cond_2

    new-instance v0, Landroid/graphics/Rect;

    iget-object p0, p0, Lcom/android/quickstep/SwipeUpAnimationLogic;->mDp:Lcom/android/launcher3/DeviceProfile;

    iget v2, p0, Lcom/android/launcher3/DeviceProfile;->widthPx:I

    iget v3, p0, Lcom/android/launcher3/DeviceProfile;->hotseatBarSizePx:I

    sub-int v3, v2, v3

    iget p0, p0, Lcom/android/launcher3/DeviceProfile;->heightPx:I

    invoke-direct {v0, v3, v1, v2, p0}, Landroid/graphics/Rect;-><init>(IIII)V

    goto :goto_0

    :cond_2
    new-instance v0, Landroid/graphics/Rect;

    iget-object p0, p0, Lcom/android/quickstep/SwipeUpAnimationLogic;->mDp:Lcom/android/launcher3/DeviceProfile;

    iget v2, p0, Lcom/android/launcher3/DeviceProfile;->heightPx:I

    iget v3, p0, Lcom/android/launcher3/DeviceProfile;->hotseatBarSizePx:I

    sub-int v3, v2, v3

    iget p0, p0, Lcom/android/launcher3/DeviceProfile;->widthPx:I

    invoke-direct {v0, v1, v3, p0, v2}, Landroid/graphics/Rect;-><init>(IIII)V

    goto :goto_0

    :cond_3
    new-instance v0, Landroid/graphics/Rect;

    iget-object p0, p0, Lcom/android/quickstep/SwipeUpAnimationLogic;->mDp:Lcom/android/launcher3/DeviceProfile;

    iget v2, p0, Lcom/android/launcher3/DeviceProfile;->heightPx:I

    iget v3, p0, Lcom/android/launcher3/DeviceProfile;->hotseatBarSizePx:I

    sub-int v3, v2, v3

    iget p0, p0, Lcom/android/launcher3/DeviceProfile;->widthPx:I

    invoke-direct {v0, v1, v3, p0, v2}, Landroid/graphics/Rect;-><init>(IIII)V

    :goto_0
    return-object v0
.end method

.method private static getNextStateFlag(Ljava/lang/String;)I
    .locals 2

    sget p0, Lcom/android/quickstep/AbsSwipeUpHandler;->FLAG_COUNT:I

    const/4 v0, 0x1

    shl-int v1, v0, p0

    add-int/2addr p0, v0

    sput p0, Lcom/android/quickstep/AbsSwipeUpHandler;->FLAG_COUNT:I

    return v1
.end method

.method private getScaleProgressDueToScroll()F
    .locals 7

    iget-object v0, p0, Lcom/android/quickstep/AbsSwipeUpHandler;->mActivity:Lcom/android/launcher3/statemanager/StatefulActivity;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lcom/android/launcher3/BaseActivity;->getDeviceProfile()Lj3/a;

    move-result-object v0

    iget-boolean v0, v0, Lcom/android/launcher3/DeviceProfile;->isTablet:Z

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/quickstep/AbsSwipeUpHandler;->mRecentsView:Lcom/android/quickstep/views/RecentsView;

    if-eqz v0, :cond_3

    iget-boolean v1, p0, Lcom/android/quickstep/AbsSwipeUpHandler;->mRecentsViewScrollLinked:Z

    if-nez v1, :cond_0

    goto :goto_2

    :cond_0
    invoke-virtual {v0}, Lcom/android/launcher3/PagedView;->getCurrentPage()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/quickstep/views/RecentsView;->getScrollOffset(I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    int-to-float v1, v0

    iget-object v0, p0, Lcom/android/quickstep/AbsSwipeUpHandler;->mRecentsView:Lcom/android/quickstep/views/RecentsView;

    invoke-virtual {v0}, Lcom/android/quickstep/views/RecentsView;->getPagedOrientationHandler()Lcom/android/launcher3/touch/PagedOrientationHandler;

    move-result-object v0

    iget-object v2, p0, Lcom/android/quickstep/AbsSwipeUpHandler;->mRecentsView:Lcom/android/quickstep/views/RecentsView;

    invoke-virtual {v2}, Lcom/android/quickstep/views/RecentsView;->getLastComputedTaskSize()Landroid/graphics/Rect;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v2

    iget-object v3, p0, Lcom/android/quickstep/AbsSwipeUpHandler;->mRecentsView:Lcom/android/quickstep/views/RecentsView;

    invoke-virtual {v3}, Lcom/android/quickstep/views/RecentsView;->getLastComputedTaskSize()Landroid/graphics/Rect;

    move-result-object v3

    invoke-virtual {v3}, Landroid/graphics/Rect;->height()I

    move-result v3

    invoke-interface {v0, v2, v3}, Lcom/android/launcher3/touch/PagedOrientationHandler;->getPrimaryValue(II)I

    move-result v0

    iget-object v2, p0, Lcom/android/quickstep/AbsSwipeUpHandler;->mRecentsView:Lcom/android/quickstep/views/RecentsView;

    invoke-virtual {v2}, Lcom/android/launcher3/PagedView;->getPageSpacing()I

    move-result v2

    add-int/2addr v0, v2

    const v2, 0x3d8f5c29    # 0.07f

    iget-object v3, p0, Lcom/android/quickstep/AbsSwipeUpHandler;->mRecentsView:Lcom/android/quickstep/views/RecentsView;

    invoke-virtual {v3}, Lcom/android/quickstep/views/RecentsView;->getMaxScaleForFullScreen()F

    move-result v3

    mul-float v5, v3, v2

    iget v3, p0, Lcom/android/quickstep/AbsSwipeUpHandler;->mQuickSwitchScaleScrollThreshold:F

    cmpg-float p0, v1, v3

    if-gez p0, :cond_1

    const/4 v2, 0x0

    const/4 v4, 0x0

    sget-object v6, Lcom/android/launcher3/anim/Interpolators;->ACCEL_DEACCEL:Landroid/view/animation/Interpolator;

    :goto_0
    invoke-static/range {v1 .. v6}, Lcom/android/launcher3/Utilities;->mapToRange(FFFFFLandroid/view/animation/Interpolator;)F

    move-result v5

    goto :goto_1

    :cond_1
    int-to-float p0, v0

    sub-float v0, p0, v3

    cmpl-float v0, v1, v0

    if-lez v0, :cond_2

    sub-float v2, p0, v3

    const/4 v0, 0x0

    sget-object v6, Lcom/android/launcher3/anim/Interpolators;->ACCEL_DEACCEL:Landroid/view/animation/Interpolator;

    move v3, p0

    move v4, v5

    move v5, v0

    goto :goto_0

    :cond_2
    :goto_1
    return v5

    :cond_3
    :goto_2
    const/4 p0, 0x0

    return p0
.end method

.method private static getTrackedEventForState(I)Lcom/android/quickstep/util/ActiveGestureErrorDetector$GestureEvent;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    sget v0, Lcom/android/quickstep/AbsSwipeUpHandler;->STATE_GESTURE_STARTED:I

    if-ne p0, v0, :cond_0

    sget-object p0, Lcom/android/quickstep/util/ActiveGestureErrorDetector$GestureEvent;->STATE_GESTURE_STARTED:Lcom/android/quickstep/util/ActiveGestureErrorDetector$GestureEvent;

    return-object p0

    :cond_0
    sget v0, Lcom/android/quickstep/AbsSwipeUpHandler;->STATE_GESTURE_COMPLETED:I

    if-ne p0, v0, :cond_1

    sget-object p0, Lcom/android/quickstep/util/ActiveGestureErrorDetector$GestureEvent;->STATE_GESTURE_COMPLETED:Lcom/android/quickstep/util/ActiveGestureErrorDetector$GestureEvent;

    return-object p0

    :cond_1
    sget v0, Lcom/android/quickstep/AbsSwipeUpHandler;->STATE_GESTURE_CANCELLED:I

    if-ne p0, v0, :cond_2

    sget-object p0, Lcom/android/quickstep/util/ActiveGestureErrorDetector$GestureEvent;->STATE_GESTURE_CANCELLED:Lcom/android/quickstep/util/ActiveGestureErrorDetector$GestureEvent;

    return-object p0

    :cond_2
    sget v0, Lcom/android/quickstep/AbsSwipeUpHandler;->STATE_SCREENSHOT_CAPTURED:I

    if-ne p0, v0, :cond_3

    sget-object p0, Lcom/android/quickstep/util/ActiveGestureErrorDetector$GestureEvent;->STATE_SCREENSHOT_CAPTURED:Lcom/android/quickstep/util/ActiveGestureErrorDetector$GestureEvent;

    return-object p0

    :cond_3
    sget v0, Lcom/android/quickstep/AbsSwipeUpHandler;->STATE_CAPTURE_SCREENSHOT:I

    if-ne p0, v0, :cond_4

    sget-object p0, Lcom/android/quickstep/util/ActiveGestureErrorDetector$GestureEvent;->STATE_CAPTURE_SCREENSHOT:Lcom/android/quickstep/util/ActiveGestureErrorDetector$GestureEvent;

    return-object p0

    :cond_4
    sget v0, Lcom/android/quickstep/AbsSwipeUpHandler;->STATE_HANDLER_INVALIDATED:I

    if-ne p0, v0, :cond_5

    sget-object p0, Lcom/android/quickstep/util/ActiveGestureErrorDetector$GestureEvent;->STATE_HANDLER_INVALIDATED:Lcom/android/quickstep/util/ActiveGestureErrorDetector$GestureEvent;

    return-object p0

    :cond_5
    sget v0, Lcom/android/quickstep/AbsSwipeUpHandler;->STATE_LAUNCHER_DRAWN:I

    if-ne p0, v0, :cond_6

    sget-object p0, Lcom/android/quickstep/util/ActiveGestureErrorDetector$GestureEvent;->STATE_LAUNCHER_DRAWN:Lcom/android/quickstep/util/ActiveGestureErrorDetector$GestureEvent;

    return-object p0

    :cond_6
    const/4 p0, 0x0

    return-object p0
.end method

.method public static synthetic h(Lcom/android/quickstep/AbsSwipeUpHandler;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/quickstep/AbsSwipeUpHandler;->lambda$onActivityInit$3()V

    return-void
.end method

.method public static synthetic h0(Lcom/android/quickstep/AbsSwipeUpHandler;Lcom/android/quickstep/views/TaskView;Ljava/lang/Boolean;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/quickstep/AbsSwipeUpHandler;->lambda$startNewTask$21(Lcom/android/quickstep/views/TaskView;Ljava/lang/Boolean;)V

    return-void
.end method

.method private handleNormalGestureEnd(FZLandroid/graphics/PointF;Z)V
    .locals 11
    .annotation build Landroidx/annotation/UiThread;
    .end annotation

    iget-object v0, p0, Lcom/android/quickstep/SwipeUpAnimationLogic;->mCurrentShift:Lcom/android/launcher3/anim/AnimatedFloat;

    iget v0, v0, Lcom/android/launcher3/anim/AnimatedFloat;->value:F

    invoke-direct {p0, p3, p1, p2, p4}, Lcom/android/quickstep/AbsSwipeUpHandler;->calculateEndTarget(Landroid/graphics/PointF;FZZ)Lcom/android/quickstep/GestureState$GestureEndTarget;

    move-result-object v7

    iget-object p1, p0, Lcom/android/quickstep/SwipeUpAnimationLogic;->mGestureState:Lcom/android/quickstep/GestureState;

    const/4 p4, 0x0

    invoke-virtual {p1, v7, p4}, Lcom/android/quickstep/GestureState;->setEndTarget(Lcom/android/quickstep/GestureState$GestureEndTarget;Z)V

    iget-object p1, p0, Lcom/android/quickstep/AbsSwipeUpHandler;->mAnimationFactory:Lcom/android/quickstep/BaseActivityInterface$AnimationFactory;

    invoke-interface {p1, v7}, Lcom/android/quickstep/BaseActivityInterface$AnimationFactory;->setEndTarget(Lcom/android/quickstep/GestureState$GestureEndTarget;)V

    sget-object p1, Lcom/android/quickstep/GestureState$GestureEndTarget;->ALL_APPS:Lcom/android/quickstep/GestureState$GestureEndTarget;

    const/4 v1, 0x0

    if-ne v7, p1, :cond_0

    iget p1, p0, Lcom/android/quickstep/SwipeUpAnimationLogic;->mDragLengthFactor:F

    :goto_0
    move v3, p1

    goto :goto_1

    :cond_0
    iget-boolean p1, v7, Lcom/android/quickstep/GestureState$GestureEndTarget;->isLauncher:Z

    if-eqz p1, :cond_1

    const/high16 p1, 0x3f800000    # 1.0f

    goto :goto_0

    :cond_1
    move v3, v1

    :goto_1
    const-wide/16 v4, 0x15e

    if-nez p2, :cond_2

    sub-float p1, v3, v0

    const/high16 p2, 0x43af0000    # 350.0f

    mul-float/2addr p1, p2

    sget p2, Lcom/android/quickstep/AbsSwipeUpHandler;->SWIPE_DURATION_MULTIPLIER:F

    mul-float/2addr p1, p2

    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result p1

    int-to-long p1, p1

    invoke-static {v4, v5, p1, p2}, Ljava/lang/Math;->min(JJ)J

    move-result-wide p1

    move v2, v0

    goto :goto_2

    :cond_2
    iget p1, p3, Landroid/graphics/PointF;->y:F

    iget-object p2, p0, Lcom/android/quickstep/SwipeUpAnimationLogic;->mContext:Landroid/content/Context;

    invoke-static {p2}, Lcom/android/launcher3/util/window/RefreshRateTracker;->getSingleFrameMs(Landroid/content/Context;)I

    move-result p2

    int-to-float p2, p2

    mul-float/2addr p1, p2

    iget p2, p0, Lcom/android/quickstep/SwipeUpAnimationLogic;->mTransitionDragLength:I

    int-to-float p2, p2

    div-float/2addr p1, p2

    sub-float p1, v0, p1

    iget p2, p0, Lcom/android/quickstep/SwipeUpAnimationLogic;->mDragLengthFactor:F

    invoke-static {p1, v1, p2}, Lcom/android/launcher3/Utilities;->boundToRange(FFF)F

    move-result p1

    iget p2, p0, Lcom/android/quickstep/SwipeUpAnimationLogic;->mTransitionDragLength:I

    if-lez p2, :cond_3

    sub-float v0, v3, v0

    int-to-float p2, p2

    mul-float/2addr v0, p2

    iget p2, p3, Landroid/graphics/PointF;->y:F

    div-float/2addr v0, p2

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result p2

    invoke-static {p2}, Ljava/lang/Math;->round(F)I

    move-result p2

    int-to-long v0, p2

    const-wide/16 v8, 0x2

    mul-long/2addr v0, v8

    invoke-static {v4, v5, v0, v1}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    move v2, p1

    move-wide p1, v0

    goto :goto_2

    :cond_3
    move v2, p1

    move-wide p1, v4

    :goto_2
    iget-object v0, p0, Lcom/android/quickstep/AbsSwipeUpHandler;->mActivityInterface:Lcom/android/quickstep/BaseActivityInterface;

    invoke-virtual {v0, v7}, Lcom/android/quickstep/BaseActivityInterface;->stateFromGestureEndTarget(Lcom/android/quickstep/GestureState$GestureEndTarget;)Lcom/android/launcher3/statemanager/BaseState;

    move-result-object v0

    iget-object v1, p0, Lcom/android/quickstep/SwipeUpAnimationLogic;->mDp:Lcom/android/launcher3/DeviceProfile;

    invoke-interface {v0, v1}, Lcom/android/launcher3/statemanager/BaseState;->displayOverviewTasksAsGrid(Lcom/android/launcher3/DeviceProfile;)Z

    move-result v0

    if-eqz v0, :cond_4

    sget-object v0, Lcom/android/launcher3/anim/Interpolators;->ACCEL_DEACCEL:Landroid/view/animation/Interpolator;

    :goto_3
    move-object v6, v0

    goto :goto_4

    :cond_4
    sget-object v0, Lcom/android/quickstep/GestureState$GestureEndTarget;->RECENTS:Lcom/android/quickstep/GestureState$GestureEndTarget;

    if-ne v7, v0, :cond_5

    sget-object v0, Lcom/android/launcher3/anim/Interpolators;->OVERSHOOT_1_2:Landroid/view/animation/Interpolator;

    goto :goto_3

    :cond_5
    sget-object v0, Lcom/android/launcher3/anim/Interpolators;->DEACCEL:Landroid/view/animation/Interpolator;

    goto :goto_3

    :goto_4
    iget-boolean v0, v7, Lcom/android/quickstep/GestureState$GestureEndTarget;->isLauncher:Z

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/android/quickstep/AbsSwipeUpHandler;->mInputConsumerProxy:Lcom/android/quickstep/util/InputConsumerProxy;

    invoke-virtual {v0}, Lcom/android/quickstep/util/InputConsumerProxy;->enable()V

    :cond_6
    sget-object v0, Lcom/android/quickstep/GestureState$GestureEndTarget;->HOME:Lcom/android/quickstep/GestureState$GestureEndTarget;

    const/4 v1, 0x1

    if-ne v7, v0, :cond_8

    iget-object p1, p0, Lcom/android/quickstep/AbsSwipeUpHandler;->mActivity:Lcom/android/launcher3/statemanager/StatefulActivity;

    if-eqz p1, :cond_7

    invoke-virtual {p1}, Lcom/android/launcher3/BaseActivity;->getDeviceProfile()Lj3/a;

    move-result-object p1

    iget-boolean p1, p1, Lcom/android/launcher3/DeviceProfile;->isTaskbarPresent:Z

    if-eqz p1, :cond_7

    const-wide/16 p1, 0x12c

    goto :goto_5

    :cond_7
    const-wide/16 p1, 0xfa

    :goto_5
    iget-object p4, p0, Lcom/android/quickstep/AbsSwipeUpHandler;->mRecentsAnimationController:Lcom/android/quickstep/RecentsAnimationController;

    if-eqz p4, :cond_e

    invoke-virtual {p4, v1}, Lcom/android/quickstep/RecentsAnimationController;->detachNavigationBarFromApp(Z)V

    goto/16 :goto_7

    :cond_8
    sget-object v0, Lcom/android/quickstep/GestureState$GestureEndTarget;->RECENTS:Lcom/android/quickstep/GestureState$GestureEndTarget;

    if-ne v7, v0, :cond_d

    iget-object v0, p0, Lcom/android/quickstep/AbsSwipeUpHandler;->mRecentsView:Lcom/android/quickstep/views/RecentsView;

    if-eqz v0, :cond_e

    invoke-virtual {v0}, Lcom/android/launcher3/PagedView;->getDestinationPage()I

    move-result v0

    const/4 v8, -0x1

    if-ne v0, v8, :cond_9

    new-instance v8, Ljava/lang/IllegalStateException;

    invoke-direct {v8}, Ljava/lang/IllegalStateException;-><init>()V

    const-string v9, "AbsSwipeUpHandler"

    const-string v10, "RecentsView destination page is invalid"

    invoke-static {v9, v10, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_9
    iget-object v8, p0, Lcom/android/quickstep/AbsSwipeUpHandler;->mRecentsView:Lcom/android/quickstep/views/RecentsView;

    invoke-virtual {v8}, Lcom/android/launcher3/PagedView;->getNextPage()I

    move-result v8

    if-eq v8, v0, :cond_a

    iget-object p4, p0, Lcom/android/quickstep/AbsSwipeUpHandler;->mRecentsView:Lcom/android/quickstep/views/RecentsView;

    invoke-static {p1, p2}, Ljava/lang/Math;->toIntExact(J)I

    move-result v8

    invoke-virtual {p4, v0, v8}, Lcom/android/launcher3/PagedView;->snapToPage(II)Z

    move p4, v1

    :cond_a
    iget-object v0, p0, Lcom/android/quickstep/AbsSwipeUpHandler;->mRecentsView:Lcom/android/quickstep/views/RecentsView;

    invoke-virtual {v0}, Lcom/android/quickstep/views/RecentsView;->getScroller()Landroid/widget/OverScroller;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/OverScroller;->getDuration()I

    move-result v0

    int-to-long v8, v0

    cmp-long v0, v8, v4

    if-lez v0, :cond_b

    iget-object p4, p0, Lcom/android/quickstep/AbsSwipeUpHandler;->mRecentsView:Lcom/android/quickstep/views/RecentsView;

    invoke-virtual {p4}, Lcom/android/launcher3/PagedView;->getNextPage()I

    move-result v0

    const/16 v4, 0x15e

    invoke-virtual {p4, v0, v4}, Lcom/android/launcher3/PagedView;->snapToPage(II)Z

    goto :goto_6

    :cond_b
    move v1, p4

    :goto_6
    iget-object p4, p0, Lcom/android/quickstep/SwipeUpAnimationLogic;->mGestureState:Lcom/android/quickstep/GestureState;

    invoke-virtual {p4}, Lcom/android/quickstep/GestureState;->isHandlingAtomicEvent()Z

    move-result p4

    if-eqz p4, :cond_c

    if-eqz v1, :cond_e

    :cond_c
    iget-object p4, p0, Lcom/android/quickstep/AbsSwipeUpHandler;->mRecentsView:Lcom/android/quickstep/views/RecentsView;

    invoke-virtual {p4}, Lcom/android/quickstep/views/RecentsView;->getScroller()Landroid/widget/OverScroller;

    move-result-object p4

    invoke-virtual {p4}, Landroid/widget/OverScroller;->getDuration()I

    move-result p4

    int-to-long v0, p4

    invoke-static {p1, p2, v0, v1}, Ljava/lang/Math;->max(JJ)J

    move-result-wide p1

    goto :goto_7

    :cond_d
    sget-object p4, Lcom/android/quickstep/GestureState$GestureEndTarget;->LAST_TASK:Lcom/android/quickstep/GestureState$GestureEndTarget;

    if-ne v7, p4, :cond_e

    iget-object p4, p0, Lcom/android/quickstep/AbsSwipeUpHandler;->mRecentsView:Lcom/android/quickstep/views/RecentsView;

    if-eqz p4, :cond_e

    invoke-virtual {p4}, Lcom/android/launcher3/PagedView;->getNextPage()I

    move-result p4

    iget-object v0, p0, Lcom/android/quickstep/AbsSwipeUpHandler;->mRecentsView:Lcom/android/quickstep/views/RecentsView;

    invoke-virtual {v0}, Lcom/android/quickstep/views/RecentsView;->getRunningTaskIndex()I

    move-result v0

    if-eq p4, v0, :cond_e

    iget-object p4, p0, Lcom/android/quickstep/AbsSwipeUpHandler;->mRecentsView:Lcom/android/quickstep/views/RecentsView;

    invoke-virtual {p4}, Lcom/android/quickstep/views/RecentsView;->getRunningTaskIndex()I

    move-result v0

    invoke-static {p1, p2}, Ljava/lang/Math;->toIntExact(J)I

    move-result v1

    invoke-virtual {p4, v0, v1}, Lcom/android/launcher3/PagedView;->snapToPage(II)Z

    :cond_e
    :goto_7
    move-wide v4, p1

    new-instance p1, Lcom/android/quickstep/m;

    invoke-direct {p1, p0}, Lcom/android/quickstep/m;-><init>(Lcom/android/quickstep/AbsSwipeUpHandler;)V

    iget-object p2, p0, Lcom/android/quickstep/AbsSwipeUpHandler;->mRecentsView:Lcom/android/quickstep/views/RecentsView;

    if-eqz p2, :cond_f

    sget-object p2, Lcom/android/quickstep/util/ActiveGestureLog;->INSTANCE:Lcom/android/quickstep/util/ActiveGestureLog;

    sget-object p4, Lcom/android/quickstep/util/ActiveGestureErrorDetector$GestureEvent;->SET_ON_PAGE_TRANSITION_END_CALLBACK:Lcom/android/quickstep/util/ActiveGestureErrorDetector$GestureEvent;

    invoke-virtual {p2, p4}, Lcom/android/quickstep/util/ActiveGestureLog;->trackEvent(Lcom/android/quickstep/util/ActiveGestureErrorDetector$GestureEvent;)V

    iget-object p2, p0, Lcom/android/quickstep/AbsSwipeUpHandler;->mRecentsView:Lcom/android/quickstep/views/RecentsView;

    invoke-virtual {p2, p1}, Lcom/android/launcher3/PagedView;->setOnPageTransitionEndCallback(Ljava/lang/Runnable;)V

    goto :goto_8

    :cond_f
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    :goto_8
    move-object v1, p0

    move-object v8, p3

    invoke-direct/range {v1 .. v8}, Lcom/android/quickstep/AbsSwipeUpHandler;->animateToProgress(FFJLandroid/view/animation/Interpolator;Lcom/android/quickstep/GestureState$GestureEndTarget;Landroid/graphics/PointF;)V

    return-void
.end method

.method public static synthetic i(Lcom/android/quickstep/AbsSwipeUpHandler;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/quickstep/AbsSwipeUpHandler;->finishCurrentTransitionToAllApps()V

    return-void
.end method

.method public static synthetic i0(Lcom/android/quickstep/AbsSwipeUpHandler;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/quickstep/AbsSwipeUpHandler;->resetStateForAnimationCancel()V

    return-void
.end method

.method private initStateCallbacks()V
    .locals 12

    new-instance v0, Lcom/android/quickstep/MultiStateCallback;

    sget-object v1, Lcom/android/quickstep/AbsSwipeUpHandler;->STATE_NAMES:Ljava/util/ArrayList;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/String;

    sget-object v2, Lcom/android/quickstep/d1;->a:Lcom/android/quickstep/d1;

    invoke-direct {v0, v1, v2}, Lcom/android/quickstep/MultiStateCallback;-><init>([Ljava/lang/String;Lcom/android/quickstep/MultiStateCallback$TrackedEventsMapper;)V

    iput-object v0, p0, Lcom/android/quickstep/AbsSwipeUpHandler;->mStateCallback:Lcom/android/quickstep/MultiStateCallback;

    sget v1, Lcom/android/quickstep/AbsSwipeUpHandler;->STATE_LAUNCHER_PRESENT:I

    sget v2, Lcom/android/quickstep/AbsSwipeUpHandler;->STATE_GESTURE_STARTED:I

    or-int v3, v1, v2

    new-instance v4, Lcom/android/quickstep/k0;

    invoke-direct {v4, p0}, Lcom/android/quickstep/k0;-><init>(Lcom/android/quickstep/AbsSwipeUpHandler;)V

    invoke-virtual {v0, v3, v4}, Lcom/android/quickstep/MultiStateCallback;->runOnceAtState(ILjava/lang/Runnable;)V

    iget-object v0, p0, Lcom/android/quickstep/AbsSwipeUpHandler;->mStateCallback:Lcom/android/quickstep/MultiStateCallback;

    sget v3, Lcom/android/quickstep/AbsSwipeUpHandler;->STATE_LAUNCHER_DRAWN:I

    or-int v4, v3, v2

    new-instance v5, Lcom/android/quickstep/g;

    invoke-direct {v5, p0}, Lcom/android/quickstep/g;-><init>(Lcom/android/quickstep/AbsSwipeUpHandler;)V

    invoke-virtual {v0, v4, v5}, Lcom/android/quickstep/MultiStateCallback;->runOnceAtState(ILjava/lang/Runnable;)V

    iget-object v0, p0, Lcom/android/quickstep/AbsSwipeUpHandler;->mStateCallback:Lcom/android/quickstep/MultiStateCallback;

    or-int v4, v1, v3

    new-instance v5, Lcom/android/quickstep/j;

    invoke-direct {v5, p0}, Lcom/android/quickstep/j;-><init>(Lcom/android/quickstep/AbsSwipeUpHandler;)V

    invoke-virtual {v0, v4, v5}, Lcom/android/quickstep/MultiStateCallback;->runOnceAtState(ILjava/lang/Runnable;)V

    iget-object v0, p0, Lcom/android/quickstep/AbsSwipeUpHandler;->mStateCallback:Lcom/android/quickstep/MultiStateCallback;

    sget v4, Lcom/android/quickstep/AbsSwipeUpHandler;->STATE_LAUNCHER_STARTED:I

    or-int/2addr v4, v1

    sget v5, Lcom/android/quickstep/AbsSwipeUpHandler;->STATE_GESTURE_CANCELLED:I

    or-int/2addr v4, v5

    new-instance v5, Lcom/android/quickstep/m0;

    invoke-direct {v5, p0}, Lcom/android/quickstep/m0;-><init>(Lcom/android/quickstep/AbsSwipeUpHandler;)V

    invoke-virtual {v0, v4, v5}, Lcom/android/quickstep/MultiStateCallback;->runOnceAtState(ILjava/lang/Runnable;)V

    iget-object v0, p0, Lcom/android/quickstep/AbsSwipeUpHandler;->mStateCallback:Lcom/android/quickstep/MultiStateCallback;

    sget v4, Lcom/android/quickstep/AbsSwipeUpHandler;->STATE_RESUME_LAST_TASK:I

    sget v5, Lcom/android/quickstep/AbsSwipeUpHandler;->STATE_APP_CONTROLLER_RECEIVED:I

    or-int v6, v4, v5

    new-instance v7, Lcom/android/quickstep/d;

    invoke-direct {v7, p0}, Lcom/android/quickstep/d;-><init>(Lcom/android/quickstep/AbsSwipeUpHandler;)V

    invoke-virtual {v0, v6, v7}, Lcom/android/quickstep/MultiStateCallback;->runOnceAtState(ILjava/lang/Runnable;)V

    iget-object v0, p0, Lcom/android/quickstep/AbsSwipeUpHandler;->mStateCallback:Lcom/android/quickstep/MultiStateCallback;

    sget v6, Lcom/android/quickstep/AbsSwipeUpHandler;->STATE_START_NEW_TASK:I

    sget v7, Lcom/android/quickstep/AbsSwipeUpHandler;->STATE_SCREENSHOT_CAPTURED:I

    or-int/2addr v6, v7

    new-instance v8, Lcom/android/quickstep/g0;

    invoke-direct {v8, p0}, Lcom/android/quickstep/g0;-><init>(Lcom/android/quickstep/AbsSwipeUpHandler;)V

    invoke-virtual {v0, v6, v8}, Lcom/android/quickstep/MultiStateCallback;->runOnceAtState(ILjava/lang/Runnable;)V

    iget-object v0, p0, Lcom/android/quickstep/AbsSwipeUpHandler;->mStateCallback:Lcom/android/quickstep/MultiStateCallback;

    or-int v6, v1, v5

    or-int/2addr v6, v3

    sget v8, Lcom/android/quickstep/AbsSwipeUpHandler;->STATE_CAPTURE_SCREENSHOT:I

    or-int/2addr v6, v8

    new-instance v9, Lcom/android/quickstep/o1;

    invoke-direct {v9, p0}, Lcom/android/quickstep/o1;-><init>(Lcom/android/quickstep/AbsSwipeUpHandler;)V

    invoke-virtual {v0, v6, v9}, Lcom/android/quickstep/MultiStateCallback;->runOnceAtState(ILjava/lang/Runnable;)V

    iget-object v0, p0, Lcom/android/quickstep/AbsSwipeUpHandler;->mStateCallback:Lcom/android/quickstep/MultiStateCallback;

    sget v6, Lcom/android/quickstep/AbsSwipeUpHandler;->STATE_GESTURE_COMPLETED:I

    or-int v9, v7, v6

    sget v10, Lcom/android/quickstep/AbsSwipeUpHandler;->STATE_SCALED_CONTROLLER_RECENTS:I

    or-int/2addr v9, v10

    new-instance v11, Lcom/android/quickstep/d0;

    invoke-direct {v11, p0}, Lcom/android/quickstep/d0;-><init>(Lcom/android/quickstep/AbsSwipeUpHandler;)V

    invoke-virtual {v0, v9, v11}, Lcom/android/quickstep/MultiStateCallback;->runOnceAtState(ILjava/lang/Runnable;)V

    iget-object v0, p0, Lcom/android/quickstep/AbsSwipeUpHandler;->mStateCallback:Lcom/android/quickstep/MultiStateCallback;

    or-int/2addr v8, v6

    sget v9, Lcom/android/quickstep/AbsSwipeUpHandler;->STATE_SCALED_CONTROLLER_HOME:I

    or-int/2addr v8, v9

    new-instance v11, Lcom/android/quickstep/o;

    invoke-direct {v11, p0}, Lcom/android/quickstep/o;-><init>(Lcom/android/quickstep/AbsSwipeUpHandler;)V

    invoke-virtual {v0, v8, v11}, Lcom/android/quickstep/MultiStateCallback;->runOnceAtState(ILjava/lang/Runnable;)V

    iget-object v0, p0, Lcom/android/quickstep/AbsSwipeUpHandler;->mStateCallback:Lcom/android/quickstep/MultiStateCallback;

    sget v8, Lcom/android/quickstep/AbsSwipeUpHandler;->STATE_CURRENT_TASK_FINISHED:I

    or-int/2addr v9, v8

    new-instance v11, Lcom/android/quickstep/n0;

    invoke-direct {v11, p0}, Lcom/android/quickstep/n0;-><init>(Lcom/android/quickstep/AbsSwipeUpHandler;)V

    invoke-virtual {v0, v9, v11}, Lcom/android/quickstep/MultiStateCallback;->runOnceAtState(ILjava/lang/Runnable;)V

    iget-object v0, p0, Lcom/android/quickstep/AbsSwipeUpHandler;->mStateCallback:Lcom/android/quickstep/MultiStateCallback;

    sget v9, Lcom/android/quickstep/AbsSwipeUpHandler;->STATE_SETTLED_ON_ALL_APPS:I

    or-int/2addr v7, v9

    or-int/2addr v7, v6

    new-instance v9, Lcom/android/quickstep/f;

    invoke-direct {v9, p0}, Lcom/android/quickstep/f;-><init>(Lcom/android/quickstep/AbsSwipeUpHandler;)V

    invoke-virtual {v0, v7, v9}, Lcom/android/quickstep/MultiStateCallback;->runOnceAtState(ILjava/lang/Runnable;)V

    iget-object v0, p0, Lcom/android/quickstep/AbsSwipeUpHandler;->mStateCallback:Lcom/android/quickstep/MultiStateCallback;

    or-int/2addr v5, v1

    or-int/2addr v3, v5

    or-int/2addr v3, v10

    or-int/2addr v3, v8

    or-int/2addr v3, v6

    or-int/2addr v2, v3

    new-instance v3, Lcom/android/quickstep/n;

    invoke-direct {v3, p0}, Lcom/android/quickstep/n;-><init>(Lcom/android/quickstep/AbsSwipeUpHandler;)V

    invoke-virtual {v0, v2, v3}, Lcom/android/quickstep/MultiStateCallback;->runOnceAtState(ILjava/lang/Runnable;)V

    iget-object v0, p0, Lcom/android/quickstep/SwipeUpAnimationLogic;->mGestureState:Lcom/android/quickstep/GestureState;

    sget v2, Lcom/android/quickstep/GestureState;->STATE_END_TARGET_ANIMATION_FINISHED:I

    new-instance v3, Lcom/android/quickstep/f0;

    invoke-direct {v3, p0}, Lcom/android/quickstep/f0;-><init>(Lcom/android/quickstep/AbsSwipeUpHandler;)V

    invoke-virtual {v0, v2, v3}, Lcom/android/quickstep/GestureState;->runOnceAtState(ILjava/lang/Runnable;)V

    iget-object v0, p0, Lcom/android/quickstep/SwipeUpAnimationLogic;->mGestureState:Lcom/android/quickstep/GestureState;

    sget v3, Lcom/android/quickstep/GestureState;->STATE_RECENTS_SCROLLING_FINISHED:I

    or-int/2addr v2, v3

    new-instance v3, Lcom/android/quickstep/j0;

    invoke-direct {v3, p0}, Lcom/android/quickstep/j0;-><init>(Lcom/android/quickstep/AbsSwipeUpHandler;)V

    invoke-virtual {v0, v2, v3}, Lcom/android/quickstep/GestureState;->runOnceAtState(ILjava/lang/Runnable;)V

    iget-object v0, p0, Lcom/android/quickstep/AbsSwipeUpHandler;->mStateCallback:Lcom/android/quickstep/MultiStateCallback;

    sget v2, Lcom/android/quickstep/AbsSwipeUpHandler;->STATE_HANDLER_INVALIDATED:I

    new-instance v3, Lcom/android/quickstep/l0;

    invoke-direct {v3, p0}, Lcom/android/quickstep/l0;-><init>(Lcom/android/quickstep/AbsSwipeUpHandler;)V

    invoke-virtual {v0, v2, v3}, Lcom/android/quickstep/MultiStateCallback;->runOnceAtState(ILjava/lang/Runnable;)V

    iget-object v0, p0, Lcom/android/quickstep/AbsSwipeUpHandler;->mStateCallback:Lcom/android/quickstep/MultiStateCallback;

    or-int/2addr v1, v2

    new-instance v3, Lcom/android/quickstep/p0;

    invoke-direct {v3, p0}, Lcom/android/quickstep/p0;-><init>(Lcom/android/quickstep/AbsSwipeUpHandler;)V

    invoke-virtual {v0, v1, v3}, Lcom/android/quickstep/MultiStateCallback;->runOnceAtState(ILjava/lang/Runnable;)V

    iget-object v0, p0, Lcom/android/quickstep/AbsSwipeUpHandler;->mStateCallback:Lcom/android/quickstep/MultiStateCallback;

    or-int v1, v2, v4

    new-instance v3, Lcom/android/quickstep/m0;

    invoke-direct {v3, p0}, Lcom/android/quickstep/m0;-><init>(Lcom/android/quickstep/AbsSwipeUpHandler;)V

    invoke-virtual {v0, v1, v3}, Lcom/android/quickstep/MultiStateCallback;->runOnceAtState(ILjava/lang/Runnable;)V

    iget-object v0, p0, Lcom/android/quickstep/AbsSwipeUpHandler;->mStateCallback:Lcom/android/quickstep/MultiStateCallback;

    sget v1, Lcom/android/quickstep/AbsSwipeUpHandler;->STATE_FINISH_WITH_NO_END:I

    or-int/2addr v1, v2

    new-instance v2, Lcom/android/quickstep/m0;

    invoke-direct {v2, p0}, Lcom/android/quickstep/m0;-><init>(Lcom/android/quickstep/AbsSwipeUpHandler;)V

    invoke-virtual {v0, v1, v2}, Lcom/android/quickstep/MultiStateCallback;->runOnceAtState(ILjava/lang/Runnable;)V

    return-void
.end method

.method private initializeLauncherAnimationController()V
    .locals 6

    const-string v0, "Recent"

    const-string v1, "Abs -> initializeLauncherAnimationController."

    invoke-static {v0, v1}, Ly2/e;->c(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/android/quickstep/AbsSwipeUpHandler;->buildAnimationController()V

    sget-object v0, Lcom/android/launcher3/util/TraceHelper;->INSTANCE:Lcom/android/launcher3/util/TraceHelper;

    const-string v1, "logToggleRecents"

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Lcom/android/launcher3/util/TraceHelper;->beginSection(Ljava/lang/String;I)Ljava/lang/Object;

    move-result-object v0

    iget-object v1, p0, Lcom/android/quickstep/SwipeUpAnimationLogic;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/internal/util/LatencyTracker;->getInstance(Landroid/content/Context;)Lcom/android/internal/util/LatencyTracker;

    move-result-object v1

    iget-wide v2, p0, Lcom/android/quickstep/AbsSwipeUpHandler;->mLauncherFrameDrawnTime:J

    iget-wide v4, p0, Lcom/android/quickstep/AbsSwipeUpHandler;->mTouchTimeMs:J

    sub-long/2addr v2, v4

    long-to-int v2, v2

    const/4 v3, 0x1

    invoke-virtual {v1, v3, v2}, Lcom/android/internal/util/LatencyTracker;->logAction(II)V

    sget-object v1, Lcom/android/launcher3/util/TraceHelper;->INSTANCE:Lcom/android/launcher3/util/TraceHelper;

    invoke-virtual {v1, v0}, Lcom/android/launcher3/util/TraceHelper;->endSection(Ljava/lang/Object;)V

    sget-object v0, Lcom/android/quickstep/RecentsModel;->INSTANCE:Lcom/android/launcher3/util/MainThreadInitializedObject;

    iget-object p0, p0, Lcom/android/quickstep/SwipeUpAnimationLogic;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p0}, Lcom/android/launcher3/util/MainThreadInitializedObject;->get(Landroid/content/Context;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/quickstep/RecentsModel;

    invoke-virtual {p0}, Lcom/android/quickstep/RecentsModel;->getThumbnailCache()Lcom/android/quickstep/TaskThumbnailCache;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/quickstep/TaskThumbnailCache;->getHighResLoadingState()Lcom/android/quickstep/TaskThumbnailCache$HighResLoadingState;

    move-result-object p0

    invoke-virtual {p0, v3}, Lcom/android/quickstep/TaskThumbnailCache$HighResLoadingState;->setVisible(Z)V

    return-void
.end method

.method private invalidateHandler()V
    .locals 4

    const-string v0, "Recent"

    const-string v1, "Abs -> invalidateHandler."

    invoke-static {v0, v1}, Ly2/e;->c(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/quickstep/AbsSwipeUpHandler;->mActivityInterface:Lcom/android/quickstep/BaseActivityInterface;

    invoke-virtual {v0}, Lcom/android/quickstep/BaseActivityInterface;->isInLiveTileMode()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/quickstep/SwipeUpAnimationLogic;->mGestureState:Lcom/android/quickstep/GestureState;

    invoke-virtual {v0}, Lcom/android/quickstep/GestureState;->getEndTarget()Lcom/android/quickstep/GestureState$GestureEndTarget;

    move-result-object v0

    sget-object v2, Lcom/android/quickstep/GestureState$GestureEndTarget;->RECENTS:Lcom/android/quickstep/GestureState$GestureEndTarget;

    if-eq v0, v2, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/android/quickstep/AbsSwipeUpHandler;->mInputConsumerProxy:Lcom/android/quickstep/util/InputConsumerProxy;

    invoke-virtual {v0}, Lcom/android/quickstep/util/InputConsumerProxy;->destroy()V

    iget-object v0, p0, Lcom/android/quickstep/AbsSwipeUpHandler;->mTaskAnimationManager:Lcom/android/quickstep/TaskAnimationManager;

    invoke-virtual {v0, v1}, Lcom/android/quickstep/TaskAnimationManager;->setLiveTileCleanUpHandler(Ljava/lang/Runnable;)V

    :cond_1
    iget-object v0, p0, Lcom/android/quickstep/AbsSwipeUpHandler;->mInputConsumerProxy:Lcom/android/quickstep/util/InputConsumerProxy;

    invoke-virtual {v0}, Lcom/android/quickstep/util/InputConsumerProxy;->unregisterCallback()V

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/quickstep/AbsSwipeUpHandler;->endRunningWindowAnim(Z)V

    iget-object v2, p0, Lcom/android/quickstep/AbsSwipeUpHandler;->mGestureEndCallback:Ljava/lang/Runnable;

    if-eqz v2, :cond_2

    invoke-interface {v2}, Ljava/lang/Runnable;->run()V

    :cond_2
    iget-object v2, p0, Lcom/android/quickstep/AbsSwipeUpHandler;->mActivityInitListener:Lcom/android/quickstep/util/ActivityInitListener;

    invoke-virtual {v2}, Lcom/android/quickstep/util/ActivityInitListener;->unregister()V

    invoke-static {}, Lcom/android/systemui/shared/system/TaskStackChangeListeners;->getInstance()Lcom/android/systemui/shared/system/TaskStackChangeListeners;

    move-result-object v2

    iget-object v3, p0, Lcom/android/quickstep/AbsSwipeUpHandler;->mActivityRestartListener:Lcom/android/systemui/shared/system/TaskStackChangeListener;

    invoke-virtual {v2, v3}, Lcom/android/systemui/shared/system/TaskStackChangeListeners;->unregisterTaskStackListener(Lcom/android/systemui/shared/system/TaskStackChangeListener;)V

    iput-object v1, p0, Lcom/android/quickstep/AbsSwipeUpHandler;->mTaskSnapshot:Lcom/android/systemui/shared/recents/model/ThumbnailData;

    invoke-virtual {p0}, Lcom/android/quickstep/AbsSwipeUpHandler;->resetWindowModeTipsState()V

    invoke-static {v0}, Lcom/android/quickstep/utils/TransitionSmoothHelper;->setInRecents(Z)V

    iget-object p0, p0, Lcom/android/quickstep/AbsSwipeUpHandler;->mRecentsView:Lcom/android/quickstep/views/RecentsView;

    if-eqz p0, :cond_3

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->setAlpha(F)V

    :cond_3
    return-void
.end method

.method private invalidateHandlerWithLauncher()V
    .locals 2

    const-string v0, "Recent"

    const-string v1, "Abs -> invalidateHandlerWithLauncher."

    invoke-static {v0, v1}, Ly2/e;->c(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/android/quickstep/AbsSwipeUpHandler;->endLauncherTransitionController()V

    iget-object v0, p0, Lcom/android/quickstep/AbsSwipeUpHandler;->mRecentsView:Lcom/android/quickstep/views/RecentsView;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/quickstep/views/RecentsView;->onGestureAnimationEnd()V

    :cond_0
    invoke-direct {p0}, Lcom/android/quickstep/AbsSwipeUpHandler;->resetLauncherListeners()V

    return-void
.end method

.method private isCurrentTaskHasMultipleTasksOrInvalid()Z
    .locals 2

    iget-object v0, p0, Lcom/android/quickstep/AbsSwipeUpHandler;->mRecentsView:Lcom/android/quickstep/views/RecentsView;

    const/4 v1, 0x1

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/android/quickstep/views/RecentsView;->getRunningTaskView()Lcom/android/quickstep/views/TaskView;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/android/quickstep/AbsSwipeUpHandler;->mRecentsView:Lcom/android/quickstep/views/RecentsView;

    invoke-virtual {p0}, Lcom/android/quickstep/views/RecentsView;->getRunningTaskView()Lcom/android/quickstep/views/TaskView;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/quickstep/views/TaskView;->getTaskIds()[I

    move-result-object p0

    aget p0, p0, v1

    const/4 v0, -0x1

    if-eq p0, v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :cond_2
    :goto_0
    return v1
.end method

.method private final isGestureNotEnd()Z
    .locals 2

    iget-object v0, p0, Lcom/android/quickstep/AbsSwipeUpHandler;->mStateCallback:Lcom/android/quickstep/MultiStateCallback;

    sget v1, Lcom/android/quickstep/AbsSwipeUpHandler;->STATE_GESTURE_STARTED:I

    invoke-virtual {v0, v1}, Lcom/android/quickstep/MultiStateCallback;->hasStates(I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/android/quickstep/AbsSwipeUpHandler;->mStateCallback:Lcom/android/quickstep/MultiStateCallback;

    sget v0, Lcom/android/quickstep/AbsSwipeUpHandler;->STATE_GESTURE_COMPLETED:I

    invoke-virtual {p0, v0}, Lcom/android/quickstep/MultiStateCallback;->hasStates(I)Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private isNeedFinishLiveTileWindow()Z
    .locals 2

    invoke-direct {p0}, Lcom/android/quickstep/AbsSwipeUpHandler;->getActiveRecentsLayerTaskId()I

    move-result v0

    iget-object p0, p0, Lcom/android/quickstep/AbsSwipeUpHandler;->mRecentsView:Lcom/android/quickstep/views/RecentsView;

    if-eqz p0, :cond_1

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    invoke-static {p0}, Lb3/t;->e(Lcom/android/quickstep/views/RecentsView;)Z

    move-result p0

    if-eqz p0, :cond_1

    :cond_0
    const/4 p0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private static isNotInRecents(Landroid/view/RemoteAnimationTarget;)Z
    .locals 1

    iget-boolean v0, p0, Landroid/view/RemoteAnimationTarget;->isNotInRecents:Z

    if-nez v0, :cond_1

    iget-object p0, p0, Landroid/view/RemoteAnimationTarget;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {p0}, Landroid/app/WindowConfiguration;->getActivityType()I

    move-result p0

    const/4 v0, 0x2

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method private isRunningTaskSupportWindowMode()Z
    .locals 5

    iget-object p0, p0, Lcom/android/quickstep/SwipeUpAnimationLogic;->mGestureState:Lcom/android/quickstep/GestureState;

    invoke-virtual {p0}, Lcom/android/quickstep/GestureState;->getRunningTask()Lcom/android/quickstep/TopTaskTracker$CachedTaskInfo;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/quickstep/TopTaskTracker$CachedTaskInfo;->getRunningTaskInfo()Landroid/app/ActivityManager$RunningTaskInfo;

    move-result-object p0

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p0, :cond_2

    iget-object v2, p0, Landroid/app/ActivityManager$RunningTaskInfo;->configuration:Landroid/content/res/Configuration;

    iget-object v2, v2, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {v2}, Landroid/app/WindowConfiguration;->getActivityType()I

    move-result v2

    const/4 v3, 0x4

    if-ne v2, v3, :cond_0

    move v2, v0

    goto :goto_0

    :cond_0
    move v2, v1

    :goto_0
    invoke-virtual {p0}, Landroid/app/ActivityManager$RunningTaskInfo;->getWindowingMode()I

    move-result v3

    const/4 v4, 0x6

    if-ne v3, v4, :cond_1

    move v3, v0

    goto :goto_1

    :cond_1
    move v3, v1

    goto :goto_1

    :cond_2
    move v2, v1

    move v3, v2

    :goto_1
    if-eqz v3, :cond_3

    return v1

    :cond_3
    if-eqz p0, :cond_5

    iget-object v3, p0, Landroid/app/ActivityManager$RunningTaskInfo;->baseActivity:Landroid/content/ComponentName;

    if-eqz v3, :cond_5

    iget-object p0, p0, Landroid/app/ActivityManager$RunningTaskInfo;->realActivity:Landroid/content/ComponentName;

    if-eqz p0, :cond_5

    if-nez v2, :cond_4

    invoke-virtual {p0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/android/quickstep/utils/WindowModeHelper;->isAppSupportWindowMode(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_4

    goto :goto_2

    :cond_4
    return v1

    :cond_5
    :goto_2
    return v0
.end method

.method private isScrollingToNewTask()Z
    .locals 3

    iget-object v0, p0, Lcom/android/quickstep/AbsSwipeUpHandler;->mRecentsView:Lcom/android/quickstep/views/RecentsView;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    invoke-virtual {p0}, Lcom/android/quickstep/AbsSwipeUpHandler;->hasTargets()Z

    move-result v0

    const/4 v2, 0x1

    if-nez v0, :cond_1

    return v2

    :cond_1
    iget-object v0, p0, Lcom/android/quickstep/AbsSwipeUpHandler;->mRecentsView:Lcom/android/quickstep/views/RecentsView;

    invoke-virtual {v0}, Lcom/android/quickstep/views/RecentsView;->getRunningTaskIndex()I

    move-result v0

    if-ltz v0, :cond_2

    iget-object p0, p0, Lcom/android/quickstep/AbsSwipeUpHandler;->mRecentsView:Lcom/android/quickstep/views/RecentsView;

    invoke-virtual {p0}, Lcom/android/launcher3/PagedView;->getNextPage()I

    move-result p0

    if-eq p0, v0, :cond_2

    move v1, v2

    :cond_2
    return v1
.end method

.method public static synthetic j(Lcom/android/quickstep/AbsSwipeUpHandler;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/quickstep/AbsSwipeUpHandler;->initializeLauncherAnimationController()V

    return-void
.end method

.method public static synthetic j0(Lcom/android/quickstep/AbsSwipeUpHandler;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/quickstep/AbsSwipeUpHandler;->reset()V

    return-void
.end method

.method public static synthetic k(ZLcom/android/quickstep/RemoteTargetGluer$RemoteTargetHandle;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/android/quickstep/AbsSwipeUpHandler;->lambda$setIsInAllAppsRegion$10(ZLcom/android/quickstep/RemoteTargetGluer$RemoteTargetHandle;)V

    return-void
.end method

.method public static synthetic k0(Lcom/android/quickstep/AbsSwipeUpHandler;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/quickstep/AbsSwipeUpHandler;->lambda$onActivityInit$4()V

    return-void
.end method

.method public static synthetic l(Lcom/android/quickstep/AbsSwipeUpHandler;Landroid/animation/ValueAnimator;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/quickstep/AbsSwipeUpHandler;->lambda$maybeUpdateRecentsAttachedState$9(Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method public static synthetic l0(Lcom/android/quickstep/AbsSwipeUpHandler;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/quickstep/AbsSwipeUpHandler;->invalidateHandlerWithLauncher()V

    return-void
.end method

.method private synthetic lambda$animateToProgress$17(FFJLandroid/view/animation/Interpolator;Lcom/android/quickstep/GestureState$GestureEndTarget;Landroid/graphics/PointF;)V
    .locals 0

    invoke-direct/range {p0 .. p7}, Lcom/android/quickstep/AbsSwipeUpHandler;->animateToProgressInternal(FFJLandroid/view/animation/Interpolator;Lcom/android/quickstep/GestureState$GestureEndTarget;Landroid/graphics/PointF;)V

    return-void
.end method

.method private synthetic lambda$animateToProgressInternal$18()V
    .locals 2

    iget-object v0, p0, Lcom/android/quickstep/AbsSwipeUpHandler;->mRecentsAnimationController:Lcom/android/quickstep/RecentsAnimationController;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v1, p0, Lcom/android/quickstep/SwipeUpAnimationLogic;->mGestureState:Lcom/android/quickstep/GestureState;

    invoke-virtual {v1}, Lcom/android/quickstep/GestureState;->getRunningTaskId()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/quickstep/RecentsAnimationController;->screenshotTask(I)Lcom/android/systemui/shared/recents/model/ThumbnailData;

    move-result-object v0

    iput-object v0, p0, Lcom/android/quickstep/AbsSwipeUpHandler;->mTaskSnapshot:Lcom/android/systemui/shared/recents/model/ThumbnailData;

    return-void
.end method

.method private synthetic lambda$animateToProgressInternal$19(Landroid/animation/ValueAnimator;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/quickstep/AbsSwipeUpHandler;->computeRecentsScrollIfInvisible()V

    return-void
.end method

.method private synthetic lambda$enableInputConsumerWithRecentTaskId$38()V
    .locals 5

    const-string v0, "AbsSwipeUpHandler"

    sget-object v1, Lcom/android/quickstep/TopTaskTracker;->INSTANCE:Lcom/android/launcher3/util/MainThreadInitializedObject;

    iget-object v2, p0, Lcom/android/quickstep/SwipeUpAnimationLogic;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v2}, Lcom/android/launcher3/util/MainThreadInitializedObject;->get(Landroid/content/Context;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/quickstep/TopTaskTracker;

    invoke-virtual {v1}, Lcom/android/quickstep/TopTaskTracker;->getRecentTaskId()I

    move-result v1

    if-lez v1, :cond_1

    :try_start_0
    invoke-static {}, Landroid/app/ActivityTaskManager;->getService()Landroid/app/IActivityTaskManager;

    move-result-object v2

    invoke-interface {v2, v1}, Landroid/app/IActivityTaskManager;->setFocusedTask(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Set focused task to overview host error. Detail = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Ly2/e;->f(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/android/quickstep/AbsSwipeUpHandler;->mRecentsAnimationController:Lcom/android/quickstep/RecentsAnimationController;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/android/quickstep/RecentsAnimationController;->enableInputConsumer()V

    :cond_0
    :goto_0
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Set focused task to overview app successfully, taskId = "

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Ly2/e;->l(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_1
    iget-object p0, p0, Lcom/android/quickstep/AbsSwipeUpHandler;->mRecentsAnimationController:Lcom/android/quickstep/RecentsAnimationController;

    if-eqz p0, :cond_2

    invoke-virtual {p0}, Lcom/android/quickstep/RecentsAnimationController;->enableInputConsumer()V

    :cond_2
    :goto_1
    return-void
.end method

.method private synthetic lambda$endLauncherTransitionController$22(F)F
    .locals 1

    iget-object p0, p0, Lcom/android/quickstep/SwipeUpAnimationLogic;->mCurrentShift:Lcom/android/launcher3/anim/AnimatedFloat;

    iget p0, p0, Lcom/android/launcher3/anim/AnimatedFloat;->value:F

    const/4 p1, 0x0

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-static {p0, p1, v0}, Lcom/android/launcher3/Utilities;->boundToRange(FFF)F

    move-result p0

    return p0
.end method

.method private synthetic lambda$finishCurrentTransitionToHome$30()V
    .locals 1

    iget-object p0, p0, Lcom/android/quickstep/AbsSwipeUpHandler;->mStateCallback:Lcom/android/quickstep/MultiStateCallback;

    sget v0, Lcom/android/quickstep/AbsSwipeUpHandler;->STATE_CURRENT_TASK_FINISHED:I

    invoke-virtual {p0, v0}, Lcom/android/quickstep/MultiStateCallback;->setStateOnUiThread(I)V

    return-void
.end method

.method private synthetic lambda$finishCurrentTransitionToRecents$26()V
    .locals 1

    iget-object p0, p0, Lcom/android/quickstep/AbsSwipeUpHandler;->mStateCallback:Lcom/android/quickstep/MultiStateCallback;

    sget v0, Lcom/android/quickstep/AbsSwipeUpHandler;->STATE_CURRENT_TASK_FINISHED:I

    invoke-virtual {p0, v0}, Lcom/android/quickstep/MultiStateCallback;->setStateOnUiThread(I)V

    return-void
.end method

.method private synthetic lambda$finishCurrentTransitionToRecents$27()V
    .locals 3

    iget-object v0, p0, Lcom/android/quickstep/AbsSwipeUpHandler;->mRecentsAnimationController:Lcom/android/quickstep/RecentsAnimationController;

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    new-instance v2, Lcom/android/quickstep/k;

    invoke-direct {v2, p0}, Lcom/android/quickstep/k;-><init>(Lcom/android/quickstep/AbsSwipeUpHandler;)V

    invoke-virtual {v0, v1, v2}, Lcom/android/quickstep/RecentsAnimationController;->finish(ZLjava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method private synthetic lambda$finishCurrentTransitionToRecents$28()V
    .locals 1

    iget-object p0, p0, Lcom/android/quickstep/AbsSwipeUpHandler;->mStateCallback:Lcom/android/quickstep/MultiStateCallback;

    sget v0, Lcom/android/quickstep/AbsSwipeUpHandler;->STATE_CURRENT_TASK_FINISHED:I

    invoke-virtual {p0, v0}, Lcom/android/quickstep/MultiStateCallback;->setStateOnUiThread(I)V

    return-void
.end method

.method private synthetic lambda$finishCurrentTransitionToRecents$29()V
    .locals 3

    iget-object v0, p0, Lcom/android/quickstep/AbsSwipeUpHandler;->mRecentsView:Lcom/android/quickstep/views/RecentsView;

    new-instance v1, Lcom/android/quickstep/q;

    invoke-direct {v1, p0}, Lcom/android/quickstep/q;-><init>(Lcom/android/quickstep/AbsSwipeUpHandler;)V

    const/4 p0, 0x1

    const/4 v2, 0x0

    invoke-virtual {v0, p0, v2, v1}, Lcom/android/quickstep/views/RecentsView;->finishRecentsAnimation(ZZLjava/lang/Runnable;)V

    return-void
.end method

.method private synthetic lambda$handleNormalGestureEnd$16()V
    .locals 2

    iget-object v0, p0, Lcom/android/quickstep/SwipeUpAnimationLogic;->mGestureState:Lcom/android/quickstep/GestureState;

    sget v1, Lcom/android/quickstep/GestureState;->STATE_RECENTS_SCROLLING_FINISHED:I

    invoke-virtual {v0, v1}, Lcom/android/quickstep/GestureState;->setState(I)V

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/quickstep/AbsSwipeUpHandler;->setClampScrollOffset(Z)V

    return-void
.end method

.method private synthetic lambda$handleTaskAppeared$15(Landroid/view/RemoteAnimationTarget;)Z
    .locals 0

    iget p1, p1, Landroid/view/RemoteAnimationTarget;->taskId:I

    iget-object p0, p0, Lcom/android/quickstep/SwipeUpAnimationLogic;->mGestureState:Lcom/android/quickstep/GestureState;

    invoke-virtual {p0}, Lcom/android/quickstep/GestureState;->getLastStartedTaskId()I

    move-result p0

    if-ne p1, p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private static synthetic lambda$linkRecentsViewScroll$32(Lcom/android/quickstep/util/SurfaceTransactionApplier;Lcom/android/quickstep/RemoteTargetGluer$RemoteTargetHandle;)V
    .locals 0

    invoke-virtual {p1}, Lcom/android/quickstep/RemoteTargetGluer$RemoteTargetHandle;->getTransformParams()Lcom/android/quickstep/util/TransformParams;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/android/quickstep/util/TransformParams;->setSyncTransactionApplier(Lcom/android/quickstep/util/SurfaceTransactionApplier;)Lcom/android/quickstep/util/TransformParams;

    return-void
.end method

.method private synthetic lambda$linkRecentsViewScroll$33(Lcom/android/quickstep/util/SurfaceTransactionApplier;)V
    .locals 0

    iget-object p0, p0, Lcom/android/quickstep/AbsSwipeUpHandler;->mRecentsAnimationTargets:Lcom/android/quickstep/RecentsAnimationTargets;

    invoke-virtual {p0, p1}, Lcom/android/quickstep/RemoteAnimationTargets;->addReleaseCheck(Lcom/android/quickstep/RemoteAnimationTargets$ReleaseCheck;)V

    return-void
.end method

.method private synthetic lambda$linkRecentsViewScroll$34()V
    .locals 2

    iget-object v0, p0, Lcom/android/quickstep/AbsSwipeUpHandler;->mRecentsView:Lcom/android/quickstep/views/RecentsView;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/android/quickstep/AbsSwipeUpHandler;->mRecentsAnimationController:Lcom/android/quickstep/RecentsAnimationController;

    iget-object p0, p0, Lcom/android/quickstep/AbsSwipeUpHandler;->mRecentsAnimationTargets:Lcom/android/quickstep/RecentsAnimationTargets;

    invoke-virtual {v0, v1, p0}, Lcom/android/quickstep/views/RecentsView;->setRecentsAnimationTargets(Lcom/android/quickstep/RecentsAnimationController;Lcom/android/quickstep/RecentsAnimationTargets;)V

    :cond_0
    return-void
.end method

.method private synthetic lambda$maybeUpdateRecentsAttachedState$9(Landroid/animation/ValueAnimator;)V
    .locals 0

    iget-object p1, p0, Lcom/android/quickstep/AbsSwipeUpHandler;->mRunningWindowAnim:[Lcom/android/quickstep/SwipeUpAnimationLogic$RunningWindowAnim;

    if-eqz p1, :cond_0

    array-length p1, p1

    if-nez p1, :cond_1

    :cond_0
    invoke-virtual {p0}, Lcom/android/quickstep/AbsSwipeUpHandler;->applyScrollAndTransform()V

    :cond_1
    return-void
.end method

.method private static synthetic lambda$new$0(J)V
    .locals 0

    return-void
.end method

.method private synthetic lambda$new$1()Ljava/lang/Integer;
    .locals 0

    iget-object p0, p0, Lcom/android/quickstep/AbsSwipeUpHandler;->mRecentsView:Lcom/android/quickstep/views/RecentsView;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    :goto_0
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0

    :cond_0
    invoke-virtual {p0}, Lcom/android/quickstep/views/RecentsView;->getPagedViewOrientedState()Lcom/android/quickstep/util/RecentsOrientedState;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/quickstep/util/RecentsOrientedState;->getRecentsActivityRotation()I

    move-result p0

    goto :goto_0
.end method

.method private synthetic lambda$new$2()V
    .locals 2

    iget-object v0, p0, Lcom/android/quickstep/SwipeUpAnimationLogic;->mGestureState:Lcom/android/quickstep/GestureState;

    invoke-virtual {v0}, Lcom/android/quickstep/GestureState;->getEndTarget()Lcom/android/quickstep/GestureState$GestureEndTarget;

    move-result-object v0

    sget-object v1, Lcom/android/quickstep/GestureState$GestureEndTarget;->HOME:Lcom/android/quickstep/GestureState$GestureEndTarget;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-direct {p0, v0}, Lcom/android/quickstep/AbsSwipeUpHandler;->endRunningWindowAnim(Z)V

    invoke-direct {p0}, Lcom/android/quickstep/AbsSwipeUpHandler;->endLauncherTransitionController()V

    return-void
.end method

.method private synthetic lambda$onActivityInit$3()V
    .locals 1

    iget-object v0, p0, Lcom/android/quickstep/AbsSwipeUpHandler;->mRecentsAnimationController:Lcom/android/quickstep/RecentsAnimationController;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/quickstep/RecentsAnimationController;->cleanupScreenshot()V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/quickstep/AbsSwipeUpHandler;->mDeferredCleanupRecentsAnimationController:Lcom/android/quickstep/RecentsAnimationController;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/android/quickstep/RecentsAnimationController;->cleanupScreenshot()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/quickstep/AbsSwipeUpHandler;->mDeferredCleanupRecentsAnimationController:Lcom/android/quickstep/RecentsAnimationController;

    :cond_1
    :goto_0
    return-void
.end method

.method private synthetic lambda$onActivityInit$4()V
    .locals 3

    iget-object v0, p0, Lcom/android/quickstep/SwipeUpAnimationLogic;->mGestureState:Lcom/android/quickstep/GestureState;

    invoke-virtual {v0}, Lcom/android/quickstep/GestureState;->consumeRecentsAnimationCanceledSnapshot()Ljava/util/HashMap;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/android/quickstep/AbsSwipeUpHandler;->mRecentsView:Lcom/android/quickstep/views/RecentsView;

    if-eqz v1, :cond_0

    new-instance v2, Lcom/android/quickstep/e;

    invoke-direct {v2, p0}, Lcom/android/quickstep/e;-><init>(Lcom/android/quickstep/AbsSwipeUpHandler;)V

    invoke-virtual {v1, v0, v2}, Lcom/android/quickstep/views/RecentsView;->switchToScreenshot(Ljava/util/HashMap;Ljava/lang/Runnable;)V

    iget-object p0, p0, Lcom/android/quickstep/AbsSwipeUpHandler;->mRecentsView:Lcom/android/quickstep/views/RecentsView;

    invoke-virtual {p0}, Lcom/android/quickstep/views/RecentsView;->onRecentsAnimationComplete()V

    :cond_0
    return-void
.end method

.method private synthetic lambda$onAnimatorPlaybackControllerCreated$11()V
    .locals 1

    iget-object v0, p0, Lcom/android/quickstep/AbsSwipeUpHandler;->mLauncherTransitionController:Lcom/android/quickstep/util/AnimatorControllerWithResistance;

    invoke-virtual {v0}, Lcom/android/quickstep/util/AnimatorControllerWithResistance;->getNormalController()Lcom/android/launcher3/anim/AnimatorPlaybackController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/anim/AnimatorPlaybackController;->dispatchOnStart()Lcom/android/launcher3/anim/AnimatorPlaybackController;

    invoke-direct {p0}, Lcom/android/quickstep/AbsSwipeUpHandler;->updateLauncherTransitionProgress()V

    return-void
.end method

.method private synthetic lambda$onDeferredActivityLaunch$8()V
    .locals 1

    iget-object p0, p0, Lcom/android/quickstep/AbsSwipeUpHandler;->mTaskAnimationManager:Lcom/android/quickstep/TaskAnimationManager;

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/quickstep/TaskAnimationManager;->finishRunningRecentsAnimation(Z)V

    return-void
.end method

.method private synthetic lambda$onGestureEnded$13(FZLandroid/graphics/PointF;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/quickstep/AbsSwipeUpHandler;->handleNormalGestureEnd(FZLandroid/graphics/PointF;Z)V

    return-void
.end method

.method private synthetic lambda$onLauncherPresentAndGestureStarted$7()V
    .locals 2

    iget-object v0, p0, Lcom/android/quickstep/SwipeUpAnimationLogic;->mDeviceState:Lcom/android/quickstep/RecentsAnimationDeviceState;

    invoke-virtual {v0}, Lcom/android/quickstep/RecentsAnimationDeviceState;->getRotationTouchHelper()Lcom/android/quickstep/RotationTouchHelper;

    move-result-object v0

    iget-object v1, p0, Lcom/android/quickstep/SwipeUpAnimationLogic;->mGestureState:Lcom/android/quickstep/GestureState;

    invoke-virtual {v1}, Lcom/android/quickstep/GestureState;->getEndTarget()Lcom/android/quickstep/GestureState$GestureEndTarget;

    move-result-object v1

    iget-object p0, p0, Lcom/android/quickstep/AbsSwipeUpHandler;->mActivityInterface:Lcom/android/quickstep/BaseActivityInterface;

    invoke-virtual {v0, v1, p0}, Lcom/android/quickstep/RotationTouchHelper;->onEndTargetCalculated(Lcom/android/quickstep/GestureState$GestureEndTarget;Lcom/android/quickstep/BaseActivityInterface;)V

    return-void
.end method

.method private synthetic lambda$onLauncherStart$5(Lcom/android/quickstep/RemoteTargetGluer$RemoteTargetHandle;)V
    .locals 0

    invoke-virtual {p1}, Lcom/android/quickstep/RemoteTargetGluer$RemoteTargetHandle;->getTaskViewSimulator()Lcom/android/quickstep/util/TaskViewSimulator;

    move-result-object p1

    iget-object p0, p0, Lcom/android/quickstep/AbsSwipeUpHandler;->mRecentsView:Lcom/android/quickstep/views/RecentsView;

    invoke-virtual {p0}, Lcom/android/quickstep/views/RecentsView;->getPagedViewOrientedState()Lcom/android/quickstep/util/RecentsOrientedState;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/android/quickstep/util/TaskViewSimulator;->setOrientationState(Lcom/android/quickstep/util/RecentsOrientedState;)V

    return-void
.end method

.method private synthetic lambda$onLauncherStart$6()V
    .locals 4

    iget-object v0, p0, Lcom/android/quickstep/AbsSwipeUpHandler;->mActivityInterface:Lcom/android/quickstep/BaseActivityInterface;

    iget-object v1, p0, Lcom/android/quickstep/SwipeUpAnimationLogic;->mDeviceState:Lcom/android/quickstep/RecentsAnimationDeviceState;

    iget-boolean v2, p0, Lcom/android/quickstep/AbsSwipeUpHandler;->mWasLauncherAlreadyVisible:Z

    new-instance v3, Lcom/android/quickstep/z0;

    invoke-direct {v3, p0}, Lcom/android/quickstep/z0;-><init>(Lcom/android/quickstep/AbsSwipeUpHandler;)V

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/quickstep/BaseActivityInterface;->prepareRecentsUI(Lcom/android/quickstep/RecentsAnimationDeviceState;ZLjava/util/function/Consumer;)Lcom/android/quickstep/BaseActivityInterface$AnimationFactory;

    move-result-object v0

    iput-object v0, p0, Lcom/android/quickstep/AbsSwipeUpHandler;->mAnimationFactory:Lcom/android/quickstep/BaseActivityInterface$AnimationFactory;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/quickstep/AbsSwipeUpHandler;->maybeUpdateRecentsAttachedState(Z)V

    iget-object v0, p0, Lcom/android/quickstep/SwipeUpAnimationLogic;->mGestureState:Lcom/android/quickstep/GestureState;

    invoke-virtual {v0}, Lcom/android/quickstep/GestureState;->getEndTarget()Lcom/android/quickstep/GestureState$GestureEndTarget;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/quickstep/AbsSwipeUpHandler;->mAnimationFactory:Lcom/android/quickstep/BaseActivityInterface$AnimationFactory;

    iget-object p0, p0, Lcom/android/quickstep/SwipeUpAnimationLogic;->mGestureState:Lcom/android/quickstep/GestureState;

    invoke-virtual {p0}, Lcom/android/quickstep/GestureState;->getEndTarget()Lcom/android/quickstep/GestureState$GestureEndTarget;

    move-result-object p0

    invoke-interface {v0, p0}, Lcom/android/quickstep/BaseActivityInterface$AnimationFactory;->setEndTarget(Lcom/android/quickstep/GestureState$GestureEndTarget;)V

    :cond_0
    return-void
.end method

.method private synthetic lambda$onSettledOnEndTarget$14()V
    .locals 1

    iget-object p0, p0, Lcom/android/quickstep/AbsSwipeUpHandler;->mStateCallback:Lcom/android/quickstep/MultiStateCallback;

    sget v0, Lcom/android/quickstep/AbsSwipeUpHandler;->STATE_RESUME_LAST_TASK:I

    invoke-virtual {p0, v0}, Lcom/android/quickstep/MultiStateCallback;->setState(I)V

    return-void
.end method

.method private synthetic lambda$onTasksAppeared$36(Landroid/view/RemoteAnimationTarget;)Z
    .locals 0

    iget p1, p1, Landroid/view/RemoteAnimationTarget;->taskId:I

    iget-object p0, p0, Lcom/android/quickstep/SwipeUpAnimationLogic;->mGestureState:Lcom/android/quickstep/GestureState;

    invoke-virtual {p0}, Lcom/android/quickstep/GestureState;->getLastStartedTaskId()I

    move-result p0

    if-ne p1, p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private synthetic lambda$onTasksAppeared$37(Landroid/view/RemoteAnimationTarget;)Z
    .locals 0

    iget p1, p1, Landroid/view/RemoteAnimationTarget;->taskId:I

    iget-object p0, p0, Lcom/android/quickstep/SwipeUpAnimationLogic;->mGestureState:Lcom/android/quickstep/GestureState;

    invoke-virtual {p0}, Lcom/android/quickstep/GestureState;->getLastStartedTaskId()I

    move-result p0

    if-ne p1, p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private synthetic lambda$setClampScrollOffset$12(Z)V
    .locals 0

    iget-object p0, p0, Lcom/android/quickstep/AbsSwipeUpHandler;->mRecentsView:Lcom/android/quickstep/views/RecentsView;

    invoke-virtual {p0, p1}, Lcom/android/quickstep/views/RecentsView;->setClampScrollOffset(Z)V

    return-void
.end method

.method private static synthetic lambda$setIsInAllAppsRegion$10(ZLcom/android/quickstep/RemoteTargetGluer$RemoteTargetHandle;)V
    .locals 0

    invoke-virtual {p1}, Lcom/android/quickstep/RemoteTargetGluer$RemoteTargetHandle;->getTaskViewSimulator()Lcom/android/quickstep/util/TaskViewSimulator;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/android/quickstep/util/TaskViewSimulator;->setDrawsBelowRecents(Z)V

    return-void
.end method

.method private synthetic lambda$setupLauncherUiAfterSwipeUpToRecentsAnimation$31()V
    .locals 1

    iget-object v0, p0, Lcom/android/quickstep/AbsSwipeUpHandler;->mRecentsView:Lcom/android/quickstep/views/RecentsView;

    invoke-virtual {v0}, Lcom/android/quickstep/views/RecentsView;->cleanupRemoteTargets()V

    iget-object p0, p0, Lcom/android/quickstep/AbsSwipeUpHandler;->mInputConsumerProxy:Lcom/android/quickstep/util/InputConsumerProxy;

    invoke-virtual {p0}, Lcom/android/quickstep/util/InputConsumerProxy;->destroy()V

    return-void
.end method

.method private synthetic lambda$setupWindowAnimation$20(Landroid/graphics/RectF;F)V
    .locals 0

    iget-object p1, p0, Lcom/android/quickstep/SwipeUpAnimationLogic;->mCurrentShift:Lcom/android/launcher3/anim/AnimatedFloat;

    iget p1, p1, Lcom/android/launcher3/anim/AnimatedFloat;->value:F

    invoke-static {p2, p1}, Ljava/lang/Math;->max(FF)F

    move-result p1

    invoke-direct {p0, p1}, Lcom/android/quickstep/AbsSwipeUpHandler;->updateSysUiFlags(F)V

    return-void
.end method

.method private synthetic lambda$startNewTask$21(Lcom/android/quickstep/views/TaskView;Ljava/lang/Boolean;)V
    .locals 0

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    if-nez p2, :cond_0

    invoke-direct {p0}, Lcom/android/quickstep/AbsSwipeUpHandler;->reset()V

    invoke-direct {p0}, Lcom/android/quickstep/AbsSwipeUpHandler;->endLauncherTransitionController()V

    const/high16 p2, 0x3f800000    # 1.0f

    invoke-direct {p0, p2}, Lcom/android/quickstep/AbsSwipeUpHandler;->updateSysUiFlags(F)V

    :cond_0
    sget-object p2, Lcom/android/quickstep/GestureState$GestureEndTarget;->NEW_TASK:Lcom/android/quickstep/GestureState$GestureEndTarget;

    invoke-direct {p0, p2, p1}, Lcom/android/quickstep/AbsSwipeUpHandler;->doLogGesture(Lcom/android/quickstep/GestureState$GestureEndTarget;Lcom/android/quickstep/views/TaskView;)V

    return-void
.end method

.method private synthetic lambda$startNewTask$35(Ljava/util/function/Consumer;ZLjava/lang/Boolean;)V
    .locals 0

    invoke-interface {p1, p3}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    invoke-virtual {p3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_0

    if-eqz p2, :cond_1

    invoke-virtual {p0}, Lcom/android/quickstep/AbsSwipeUpHandler;->onRestartPreviouslyAppearedTask()V

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/android/quickstep/AbsSwipeUpHandler;->mActivityInterface:Lcom/android/quickstep/BaseActivityInterface;

    invoke-virtual {p1}, Lcom/android/quickstep/BaseActivityInterface;->onLaunchTaskFailed()V

    iget-object p0, p0, Lcom/android/quickstep/AbsSwipeUpHandler;->mRecentsAnimationController:Lcom/android/quickstep/RecentsAnimationController;

    if-eqz p0, :cond_1

    const/4 p1, 0x1

    const/4 p2, 0x0

    invoke-virtual {p0, p1, p2}, Lcom/android/quickstep/RecentsAnimationController;->finish(ZLjava/lang/Runnable;)V

    :cond_1
    :goto_0
    return-void
.end method

.method private synthetic lambda$switchToScreenshot$23(Lcom/android/systemui/shared/recents/model/ThumbnailData;IZ)V
    .locals 0

    iput-object p1, p0, Lcom/android/quickstep/AbsSwipeUpHandler;->mTaskSnapshot:Lcom/android/systemui/shared/recents/model/ThumbnailData;

    invoke-direct {p0, p2, p3}, Lcom/android/quickstep/AbsSwipeUpHandler;->updateThumbnail(IZ)Z

    move-result p1

    if-nez p1, :cond_0

    invoke-direct {p0}, Lcom/android/quickstep/AbsSwipeUpHandler;->setScreenshotCapturedState()V

    :cond_0
    return-void
.end method

.method private synthetic lambda$switchToScreenshot$24(IZ)V
    .locals 5

    iget-object v0, p0, Lcom/android/quickstep/AbsSwipeUpHandler;->mRecentsAnimationController:Lcom/android/quickstep/RecentsAnimationController;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {v0, p1}, Lcom/android/quickstep/RecentsAnimationController;->screenshotTask(I)Lcom/android/systemui/shared/recents/model/ThumbnailData;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/quickstep/SwipeUpAnimationLogic;->mIsSwipeForSplit:Z

    if-eqz v1, :cond_3

    sget-object v1, Lcom/android/quickstep/TopTaskTracker;->INSTANCE:Lcom/android/launcher3/util/MainThreadInitializedObject;

    iget-object v2, p0, Lcom/android/quickstep/SwipeUpAnimationLogic;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v2}, Lcom/android/launcher3/util/MainThreadInitializedObject;->get(Landroid/content/Context;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/quickstep/TopTaskTracker;

    invoke-virtual {v1}, Lcom/android/quickstep/TopTaskTracker;->getRunningSplitTaskIds()[I

    move-result-object v1

    const/4 v2, 0x0

    :goto_0
    array-length v3, v1

    if-ge v2, v3, :cond_3

    aget v3, v1, v2

    if-ne v3, p1, :cond_1

    goto :goto_1

    :cond_1
    iget-object v3, p0, Lcom/android/quickstep/AbsSwipeUpHandler;->mRecentsAnimationController:Lcom/android/quickstep/RecentsAnimationController;

    if-nez v3, :cond_2

    return-void

    :cond_2
    aget v4, v1, v2

    invoke-virtual {v3, v4}, Lcom/android/quickstep/RecentsAnimationController;->screenshotTask(I)Lcom/android/systemui/shared/recents/model/ThumbnailData;

    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    sget-object v1, Lcom/android/launcher3/util/Executors;->MAIN_EXECUTOR:Lcom/android/launcher3/util/LooperExecutor;

    new-instance v2, Lcom/android/quickstep/v0;

    invoke-direct {v2, p0, v0, p1, p2}, Lcom/android/quickstep/v0;-><init>(Lcom/android/quickstep/AbsSwipeUpHandler;Lcom/android/systemui/shared/recents/model/ThumbnailData;IZ)V

    invoke-virtual {v1, v2}, Lcom/android/launcher3/util/LooperExecutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method private synthetic lambda$updateThumbnail$25()V
    .locals 1

    iget-object p0, p0, Lcom/android/quickstep/AbsSwipeUpHandler;->mStateCallback:Lcom/android/quickstep/MultiStateCallback;

    sget v0, Lcom/android/quickstep/AbsSwipeUpHandler;->STATE_SCREENSHOT_CAPTURED:I

    invoke-virtual {p0, v0}, Lcom/android/quickstep/MultiStateCallback;->setStateOnUiThread(I)V

    return-void
.end method

.method private launcherFrameDrawn()V
    .locals 2

    const-string v0, "Recent"

    const-string v1, "Abs -> launcherFrameDrawn."

    invoke-static {v0, v1}, Ly2/e;->c(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/quickstep/AbsSwipeUpHandler;->mLauncherFrameDrawnTime:J

    return-void
.end method

.method public static synthetic m(Lcom/android/quickstep/AbsSwipeUpHandler;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/quickstep/AbsSwipeUpHandler;->lambda$finishCurrentTransitionToRecents$29()V

    return-void
.end method

.method private maybeAbortSwipePipToHome()V
    .locals 4

    iget-boolean v0, p0, Lcom/android/quickstep/AbsSwipeUpHandler;->mIsSwipingPipToHome:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/quickstep/AbsSwipeUpHandler;->mSwipePipToHomeAnimators:[Lcom/android/quickstep/util/SwipePipToHomeAnimator;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/quickstep/SystemUiProxy;->INSTANCE:Lcom/android/launcher3/util/MainThreadInitializedObject;

    iget-object v2, p0, Lcom/android/quickstep/SwipeUpAnimationLogic;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v2}, Lcom/android/launcher3/util/MainThreadInitializedObject;->get(Landroid/content/Context;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/quickstep/SystemUiProxy;

    iget-object v2, p0, Lcom/android/quickstep/AbsSwipeUpHandler;->mSwipePipToHomeAnimator:Lcom/android/quickstep/util/SwipePipToHomeAnimator;

    invoke-virtual {v2}, Lcom/android/quickstep/util/SwipePipToHomeAnimator;->getTaskId()I

    move-result v2

    iget-object v3, p0, Lcom/android/quickstep/AbsSwipeUpHandler;->mSwipePipToHomeAnimator:Lcom/android/quickstep/util/SwipePipToHomeAnimator;

    invoke-virtual {v3}, Lcom/android/quickstep/util/SwipePipToHomeAnimator;->getComponentName()Landroid/content/ComponentName;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lcom/android/quickstep/SystemUiProxy;->abortSwipePipToHome(ILandroid/content/ComponentName;)V

    iput-boolean v1, p0, Lcom/android/quickstep/AbsSwipeUpHandler;->mIsSwipingPipToHome:Z

    :cond_0
    return-void
.end method

.method private maybeFinishSwipePipToHome()V
    .locals 7

    iget-boolean v0, p0, Lcom/android/quickstep/AbsSwipeUpHandler;->mIsSwipingPipToHome:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/quickstep/AbsSwipeUpHandler;->mSwipePipToHomeAnimators:[Lcom/android/quickstep/util/SwipePipToHomeAnimator;

    aget-object v0, v0, v1

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/quickstep/AbsSwipeUpHandler;->mSwipePipToHomeAnimator:Lcom/android/quickstep/util/SwipePipToHomeAnimator;

    invoke-virtual {v0}, Lcom/android/quickstep/util/SwipePipToHomeAnimator;->isLeashReleased()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "AbsSwipeUpHandler"

    const-string v2, "maybeFinishSwipePipToHome: Leash was released, please check log"

    invoke-static {v0, v2}, Ly2/e;->f(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/quickstep/AbsSwipeUpHandler;->mRecentsAnimationController:Lcom/android/quickstep/RecentsAnimationController;

    iget-object v2, p0, Lcom/android/quickstep/AbsSwipeUpHandler;->mSwipePipToHomeAnimator:Lcom/android/quickstep/util/SwipePipToHomeAnimator;

    invoke-virtual {v2}, Lcom/android/quickstep/util/SwipePipToHomeAnimator;->getTaskId()I

    move-result v2

    iget-object v3, p0, Lcom/android/quickstep/AbsSwipeUpHandler;->mSwipePipToHomeAnimator:Lcom/android/quickstep/util/SwipePipToHomeAnimator;

    invoke-virtual {v3}, Lcom/android/quickstep/util/SwipePipToHomeAnimator;->getFinishTransaction()Landroid/window/PictureInPictureSurfaceTransaction;

    move-result-object v3

    iget-object v4, p0, Lcom/android/quickstep/AbsSwipeUpHandler;->mSwipePipToHomeAnimator:Lcom/android/quickstep/util/SwipePipToHomeAnimator;

    invoke-virtual {v4}, Lcom/android/quickstep/util/SwipePipToHomeAnimator;->getContentOverlay()Landroid/view/SurfaceControl;

    move-result-object v4

    invoke-virtual {v0, v2, v3, v4}, Lcom/android/quickstep/RecentsAnimationController;->setFinishTaskTransaction(ILandroid/window/PictureInPictureSurfaceTransaction;Landroid/view/SurfaceControl;)V

    :goto_0
    iput-boolean v1, p0, Lcom/android/quickstep/AbsSwipeUpHandler;->mIsSwipingPipToHome:Z

    goto :goto_2

    :cond_1
    iget-boolean v0, p0, Lcom/android/quickstep/SwipeUpAnimationLogic;->mIsSwipeForSplit:Z

    if-eqz v0, :cond_2

    new-instance v0, Landroid/window/PictureInPictureSurfaceTransaction$Builder;

    invoke-direct {v0}, Landroid/window/PictureInPictureSurfaceTransaction$Builder;-><init>()V

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/window/PictureInPictureSurfaceTransaction$Builder;->setAlpha(F)Landroid/window/PictureInPictureSurfaceTransaction$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/window/PictureInPictureSurfaceTransaction$Builder;->build()Landroid/window/PictureInPictureSurfaceTransaction;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/window/PictureInPictureSurfaceTransaction;->setShouldDisableCanAffectSystemUiFlags(Z)V

    sget-object v2, Lcom/android/quickstep/TopTaskTracker;->INSTANCE:Lcom/android/launcher3/util/MainThreadInitializedObject;

    iget-object v3, p0, Lcom/android/quickstep/SwipeUpAnimationLogic;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v3}, Lcom/android/launcher3/util/MainThreadInitializedObject;->get(Landroid/content/Context;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/quickstep/TopTaskTracker;

    invoke-virtual {v2}, Lcom/android/quickstep/TopTaskTracker;->getRunningSplitTaskIds()[I

    move-result-object v2

    array-length v3, v2

    :goto_1
    if-ge v1, v3, :cond_2

    aget v4, v2, v1

    iget-object v5, p0, Lcom/android/quickstep/AbsSwipeUpHandler;->mRecentsAnimationController:Lcom/android/quickstep/RecentsAnimationController;

    const/4 v6, 0x0

    invoke-virtual {v5, v4, v0, v6}, Lcom/android/quickstep/RecentsAnimationController;->setFinishTaskTransaction(ILandroid/window/PictureInPictureSurfaceTransaction;Landroid/view/SurfaceControl;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_2
    :goto_2
    return-void
.end method

.method private maybeUpdateRecentsAttachedState()V
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/quickstep/AbsSwipeUpHandler;->maybeUpdateRecentsAttachedState(Z)V

    return-void
.end method

.method private maybeUpdateRecentsAttachedState(ZZ)V
    .locals 6

    iget-object v0, p0, Lcom/android/quickstep/SwipeUpAnimationLogic;->mDeviceState:Lcom/android/quickstep/RecentsAnimationDeviceState;

    invoke-virtual {v0}, Lcom/android/quickstep/RecentsAnimationDeviceState;->isFullyGesturalNavMode()Z

    move-result v0

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/android/quickstep/AbsSwipeUpHandler;->mRecentsView:Lcom/android/quickstep/views/RecentsView;

    if-nez v0, :cond_0

    goto/16 :goto_3

    :cond_0
    iget-object v0, p0, Lcom/android/quickstep/AbsSwipeUpHandler;->mRecentsAnimationTargets:Lcom/android/quickstep/RecentsAnimationTargets;

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/android/quickstep/SwipeUpAnimationLogic;->mGestureState:Lcom/android/quickstep/GestureState;

    invoke-virtual {v1}, Lcom/android/quickstep/GestureState;->getRunningTaskId()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/quickstep/RemoteAnimationTargets;->findTask(I)Landroid/view/RemoteAnimationTarget;

    move-result-object v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    iget-boolean v1, p0, Lcom/android/quickstep/AbsSwipeUpHandler;->mIsInAllAppsRegion:Z

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x2

    if-eqz v1, :cond_3

    :cond_2
    :goto_1
    move v2, v3

    goto :goto_2

    :cond_3
    iget-object v1, p0, Lcom/android/quickstep/SwipeUpAnimationLogic;->mGestureState:Lcom/android/quickstep/GestureState;

    invoke-virtual {v1}, Lcom/android/quickstep/GestureState;->getEndTarget()Lcom/android/quickstep/GestureState$GestureEndTarget;

    move-result-object v1

    if-eqz v1, :cond_4

    iget-object v0, p0, Lcom/android/quickstep/SwipeUpAnimationLogic;->mGestureState:Lcom/android/quickstep/GestureState;

    invoke-virtual {v0}, Lcom/android/quickstep/GestureState;->getEndTarget()Lcom/android/quickstep/GestureState$GestureEndTarget;

    move-result-object v0

    iget-boolean v2, v0, Lcom/android/quickstep/GestureState$GestureEndTarget;->recentsAttachedToAppWindow:Z

    goto :goto_2

    :cond_4
    iget-boolean v1, p0, Lcom/android/quickstep/AbsSwipeUpHandler;->mContinuingLastGesture:Z

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/android/quickstep/AbsSwipeUpHandler;->mRecentsView:Lcom/android/quickstep/views/RecentsView;

    invoke-virtual {v1}, Lcom/android/quickstep/views/RecentsView;->getRunningTaskIndex()I

    move-result v1

    iget-object v5, p0, Lcom/android/quickstep/AbsSwipeUpHandler;->mRecentsView:Lcom/android/quickstep/views/RecentsView;

    invoke-virtual {v5}, Lcom/android/launcher3/PagedView;->getNextPage()I

    move-result v5

    if-eq v1, v5, :cond_5

    iget v0, p0, Lcom/android/quickstep/AbsSwipeUpHandler;->mWindowModeTipsState:I

    and-int/2addr v0, v4

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/android/quickstep/AbsSwipeUpHandler;->mRecentsView:Lcom/android/quickstep/views/RecentsView;

    invoke-virtual {v0}, Lcom/android/launcher3/PagedView;->getNextPage()I

    move-result v0

    iget-object v1, p0, Lcom/android/quickstep/AbsSwipeUpHandler;->mRecentsView:Lcom/android/quickstep/views/RecentsView;

    invoke-virtual {v1}, Lcom/android/quickstep/views/RecentsView;->getRunningTaskIndex()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    if-ge v0, v4, :cond_7

    goto :goto_1

    :cond_5
    if-eqz v0, :cond_6

    invoke-static {v0}, Lcom/android/quickstep/AbsSwipeUpHandler;->isNotInRecents(Landroid/view/RemoteAnimationTarget;)Z

    move-result v0

    if-eqz v0, :cond_6

    goto :goto_2

    :cond_6
    iget v0, p0, Lcom/android/quickstep/AbsSwipeUpHandler;->mWindowModeTipsState:I

    and-int/2addr v0, v4

    if-nez v0, :cond_2

    iget-boolean v0, p0, Lcom/android/quickstep/AbsSwipeUpHandler;->mHasMotionEverBeenPaused:Z

    if-nez v0, :cond_7

    iget-boolean v0, p0, Lcom/android/quickstep/AbsSwipeUpHandler;->mIsLikelyToStartNewTask:Z

    if-eqz v0, :cond_2

    :cond_7
    :goto_2
    if-eqz p2, :cond_8

    iget-object p2, p0, Lcom/android/quickstep/AbsSwipeUpHandler;->mAnimationFactory:Lcom/android/quickstep/BaseActivityInterface$AnimationFactory;

    invoke-interface {p2}, Lcom/android/quickstep/BaseActivityInterface$AnimationFactory;->hasRecentsEverAttachedToAppWindow()Z

    move-result p2

    if-nez p2, :cond_8

    if-eqz v2, :cond_8

    iget-object p2, p0, Lcom/android/quickstep/AbsSwipeUpHandler;->mRecentsView:Lcom/android/quickstep/views/RecentsView;

    invoke-virtual {p2}, Lcom/android/quickstep/views/RecentsView;->moveRunningTaskToFront()V

    :cond_8
    iget-object p2, p0, Lcom/android/quickstep/AbsSwipeUpHandler;->mAnimationFactory:Lcom/android/quickstep/BaseActivityInterface$AnimationFactory;

    invoke-interface {p2, v2, p1}, Lcom/android/quickstep/BaseActivityInterface$AnimationFactory;->setRecentsAttachedToAppWindow(ZZ)V

    if-eqz p1, :cond_9

    new-array p1, v4, [F

    fill-array-data p1, :array_0

    invoke-static {p1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object p1

    new-instance p2, Lcom/android/quickstep/l;

    invoke-direct {p2, p0}, Lcom/android/quickstep/l;-><init>(Lcom/android/quickstep/AbsSwipeUpHandler;)V

    invoke-virtual {p1, p2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    const-wide/16 v0, 0x12c

    invoke-virtual {p1, v0, v1}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    move-result-object p2

    invoke-virtual {p2}, Landroid/animation/ValueAnimator;->start()V

    iget-object p0, p0, Lcom/android/quickstep/AbsSwipeUpHandler;->mStateCallback:Lcom/android/quickstep/MultiStateCallback;

    sget p2, Lcom/android/quickstep/AbsSwipeUpHandler;->STATE_HANDLER_INVALIDATED:I

    new-instance v0, Lcom/android/quickstep/m1;

    invoke-direct {v0, p1}, Lcom/android/quickstep/m1;-><init>(Landroid/animation/ValueAnimator;)V

    invoke-virtual {p0, p2, v0}, Lcom/android/quickstep/MultiStateCallback;->runOnceAtState(ILjava/lang/Runnable;)V

    goto :goto_3

    :cond_9
    invoke-virtual {p0}, Lcom/android/quickstep/AbsSwipeUpHandler;->applyScrollAndTransform()V

    :cond_a
    :goto_3
    return-void

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public static synthetic n(Lcom/android/quickstep/AbsSwipeUpHandler;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/quickstep/AbsSwipeUpHandler;->lambda$onLauncherStart$6()V

    return-void
.end method

.method private notifyGestureStarted()V
    .locals 1
    .annotation build Landroidx/annotation/UiThread;
    .end annotation

    iget-object p0, p0, Lcom/android/quickstep/AbsSwipeUpHandler;->mActivity:Lcom/android/launcher3/statemanager/StatefulActivity;

    if-eqz p0, :cond_0

    const/16 v0, 0x9

    invoke-virtual {p0, v0}, Lcom/android/launcher3/BaseActivity;->clearForceInvisibleFlag(I)V

    :cond_0
    return-void
.end method

.method public static synthetic o(Lcom/android/quickstep/AbsSwipeUpHandler;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/quickstep/AbsSwipeUpHandler;->launcherFrameDrawn()V

    return-void
.end method

.method private onAnimatorPlaybackControllerCreated(Lcom/android/quickstep/util/AnimatorControllerWithResistance;)V
    .locals 2

    iget-object v0, p0, Lcom/android/quickstep/AbsSwipeUpHandler;->mLauncherTransitionController:Lcom/android/quickstep/util/AnimatorControllerWithResistance;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-object p1, p0, Lcom/android/quickstep/AbsSwipeUpHandler;->mLauncherTransitionController:Lcom/android/quickstep/util/AnimatorControllerWithResistance;

    if-eqz v0, :cond_1

    iget-object p1, p0, Lcom/android/quickstep/AbsSwipeUpHandler;->mStateCallback:Lcom/android/quickstep/MultiStateCallback;

    sget v0, Lcom/android/quickstep/AbsSwipeUpHandler;->STATE_GESTURE_STARTED:I

    new-instance v1, Lcom/android/quickstep/a0;

    invoke-direct {v1, p0}, Lcom/android/quickstep/a0;-><init>(Lcom/android/quickstep/AbsSwipeUpHandler;)V

    invoke-virtual {p1, v0, v1}, Lcom/android/quickstep/MultiStateCallback;->runOnceAtState(ILjava/lang/Runnable;)V

    :cond_1
    return-void
.end method

.method private onDeferredActivityLaunch()V
    .locals 2

    iget-object v0, p0, Lcom/android/quickstep/AbsSwipeUpHandler;->mActivityInterface:Lcom/android/quickstep/BaseActivityInterface;

    new-instance v1, Lcom/android/quickstep/r;

    invoke-direct {v1, p0}, Lcom/android/quickstep/r;-><init>(Lcom/android/quickstep/AbsSwipeUpHandler;)V

    const/4 p0, 0x0

    invoke-virtual {v0, p0, v1}, Lcom/android/quickstep/BaseActivityInterface;->switchRunningTaskViewToScreenshot(Ljava/util/HashMap;Ljava/lang/Runnable;)V

    return-void
.end method

.method private onLauncherBindToService()V
    .locals 2

    iget-object v0, p0, Lcom/android/quickstep/AbsSwipeUpHandler;->mStateCallback:Lcom/android/quickstep/MultiStateCallback;

    sget v1, Lcom/android/quickstep/AbsSwipeUpHandler;->STATE_LAUNCHER_BIND_TO_SERVICE:I

    invoke-virtual {v0, v1}, Lcom/android/quickstep/MultiStateCallback;->setState(I)V

    invoke-direct {p0}, Lcom/android/quickstep/AbsSwipeUpHandler;->flushOnRecentsAnimationAndLauncherBound()V

    return-void
.end method

.method private onLauncherPresentAndGestureStarted()V
    .locals 3

    const-string v0, "Recent"

    const-string v1, "Abs -> onLauncherPresentAndGestureStarted."

    invoke-static {v0, v1}, Ly2/e;->c(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/android/quickstep/AbsSwipeUpHandler;->setupRecentsViewUi()V

    iget-object v0, p0, Lcom/android/quickstep/SwipeUpAnimationLogic;->mGestureState:Lcom/android/quickstep/GestureState;

    invoke-virtual {v0}, Lcom/android/quickstep/GestureState;->getActivityInterface()Lcom/android/quickstep/BaseActivityInterface;

    move-result-object v0

    iget-object v1, p0, Lcom/android/quickstep/AbsSwipeUpHandler;->mOnDeferredActivityLaunch:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lcom/android/quickstep/BaseActivityInterface;->setOnDeferredActivityLaunchCallback(Ljava/lang/Runnable;)V

    iget-object v0, p0, Lcom/android/quickstep/SwipeUpAnimationLogic;->mGestureState:Lcom/android/quickstep/GestureState;

    sget v1, Lcom/android/quickstep/GestureState;->STATE_END_TARGET_SET:I

    new-instance v2, Lcom/android/quickstep/i0;

    invoke-direct {v2, p0}, Lcom/android/quickstep/i0;-><init>(Lcom/android/quickstep/AbsSwipeUpHandler;)V

    invoke-virtual {v0, v1, v2}, Lcom/android/quickstep/GestureState;->runOnceAtState(ILjava/lang/Runnable;)V

    invoke-direct {p0}, Lcom/android/quickstep/AbsSwipeUpHandler;->notifyGestureStarted()V

    return-void
.end method

.method private onLauncherStart()V
    .locals 5

    iget-object v0, p0, Lcom/android/quickstep/AbsSwipeUpHandler;->mActivityInterface:Lcom/android/quickstep/BaseActivityInterface;

    invoke-virtual {v0}, Lcom/android/quickstep/BaseActivityInterface;->getCreatedActivity()Lcom/android/launcher3/statemanager/StatefulActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/android/quickstep/AbsSwipeUpHandler;->mActivity:Lcom/android/launcher3/statemanager/StatefulActivity;

    if-eq v1, v0, :cond_0

    return-void

    :cond_0
    iget-object v1, p0, Lcom/android/quickstep/AbsSwipeUpHandler;->mStateCallback:Lcom/android/quickstep/MultiStateCallback;

    sget v2, Lcom/android/quickstep/AbsSwipeUpHandler;->STATE_HANDLER_INVALIDATED:I

    invoke-virtual {v1, v2}, Lcom/android/quickstep/MultiStateCallback;->hasStates(I)Z

    move-result v1

    if-eqz v1, :cond_1

    return-void

    :cond_1
    iget-object v1, p0, Lcom/android/quickstep/AbsSwipeUpHandler;->mRecentsView:Lcom/android/quickstep/views/RecentsView;

    invoke-virtual {v1}, Lcom/android/quickstep/views/RecentsView;->updateRecentsRotation()V

    new-instance v1, Lcom/android/quickstep/y0;

    invoke-direct {v1, p0}, Lcom/android/quickstep/y0;-><init>(Lcom/android/quickstep/AbsSwipeUpHandler;)V

    invoke-virtual {p0, v1}, Lcom/android/quickstep/SwipeUpAnimationLogic;->runActionOnRemoteHandles(Ljava/util/function/Consumer;)V

    iget-object v1, p0, Lcom/android/quickstep/SwipeUpAnimationLogic;->mGestureState:Lcom/android/quickstep/GestureState;

    invoke-virtual {v1}, Lcom/android/quickstep/GestureState;->getEndTarget()Lcom/android/quickstep/GestureState$GestureEndTarget;

    move-result-object v1

    sget-object v2, Lcom/android/quickstep/GestureState$GestureEndTarget;->HOME:Lcom/android/quickstep/GestureState$GestureEndTarget;

    if-eq v1, v2, :cond_3

    new-instance v1, Lcom/android/quickstep/i;

    invoke-direct {v1, p0}, Lcom/android/quickstep/i;-><init>(Lcom/android/quickstep/AbsSwipeUpHandler;)V

    iget-boolean v2, p0, Lcom/android/quickstep/AbsSwipeUpHandler;->mWasLauncherAlreadyVisible:Z

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/android/quickstep/AbsSwipeUpHandler;->mStateCallback:Lcom/android/quickstep/MultiStateCallback;

    sget v3, Lcom/android/quickstep/AbsSwipeUpHandler;->STATE_GESTURE_STARTED:I

    invoke-virtual {v2, v3, v1}, Lcom/android/quickstep/MultiStateCallback;->runOnceAtState(ILjava/lang/Runnable;)V

    goto :goto_0

    :cond_2
    invoke-interface {v1}, Ljava/lang/Runnable;->run()V

    :cond_3
    :goto_0
    iget-boolean v1, p0, Lcom/android/quickstep/AbsSwipeUpHandler;->mWasLauncherAlreadyVisible:Z

    const/16 v2, 0x100

    invoke-static {v0, v1, v2}, Lcom/android/launcher3/AbstractFloatingView;->closeAllOpenViewsExcept(Lcom/android/launcher3/views/ActivityContext;ZI)V

    iget-boolean v1, p0, Lcom/android/quickstep/AbsSwipeUpHandler;->mWasLauncherAlreadyVisible:Z

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/android/quickstep/AbsSwipeUpHandler;->mStateCallback:Lcom/android/quickstep/MultiStateCallback;

    sget v2, Lcom/android/quickstep/AbsSwipeUpHandler;->STATE_LAUNCHER_DRAWN:I

    invoke-virtual {v1, v2}, Lcom/android/quickstep/MultiStateCallback;->setState(I)V

    goto :goto_1

    :cond_4
    sget-object v1, Lcom/android/launcher3/util/TraceHelper;->INSTANCE:Lcom/android/launcher3/util/TraceHelper;

    const-string v2, "WTS-init"

    invoke-virtual {v1, v2}, Lcom/android/launcher3/util/TraceHelper;->beginSection(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0}, Lcom/android/launcher3/views/ActivityContext;->getDragLayer()Lcom/android/launcher3/views/BaseDragLayer;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v3

    new-instance v4, Lcom/android/quickstep/AbsSwipeUpHandler$2;

    invoke-direct {v4, p0, v1, v2, v0}, Lcom/android/quickstep/AbsSwipeUpHandler$2;-><init>(Lcom/android/quickstep/AbsSwipeUpHandler;Ljava/lang/Object;Landroid/view/View;Lcom/android/launcher3/statemanager/StatefulActivity;)V

    invoke-virtual {v3, v4}, Landroid/view/ViewTreeObserver;->addOnDrawListener(Landroid/view/ViewTreeObserver$OnDrawListener;)V

    :goto_1
    invoke-virtual {v0}, Lcom/android/launcher3/statemanager/StatefulActivity;->getRootView()Lcom/android/launcher3/LauncherRootView;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/widget/FrameLayout;->setOnApplyWindowInsetsListener(Landroid/view/View$OnApplyWindowInsetsListener;)V

    iget-object p0, p0, Lcom/android/quickstep/AbsSwipeUpHandler;->mStateCallback:Lcom/android/quickstep/MultiStateCallback;

    sget v0, Lcom/android/quickstep/AbsSwipeUpHandler;->STATE_LAUNCHER_STARTED:I

    invoke-virtual {p0, v0}, Lcom/android/quickstep/MultiStateCallback;->setState(I)V

    return-void
.end method

.method private onRecentsViewScroll()V
    .locals 1

    invoke-virtual {p0}, Lcom/android/quickstep/AbsSwipeUpHandler;->moveWindowWithRecentsScroll()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/quickstep/AbsSwipeUpHandler;->onCurrentShiftUpdated()V

    :cond_0
    return-void
.end method

.method private onSettledOnEndTarget()V
    .locals 5

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/quickstep/AbsSwipeUpHandler;->maybeUpdateRecentsAttachedState(Z)V

    iget-object v0, p0, Lcom/android/quickstep/SwipeUpAnimationLogic;->mGestureState:Lcom/android/quickstep/GestureState;

    invoke-virtual {v0}, Lcom/android/quickstep/GestureState;->getEndTarget()Lcom/android/quickstep/GestureState$GestureEndTarget;

    move-result-object v0

    iget-object v1, p0, Lcom/android/quickstep/AbsSwipeUpHandler;->mActivityInterface:Lcom/android/quickstep/BaseActivityInterface;

    invoke-virtual {v1, v0}, Lcom/android/quickstep/BaseActivityInterface;->onSettledOnEndTarget(Lcom/android/quickstep/GestureState$GestureEndTarget;)Landroid/view/View;

    move-result-object v1

    sget-object v2, Lcom/android/quickstep/GestureState$GestureEndTarget;->NEW_TASK:Lcom/android/quickstep/GestureState$GestureEndTarget;

    if-eq v0, v2, :cond_0

    const/16 v2, 0xb

    invoke-static {v2}, Lcom/android/systemui/shared/system/InteractionJankMonitorWrapper;->cancel(I)V

    :cond_0
    sget-object v2, Lcom/android/quickstep/GestureState$GestureEndTarget;->HOME:Lcom/android/quickstep/GestureState$GestureEndTarget;

    if-eq v0, v2, :cond_1

    const/16 v2, 0x9

    invoke-static {v2}, Lcom/android/systemui/shared/system/InteractionJankMonitorWrapper;->cancel(I)V

    :cond_1
    sget-object v2, Lcom/android/quickstep/GestureState$GestureEndTarget;->RECENTS:Lcom/android/quickstep/GestureState$GestureEndTarget;

    if-eq v0, v2, :cond_2

    const/16 v2, 0x42

    invoke-static {v2}, Lcom/android/systemui/shared/system/InteractionJankMonitorWrapper;->cancel(I)V

    :cond_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Abs -> onSettledOnEndTarget endTarget = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "Recent"

    invoke-static {v3, v2}, Ly2/e;->c(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v2, Lcom/android/quickstep/AbsSwipeUpHandler$14;->$SwitchMap$com$android$quickstep$GestureState$GestureEndTarget:[I

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    aget v2, v2, v3

    const/4 v3, 0x1

    if-eq v2, v3, :cond_8

    const/4 v4, 0x2

    if-eq v2, v4, :cond_7

    const/4 v4, 0x3

    if-eq v2, v4, :cond_6

    const/4 v4, 0x4

    if-eq v2, v4, :cond_5

    const/4 v4, 0x5

    if-eq v2, v4, :cond_3

    goto :goto_3

    :cond_3
    if-eqz v1, :cond_4

    new-instance v2, Lcom/android/quickstep/b;

    invoke-direct {v2, p0}, Lcom/android/quickstep/b;-><init>(Lcom/android/quickstep/AbsSwipeUpHandler;)V

    invoke-static {v1, v2}, Lcom/android/quickstep/ViewUtils;->postFrameDrawn(Landroid/view/View;Ljava/lang/Runnable;)Z

    goto :goto_0

    :cond_4
    iget-object v1, p0, Lcom/android/quickstep/AbsSwipeUpHandler;->mStateCallback:Lcom/android/quickstep/MultiStateCallback;

    sget v2, Lcom/android/quickstep/AbsSwipeUpHandler;->STATE_RESUME_LAST_TASK:I

    invoke-virtual {v1, v2}, Lcom/android/quickstep/MultiStateCallback;->setState(I)V

    :goto_0
    invoke-direct {p0, v3}, Lcom/android/quickstep/AbsSwipeUpHandler;->setDividerShown(Z)V

    goto :goto_3

    :cond_5
    iget-object p0, p0, Lcom/android/quickstep/AbsSwipeUpHandler;->mStateCallback:Lcom/android/quickstep/MultiStateCallback;

    sget v1, Lcom/android/quickstep/AbsSwipeUpHandler;->STATE_START_NEW_TASK:I

    goto :goto_1

    :cond_6
    iget-object p0, p0, Lcom/android/quickstep/AbsSwipeUpHandler;->mStateCallback:Lcom/android/quickstep/MultiStateCallback;

    sget v1, Lcom/android/quickstep/AbsSwipeUpHandler;->STATE_SCALED_CONTROLLER_RECENTS:I

    sget v2, Lcom/android/quickstep/AbsSwipeUpHandler;->STATE_CAPTURE_SCREENSHOT:I

    or-int/2addr v1, v2

    sget v2, Lcom/android/quickstep/AbsSwipeUpHandler;->STATE_SCREENSHOT_VIEW_SHOWN:I

    goto :goto_2

    :cond_7
    iget-object v1, p0, Lcom/android/quickstep/AbsSwipeUpHandler;->mStateCallback:Lcom/android/quickstep/MultiStateCallback;

    sget v2, Lcom/android/quickstep/AbsSwipeUpHandler;->STATE_SCALED_CONTROLLER_HOME:I

    sget v3, Lcom/android/quickstep/AbsSwipeUpHandler;->STATE_CAPTURE_SCREENSHOT:I

    or-int/2addr v2, v3

    invoke-virtual {v1, v2}, Lcom/android/quickstep/MultiStateCallback;->setState(I)V

    sget-object v1, Lcom/android/quickstep/SystemUiProxy;->INSTANCE:Lcom/android/launcher3/util/MainThreadInitializedObject;

    iget-object p0, p0, Lcom/android/quickstep/SwipeUpAnimationLogic;->mContext:Landroid/content/Context;

    invoke-virtual {v1, p0}, Lcom/android/launcher3/util/MainThreadInitializedObject;->get(Landroid/content/Context;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/quickstep/SystemUiProxy;

    invoke-virtual {p0}, Lcom/android/quickstep/SystemUiProxy;->setPipAnimationTypeToAlpha()V

    goto :goto_3

    :cond_8
    iget-object p0, p0, Lcom/android/quickstep/AbsSwipeUpHandler;->mStateCallback:Lcom/android/quickstep/MultiStateCallback;

    sget v1, Lcom/android/quickstep/AbsSwipeUpHandler;->STATE_SETTLED_ON_ALL_APPS:I

    :goto_1
    sget v2, Lcom/android/quickstep/AbsSwipeUpHandler;->STATE_CAPTURE_SCREENSHOT:I

    :goto_2
    or-int/2addr v1, v2

    invoke-virtual {p0, v1}, Lcom/android/quickstep/MultiStateCallback;->setState(I)V

    :goto_3
    sget-object p0, Lcom/android/quickstep/util/ActiveGestureLog;->INSTANCE:Lcom/android/quickstep/util/ActiveGestureLog;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onSettledOnEndTarget "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/android/quickstep/util/ActiveGestureErrorDetector$GestureEvent;->ON_SETTLED_ON_END_TARGET:Lcom/android/quickstep/util/ActiveGestureErrorDetector$GestureEvent;

    invoke-virtual {p0, v0, v1}, Lcom/android/quickstep/util/ActiveGestureLog;->addLog(Ljava/lang/String;Lcom/android/quickstep/util/ActiveGestureErrorDetector$GestureEvent;)V

    return-void
.end method

.method public static synthetic p(Lcom/android/quickstep/AbsSwipeUpHandler;Lcom/android/quickstep/RemoteTargetGluer$RemoteTargetHandle;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/quickstep/AbsSwipeUpHandler;->lambda$onLauncherStart$5(Lcom/android/quickstep/RemoteTargetGluer$RemoteTargetHandle;)V

    return-void
.end method

.method public static synthetic q(Lcom/android/quickstep/AbsSwipeUpHandler;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/quickstep/AbsSwipeUpHandler;->lambda$finishCurrentTransitionToRecents$26()V

    return-void
.end method

.method public static synthetic r(Lcom/android/quickstep/AbsSwipeUpHandler;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/quickstep/AbsSwipeUpHandler;->lambda$handleNormalGestureEnd$16()V

    return-void
.end method

.method private reset()V
    .locals 2

    const-string v0, "Recent"

    const-string v1, "Abs -> reset."

    invoke-static {v0, v1}, Ly2/e;->c(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/quickstep/AbsSwipeUpHandler;->mStateCallback:Lcom/android/quickstep/MultiStateCallback;

    sget v1, Lcom/android/quickstep/AbsSwipeUpHandler;->STATE_HANDLER_INVALIDATED:I

    invoke-virtual {v0, v1}, Lcom/android/quickstep/MultiStateCallback;->setStateOnUiThread(I)V

    iget-object v0, p0, Lcom/android/quickstep/AbsSwipeUpHandler;->mActivity:Lcom/android/launcher3/statemanager/StatefulActivity;

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/android/quickstep/AbsSwipeUpHandler;->mLifecycleCallbacks:Lcom/android/launcher3/util/ActivityLifecycleCallbacksAdapter;

    invoke-virtual {v0, p0}, Landroid/app/Activity;->unregisterActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    :cond_0
    return-void
.end method

.method private resetLauncherListeners()V
    .locals 2

    iget-object v0, p0, Lcom/android/quickstep/AbsSwipeUpHandler;->mActivity:Lcom/android/launcher3/statemanager/StatefulActivity;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/launcher3/statemanager/StatefulActivity;->getRootView()Lcom/android/launcher3/LauncherRootView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setOnApplyWindowInsetsListener(Landroid/view/View$OnApplyWindowInsetsListener;)V

    :cond_0
    iget-object v0, p0, Lcom/android/quickstep/AbsSwipeUpHandler;->mRecentsView:Lcom/android/quickstep/views/RecentsView;

    if-eqz v0, :cond_1

    iget-object p0, p0, Lcom/android/quickstep/AbsSwipeUpHandler;->mOnRecentsScrollListener:Landroid/view/ViewTreeObserver$OnScrollChangedListener;

    invoke-virtual {v0, p0}, Lcom/android/quickstep/views/RecentsView;->removeOnScrollChangedListener(Landroid/view/ViewTreeObserver$OnScrollChangedListener;)V

    :cond_1
    return-void
.end method

.method private resetStateForAnimationCancel()V
    .locals 6

    const-string v0, "Recent"

    const-string v1, "Abs -> resetStateForAnimationCancel."

    invoke-static {v0, v1}, Ly2/e;->c(Ljava/lang/String;Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/quickstep/AbsSwipeUpHandler;->mWasLauncherAlreadyVisible:Z

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/android/quickstep/AbsSwipeUpHandler;->mGestureStarted:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    move v0, v1

    goto :goto_1

    :cond_1
    :goto_0
    move v0, v2

    :goto_1
    iget-object v3, p0, Lcom/android/quickstep/AbsSwipeUpHandler;->mStateCallback:Lcom/android/quickstep/MultiStateCallback;

    sget v4, Lcom/android/quickstep/AbsSwipeUpHandler;->STATE_GESTURE_CANCELLED:I

    invoke-virtual {v3, v4}, Lcom/android/quickstep/MultiStateCallback;->hasStates(I)Z

    move-result v3

    iget-object v4, p0, Lcom/android/quickstep/AbsSwipeUpHandler;->mStateCallback:Lcom/android/quickstep/MultiStateCallback;

    sget v5, Lcom/android/quickstep/AbsSwipeUpHandler;->STATE_RESUME_LAST_TASK:I

    invoke-virtual {v4, v5}, Lcom/android/quickstep/MultiStateCallback;->hasStates(I)Z

    move-result v4

    if-eqz v4, :cond_2

    iget-boolean v4, p0, Lcom/android/quickstep/AbsSwipeUpHandler;->mLastTaskIsTranslucent:Z

    if-eqz v4, :cond_2

    move v3, v2

    goto :goto_2

    :cond_2
    move v1, v0

    :goto_2
    iget-object v0, p0, Lcom/android/quickstep/AbsSwipeUpHandler;->mActivityInterface:Lcom/android/quickstep/BaseActivityInterface;

    iget-object v4, p0, Lcom/android/quickstep/SwipeUpAnimationLogic;->mGestureState:Lcom/android/quickstep/GestureState;

    invoke-virtual {v4}, Lcom/android/quickstep/GestureState;->getEndTarget()Lcom/android/quickstep/GestureState$GestureEndTarget;

    move-result-object v4

    invoke-virtual {v0, v1, v4, v3}, Lcom/android/quickstep/BaseActivityInterface;->onTransitionCancelled(ZLcom/android/quickstep/GestureState$GestureEndTarget;Z)V

    iget-object p0, p0, Lcom/android/quickstep/AbsSwipeUpHandler;->mActivity:Lcom/android/launcher3/statemanager/StatefulActivity;

    if-eqz p0, :cond_3

    invoke-virtual {p0, v2}, Lcom/android/launcher3/BaseActivity;->clearForceInvisibleFlag(I)V

    :cond_3
    return-void
.end method

.method private resumeLastTask()V
    .locals 6
    .annotation build Landroidx/annotation/UiThread;
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Abs -> resumeLastTask. mRecentsAnimationController = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/quickstep/AbsSwipeUpHandler;->mRecentsAnimationController:Lcom/android/quickstep/RecentsAnimationController;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Recent"

    invoke-static {v1, v0}, Ly2/e;->c(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/quickstep/AbsSwipeUpHandler;->mLastTaskIsTranslucent:Z

    iget-object v1, p0, Lcom/android/quickstep/AbsSwipeUpHandler;->mRecentsAnimationController:Lcom/android/quickstep/RecentsAnimationController;

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    invoke-virtual {v1, v0}, Lcom/android/quickstep/RecentsAnimationController;->setWillFinishToHome(Z)V

    iget-object v1, p0, Lcom/android/quickstep/AbsSwipeUpHandler;->mRecentsAnimationTargets:Lcom/android/quickstep/RecentsAnimationTargets;

    if-eqz v1, :cond_1

    iget-object v1, v1, Lcom/android/quickstep/RemoteAnimationTargets;->apps:[Landroid/view/RemoteAnimationTarget;

    array-length v3, v1

    move v4, v0

    :goto_0
    if-ge v4, v3, :cond_1

    aget-object v5, v1, v4

    iget-boolean v5, v5, Landroid/view/RemoteAnimationTarget;->isTranslucent:Z

    if-eqz v5, :cond_0

    const/4 v5, 0x1

    iput-boolean v5, p0, Lcom/android/quickstep/AbsSwipeUpHandler;->mLastTaskIsTranslucent:Z

    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/android/quickstep/AbsSwipeUpHandler;->mRecentsAnimationController:Lcom/android/quickstep/RecentsAnimationController;

    invoke-virtual {v1, v0, v2}, Lcom/android/quickstep/RecentsAnimationController;->finish(ZLjava/lang/Runnable;)V

    :cond_2
    sget-object v0, Lcom/android/quickstep/GestureState$GestureEndTarget;->LAST_TASK:Lcom/android/quickstep/GestureState$GestureEndTarget;

    invoke-direct {p0, v0, v2}, Lcom/android/quickstep/AbsSwipeUpHandler;->doLogGesture(Lcom/android/quickstep/GestureState$GestureEndTarget;Lcom/android/quickstep/views/TaskView;)V

    invoke-direct {p0}, Lcom/android/quickstep/AbsSwipeUpHandler;->reset()V

    return-void
.end method

.method private runOnRecentsAnimationAndLauncherBound(Ljava/lang/Runnable;)V
    .locals 1

    iget-object v0, p0, Lcom/android/quickstep/AbsSwipeUpHandler;->mRecentsAnimationStartCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-direct {p0}, Lcom/android/quickstep/AbsSwipeUpHandler;->flushOnRecentsAnimationAndLauncherBound()V

    return-void
.end method

.method public static synthetic s(Lcom/android/quickstep/AbsSwipeUpHandler;Landroid/view/RemoteAnimationTarget;)Z
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/quickstep/AbsSwipeUpHandler;->lambda$handleTaskAppeared$15(Landroid/view/RemoteAnimationTarget;)Z

    move-result p0

    return p0
.end method

.method private setClampScrollOffset(Z)V
    .locals 3

    iget-boolean v0, p0, Lcom/android/quickstep/AbsSwipeUpHandler;->mIsTransientTaskbar:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/quickstep/AbsSwipeUpHandler;->mRecentsView:Lcom/android/quickstep/views/RecentsView;

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/quickstep/AbsSwipeUpHandler;->mStateCallback:Lcom/android/quickstep/MultiStateCallback;

    sget v1, Lcom/android/quickstep/AbsSwipeUpHandler;->STATE_LAUNCHER_PRESENT:I

    new-instance v2, Lcom/android/quickstep/w0;

    invoke-direct {v2, p0, p1}, Lcom/android/quickstep/w0;-><init>(Lcom/android/quickstep/AbsSwipeUpHandler;Z)V

    invoke-virtual {v0, v1, v2}, Lcom/android/quickstep/MultiStateCallback;->runOnceAtState(ILjava/lang/Runnable;)V

    return-void

    :cond_1
    invoke-virtual {v0, p1}, Lcom/android/quickstep/views/RecentsView;->setClampScrollOffset(Z)V

    return-void
.end method

.method private setDividerShown(Z)V
    .locals 2

    iget-object v0, p0, Lcom/android/quickstep/AbsSwipeUpHandler;->mRecentsAnimationTargets:Lcom/android/quickstep/RecentsAnimationTargets;

    if-eqz v0, :cond_1

    iget-boolean v1, p0, Lcom/android/quickstep/AbsSwipeUpHandler;->mIsDividerShown:Z

    if-ne v1, p1, :cond_0

    goto :goto_0

    :cond_0
    iput-boolean p1, p0, Lcom/android/quickstep/AbsSwipeUpHandler;->mIsDividerShown:Z

    iget-object p0, v0, Lcom/android/quickstep/RemoteAnimationTargets;->nonApps:[Landroid/view/RemoteAnimationTarget;

    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/android/quickstep/TaskViewUtils;->createSplitAuxiliarySurfacesAnimator([Landroid/view/RemoteAnimationTarget;ZLjava/util/function/Consumer;)Landroid/animation/ValueAnimator;

    :cond_1
    :goto_0
    return-void
.end method

.method private setIsInAllAppsRegion(Z)V
    .locals 2

    iget-boolean v0, p0, Lcom/android/quickstep/AbsSwipeUpHandler;->mIsInAllAppsRegion:Z

    if-eq v0, p1, :cond_1

    iget-object v0, p0, Lcom/android/quickstep/AbsSwipeUpHandler;->mActivityInterface:Lcom/android/quickstep/BaseActivityInterface;

    invoke-virtual {v0}, Lcom/android/quickstep/BaseActivityInterface;->allowAllAppsFromOverview()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iput-boolean p1, p0, Lcom/android/quickstep/AbsSwipeUpHandler;->mIsInAllAppsRegion:Z

    sget-object v0, Lcom/android/launcher3/util/VibratorWrapper;->INSTANCE:Lcom/android/launcher3/util/MainThreadInitializedObject;

    iget-object v1, p0, Lcom/android/quickstep/SwipeUpAnimationLogic;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/android/launcher3/util/MainThreadInitializedObject;->get(Landroid/content/Context;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/util/VibratorWrapper;

    sget-object v1, Lcom/android/launcher3/util/VibratorWrapper;->OVERVIEW_HAPTIC:Landroid/os/VibrationEffect;

    invoke-virtual {v0, v1}, Lcom/android/launcher3/util/VibratorWrapper;->vibrate(Landroid/os/VibrationEffect;)V

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/quickstep/AbsSwipeUpHandler;->maybeUpdateRecentsAttachedState(Z)V

    new-instance v0, Lcom/android/quickstep/e1;

    invoke-direct {v0, p1}, Lcom/android/quickstep/e1;-><init>(Z)V

    invoke-virtual {p0, v0}, Lcom/android/quickstep/SwipeUpAnimationLogic;->runActionOnRemoteHandles(Ljava/util/function/Consumer;)V

    :cond_1
    :goto_0
    return-void
.end method

.method private setIsLikelyToStartNewTask(ZZ)V
    .locals 1

    iget-boolean v0, p0, Lcom/android/quickstep/AbsSwipeUpHandler;->mIsLikelyToStartNewTask:Z

    if-eq v0, p1, :cond_0

    iput-boolean p1, p0, Lcom/android/quickstep/AbsSwipeUpHandler;->mIsLikelyToStartNewTask:Z

    invoke-virtual {p0, p2}, Lcom/android/quickstep/AbsSwipeUpHandler;->maybeUpdateRecentsAttachedState(Z)V

    :cond_0
    return-void
.end method

.method private setScreenshotCapturedState()V
    .locals 3

    sget-object v0, Lcom/android/launcher3/util/TraceHelper;->INSTANCE:Lcom/android/launcher3/util/TraceHelper;

    const-string v1, "ScreenshotCaptured"

    const/4 v2, 0x4

    invoke-virtual {v0, v1, v2}, Lcom/android/launcher3/util/TraceHelper;->beginSection(Ljava/lang/String;I)Ljava/lang/Object;

    move-result-object v0

    iget-object p0, p0, Lcom/android/quickstep/AbsSwipeUpHandler;->mStateCallback:Lcom/android/quickstep/MultiStateCallback;

    sget v1, Lcom/android/quickstep/AbsSwipeUpHandler;->STATE_SCREENSHOT_CAPTURED:I

    invoke-virtual {p0, v1}, Lcom/android/quickstep/MultiStateCallback;->setStateOnUiThread(I)V

    sget-object p0, Lcom/android/launcher3/util/TraceHelper;->INSTANCE:Lcom/android/launcher3/util/TraceHelper;

    invoke-virtual {p0, v0}, Lcom/android/launcher3/util/TraceHelper;->endSection(Ljava/lang/Object;)V

    return-void
.end method

.method private setWindowModeTipsState(I)V
    .locals 1

    invoke-virtual {p0}, Lcom/android/quickstep/AbsSwipeUpHandler;->isWindowModeTipsSupport()Z

    move-result v0

    if-eqz v0, :cond_2

    iget v0, p0, Lcom/android/quickstep/AbsSwipeUpHandler;->mWindowModeTipsState:I

    if-ne v0, p1, :cond_0

    goto :goto_0

    :cond_0
    iput p1, p0, Lcom/android/quickstep/AbsSwipeUpHandler;->mWindowModeTipsState:I

    iget-object v0, p0, Lcom/android/quickstep/AbsSwipeUpHandler;->mActivity:Lcom/android/launcher3/statemanager/StatefulActivity;

    instance-of v0, v0, Lcom/android/quickstep/IWindowModeTips;

    if-eqz v0, :cond_2

    and-int/lit8 v0, p1, 0x2

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/android/quickstep/AbsSwipeUpHandler;->performHapticFeedback()V

    :cond_1
    iget-object p0, p0, Lcom/android/quickstep/AbsSwipeUpHandler;->mActivity:Lcom/android/launcher3/statemanager/StatefulActivity;

    check-cast p0, Lcom/android/quickstep/IWindowModeTips;

    invoke-interface {p0, p1}, Lcom/android/quickstep/IWindowModeTips;->setTipsViewState(I)V

    :cond_2
    :goto_0
    return-void
.end method

.method private setupLauncherUiAfterSwipeUpToRecentsAnimation()V
    .locals 3

    const-string v0, "Recent"

    const-string v1, "Abs -> setupLauncherUiAfterSwipeUpToRecentsAnimation."

    invoke-static {v0, v1}, Ly2/e;->c(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/quickstep/AbsSwipeUpHandler;->mStateCallback:Lcom/android/quickstep/MultiStateCallback;

    sget v1, Lcom/android/quickstep/AbsSwipeUpHandler;->STATE_HANDLER_INVALIDATED:I

    invoke-virtual {v0, v1}, Lcom/android/quickstep/MultiStateCallback;->hasStates(I)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-direct {p0}, Lcom/android/quickstep/AbsSwipeUpHandler;->endLauncherTransitionController()V

    iget-object v0, p0, Lcom/android/quickstep/AbsSwipeUpHandler;->mRecentsView:Lcom/android/quickstep/views/RecentsView;

    invoke-virtual {v0}, Lcom/android/quickstep/views/RecentsView;->onSwipeUpAnimationSuccess()V

    iget-object v0, p0, Lcom/android/quickstep/AbsSwipeUpHandler;->mTaskAnimationManager:Lcom/android/quickstep/TaskAnimationManager;

    new-instance v1, Lcom/android/quickstep/t;

    invoke-direct {v1, p0}, Lcom/android/quickstep/t;-><init>(Lcom/android/quickstep/AbsSwipeUpHandler;)V

    invoke-virtual {v0, v1}, Lcom/android/quickstep/TaskAnimationManager;->setLiveTileCleanUpHandler(Ljava/lang/Runnable;)V

    iget-object v0, p0, Lcom/android/quickstep/AbsSwipeUpHandler;->mTaskAnimationManager:Lcom/android/quickstep/TaskAnimationManager;

    invoke-virtual {v0}, Lcom/android/quickstep/TaskAnimationManager;->enableLiveTileRestartListener()V

    sget-object v0, Lcom/android/quickstep/SystemUiProxy;->INSTANCE:Lcom/android/launcher3/util/MainThreadInitializedObject;

    iget-object v1, p0, Lcom/android/quickstep/SwipeUpAnimationLogic;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/android/launcher3/util/MainThreadInitializedObject;->get(Landroid/content/Context;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/quickstep/SystemUiProxy;

    const/4 v1, 0x0

    const-string v2, "AbsSwipeUpHandler"

    invoke-virtual {v0, v1, v2}, Lcom/android/quickstep/SystemUiProxy;->onOverviewShown(ZLjava/lang/String;)V

    sget-object v0, Lcom/android/quickstep/GestureState$GestureEndTarget;->RECENTS:Lcom/android/quickstep/GestureState$GestureEndTarget;

    iget-object v1, p0, Lcom/android/quickstep/AbsSwipeUpHandler;->mRecentsView:Lcom/android/quickstep/views/RecentsView;

    invoke-virtual {v1}, Lcom/android/quickstep/views/RecentsView;->getCurrentPageTaskView()Lcom/android/quickstep/views/TaskView;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/android/quickstep/AbsSwipeUpHandler;->doLogGesture(Lcom/android/quickstep/GestureState$GestureEndTarget;Lcom/android/quickstep/views/TaskView;)V

    invoke-direct {p0}, Lcom/android/quickstep/AbsSwipeUpHandler;->reset()V

    return-void
.end method

.method private setupRecentsViewUi()V
    .locals 1

    iget-boolean v0, p0, Lcom/android/quickstep/AbsSwipeUpHandler;->mContinuingLastGesture:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/quickstep/SwipeUpAnimationLogic;->mCurrentShift:Lcom/android/launcher3/anim/AnimatedFloat;

    iget v0, v0, Lcom/android/launcher3/anim/AnimatedFloat;->value:F

    invoke-direct {p0, v0}, Lcom/android/quickstep/AbsSwipeUpHandler;->updateSysUiFlags(F)V

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/android/quickstep/AbsSwipeUpHandler;->notifyGestureAnimationStartToRecents()V

    return-void
.end method

.method private setupWindowAnimation([Lcom/android/quickstep/util/RectFSpringAnim;)V
    .locals 2

    const-wide/16 v0, 0x0

    invoke-direct {p0, p1, v0, v1}, Lcom/android/quickstep/AbsSwipeUpHandler;->setupWindowAnimation([Lcom/android/quickstep/util/RectFSpringAnim;J)V

    return-void
.end method

.method private setupWindowAnimation([Lcom/android/quickstep/util/RectFSpringAnim;J)V
    .locals 3

    const/4 v0, 0x0

    aget-object v1, p1, v0

    new-instance v2, Lcom/android/quickstep/l1;

    invoke-direct {v2, p0}, Lcom/android/quickstep/l1;-><init>(Lcom/android/quickstep/AbsSwipeUpHandler;)V

    invoke-virtual {v1, v2}, Lcom/android/quickstep/util/RectFSpringAnim;->addOnUpdateListener(Lcom/android/quickstep/util/RectFSpringAnim$OnUpdateListener;)V

    aget-object v1, p1, v0

    new-instance v2, Lcom/android/quickstep/AbsSwipeUpHandler$12;

    invoke-direct {v2, p0}, Lcom/android/quickstep/AbsSwipeUpHandler$12;-><init>(Lcom/android/quickstep/AbsSwipeUpHandler;)V

    invoke-virtual {v2, p2, p3}, Lcom/android/launcher3/anim/AnimationSuccessListener;->setDelayMills(J)Lcom/android/launcher3/anim/AnimationSuccessListener;

    move-result-object p2

    invoke-virtual {v1, p2}, Lcom/android/quickstep/util/RectFSpringAnim;->addAnimatorListener(Landroid/animation/Animator$AnimatorListener;)V

    iget-object p0, p0, Lcom/android/quickstep/AbsSwipeUpHandler;->mRecentsAnimationTargets:Lcom/android/quickstep/RecentsAnimationTargets;

    if-eqz p0, :cond_0

    aget-object p1, p1, v0

    invoke-virtual {p0, p1}, Lcom/android/quickstep/RemoteAnimationTargets;->addReleaseCheck(Lcom/android/quickstep/RemoteAnimationTargets$ReleaseCheck;)V

    :cond_0
    return-void
.end method

.method private startInterceptingTouchesForGesture()V
    .locals 2

    iget-object v0, p0, Lcom/android/quickstep/AbsSwipeUpHandler;->mRecentsAnimationController:Lcom/android/quickstep/RecentsAnimationController;

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/android/quickstep/AbsSwipeUpHandler;->mStartMovingTasks:Z

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    iget-object v0, p0, Lcom/android/quickstep/AbsSwipeUpHandler;->mStateCallback:Lcom/android/quickstep/MultiStateCallback;

    sget v1, Lcom/android/quickstep/AbsSwipeUpHandler;->STATE_GESTURE_COMPLETED:I

    invoke-virtual {v0, v1}, Lcom/android/quickstep/MultiStateCallback;->hasStates(I)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/quickstep/AbsSwipeUpHandler;->mRecentsAnimationController:Lcom/android/quickstep/RecentsAnimationController;

    invoke-virtual {v0}, Lcom/android/quickstep/RecentsAnimationController;->enableInputConsumer()V

    goto :goto_0

    :cond_1
    invoke-direct {p0}, Lcom/android/quickstep/AbsSwipeUpHandler;->enableInputConsumerWithRecentTaskId()V

    :goto_0
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/quickstep/AbsSwipeUpHandler;->setDividerShown(Z)V

    :cond_2
    :goto_1
    return-void
.end method

.method private startNewTask()V
    .locals 2
    .annotation build Landroidx/annotation/UiThread;
    .end annotation

    const-string v0, "Recent"

    const-string v1, "Abs -> startNewTask."

    invoke-static {v0, v1}, Ly2/e;->c(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/quickstep/AbsSwipeUpHandler;->mRecentsView:Lcom/android/quickstep/views/RecentsView;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lcom/android/quickstep/views/RecentsView;->getNextPageTaskView()Lcom/android/quickstep/views/TaskView;

    move-result-object v0

    :goto_0
    new-instance v1, Lcom/android/quickstep/a1;

    invoke-direct {v1, p0, v0}, Lcom/android/quickstep/a1;-><init>(Lcom/android/quickstep/AbsSwipeUpHandler;Lcom/android/quickstep/views/TaskView;)V

    invoke-virtual {p0, v1}, Lcom/android/quickstep/AbsSwipeUpHandler;->startNewTask(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public static synthetic t(Lcom/android/quickstep/AbsSwipeUpHandler;Landroid/graphics/RectF;F)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/quickstep/AbsSwipeUpHandler;->lambda$setupWindowAnimation$20(Landroid/graphics/RectF;F)V

    return-void
.end method

.method public static synthetic u(Lcom/android/quickstep/AbsSwipeUpHandler;FFJLandroid/view/animation/Interpolator;Lcom/android/quickstep/GestureState$GestureEndTarget;Landroid/graphics/PointF;)V
    .locals 0

    invoke-direct/range {p0 .. p7}, Lcom/android/quickstep/AbsSwipeUpHandler;->lambda$animateToProgress$17(FFJLandroid/view/animation/Interpolator;Lcom/android/quickstep/GestureState$GestureEndTarget;Landroid/graphics/PointF;)V

    return-void
.end method

.method private updateLauncherTransitionProgress()V
    .locals 3

    iget-object v0, p0, Lcom/android/quickstep/AbsSwipeUpHandler;->mLauncherTransitionController:Lcom/android/quickstep/util/AnimatorControllerWithResistance;

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/android/quickstep/AbsSwipeUpHandler;->canCreateNewOrUpdateExistingLauncherTransitionController()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/quickstep/AbsSwipeUpHandler;->mLauncherTransitionController:Lcom/android/quickstep/util/AnimatorControllerWithResistance;

    iget-object v1, p0, Lcom/android/quickstep/SwipeUpAnimationLogic;->mCurrentShift:Lcom/android/launcher3/anim/AnimatedFloat;

    iget v1, v1, Lcom/android/launcher3/anim/AnimatedFloat;->value:F

    invoke-direct {p0}, Lcom/android/quickstep/AbsSwipeUpHandler;->getScaleProgressDueToScroll()F

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->max(FF)F

    move-result v1

    iget p0, p0, Lcom/android/quickstep/SwipeUpAnimationLogic;->mDragLengthFactor:F

    invoke-virtual {v0, v1, p0}, Lcom/android/quickstep/util/AnimatorControllerWithResistance;->setProgress(FF)V

    :cond_1
    :goto_0
    return-void
.end method

.method private updateSysUiFlags(F)V
    .locals 5

    iget-object v0, p0, Lcom/android/quickstep/AbsSwipeUpHandler;->mRecentsAnimationController:Lcom/android/quickstep/RecentsAnimationController;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/android/quickstep/AbsSwipeUpHandler;->mRecentsView:Lcom/android/quickstep/views/RecentsView;

    if-eqz v0, :cond_6

    invoke-virtual {v0}, Lcom/android/quickstep/views/RecentsView;->getRunningTaskView()Lcom/android/quickstep/views/TaskView;

    move-result-object v0

    iget-object v1, p0, Lcom/android/quickstep/AbsSwipeUpHandler;->mRecentsView:Lcom/android/quickstep/views/RecentsView;

    invoke-virtual {v1}, Lcom/android/quickstep/views/RecentsView;->getTaskViewNearestToCenterOfScreen()Lcom/android/quickstep/views/TaskView;

    move-result-object v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    move v3, v2

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Lcom/android/quickstep/views/TaskView;->getThumbnail()Lcom/android/quickstep/views/TaskThumbnailView;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/quickstep/views/TaskThumbnailView;->getSysUiStatusNavFlags()I

    move-result v3

    :goto_0
    const v4, 0x3e199998    # 0.14999998f

    cmpl-float p1, p1, v4

    const/4 v4, 0x1

    if-lez p1, :cond_1

    move p1, v4

    goto :goto_1

    :cond_1
    move p1, v2

    :goto_1
    if-eq v1, v0, :cond_2

    move v0, v4

    goto :goto_2

    :cond_2
    move v0, v2

    :goto_2
    iget-object v1, p0, Lcom/android/quickstep/AbsSwipeUpHandler;->mRecentsAnimationController:Lcom/android/quickstep/RecentsAnimationController;

    if-nez p1, :cond_4

    if-eqz v0, :cond_3

    if-eqz v3, :cond_3

    goto :goto_3

    :cond_3
    move v4, v2

    :cond_4
    :goto_3
    invoke-virtual {v1, v4}, Lcom/android/quickstep/RecentsAnimationController;->setUseLauncherSystemBarFlags(Z)V

    iget-object v0, p0, Lcom/android/quickstep/AbsSwipeUpHandler;->mRecentsAnimationController:Lcom/android/quickstep/RecentsAnimationController;

    iget-object v1, p0, Lcom/android/quickstep/SwipeUpAnimationLogic;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1, p1}, Lcom/android/quickstep/RecentsAnimationController;->setSplitScreenMinimized(Landroid/content/Context;Z)V

    iget-object v0, p0, Lcom/android/quickstep/AbsSwipeUpHandler;->mRecentsAnimationController:Lcom/android/quickstep/RecentsAnimationController;

    invoke-virtual {v0, p1}, Lcom/android/quickstep/RecentsAnimationController;->setWillFinishToHome(Z)V

    const/4 v0, 0x3

    iget-object p0, p0, Lcom/android/quickstep/AbsSwipeUpHandler;->mActivity:Lcom/android/launcher3/statemanager/StatefulActivity;

    invoke-virtual {p0}, Lcom/android/launcher3/BaseActivity;->getSystemUiController()Lcom/android/launcher3/util/SystemUiController;

    move-result-object p0

    if-eqz p1, :cond_5

    invoke-virtual {p0, v0, v2}, Lcom/android/launcher3/util/SystemUiController;->updateUiState(II)V

    goto :goto_4

    :cond_5
    invoke-virtual {p0, v0, v3}, Lcom/android/launcher3/util/SystemUiController;->updateUiState(II)V

    :cond_6
    :goto_4
    return-void
.end method

.method private updateThumbnail(IZ)Z
    .locals 2

    iget-object v0, p0, Lcom/android/quickstep/SwipeUpAnimationLogic;->mGestureState:Lcom/android/quickstep/GestureState;

    invoke-virtual {v0}, Lcom/android/quickstep/GestureState;->getEndTarget()Lcom/android/quickstep/GestureState$GestureEndTarget;

    move-result-object v0

    sget-object v1, Lcom/android/quickstep/GestureState$GestureEndTarget;->HOME:Lcom/android/quickstep/GestureState$GestureEndTarget;

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Lcom/android/quickstep/SwipeUpAnimationLogic;->mGestureState:Lcom/android/quickstep/GestureState;

    invoke-virtual {v0}, Lcom/android/quickstep/GestureState;->getEndTarget()Lcom/android/quickstep/GestureState$GestureEndTarget;

    move-result-object v0

    sget-object v1, Lcom/android/quickstep/GestureState$GestureEndTarget;->NEW_TASK:Lcom/android/quickstep/GestureState$GestureEndTarget;

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Lcom/android/quickstep/SwipeUpAnimationLogic;->mGestureState:Lcom/android/quickstep/GestureState;

    invoke-virtual {v0}, Lcom/android/quickstep/GestureState;->getEndTarget()Lcom/android/quickstep/GestureState$GestureEndTarget;

    move-result-object v0

    sget-object v1, Lcom/android/quickstep/GestureState$GestureEndTarget;->ALL_APPS:Lcom/android/quickstep/GestureState$GestureEndTarget;

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Lcom/android/quickstep/AbsSwipeUpHandler;->mRecentsView:Lcom/android/quickstep/views/RecentsView;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/android/quickstep/AbsSwipeUpHandler;->mTaskSnapshot:Lcom/android/systemui/shared/recents/model/ThumbnailData;

    invoke-virtual {v0, p1, v1, p2}, Lcom/android/quickstep/views/RecentsView;->updateThumbnail(ILcom/android/systemui/shared/recents/model/ThumbnailData;Z)Lcom/android/quickstep/views/TaskView;

    move-result-object p1

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x0

    :goto_1
    if-eqz p1, :cond_2

    if-eqz p2, :cond_2

    iget-boolean p2, p0, Lcom/android/quickstep/AbsSwipeUpHandler;->mCanceled:Z

    if-nez p2, :cond_2

    new-instance p2, Lcom/android/quickstep/s;

    invoke-direct {p2, p0}, Lcom/android/quickstep/s;-><init>(Lcom/android/quickstep/AbsSwipeUpHandler;)V

    new-instance v0, Lcom/android/quickstep/x0;

    invoke-direct {v0, p0}, Lcom/android/quickstep/x0;-><init>(Lcom/android/quickstep/AbsSwipeUpHandler;)V

    invoke-static {p1, p2, v0}, Lcom/android/quickstep/ViewUtils;->postFrameDrawn(Landroid/view/View;Ljava/lang/Runnable;Ljava/util/function/BooleanSupplier;)Z

    move-result p0

    goto :goto_2

    :cond_2
    const/4 p0, 0x0

    :goto_2
    return p0
.end method

.method private updateWindowModeProgress()V
    .locals 4

    invoke-virtual {p0}, Lcom/android/quickstep/AbsSwipeUpHandler;->isWindowModeTipsSupport()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-direct {p0}, Lcom/android/quickstep/AbsSwipeUpHandler;->isCurrentTaskHasMultipleTasksOrInvalid()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/android/quickstep/AbsSwipeUpHandler;->resetWindowModeTipsState()V

    return-void

    :cond_1
    iget-boolean v0, p0, Lcom/android/quickstep/AbsSwipeUpHandler;->mGestureStarted:Z

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/android/quickstep/AbsSwipeUpHandler;->mIsMotionPaused:Z

    if-nez v0, :cond_2

    iget v0, p0, Lcom/android/quickstep/AbsSwipeUpHandler;->mCurrentVelocityPxPerMs:F

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    iget v3, p0, Lcom/android/quickstep/AbsSwipeUpHandler;->mFlingThreshold:F

    cmpl-float v0, v0, v3

    if-lez v0, :cond_2

    move v0, v1

    goto :goto_0

    :cond_2
    move v0, v2

    :goto_0
    if-eqz v0, :cond_3

    return-void

    :cond_3
    iget-object v0, p0, Lcom/android/quickstep/AbsSwipeUpHandler;->mActivity:Lcom/android/launcher3/statemanager/StatefulActivity;

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/android/quickstep/SwipeUpAnimationLogic;->mCurrentShift:Lcom/android/launcher3/anim/AnimatedFloat;

    iget v0, v0, Lcom/android/launcher3/anim/AnimatedFloat;->value:F

    iget v3, p0, Lcom/android/quickstep/AbsSwipeUpHandler;->mWindowModeTipEnterShift:F

    cmpl-float v3, v0, v3

    if-ltz v3, :cond_4

    const/4 v0, 0x3

    goto :goto_1

    :cond_4
    iget v3, p0, Lcom/android/quickstep/AbsSwipeUpHandler;->mWindowModeTipShowShift:F

    cmpl-float v0, v0, v3

    if-ltz v0, :cond_5

    move v0, v1

    goto :goto_1

    :cond_5
    move v0, v2

    :goto_1
    and-int/lit8 v3, v0, 0x1

    if-eqz v3, :cond_6

    iget-object v3, p0, Lcom/android/quickstep/SwipeUpAnimationLogic;->mDp:Lcom/android/launcher3/DeviceProfile;

    iget-boolean v3, v3, Lcom/android/launcher3/DeviceProfile;->isMultiWindowMode:Z

    if-nez v3, :cond_6

    invoke-direct {p0}, Lcom/android/quickstep/AbsSwipeUpHandler;->isGestureNotEnd()Z

    move-result v3

    if-eqz v3, :cond_6

    invoke-direct {p0}, Lcom/android/quickstep/AbsSwipeUpHandler;->isRunningTaskSupportWindowMode()Z

    move-result v3

    if-eqz v3, :cond_6

    goto :goto_2

    :cond_6
    move v1, v2

    :goto_2
    const/4 v3, 0x2

    if-eqz v1, :cond_8

    and-int/2addr v0, v3

    if-eqz v0, :cond_7

    move v2, v3

    :cond_7
    or-int/2addr v1, v2

    :cond_8
    iget-boolean v0, p0, Lcom/android/quickstep/AbsSwipeUpHandler;->mContinuingLastGesture:Z

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/android/quickstep/AbsSwipeUpHandler;->mRecentsView:Lcom/android/quickstep/views/RecentsView;

    if-eqz v0, :cond_9

    invoke-virtual {v0}, Lcom/android/launcher3/PagedView;->getNextPage()I

    move-result v0

    iget-object v2, p0, Lcom/android/quickstep/AbsSwipeUpHandler;->mRecentsView:Lcom/android/quickstep/views/RecentsView;

    invoke-virtual {v2}, Lcom/android/quickstep/views/RecentsView;->getRunningTaskIndex()I

    move-result v2

    sub-int/2addr v0, v2

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    if-lt v0, v3, :cond_9

    invoke-virtual {p0}, Lcom/android/quickstep/AbsSwipeUpHandler;->resetWindowModeTipsState()V

    goto :goto_3

    :cond_9
    invoke-direct {p0, v1}, Lcom/android/quickstep/AbsSwipeUpHandler;->setWindowModeTipsState(I)V

    :goto_3
    invoke-direct {p0}, Lcom/android/quickstep/AbsSwipeUpHandler;->maybeUpdateRecentsAttachedState()V

    :cond_a
    return-void
.end method

.method public static synthetic v(Lcom/android/quickstep/AbsSwipeUpHandler;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/quickstep/AbsSwipeUpHandler;->setupLauncherUiAfterSwipeUpToRecentsAnimation()V

    return-void
.end method

.method public static synthetic w(Lcom/android/quickstep/AbsSwipeUpHandler;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/quickstep/AbsSwipeUpHandler;->finishCurrentTransitionToHome()V

    return-void
.end method

.method public static synthetic x(Lcom/android/quickstep/AbsSwipeUpHandler;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/quickstep/AbsSwipeUpHandler;->lambda$finishCurrentTransitionToRecents$27()V

    return-void
.end method

.method public static synthetic y(Lcom/android/quickstep/AbsSwipeUpHandler;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/quickstep/AbsSwipeUpHandler;->lambda$finishCurrentTransitionToRecents$28()V

    return-void
.end method

.method public static synthetic z(J)V
    .locals 0

    invoke-static {p0, p1}, Lcom/android/quickstep/AbsSwipeUpHandler;->lambda$new$0(J)V

    return-void
.end method


# virtual methods
.method protected applyScrollAndTransform()V
    .locals 10

    iget-object v0, p0, Lcom/android/quickstep/AbsSwipeUpHandler;->mRecentsAnimationTargets:Lcom/android/quickstep/RecentsAnimationTargets;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/quickstep/SwipeUpAnimationLogic;->mGestureState:Lcom/android/quickstep/GestureState;

    invoke-virtual {v0}, Lcom/android/quickstep/GestureState;->getEndTarget()Lcom/android/quickstep/GestureState$GestureEndTarget;

    move-result-object v0

    sget-object v3, Lcom/android/quickstep/GestureState$GestureEndTarget;->HOME:Lcom/android/quickstep/GestureState$GestureEndTarget;

    if-eq v0, v3, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    iget-boolean v3, p0, Lcom/android/quickstep/AbsSwipeUpHandler;->mRecentsViewScrollLinked:Z

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/android/quickstep/AbsSwipeUpHandler;->mRecentsView:Lcom/android/quickstep/views/RecentsView;

    if-eqz v3, :cond_1

    move v3, v1

    goto :goto_1

    :cond_1
    move v3, v2

    :goto_1
    iget-object v4, p0, Lcom/android/quickstep/SwipeUpAnimationLogic;->mCurrentShift:Lcom/android/launcher3/anim/AnimatedFloat;

    iget v4, v4, Lcom/android/launcher3/anim/AnimatedFloat;->value:F

    invoke-direct {p0}, Lcom/android/quickstep/AbsSwipeUpHandler;->getScaleProgressDueToScroll()F

    move-result v5

    invoke-static {v4, v5}, Ljava/lang/Math;->max(FF)F

    move-result v4

    if-eqz v3, :cond_2

    iget-object v5, p0, Lcom/android/quickstep/AbsSwipeUpHandler;->mRecentsView:Lcom/android/quickstep/views/RecentsView;

    invoke-virtual {v5}, Lcom/android/quickstep/views/RecentsView;->getScrollOffset()I

    move-result v5

    goto :goto_2

    :cond_2
    move v5, v2

    :goto_2
    iget-boolean v6, p0, Lcom/android/quickstep/AbsSwipeUpHandler;->mStartMovingTasks:Z

    if-nez v6, :cond_4

    const/4 v6, 0x0

    cmpl-float v6, v4, v6

    if-gtz v6, :cond_3

    if-eqz v5, :cond_4

    :cond_3
    iput-boolean v1, p0, Lcom/android/quickstep/AbsSwipeUpHandler;->mStartMovingTasks:Z

    invoke-direct {p0}, Lcom/android/quickstep/AbsSwipeUpHandler;->startInterceptingTouchesForGesture()V

    :cond_4
    iget-object v1, p0, Lcom/android/quickstep/SwipeUpAnimationLogic;->mRemoteTargetHandles:[Lcom/android/quickstep/RemoteTargetGluer$RemoteTargetHandle;

    array-length v6, v1

    :goto_3
    if-ge v2, v6, :cond_8

    aget-object v7, v1, v2

    invoke-virtual {v7}, Lcom/android/quickstep/RemoteTargetGluer$RemoteTargetHandle;->getPlaybackController()Lcom/android/quickstep/util/AnimatorControllerWithResistance;

    move-result-object v8

    if-eqz v8, :cond_5

    iget v9, p0, Lcom/android/quickstep/SwipeUpAnimationLogic;->mDragLengthFactor:F

    invoke-virtual {v8, v4, v9}, Lcom/android/quickstep/util/AnimatorControllerWithResistance;->setProgress(FF)V

    :cond_5
    if-eqz v0, :cond_7

    invoke-virtual {v7}, Lcom/android/quickstep/RemoteTargetGluer$RemoteTargetHandle;->getTaskViewSimulator()Lcom/android/quickstep/util/TaskViewSimulator;

    move-result-object v8

    if-eqz v3, :cond_6

    int-to-float v9, v5

    invoke-virtual {v8, v9}, Lcom/android/quickstep/util/TaskViewSimulator;->setScroll(F)V

    :cond_6
    invoke-virtual {v7}, Lcom/android/quickstep/RemoteTargetGluer$RemoteTargetHandle;->getTransformParams()Lcom/android/quickstep/util/TransformParams;

    move-result-object v7

    invoke-virtual {v8, v7}, Lcom/android/quickstep/util/TaskViewSimulator;->apply(Lcom/android/quickstep/util/TransformParams;)V

    :cond_7
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    :cond_8
    sget-object v0, Lcom/android/quickstep/util/ProtoTracer;->INSTANCE:Lcom/android/launcher3/util/MainThreadInitializedObject;

    iget-object p0, p0, Lcom/android/quickstep/SwipeUpAnimationLogic;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p0}, Lcom/android/launcher3/util/MainThreadInitializedObject;->get(Landroid/content/Context;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/quickstep/util/ProtoTracer;

    invoke-virtual {p0}, Lcom/android/quickstep/util/ProtoTracer;->scheduleFrameUpdate()V

    return-void
.end method

.method protected abstract createHomeAnimationFactory(Ljava/util/ArrayList;JZZZLandroid/view/RemoteAnimationTarget;F)Lcom/android/quickstep/SwipeUpAnimationLogic$HomeAnimationFactory;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Landroid/os/IBinder;",
            ">;JZZZ",
            "Landroid/view/RemoteAnimationTarget;",
            "F)",
            "Lcom/android/quickstep/SwipeUpAnimationLogic$HomeAnimationFactory;"
        }
    .end annotation
.end method

.method protected createWindowAnimationToHome(FLcom/android/quickstep/SwipeUpAnimationLogic$HomeAnimationFactory;J)[Lcom/android/quickstep/util/RectFSpringAnim;
    .locals 0

    invoke-super {p0, p1, p2, p3, p4}, Lcom/android/quickstep/SwipeUpAnimationLogic;->createWindowAnimationToHome(FLcom/android/quickstep/SwipeUpAnimationLogic$HomeAnimationFactory;J)[Lcom/android/quickstep/util/RectFSpringAnim;

    move-result-object p1

    invoke-direct {p0, p1, p3, p4}, Lcom/android/quickstep/AbsSwipeUpHandler;->setupWindowAnimation([Lcom/android/quickstep/util/RectFSpringAnim;J)V

    return-object p1
.end method

.method protected abstract finishRecentsControllerToHome(Ljava/lang/Runnable;)V
.end method

.method protected getLastAppearedTaskIndex()I
    .locals 2

    iget-object v0, p0, Lcom/android/quickstep/AbsSwipeUpHandler;->mRecentsView:Lcom/android/quickstep/views/RecentsView;

    const/4 v1, -0x1

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/quickstep/SwipeUpAnimationLogic;->mGestureState:Lcom/android/quickstep/GestureState;

    invoke-virtual {v0}, Lcom/android/quickstep/GestureState;->getLastAppearedTaskId()I

    move-result v0

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Lcom/android/quickstep/AbsSwipeUpHandler;->mRecentsView:Lcom/android/quickstep/views/RecentsView;

    iget-object p0, p0, Lcom/android/quickstep/SwipeUpAnimationLogic;->mGestureState:Lcom/android/quickstep/GestureState;

    invoke-virtual {p0}, Lcom/android/quickstep/GestureState;->getLastAppearedTaskId()I

    move-result p0

    invoke-virtual {v0, p0}, Lcom/android/quickstep/views/RecentsView;->getTaskIndexForId(I)I

    move-result v1

    goto :goto_0

    :cond_1
    iget-object p0, p0, Lcom/android/quickstep/AbsSwipeUpHandler;->mRecentsView:Lcom/android/quickstep/views/RecentsView;

    invoke-virtual {p0}, Lcom/android/quickstep/views/RecentsView;->getRunningTaskIndex()I

    move-result v1

    :goto_0
    return v1
.end method

.method public getLaunchIntent()Landroid/content/Intent;
    .locals 0

    iget-object p0, p0, Lcom/android/quickstep/SwipeUpAnimationLogic;->mGestureState:Lcom/android/quickstep/GestureState;

    invoke-virtual {p0}, Lcom/android/quickstep/GestureState;->getOverviewIntent()Landroid/content/Intent;

    move-result-object p0

    return-object p0
.end method

.method public getMotionPauseListener()Lcom/android/quickstep/util/MotionPauseDetector$OnMotionPauseListener;
    .locals 1

    new-instance v0, Lcom/android/quickstep/AbsSwipeUpHandler$3;

    invoke-direct {v0, p0}, Lcom/android/quickstep/AbsSwipeUpHandler$3;-><init>(Lcom/android/quickstep/AbsSwipeUpHandler;)V

    return-object v0
.end method

.method public getRecentsViewDispatcher(F)Ljava/util/function/Consumer;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(F)",
            "Ljava/util/function/Consumer<",
            "Landroid/view/MotionEvent;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/android/quickstep/AbsSwipeUpHandler;->mRecentsView:Lcom/android/quickstep/views/RecentsView;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1}, Lcom/android/quickstep/views/RecentsView;->getEventDispatcher(F)Ljava/util/function/Consumer;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method public getThresholdToAllowMotionPause()F
    .locals 1

    iget-boolean v0, p0, Lcom/android/quickstep/AbsSwipeUpHandler;->mIsTransientTaskbar:Z

    if-eqz v0, :cond_0

    iget p0, p0, Lcom/android/quickstep/AbsSwipeUpHandler;->mTaskbarHomeOverviewThreshold:I

    int-to-float p0, p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method protected handleTaskAppeared([Landroid/view/RemoteAnimationTarget;)Z
    .locals 3

    iget-object v0, p0, Lcom/android/quickstep/AbsSwipeUpHandler;->mStateCallback:Lcom/android/quickstep/MultiStateCallback;

    sget v1, Lcom/android/quickstep/AbsSwipeUpHandler;->STATE_HANDLER_INVALIDATED:I

    invoke-virtual {v0, v1}, Lcom/android/quickstep/MultiStateCallback;->hasStates(I)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    invoke-static {p1}, Ljava/util/Arrays;->stream([Ljava/lang/Object;)Ljava/util/stream/Stream;

    move-result-object p1

    new-instance v0, Lcom/android/quickstep/f1;

    invoke-direct {v0, p0}, Lcom/android/quickstep/f1;-><init>(Lcom/android/quickstep/AbsSwipeUpHandler;)V

    invoke-interface {p1, v0}, Ljava/util/stream/Stream;->anyMatch(Ljava/util/function/Predicate;)Z

    move-result p1

    iget-object v0, p0, Lcom/android/quickstep/AbsSwipeUpHandler;->mStateCallback:Lcom/android/quickstep/MultiStateCallback;

    sget v2, Lcom/android/quickstep/AbsSwipeUpHandler;->STATE_START_NEW_TASK:I

    invoke-virtual {v0, v2}, Lcom/android/quickstep/MultiStateCallback;->hasStates(I)Z

    move-result v0

    if-eqz v0, :cond_1

    if-eqz p1, :cond_1

    invoke-direct {p0}, Lcom/android/quickstep/AbsSwipeUpHandler;->reset()V

    const/4 p0, 0x1

    return p0

    :cond_1
    return v1
.end method

.method protected hasStartedNewTask()Z
    .locals 1

    iget-object p0, p0, Lcom/android/quickstep/SwipeUpAnimationLogic;->mGestureState:Lcom/android/quickstep/GestureState;

    invoke-virtual {p0}, Lcom/android/quickstep/GestureState;->getLastStartedTaskId()I

    move-result p0

    const/4 v0, -0x1

    if-eq p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method protected hasTargets()Z
    .locals 0

    iget-object p0, p0, Lcom/android/quickstep/AbsSwipeUpHandler;->mRecentsAnimationTargets:Lcom/android/quickstep/RecentsAnimationTargets;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/android/quickstep/RecentsAnimationTargets;->hasTargets()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method protected initTransitionEndpoints(Lcom/android/launcher3/DeviceProfile;)V
    .locals 4

    invoke-super {p0, p1}, Lcom/android/quickstep/SwipeUpAnimationLogic;->initTransitionEndpoints(Lcom/android/launcher3/DeviceProfile;)V

    iget v0, p1, Lcom/android/launcher3/DeviceProfile;->heightPx:I

    invoke-virtual {p0}, Lcom/android/quickstep/SwipeUpAnimationLogic;->getOrientationHandler()Lcom/android/launcher3/touch/PagedOrientationHandler;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/launcher3/touch/PagedOrientationHandler;->isLayoutNaturalToLauncher()Z

    move-result v1

    if-nez v1, :cond_0

    iget v0, p1, Lcom/android/launcher3/DeviceProfile;->widthPx:I

    :cond_0
    invoke-virtual {p0}, Lcom/android/quickstep/SwipeUpAnimationLogic;->getOrientationHandler()Lcom/android/launcher3/touch/PagedOrientationHandler;

    move-result-object p1

    invoke-interface {p1}, Lcom/android/launcher3/touch/PagedOrientationHandler;->isLayoutNaturalToLauncher()Z

    move-result p1

    const v1, 0x3e99999a    # 0.3f

    if-eqz p1, :cond_1

    const p1, 0x3e6147ae    # 0.22f

    goto :goto_0

    :cond_1
    move p1, v1

    :goto_0
    invoke-virtual {p0}, Lcom/android/quickstep/SwipeUpAnimationLogic;->getOrientationHandler()Lcom/android/launcher3/touch/PagedOrientationHandler;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/launcher3/touch/PagedOrientationHandler;->isLayoutNaturalToLauncher()Z

    move-result v2

    if-eqz v2, :cond_2

    goto :goto_1

    :cond_2
    const v1, 0x3ec28f5c    # 0.38f

    :goto_1
    int-to-float v0, v0

    mul-float/2addr p1, v0

    iget v2, p0, Lcom/android/quickstep/SwipeUpAnimationLogic;->mTransitionDragLength:I

    int-to-float v3, v2

    div-float/2addr p1, v3

    iput p1, p0, Lcom/android/quickstep/AbsSwipeUpHandler;->mWindowModeTipShowShift:F

    mul-float/2addr v0, v1

    int-to-float p1, v2

    div-float/2addr v0, p1

    iput v0, p0, Lcom/android/quickstep/AbsSwipeUpHandler;->mWindowModeTipEnterShift:F

    return-void
.end method

.method public initWhenReady()V
    .locals 2

    sget-object v0, Lcom/android/quickstep/RecentsModel;->INSTANCE:Lcom/android/launcher3/util/MainThreadInitializedObject;

    iget-object v1, p0, Lcom/android/quickstep/SwipeUpAnimationLogic;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/android/launcher3/util/MainThreadInitializedObject;->get(Landroid/content/Context;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/quickstep/RecentsModel;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/quickstep/RecentsModel;->getTasks(Ljava/util/function/Consumer;)I

    iget-object p0, p0, Lcom/android/quickstep/AbsSwipeUpHandler;->mActivityInitListener:Lcom/android/quickstep/util/ActivityInitListener;

    invoke-virtual {p0}, Lcom/android/quickstep/util/ActivityInitListener;->register()V

    return-void
.end method

.method public isCanceled()Z
    .locals 0

    iget-boolean p0, p0, Lcom/android/quickstep/AbsSwipeUpHandler;->mCanceled:Z

    return p0
.end method

.method protected isWindowModeTipsSupport()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method protected linkRecentsViewScroll()V
    .locals 2

    new-instance v0, Lcom/android/quickstep/util/SurfaceTransactionApplier;

    iget-object v1, p0, Lcom/android/quickstep/AbsSwipeUpHandler;->mRecentsView:Lcom/android/quickstep/views/RecentsView;

    invoke-direct {v0, v1}, Lcom/android/quickstep/util/SurfaceTransactionApplier;-><init>(Landroid/view/View;)V

    new-instance v1, Lcom/android/quickstep/c1;

    invoke-direct {v1, v0}, Lcom/android/quickstep/c1;-><init>(Lcom/android/quickstep/util/SurfaceTransactionApplier;)V

    invoke-virtual {p0, v1}, Lcom/android/quickstep/SwipeUpAnimationLogic;->runActionOnRemoteHandles(Ljava/util/function/Consumer;)V

    new-instance v1, Lcom/android/quickstep/u0;

    invoke-direct {v1, p0, v0}, Lcom/android/quickstep/u0;-><init>(Lcom/android/quickstep/AbsSwipeUpHandler;Lcom/android/quickstep/util/SurfaceTransactionApplier;)V

    invoke-direct {p0, v1}, Lcom/android/quickstep/AbsSwipeUpHandler;->runOnRecentsAnimationAndLauncherBound(Ljava/lang/Runnable;)V

    iget-object v0, p0, Lcom/android/quickstep/AbsSwipeUpHandler;->mRecentsView:Lcom/android/quickstep/views/RecentsView;

    iget-object v1, p0, Lcom/android/quickstep/AbsSwipeUpHandler;->mOnRecentsScrollListener:Landroid/view/ViewTreeObserver$OnScrollChangedListener;

    invoke-virtual {v0, v1}, Lcom/android/quickstep/views/RecentsView;->addOnScrollChangedListener(Landroid/view/ViewTreeObserver$OnScrollChangedListener;)V

    new-instance v0, Lcom/android/quickstep/x;

    invoke-direct {v0, p0}, Lcom/android/quickstep/x;-><init>(Lcom/android/quickstep/AbsSwipeUpHandler;)V

    invoke-direct {p0, v0}, Lcom/android/quickstep/AbsSwipeUpHandler;->runOnRecentsAnimationAndLauncherBound(Ljava/lang/Runnable;)V

    iget-object v0, p0, Lcom/android/quickstep/SwipeUpAnimationLogic;->mGestureState:Lcom/android/quickstep/GestureState;

    invoke-virtual {v0}, Lcom/android/quickstep/GestureState;->isThreeFingerTrackpadGesture()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/quickstep/AbsSwipeUpHandler;->mRecentsViewScrollLinked:Z

    :cond_0
    return-void
.end method

.method protected maybeUpdateRecentsAttachedState(Z)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/quickstep/AbsSwipeUpHandler;->maybeUpdateRecentsAttachedState(ZZ)V

    return-void
.end method

.method protected moveWindowWithRecentsScroll()Z
    .locals 1

    iget-object p0, p0, Lcom/android/quickstep/SwipeUpAnimationLogic;->mGestureState:Lcom/android/quickstep/GestureState;

    invoke-virtual {p0}, Lcom/android/quickstep/GestureState;->getEndTarget()Lcom/android/quickstep/GestureState$GestureEndTarget;

    move-result-object p0

    sget-object v0, Lcom/android/quickstep/GestureState$GestureEndTarget;->HOME:Lcom/android/quickstep/GestureState$GestureEndTarget;

    if-eq p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method protected notifyGestureAnimationStartToRecents()V
    .locals 3

    iget-boolean v0, p0, Lcom/android/quickstep/SwipeUpAnimationLogic;->mIsSwipeForSplit:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/quickstep/TopTaskTracker;->INSTANCE:Lcom/android/launcher3/util/MainThreadInitializedObject;

    iget-object v1, p0, Lcom/android/quickstep/SwipeUpAnimationLogic;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/android/launcher3/util/MainThreadInitializedObject;->get(Landroid/content/Context;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/quickstep/TopTaskTracker;

    invoke-virtual {v0}, Lcom/android/quickstep/TopTaskTracker;->getRunningSplitTaskIds()[I

    move-result-object v0

    iget-object v1, p0, Lcom/android/quickstep/SwipeUpAnimationLogic;->mGestureState:Lcom/android/quickstep/GestureState;

    invoke-virtual {v1}, Lcom/android/quickstep/GestureState;->getRunningTask()Lcom/android/quickstep/TopTaskTracker$CachedTaskInfo;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/quickstep/TopTaskTracker$CachedTaskInfo;->getPlaceholderTasks([I)[Lcom/android/systemui/shared/recents/model/Task;

    move-result-object v0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/quickstep/SwipeUpAnimationLogic;->mGestureState:Lcom/android/quickstep/GestureState;

    invoke-virtual {v0}, Lcom/android/quickstep/GestureState;->getRunningTask()Lcom/android/quickstep/TopTaskTracker$CachedTaskInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/quickstep/TopTaskTracker$CachedTaskInfo;->getPlaceholderTasks()[Lcom/android/systemui/shared/recents/model/Task;

    move-result-object v0

    :goto_0
    invoke-static {v0}, Ljava/util/Arrays;->stream([Ljava/lang/Object;)Ljava/util/stream/Stream;

    move-result-object v1

    sget-object v2, Lcom/android/quickstep/j1;->a:Lcom/android/quickstep/j1;

    invoke-interface {v1, v2}, Ljava/util/stream/Stream;->anyMatch(Ljava/util/function/Predicate;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string p0, "b/236226779"

    const-string v0, "Skip notifyGestureAnimationStartToRecents action for null running tasks."

    invoke-static {p0, v0}, Ly2/e;->l(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Abs -> notifyGestureAnimationStartToRecents, runningTask = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v2, v0

    if-lez v2, :cond_2

    const/4 v2, 0x0

    aget-object v2, v0, v2

    goto :goto_1

    :cond_2
    const/4 v2, -0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    :goto_1
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Recent"

    invoke-static {v2, v1}, Ly2/e;->c(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/quickstep/AbsSwipeUpHandler;->mRecentsView:Lcom/android/quickstep/views/RecentsView;

    if-eqz v1, :cond_3

    iget-object p0, p0, Lcom/android/quickstep/SwipeUpAnimationLogic;->mDeviceState:Lcom/android/quickstep/RecentsAnimationDeviceState;

    invoke-virtual {p0}, Lcom/android/quickstep/RecentsAnimationDeviceState;->getRotationTouchHelper()Lcom/android/quickstep/RotationTouchHelper;

    move-result-object p0

    invoke-virtual {v1, v0, p0}, Lcom/android/quickstep/views/RecentsView;->onGestureAnimationStart([Lcom/android/systemui/shared/recents/model/Task;Lcom/android/quickstep/RotationTouchHelper;)V

    :cond_3
    return-void
.end method

.method protected onActivityInit(Ljava/lang/Boolean;)Z
    .locals 4

    iget-object v0, p0, Lcom/android/quickstep/AbsSwipeUpHandler;->mStateCallback:Lcom/android/quickstep/MultiStateCallback;

    sget v1, Lcom/android/quickstep/AbsSwipeUpHandler;->STATE_HANDLER_INVALIDATED:I

    invoke-virtual {v0, v1}, Lcom/android/quickstep/MultiStateCallback;->hasStates(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    iget-object v0, p0, Lcom/android/quickstep/AbsSwipeUpHandler;->mActivityInterface:Lcom/android/quickstep/BaseActivityInterface;

    invoke-virtual {v0}, Lcom/android/quickstep/BaseActivityInterface;->getCreatedActivity()Lcom/android/launcher3/statemanager/StatefulActivity;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/android/launcher3/BaseActivity;->getDeviceProfile()Lj3/a;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/quickstep/AbsSwipeUpHandler;->initTransitionEndpoints(Lcom/android/launcher3/DeviceProfile;)V

    :cond_1
    iget-object v0, p0, Lcom/android/quickstep/AbsSwipeUpHandler;->mActivityInterface:Lcom/android/quickstep/BaseActivityInterface;

    invoke-virtual {v0}, Lcom/android/quickstep/BaseActivityInterface;->getCreatedActivity()Lcom/android/launcher3/statemanager/StatefulActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/android/quickstep/AbsSwipeUpHandler;->mActivity:Lcom/android/launcher3/statemanager/StatefulActivity;

    const/4 v2, 0x1

    if-ne v1, v0, :cond_2

    return v2

    :cond_2
    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/android/quickstep/AbsSwipeUpHandler;->mStateCallback:Lcom/android/quickstep/MultiStateCallback;

    sget v3, Lcom/android/quickstep/AbsSwipeUpHandler;->STATE_GESTURE_COMPLETED:I

    invoke-virtual {v1, v3}, Lcom/android/quickstep/MultiStateCallback;->hasStates(I)Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object p0, p0, Lcom/android/quickstep/SwipeUpAnimationLogic;->mGestureState:Lcom/android/quickstep/GestureState;

    sget p1, Lcom/android/quickstep/GestureState;->STATE_RECENTS_SCROLLING_FINISHED:I

    invoke-virtual {p0, p1}, Lcom/android/quickstep/GestureState;->setState(I)V

    return v2

    :cond_3
    iget-object v1, p0, Lcom/android/quickstep/AbsSwipeUpHandler;->mStateCallback:Lcom/android/quickstep/MultiStateCallback;

    invoke-virtual {v1}, Lcom/android/quickstep/MultiStateCallback;->getState()I

    move-result v1

    sget v3, Lcom/android/quickstep/AbsSwipeUpHandler;->LAUNCHER_UI_STATES:I

    not-int v3, v3

    and-int/2addr v1, v3

    invoke-direct {p0}, Lcom/android/quickstep/AbsSwipeUpHandler;->initStateCallbacks()V

    iget-object v3, p0, Lcom/android/quickstep/AbsSwipeUpHandler;->mStateCallback:Lcom/android/quickstep/MultiStateCallback;

    invoke-virtual {v3, v1}, Lcom/android/quickstep/MultiStateCallback;->setState(I)V

    :cond_4
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/quickstep/AbsSwipeUpHandler;->mWasLauncherAlreadyVisible:Z

    iput-object v0, p0, Lcom/android/quickstep/AbsSwipeUpHandler;->mActivity:Lcom/android/launcher3/statemanager/StatefulActivity;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    const/16 v3, 0x9

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/android/quickstep/AbsSwipeUpHandler;->mActivity:Lcom/android/launcher3/statemanager/StatefulActivity;

    invoke-virtual {v1, v3}, Lcom/android/launcher3/BaseActivity;->clearForceInvisibleFlag(I)V

    goto :goto_0

    :cond_5
    iget-object v1, p0, Lcom/android/quickstep/AbsSwipeUpHandler;->mActivity:Lcom/android/launcher3/statemanager/StatefulActivity;

    invoke-virtual {v1, v3}, Lcom/android/launcher3/BaseActivity;->addForceInvisibleFlag(I)V

    :goto_0
    invoke-virtual {v0}, Lcom/android/launcher3/BaseDraggingActivity;->getOverviewPanel()Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/quickstep/views/RecentsView;

    iput-object v1, p0, Lcom/android/quickstep/AbsSwipeUpHandler;->mRecentsView:Lcom/android/quickstep/views/RecentsView;

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Lcom/android/launcher3/PagedView;->setOnPageTransitionEndCallback(Ljava/lang/Runnable;)V

    iget-object v1, p0, Lcom/android/quickstep/AbsSwipeUpHandler;->mStateCallback:Lcom/android/quickstep/MultiStateCallback;

    sget v3, Lcom/android/quickstep/AbsSwipeUpHandler;->STATE_LAUNCHER_PRESENT:I

    invoke-virtual {v1, v3}, Lcom/android/quickstep/MultiStateCallback;->setState(I)V

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_6

    invoke-direct {p0}, Lcom/android/quickstep/AbsSwipeUpHandler;->onLauncherStart()V

    goto :goto_1

    :cond_6
    new-instance p1, Lcom/android/quickstep/v;

    invoke-direct {p1, p0}, Lcom/android/quickstep/v;-><init>(Lcom/android/quickstep/AbsSwipeUpHandler;)V

    invoke-virtual {v0, p1}, Lcom/android/launcher3/BaseDraggingActivity;->runOnceOnStart(Ljava/lang/Runnable;)V

    :goto_1
    iget-object p1, p0, Lcom/android/quickstep/SwipeUpAnimationLogic;->mGestureState:Lcom/android/quickstep/GestureState;

    sget v1, Lcom/android/quickstep/GestureState;->STATE_RECENTS_ANIMATION_CANCELED:I

    new-instance v3, Lcom/android/quickstep/o0;

    invoke-direct {v3, p0}, Lcom/android/quickstep/o0;-><init>(Lcom/android/quickstep/AbsSwipeUpHandler;)V

    invoke-virtual {p1, v1, v3}, Lcom/android/quickstep/GestureState;->runOnceAtState(ILjava/lang/Runnable;)V

    invoke-direct {p0}, Lcom/android/quickstep/AbsSwipeUpHandler;->setupRecentsViewUi()V

    iget-object p1, p0, Lcom/android/quickstep/AbsSwipeUpHandler;->mRecentsView:Lcom/android/quickstep/views/RecentsView;

    new-instance v1, Lcom/android/quickstep/n1;

    invoke-direct {v1, p0}, Lcom/android/quickstep/n1;-><init>(Lcom/android/quickstep/AbsSwipeUpHandler;)V

    invoke-virtual {p1, v1}, Lcom/android/launcher3/PagedView;->runOnPageScrollsInitialized(Ljava/lang/Runnable;)V

    new-instance p1, Lcom/android/quickstep/c0;

    invoke-direct {p1, p0}, Lcom/android/quickstep/c0;-><init>(Lcom/android/quickstep/AbsSwipeUpHandler;)V

    invoke-virtual {v0, p1}, Lcom/android/launcher3/statemanager/StatefulActivity;->runOnBindToTouchInteractionService(Ljava/lang/Runnable;)V

    iget-object p1, p0, Lcom/android/quickstep/AbsSwipeUpHandler;->mActivity:Lcom/android/launcher3/statemanager/StatefulActivity;

    iget-object p0, p0, Lcom/android/quickstep/AbsSwipeUpHandler;->mLifecycleCallbacks:Lcom/android/launcher3/util/ActivityLifecycleCallbacksAdapter;

    invoke-virtual {p1, p0}, Landroid/app/Activity;->registerActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    return v2
.end method

.method public onApplyWindowInsets(Landroid/view/View;Landroid/view/WindowInsets;)Landroid/view/WindowInsets;
    .locals 1

    invoke-virtual {p1, p2}, Landroid/view/View;->onApplyWindowInsets(Landroid/view/WindowInsets;)Landroid/view/WindowInsets;

    move-result-object p1

    invoke-static {}, Landroid/view/WindowInsets$Type;->ime()I

    move-result v0

    invoke-virtual {p2, v0}, Landroid/view/WindowInsets;->isVisible(I)Z

    move-result p2

    if-eqz p2, :cond_0

    return-object p1

    :cond_0
    invoke-direct {p0}, Lcom/android/quickstep/AbsSwipeUpHandler;->buildAnimationController()V

    invoke-virtual {p0}, Lcom/android/quickstep/AbsSwipeUpHandler;->onCurrentShiftUpdated()V

    return-object p1
.end method

.method public onConsumerAboutToBeSwitched()V
    .locals 2

    const-string v0, "Recent"

    const-string v1, "Abs -> onConsumerAboutToBeSwitched."

    invoke-static {v0, v1}, Ly2/e;->c(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/quickstep/AbsSwipeUpHandler;->mActivity:Lcom/android/launcher3/statemanager/StatefulActivity;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/launcher3/BaseDraggingActivity;->clearRunOnceOnStartCallback()V

    invoke-direct {p0}, Lcom/android/quickstep/AbsSwipeUpHandler;->resetLauncherListeners()V

    :cond_0
    iget-object v0, p0, Lcom/android/quickstep/SwipeUpAnimationLogic;->mGestureState:Lcom/android/quickstep/GestureState;

    invoke-virtual {v0}, Lcom/android/quickstep/GestureState;->isRecentsAnimationRunning()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/quickstep/SwipeUpAnimationLogic;->mGestureState:Lcom/android/quickstep/GestureState;

    invoke-virtual {v0}, Lcom/android/quickstep/GestureState;->getEndTarget()Lcom/android/quickstep/GestureState$GestureEndTarget;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/quickstep/SwipeUpAnimationLogic;->mGestureState:Lcom/android/quickstep/GestureState;

    invoke-virtual {v0}, Lcom/android/quickstep/GestureState;->getEndTarget()Lcom/android/quickstep/GestureState$GestureEndTarget;

    move-result-object v0

    iget-boolean v0, v0, Lcom/android/quickstep/GestureState$GestureEndTarget;->isLauncher:Z

    if-nez v0, :cond_1

    invoke-direct {p0}, Lcom/android/quickstep/AbsSwipeUpHandler;->cancelCurrentAnimation()V

    invoke-virtual {p0}, Lcom/android/quickstep/AbsSwipeUpHandler;->resetWindowModeTipsState()V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/android/quickstep/AbsSwipeUpHandler;->mStateCallback:Lcom/android/quickstep/MultiStateCallback;

    sget v1, Lcom/android/quickstep/AbsSwipeUpHandler;->STATE_FINISH_WITH_NO_END:I

    invoke-virtual {v0, v1}, Lcom/android/quickstep/MultiStateCallback;->setStateOnUiThread(I)V

    invoke-direct {p0}, Lcom/android/quickstep/AbsSwipeUpHandler;->reset()V

    :goto_0
    return-void
.end method

.method public onCurrentShiftUpdated()V
    .locals 2
    .annotation build Landroidx/annotation/UiThread;
    .end annotation

    iget-object v0, p0, Lcom/android/quickstep/SwipeUpAnimationLogic;->mCurrentShift:Lcom/android/launcher3/anim/AnimatedFloat;

    iget v0, v0, Lcom/android/launcher3/anim/AnimatedFloat;->value:F

    const/high16 v1, 0x40000000    # 2.0f

    cmpl-float v0, v0, v1

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-direct {p0, v0}, Lcom/android/quickstep/AbsSwipeUpHandler;->setIsInAllAppsRegion(Z)V

    iget-object v0, p0, Lcom/android/quickstep/SwipeUpAnimationLogic;->mCurrentShift:Lcom/android/launcher3/anim/AnimatedFloat;

    iget v0, v0, Lcom/android/launcher3/anim/AnimatedFloat;->value:F

    invoke-direct {p0, v0}, Lcom/android/quickstep/AbsSwipeUpHandler;->updateSysUiFlags(F)V

    invoke-virtual {p0}, Lcom/android/quickstep/AbsSwipeUpHandler;->applyScrollAndTransform()V

    invoke-direct {p0}, Lcom/android/quickstep/AbsSwipeUpHandler;->updateLauncherTransitionProgress()V

    return-void
.end method

.method public onGestureCancelled()V
    .locals 4
    .annotation build Landroidx/annotation/UiThread;
    .end annotation

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/quickstep/AbsSwipeUpHandler;->updateDisplacement(F)V

    iget-object v1, p0, Lcom/android/quickstep/AbsSwipeUpHandler;->mStateCallback:Lcom/android/quickstep/MultiStateCallback;

    sget v2, Lcom/android/quickstep/AbsSwipeUpHandler;->STATE_GESTURE_COMPLETED:I

    invoke-virtual {v1, v2}, Lcom/android/quickstep/MultiStateCallback;->setStateOnUiThread(I)V

    new-instance v1, Landroid/graphics/PointF;

    invoke-direct {v1}, Landroid/graphics/PointF;-><init>()V

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-direct {p0, v0, v2, v1, v3}, Lcom/android/quickstep/AbsSwipeUpHandler;->handleNormalGestureEnd(FZLandroid/graphics/PointF;Z)V

    return-void
.end method

.method public onGestureEnded(FLandroid/graphics/PointF;)V
    .locals 5
    .annotation build Landroidx/annotation/UiThread;
    .end annotation

    iget-object v0, p0, Lcom/android/quickstep/SwipeUpAnimationLogic;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0704c2

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    iget-boolean v1, p0, Lcom/android/quickstep/AbsSwipeUpHandler;->mGestureStarted:Z

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/android/quickstep/AbsSwipeUpHandler;->mIsMotionPaused:Z

    if-nez v1, :cond_0

    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    cmpl-float v0, v1, v0

    if-lez v0, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v3

    :goto_0
    iget-object v1, p0, Lcom/android/quickstep/AbsSwipeUpHandler;->mStateCallback:Lcom/android/quickstep/MultiStateCallback;

    sget v4, Lcom/android/quickstep/AbsSwipeUpHandler;->STATE_GESTURE_COMPLETED:I

    invoke-virtual {v1, v4}, Lcom/android/quickstep/MultiStateCallback;->setStateOnUiThread(I)V

    iget v1, p2, Landroid/graphics/PointF;->y:F

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    iget v4, p2, Landroid/graphics/PointF;->x:F

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v4

    cmpl-float v1, v1, v4

    if-lez v1, :cond_1

    move v1, v2

    goto :goto_1

    :cond_1
    move v1, v3

    :goto_1
    const/4 v4, 0x0

    if-eqz v1, :cond_2

    iget v1, p2, Landroid/graphics/PointF;->y:F

    cmpg-float v1, v1, v4

    if-gez v1, :cond_3

    goto :goto_2

    :cond_2
    iget v1, p2, Landroid/graphics/PointF;->x:F

    cmpg-float v1, v1, v4

    if-gez v1, :cond_3

    goto :goto_2

    :cond_3
    move v2, v3

    :goto_2
    iput-boolean v2, p0, Lcom/android/quickstep/AbsSwipeUpHandler;->mLogDirectionUpOrLeft:Z

    new-instance v1, Lcom/android/quickstep/r0;

    invoke-direct {v1, p0, p1, v0, p2}, Lcom/android/quickstep/r0;-><init>(Lcom/android/quickstep/AbsSwipeUpHandler;FZLandroid/graphics/PointF;)V

    iget-object p0, p0, Lcom/android/quickstep/AbsSwipeUpHandler;->mRecentsView:Lcom/android/quickstep/views/RecentsView;

    if-eqz p0, :cond_4

    invoke-virtual {p0, v1}, Lcom/android/launcher3/PagedView;->runOnPageScrollsInitialized(Ljava/lang/Runnable;)V

    goto :goto_3

    :cond_4
    invoke-interface {v1}, Ljava/lang/Runnable;->run()V

    :goto_3
    return-void
.end method

.method public onGestureStarted(Z)V
    .locals 3
    .annotation build Landroidx/annotation/UiThread;
    .end annotation

    iget-object v0, p0, Lcom/android/quickstep/AbsSwipeUpHandler;->mActivityInterface:Lcom/android/quickstep/BaseActivityInterface;

    invoke-virtual {v0}, Lcom/android/quickstep/BaseActivityInterface;->closeOverlay()V

    const-string v0, "recentapps"

    invoke-static {v0}, Lcom/android/quickstep/TaskUtils;->closeSystemWindowsAsync(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/quickstep/AbsSwipeUpHandler;->mRecentsView:Lcom/android/quickstep/views/RecentsView;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v1

    new-instance v2, Lcom/android/quickstep/AbsSwipeUpHandler$6;

    invoke-direct {v2, p0, v0}, Lcom/android/quickstep/AbsSwipeUpHandler$6;-><init>(Lcom/android/quickstep/AbsSwipeUpHandler;Landroid/view/View;)V

    invoke-virtual {v1, v2}, Landroid/view/ViewTreeObserver;->addOnDrawListener(Landroid/view/ViewTreeObserver$OnDrawListener;)V

    :cond_0
    invoke-direct {p0}, Lcom/android/quickstep/AbsSwipeUpHandler;->notifyGestureStarted()V

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/quickstep/AbsSwipeUpHandler;->setIsLikelyToStartNewTask(ZZ)V

    iget-boolean v0, p0, Lcom/android/quickstep/AbsSwipeUpHandler;->mIsTransientTaskbar:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/android/quickstep/AbsSwipeUpHandler;->mTaskbarAlreadyOpen:Z

    if-nez v0, :cond_1

    if-nez p1, :cond_1

    invoke-direct {p0, v1}, Lcom/android/quickstep/AbsSwipeUpHandler;->setClampScrollOffset(Z)V

    :cond_1
    iget-object p1, p0, Lcom/android/quickstep/AbsSwipeUpHandler;->mStateCallback:Lcom/android/quickstep/MultiStateCallback;

    sget v0, Lcom/android/quickstep/AbsSwipeUpHandler;->STATE_GESTURE_STARTED:I

    invoke-virtual {p1, v0}, Lcom/android/quickstep/MultiStateCallback;->setStateOnUiThread(I)V

    iput-boolean v1, p0, Lcom/android/quickstep/AbsSwipeUpHandler;->mGestureStarted:Z

    return-void
.end method

.method public onRecentsAnimationCanceled(Ljava/util/HashMap;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Lcom/android/systemui/shared/recents/model/ThumbnailData;",
            ">;)V"
        }
    .end annotation

    const-string p1, "Recent"

    const-string v0, "Abs -> onRecentsAnimationCanceled."

    invoke-static {p1, v0}, Ly2/e;->c(Ljava/lang/String;Ljava/lang/String;)V

    sget-object p1, Lcom/android/quickstep/util/ActiveGestureLog;->INSTANCE:Lcom/android/quickstep/util/ActiveGestureLog;

    sget-object v0, Lcom/android/quickstep/util/ActiveGestureErrorDetector$GestureEvent;->CANCEL_RECENTS_ANIMATION:Lcom/android/quickstep/util/ActiveGestureErrorDetector$GestureEvent;

    const-string v1, "cancelRecentsAnimation"

    invoke-virtual {p1, v1, v0}, Lcom/android/quickstep/util/ActiveGestureLog;->addLog(Ljava/lang/String;Lcom/android/quickstep/util/ActiveGestureErrorDetector$GestureEvent;)V

    iget-object p1, p0, Lcom/android/quickstep/AbsSwipeUpHandler;->mActivityInitListener:Lcom/android/quickstep/util/ActivityInitListener;

    invoke-virtual {p1}, Lcom/android/quickstep/util/ActivityInitListener;->unregister()V

    iget-object p1, p0, Lcom/android/quickstep/AbsSwipeUpHandler;->mRecentsAnimationController:Lcom/android/quickstep/RecentsAnimationController;

    iput-object p1, p0, Lcom/android/quickstep/AbsSwipeUpHandler;->mDeferredCleanupRecentsAnimationController:Lcom/android/quickstep/RecentsAnimationController;

    iget-object p1, p0, Lcom/android/quickstep/AbsSwipeUpHandler;->mStateCallback:Lcom/android/quickstep/MultiStateCallback;

    sget v0, Lcom/android/quickstep/AbsSwipeUpHandler;->STATE_GESTURE_CANCELLED:I

    sget v1, Lcom/android/quickstep/AbsSwipeUpHandler;->STATE_HANDLER_INVALIDATED:I

    or-int/2addr v0, v1

    invoke-virtual {p1, v0}, Lcom/android/quickstep/MultiStateCallback;->setStateOnUiThread(I)V

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/android/quickstep/AbsSwipeUpHandler;->mRecentsAnimationController:Lcom/android/quickstep/RecentsAnimationController;

    iput-object p1, p0, Lcom/android/quickstep/AbsSwipeUpHandler;->mRecentsAnimationTargets:Lcom/android/quickstep/RecentsAnimationTargets;

    iget-object v0, p0, Lcom/android/quickstep/AbsSwipeUpHandler;->mRecentsView:Lcom/android/quickstep/views/RecentsView;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1, p1}, Lcom/android/quickstep/views/RecentsView;->setRecentsAnimationTargets(Lcom/android/quickstep/RecentsAnimationController;Lcom/android/quickstep/RecentsAnimationTargets;)V

    :cond_0
    iget-object v0, p0, Lcom/android/quickstep/AbsSwipeUpHandler;->mOpenSmoothToRecents:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    iput-object p1, p0, Lcom/android/quickstep/AbsSwipeUpHandler;->mOpenSmoothToRecents:Landroid/animation/ValueAnimator;

    :cond_1
    return-void
.end method

.method public onRecentsAnimationFinished(Lcom/android/quickstep/RecentsAnimationController;)V
    .locals 1

    const-string p1, "Recent"

    const-string v0, "Abs -> onRecentsAnimationFinished."

    invoke-static {p1, v0}, Ly2/e;->c(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/android/quickstep/AbsSwipeUpHandler;->mRecentsAnimationController:Lcom/android/quickstep/RecentsAnimationController;

    iput-object p1, p0, Lcom/android/quickstep/AbsSwipeUpHandler;->mRecentsAnimationTargets:Lcom/android/quickstep/RecentsAnimationTargets;

    iget-object v0, p0, Lcom/android/quickstep/AbsSwipeUpHandler;->mRecentsView:Lcom/android/quickstep/views/RecentsView;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1, p1}, Lcom/android/quickstep/views/RecentsView;->setRecentsAnimationTargets(Lcom/android/quickstep/RecentsAnimationController;Lcom/android/quickstep/RecentsAnimationTargets;)V

    :cond_0
    iget-object v0, p0, Lcom/android/quickstep/AbsSwipeUpHandler;->mOpenSmoothToRecents:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    iput-object p1, p0, Lcom/android/quickstep/AbsSwipeUpHandler;->mOpenSmoothToRecents:Landroid/animation/ValueAnimator;

    :cond_1
    return-void
.end method

.method public onRecentsAnimationStart(Lcom/android/quickstep/RecentsAnimationController;Lcom/android/quickstep/RecentsAnimationTargets;)V
    .locals 7

    const-string v0, "Recent"

    const-string v1, "Abs -> onRecentsAnimationStart."

    invoke-static {v0, v1}, Ly2/e;->c(Ljava/lang/String;Ljava/lang/String;)V

    invoke-super {p0, p1, p2}, Lcom/android/quickstep/RecentsAnimationCallbacks$RecentsAnimationListener;->onRecentsAnimationStart(Lcom/android/quickstep/RecentsAnimationController;Lcom/android/quickstep/RecentsAnimationTargets;)V

    sget-boolean v0, Lcom/android/quickstep/views/DesktopTaskView;->DESKTOP_MODE_SUPPORTED:Z

    if-eqz v0, :cond_0

    invoke-virtual {p2}, Lcom/android/quickstep/RecentsAnimationTargets;->hasDesktopTasks()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/quickstep/SwipeUpAnimationLogic;->mTargetGluer:Lcom/android/quickstep/RemoteTargetGluer;

    invoke-virtual {v0, p2}, Lcom/android/quickstep/RemoteTargetGluer;->assignTargetsForDesktop(Lcom/android/quickstep/RemoteAnimationTargets;)[Lcom/android/quickstep/RemoteTargetGluer$RemoteTargetHandle;

    move-result-object v0

    iput-object v0, p0, Lcom/android/quickstep/SwipeUpAnimationLogic;->mRemoteTargetHandles:[Lcom/android/quickstep/RemoteTargetGluer$RemoteTargetHandle;

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/quickstep/SwipeUpAnimationLogic;->mRemoteTargetHandles:[Lcom/android/quickstep/RemoteTargetGluer$RemoteTargetHandle;

    array-length v0, v0

    iget-object v1, p0, Lcom/android/quickstep/SwipeUpAnimationLogic;->mTargetGluer:Lcom/android/quickstep/RemoteTargetGluer;

    invoke-virtual {v1, p2}, Lcom/android/quickstep/RemoteTargetGluer;->assignTargetsForSplitScreen(Lcom/android/quickstep/RemoteAnimationTargets;)[Lcom/android/quickstep/RemoteTargetGluer$RemoteTargetHandle;

    move-result-object v1

    iput-object v1, p0, Lcom/android/quickstep/SwipeUpAnimationLogic;->mRemoteTargetHandles:[Lcom/android/quickstep/RemoteTargetGluer$RemoteTargetHandle;

    array-length v2, v1

    if-ge v2, v0, :cond_1

    iget-boolean v0, p0, Lcom/android/quickstep/SwipeUpAnimationLogic;->mIsSwipeForSplit:Z

    if-eqz v0, :cond_1

    array-length v0, v1

    invoke-virtual {p0, v0}, Lcom/android/quickstep/SwipeUpAnimationLogic;->updateIsGestureForSplit(I)V

    invoke-direct {p0}, Lcom/android/quickstep/AbsSwipeUpHandler;->setupRecentsViewUi()V

    :cond_1
    :goto_0
    iput-object p1, p0, Lcom/android/quickstep/AbsSwipeUpHandler;->mRecentsAnimationController:Lcom/android/quickstep/RecentsAnimationController;

    iput-object p2, p0, Lcom/android/quickstep/AbsSwipeUpHandler;->mRecentsAnimationTargets:Lcom/android/quickstep/RecentsAnimationTargets;

    new-instance p1, Lcom/android/quickstep/RemoteAnimationTargets$ReleaseCheck;

    invoke-direct {p1}, Lcom/android/quickstep/RemoteAnimationTargets$ReleaseCheck;-><init>()V

    iput-object p1, p0, Lcom/android/quickstep/AbsSwipeUpHandler;->mSwipePipToHomeReleaseCheck:Lcom/android/quickstep/RemoteAnimationTargets$ReleaseCheck;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/android/quickstep/RemoteAnimationTargets$ReleaseCheck;->setCanRelease(Z)V

    iget-object p1, p0, Lcom/android/quickstep/AbsSwipeUpHandler;->mRecentsAnimationTargets:Lcom/android/quickstep/RecentsAnimationTargets;

    iget-object v1, p0, Lcom/android/quickstep/AbsSwipeUpHandler;->mSwipePipToHomeReleaseCheck:Lcom/android/quickstep/RemoteAnimationTargets$ReleaseCheck;

    invoke-virtual {p1, v1}, Lcom/android/quickstep/RemoteAnimationTargets;->addReleaseCheck(Lcom/android/quickstep/RemoteAnimationTargets$ReleaseCheck;)V

    iget-object p1, p0, Lcom/android/quickstep/AbsSwipeUpHandler;->mActivity:Lcom/android/launcher3/statemanager/StatefulActivity;

    const/4 v1, 0x0

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/android/quickstep/SwipeUpAnimationLogic;->mRemoteTargetHandles:[Lcom/android/quickstep/RemoteTargetGluer$RemoteTargetHandle;

    aget-object p1, p1, v1

    invoke-virtual {p1}, Lcom/android/quickstep/RemoteTargetGluer$RemoteTargetHandle;->getTaskViewSimulator()Lcom/android/quickstep/util/TaskViewSimulator;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/quickstep/util/TaskViewSimulator;->getOrientationState()Lcom/android/quickstep/util/RecentsOrientedState;

    move-result-object p1

    sget-object v2, Lcom/android/launcher3/util/DisplayController;->INSTANCE:Lcom/android/launcher3/util/MainThreadInitializedObject;

    iget-object v3, p0, Lcom/android/quickstep/AbsSwipeUpHandler;->mActivity:Lcom/android/launcher3/statemanager/StatefulActivity;

    invoke-virtual {v2, v3}, Lcom/android/launcher3/util/MainThreadInitializedObject;->get(Landroid/content/Context;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/launcher3/util/DisplayController;

    invoke-virtual {v2}, Lcom/android/launcher3/util/DisplayController;->getInfo()Lcom/android/launcher3/util/DisplayController$Info;

    move-result-object v2

    iget v2, v2, Lcom/android/launcher3/util/DisplayController$Info;->rotation:I

    invoke-virtual {p1, v2}, Lcom/android/quickstep/util/RecentsOrientedState;->setDisplayRotation(I)V

    :cond_2
    iget-object p1, p0, Lcom/android/quickstep/AbsSwipeUpHandler;->mActivity:Lcom/android/launcher3/statemanager/StatefulActivity;

    if-nez p1, :cond_4

    iget-object p1, p2, Lcom/android/quickstep/RemoteAnimationTargets;->apps:[Landroid/view/RemoteAnimationTarget;

    aget-object p1, p1, v1

    iget-object v2, p0, Lcom/android/quickstep/SwipeUpAnimationLogic;->mRemoteTargetHandles:[Lcom/android/quickstep/RemoteTargetGluer$RemoteTargetHandle;

    aget-object v2, v2, v1

    invoke-virtual {v2}, Lcom/android/quickstep/RemoteTargetGluer$RemoteTargetHandle;->getTaskViewSimulator()Lcom/android/quickstep/util/TaskViewSimulator;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/quickstep/util/TaskViewSimulator;->getOrientationState()Lcom/android/quickstep/util/RecentsOrientedState;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/quickstep/util/RecentsOrientedState;->getLauncherDeviceProfile()Lcom/android/launcher3/DeviceProfile;

    move-result-object v3

    iget-object v4, p2, Lcom/android/quickstep/RecentsAnimationTargets;->minimizedHomeBounds:Landroid/graphics/Rect;

    if-eqz v4, :cond_3

    if-eqz p1, :cond_3

    iget-object v5, p0, Lcom/android/quickstep/AbsSwipeUpHandler;->mActivityInterface:Lcom/android/quickstep/BaseActivityInterface;

    invoke-virtual {v5, v4, p1}, Lcom/android/quickstep/BaseActivityInterface;->getOverviewWindowBounds(Landroid/graphics/Rect;Landroid/view/RemoteAnimationTarget;)Landroid/graphics/Rect;

    move-result-object p1

    iget-object v4, p0, Lcom/android/quickstep/SwipeUpAnimationLogic;->mContext:Landroid/content/Context;

    new-instance v5, Lcom/android/launcher3/util/WindowBounds;

    iget-object v6, p2, Lcom/android/quickstep/RecentsAnimationTargets;->homeContentInsets:Landroid/graphics/Rect;

    invoke-direct {v5, p1, v6}, Lcom/android/launcher3/util/WindowBounds;-><init>(Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    invoke-virtual {v3, v4, v5}, Lcom/android/launcher3/DeviceProfile;->getMultiWindowProfile(Landroid/content/Context;Lcom/android/launcher3/util/WindowBounds;)Lcom/android/launcher3/DeviceProfile;

    move-result-object p1

    goto :goto_1

    :cond_3
    iget-object p1, p0, Lcom/android/quickstep/SwipeUpAnimationLogic;->mContext:Landroid/content/Context;

    invoke-virtual {v3, p1}, Lcom/android/launcher3/DeviceProfile;->copy(Landroid/content/Context;)Lcom/android/launcher3/DeviceProfile;

    move-result-object p1

    :goto_1
    iget-object p2, p2, Lcom/android/quickstep/RecentsAnimationTargets;->homeContentInsets:Landroid/graphics/Rect;

    invoke-virtual {p1, p2}, Lcom/android/launcher3/DeviceProfile;->updateInsets(Landroid/graphics/Rect;)V

    iget-object p2, p0, Lcom/android/quickstep/SwipeUpAnimationLogic;->mContext:Landroid/content/Context;

    invoke-virtual {p1, p2}, Lcom/android/launcher3/DeviceProfile;->updateIsSeascape(Landroid/content/Context;)Z

    invoke-virtual {p0, p1}, Lcom/android/quickstep/AbsSwipeUpHandler;->initTransitionEndpoints(Lcom/android/launcher3/DeviceProfile;)V

    iget-boolean p1, p1, Lcom/android/launcher3/DeviceProfile;->isMultiWindowMode:Z

    invoke-virtual {v2, p1}, Lcom/android/quickstep/util/RecentsOrientedState;->setMultiWindowMode(Z)V

    :cond_4
    invoke-direct {p0}, Lcom/android/quickstep/AbsSwipeUpHandler;->flushOnRecentsAnimationAndLauncherBound()V

    iget-object p1, p0, Lcom/android/quickstep/AbsSwipeUpHandler;->mStateCallback:Lcom/android/quickstep/MultiStateCallback;

    sget p2, Lcom/android/quickstep/AbsSwipeUpHandler;->STATE_APP_CONTROLLER_RECEIVED:I

    sget v2, Lcom/android/quickstep/AbsSwipeUpHandler;->STATE_GESTURE_STARTED:I

    or-int/2addr v2, p2

    new-instance v3, Lcom/android/quickstep/u;

    invoke-direct {v3, p0}, Lcom/android/quickstep/u;-><init>(Lcom/android/quickstep/AbsSwipeUpHandler;)V

    invoke-virtual {p1, v2, v3}, Lcom/android/quickstep/MultiStateCallback;->runOnceAtState(ILjava/lang/Runnable;)V

    iget-object p1, p0, Lcom/android/quickstep/AbsSwipeUpHandler;->mStateCallback:Lcom/android/quickstep/MultiStateCallback;

    invoke-virtual {p1, p2}, Lcom/android/quickstep/MultiStateCallback;->setStateOnUiThread(I)V

    iget-object p1, p0, Lcom/android/quickstep/SwipeUpAnimationLogic;->mRemoteTargetHandles:[Lcom/android/quickstep/RemoteTargetGluer$RemoteTargetHandle;

    array-length p2, p1

    move v2, v1

    :goto_2
    if-ge v2, p2, :cond_6

    aget-object v3, p1, v2

    invoke-virtual {v3}, Lcom/android/quickstep/RemoteTargetGluer$RemoteTargetHandle;->getTaskViewSimulator()Lcom/android/quickstep/util/TaskViewSimulator;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/quickstep/util/TaskViewSimulator;->getTransitionData()Lcom/android/quickstep/utils/TransitionSmoothHelper$TransitionData;

    move-result-object v3

    if-eqz v3, :cond_5

    goto :goto_3

    :cond_5
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_6
    move v0, v1

    :goto_3
    if-eqz v0, :cond_7

    const/4 p1, 0x2

    new-array p1, p1, [F

    fill-array-data p1, :array_0

    invoke-static {p1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object p1

    iput-object p1, p0, Lcom/android/quickstep/AbsSwipeUpHandler;->mOpenSmoothToRecents:Landroid/animation/ValueAnimator;

    sget-object p2, Lcom/android/launcher3/anim/Interpolators;->LINEAR:Landroid/view/animation/Interpolator;

    invoke-virtual {p1, p2}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iget-object p1, p0, Lcom/android/quickstep/AbsSwipeUpHandler;->mOpenSmoothToRecents:Landroid/animation/ValueAnimator;

    invoke-static {}, Lcom/android/quickstep/utils/TransitionSmoothHelper;->getDuration()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    iget-object p1, p0, Lcom/android/quickstep/AbsSwipeUpHandler;->mOpenSmoothToRecents:Landroid/animation/ValueAnimator;

    new-instance p2, Lcom/android/quickstep/AbsSwipeUpHandler$4;

    invoke-direct {p2, p0}, Lcom/android/quickstep/AbsSwipeUpHandler$4;-><init>(Lcom/android/quickstep/AbsSwipeUpHandler;)V

    invoke-virtual {p1, p2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    iget-object p1, p0, Lcom/android/quickstep/AbsSwipeUpHandler;->mOpenSmoothToRecents:Landroid/animation/ValueAnimator;

    new-instance p2, Lcom/android/quickstep/AbsSwipeUpHandler$5;

    invoke-direct {p2, p0}, Lcom/android/quickstep/AbsSwipeUpHandler$5;-><init>(Lcom/android/quickstep/AbsSwipeUpHandler;)V

    invoke-virtual {p1, p2}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    iget-object p0, p0, Lcom/android/quickstep/AbsSwipeUpHandler;->mOpenSmoothToRecents:Landroid/animation/ValueAnimator;

    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->start()V

    const-string p0, "AbsSwipeUpHandler"

    const-string p1, "smoothToRecents start"

    invoke-static {p0, p1}, Ly2/e;->l(Ljava/lang/String;Ljava/lang/String;)V

    :cond_7
    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method protected onRestartPreviouslyAppearedTask()V
    .locals 3
    .annotation build Landroidx/annotation/CallSuper;
    .end annotation

    const-string v0, "Recent"

    const-string v1, "Abs -> onRestartPreviouslyAppearedTask."

    invoke-static {v0, v1}, Ly2/e;->c(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/quickstep/AbsSwipeUpHandler;->mRecentsAnimationController:Lcom/android/quickstep/RecentsAnimationController;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/android/quickstep/RecentsAnimationController;->finish(ZLjava/lang/Runnable;)V

    :cond_0
    invoke-direct {p0}, Lcom/android/quickstep/AbsSwipeUpHandler;->reset()V

    return-void
.end method

.method public onTasksAppeared([Landroid/view/RemoteAnimationTarget;)V
    .locals 18

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const-string v2, "Recent"

    const-string v3, "Abs -> onTasksAppeared."

    invoke-static {v2, v3}, Ly2/e;->c(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, v0, Lcom/android/quickstep/AbsSwipeUpHandler;->mRecentsAnimationController:Lcom/android/quickstep/RecentsAnimationController;

    if-eqz v2, :cond_8

    invoke-static/range {p1 .. p1}, Ljava/util/Arrays;->stream([Ljava/lang/Object;)Ljava/util/stream/Stream;

    move-result-object v2

    new-instance v3, Lcom/android/quickstep/h1;

    invoke-direct {v3, v0}, Lcom/android/quickstep/h1;-><init>(Lcom/android/quickstep/AbsSwipeUpHandler;)V

    invoke-interface {v2, v3}, Ljava/util/stream/Stream;->anyMatch(Ljava/util/function/Predicate;)Z

    move-result v2

    iget-object v3, v0, Lcom/android/quickstep/AbsSwipeUpHandler;->mStateCallback:Lcom/android/quickstep/MultiStateCallback;

    sget v4, Lcom/android/quickstep/AbsSwipeUpHandler;->STATE_GESTURE_COMPLETED:I

    invoke-virtual {v3, v4}, Lcom/android/quickstep/MultiStateCallback;->hasStates(I)Z

    move-result v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    if-nez v3, :cond_0

    if-nez v2, :cond_0

    aget-object v1, v1, v4

    iget-object v1, v1, Landroid/view/RemoteAnimationTarget;->taskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    sget-object v2, Lcom/android/quickstep/util/ActiveGestureLog;->INSTANCE:Lcom/android/quickstep/util/ActiveGestureLog;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unexpected task appeared id="

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, v1, Landroid/app/TaskInfo;->taskId:I

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " pkg="

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, v1, Landroid/app/TaskInfo;->baseIntent:Landroid/content/Intent;

    invoke-virtual {v1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/android/quickstep/util/ActiveGestureLog;->addLog(Ljava/lang/String;)V

    invoke-direct {v0, v5}, Lcom/android/quickstep/AbsSwipeUpHandler;->finishRecentsAnimationOnTasksAppeared(Ljava/lang/Runnable;)V

    iget-object v1, v0, Lcom/android/quickstep/AbsSwipeUpHandler;->mRecentsView:Lcom/android/quickstep/views/RecentsView;

    if-eqz v1, :cond_8

    invoke-virtual {v1, v4}, Lcom/android/quickstep/views/RecentsView;->startHome(Z)V

    invoke-direct/range {p0 .. p0}, Lcom/android/quickstep/AbsSwipeUpHandler;->reset()V

    const-string v0, "AERO-6208:onTasksAppeared-> Back to Normal state for the error target."

    invoke-virtual {v2, v0}, Lcom/android/quickstep/util/ActiveGestureLog;->addLog(Ljava/lang/String;)V

    goto/16 :goto_4

    :cond_0
    invoke-virtual/range {p0 .. p1}, Lcom/android/quickstep/AbsSwipeUpHandler;->handleTaskAppeared([Landroid/view/RemoteAnimationTarget;)Z

    move-result v2

    if-eqz v2, :cond_8

    invoke-static/range {p1 .. p1}, Ljava/util/Arrays;->stream([Ljava/lang/Object;)Ljava/util/stream/Stream;

    move-result-object v2

    new-instance v3, Lcom/android/quickstep/g1;

    invoke-direct {v3, v0}, Lcom/android/quickstep/g1;-><init>(Lcom/android/quickstep/AbsSwipeUpHandler;)V

    invoke-interface {v2, v3}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/stream/Stream;->findFirst()Ljava/util/Optional;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Optional;->isPresent()Z

    move-result v3

    if-nez v3, :cond_1

    sget-object v1, Lcom/android/quickstep/util/ActiveGestureLog;->INSTANCE:Lcom/android/quickstep/util/ActiveGestureLog;

    const-string v2, "No appeared task matching started task id"

    :goto_0
    invoke-virtual {v1, v2}, Lcom/android/quickstep/util/ActiveGestureLog;->addLog(Ljava/lang/String;)V

    invoke-direct {v0, v5}, Lcom/android/quickstep/AbsSwipeUpHandler;->finishRecentsAnimationOnTasksAppeared(Ljava/lang/Runnable;)V

    return-void

    :cond_1
    invoke-virtual {v2}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/RemoteAnimationTarget;

    iget-object v3, v0, Lcom/android/quickstep/AbsSwipeUpHandler;->mRecentsView:Lcom/android/quickstep/views/RecentsView;

    if-nez v3, :cond_2

    move-object v3, v5

    goto :goto_1

    :cond_2
    iget v6, v2, Landroid/view/RemoteAnimationTarget;->taskId:I

    invoke-virtual {v3, v6}, Lcom/android/quickstep/views/RecentsView;->getTaskViewByTaskId(I)Lcom/android/quickstep/views/TaskView;

    move-result-object v3

    :goto_1
    if-eqz v3, :cond_7

    invoke-virtual {v3}, Lcom/android/quickstep/views/TaskView;->getThumbnail()Lcom/android/quickstep/views/TaskThumbnailView;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/quickstep/views/TaskThumbnailView;->shouldShowSplashView()Z

    move-result v3

    if-nez v3, :cond_3

    goto :goto_3

    :cond_3
    iget-object v3, v0, Lcom/android/quickstep/AbsSwipeUpHandler;->mActivity:Lcom/android/launcher3/statemanager/StatefulActivity;

    invoke-interface {v3}, Lcom/android/launcher3/views/ActivityContext;->getDragLayer()Lcom/android/launcher3/views/BaseDragLayer;

    move-result-object v6

    iget-object v3, v0, Lcom/android/quickstep/AbsSwipeUpHandler;->mActivity:Lcom/android/launcher3/statemanager/StatefulActivity;

    instance-of v7, v3, Lcom/android/launcher3/uioverrides/QuickstepLauncher;

    if-eqz v7, :cond_4

    move-object v5, v3

    check-cast v5, Lcom/android/launcher3/uioverrides/QuickstepLauncher;

    :cond_4
    if-eqz v5, :cond_5

    invoke-virtual {v5}, Lcom/android/launcher3/uioverrides/QuickstepLauncher;->getDepthController()Lcom/android/launcher3/statehandlers/DepthController;

    move-result-object v3

    const/4 v7, 0x1

    invoke-virtual {v3, v7}, Lcom/android/quickstep/util/BaseDepthController;->pauseBlursOnWindows(Z)V

    :cond_5
    new-instance v3, Lcom/android/quickstep/util/SurfaceTransactionApplier;

    invoke-direct {v3, v6}, Lcom/android/quickstep/util/SurfaceTransactionApplier;-><init>(Landroid/view/View;)V

    new-instance v7, Lcom/android/quickstep/util/SurfaceTransaction;

    invoke-direct {v7}, Lcom/android/quickstep/util/SurfaceTransaction;-><init>()V

    array-length v8, v1

    :goto_2
    if-ge v4, v8, :cond_6

    aget-object v9, v1, v4

    iget-object v9, v9, Landroid/view/RemoteAnimationTarget;->leash:Landroid/view/SurfaceControl;

    invoke-virtual {v7, v9}, Lcom/android/quickstep/util/SurfaceTransaction;->forSurface(Landroid/view/SurfaceControl;)Lcom/android/quickstep/util/SurfaceTransaction$SurfaceProperties;

    move-result-object v9

    const/high16 v10, 0x3f800000    # 1.0f

    invoke-virtual {v9, v10}, Lcom/android/quickstep/util/SurfaceTransaction$SurfaceProperties;->setAlpha(F)Lcom/android/quickstep/util/SurfaceTransaction$SurfaceProperties;

    move-result-object v9

    const/4 v10, -0x1

    invoke-virtual {v9, v10}, Lcom/android/quickstep/util/SurfaceTransaction$SurfaceProperties;->setLayer(I)Lcom/android/quickstep/util/SurfaceTransaction$SurfaceProperties;

    move-result-object v9

    invoke-virtual {v9}, Lcom/android/quickstep/util/SurfaceTransaction$SurfaceProperties;->setShow()Lcom/android/quickstep/util/SurfaceTransaction$SurfaceProperties;

    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    :cond_6
    invoke-virtual {v3, v7}, Lcom/android/quickstep/util/SurfaceTransactionApplier;->scheduleApply(Lcom/android/quickstep/util/SurfaceTransaction;)V

    iget-object v7, v2, Landroid/view/RemoteAnimationTarget;->leash:Landroid/view/SurfaceControl;

    iget v8, v0, Lcom/android/quickstep/AbsSwipeUpHandler;->mSplashMainWindowShiftLength:I

    new-instance v9, Ly0/a;

    invoke-direct {v9}, Ly0/a;-><init>()V

    new-instance v10, Landroid/graphics/Rect;

    invoke-direct {v10}, Landroid/graphics/Rect;-><init>()V

    const/16 v11, 0x15d

    const/16 v12, 0x85

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/16 v15, 0x53

    const/16 v16, 0x10a

    new-instance v1, Lcom/android/quickstep/AbsSwipeUpHandler$13;

    invoke-direct {v1, v0, v6, v5}, Lcom/android/quickstep/AbsSwipeUpHandler$13;-><init>(Lcom/android/quickstep/AbsSwipeUpHandler;Landroid/view/ViewGroup;Lcom/android/launcher3/uioverrides/QuickstepLauncher;)V

    move-object/from16 v17, v1

    invoke-static/range {v6 .. v17}, Ld1/d;->h(Landroid/view/ViewGroup;Landroid/view/SurfaceControl;ILy0/a;Landroid/graphics/Rect;IIFFIILandroid/animation/Animator$AnimatorListener;)V

    goto :goto_4

    :cond_7
    :goto_3
    sget-object v1, Lcom/android/quickstep/util/ActiveGestureLog;->INSTANCE:Lcom/android/quickstep/util/ActiveGestureLog;

    const-string v2, "Invalid task view splash state"

    goto/16 :goto_0

    :cond_8
    :goto_4
    return-void
.end method

.method protected overrideDisplacementForTransientTaskbar(F)F
    .locals 8

    iget-boolean v0, p0, Lcom/android/quickstep/AbsSwipeUpHandler;->mIsTransientTaskbar:Z

    if-nez v0, :cond_0

    return p1

    :cond_0
    iget-boolean v0, p0, Lcom/android/quickstep/AbsSwipeUpHandler;->mTaskbarAlreadyOpen:Z

    if-nez v0, :cond_3

    iget-boolean v0, p0, Lcom/android/quickstep/AbsSwipeUpHandler;->mIsTaskbarAllAppsOpen:Z

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/android/quickstep/SwipeUpAnimationLogic;->mGestureState:Lcom/android/quickstep/GestureState;

    invoke-virtual {v0}, Lcom/android/quickstep/GestureState;->isTrackpadGesture()Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    iget v0, p0, Lcom/android/quickstep/AbsSwipeUpHandler;->mTaskbarAppWindowThreshold:I

    int-to-float v1, v0

    cmpg-float v1, p1, v1

    if-gez v1, :cond_2

    const/4 p0, 0x0

    return p0

    :cond_2
    iget p0, p0, Lcom/android/quickstep/AbsSwipeUpHandler;->mTaskbarCatchUpThreshold:I

    int-to-float v1, p0

    cmpg-float v1, p1, v1

    if-gez v1, :cond_3

    int-to-float v3, v0

    int-to-float v4, p0

    const/4 v5, 0x0

    int-to-float v6, p0

    sget-object v7, Lcom/android/launcher3/anim/Interpolators;->ACCEL_DEACCEL:Landroid/view/animation/Interpolator;

    move v2, p1

    invoke-static/range {v2 .. v7}, Lcom/android/launcher3/Utilities;->mapToRange(FFFFFLandroid/view/animation/Interpolator;)F

    move-result p0

    return p0

    :cond_3
    :goto_0
    return p1
.end method

.method protected performHapticFeedback()V
    .locals 1

    sget-object v0, Lcom/android/launcher3/util/VibratorWrapper;->INSTANCE:Lcom/android/launcher3/util/MainThreadInitializedObject;

    iget-object p0, p0, Lcom/android/quickstep/SwipeUpAnimationLogic;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p0}, Lcom/android/launcher3/util/MainThreadInitializedObject;->get(Landroid/content/Context;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/launcher3/util/VibratorWrapper;

    sget-object v0, Lcom/android/launcher3/util/VibratorWrapper;->OVERVIEW_HAPTIC:Landroid/os/VibrationEffect;

    invoke-virtual {p0, v0}, Lcom/android/launcher3/util/VibratorWrapper;->vibrate(Landroid/os/VibrationEffect;)V

    return-void
.end method

.method public resetWindowModeTipsState()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/quickstep/AbsSwipeUpHandler;->setWindowModeTipsState(I)V

    return-void
.end method

.method public setCanSlowSwipeGoHome(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/quickstep/AbsSwipeUpHandler;->mCanSlowSwipeGoHome:Z

    return-void
.end method

.method public setCurrentVelocityPxPerMs(F)V
    .locals 0

    iput p1, p0, Lcom/android/quickstep/AbsSwipeUpHandler;->mCurrentVelocityPxPerMs:F

    return-void
.end method

.method public setGestureEndCallback(Ljava/lang/Runnable;)V
    .locals 0

    iput-object p1, p0, Lcom/android/quickstep/AbsSwipeUpHandler;->mGestureEndCallback:Ljava/lang/Runnable;

    return-void
.end method

.method public setIsLikelyToStartNewTask(Z)V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/android/quickstep/AbsSwipeUpHandler;->setIsLikelyToStartNewTask(ZZ)V

    return-void
.end method

.method protected startNewTask(Ljava/util/function/Consumer;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    iget-boolean v0, p0, Lcom/android/quickstep/AbsSwipeUpHandler;->mCanceled:Z

    const/4 v1, 0x0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/android/quickstep/AbsSwipeUpHandler;->mRecentsView:Lcom/android/quickstep/views/RecentsView;

    const/4 v2, 0x0

    if-nez v0, :cond_0

    move-object v0, v2

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lcom/android/quickstep/views/RecentsView;->getNextPageTaskView()Lcom/android/quickstep/views/TaskView;

    move-result-object v0

    :goto_0
    const/4 v3, 0x1

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/android/quickstep/views/TaskView;->getTask()Lcom/android/systemui/shared/recents/model/Task;

    move-result-object v2

    iget-object v2, v2, Lcom/android/systemui/shared/recents/model/Task;->key:Lcom/android/systemui/shared/recents/model/Task$TaskKey;

    iget v4, v2, Lcom/android/systemui/shared/recents/model/Task$TaskKey;->id:I

    iget-object v5, p0, Lcom/android/quickstep/SwipeUpAnimationLogic;->mGestureState:Lcom/android/quickstep/GestureState;

    invoke-virtual {v5, v4}, Lcom/android/quickstep/GestureState;->updateLastStartedTaskId(I)V

    iget-object v5, p0, Lcom/android/quickstep/SwipeUpAnimationLogic;->mGestureState:Lcom/android/quickstep/GestureState;

    invoke-virtual {v5}, Lcom/android/quickstep/GestureState;->getPreviouslyAppearedTaskIds()Ljava/util/Set;

    move-result-object v5

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    sget-object v6, Lcom/android/quickstep/util/ActiveGestureLog;->INSTANCE:Lcom/android/quickstep/util/ActiveGestureLog;

    sget-object v7, Lcom/android/quickstep/util/ActiveGestureErrorDetector$GestureEvent;->EXPECTING_TASK_APPEARED:Lcom/android/quickstep/util/ActiveGestureErrorDetector$GestureEvent;

    invoke-virtual {v6, v7}, Lcom/android/quickstep/util/ActiveGestureLog;->trackEvent(Lcom/android/quickstep/util/ActiveGestureErrorDetector$GestureEvent;)V

    :cond_1
    sget-object v6, Lcom/android/quickstep/util/ActiveGestureLog;->INSTANCE:Lcom/android/quickstep/util/ActiveGestureLog;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Launching task: id="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " pkg="

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lcom/android/systemui/shared/recents/model/Task$TaskKey;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v6, v2}, Lcom/android/quickstep/util/ActiveGestureLog;->addLog(Ljava/lang/String;)V

    new-instance v2, Lcom/android/quickstep/b1;

    invoke-direct {v2, p0, p1, v5}, Lcom/android/quickstep/b1;-><init>(Lcom/android/quickstep/AbsSwipeUpHandler;Ljava/util/function/Consumer;Z)V

    invoke-virtual {v0, v2, v3}, Lcom/android/quickstep/views/TaskView;->launchTask(Ljava/util/function/Consumer;Z)V

    goto :goto_1

    :cond_2
    iget-object p1, p0, Lcom/android/quickstep/AbsSwipeUpHandler;->mActivityInterface:Lcom/android/quickstep/BaseActivityInterface;

    invoke-virtual {p1}, Lcom/android/quickstep/BaseActivityInterface;->onLaunchTaskFailed()V

    iget-object p1, p0, Lcom/android/quickstep/SwipeUpAnimationLogic;->mContext:Landroid/content/Context;

    const v0, 0x7f120059

    invoke-static {p1, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    iget-object p1, p0, Lcom/android/quickstep/AbsSwipeUpHandler;->mRecentsAnimationController:Lcom/android/quickstep/RecentsAnimationController;

    if-eqz p1, :cond_3

    invoke-virtual {p1, v3, v2}, Lcom/android/quickstep/RecentsAnimationController;->finish(ZLjava/lang/Runnable;)V

    :cond_3
    :goto_1
    iput-boolean v1, p0, Lcom/android/quickstep/AbsSwipeUpHandler;->mCanceled:Z

    return-void
.end method

.method protected switchToScreenshot()V
    .locals 5

    const-string v0, "Recent"

    const-string v1, "Abs -> switchToScreenshot."

    invoke-static {v0, v1}, Ly2/e;->c(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/quickstep/AbsSwipeUpHandler;->hasTargets()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object p0, p0, Lcom/android/quickstep/AbsSwipeUpHandler;->mStateCallback:Lcom/android/quickstep/MultiStateCallback;

    sget v0, Lcom/android/quickstep/AbsSwipeUpHandler;->STATE_SCREENSHOT_CAPTURED:I

    invoke-virtual {p0, v0}, Lcom/android/quickstep/MultiStateCallback;->setStateOnUiThread(I)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/quickstep/SwipeUpAnimationLogic;->mGestureState:Lcom/android/quickstep/GestureState;

    invoke-virtual {v0}, Lcom/android/quickstep/GestureState;->getRunningTaskId()I

    move-result v0

    invoke-direct {p0}, Lcom/android/quickstep/AbsSwipeUpHandler;->isNeedFinishLiveTileWindow()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    iget-object v3, p0, Lcom/android/quickstep/AbsSwipeUpHandler;->mRecentsView:Lcom/android/quickstep/views/RecentsView;

    if-eqz v3, :cond_1

    invoke-virtual {v3, v2}, Lcom/android/quickstep/views/RecentsView;->setRunningTaskHidden(Z)V

    iget-object v3, p0, Lcom/android/quickstep/AbsSwipeUpHandler;->mRecentsView:Lcom/android/quickstep/views/RecentsView;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Lcom/android/quickstep/views/RecentsView;->setRunningTaskViewShowScreenshot(Z)V

    :cond_1
    iget-object v3, p0, Lcom/android/quickstep/AbsSwipeUpHandler;->mRecentsAnimationController:Lcom/android/quickstep/RecentsAnimationController;

    if-eqz v3, :cond_3

    iget-object v2, p0, Lcom/android/quickstep/AbsSwipeUpHandler;->mTaskSnapshot:Lcom/android/systemui/shared/recents/model/ThumbnailData;

    if-nez v2, :cond_2

    new-instance v2, Lcom/android/quickstep/t0;

    invoke-direct {v2, p0, v0, v1}, Lcom/android/quickstep/t0;-><init>(Lcom/android/quickstep/AbsSwipeUpHandler;IZ)V

    invoke-static {v2}, Ly2/c;->f(Ljava/lang/Runnable;)V

    return-void

    :cond_2
    invoke-direct {p0, v0, v1}, Lcom/android/quickstep/AbsSwipeUpHandler;->updateThumbnail(IZ)Z

    move-result v2

    :cond_3
    if-nez v2, :cond_4

    invoke-direct {p0}, Lcom/android/quickstep/AbsSwipeUpHandler;->setScreenshotCapturedState()V

    :cond_4
    :goto_0
    return-void
.end method

.method public updateDisplacement(F)V
    .locals 0

    invoke-super {p0, p1}, Lcom/android/quickstep/SwipeUpAnimationLogic;->updateDisplacement(F)V

    invoke-direct {p0}, Lcom/android/quickstep/AbsSwipeUpHandler;->updateWindowModeProgress()V

    return-void
.end method

.method public writeToProto(Lcom/android/launcher3/tracing/InputConsumerProto$Builder;)V
    .locals 2

    invoke-static {}, Lcom/android/launcher3/tracing/SwipeHandlerProto;->newBuilder()Lcom/android/launcher3/tracing/SwipeHandlerProto$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/quickstep/SwipeUpAnimationLogic;->mGestureState:Lcom/android/quickstep/GestureState;

    invoke-virtual {v1, v0}, Lcom/android/quickstep/GestureState;->writeToProto(Lcom/android/launcher3/tracing/SwipeHandlerProto$Builder;)V

    iget-object v1, p0, Lcom/android/quickstep/AbsSwipeUpHandler;->mAnimationFactory:Lcom/android/quickstep/BaseActivityInterface$AnimationFactory;

    invoke-interface {v1}, Lcom/android/quickstep/BaseActivityInterface$AnimationFactory;->isRecentsAttachedToAppWindow()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/launcher3/tracing/SwipeHandlerProto$Builder;->setIsRecentsAttachedToAppWindow(Z)Lcom/android/launcher3/tracing/SwipeHandlerProto$Builder;

    iget-object v1, p0, Lcom/android/quickstep/AbsSwipeUpHandler;->mRecentsView:Lcom/android/quickstep/views/RecentsView;

    if-nez v1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Lcom/android/quickstep/views/RecentsView;->getScrollOffset()I

    move-result v1

    :goto_0
    invoke-virtual {v0, v1}, Lcom/android/launcher3/tracing/SwipeHandlerProto$Builder;->setScrollOffset(I)Lcom/android/launcher3/tracing/SwipeHandlerProto$Builder;

    iget-object p0, p0, Lcom/android/quickstep/SwipeUpAnimationLogic;->mCurrentShift:Lcom/android/launcher3/anim/AnimatedFloat;

    iget p0, p0, Lcom/android/launcher3/anim/AnimatedFloat;->value:F

    invoke-virtual {v0, p0}, Lcom/android/launcher3/tracing/SwipeHandlerProto$Builder;->setAppToOverviewProgress(F)Lcom/android/launcher3/tracing/SwipeHandlerProto$Builder;

    invoke-virtual {p1, v0}, Lcom/android/launcher3/tracing/InputConsumerProto$Builder;->setSwipeHandler(Lcom/android/launcher3/tracing/SwipeHandlerProto$Builder;)Lcom/android/launcher3/tracing/InputConsumerProto$Builder;

    return-void
.end method
