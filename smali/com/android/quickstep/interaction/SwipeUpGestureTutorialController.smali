.class abstract Lcom/android/quickstep/interaction/SwipeUpGestureTutorialController;
.super Lcom/android/quickstep/interaction/TutorialController;
.source "SourceFile"


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x1e
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/quickstep/interaction/SwipeUpGestureTutorialController$ViewSwipeUpAnimation;,
        Lcom/android/quickstep/interaction/SwipeUpGestureTutorialController$FakeTransformParams;
    }
.end annotation


# static fields
.field private static final FAKE_PREVIOUS_TASK_MARGIN:I

.field private static final HOME_SWIPE_ANIMATION_DURATION_MILLIS:J = 0x271L

.field private static final OVERVIEW_SWIPE_ANIMATION_DURATION_MILLIS:J = 0x3e8L

.field protected static final TASK_VIEW_END_ANIMATION_DURATION_MILLIS:J = 0x12cL

.field protected static final TASK_VIEW_FILL_SCREEN_ANIMATION_DELAY_MILLIS:J = 0x12cL


# instance fields
.field private mFakeTaskViewRadius:F

.field private final mFakeTaskViewRect:Landroid/graphics/Rect;

.field private final mResetTaskView:Landroid/animation/AnimatorListenerAdapter;

.field mRunningWindowAnim:Lcom/android/quickstep/SwipeUpAnimationLogic$RunningWindowAnim;

.field private mShowPreviousTasks:Z

.field private mShowTasks:Z

.field final mTaskViewSwipeUpAnimation:Lcom/android/quickstep/interaction/SwipeUpGestureTutorialController$ViewSwipeUpAnimation;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/high16 v0, 0x41c00000    # 24.0f

    invoke-static {v0}, Lcom/android/launcher3/Utilities;->dpToPx(F)I

    move-result v0

    sput v0, Lcom/android/quickstep/interaction/SwipeUpGestureTutorialController;->FAKE_PREVIOUS_TASK_MARGIN:I

    return-void
.end method

.method constructor <init>(Lcom/android/quickstep/interaction/TutorialFragment;Lcom/android/quickstep/interaction/TutorialController$TutorialType;)V
    .locals 6

    invoke-direct {p0, p1, p2}, Lcom/android/quickstep/interaction/TutorialController;-><init>(Lcom/android/quickstep/interaction/TutorialFragment;Lcom/android/quickstep/interaction/TutorialController$TutorialType;)V

    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iput-object p1, p0, Lcom/android/quickstep/interaction/SwipeUpGestureTutorialController;->mFakeTaskViewRect:Landroid/graphics/Rect;

    const/4 p2, 0x0

    iput-boolean p2, p0, Lcom/android/quickstep/interaction/SwipeUpGestureTutorialController;->mShowTasks:Z

    iput-boolean p2, p0, Lcom/android/quickstep/interaction/SwipeUpGestureTutorialController;->mShowPreviousTasks:Z

    new-instance v0, Lcom/android/quickstep/interaction/SwipeUpGestureTutorialController$1;

    invoke-direct {v0, p0}, Lcom/android/quickstep/interaction/SwipeUpGestureTutorialController$1;-><init>(Lcom/android/quickstep/interaction/SwipeUpGestureTutorialController;)V

    iput-object v0, p0, Lcom/android/quickstep/interaction/SwipeUpGestureTutorialController;->mResetTaskView:Landroid/animation/AnimatorListenerAdapter;

    new-instance v0, Lcom/android/quickstep/RecentsAnimationDeviceState;

    iget-object v1, p0, Lcom/android/quickstep/interaction/TutorialController;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/quickstep/RecentsAnimationDeviceState;-><init>(Landroid/content/Context;)V

    new-instance v1, Lcom/android/quickstep/OverviewComponentObserver;

    iget-object v2, p0, Lcom/android/quickstep/interaction/TutorialController;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2, v0}, Lcom/android/quickstep/OverviewComponentObserver;-><init>(Landroid/content/Context;Lcom/android/quickstep/RecentsAnimationDeviceState;)V

    new-instance v2, Lcom/android/quickstep/interaction/SwipeUpGestureTutorialController$ViewSwipeUpAnimation;

    iget-object v3, p0, Lcom/android/quickstep/interaction/TutorialController;->mContext:Landroid/content/Context;

    new-instance v4, Lcom/android/quickstep/GestureState;

    const/4 v5, -0x1

    invoke-direct {v4, v1, v5}, Lcom/android/quickstep/GestureState;-><init>(Lcom/android/quickstep/OverviewComponentObserver;I)V

    invoke-direct {v2, p0, v3, v0, v4}, Lcom/android/quickstep/interaction/SwipeUpGestureTutorialController$ViewSwipeUpAnimation;-><init>(Lcom/android/quickstep/interaction/SwipeUpGestureTutorialController;Landroid/content/Context;Lcom/android/quickstep/RecentsAnimationDeviceState;Lcom/android/quickstep/GestureState;)V

    iput-object v2, p0, Lcom/android/quickstep/interaction/SwipeUpGestureTutorialController;->mTaskViewSwipeUpAnimation:Lcom/android/quickstep/interaction/SwipeUpGestureTutorialController$ViewSwipeUpAnimation;

    invoke-virtual {v1}, Lcom/android/quickstep/OverviewComponentObserver;->onDestroy()V

    invoke-virtual {v0}, Lcom/android/quickstep/RecentsAnimationDeviceState;->destroy()V

    sget-object v0, Lcom/android/launcher3/InvariantDeviceProfile;->INSTANCE:Lcom/android/launcher3/util/MainThreadInitializedObject;

    iget-object v1, p0, Lcom/android/quickstep/interaction/TutorialController;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/android/launcher3/util/MainThreadInitializedObject;->get(Landroid/content/Context;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/InvariantDeviceProfile;

    iget-object v1, p0, Lcom/android/quickstep/interaction/TutorialController;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/android/launcher3/InvariantDeviceProfile;->getDeviceProfile(Landroid/content/Context;)Lj3/a;

    move-result-object v0

    iget-object v1, p0, Lcom/android/quickstep/interaction/TutorialController;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/android/launcher3/DeviceProfile;->copy(Landroid/content/Context;)Lcom/android/launcher3/DeviceProfile;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/android/quickstep/interaction/SwipeUpGestureTutorialController$ViewSwipeUpAnimation;->initDp(Lcom/android/launcher3/DeviceProfile;)V

    iget-object v0, p0, Lcom/android/quickstep/interaction/TutorialController;->mTutorialFragment:Lcom/android/quickstep/interaction/TutorialFragment;

    invoke-virtual {v0}, Lcom/android/quickstep/interaction/TutorialFragment;->getRootView()Lcom/android/quickstep/interaction/RootSandboxLayout;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/quickstep/interaction/RootSandboxLayout;->getFullscreenHeight()I

    move-result v0

    iget-object v1, p0, Lcom/android/quickstep/interaction/TutorialController;->mTutorialFragment:Lcom/android/quickstep/interaction/TutorialFragment;

    invoke-virtual {v1}, Lcom/android/quickstep/interaction/TutorialFragment;->getRootView()Lcom/android/quickstep/interaction/RootSandboxLayout;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/RelativeLayout;->getWidth()I

    move-result v1

    invoke-virtual {p1, p2, p2, v1, v0}, Landroid/graphics/Rect;->set(IIII)V

    const/4 p1, 0x0

    iput p1, p0, Lcom/android/quickstep/interaction/SwipeUpGestureTutorialController;->mFakeTaskViewRadius:F

    new-instance p1, Lcom/android/quickstep/interaction/SwipeUpGestureTutorialController$2;

    invoke-direct {p1, p0}, Lcom/android/quickstep/interaction/SwipeUpGestureTutorialController$2;-><init>(Lcom/android/quickstep/interaction/SwipeUpGestureTutorialController;)V

    iget-object p2, p0, Lcom/android/quickstep/interaction/TutorialController;->mFakeTaskView:Landroid/widget/FrameLayout;

    const/4 v0, 0x1

    invoke-virtual {p2, v0}, Landroid/widget/FrameLayout;->setClipToOutline(Z)V

    iget-object p2, p0, Lcom/android/quickstep/interaction/TutorialController;->mFakeTaskView:Landroid/widget/FrameLayout;

    invoke-virtual {p2, p1}, Landroid/widget/FrameLayout;->setOutlineProvider(Landroid/view/ViewOutlineProvider;)V

    iget-object p2, p0, Lcom/android/quickstep/interaction/TutorialController;->mFakePreviousTaskView:Lcom/android/quickstep/interaction/AnimatedTaskView;

    invoke-virtual {p2, v0}, Lcom/android/quickstep/interaction/AnimatedTaskView;->setClipToOutline(Z)V

    iget-object p0, p0, Lcom/android/quickstep/interaction/TutorialController;->mFakePreviousTaskView:Lcom/android/quickstep/interaction/AnimatedTaskView;

    invoke-virtual {p0, p1}, Lcom/android/quickstep/interaction/AnimatedTaskView;->setOutlineProvider(Landroid/view/ViewOutlineProvider;)V

    return-void
.end method

.method static synthetic access$000(Lcom/android/quickstep/interaction/SwipeUpGestureTutorialController;)Landroid/graphics/Rect;
    .locals 0

    iget-object p0, p0, Lcom/android/quickstep/interaction/SwipeUpGestureTutorialController;->mFakeTaskViewRect:Landroid/graphics/Rect;

    return-object p0
.end method

.method static synthetic access$100(Lcom/android/quickstep/interaction/SwipeUpGestureTutorialController;)F
    .locals 0

    iget p0, p0, Lcom/android/quickstep/interaction/SwipeUpGestureTutorialController;->mFakeTaskViewRadius:F

    return p0
.end method

.method static synthetic access$102(Lcom/android/quickstep/interaction/SwipeUpGestureTutorialController;F)F
    .locals 0

    iput p1, p0, Lcom/android/quickstep/interaction/SwipeUpGestureTutorialController;->mFakeTaskViewRadius:F

    return p1
.end method

.method static synthetic access$200(Lcom/android/quickstep/interaction/SwipeUpGestureTutorialController;)Landroid/animation/AnimatorListenerAdapter;
    .locals 0

    iget-object p0, p0, Lcom/android/quickstep/interaction/SwipeUpGestureTutorialController;->mResetTaskView:Landroid/animation/AnimatorListenerAdapter;

    return-object p0
.end method

.method private cancelRunningAnimation()V
    .locals 1

    iget-object v0, p0, Lcom/android/quickstep/interaction/SwipeUpGestureTutorialController;->mRunningWindowAnim:Lcom/android/quickstep/SwipeUpAnimationLogic$RunningWindowAnim;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/android/quickstep/SwipeUpAnimationLogic$RunningWindowAnim;->cancel()V

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/quickstep/interaction/SwipeUpGestureTutorialController;->mRunningWindowAnim:Lcom/android/quickstep/SwipeUpAnimationLogic$RunningWindowAnim;

    return-void
.end method

.method private createFingerDotSwipeUpAnimator(F)Landroid/animation/Animator;
    .locals 2

    const/4 v0, 0x2

    new-array v0, v0, [F

    fill-array-data v0, :array_0

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    new-instance v1, Lcom/android/quickstep/interaction/y;

    invoke-direct {v1, p0, p1}, Lcom/android/quickstep/interaction/y;-><init>(Lcom/android/quickstep/interaction/SwipeUpGestureTutorialController;F)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    return-object v0

    nop

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public static synthetic l(Lcom/android/quickstep/interaction/SwipeUpGestureTutorialController;FLandroid/animation/ValueAnimator;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/quickstep/interaction/SwipeUpGestureTutorialController;->lambda$createFingerDotSwipeUpAnimator$0(FLandroid/animation/ValueAnimator;)V

    return-void
.end method

.method private synthetic lambda$createFingerDotSwipeUpAnimator$0(FLandroid/animation/ValueAnimator;)V
    .locals 1

    neg-float v0, p1

    invoke-virtual {p2}, Landroid/animation/ValueAnimator;->getAnimatedFraction()F

    move-result p2

    mul-float/2addr v0, p2

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p2

    invoke-virtual {p0, p2}, Lcom/android/quickstep/interaction/SwipeUpGestureTutorialController;->setNavBarGestureProgress(Ljava/lang/Float;)V

    iget-object p0, p0, Lcom/android/quickstep/interaction/TutorialController;->mFingerDotView:Landroid/widget/ImageView;

    add-float/2addr p1, v0

    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setTranslationY(F)V

    return-void
.end method


# virtual methods
.method animateFakeTaskViewHome(Landroid/graphics/PointF;Ljava/lang/Runnable;)V
    .locals 5
    .param p2    # Ljava/lang/Runnable;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    invoke-direct {p0}, Lcom/android/quickstep/interaction/SwipeUpGestureTutorialController;->cancelRunningAnimation()V

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/quickstep/interaction/TutorialController;->hideFakeTaskbar(Z)V

    iget-object v0, p0, Lcom/android/quickstep/interaction/TutorialController;->mFakePreviousTaskView:Lcom/android/quickstep/interaction/AnimatedTaskView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/quickstep/interaction/TutorialController;->mFakeHotseatView:Landroid/widget/FrameLayout;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->setVisibility(I)V

    iput-boolean v2, p0, Lcom/android/quickstep/interaction/SwipeUpGestureTutorialController;->mShowPreviousTasks:Z

    iget-object v0, p0, Lcom/android/quickstep/interaction/SwipeUpGestureTutorialController;->mTaskViewSwipeUpAnimation:Lcom/android/quickstep/interaction/SwipeUpGestureTutorialController$ViewSwipeUpAnimation;

    invoke-virtual {v0, p1}, Lcom/android/quickstep/interaction/SwipeUpGestureTutorialController$ViewSwipeUpAnimation;->handleSwipeUpToHome(Landroid/graphics/PointF;)Lcom/android/quickstep/util/RectFSpringAnim;

    move-result-object p1

    new-instance v0, Lcom/android/launcher3/anim/PendingAnimation;

    const-wide/16 v2, 0x12c

    invoke-direct {v0, v2, v3}, Lcom/android/launcher3/anim/PendingAnimation;-><init>(J)V

    iget-object v2, p0, Lcom/android/quickstep/interaction/TutorialController;->mFakeIconView:Lcom/android/launcher3/views/ClipIconView;

    sget-object v3, Lcom/android/launcher3/anim/Interpolators;->ACCEL:Landroid/view/animation/Interpolator;

    const/4 v4, 0x0

    invoke-virtual {v0, v2, v4, v3}, Lcom/android/launcher3/anim/AnimatedPropertySetter;->setViewAlpha(Landroid/view/View;FLandroid/animation/TimeInterpolator;)Landroid/animation/Animator;

    iget-object v2, p0, Lcom/android/quickstep/interaction/TutorialController;->mHotseatIconView:Landroid/view/View;

    if-eqz v2, :cond_0

    invoke-virtual {v2, v1}, Landroid/view/View;->setVisibility(I)V

    new-instance v1, Lcom/android/quickstep/interaction/SwipeUpGestureTutorialController$4;

    invoke-direct {v1, p0, v2}, Lcom/android/quickstep/interaction/SwipeUpGestureTutorialController$4;-><init>(Lcom/android/quickstep/interaction/SwipeUpGestureTutorialController;Landroid/view/View;)V

    invoke-virtual {v0, v1}, Lcom/android/launcher3/anim/AnimatedPropertySetter;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    :cond_0
    if-eqz p2, :cond_1

    invoke-static {p2}, Lcom/android/launcher3/anim/AnimatorListeners;->forSuccessCallback(Ljava/lang/Runnable;)Landroid/animation/Animator$AnimatorListener;

    move-result-object p2

    invoke-virtual {v0, p2}, Lcom/android/launcher3/anim/AnimatedPropertySetter;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    :cond_1
    invoke-virtual {v0}, Lcom/android/launcher3/anim/PendingAnimation;->buildAnim()Landroid/animation/AnimatorSet;

    move-result-object p2

    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Lcom/android/launcher3/p1;

    invoke-direct {v0, p2}, Lcom/android/launcher3/p1;-><init>(Landroid/animation/AnimatorSet;)V

    invoke-static {v0}, Lcom/android/launcher3/anim/AnimatorListeners;->forSuccessCallback(Ljava/lang/Runnable;)Landroid/animation/Animator$AnimatorListener;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/android/quickstep/util/RectFSpringAnim;->addAnimatorListener(Landroid/animation/Animator$AnimatorListener;)V

    invoke-static {p1}, Lcom/android/quickstep/SwipeUpAnimationLogic$RunningWindowAnim;->wrap(Lcom/android/quickstep/util/RectFSpringAnim;)Lcom/android/quickstep/SwipeUpAnimationLogic$RunningWindowAnim;

    move-result-object p1

    iput-object p1, p0, Lcom/android/quickstep/interaction/SwipeUpGestureTutorialController;->mRunningWindowAnim:Lcom/android/quickstep/SwipeUpAnimationLogic$RunningWindowAnim;

    return-void
.end method

.method protected createFingerDotHomeSwipeAnimator(F)Landroid/animation/Animator;
    .locals 3

    invoke-direct {p0, p1}, Lcom/android/quickstep/interaction/SwipeUpGestureTutorialController;->createFingerDotSwipeUpAnimator(F)Landroid/animation/Animator;

    move-result-object v0

    const-wide/16 v1, 0x271

    invoke-virtual {v0, v1, v2}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    move-result-object v0

    new-instance v1, Lcom/android/quickstep/interaction/SwipeUpGestureTutorialController$5;

    invoke-direct {v1, p0, p1}, Lcom/android/quickstep/interaction/SwipeUpGestureTutorialController$5;-><init>(Lcom/android/quickstep/interaction/SwipeUpGestureTutorialController;F)V

    invoke-virtual {v0, v1}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    return-object v0
.end method

.method protected createFingerDotOverviewSwipeAnimator(F)Landroid/animation/Animator;
    .locals 2

    invoke-direct {p0, p1}, Lcom/android/quickstep/interaction/SwipeUpGestureTutorialController;->createFingerDotSwipeUpAnimator(F)Landroid/animation/Animator;

    move-result-object p1

    const-wide/16 v0, 0x3e8

    invoke-virtual {p1, v0, v1}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    move-result-object p1

    new-instance v0, Lcom/android/quickstep/interaction/SwipeUpGestureTutorialController$6;

    invoke-direct {v0, p0}, Lcom/android/quickstep/interaction/SwipeUpGestureTutorialController$6;-><init>(Lcom/android/quickstep/interaction/SwipeUpGestureTutorialController;)V

    invoke-virtual {p1, v0}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    return-object p1
.end method

.method fadeOutFakeTaskView(ZLjava/lang/Runnable;)V
    .locals 6
    .param p2    # Ljava/lang/Runnable;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    const/4 v2, 0x1

    const/4 v3, 0x1

    const/4 v4, 0x0

    move-object v0, p0

    move v1, p1

    move-object v5, p2

    invoke-virtual/range {v0 .. v5}, Lcom/android/quickstep/interaction/SwipeUpGestureTutorialController;->fadeOutFakeTaskView(ZZZLandroid/animation/ValueAnimator$AnimatorUpdateListener;Ljava/lang/Runnable;)V

    return-void
.end method

.method fadeOutFakeTaskView(ZZZLandroid/animation/ValueAnimator$AnimatorUpdateListener;Ljava/lang/Runnable;)V
    .locals 10
    .param p4    # Landroid/animation/ValueAnimator$AnimatorUpdateListener;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p5    # Ljava/lang/Runnable;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    invoke-direct {p0}, Lcom/android/quickstep/interaction/SwipeUpGestureTutorialController;->cancelRunningAnimation()V

    new-instance v0, Lcom/android/launcher3/anim/PendingAnimation;

    const-wide/16 v1, 0x12c

    invoke-direct {v0, v1, v2}, Lcom/android/launcher3/anim/PendingAnimation;-><init>(J)V

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/android/quickstep/interaction/SwipeUpGestureTutorialController;->mTaskViewSwipeUpAnimation:Lcom/android/quickstep/interaction/SwipeUpGestureTutorialController$ViewSwipeUpAnimation;

    invoke-virtual {p1}, Lcom/android/quickstep/interaction/SwipeUpGestureTutorialController$ViewSwipeUpAnimation;->getCurrentShift()Lcom/android/launcher3/anim/AnimatedFloat;

    move-result-object p1

    sget-object v1, Lcom/android/launcher3/anim/AnimatedFloat;->VALUE:Landroid/util/FloatProperty;

    const/high16 v2, 0x3f800000    # 1.0f

    sget-object v3, Lcom/android/launcher3/anim/Interpolators;->ACCEL:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, p1, v1, v2, v3}, Lcom/android/launcher3/anim/AnimatedPropertySetter;->setFloat(Ljava/lang/Object;Landroid/util/FloatProperty;FLandroid/animation/TimeInterpolator;)Landroid/animation/Animator;

    new-instance p1, Lcom/android/quickstep/interaction/SwipeUpGestureTutorialController$3;

    move-object v4, p1

    move-object v5, p0

    move v6, p3

    move-object v7, p5

    move-object v8, p4

    move v9, p2

    invoke-direct/range {v4 .. v9}, Lcom/android/quickstep/interaction/SwipeUpGestureTutorialController$3;-><init>(Lcom/android/quickstep/interaction/SwipeUpGestureTutorialController;ZLjava/lang/Runnable;Landroid/animation/ValueAnimator$AnimatorUpdateListener;Z)V

    :goto_0
    invoke-virtual {v0, p1}, Lcom/android/launcher3/anim/AnimatedPropertySetter;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    goto :goto_1

    :cond_0
    iget-object p1, p0, Lcom/android/quickstep/interaction/SwipeUpGestureTutorialController;->mTaskViewSwipeUpAnimation:Lcom/android/quickstep/interaction/SwipeUpGestureTutorialController$ViewSwipeUpAnimation;

    invoke-virtual {p1}, Lcom/android/quickstep/interaction/SwipeUpGestureTutorialController$ViewSwipeUpAnimation;->getCurrentShift()Lcom/android/launcher3/anim/AnimatedFloat;

    move-result-object p1

    sget-object p2, Lcom/android/launcher3/anim/AnimatedFloat;->VALUE:Landroid/util/FloatProperty;

    const/4 p4, 0x0

    sget-object v1, Lcom/android/launcher3/anim/Interpolators;->ACCEL:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, p1, p2, p4, v1}, Lcom/android/launcher3/anim/AnimatedPropertySetter;->setFloat(Ljava/lang/Object;Landroid/util/FloatProperty;FLandroid/animation/TimeInterpolator;)Landroid/animation/Animator;

    if-eqz p3, :cond_1

    iget-object p1, p0, Lcom/android/quickstep/interaction/SwipeUpGestureTutorialController;->mResetTaskView:Landroid/animation/AnimatorListenerAdapter;

    invoke-virtual {v0, p1}, Lcom/android/launcher3/anim/AnimatedPropertySetter;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    :cond_1
    if-eqz p5, :cond_2

    invoke-static {p5}, Lcom/android/launcher3/anim/AnimatorListeners;->forSuccessCallback(Ljava/lang/Runnable;)Landroid/animation/Animator$AnimatorListener;

    move-result-object p1

    goto :goto_0

    :cond_2
    :goto_1
    invoke-virtual {v0}, Lcom/android/launcher3/anim/PendingAnimation;->buildAnim()Landroid/animation/AnimatorSet;

    move-result-object p1

    const/4 p2, 0x0

    invoke-virtual {p0, p2}, Lcom/android/quickstep/interaction/TutorialController;->hideFakeTaskbar(Z)V

    invoke-virtual {p1}, Landroid/animation/AnimatorSet;->start()V

    invoke-static {p1}, Lcom/android/quickstep/SwipeUpAnimationLogic$RunningWindowAnim;->wrap(Landroid/animation/Animator;)Lcom/android/quickstep/SwipeUpAnimationLogic$RunningWindowAnim;

    move-result-object p1

    iput-object p1, p0, Lcom/android/quickstep/interaction/SwipeUpGestureTutorialController;->mRunningWindowAnim:Lcom/android/quickstep/SwipeUpAnimationLogic$RunningWindowAnim;

    return-void
.end method

.method public onMotionPaused(Z)V
    .locals 4

    invoke-virtual {p0}, Lcom/android/quickstep/interaction/TutorialController;->skipGestureAttempt()Z

    move-result p1

    if-eqz p1, :cond_0

    return-void

    :cond_0
    iget-boolean p1, p0, Lcom/android/quickstep/interaction/SwipeUpGestureTutorialController;->mShowTasks:Z

    if-eqz p1, :cond_2

    iget-boolean p1, p0, Lcom/android/quickstep/interaction/SwipeUpGestureTutorialController;->mShowPreviousTasks:Z

    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/android/quickstep/interaction/TutorialController;->mFakePreviousTaskView:Lcom/android/quickstep/interaction/AnimatedTaskView;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getWidth()I

    move-result v0

    mul-int/lit8 v0, v0, 0x2

    sget v1, Lcom/android/quickstep/interaction/SwipeUpGestureTutorialController;->FAKE_PREVIOUS_TASK_MARGIN:I

    add-int/2addr v0, v1

    neg-int v0, v0

    int-to-float v0, v0

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->setTranslationX(F)V

    iget-object p1, p0, Lcom/android/quickstep/interaction/TutorialController;->mFakePreviousTaskView:Lcom/android/quickstep/interaction/AnimatedTaskView;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    const-wide/16 v2, 0x12c

    invoke-virtual {p1, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    iget-object v0, p0, Lcom/android/quickstep/interaction/TutorialController;->mFakePreviousTaskView:Lcom/android/quickstep/interaction/AnimatedTaskView;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getWidth()I

    move-result v0

    add-int/2addr v0, v1

    neg-int v0, v0

    int-to-float v0, v0

    invoke-virtual {p1, v0}, Landroid/view/ViewPropertyAnimator;->translationX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/ViewPropertyAnimator;->start()V

    :cond_1
    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/android/quickstep/interaction/SwipeUpGestureTutorialController;->mShowPreviousTasks:Z

    :cond_2
    return-void
.end method

.method resetFakeTaskView(Z)V
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/android/quickstep/interaction/SwipeUpGestureTutorialController;->resetFakeTaskView(ZZ)V

    return-void
.end method

.method resetFakeTaskView(ZZ)V
    .locals 5

    iget-object v0, p0, Lcom/android/quickstep/interaction/TutorialController;->mFakeTaskView:Landroid/widget/FrameLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    new-instance v0, Lcom/android/launcher3/anim/PendingAnimation;

    const-wide/16 v1, 0x12c

    invoke-direct {v0, v1, v2}, Lcom/android/launcher3/anim/PendingAnimation;-><init>(J)V

    iget-object v1, p0, Lcom/android/quickstep/interaction/SwipeUpGestureTutorialController;->mTaskViewSwipeUpAnimation:Lcom/android/quickstep/interaction/SwipeUpGestureTutorialController$ViewSwipeUpAnimation;

    invoke-virtual {v1}, Lcom/android/quickstep/interaction/SwipeUpGestureTutorialController$ViewSwipeUpAnimation;->getCurrentShift()Lcom/android/launcher3/anim/AnimatedFloat;

    move-result-object v1

    sget-object v2, Lcom/android/launcher3/anim/AnimatedFloat;->VALUE:Landroid/util/FloatProperty;

    sget-object v3, Lcom/android/launcher3/anim/Interpolators;->ACCEL:Landroid/view/animation/Interpolator;

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v2, v4, v3}, Lcom/android/launcher3/anim/AnimatedPropertySetter;->setFloat(Ljava/lang/Object;Landroid/util/FloatProperty;FLandroid/animation/TimeInterpolator;)Landroid/animation/Animator;

    iget-object v1, p0, Lcom/android/quickstep/interaction/TutorialController;->mFakeTaskView:Landroid/widget/FrameLayout;

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/launcher3/anim/AnimatedPropertySetter;->setViewAlpha(Landroid/view/View;FLandroid/animation/TimeInterpolator;)Landroid/animation/Animator;

    iget-object v1, p0, Lcom/android/quickstep/interaction/SwipeUpGestureTutorialController;->mResetTaskView:Landroid/animation/AnimatorListenerAdapter;

    invoke-virtual {v0, v1}, Lcom/android/launcher3/anim/AnimatedPropertySetter;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    invoke-virtual {v0}, Lcom/android/launcher3/anim/PendingAnimation;->buildAnim()Landroid/animation/AnimatorSet;

    move-result-object v0

    if-eqz p2, :cond_0

    invoke-virtual {p0, p1}, Lcom/android/quickstep/interaction/TutorialController;->showFakeTaskbar(Z)V

    :cond_0
    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    invoke-static {v0}, Lcom/android/quickstep/SwipeUpAnimationLogic$RunningWindowAnim;->wrap(Landroid/animation/Animator;)Lcom/android/quickstep/SwipeUpAnimationLogic$RunningWindowAnim;

    move-result-object p1

    iput-object p1, p0, Lcom/android/quickstep/interaction/SwipeUpGestureTutorialController;->mRunningWindowAnim:Lcom/android/quickstep/SwipeUpAnimationLogic$RunningWindowAnim;

    return-void
.end method

.method resetFakeTaskViewFromOverview()V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0, v0}, Lcom/android/quickstep/interaction/SwipeUpGestureTutorialController;->resetFakeTaskView(ZZ)V

    return-void
.end method

.method resetTaskViews()V
    .locals 6

    iget-object v0, p0, Lcom/android/quickstep/interaction/TutorialController;->mFakeHotseatView:Landroid/widget/FrameLayout;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/quickstep/interaction/TutorialController;->mFakeIconView:Lcom/android/launcher3/views/ClipIconView;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    sget-object v0, Lcom/android/launcher3/config/FeatureFlags;->ENABLE_NEW_GESTURE_NAV_TUTORIAL:Lcom/android/launcher3/config/FeatureFlags$BooleanFlag;

    invoke-virtual {v0}, Lcom/android/launcher3/config/FeatureFlags$BooleanFlag;->get()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/quickstep/interaction/TutorialController;->mFakeIconView:Lcom/android/launcher3/views/ClipIconView;

    invoke-virtual {v2}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {p0}, Lcom/android/quickstep/interaction/TutorialController;->getFakeTaskViewColor()I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    :cond_0
    iget-object v2, p0, Lcom/android/quickstep/interaction/TutorialController;->mTutorialFragment:Lcom/android/quickstep/interaction/TutorialFragment;

    invoke-virtual {v2}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v2

    const/4 v3, 0x0

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/quickstep/interaction/TutorialController;->mTutorialFragment:Lcom/android/quickstep/interaction/TutorialFragment;

    invoke-virtual {v2}, Lcom/android/quickstep/interaction/TutorialFragment;->getRootView()Lcom/android/quickstep/interaction/RootSandboxLayout;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/quickstep/interaction/RootSandboxLayout;->getFullscreenHeight()I

    move-result v2

    iget-object v4, p0, Lcom/android/quickstep/interaction/TutorialController;->mTutorialFragment:Lcom/android/quickstep/interaction/TutorialFragment;

    invoke-virtual {v4}, Lcom/android/quickstep/interaction/TutorialFragment;->getRootView()Lcom/android/quickstep/interaction/RootSandboxLayout;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/RelativeLayout;->getWidth()I

    move-result v4

    iget-object v5, p0, Lcom/android/quickstep/interaction/SwipeUpGestureTutorialController;->mFakeTaskViewRect:Landroid/graphics/Rect;

    invoke-virtual {v5, v3, v3, v4, v2}, Landroid/graphics/Rect;->set(IIII)V

    :cond_1
    const/4 v2, 0x0

    iput v2, p0, Lcom/android/quickstep/interaction/SwipeUpGestureTutorialController;->mFakeTaskViewRadius:F

    iget-object v2, p0, Lcom/android/quickstep/interaction/TutorialController;->mFakeTaskView:Landroid/widget/FrameLayout;

    invoke-virtual {v2}, Landroid/widget/FrameLayout;->invalidateOutline()V

    iget-object v2, p0, Lcom/android/quickstep/interaction/TutorialController;->mFakeTaskView:Landroid/widget/FrameLayout;

    invoke-virtual {v2, v3}, Landroid/widget/FrameLayout;->setVisibility(I)V

    invoke-virtual {v0}, Lcom/android/launcher3/config/FeatureFlags$BooleanFlag;->get()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/quickstep/interaction/TutorialController;->mFakeTaskView:Landroid/widget/FrameLayout;

    invoke-virtual {p0}, Lcom/android/quickstep/interaction/TutorialController;->getFakeTaskViewColor()I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->setBackgroundColor(I)V

    :cond_2
    iget-object v0, p0, Lcom/android/quickstep/interaction/TutorialController;->mFakeTaskView:Landroid/widget/FrameLayout;

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->setAlpha(F)V

    iget-object v0, p0, Lcom/android/quickstep/interaction/TutorialController;->mFakePreviousTaskView:Lcom/android/quickstep/interaction/AnimatedTaskView;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/quickstep/interaction/TutorialController;->mFakePreviousTaskView:Lcom/android/quickstep/interaction/AnimatedTaskView;

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->setAlpha(F)V

    iget-object v0, p0, Lcom/android/quickstep/interaction/TutorialController;->mFakePreviousTaskView:Lcom/android/quickstep/interaction/AnimatedTaskView;

    invoke-virtual {v0, v3}, Lcom/android/quickstep/interaction/AnimatedTaskView;->setToSingleRowLayout(Z)V

    iput-boolean v3, p0, Lcom/android/quickstep/interaction/SwipeUpGestureTutorialController;->mShowTasks:Z

    iput-boolean v3, p0, Lcom/android/quickstep/interaction/SwipeUpGestureTutorialController;->mShowPreviousTasks:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/quickstep/interaction/SwipeUpGestureTutorialController;->mRunningWindowAnim:Lcom/android/quickstep/SwipeUpAnimationLogic$RunningWindowAnim;

    return-void
.end method

.method public setNavBarGestureProgress(Ljava/lang/Float;)V
    .locals 2
    .param p1    # Ljava/lang/Float;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    invoke-virtual {p0}, Lcom/android/quickstep/interaction/TutorialController;->skipGestureAttempt()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/quickstep/interaction/TutorialController;->mTutorialType:Lcom/android/quickstep/interaction/TutorialController$TutorialType;

    sget-object v1, Lcom/android/quickstep/interaction/TutorialController$TutorialType;->HOME_NAVIGATION_COMPLETE:Lcom/android/quickstep/interaction/TutorialController$TutorialType;

    if-eq v0, v1, :cond_3

    sget-object v1, Lcom/android/quickstep/interaction/TutorialController$TutorialType;->OVERVIEW_NAVIGATION_COMPLETE:Lcom/android/quickstep/interaction/TutorialController$TutorialType;

    if-ne v0, v1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/quickstep/interaction/SwipeUpGestureTutorialController;->mShowTasks:Z

    iget-object v0, p0, Lcom/android/quickstep/interaction/TutorialController;->mFakeTaskView:Landroid/widget/FrameLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    iget-boolean v0, p0, Lcom/android/quickstep/interaction/SwipeUpGestureTutorialController;->mShowPreviousTasks:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/quickstep/interaction/TutorialController;->mFakePreviousTaskView:Lcom/android/quickstep/interaction/AnimatedTaskView;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    :cond_2
    iget-object v0, p0, Lcom/android/quickstep/interaction/SwipeUpGestureTutorialController;->mRunningWindowAnim:Lcom/android/quickstep/SwipeUpAnimationLogic$RunningWindowAnim;

    if-nez v0, :cond_4

    if-eqz p1, :cond_4

    iget-object p0, p0, Lcom/android/quickstep/interaction/SwipeUpGestureTutorialController;->mTaskViewSwipeUpAnimation:Lcom/android/quickstep/interaction/SwipeUpGestureTutorialController$ViewSwipeUpAnimation;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    invoke-virtual {p0, p1}, Lcom/android/quickstep/SwipeUpAnimationLogic;->updateDisplacement(F)V

    goto :goto_1

    :cond_3
    :goto_0
    iget-object p1, p0, Lcom/android/quickstep/interaction/TutorialController;->mFakeTaskView:Landroid/widget/FrameLayout;

    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->setVisibility(I)V

    iget-object p0, p0, Lcom/android/quickstep/interaction/TutorialController;->mFakePreviousTaskView:Lcom/android/quickstep/interaction/AnimatedTaskView;

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->setVisibility(I)V

    :cond_4
    :goto_1
    return-void
.end method
