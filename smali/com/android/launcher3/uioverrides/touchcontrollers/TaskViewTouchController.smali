.class public abstract Lcom/android/launcher3/uioverrides/touchcontrollers/TaskViewTouchController;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SourceFile"

# interfaces
.implements Lcom/android/launcher3/util/TouchController;
.implements Lcom/android/launcher3/touch/SingleAxisSwipeDetector$Listener;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lcom/android/launcher3/BaseDraggingActivity;",
        ">",
        "Landroid/animation/AnimatorListenerAdapter;",
        "Lcom/android/launcher3/util/TouchController;",
        "Lcom/android/launcher3/touch/SingleAxisSwipeDetector$Listener;"
    }
.end annotation


# static fields
.field private static final ANIMATION_PROGRESS_FRACTION_MIDPOINT:F = 0.5f

.field private static final MAX_TASK_DISMISS_ANIMATION_DURATION:J = 0x12cL

.field private static final MIN_TASK_DISMISS_ANIMATION_DURATION:J = 0x64L

.field public static final TASK_DISMISS_VIBRATION_FALLBACK:Landroid/os/VibrationEffect;

.field public static final TASK_DISMISS_VIBRATION_PRIMITIVE:I

.field public static final TASK_DISMISS_VIBRATION_PRIMITIVE_SCALE:F = 1.0f


# instance fields
.field protected final mActivity:Lcom/android/launcher3/BaseDraggingActivity;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field private mAllowGoingDown:Z

.field private mAllowGoingUp:Z

.field private mCurrentAnimation:Lcom/android/launcher3/anim/AnimatorPlaybackController;

.field private mCurrentAnimationIsGoingUp:Z

.field private final mDetector:Lcom/android/launcher3/touch/SingleAxisSwipeDetector;

.field private mDisplacementShift:F

.field private mEndDisplacement:F

.field private mFlingBlockCheck:Lcom/android/launcher3/util/FlingBlockCheck;

.field private final mIsRtl:Z

.field private mNoIntercept:Z

.field private mOverrideVelocity:Ljava/lang/Float;

.field private mProgressMultiplier:F

.field private final mRecentsView:Lcom/android/quickstep/views/RecentsView;

.field private mTaskBeingDragged:Lcom/android/quickstep/views/TaskView;

.field private final mTempCords:[I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-boolean v0, Lcom/android/launcher3/Utilities;->ATLEAST_R:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x7

    goto :goto_0

    :cond_0
    const/4 v0, -0x1

    :goto_0
    sput v0, Lcom/android/launcher3/uioverrides/touchcontrollers/TaskViewTouchController;->TASK_DISMISS_VIBRATION_PRIMITIVE:I

    sget-object v0, Lcom/android/quickstep/util/VibrationConstants;->EFFECT_TEXTURE_TICK:Landroid/os/VibrationEffect;

    sput-object v0, Lcom/android/launcher3/uioverrides/touchcontrollers/TaskViewTouchController;->TASK_DISMISS_VIBRATION_FALLBACK:Landroid/os/VibrationEffect;

    return-void
.end method

.method public constructor <init>(Lcom/android/launcher3/BaseDraggingActivity;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    const/4 v0, 0x2

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/android/launcher3/uioverrides/touchcontrollers/TaskViewTouchController;->mTempCords:[I

    new-instance v0, Lcom/android/launcher3/util/FlingBlockCheck;

    invoke-direct {v0}, Lcom/android/launcher3/util/FlingBlockCheck;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/uioverrides/touchcontrollers/TaskViewTouchController;->mFlingBlockCheck:Lcom/android/launcher3/util/FlingBlockCheck;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/launcher3/uioverrides/touchcontrollers/TaskViewTouchController;->mOverrideVelocity:Ljava/lang/Float;

    iput-object p1, p0, Lcom/android/launcher3/uioverrides/touchcontrollers/TaskViewTouchController;->mActivity:Lcom/android/launcher3/BaseDraggingActivity;

    invoke-virtual {p1}, Lcom/android/launcher3/BaseDraggingActivity;->getOverviewPanel()Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/quickstep/views/RecentsView;

    iput-object v0, p0, Lcom/android/launcher3/uioverrides/touchcontrollers/TaskViewTouchController;->mRecentsView:Lcom/android/quickstep/views/RecentsView;

    invoke-virtual {p1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-static {v1}, Lcom/android/launcher3/Utilities;->isRtl(Landroid/content/res/Resources;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/launcher3/uioverrides/touchcontrollers/TaskViewTouchController;->mIsRtl:Z

    invoke-virtual {v0}, Lcom/android/quickstep/views/RecentsView;->getPagedOrientationHandler()Lcom/android/launcher3/touch/PagedOrientationHandler;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/launcher3/touch/PagedOrientationHandler;->getUpDownSwipeDirection()Lcom/android/launcher3/touch/SingleAxisSwipeDetector$Direction;

    move-result-object v0

    new-instance v1, Lcom/android/launcher3/touch/SingleAxisSwipeDetector;

    invoke-direct {v1, p1, p0, v0}, Lcom/android/launcher3/touch/SingleAxisSwipeDetector;-><init>(Landroid/content/Context;Lcom/android/launcher3/touch/SingleAxisSwipeDetector$Listener;Lcom/android/launcher3/touch/SingleAxisSwipeDetector$Direction;)V

    iput-object v1, p0, Lcom/android/launcher3/uioverrides/touchcontrollers/TaskViewTouchController;->mDetector:Lcom/android/launcher3/touch/SingleAxisSwipeDetector;

    return-void
.end method

.method public static synthetic a(Lcom/android/launcher3/uioverrides/touchcontrollers/TaskViewTouchController;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/launcher3/uioverrides/touchcontrollers/TaskViewTouchController;->clearState()V

    return-void
.end method

.method private canInterceptTouch(Landroid/view/MotionEvent;)Z
    .locals 2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEdgeFlags()I

    move-result p1

    and-int/lit16 p1, p1, 0x100

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    iget-object p0, p0, Lcom/android/launcher3/uioverrides/touchcontrollers/TaskViewTouchController;->mCurrentAnimation:Lcom/android/launcher3/anim/AnimatorPlaybackController;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/android/launcher3/anim/AnimatorPlaybackController;->getAnimationPlayer()Landroid/animation/ValueAnimator;

    move-result-object p0

    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->end()V

    :cond_0
    return v0

    :cond_1
    iget-object p1, p0, Lcom/android/launcher3/uioverrides/touchcontrollers/TaskViewTouchController;->mCurrentAnimation:Lcom/android/launcher3/anim/AnimatorPlaybackController;

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Lcom/android/launcher3/anim/AnimatorPlaybackController;->forceFinishIfCloseToEnd()V

    :cond_2
    iget-object p1, p0, Lcom/android/launcher3/uioverrides/touchcontrollers/TaskViewTouchController;->mCurrentAnimation:Lcom/android/launcher3/anim/AnimatorPlaybackController;

    if-eqz p1, :cond_3

    const/4 p0, 0x1

    return p0

    :cond_3
    iget-object p1, p0, Lcom/android/launcher3/uioverrides/touchcontrollers/TaskViewTouchController;->mActivity:Lcom/android/launcher3/BaseDraggingActivity;

    const v1, 0x23ffcbf

    invoke-static {p1, v1}, Lcom/android/launcher3/AbstractFloatingView;->getTopOpenViewWithType(Lcom/android/launcher3/views/ActivityContext;I)Lcom/android/launcher3/AbstractFloatingView;

    move-result-object p1

    if-eqz p1, :cond_4

    return v0

    :cond_4
    invoke-virtual {p0}, Lcom/android/launcher3/uioverrides/touchcontrollers/TaskViewTouchController;->isRecentsInteractive()Z

    move-result p0

    return p0
.end method

.method private clearState()V
    .locals 2

    iget-object v0, p0, Lcom/android/launcher3/uioverrides/touchcontrollers/TaskViewTouchController;->mDetector:Lcom/android/launcher3/touch/SingleAxisSwipeDetector;

    invoke-virtual {v0}, Lcom/android/launcher3/touch/BaseSwipeDetector;->finishedScrolling()V

    iget-object v0, p0, Lcom/android/launcher3/uioverrides/touchcontrollers/TaskViewTouchController;->mDetector:Lcom/android/launcher3/touch/SingleAxisSwipeDetector;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v1}, Lcom/android/launcher3/touch/SingleAxisSwipeDetector;->setDetectableScrollConditions(IZ)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/launcher3/uioverrides/touchcontrollers/TaskViewTouchController;->mTaskBeingDragged:Lcom/android/quickstep/views/TaskView;

    iput-object v0, p0, Lcom/android/launcher3/uioverrides/touchcontrollers/TaskViewTouchController;->mCurrentAnimation:Lcom/android/launcher3/anim/AnimatorPlaybackController;

    return-void
.end method

.method private reInitAnimationController(Z)V
    .locals 13

    iget-object v0, p0, Lcom/android/launcher3/uioverrides/touchcontrollers/TaskViewTouchController;->mCurrentAnimation:Lcom/android/launcher3/anim/AnimatorPlaybackController;

    if-eqz v0, :cond_0

    iget-boolean v1, p0, Lcom/android/launcher3/uioverrides/touchcontrollers/TaskViewTouchController;->mCurrentAnimationIsGoingUp:Z

    if-ne v1, p1, :cond_0

    return-void

    :cond_0
    if-eqz p1, :cond_1

    iget-boolean v1, p0, Lcom/android/launcher3/uioverrides/touchcontrollers/TaskViewTouchController;->mAllowGoingUp:Z

    if-eqz v1, :cond_2

    :cond_1
    if-nez p1, :cond_3

    iget-boolean v1, p0, Lcom/android/launcher3/uioverrides/touchcontrollers/TaskViewTouchController;->mAllowGoingDown:Z

    if-nez v1, :cond_3

    :cond_2
    return-void

    :cond_3
    if-eqz v0, :cond_4

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/launcher3/anim/AnimatorPlaybackController;->setPlayFraction(F)V

    iget-object v0, p0, Lcom/android/launcher3/uioverrides/touchcontrollers/TaskViewTouchController;->mCurrentAnimation:Lcom/android/launcher3/anim/AnimatorPlaybackController;

    invoke-virtual {v0}, Lcom/android/launcher3/anim/AnimatorPlaybackController;->getTarget()Landroid/animation/AnimatorSet;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/animation/AnimatorSet;->removeListener(Landroid/animation/Animator$AnimatorListener;)V

    iget-object v0, p0, Lcom/android/launcher3/uioverrides/touchcontrollers/TaskViewTouchController;->mCurrentAnimation:Lcom/android/launcher3/anim/AnimatorPlaybackController;

    invoke-virtual {v0}, Lcom/android/launcher3/anim/AnimatorPlaybackController;->dispatchOnCancel()Lcom/android/launcher3/anim/AnimatorPlaybackController;

    :cond_4
    iget-object v0, p0, Lcom/android/launcher3/uioverrides/touchcontrollers/TaskViewTouchController;->mRecentsView:Lcom/android/quickstep/views/RecentsView;

    invoke-virtual {v0}, Lcom/android/quickstep/views/RecentsView;->getPagedOrientationHandler()Lcom/android/launcher3/touch/PagedOrientationHandler;

    move-result-object v0

    iput-boolean p1, p0, Lcom/android/launcher3/uioverrides/touchcontrollers/TaskViewTouchController;->mCurrentAnimationIsGoingUp:Z

    iget-object v1, p0, Lcom/android/launcher3/uioverrides/touchcontrollers/TaskViewTouchController;->mActivity:Lcom/android/launcher3/BaseDraggingActivity;

    invoke-interface {v1}, Lcom/android/launcher3/views/ActivityContext;->getDragLayer()Lcom/android/launcher3/views/BaseDragLayer;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/android/launcher3/touch/PagedOrientationHandler;->getSecondaryDimension(Landroid/view/View;)I

    move-result v2

    mul-int/lit8 v3, v2, 0x2

    int-to-long v9, v3

    iget-boolean v3, p0, Lcom/android/launcher3/uioverrides/touchcontrollers/TaskViewTouchController;->mIsRtl:Z

    invoke-interface {v0, v3}, Lcom/android/launcher3/touch/PagedOrientationHandler;->getTaskDragDisplacementFactor(Z)I

    move-result v3

    iget-object v4, p0, Lcom/android/launcher3/uioverrides/touchcontrollers/TaskViewTouchController;->mTaskBeingDragged:Lcom/android/quickstep/views/TaskView;

    invoke-interface {v0, v4}, Lcom/android/launcher3/touch/PagedOrientationHandler;->getSecondaryDimension(Landroid/view/View;)I

    move-result v12

    if-eqz p1, :cond_6

    sget-object p1, Lcom/android/launcher3/anim/Interpolators;->LINEAR:Landroid/view/animation/Interpolator;

    new-instance v0, Lcom/android/launcher3/anim/PendingAnimation;

    invoke-direct {v0, v9, v10}, Lcom/android/launcher3/anim/PendingAnimation;-><init>(J)V

    iget-object v1, p0, Lcom/android/launcher3/uioverrides/touchcontrollers/TaskViewTouchController;->mRecentsView:Lcom/android/quickstep/views/RecentsView;

    invoke-virtual {v1}, Lcom/android/quickstep/views/RecentsView;->isExistRecentsAnimationAndLiveTileDisable()Z

    move-result v1

    if-nez v1, :cond_5

    iget-object v4, p0, Lcom/android/launcher3/uioverrides/touchcontrollers/TaskViewTouchController;->mRecentsView:Lcom/android/quickstep/views/RecentsView;

    iget-object v6, p0, Lcom/android/launcher3/uioverrides/touchcontrollers/TaskViewTouchController;->mTaskBeingDragged:Lcom/android/quickstep/views/TaskView;

    const/4 v7, 0x1

    const/4 v8, 0x1

    const/4 v11, 0x0

    move-object v5, v0

    invoke-virtual/range {v4 .. v11}, Lcom/android/quickstep/views/RecentsView;->createTaskDismissAnimation(Lcom/android/launcher3/anim/PendingAnimation;Lcom/android/quickstep/views/TaskView;ZZJZ)V

    :cond_5
    neg-int v1, v12

    int-to-float v1, v1

    iput v1, p0, Lcom/android/launcher3/uioverrides/touchcontrollers/TaskViewTouchController;->mEndDisplacement:F

    goto :goto_2

    :cond_6
    sget-object p1, Lcom/android/launcher3/anim/Interpolators;->ZOOM_IN:Landroid/view/animation/Interpolator;

    iget-object v4, p0, Lcom/android/launcher3/uioverrides/touchcontrollers/TaskViewTouchController;->mRecentsView:Lcom/android/quickstep/views/RecentsView;

    iget-object v5, p0, Lcom/android/launcher3/uioverrides/touchcontrollers/TaskViewTouchController;->mTaskBeingDragged:Lcom/android/quickstep/views/TaskView;

    invoke-virtual {v4, v5, v9, v10, p1}, Lcom/android/quickstep/views/RecentsView;->createTaskLaunchAnimation(Lcom/android/quickstep/views/TaskView;JLandroid/view/animation/Interpolator;)Lcom/android/launcher3/anim/PendingAnimation;

    move-result-object v4

    iget-object v5, p0, Lcom/android/launcher3/uioverrides/touchcontrollers/TaskViewTouchController;->mTaskBeingDragged:Lcom/android/quickstep/views/TaskView;

    invoke-virtual {v5}, Lcom/android/quickstep/views/TaskView;->getThumbnail()Lcom/android/quickstep/views/TaskThumbnailView;

    move-result-object v5

    iget-object v6, p0, Lcom/android/launcher3/uioverrides/touchcontrollers/TaskViewTouchController;->mTempCords:[I

    invoke-interface {v0, v5}, Lcom/android/launcher3/touch/PagedOrientationHandler;->getSecondaryDimension(Landroid/view/View;)I

    move-result v7

    const/4 v8, 0x1

    aput v7, v6, v8

    iget-object v6, p0, Lcom/android/launcher3/uioverrides/touchcontrollers/TaskViewTouchController;->mTempCords:[I

    invoke-virtual {v1, v5, v6}, Lcom/android/launcher3/views/BaseDragLayer;->getDescendantCoordRelativeToSelf(Landroid/view/View;[I)F

    sget-object v1, Lcom/android/launcher3/touch/PagedOrientationHandler;->LANDSCAPE:Lcom/android/launcher3/touch/PagedOrientationHandler;

    if-eq v0, v1, :cond_8

    sget-object v1, Lcom/android/launcher3/touch/PagedOrientationHandler;->SEASCAPE:Lcom/android/launcher3/touch/PagedOrientationHandler;

    if-ne v0, v1, :cond_7

    goto :goto_0

    :cond_7
    iget-object v0, p0, Lcom/android/launcher3/uioverrides/touchcontrollers/TaskViewTouchController;->mTempCords:[I

    aget v0, v0, v8

    goto :goto_1

    :cond_8
    :goto_0
    iget-object v0, p0, Lcom/android/launcher3/uioverrides/touchcontrollers/TaskViewTouchController;->mTempCords:[I

    const/4 v1, 0x0

    aget v0, v0, v1

    :goto_1
    sub-int/2addr v2, v0

    int-to-float v0, v2

    iput v0, p0, Lcom/android/launcher3/uioverrides/touchcontrollers/TaskViewTouchController;->mEndDisplacement:F

    move-object v0, v4

    :goto_2
    iget v1, p0, Lcom/android/launcher3/uioverrides/touchcontrollers/TaskViewTouchController;->mEndDisplacement:F

    int-to-float v2, v3

    mul-float/2addr v1, v2

    iput v1, p0, Lcom/android/launcher3/uioverrides/touchcontrollers/TaskViewTouchController;->mEndDisplacement:F

    invoke-virtual {v0}, Lcom/android/launcher3/anim/PendingAnimation;->createPlaybackController()Lcom/android/launcher3/anim/AnimatorPlaybackController;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher3/uioverrides/touchcontrollers/TaskViewTouchController;->mCurrentAnimation:Lcom/android/launcher3/anim/AnimatorPlaybackController;

    invoke-virtual {v0}, Lcom/android/launcher3/anim/AnimatorPlaybackController;->getTarget()Landroid/animation/AnimatorSet;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iget-object p1, p0, Lcom/android/launcher3/uioverrides/touchcontrollers/TaskViewTouchController;->mCurrentAnimation:Lcom/android/launcher3/anim/AnimatorPlaybackController;

    invoke-virtual {p0, p1}, Lcom/android/launcher3/uioverrides/touchcontrollers/TaskViewTouchController;->onUserControlledAnimationCreated(Lcom/android/launcher3/anim/AnimatorPlaybackController;)V

    iget-object p1, p0, Lcom/android/launcher3/uioverrides/touchcontrollers/TaskViewTouchController;->mCurrentAnimation:Lcom/android/launcher3/anim/AnimatorPlaybackController;

    invoke-virtual {p1}, Lcom/android/launcher3/anim/AnimatorPlaybackController;->getTarget()Landroid/animation/AnimatorSet;

    move-result-object p1

    invoke-virtual {p1, p0}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    iget-object p1, p0, Lcom/android/launcher3/uioverrides/touchcontrollers/TaskViewTouchController;->mCurrentAnimation:Lcom/android/launcher3/anim/AnimatorPlaybackController;

    invoke-virtual {p1}, Lcom/android/launcher3/anim/AnimatorPlaybackController;->dispatchOnStart()Lcom/android/launcher3/anim/AnimatorPlaybackController;

    const/high16 p1, 0x3f800000    # 1.0f

    iget v0, p0, Lcom/android/launcher3/uioverrides/touchcontrollers/TaskViewTouchController;->mEndDisplacement:F

    div-float/2addr p1, v0

    iput p1, p0, Lcom/android/launcher3/uioverrides/touchcontrollers/TaskViewTouchController;->mProgressMultiplier:F

    return-void
.end method


# virtual methods
.method protected abstract isRecentsInteractive()Z
.end method

.method protected abstract isRecentsModal()Z
.end method

.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 1

    iget-object v0, p0, Lcom/android/launcher3/uioverrides/touchcontrollers/TaskViewTouchController;->mCurrentAnimation:Lcom/android/launcher3/anim/AnimatorPlaybackController;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/launcher3/anim/AnimatorPlaybackController;->getTarget()Landroid/animation/AnimatorSet;

    move-result-object v0

    if-ne p1, v0, :cond_0

    invoke-direct {p0}, Lcom/android/launcher3/uioverrides/touchcontrollers/TaskViewTouchController;->clearState()V

    :cond_0
    return-void
.end method

.method public onControllerInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 7

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x3

    const/4 v2, 0x1

    if-eq v0, v2, :cond_0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-ne v0, v1, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/android/launcher3/uioverrides/touchcontrollers/TaskViewTouchController;->mCurrentAnimation:Lcom/android/launcher3/anim/AnimatorPlaybackController;

    if-nez v0, :cond_1

    invoke-direct {p0}, Lcom/android/launcher3/uioverrides/touchcontrollers/TaskViewTouchController;->clearState()V

    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v3, 0x0

    if-nez v0, :cond_b

    invoke-direct {p0, p1}, Lcom/android/launcher3/uioverrides/touchcontrollers/TaskViewTouchController;->canInterceptTouch(Landroid/view/MotionEvent;)Z

    move-result v0

    xor-int/2addr v0, v2

    iput-boolean v0, p0, Lcom/android/launcher3/uioverrides/touchcontrollers/TaskViewTouchController;->mNoIntercept:Z

    if-eqz v0, :cond_2

    return v3

    :cond_2
    iget-object v0, p0, Lcom/android/launcher3/uioverrides/touchcontrollers/TaskViewTouchController;->mCurrentAnimation:Lcom/android/launcher3/anim/AnimatorPlaybackController;

    if-eqz v0, :cond_3

    goto/16 :goto_4

    :cond_3
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/launcher3/uioverrides/touchcontrollers/TaskViewTouchController;->mTaskBeingDragged:Lcom/android/quickstep/views/TaskView;

    move v4, v3

    :goto_0
    iget-object v5, p0, Lcom/android/launcher3/uioverrides/touchcontrollers/TaskViewTouchController;->mRecentsView:Lcom/android/quickstep/views/RecentsView;

    invoke-virtual {v5}, Lcom/android/quickstep/views/RecentsView;->getTaskViewCount()I

    move-result v5

    if-ge v4, v5, :cond_9

    iget-object v5, p0, Lcom/android/launcher3/uioverrides/touchcontrollers/TaskViewTouchController;->mRecentsView:Lcom/android/quickstep/views/RecentsView;

    invoke-virtual {v5, v4}, Lcom/android/quickstep/views/RecentsView;->getTaskViewAt(I)Lcom/android/quickstep/views/TaskView;

    move-result-object v5

    iget-object v6, p0, Lcom/android/launcher3/uioverrides/touchcontrollers/TaskViewTouchController;->mRecentsView:Lcom/android/quickstep/views/RecentsView;

    invoke-virtual {v6, v5}, Lcom/android/quickstep/views/RecentsView;->isTaskViewVisible(Lcom/android/quickstep/views/TaskView;)Z

    move-result v6

    if-eqz v6, :cond_8

    iget-object v6, p0, Lcom/android/launcher3/uioverrides/touchcontrollers/TaskViewTouchController;->mActivity:Lcom/android/launcher3/BaseDraggingActivity;

    invoke-interface {v6}, Lcom/android/launcher3/views/ActivityContext;->getDragLayer()Lcom/android/launcher3/views/BaseDragLayer;

    move-result-object v6

    invoke-virtual {v6, v5, p1}, Lcom/android/launcher3/views/BaseDragLayer;->isEventOverView(Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result v6

    if-eqz v6, :cond_8

    invoke-virtual {p0}, Lcom/android/launcher3/uioverrides/touchcontrollers/TaskViewTouchController;->isRecentsModal()Z

    move-result v6

    if-eqz v6, :cond_4

    iput-object v0, p0, Lcom/android/launcher3/uioverrides/touchcontrollers/TaskViewTouchController;->mTaskBeingDragged:Lcom/android/quickstep/views/TaskView;

    goto :goto_2

    :cond_4
    iput-object v5, p0, Lcom/android/launcher3/uioverrides/touchcontrollers/TaskViewTouchController;->mTaskBeingDragged:Lcom/android/quickstep/views/TaskView;

    iget-object v0, p0, Lcom/android/launcher3/uioverrides/touchcontrollers/TaskViewTouchController;->mRecentsView:Lcom/android/quickstep/views/RecentsView;

    invoke-virtual {v0}, Lcom/android/quickstep/views/RecentsView;->getPagedOrientationHandler()Lcom/android/launcher3/touch/PagedOrientationHandler;

    move-result-object v0

    iget-boolean v5, p0, Lcom/android/launcher3/uioverrides/touchcontrollers/TaskViewTouchController;->mIsRtl:Z

    invoke-interface {v0, v5}, Lcom/android/launcher3/touch/PagedOrientationHandler;->getUpDirection(Z)I

    move-result v0

    iput-boolean v2, p0, Lcom/android/launcher3/uioverrides/touchcontrollers/TaskViewTouchController;->mAllowGoingUp:Z

    iget-object v5, p0, Lcom/android/launcher3/uioverrides/touchcontrollers/TaskViewTouchController;->mRecentsView:Lcom/android/quickstep/views/RecentsView;

    invoke-virtual {v5}, Lcom/android/launcher3/PagedView;->getCurrentPage()I

    move-result v5

    if-ne v4, v5, :cond_6

    iget-object v5, p0, Lcom/android/launcher3/uioverrides/touchcontrollers/TaskViewTouchController;->mActivity:Lcom/android/launcher3/BaseDraggingActivity;

    invoke-static {v5}, Lcom/android/launcher3/util/DisplayController;->getNavigationMode(Landroid/content/Context;)Lcom/android/launcher3/util/NavigationMode;

    move-result-object v5

    iget-boolean v5, v5, Lcom/android/launcher3/util/NavigationMode;->hasGestures:Z

    if-eqz v5, :cond_6

    iget-object v5, p0, Lcom/android/launcher3/uioverrides/touchcontrollers/TaskViewTouchController;->mRecentsView:Lcom/android/quickstep/views/RecentsView;

    invoke-virtual {v5}, Lcom/android/quickstep/views/RecentsView;->showAsGrid()Z

    move-result v5

    if-eqz v5, :cond_5

    iget-object v5, p0, Lcom/android/launcher3/uioverrides/touchcontrollers/TaskViewTouchController;->mTaskBeingDragged:Lcom/android/quickstep/views/TaskView;

    invoke-virtual {v5}, Lcom/android/quickstep/views/TaskView;->isFocusedTask()Z

    move-result v5

    if-eqz v5, :cond_6

    :cond_5
    iget-object v5, p0, Lcom/android/launcher3/uioverrides/touchcontrollers/TaskViewTouchController;->mRecentsView:Lcom/android/quickstep/views/RecentsView;

    invoke-virtual {v5, v4}, Lcom/android/quickstep/views/RecentsView;->isTaskInExpectedScrollPosition(I)Z

    move-result v4

    if-eqz v4, :cond_6

    move v4, v2

    goto :goto_1

    :cond_6
    move v4, v3

    :goto_1
    iput-boolean v4, p0, Lcom/android/launcher3/uioverrides/touchcontrollers/TaskViewTouchController;->mAllowGoingDown:Z

    if-eqz v4, :cond_7

    goto :goto_3

    :cond_7
    move v1, v0

    goto :goto_3

    :cond_8
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_9
    :goto_2
    move v1, v3

    :goto_3
    iget-object v0, p0, Lcom/android/launcher3/uioverrides/touchcontrollers/TaskViewTouchController;->mTaskBeingDragged:Lcom/android/quickstep/views/TaskView;

    if-nez v0, :cond_a

    iput-boolean v2, p0, Lcom/android/launcher3/uioverrides/touchcontrollers/TaskViewTouchController;->mNoIntercept:Z

    return v3

    :cond_a
    move v2, v3

    :goto_4
    iget-object v0, p0, Lcom/android/launcher3/uioverrides/touchcontrollers/TaskViewTouchController;->mDetector:Lcom/android/launcher3/touch/SingleAxisSwipeDetector;

    invoke-virtual {v0, v1, v2}, Lcom/android/launcher3/touch/SingleAxisSwipeDetector;->setDetectableScrollConditions(IZ)V

    :cond_b
    iget-boolean v0, p0, Lcom/android/launcher3/uioverrides/touchcontrollers/TaskViewTouchController;->mNoIntercept:Z

    if-eqz v0, :cond_c

    return v3

    :cond_c
    invoke-virtual {p0, p1}, Lcom/android/launcher3/uioverrides/touchcontrollers/TaskViewTouchController;->onControllerTouchEvent(Landroid/view/MotionEvent;)Z

    iget-object p0, p0, Lcom/android/launcher3/uioverrides/touchcontrollers/TaskViewTouchController;->mDetector:Lcom/android/launcher3/touch/SingleAxisSwipeDetector;

    invoke-virtual {p0}, Lcom/android/launcher3/touch/BaseSwipeDetector;->isDraggingOrSettling()Z

    move-result p0

    return p0
.end method

.method public onControllerTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 0

    iget-object p0, p0, Lcom/android/launcher3/uioverrides/touchcontrollers/TaskViewTouchController;->mDetector:Lcom/android/launcher3/touch/SingleAxisSwipeDetector;

    invoke-virtual {p0, p1}, Lcom/android/launcher3/touch/BaseSwipeDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method public onDrag(F)Z
    .locals 8

    iget-object v0, p0, Lcom/android/launcher3/uioverrides/touchcontrollers/TaskViewTouchController;->mRecentsView:Lcom/android/quickstep/views/RecentsView;

    invoke-virtual {v0}, Lcom/android/quickstep/views/RecentsView;->getPagedOrientationHandler()Lcom/android/launcher3/touch/PagedOrientationHandler;

    move-result-object v0

    iget v1, p0, Lcom/android/launcher3/uioverrides/touchcontrollers/TaskViewTouchController;->mDisplacementShift:F

    add-float/2addr p1, v1

    const/4 v1, 0x0

    cmpl-float v2, p1, v1

    if-nez v2, :cond_0

    iget-boolean v2, p0, Lcom/android/launcher3/uioverrides/touchcontrollers/TaskViewTouchController;->mCurrentAnimationIsGoingUp:Z

    goto :goto_0

    :cond_0
    iget-boolean v2, p0, Lcom/android/launcher3/uioverrides/touchcontrollers/TaskViewTouchController;->mIsRtl:Z

    invoke-interface {v0, p1, v2}, Lcom/android/launcher3/touch/PagedOrientationHandler;->isGoingUp(FZ)Z

    move-result v2

    :goto_0
    iget-boolean v3, p0, Lcom/android/launcher3/uioverrides/touchcontrollers/TaskViewTouchController;->mCurrentAnimationIsGoingUp:Z

    if-eq v2, v3, :cond_1

    invoke-direct {p0, v2}, Lcom/android/launcher3/uioverrides/touchcontrollers/TaskViewTouchController;->reInitAnimationController(Z)V

    iget-object v3, p0, Lcom/android/launcher3/uioverrides/touchcontrollers/TaskViewTouchController;->mFlingBlockCheck:Lcom/android/launcher3/util/FlingBlockCheck;

    invoke-virtual {v3}, Lcom/android/launcher3/util/FlingBlockCheck;->blockFling()V

    goto :goto_1

    :cond_1
    iget-object v3, p0, Lcom/android/launcher3/uioverrides/touchcontrollers/TaskViewTouchController;->mFlingBlockCheck:Lcom/android/launcher3/util/FlingBlockCheck;

    invoke-virtual {v3}, Lcom/android/launcher3/util/FlingBlockCheck;->onEvent()V

    :goto_1
    const/high16 v3, 0x3f800000    # 1.0f

    if-eqz v2, :cond_5

    iget-object v2, p0, Lcom/android/launcher3/uioverrides/touchcontrollers/TaskViewTouchController;->mCurrentAnimation:Lcom/android/launcher3/anim/AnimatorPlaybackController;

    invoke-virtual {v2}, Lcom/android/launcher3/anim/AnimatorPlaybackController;->getProgressFraction()F

    move-result v2

    const/high16 v4, 0x3f000000    # 0.5f

    cmpg-float v2, v2, v4

    if-gez v2, :cond_2

    iget-object v0, p0, Lcom/android/launcher3/uioverrides/touchcontrollers/TaskViewTouchController;->mCurrentAnimation:Lcom/android/launcher3/anim/AnimatorPlaybackController;

    iget p0, p0, Lcom/android/launcher3/uioverrides/touchcontrollers/TaskViewTouchController;->mProgressMultiplier:F

    mul-float/2addr p1, p0

    const/high16 p0, 0x40000000    # 2.0f

    div-float/2addr p1, p0

    goto :goto_3

    :cond_2
    const p1, 0x7f070131

    iget-object v1, p0, Lcom/android/launcher3/uioverrides/touchcontrollers/TaskViewTouchController;->mRecentsView:Lcom/android/quickstep/views/RecentsView;

    invoke-virtual {v1}, Lcom/android/quickstep/views/RecentsView;->showAsGrid()Z

    move-result v1

    if-eqz v1, :cond_4

    iget-object p1, p0, Lcom/android/launcher3/uioverrides/touchcontrollers/TaskViewTouchController;->mTaskBeingDragged:Lcom/android/quickstep/views/TaskView;

    invoke-virtual {p1}, Lcom/android/quickstep/views/TaskView;->isFocusedTask()Z

    move-result p1

    if-eqz p1, :cond_3

    const p1, 0x7f070133

    goto :goto_2

    :cond_3
    const p1, 0x7f070132

    :cond_4
    :goto_2
    iget-object v1, p0, Lcom/android/launcher3/uioverrides/touchcontrollers/TaskViewTouchController;->mTaskBeingDragged:Lcom/android/quickstep/views/TaskView;

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p1

    neg-float p1, p1

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    iput-object p1, p0, Lcom/android/launcher3/uioverrides/touchcontrollers/TaskViewTouchController;->mOverrideVelocity:Ljava/lang/Float;

    iget-boolean p1, p0, Lcom/android/launcher3/uioverrides/touchcontrollers/TaskViewTouchController;->mIsRtl:Z

    invoke-interface {v0, p1}, Lcom/android/launcher3/touch/PagedOrientationHandler;->getTaskDragDisplacementFactor(Z)I

    move-result p1

    iget-object v0, p0, Lcom/android/launcher3/uioverrides/touchcontrollers/TaskViewTouchController;->mOverrideVelocity:Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    int-to-float p1, p1

    mul-float/2addr v0, p1

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    iput-object p1, p0, Lcom/android/launcher3/uioverrides/touchcontrollers/TaskViewTouchController;->mOverrideVelocity:Ljava/lang/Float;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    const/4 v4, 0x1

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-wide v0, v2

    invoke-static/range {v0 .. v7}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    move-result-object p1

    iget-object p0, p0, Lcom/android/launcher3/uioverrides/touchcontrollers/TaskViewTouchController;->mDetector:Lcom/android/launcher3/touch/SingleAxisSwipeDetector;

    invoke-virtual {p0, p1}, Lcom/android/launcher3/touch/BaseSwipeDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    invoke-virtual {p1}, Landroid/view/MotionEvent;->recycle()V

    goto :goto_4

    :cond_5
    iget-object v0, p0, Lcom/android/launcher3/uioverrides/touchcontrollers/TaskViewTouchController;->mCurrentAnimation:Lcom/android/launcher3/anim/AnimatorPlaybackController;

    iget p0, p0, Lcom/android/launcher3/uioverrides/touchcontrollers/TaskViewTouchController;->mProgressMultiplier:F

    mul-float/2addr p1, p0

    :goto_3
    invoke-static {p1, v1, v3}, Lcom/android/launcher3/Utilities;->boundToRange(FFF)F

    move-result p0

    invoke-virtual {v0, p0}, Lcom/android/launcher3/anim/AnimatorPlaybackController;->setPlayFraction(F)V

    :goto_4
    const/4 p0, 0x1

    return p0
.end method

.method public onDragEnd(F)V
    .locals 18

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/launcher3/uioverrides/touchcontrollers/TaskViewTouchController;->mOverrideVelocity:Ljava/lang/Float;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    const/4 v2, 0x0

    iput-object v2, v0, Lcom/android/launcher3/uioverrides/touchcontrollers/TaskViewTouchController;->mOverrideVelocity:Ljava/lang/Float;

    goto :goto_0

    :cond_0
    move/from16 v1, p1

    :goto_0
    iget-object v2, v0, Lcom/android/launcher3/uioverrides/touchcontrollers/TaskViewTouchController;->mTaskBeingDragged:Lcom/android/quickstep/views/TaskView;

    invoke-virtual {v2}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f07034b

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    neg-float v3, v2

    invoke-static {v1, v3, v2}, Lcom/android/launcher3/Utilities;->boundToRange(FFF)F

    move-result v1

    iget-object v2, v0, Lcom/android/launcher3/uioverrides/touchcontrollers/TaskViewTouchController;->mDetector:Lcom/android/launcher3/touch/SingleAxisSwipeDetector;

    invoke-virtual {v2, v1}, Lcom/android/launcher3/touch/BaseSwipeDetector;->isFling(F)Z

    move-result v2

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v2, :cond_1

    iget-object v5, v0, Lcom/android/launcher3/uioverrides/touchcontrollers/TaskViewTouchController;->mFlingBlockCheck:Lcom/android/launcher3/util/FlingBlockCheck;

    invoke-virtual {v5}, Lcom/android/launcher3/util/FlingBlockCheck;->isBlocked()Z

    move-result v5

    if-eqz v5, :cond_1

    move v5, v3

    goto :goto_1

    :cond_1
    move v5, v4

    :goto_1
    if-eqz v5, :cond_2

    move v2, v4

    :cond_2
    iget-object v6, v0, Lcom/android/launcher3/uioverrides/touchcontrollers/TaskViewTouchController;->mRecentsView:Lcom/android/quickstep/views/RecentsView;

    invoke-virtual {v6}, Lcom/android/quickstep/views/RecentsView;->getPagedOrientationHandler()Lcom/android/launcher3/touch/PagedOrientationHandler;

    move-result-object v6

    iget-boolean v7, v0, Lcom/android/launcher3/uioverrides/touchcontrollers/TaskViewTouchController;->mIsRtl:Z

    invoke-interface {v6, v1, v7}, Lcom/android/launcher3/touch/PagedOrientationHandler;->isGoingUp(FZ)Z

    move-result v7

    iget-object v8, v0, Lcom/android/launcher3/uioverrides/touchcontrollers/TaskViewTouchController;->mCurrentAnimation:Lcom/android/launcher3/anim/AnimatorPlaybackController;

    invoke-virtual {v8}, Lcom/android/launcher3/anim/AnimatorPlaybackController;->getProgressFraction()F

    move-result v8

    iget-object v9, v0, Lcom/android/launcher3/uioverrides/touchcontrollers/TaskViewTouchController;->mCurrentAnimation:Lcom/android/launcher3/anim/AnimatorPlaybackController;

    invoke-virtual {v9}, Lcom/android/launcher3/anim/AnimatorPlaybackController;->getInterpolatedProgress()F

    move-result v9

    if-eqz v2, :cond_3

    iget-boolean v2, v0, Lcom/android/launcher3/uioverrides/touchcontrollers/TaskViewTouchController;->mCurrentAnimationIsGoingUp:Z

    if-ne v7, v2, :cond_4

    goto :goto_2

    :cond_3
    const/high16 v2, 0x3f000000    # 0.5f

    cmpl-float v2, v9, v2

    if-lez v2, :cond_4

    goto :goto_2

    :cond_4
    move v3, v4

    :goto_2
    move v11, v3

    if-eqz v11, :cond_5

    const/high16 v2, 0x3f800000    # 1.0f

    sub-float v8, v2, v8

    :cond_5
    invoke-static {v1, v8}, Lcom/android/launcher3/touch/BaseSwipeDetector;->calculateDuration(FF)J

    move-result-wide v2

    if-eqz v5, :cond_6

    if-nez v11, :cond_6

    invoke-static {v1}, Lcom/android/launcher3/LauncherAnimUtils;->blockedFlingDurationFactor(F)I

    move-result v4

    int-to-long v4, v4

    mul-long/2addr v2, v4

    :cond_6
    move-wide v12, v2

    const-wide/16 v14, 0x64

    const-wide/16 v16, 0x12c

    invoke-static/range {v12 .. v17}, Lcom/android/launcher3/Utilities;->boundToRange(JJJ)J

    move-result-wide v14

    iget-object v2, v0, Lcom/android/launcher3/uioverrides/touchcontrollers/TaskViewTouchController;->mCurrentAnimation:Lcom/android/launcher3/anim/AnimatorPlaybackController;

    new-instance v3, Lcom/android/launcher3/uioverrides/touchcontrollers/r;

    invoke-direct {v3, v0}, Lcom/android/launcher3/uioverrides/touchcontrollers/r;-><init>(Lcom/android/launcher3/uioverrides/touchcontrollers/TaskViewTouchController;)V

    invoke-virtual {v2, v3}, Lcom/android/launcher3/anim/AnimatorPlaybackController;->setEndAction(Ljava/lang/Runnable;)V

    iget-object v9, v0, Lcom/android/launcher3/uioverrides/touchcontrollers/TaskViewTouchController;->mCurrentAnimation:Lcom/android/launcher3/anim/AnimatorPlaybackController;

    iget-object v10, v0, Lcom/android/launcher3/uioverrides/touchcontrollers/TaskViewTouchController;->mActivity:Lcom/android/launcher3/BaseDraggingActivity;

    invoke-interface {v6}, Lcom/android/launcher3/touch/PagedOrientationHandler;->getSecondaryTranslationDirectionFactor()I

    move-result v2

    int-to-float v2, v2

    mul-float v12, v1, v2

    iget v13, v0, Lcom/android/launcher3/uioverrides/touchcontrollers/TaskViewTouchController;->mEndDisplacement:F

    invoke-virtual/range {v9 .. v15}, Lcom/android/launcher3/anim/AnimatorPlaybackController;->startWithVelocity(Landroid/content/Context;ZFFJ)V

    return-void
.end method

.method public onDragStart(ZF)V
    .locals 1

    iget-object p1, p0, Lcom/android/launcher3/uioverrides/touchcontrollers/TaskViewTouchController;->mRecentsView:Lcom/android/quickstep/views/RecentsView;

    invoke-virtual {p1}, Lcom/android/quickstep/views/RecentsView;->getPagedOrientationHandler()Lcom/android/launcher3/touch/PagedOrientationHandler;

    move-result-object p1

    iget-object v0, p0, Lcom/android/launcher3/uioverrides/touchcontrollers/TaskViewTouchController;->mCurrentAnimation:Lcom/android/launcher3/anim/AnimatorPlaybackController;

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/launcher3/uioverrides/touchcontrollers/TaskViewTouchController;->mIsRtl:Z

    invoke-interface {p1, p2, v0}, Lcom/android/launcher3/touch/PagedOrientationHandler;->isGoingUp(FZ)Z

    move-result p1

    invoke-direct {p0, p1}, Lcom/android/launcher3/uioverrides/touchcontrollers/TaskViewTouchController;->reInitAnimationController(Z)V

    const/4 p1, 0x0

    iput p1, p0, Lcom/android/launcher3/uioverrides/touchcontrollers/TaskViewTouchController;->mDisplacementShift:F

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lcom/android/launcher3/anim/AnimatorPlaybackController;->getProgressFraction()F

    move-result p1

    iget p2, p0, Lcom/android/launcher3/uioverrides/touchcontrollers/TaskViewTouchController;->mProgressMultiplier:F

    div-float/2addr p1, p2

    iput p1, p0, Lcom/android/launcher3/uioverrides/touchcontrollers/TaskViewTouchController;->mDisplacementShift:F

    iget-object p1, p0, Lcom/android/launcher3/uioverrides/touchcontrollers/TaskViewTouchController;->mCurrentAnimation:Lcom/android/launcher3/anim/AnimatorPlaybackController;

    invoke-virtual {p1}, Lcom/android/launcher3/anim/AnimatorPlaybackController;->pause()V

    :goto_0
    iget-object p1, p0, Lcom/android/launcher3/uioverrides/touchcontrollers/TaskViewTouchController;->mFlingBlockCheck:Lcom/android/launcher3/util/FlingBlockCheck;

    invoke-virtual {p1}, Lcom/android/launcher3/util/FlingBlockCheck;->unblockFling()V

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/android/launcher3/uioverrides/touchcontrollers/TaskViewTouchController;->mOverrideVelocity:Ljava/lang/Float;

    return-void
.end method

.method protected onUserControlledAnimationCreated(Lcom/android/launcher3/anim/AnimatorPlaybackController;)V
    .locals 0

    return-void
.end method
