.class Lcom/android/quickstep/interaction/SwipeUpGestureTutorialController$ViewSwipeUpAnimation;
.super Lcom/android/quickstep/SwipeUpAnimationLogic;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/quickstep/interaction/SwipeUpGestureTutorialController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ViewSwipeUpAnimation"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/quickstep/interaction/SwipeUpGestureTutorialController;


# direct methods
.method constructor <init>(Lcom/android/quickstep/interaction/SwipeUpGestureTutorialController;Landroid/content/Context;Lcom/android/quickstep/RecentsAnimationDeviceState;Lcom/android/quickstep/GestureState;)V
    .locals 3

    iput-object p1, p0, Lcom/android/quickstep/interaction/SwipeUpGestureTutorialController$ViewSwipeUpAnimation;->this$0:Lcom/android/quickstep/interaction/SwipeUpGestureTutorialController;

    invoke-direct {p0, p2, p3, p4}, Lcom/android/quickstep/SwipeUpAnimationLogic;-><init>(Landroid/content/Context;Lcom/android/quickstep/RecentsAnimationDeviceState;Lcom/android/quickstep/GestureState;)V

    iget-object p2, p0, Lcom/android/quickstep/SwipeUpAnimationLogic;->mRemoteTargetHandles:[Lcom/android/quickstep/RemoteTargetGluer$RemoteTargetHandle;

    new-instance p3, Lcom/android/quickstep/RemoteTargetGluer$RemoteTargetHandle;

    const/4 p4, 0x0

    aget-object v0, p2, p4

    invoke-virtual {v0}, Lcom/android/quickstep/RemoteTargetGluer$RemoteTargetHandle;->getTaskViewSimulator()Lcom/android/quickstep/util/TaskViewSimulator;

    move-result-object v0

    new-instance v1, Lcom/android/quickstep/interaction/SwipeUpGestureTutorialController$FakeTransformParams;

    const/4 v2, 0x0

    invoke-direct {v1, p1, v2}, Lcom/android/quickstep/interaction/SwipeUpGestureTutorialController$FakeTransformParams;-><init>(Lcom/android/quickstep/interaction/SwipeUpGestureTutorialController;Lcom/android/quickstep/interaction/SwipeUpGestureTutorialController$1;)V

    invoke-direct {p3, v0, v1}, Lcom/android/quickstep/RemoteTargetGluer$RemoteTargetHandle;-><init>(Lcom/android/quickstep/util/TaskViewSimulator;Lcom/android/quickstep/util/TransformParams;)V

    aput-object p3, p2, p4

    iget-object p0, p0, Lcom/android/quickstep/SwipeUpAnimationLogic;->mTargetGluer:Lcom/android/quickstep/RemoteTargetGluer;

    invoke-virtual {p0}, Lcom/android/quickstep/RemoteTargetGluer;->getRemoteTargetHandles()[Lcom/android/quickstep/RemoteTargetGluer$RemoteTargetHandle;

    move-result-object p0

    array-length p1, p0

    :goto_0
    if-ge p4, p1, :cond_0

    aget-object p2, p0, p4

    invoke-virtual {p2}, Lcom/android/quickstep/RemoteTargetGluer$RemoteTargetHandle;->getTaskViewSimulator()Lcom/android/quickstep/util/TaskViewSimulator;

    move-result-object p2

    invoke-virtual {p2}, Lcom/android/quickstep/util/TaskViewSimulator;->getOrientationState()Lcom/android/quickstep/util/RecentsOrientedState;

    move-result-object p2

    invoke-virtual {p2}, Lcom/android/quickstep/util/RecentsOrientedState;->ignoreAllowHomeRotationPreference()V

    add-int/lit8 p4, p4, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method static synthetic access$400(Lcom/android/quickstep/interaction/SwipeUpGestureTutorialController$ViewSwipeUpAnimation;)Lcom/android/launcher3/DeviceProfile;
    .locals 0

    iget-object p0, p0, Lcom/android/quickstep/SwipeUpAnimationLogic;->mDp:Lcom/android/launcher3/DeviceProfile;

    return-object p0
.end method


# virtual methods
.method getCurrentShift()Lcom/android/launcher3/anim/AnimatedFloat;
    .locals 0

    iget-object p0, p0, Lcom/android/quickstep/SwipeUpAnimationLogic;->mCurrentShift:Lcom/android/launcher3/anim/AnimatedFloat;

    return-object p0
.end method

.method handleSwipeUpToHome(Landroid/graphics/PointF;)Lcom/android/quickstep/util/RectFSpringAnim;
    .locals 6

    new-instance v0, Landroid/graphics/PointF;

    iget v1, p1, Landroid/graphics/PointF;->x:F

    iget p1, p1, Landroid/graphics/PointF;->y:F

    invoke-direct {v0, v1, p1}, Landroid/graphics/PointF;-><init>(FF)V

    iget-object p1, p0, Lcom/android/quickstep/SwipeUpAnimationLogic;->mCurrentShift:Lcom/android/launcher3/anim/AnimatedFloat;

    iget p1, p1, Lcom/android/launcher3/anim/AnimatedFloat;->value:F

    iget v1, v0, Landroid/graphics/PointF;->y:F

    iget-object v2, p0, Lcom/android/quickstep/SwipeUpAnimationLogic;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/launcher3/util/window/RefreshRateTracker;->getSingleFrameMs(Landroid/content/Context;)I

    move-result v2

    int-to-float v2, v2

    mul-float/2addr v1, v2

    iget v2, p0, Lcom/android/quickstep/SwipeUpAnimationLogic;->mTransitionDragLength:I

    int-to-float v2, v2

    div-float/2addr v1, v2

    sub-float v1, p1, v1

    iget v2, p0, Lcom/android/quickstep/SwipeUpAnimationLogic;->mDragLengthFactor:F

    const/4 v3, 0x0

    invoke-static {v1, v3, v2}, Lcom/android/launcher3/Utilities;->boundToRange(FFF)F

    move-result v1

    const/high16 v2, 0x3f800000    # 1.0f

    sub-float/2addr v2, p1

    iget p1, p0, Lcom/android/quickstep/SwipeUpAnimationLogic;->mTransitionDragLength:I

    int-to-float p1, p1

    mul-float/2addr v2, p1

    iget p1, v0, Landroid/graphics/PointF;->y:F

    div-float/2addr v2, p1

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result p1

    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result p1

    int-to-long v2, p1

    const-wide/16 v4, 0x2

    mul-long/2addr v2, v4

    const-wide/16 v4, 0x15e

    invoke-static {v4, v5, v2, v3}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v2

    new-instance p1, Lcom/android/quickstep/interaction/SwipeUpGestureTutorialController$ViewSwipeUpAnimation$1;

    invoke-direct {p1, p0, v2, v3}, Lcom/android/quickstep/interaction/SwipeUpGestureTutorialController$ViewSwipeUpAnimation$1;-><init>(Lcom/android/quickstep/interaction/SwipeUpGestureTutorialController$ViewSwipeUpAnimation;J)V

    invoke-virtual {p0, v1, p1}, Lcom/android/quickstep/SwipeUpAnimationLogic;->createWindowAnimationToHome(FLcom/android/quickstep/SwipeUpAnimationLogic$HomeAnimationFactory;)[Lcom/android/quickstep/util/RectFSpringAnim;

    move-result-object p1

    const/4 v1, 0x0

    aget-object p1, p1, v1

    iget-object v1, p0, Lcom/android/quickstep/SwipeUpAnimationLogic;->mContext:Landroid/content/Context;

    iget-object p0, p0, Lcom/android/quickstep/SwipeUpAnimationLogic;->mDp:Lcom/android/launcher3/DeviceProfile;

    invoke-virtual {p1, v1, p0, v0}, Lcom/android/quickstep/util/RectFSpringAnim;->start(Landroid/content/Context;Lcom/android/launcher3/DeviceProfile;Landroid/graphics/PointF;)V

    return-object p1
.end method

.method initDp(Lcom/android/launcher3/DeviceProfile;)V
    .locals 4

    invoke-virtual {p0, p1}, Lcom/android/quickstep/SwipeUpAnimationLogic;->initTransitionEndpoints(Lcom/android/launcher3/DeviceProfile;)V

    iget-object p0, p0, Lcom/android/quickstep/SwipeUpAnimationLogic;->mRemoteTargetHandles:[Lcom/android/quickstep/RemoteTargetGluer$RemoteTargetHandle;

    const/4 v0, 0x0

    aget-object p0, p0, v0

    invoke-virtual {p0}, Lcom/android/quickstep/RemoteTargetGluer$RemoteTargetHandle;->getTaskViewSimulator()Lcom/android/quickstep/util/TaskViewSimulator;

    move-result-object p0

    new-instance v1, Landroid/graphics/Rect;

    iget v2, p1, Lcom/android/launcher3/DeviceProfile;->widthPx:I

    iget v3, p1, Lcom/android/launcher3/DeviceProfile;->heightPx:I

    invoke-direct {v1, v0, v0, v2, v3}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-virtual {p1}, Lcom/android/launcher3/DeviceProfile;->getInsets()Landroid/graphics/Rect;

    move-result-object p1

    invoke-virtual {p0, v1, p1}, Lcom/android/quickstep/util/TaskViewSimulator;->setPreviewBounds(Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    return-void
.end method

.method public onCurrentShiftUpdated()V
    .locals 4

    iget-object v0, p0, Lcom/android/quickstep/SwipeUpAnimationLogic;->mRemoteTargetHandles:[Lcom/android/quickstep/RemoteTargetGluer$RemoteTargetHandle;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-virtual {v0}, Lcom/android/quickstep/RemoteTargetGluer$RemoteTargetHandle;->getPlaybackController()Lcom/android/quickstep/util/AnimatorControllerWithResistance;

    move-result-object v0

    iget-object v2, p0, Lcom/android/quickstep/SwipeUpAnimationLogic;->mCurrentShift:Lcom/android/launcher3/anim/AnimatedFloat;

    iget v2, v2, Lcom/android/launcher3/anim/AnimatedFloat;->value:F

    iget v3, p0, Lcom/android/quickstep/SwipeUpAnimationLogic;->mDragLengthFactor:F

    invoke-virtual {v0, v2, v3}, Lcom/android/quickstep/util/AnimatorControllerWithResistance;->setProgress(FF)V

    iget-object v0, p0, Lcom/android/quickstep/SwipeUpAnimationLogic;->mRemoteTargetHandles:[Lcom/android/quickstep/RemoteTargetGluer$RemoteTargetHandle;

    aget-object v0, v0, v1

    invoke-virtual {v0}, Lcom/android/quickstep/RemoteTargetGluer$RemoteTargetHandle;->getTaskViewSimulator()Lcom/android/quickstep/util/TaskViewSimulator;

    move-result-object v0

    iget-object p0, p0, Lcom/android/quickstep/SwipeUpAnimationLogic;->mRemoteTargetHandles:[Lcom/android/quickstep/RemoteTargetGluer$RemoteTargetHandle;

    aget-object p0, p0, v1

    invoke-virtual {p0}, Lcom/android/quickstep/RemoteTargetGluer$RemoteTargetHandle;->getTransformParams()Lcom/android/quickstep/util/TransformParams;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/android/quickstep/util/TaskViewSimulator;->apply(Lcom/android/quickstep/util/TransformParams;)V

    return-void
.end method
