.class public Lcom/android/quickstep/util/TaskViewSimulator;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/quickstep/util/TransformParams$BuilderProxy;


# static fields
.field private static final DEBUG:Z = false

.field private static final TAG:Ljava/lang/String; = "TaskViewSimulator"


# instance fields
.field public final fullScreenProgress:Lcom/android/launcher3/anim/AnimatedFloat;

.field private mAlpha:F

.field private final mContext:Landroid/content/Context;

.field private final mCurrentFullscreenParams:Lcom/android/quickstep/views/TaskView$FullscreenDrawParams;

.field private mDp:Lcom/android/launcher3/DeviceProfile;

.field private mDrawsBelowRecents:Ljava/lang/Boolean;

.field private final mInversePositionMatrix:Landroid/graphics/Matrix;

.field private mIsDesktopTask:Z

.field private mIsGridTask:Z

.field private final mIsRecentsRtl:Z

.field private mLayoutValid:Z

.field private final mMatrix:Landroid/graphics/Matrix;

.field private final mMatrixTmp:Landroid/graphics/Matrix;

.field private mOrientationState:Lcom/android/quickstep/util/RecentsOrientedState;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field private mOrientationStateId:I

.field private final mPivot:Landroid/graphics/PointF;

.field private final mPositionHelper:Lcom/android/systemui/shared/recents/utilities/PreviewPositionHelper;

.field private final mSizeStrategy:Lcom/android/quickstep/BaseActivityInterface;

.field private mSmoothAnimCornerRadius:F

.field private mSmoothAnimCropRect:Landroid/graphics/Rect;

.field private mSmoothAnimMatrix:Landroid/graphics/Matrix;

.field private mSplitBounds:Lcom/android/launcher3/util/SplitConfigurationOptions$SplitBounds;

.field private mStagePosition:I

.field private final mTaskRect:Landroid/graphics/Rect;

.field private mTaskRectTranslationX:I

.field private mTaskRectTranslationY:I

.field private final mTempPoint:[F

.field private final mTempRectF:Landroid/graphics/RectF;

.field private final mThumbnailData:Lcom/android/systemui/shared/recents/model/ThumbnailData;

.field private final mThumbnailPosition:Landroid/graphics/Rect;

.field private final mTmpCropRect:Landroid/graphics/Rect;

.field private mTransitionData:Lcom/android/quickstep/utils/TransitionSmoothHelper$TransitionData;

.field public final recentsViewPrimaryTranslation:Lcom/android/launcher3/anim/AnimatedFloat;

.field public final recentsViewScale:Lcom/android/launcher3/anim/AnimatedFloat;

.field public final recentsViewScroll:Lcom/android/launcher3/anim/AnimatedFloat;

.field public final recentsViewSecondaryTranslation:Lcom/android/launcher3/anim/AnimatedFloat;

.field public final taskPrimaryTranslation:Lcom/android/launcher3/anim/AnimatedFloat;

.field public final taskSecondaryTranslation:Lcom/android/launcher3/anim/AnimatedFloat;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/quickstep/BaseActivityInterface;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/quickstep/util/TaskViewSimulator;->mTmpCropRect:Landroid/graphics/Rect;

    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/android/quickstep/util/TaskViewSimulator;->mTempRectF:Landroid/graphics/RectF;

    const/4 v0, 0x2

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/android/quickstep/util/TaskViewSimulator;->mTempPoint:[F

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/quickstep/util/TaskViewSimulator;->mTaskRect:Landroid/graphics/Rect;

    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0}, Landroid/graphics/PointF;-><init>()V

    iput-object v0, p0, Lcom/android/quickstep/util/TaskViewSimulator;->mPivot:Landroid/graphics/PointF;

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/quickstep/util/TaskViewSimulator;->mStagePosition:I

    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/android/quickstep/util/TaskViewSimulator;->mMatrix:Landroid/graphics/Matrix;

    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/android/quickstep/util/TaskViewSimulator;->mMatrixTmp:Landroid/graphics/Matrix;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/quickstep/util/TaskViewSimulator;->mThumbnailPosition:Landroid/graphics/Rect;

    new-instance v0, Lcom/android/systemui/shared/recents/model/ThumbnailData;

    invoke-direct {v0}, Lcom/android/systemui/shared/recents/model/ThumbnailData;-><init>()V

    iput-object v0, p0, Lcom/android/quickstep/util/TaskViewSimulator;->mThumbnailData:Lcom/android/systemui/shared/recents/model/ThumbnailData;

    new-instance v0, Lcom/android/systemui/shared/recents/utilities/PreviewPositionHelper;

    invoke-direct {v0}, Lcom/android/systemui/shared/recents/utilities/PreviewPositionHelper;-><init>()V

    iput-object v0, p0, Lcom/android/quickstep/util/TaskViewSimulator;->mPositionHelper:Lcom/android/systemui/shared/recents/utilities/PreviewPositionHelper;

    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/android/quickstep/util/TaskViewSimulator;->mInversePositionMatrix:Landroid/graphics/Matrix;

    new-instance v0, Lcom/android/launcher3/anim/AnimatedFloat;

    invoke-direct {v0}, Lcom/android/launcher3/anim/AnimatedFloat;-><init>()V

    iput-object v0, p0, Lcom/android/quickstep/util/TaskViewSimulator;->taskPrimaryTranslation:Lcom/android/launcher3/anim/AnimatedFloat;

    new-instance v0, Lcom/android/launcher3/anim/AnimatedFloat;

    invoke-direct {v0}, Lcom/android/launcher3/anim/AnimatedFloat;-><init>()V

    iput-object v0, p0, Lcom/android/quickstep/util/TaskViewSimulator;->taskSecondaryTranslation:Lcom/android/launcher3/anim/AnimatedFloat;

    new-instance v0, Lcom/android/launcher3/anim/AnimatedFloat;

    invoke-direct {v0}, Lcom/android/launcher3/anim/AnimatedFloat;-><init>()V

    iput-object v0, p0, Lcom/android/quickstep/util/TaskViewSimulator;->recentsViewScale:Lcom/android/launcher3/anim/AnimatedFloat;

    new-instance v0, Lcom/android/launcher3/anim/AnimatedFloat;

    invoke-direct {v0}, Lcom/android/launcher3/anim/AnimatedFloat;-><init>()V

    iput-object v0, p0, Lcom/android/quickstep/util/TaskViewSimulator;->fullScreenProgress:Lcom/android/launcher3/anim/AnimatedFloat;

    new-instance v0, Lcom/android/launcher3/anim/AnimatedFloat;

    invoke-direct {v0}, Lcom/android/launcher3/anim/AnimatedFloat;-><init>()V

    iput-object v0, p0, Lcom/android/quickstep/util/TaskViewSimulator;->recentsViewSecondaryTranslation:Lcom/android/launcher3/anim/AnimatedFloat;

    new-instance v0, Lcom/android/launcher3/anim/AnimatedFloat;

    invoke-direct {v0}, Lcom/android/launcher3/anim/AnimatedFloat;-><init>()V

    iput-object v0, p0, Lcom/android/quickstep/util/TaskViewSimulator;->recentsViewPrimaryTranslation:Lcom/android/launcher3/anim/AnimatedFloat;

    new-instance v0, Lcom/android/launcher3/anim/AnimatedFloat;

    invoke-direct {v0}, Lcom/android/launcher3/anim/AnimatedFloat;-><init>()V

    iput-object v0, p0, Lcom/android/quickstep/util/TaskViewSimulator;->recentsViewScroll:Lcom/android/launcher3/anim/AnimatedFloat;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/quickstep/util/TaskViewSimulator;->mLayoutValid:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/quickstep/util/TaskViewSimulator;->mDrawsBelowRecents:Ljava/lang/Boolean;

    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/android/quickstep/util/TaskViewSimulator;->mAlpha:F

    iput-object p1, p0, Lcom/android/quickstep/util/TaskViewSimulator;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/android/quickstep/util/TaskViewSimulator;->mSizeStrategy:Lcom/android/quickstep/BaseActivityInterface;

    new-instance v0, Lcom/android/quickstep/util/g1;

    invoke-direct {v0, p1, p2}, Lcom/android/quickstep/util/g1;-><init>(Landroid/content/Context;Lcom/android/quickstep/BaseActivityInterface;)V

    const-string p2, ""

    invoke-static {p2, v0}, Lcom/android/launcher3/util/TraceHelper;->allowIpcs(Ljava/lang/String;Ljava/util/function/Supplier;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/quickstep/util/RecentsOrientedState;

    iput-object p2, p0, Lcom/android/quickstep/util/TaskViewSimulator;->mOrientationState:Lcom/android/quickstep/util/RecentsOrientedState;

    const/4 v0, 0x1

    invoke-virtual {p2, v0}, Lcom/android/quickstep/util/RecentsOrientedState;->setGestureActive(Z)Z

    new-instance p2, Lcom/android/quickstep/views/TaskView$FullscreenDrawParams;

    invoke-direct {p2, p1}, Lcom/android/quickstep/views/TaskView$FullscreenDrawParams;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/android/quickstep/util/TaskViewSimulator;->mCurrentFullscreenParams:Lcom/android/quickstep/views/TaskView$FullscreenDrawParams;

    iget-object p2, p0, Lcom/android/quickstep/util/TaskViewSimulator;->mOrientationState:Lcom/android/quickstep/util/RecentsOrientedState;

    invoke-virtual {p2}, Lcom/android/quickstep/util/RecentsOrientedState;->getStateId()I

    move-result p2

    iput p2, p0, Lcom/android/quickstep/util/TaskViewSimulator;->mOrientationStateId:I

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    iget-object p2, p0, Lcom/android/quickstep/util/TaskViewSimulator;->mOrientationState:Lcom/android/quickstep/util/RecentsOrientedState;

    invoke-virtual {p2}, Lcom/android/quickstep/util/RecentsOrientedState;->getOrientationHandler()Lcom/android/launcher3/touch/PagedOrientationHandler;

    move-result-object p2

    invoke-interface {p2, p1}, Lcom/android/launcher3/touch/PagedOrientationHandler;->getRecentsRtlSetting(Landroid/content/res/Resources;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/quickstep/util/TaskViewSimulator;->mIsRecentsRtl:Z

    return-void
.end method

.method public static synthetic b(Landroid/content/Context;Lcom/android/quickstep/BaseActivityInterface;)Lcom/android/quickstep/util/RecentsOrientedState;
    .locals 0

    invoke-static {p0, p1}, Lcom/android/quickstep/util/TaskViewSimulator;->lambda$new$1(Landroid/content/Context;Lcom/android/quickstep/BaseActivityInterface;)Lcom/android/quickstep/util/RecentsOrientedState;

    move-result-object p0

    return-object p0
.end method

.method public static convertSplitBounds(Lcom/android/launcher3/util/SplitConfigurationOptions$SplitBounds;)Lcom/android/wm/shell/util/SplitBounds;
    .locals 4

    new-instance v0, Lcom/android/wm/shell/util/SplitBounds;

    iget-object v1, p0, Lcom/android/launcher3/util/SplitConfigurationOptions$SplitBounds;->leftTopBounds:Landroid/graphics/Rect;

    iget-object v2, p0, Lcom/android/launcher3/util/SplitConfigurationOptions$SplitBounds;->rightBottomBounds:Landroid/graphics/Rect;

    iget v3, p0, Lcom/android/launcher3/util/SplitConfigurationOptions$SplitBounds;->leftTopTaskId:I

    iget p0, p0, Lcom/android/launcher3/util/SplitConfigurationOptions$SplitBounds;->rightBottomTaskId:I

    invoke-direct {v0, v1, v2, v3, p0}, Lcom/android/wm/shell/util/SplitBounds;-><init>(Landroid/graphics/Rect;Landroid/graphics/Rect;II)V

    return-object v0
.end method

.method public static synthetic d(I)V
    .locals 0

    invoke-static {p0}, Lcom/android/quickstep/util/TaskViewSimulator;->lambda$new$0(I)V

    return-void
.end method

.method private static synthetic lambda$new$0(I)V
    .locals 0

    return-void
.end method

.method private static synthetic lambda$new$1(Landroid/content/Context;Lcom/android/quickstep/BaseActivityInterface;)Lcom/android/quickstep/util/RecentsOrientedState;
    .locals 2

    new-instance v0, Lcom/android/quickstep/util/RecentsOrientedState;

    sget-object v1, Lcom/android/quickstep/util/f1;->a:Lcom/android/quickstep/util/f1;

    invoke-direct {v0, p0, p1, v1}, Lcom/android/quickstep/util/RecentsOrientedState;-><init>(Landroid/content/Context;Lcom/android/quickstep/BaseActivityInterface;Ljava/util/function/IntConsumer;)V

    return-object v0
.end method


# virtual methods
.method public addAppToOverviewAnim(Lcom/android/launcher3/anim/PendingAnimation;Landroid/animation/TimeInterpolator;)V
    .locals 8

    iget-object v1, p0, Lcom/android/quickstep/util/TaskViewSimulator;->fullScreenProgress:Lcom/android/launcher3/anim/AnimatedFloat;

    sget-object v6, Lcom/android/launcher3/anim/AnimatedFloat;->VALUE:Landroid/util/FloatProperty;

    const/high16 v3, 0x3f800000    # 1.0f

    const/4 v4, 0x0

    move-object v0, p1

    move-object v2, v6

    move-object v5, p2

    invoke-virtual/range {v0 .. v5}, Lcom/android/launcher3/anim/PendingAnimation;->addFloat(Ljava/lang/Object;Landroid/util/FloatProperty;FFLandroid/animation/TimeInterpolator;)V

    iget-object v3, p0, Lcom/android/quickstep/util/TaskViewSimulator;->recentsViewScale:Lcom/android/launcher3/anim/AnimatedFloat;

    invoke-virtual {p0}, Lcom/android/quickstep/util/TaskViewSimulator;->getFullScreenScale()F

    move-result v5

    const/high16 p0, 0x3f800000    # 1.0f

    move-object v2, p1

    move-object v4, v6

    move v6, p0

    move-object v7, p2

    invoke-virtual/range {v2 .. v7}, Lcom/android/launcher3/anim/PendingAnimation;->addFloat(Ljava/lang/Object;Landroid/util/FloatProperty;FFLandroid/animation/TimeInterpolator;)V

    return-void
.end method

.method public addOverviewToAppAnim(Lcom/android/launcher3/anim/PendingAnimation;Landroid/animation/TimeInterpolator;)V
    .locals 8

    iget-object v1, p0, Lcom/android/quickstep/util/TaskViewSimulator;->fullScreenProgress:Lcom/android/launcher3/anim/AnimatedFloat;

    sget-object v6, Lcom/android/launcher3/anim/AnimatedFloat;->VALUE:Landroid/util/FloatProperty;

    const/4 v3, 0x0

    const/high16 v4, 0x3f800000    # 1.0f

    move-object v0, p1

    move-object v2, v6

    move-object v5, p2

    invoke-virtual/range {v0 .. v5}, Lcom/android/launcher3/anim/PendingAnimation;->addFloat(Ljava/lang/Object;Landroid/util/FloatProperty;FFLandroid/animation/TimeInterpolator;)V

    iget-object v3, p0, Lcom/android/quickstep/util/TaskViewSimulator;->recentsViewScale:Lcom/android/launcher3/anim/AnimatedFloat;

    invoke-virtual {p0}, Lcom/android/quickstep/util/TaskViewSimulator;->getFullScreenScale()F

    move-result p0

    const/high16 v5, 0x3f800000    # 1.0f

    move-object v2, p1

    move-object v4, v6

    move v6, p0

    move-object v7, p2

    invoke-virtual/range {v2 .. v7}, Lcom/android/launcher3/anim/PendingAnimation;->addFloat(Ljava/lang/Object;Landroid/util/FloatProperty;FFLandroid/animation/TimeInterpolator;)V

    return-void
.end method

.method public apply(Lcom/android/quickstep/util/TransformParams;)V
    .locals 13

    iget-object v0, p0, Lcom/android/quickstep/util/TaskViewSimulator;->mDp:Lcom/android/launcher3/DeviceProfile;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/quickstep/util/TaskViewSimulator;->mThumbnailPosition:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_1

    :cond_0
    iget-boolean v0, p0, Lcom/android/quickstep/util/TaskViewSimulator;->mLayoutValid:Z

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/android/quickstep/util/TaskViewSimulator;->mOrientationStateId:I

    iget-object v1, p0, Lcom/android/quickstep/util/TaskViewSimulator;->mOrientationState:Lcom/android/quickstep/util/RecentsOrientedState;

    invoke-virtual {v1}, Lcom/android/quickstep/util/RecentsOrientedState;->getStateId()I

    move-result v1

    if-eq v0, v1, :cond_3

    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/quickstep/util/TaskViewSimulator;->mLayoutValid:Z

    iget-object v1, p0, Lcom/android/quickstep/util/TaskViewSimulator;->mOrientationState:Lcom/android/quickstep/util/RecentsOrientedState;

    invoke-virtual {v1}, Lcom/android/quickstep/util/RecentsOrientedState;->getStateId()I

    move-result v1

    iput v1, p0, Lcom/android/quickstep/util/TaskViewSimulator;->mOrientationStateId:I

    invoke-virtual {p0}, Lcom/android/quickstep/util/TaskViewSimulator;->getFullScreenScale()F

    sget-boolean v1, Lcom/android/quickstep/TaskAnimationManager;->SHELL_TRANSITIONS_ROTATION:Z

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/quickstep/util/TaskViewSimulator;->mThumbnailData:Lcom/android/systemui/shared/recents/model/ThumbnailData;

    iget-object v2, p0, Lcom/android/quickstep/util/TaskViewSimulator;->mOrientationState:Lcom/android/quickstep/util/RecentsOrientedState;

    invoke-virtual {v2}, Lcom/android/quickstep/util/RecentsOrientedState;->getTouchRotation()I

    move-result v2

    goto :goto_0

    :cond_2
    iget-object v1, p0, Lcom/android/quickstep/util/TaskViewSimulator;->mThumbnailData:Lcom/android/systemui/shared/recents/model/ThumbnailData;

    iget-object v2, p0, Lcom/android/quickstep/util/TaskViewSimulator;->mOrientationState:Lcom/android/quickstep/util/RecentsOrientedState;

    invoke-virtual {v2}, Lcom/android/quickstep/util/RecentsOrientedState;->getDisplayRotation()I

    move-result v2

    :goto_0
    iput v2, v1, Lcom/android/systemui/shared/recents/model/ThumbnailData;->rotation:I

    iget-boolean v1, p0, Lcom/android/quickstep/util/TaskViewSimulator;->mIsRecentsRtl:Z

    xor-int/lit8 v12, v1, 0x1

    iget-object v2, p0, Lcom/android/quickstep/util/TaskViewSimulator;->mPositionHelper:Lcom/android/systemui/shared/recents/utilities/PreviewPositionHelper;

    iget-object v3, p0, Lcom/android/quickstep/util/TaskViewSimulator;->mThumbnailPosition:Landroid/graphics/Rect;

    iget-object v4, p0, Lcom/android/quickstep/util/TaskViewSimulator;->mThumbnailData:Lcom/android/systemui/shared/recents/model/ThumbnailData;

    iget-object v0, p0, Lcom/android/quickstep/util/TaskViewSimulator;->mTaskRect:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v5

    iget-object v0, p0, Lcom/android/quickstep/util/TaskViewSimulator;->mTaskRect:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v6

    iget-object v0, p0, Lcom/android/quickstep/util/TaskViewSimulator;->mDp:Lcom/android/launcher3/DeviceProfile;

    iget v7, v0, Lcom/android/launcher3/DeviceProfile;->widthPx:I

    iget v8, v0, Lcom/android/launcher3/DeviceProfile;->heightPx:I

    iget v9, v0, Lcom/android/launcher3/DeviceProfile;->taskbarHeight:I

    iget-boolean v10, v0, Lcom/android/launcher3/DeviceProfile;->isTablet:Z

    iget-object v0, p0, Lcom/android/quickstep/util/TaskViewSimulator;->mOrientationState:Lcom/android/quickstep/util/RecentsOrientedState;

    invoke-virtual {v0}, Lcom/android/quickstep/util/RecentsOrientedState;->getRecentsActivityRotation()I

    move-result v11

    invoke-virtual/range {v2 .. v12}, Lcom/android/systemui/shared/recents/utilities/PreviewPositionHelper;->updateThumbnailMatrix(Landroid/graphics/Rect;Lcom/android/systemui/shared/recents/model/ThumbnailData;IIIIIZIZ)V

    iget-object v0, p0, Lcom/android/quickstep/util/TaskViewSimulator;->mPositionHelper:Lcom/android/systemui/shared/recents/utilities/PreviewPositionHelper;

    invoke-virtual {v0}, Lcom/android/systemui/shared/recents/utilities/PreviewPositionHelper;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v0

    iget-object v1, p0, Lcom/android/quickstep/util/TaskViewSimulator;->mInversePositionMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->invert(Landroid/graphics/Matrix;)Z

    :cond_3
    iget-object v0, p0, Lcom/android/quickstep/util/TaskViewSimulator;->fullScreenProgress:Lcom/android/launcher3/anim/AnimatedFloat;

    iget v0, v0, Lcom/android/launcher3/anim/AnimatedFloat;->value:F

    const/high16 v1, 0x3f800000    # 1.0f

    const/4 v2, 0x0

    invoke-static {v0, v2, v1}, Lcom/android/launcher3/Utilities;->boundToRange(FFF)F

    move-result v4

    iget-object v3, p0, Lcom/android/quickstep/util/TaskViewSimulator;->mCurrentFullscreenParams:Lcom/android/quickstep/views/TaskView$FullscreenDrawParams;

    iget-object v0, p0, Lcom/android/quickstep/util/TaskViewSimulator;->recentsViewScale:Lcom/android/launcher3/anim/AnimatedFloat;

    iget v5, v0, Lcom/android/launcher3/anim/AnimatedFloat;->value:F

    const/high16 v6, 0x3f800000    # 1.0f

    iget-object v0, p0, Lcom/android/quickstep/util/TaskViewSimulator;->mTaskRect:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v7

    iget-object v8, p0, Lcom/android/quickstep/util/TaskViewSimulator;->mDp:Lcom/android/launcher3/DeviceProfile;

    iget-object v9, p0, Lcom/android/quickstep/util/TaskViewSimulator;->mPositionHelper:Lcom/android/systemui/shared/recents/utilities/PreviewPositionHelper;

    invoke-virtual/range {v3 .. v9}, Lcom/android/quickstep/views/TaskView$FullscreenDrawParams;->setProgress(FFFILcom/android/launcher3/DeviceProfile;Lcom/android/systemui/shared/recents/utilities/PreviewPositionHelper;)V

    iget-object v0, p0, Lcom/android/quickstep/util/TaskViewSimulator;->mTaskRect:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    int-to-float v0, v0

    iget-object v1, p0, Lcom/android/quickstep/util/TaskViewSimulator;->mTaskRect:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v1

    int-to-float v1, v1

    iget-object v3, p0, Lcom/android/quickstep/util/TaskViewSimulator;->mMatrix:Landroid/graphics/Matrix;

    iget-object v4, p0, Lcom/android/quickstep/util/TaskViewSimulator;->mPositionHelper:Lcom/android/systemui/shared/recents/utilities/PreviewPositionHelper;

    invoke-virtual {v4}, Lcom/android/systemui/shared/recents/utilities/PreviewPositionHelper;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    iget-object v3, p0, Lcom/android/quickstep/util/TaskViewSimulator;->mMatrix:Landroid/graphics/Matrix;

    iget-object v4, p0, Lcom/android/quickstep/util/TaskViewSimulator;->mTaskRect:Landroid/graphics/Rect;

    iget v5, v4, Landroid/graphics/Rect;->left:I

    int-to-float v5, v5

    iget v4, v4, Landroid/graphics/Rect;->top:I

    int-to-float v4, v4

    invoke-virtual {v3, v5, v4}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    iget-object v3, p0, Lcom/android/quickstep/util/TaskViewSimulator;->mOrientationState:Lcom/android/quickstep/util/RecentsOrientedState;

    invoke-virtual {v3}, Lcom/android/quickstep/util/RecentsOrientedState;->getOrientationHandler()Lcom/android/launcher3/touch/PagedOrientationHandler;

    move-result-object v3

    iget-object v4, p0, Lcom/android/quickstep/util/TaskViewSimulator;->mMatrix:Landroid/graphics/Matrix;

    sget-object v5, Lcom/android/launcher3/touch/PagedOrientationHandler;->MATRIX_POST_TRANSLATE:Lcom/android/launcher3/touch/PagedOrientationHandler$Float2DAction;

    iget-object v6, p0, Lcom/android/quickstep/util/TaskViewSimulator;->taskPrimaryTranslation:Lcom/android/launcher3/anim/AnimatedFloat;

    iget v6, v6, Lcom/android/launcher3/anim/AnimatedFloat;->value:F

    invoke-interface {v3, v4, v5, v6}, Lcom/android/launcher3/touch/PagedOrientationHandler;->setPrimary(Ljava/lang/Object;Lcom/android/launcher3/touch/PagedOrientationHandler$Float2DAction;F)V

    iget-object v3, p0, Lcom/android/quickstep/util/TaskViewSimulator;->mOrientationState:Lcom/android/quickstep/util/RecentsOrientedState;

    invoke-virtual {v3}, Lcom/android/quickstep/util/RecentsOrientedState;->getOrientationHandler()Lcom/android/launcher3/touch/PagedOrientationHandler;

    move-result-object v3

    iget-object v4, p0, Lcom/android/quickstep/util/TaskViewSimulator;->mMatrix:Landroid/graphics/Matrix;

    iget-object v6, p0, Lcom/android/quickstep/util/TaskViewSimulator;->taskSecondaryTranslation:Lcom/android/launcher3/anim/AnimatedFloat;

    iget v6, v6, Lcom/android/launcher3/anim/AnimatedFloat;->value:F

    invoke-interface {v3, v4, v5, v6}, Lcom/android/launcher3/touch/PagedOrientationHandler;->setSecondary(Ljava/lang/Object;Lcom/android/launcher3/touch/PagedOrientationHandler$Float2DAction;F)V

    iget-object v3, p0, Lcom/android/quickstep/util/TaskViewSimulator;->mOrientationState:Lcom/android/quickstep/util/RecentsOrientedState;

    invoke-virtual {v3}, Lcom/android/quickstep/util/RecentsOrientedState;->getOrientationHandler()Lcom/android/launcher3/touch/PagedOrientationHandler;

    move-result-object v3

    iget-object v4, p0, Lcom/android/quickstep/util/TaskViewSimulator;->mMatrix:Landroid/graphics/Matrix;

    iget-object v6, p0, Lcom/android/quickstep/util/TaskViewSimulator;->recentsViewScroll:Lcom/android/launcher3/anim/AnimatedFloat;

    iget v6, v6, Lcom/android/launcher3/anim/AnimatedFloat;->value:F

    invoke-interface {v3, v4, v5, v6}, Lcom/android/launcher3/touch/PagedOrientationHandler;->setPrimary(Ljava/lang/Object;Lcom/android/launcher3/touch/PagedOrientationHandler$Float2DAction;F)V

    iget-object v3, p0, Lcom/android/quickstep/util/TaskViewSimulator;->mMatrix:Landroid/graphics/Matrix;

    iget-object v4, p0, Lcom/android/quickstep/util/TaskViewSimulator;->recentsViewScale:Lcom/android/launcher3/anim/AnimatedFloat;

    iget v4, v4, Lcom/android/launcher3/anim/AnimatedFloat;->value:F

    iget-object v6, p0, Lcom/android/quickstep/util/TaskViewSimulator;->mPivot:Landroid/graphics/PointF;

    iget v7, v6, Landroid/graphics/PointF;->x:F

    iget v6, v6, Landroid/graphics/PointF;->y:F

    invoke-virtual {v3, v4, v4, v7, v6}, Landroid/graphics/Matrix;->postScale(FFFF)Z

    iget-object v3, p0, Lcom/android/quickstep/util/TaskViewSimulator;->mOrientationState:Lcom/android/quickstep/util/RecentsOrientedState;

    invoke-virtual {v3}, Lcom/android/quickstep/util/RecentsOrientedState;->getOrientationHandler()Lcom/android/launcher3/touch/PagedOrientationHandler;

    move-result-object v3

    iget-object v4, p0, Lcom/android/quickstep/util/TaskViewSimulator;->mMatrix:Landroid/graphics/Matrix;

    iget-object v6, p0, Lcom/android/quickstep/util/TaskViewSimulator;->recentsViewSecondaryTranslation:Lcom/android/launcher3/anim/AnimatedFloat;

    iget v6, v6, Lcom/android/launcher3/anim/AnimatedFloat;->value:F

    invoke-interface {v3, v4, v5, v6}, Lcom/android/launcher3/touch/PagedOrientationHandler;->setSecondary(Ljava/lang/Object;Lcom/android/launcher3/touch/PagedOrientationHandler$Float2DAction;F)V

    iget-object v3, p0, Lcom/android/quickstep/util/TaskViewSimulator;->mOrientationState:Lcom/android/quickstep/util/RecentsOrientedState;

    invoke-virtual {v3}, Lcom/android/quickstep/util/RecentsOrientedState;->getOrientationHandler()Lcom/android/launcher3/touch/PagedOrientationHandler;

    move-result-object v3

    iget-object v4, p0, Lcom/android/quickstep/util/TaskViewSimulator;->mMatrix:Landroid/graphics/Matrix;

    iget-object v6, p0, Lcom/android/quickstep/util/TaskViewSimulator;->recentsViewPrimaryTranslation:Lcom/android/launcher3/anim/AnimatedFloat;

    iget v6, v6, Lcom/android/launcher3/anim/AnimatedFloat;->value:F

    invoke-interface {v3, v4, v5, v6}, Lcom/android/launcher3/touch/PagedOrientationHandler;->setPrimary(Ljava/lang/Object;Lcom/android/launcher3/touch/PagedOrientationHandler$Float2DAction;F)V

    iget-object v3, p0, Lcom/android/quickstep/util/TaskViewSimulator;->mMatrix:Landroid/graphics/Matrix;

    invoke-virtual {p0, v3}, Lcom/android/quickstep/util/TaskViewSimulator;->applyWindowToHomeRotation(Landroid/graphics/Matrix;)V

    iget-object v3, p0, Lcom/android/quickstep/util/TaskViewSimulator;->mTempRectF:Landroid/graphics/RectF;

    invoke-virtual {v3, v2, v2, v0, v1}, Landroid/graphics/RectF;->set(FFFF)V

    iget-object v0, p0, Lcom/android/quickstep/util/TaskViewSimulator;->mInversePositionMatrix:Landroid/graphics/Matrix;

    iget-object v1, p0, Lcom/android/quickstep/util/TaskViewSimulator;->mTempRectF:Landroid/graphics/RectF;

    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    iget-object v0, p0, Lcom/android/quickstep/util/TaskViewSimulator;->mTempRectF:Landroid/graphics/RectF;

    iget-object v1, p0, Lcom/android/quickstep/util/TaskViewSimulator;->mTmpCropRect:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/RectF;->roundOut(Landroid/graphics/Rect;)V

    invoke-virtual {p1, p0}, Lcom/android/quickstep/util/TransformParams;->createSurfaceParams(Lcom/android/quickstep/util/TransformParams$BuilderProxy;)Lcom/android/quickstep/util/SurfaceTransaction;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/android/quickstep/util/TransformParams;->applySurfaceParams(Lcom/android/quickstep/util/SurfaceTransaction;)V

    :cond_4
    :goto_1
    return-void
.end method

.method public applyWindowToHomeRotation(Landroid/graphics/Matrix;)V
    .locals 2

    iget-object v0, p0, Lcom/android/quickstep/util/TaskViewSimulator;->mDp:Lcom/android/launcher3/DeviceProfile;

    iget v1, v0, Lcom/android/launcher3/DeviceProfile;->windowX:I

    int-to-float v1, v1

    iget v0, v0, Lcom/android/launcher3/DeviceProfile;->windowY:I

    int-to-float v0, v0

    invoke-virtual {p1, v1, v0}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    iget-object v0, p0, Lcom/android/quickstep/util/TaskViewSimulator;->mOrientationState:Lcom/android/quickstep/util/RecentsOrientedState;

    invoke-virtual {v0}, Lcom/android/quickstep/util/RecentsOrientedState;->getRecentsActivityRotation()I

    move-result v0

    iget-object v1, p0, Lcom/android/quickstep/util/TaskViewSimulator;->mOrientationState:Lcom/android/quickstep/util/RecentsOrientedState;

    invoke-virtual {v1}, Lcom/android/quickstep/util/RecentsOrientedState;->getDisplayRotation()I

    move-result v1

    invoke-static {v0, v1}, Lcom/android/launcher3/states/RotationHelper;->deltaRotation(II)I

    move-result v0

    iget-object p0, p0, Lcom/android/quickstep/util/TaskViewSimulator;->mDp:Lcom/android/launcher3/DeviceProfile;

    iget v1, p0, Lcom/android/launcher3/DeviceProfile;->widthPx:I

    int-to-float v1, v1

    iget p0, p0, Lcom/android/launcher3/DeviceProfile;->heightPx:I

    int-to-float p0, p0

    invoke-static {v0, v1, p0, p1}, Lcom/android/quickstep/util/RecentsOrientedState;->postDisplayRotation(IFFLandroid/graphics/Matrix;)V

    return-void
.end method

.method public getCropRect()Landroid/graphics/Rect;
    .locals 0

    iget-object p0, p0, Lcom/android/quickstep/util/TaskViewSimulator;->mTmpCropRect:Landroid/graphics/Rect;

    return-object p0
.end method

.method public getCurrentCornerRadius()F
    .locals 4

    iget-object v0, p0, Lcom/android/quickstep/util/TaskViewSimulator;->mCurrentFullscreenParams:Lcom/android/quickstep/views/TaskView$FullscreenDrawParams;

    iget v0, v0, Lcom/android/quickstep/views/TaskView$FullscreenDrawParams;->mCurrentDrawnCornerRadius:F

    iget-object v1, p0, Lcom/android/quickstep/util/TaskViewSimulator;->mTempPoint:[F

    const/4 v2, 0x0

    aput v0, v1, v2

    const/4 v0, 0x0

    const/4 v3, 0x1

    aput v0, v1, v3

    iget-object v0, p0, Lcom/android/quickstep/util/TaskViewSimulator;->mInversePositionMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->mapVectors([F)V

    iget-object v0, p0, Lcom/android/quickstep/util/TaskViewSimulator;->mTempPoint:[F

    aget v0, v0, v2

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    iget-object p0, p0, Lcom/android/quickstep/util/TaskViewSimulator;->mTempPoint:[F

    aget p0, p0, v3

    invoke-static {p0}, Ljava/lang/Math;->abs(F)F

    move-result p0

    invoke-static {v0, p0}, Ljava/lang/Math;->max(FF)F

    move-result p0

    return p0
.end method

.method public getCurrentCropRect()Landroid/graphics/RectF;
    .locals 4

    iget-object v0, p0, Lcom/android/quickstep/util/TaskViewSimulator;->mTempRectF:Landroid/graphics/RectF;

    iget-object v1, p0, Lcom/android/quickstep/util/TaskViewSimulator;->mTaskRect:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v1

    int-to-float v1, v1

    iget-object v2, p0, Lcom/android/quickstep/util/TaskViewSimulator;->mTaskRect:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v2

    int-to-float v2, v2

    const/4 v3, 0x0

    invoke-virtual {v0, v3, v3, v1, v2}, Landroid/graphics/RectF;->set(FFFF)V

    iget-object v0, p0, Lcom/android/quickstep/util/TaskViewSimulator;->mInversePositionMatrix:Landroid/graphics/Matrix;

    iget-object v1, p0, Lcom/android/quickstep/util/TaskViewSimulator;->mTempRectF:Landroid/graphics/RectF;

    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    iget-object p0, p0, Lcom/android/quickstep/util/TaskViewSimulator;->mTempRectF:Landroid/graphics/RectF;

    return-object p0
.end method

.method public getCurrentMatrix()Landroid/graphics/Matrix;
    .locals 0

    iget-object p0, p0, Lcom/android/quickstep/util/TaskViewSimulator;->mMatrix:Landroid/graphics/Matrix;

    return-object p0
.end method

.method public getCurrentRect()Landroid/graphics/RectF;
    .locals 5

    invoke-virtual {p0}, Lcom/android/quickstep/util/TaskViewSimulator;->getCurrentCropRect()Landroid/graphics/RectF;

    move-result-object v0

    iget-object v1, p0, Lcom/android/quickstep/util/TaskViewSimulator;->mMatrixTmp:Landroid/graphics/Matrix;

    iget-object v2, p0, Lcom/android/quickstep/util/TaskViewSimulator;->mMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v1, v2}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    iget-object v1, p0, Lcom/android/quickstep/util/TaskViewSimulator;->mOrientationState:Lcom/android/quickstep/util/RecentsOrientedState;

    invoke-virtual {v1}, Lcom/android/quickstep/util/RecentsOrientedState;->getDisplayRotation()I

    move-result v1

    iget-object v2, p0, Lcom/android/quickstep/util/TaskViewSimulator;->mDp:Lcom/android/launcher3/DeviceProfile;

    iget v3, v2, Lcom/android/launcher3/DeviceProfile;->widthPx:I

    int-to-float v3, v3

    iget v2, v2, Lcom/android/launcher3/DeviceProfile;->heightPx:I

    int-to-float v2, v2

    iget-object v4, p0, Lcom/android/quickstep/util/TaskViewSimulator;->mMatrixTmp:Landroid/graphics/Matrix;

    invoke-static {v1, v3, v2, v4}, Lcom/android/quickstep/util/RecentsOrientedState;->preDisplayRotation(IFFLandroid/graphics/Matrix;)V

    iget-object p0, p0, Lcom/android/quickstep/util/TaskViewSimulator;->mMatrixTmp:Landroid/graphics/Matrix;

    invoke-virtual {p0, v0}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    return-object v0
.end method

.method public getFullScreenScale()F
    .locals 6

    iget-object v0, p0, Lcom/android/quickstep/util/TaskViewSimulator;->mDp:Lcom/android/launcher3/DeviceProfile;

    const/high16 v1, 0x3f800000    # 1.0f

    if-nez v0, :cond_0

    return v1

    :cond_0
    iget-boolean v2, p0, Lcom/android/quickstep/util/TaskViewSimulator;->mIsDesktopTask:Z

    if-eqz v2, :cond_1

    iget-object v0, p0, Lcom/android/quickstep/util/TaskViewSimulator;->mTaskRect:Landroid/graphics/Rect;

    iget-object v2, p0, Lcom/android/quickstep/util/TaskViewSimulator;->mThumbnailPosition:Landroid/graphics/Rect;

    invoke-virtual {v0, v2}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    iget-object v0, p0, Lcom/android/quickstep/util/TaskViewSimulator;->mPivot:Landroid/graphics/PointF;

    iget-object v2, p0, Lcom/android/quickstep/util/TaskViewSimulator;->mTaskRect:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->centerX()I

    move-result v2

    int-to-float v2, v2

    iget-object p0, p0, Lcom/android/quickstep/util/TaskViewSimulator;->mTaskRect:Landroid/graphics/Rect;

    invoke-virtual {p0}, Landroid/graphics/Rect;->centerY()I

    move-result p0

    int-to-float p0, p0

    invoke-virtual {v0, v2, p0}, Landroid/graphics/PointF;->set(FF)V

    return v1

    :cond_1
    iget-boolean v1, p0, Lcom/android/quickstep/util/TaskViewSimulator;->mIsGridTask:Z

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/quickstep/util/TaskViewSimulator;->mSizeStrategy:Lcom/android/quickstep/BaseActivityInterface;

    iget-object v2, p0, Lcom/android/quickstep/util/TaskViewSimulator;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/quickstep/util/TaskViewSimulator;->mTaskRect:Landroid/graphics/Rect;

    iget-object v4, p0, Lcom/android/quickstep/util/TaskViewSimulator;->mOrientationState:Lcom/android/quickstep/util/RecentsOrientedState;

    invoke-virtual {v4}, Lcom/android/quickstep/util/RecentsOrientedState;->getOrientationHandler()Lcom/android/launcher3/touch/PagedOrientationHandler;

    move-result-object v4

    invoke-virtual {v1, v2, v0, v3, v4}, Lcom/android/quickstep/BaseActivityInterface;->calculateGridTaskSize(Landroid/content/Context;Lcom/android/launcher3/DeviceProfile;Landroid/graphics/Rect;Lcom/android/launcher3/touch/PagedOrientationHandler;)V

    goto :goto_0

    :cond_2
    iget-object v1, p0, Lcom/android/quickstep/util/TaskViewSimulator;->mSizeStrategy:Lcom/android/quickstep/BaseActivityInterface;

    iget-object v2, p0, Lcom/android/quickstep/util/TaskViewSimulator;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/quickstep/util/TaskViewSimulator;->mTaskRect:Landroid/graphics/Rect;

    iget-object v4, p0, Lcom/android/quickstep/util/TaskViewSimulator;->mOrientationState:Lcom/android/quickstep/util/RecentsOrientedState;

    invoke-virtual {v4}, Lcom/android/quickstep/util/RecentsOrientedState;->getOrientationHandler()Lcom/android/launcher3/touch/PagedOrientationHandler;

    move-result-object v4

    invoke-virtual {v1, v2, v0, v3, v4}, Lcom/android/quickstep/BaseActivityInterface;->calculateTaskSize(Landroid/content/Context;Lcom/android/launcher3/DeviceProfile;Landroid/graphics/Rect;Lcom/android/launcher3/touch/PagedOrientationHandler;)V

    :goto_0
    iget-object v0, p0, Lcom/android/quickstep/util/TaskViewSimulator;->mSplitBounds:Lcom/android/launcher3/util/SplitConfigurationOptions$SplitBounds;

    if-eqz v0, :cond_3

    new-instance v0, Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/android/quickstep/util/TaskViewSimulator;->mTaskRect:Landroid/graphics/Rect;

    invoke-direct {v0, v1}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    iget-object v1, p0, Lcom/android/quickstep/util/TaskViewSimulator;->mOrientationState:Lcom/android/quickstep/util/RecentsOrientedState;

    invoke-virtual {v1}, Lcom/android/quickstep/util/RecentsOrientedState;->getOrientationHandler()Lcom/android/launcher3/touch/PagedOrientationHandler;

    move-result-object v1

    iget-object v2, p0, Lcom/android/quickstep/util/TaskViewSimulator;->mDp:Lcom/android/launcher3/DeviceProfile;

    iget-object v3, p0, Lcom/android/quickstep/util/TaskViewSimulator;->mTaskRect:Landroid/graphics/Rect;

    iget-object v4, p0, Lcom/android/quickstep/util/TaskViewSimulator;->mSplitBounds:Lcom/android/launcher3/util/SplitConfigurationOptions$SplitBounds;

    iget v5, p0, Lcom/android/quickstep/util/TaskViewSimulator;->mStagePosition:I

    invoke-interface {v1, v2, v3, v4, v5}, Lcom/android/launcher3/touch/PagedOrientationHandler;->setSplitTaskSwipeRect(Lcom/android/launcher3/DeviceProfile;Landroid/graphics/Rect;Lcom/android/launcher3/util/SplitConfigurationOptions$SplitBounds;I)V

    iget-object v1, p0, Lcom/android/quickstep/util/TaskViewSimulator;->mTaskRect:Landroid/graphics/Rect;

    iget v2, p0, Lcom/android/quickstep/util/TaskViewSimulator;->mTaskRectTranslationX:I

    iget v3, p0, Lcom/android/quickstep/util/TaskViewSimulator;->mTaskRectTranslationY:I

    invoke-virtual {v1, v2, v3}, Landroid/graphics/Rect;->offset(II)V

    goto :goto_1

    :cond_3
    iget-object v0, p0, Lcom/android/quickstep/util/TaskViewSimulator;->mTaskRect:Landroid/graphics/Rect;

    :goto_1
    iget v1, p0, Lcom/android/quickstep/util/TaskViewSimulator;->mTaskRectTranslationX:I

    iget v2, p0, Lcom/android/quickstep/util/TaskViewSimulator;->mTaskRectTranslationY:I

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Rect;->offset(II)V

    iget-object v1, p0, Lcom/android/quickstep/util/TaskViewSimulator;->mOrientationState:Lcom/android/quickstep/util/RecentsOrientedState;

    iget-object v2, p0, Lcom/android/quickstep/util/TaskViewSimulator;->mDp:Lcom/android/launcher3/DeviceProfile;

    iget-object p0, p0, Lcom/android/quickstep/util/TaskViewSimulator;->mPivot:Landroid/graphics/PointF;

    invoke-virtual {v1, v0, v2, p0}, Lcom/android/quickstep/util/RecentsOrientedState;->getFullScreenScaleAndPivot(Landroid/graphics/Rect;Lcom/android/launcher3/DeviceProfile;Landroid/graphics/PointF;)F

    move-result p0

    return p0
.end method

.method public getOrientationState()Lcom/android/quickstep/util/RecentsOrientedState;
    .locals 0

    iget-object p0, p0, Lcom/android/quickstep/util/TaskViewSimulator;->mOrientationState:Lcom/android/quickstep/util/RecentsOrientedState;

    return-object p0
.end method

.method public getOverrideCornerRadius()F
    .locals 1

    iget-object v0, p0, Lcom/android/quickstep/util/TaskViewSimulator;->mTransitionData:Lcom/android/quickstep/utils/TransitionSmoothHelper$TransitionData;

    if-eqz v0, :cond_0

    iget p0, p0, Lcom/android/quickstep/util/TaskViewSimulator;->mSmoothAnimCornerRadius:F

    return p0

    :cond_0
    invoke-virtual {p0}, Lcom/android/quickstep/util/TaskViewSimulator;->getCurrentCornerRadius()F

    move-result p0

    return p0
.end method

.method public getOverrideCrop()Landroid/graphics/RectF;
    .locals 4

    iget-object v0, p0, Lcom/android/quickstep/util/TaskViewSimulator;->mTransitionData:Lcom/android/quickstep/utils/TransitionSmoothHelper$TransitionData;

    if-eqz v0, :cond_0

    new-instance v0, Landroid/graphics/RectF;

    iget-object p0, p0, Lcom/android/quickstep/util/TaskViewSimulator;->mSmoothAnimCropRect:Landroid/graphics/Rect;

    iget v1, p0, Landroid/graphics/Rect;->left:I

    int-to-float v1, v1

    iget v2, p0, Landroid/graphics/Rect;->top:I

    int-to-float v2, v2

    iget v3, p0, Landroid/graphics/Rect;->right:I

    int-to-float v3, v3

    iget p0, p0, Landroid/graphics/Rect;->bottom:I

    int-to-float p0, p0

    invoke-direct {v0, v1, v2, v3, p0}, Landroid/graphics/RectF;-><init>(FFFF)V

    return-object v0

    :cond_0
    invoke-virtual {p0}, Lcom/android/quickstep/util/TaskViewSimulator;->getCurrentCropRect()Landroid/graphics/RectF;

    move-result-object p0

    return-object p0
.end method

.method public getOverrideMatrix()Landroid/graphics/Matrix;
    .locals 1

    iget-object v0, p0, Lcom/android/quickstep/util/TaskViewSimulator;->mTransitionData:Lcom/android/quickstep/utils/TransitionSmoothHelper$TransitionData;

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/android/quickstep/util/TaskViewSimulator;->mSmoothAnimMatrix:Landroid/graphics/Matrix;

    return-object p0

    :cond_0
    invoke-virtual {p0}, Lcom/android/quickstep/util/TaskViewSimulator;->getCurrentMatrix()Landroid/graphics/Matrix;

    move-result-object p0

    return-object p0
.end method

.method public getTransitionData()Lcom/android/quickstep/utils/TransitionSmoothHelper$TransitionData;
    .locals 0

    iget-object p0, p0, Lcom/android/quickstep/util/TaskViewSimulator;->mTransitionData:Lcom/android/quickstep/utils/TransitionSmoothHelper$TransitionData;

    return-object p0
.end method

.method public needAnimation(F)Z
    .locals 10

    iget-object v0, p0, Lcom/android/quickstep/util/TaskViewSimulator;->mTransitionData:Lcom/android/quickstep/utils/TransitionSmoothHelper$TransitionData;

    const/4 v1, 0x0

    if-eqz v0, :cond_6

    const/16 v0, 0x9

    new-array v2, v0, [F

    new-array v3, v0, [F

    new-array v4, v0, [F

    new-instance v5, Landroid/graphics/Matrix;

    invoke-direct {v5}, Landroid/graphics/Matrix;-><init>()V

    iget-object v6, p0, Lcom/android/quickstep/util/TaskViewSimulator;->mTransitionData:Lcom/android/quickstep/utils/TransitionSmoothHelper$TransitionData;

    invoke-virtual {v6}, Lcom/android/quickstep/utils/TransitionSmoothHelper$TransitionData;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v6

    invoke-virtual {v6, v2}, Landroid/graphics/Matrix;->getValues([F)V

    iget-object v6, p0, Lcom/android/quickstep/util/TaskViewSimulator;->mMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v6, v3}, Landroid/graphics/Matrix;->getValues([F)V

    move v6, v1

    :goto_0
    if-ge v6, v0, :cond_0

    aget v7, v2, v6

    aget v8, v3, v6

    aget v9, v2, v6

    sub-float/2addr v8, v9

    mul-float/2addr v8, p1

    add-float/2addr v7, v8

    aput v7, v4, v6

    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {v5, v4}, Landroid/graphics/Matrix;->setValues([F)V

    iget-object v0, p0, Lcom/android/quickstep/util/TaskViewSimulator;->mSmoothAnimMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v0, v5}, Landroid/graphics/Matrix;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v2, 0x1

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/quickstep/util/TaskViewSimulator;->mSmoothAnimMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v0, v5}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    move v1, v2

    :cond_1
    iget-object v0, p0, Lcom/android/quickstep/util/TaskViewSimulator;->mTransitionData:Lcom/android/quickstep/utils/TransitionSmoothHelper$TransitionData;

    invoke-virtual {v0}, Lcom/android/quickstep/utils/TransitionSmoothHelper$TransitionData;->getWindowCrop()Landroid/graphics/Rect;

    move-result-object v0

    iget-object v3, p0, Lcom/android/quickstep/util/TaskViewSimulator;->mTmpCropRect:Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_2

    new-instance v3, Landroid/graphics/Rect;

    iget v4, v0, Landroid/graphics/Rect;->left:I

    int-to-float v5, v4

    iget-object v6, p0, Lcom/android/quickstep/util/TaskViewSimulator;->mTmpCropRect:Landroid/graphics/Rect;

    iget v7, v6, Landroid/graphics/Rect;->left:I

    sub-int/2addr v7, v4

    int-to-float v4, v7

    mul-float/2addr v4, p1

    add-float/2addr v5, v4

    float-to-int v4, v5

    iget v5, v0, Landroid/graphics/Rect;->top:I

    int-to-float v7, v5

    iget v8, v6, Landroid/graphics/Rect;->top:I

    sub-int/2addr v8, v5

    int-to-float v5, v8

    mul-float/2addr v5, p1

    add-float/2addr v7, v5

    float-to-int v5, v7

    iget v7, v0, Landroid/graphics/Rect;->right:I

    int-to-float v8, v7

    iget v9, v6, Landroid/graphics/Rect;->right:I

    sub-int/2addr v9, v7

    int-to-float v7, v9

    mul-float/2addr v7, p1

    add-float/2addr v8, v7

    float-to-int v7, v8

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    int-to-float v8, v0

    iget v6, v6, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v6, v0

    int-to-float v0, v6

    mul-float/2addr v0, p1

    add-float/2addr v8, v0

    float-to-int v0, v8

    invoke-direct {v3, v4, v5, v7, v0}, Landroid/graphics/Rect;-><init>(IIII)V

    goto :goto_1

    :cond_2
    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3, v0}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    :goto_1
    iget-object v0, p0, Lcom/android/quickstep/util/TaskViewSimulator;->mSmoothAnimCropRect:Landroid/graphics/Rect;

    invoke-virtual {v0, v3}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/android/quickstep/util/TaskViewSimulator;->mSmoothAnimCropRect:Landroid/graphics/Rect;

    invoke-virtual {v0, v3}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    move v1, v2

    :cond_3
    iget-object v0, p0, Lcom/android/quickstep/util/TaskViewSimulator;->mTransitionData:Lcom/android/quickstep/utils/TransitionSmoothHelper$TransitionData;

    invoke-virtual {v0}, Lcom/android/quickstep/utils/TransitionSmoothHelper$TransitionData;->getCornerRadius()F

    move-result v0

    invoke-virtual {p0}, Lcom/android/quickstep/util/TaskViewSimulator;->getCurrentCornerRadius()F

    move-result v3

    iget-object v4, p0, Lcom/android/quickstep/util/TaskViewSimulator;->mTransitionData:Lcom/android/quickstep/utils/TransitionSmoothHelper$TransitionData;

    invoke-virtual {v4}, Lcom/android/quickstep/utils/TransitionSmoothHelper$TransitionData;->getCornerRadius()F

    move-result v4

    sub-float/2addr v3, v4

    mul-float/2addr v3, p1

    add-float/2addr v0, v3

    iget v3, p0, Lcom/android/quickstep/util/TaskViewSimulator;->mSmoothAnimCornerRadius:F

    cmpl-float v3, v3, v0

    if-eqz v3, :cond_4

    iput v0, p0, Lcom/android/quickstep/util/TaskViewSimulator;->mSmoothAnimCornerRadius:F

    goto :goto_2

    :cond_4
    move v2, v1

    :goto_2
    if-nez v2, :cond_5

    const/4 v0, 0x0

    cmpl-float p1, p1, v0

    if-eqz p1, :cond_5

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/android/quickstep/util/TaskViewSimulator;->setTransitionData(Lcom/android/quickstep/utils/TransitionSmoothHelper$TransitionData;)V

    :cond_5
    return v2

    :cond_6
    return v1
.end method

.method public onBuildTargetParams(Lcom/android/quickstep/util/SurfaceTransaction$SurfaceProperties;Landroid/view/RemoteAnimationTarget;Lcom/android/quickstep/util/TransformParams;)V
    .locals 1

    iget-object p3, p0, Lcom/android/quickstep/util/TaskViewSimulator;->mTransitionData:Lcom/android/quickstep/utils/TransitionSmoothHelper$TransitionData;

    if-nez p3, :cond_0

    iget-object p3, p0, Lcom/android/quickstep/util/TaskViewSimulator;->mMatrix:Landroid/graphics/Matrix;

    invoke-virtual {p1, p3}, Lcom/android/quickstep/util/SurfaceTransaction$SurfaceProperties;->setMatrix(Landroid/graphics/Matrix;)Lcom/android/quickstep/util/SurfaceTransaction$SurfaceProperties;

    move-result-object p3

    iget-object v0, p0, Lcom/android/quickstep/util/TaskViewSimulator;->mTmpCropRect:Landroid/graphics/Rect;

    invoke-virtual {p3, v0}, Lcom/android/quickstep/util/SurfaceTransaction$SurfaceProperties;->setWindowCrop(Landroid/graphics/Rect;)Lcom/android/quickstep/util/SurfaceTransaction$SurfaceProperties;

    move-result-object p3

    iget v0, p0, Lcom/android/quickstep/util/TaskViewSimulator;->mAlpha:F

    invoke-virtual {p3, v0}, Lcom/android/quickstep/util/SurfaceTransaction$SurfaceProperties;->setAlpha(F)Lcom/android/quickstep/util/SurfaceTransaction$SurfaceProperties;

    move-result-object p3

    invoke-virtual {p0}, Lcom/android/quickstep/util/TaskViewSimulator;->getCurrentCornerRadius()F

    move-result v0

    goto :goto_0

    :cond_0
    iget-object p3, p0, Lcom/android/quickstep/util/TaskViewSimulator;->mSmoothAnimMatrix:Landroid/graphics/Matrix;

    invoke-virtual {p1, p3}, Lcom/android/quickstep/util/SurfaceTransaction$SurfaceProperties;->setMatrix(Landroid/graphics/Matrix;)Lcom/android/quickstep/util/SurfaceTransaction$SurfaceProperties;

    move-result-object p3

    iget-object v0, p0, Lcom/android/quickstep/util/TaskViewSimulator;->mSmoothAnimCropRect:Landroid/graphics/Rect;

    invoke-virtual {p3, v0}, Lcom/android/quickstep/util/SurfaceTransaction$SurfaceProperties;->setWindowCrop(Landroid/graphics/Rect;)Lcom/android/quickstep/util/SurfaceTransaction$SurfaceProperties;

    move-result-object p3

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {p3, v0}, Lcom/android/quickstep/util/SurfaceTransaction$SurfaceProperties;->setAlpha(F)Lcom/android/quickstep/util/SurfaceTransaction$SurfaceProperties;

    move-result-object p3

    iget v0, p0, Lcom/android/quickstep/util/TaskViewSimulator;->mSmoothAnimCornerRadius:F

    :goto_0
    invoke-virtual {p3, v0}, Lcom/android/quickstep/util/SurfaceTransaction$SurfaceProperties;->setCornerRadius(F)Lcom/android/quickstep/util/SurfaceTransaction$SurfaceProperties;

    iget-object p0, p0, Lcom/android/quickstep/util/TaskViewSimulator;->mDrawsBelowRecents:Ljava/lang/Boolean;

    if-eqz p0, :cond_3

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    if-eqz p0, :cond_1

    const/high16 p0, -0x80000000

    iget p2, p2, Landroid/view/RemoteAnimationTarget;->prefixOrderIndex:I

    add-int/2addr p2, p0

    goto :goto_1

    :cond_1
    sget-boolean p0, Lcom/android/quickstep/TaskAnimationManager;->ENABLE_SHELL_TRANSITIONS:Z

    if-eqz p0, :cond_2

    const p2, 0x7fffffff

    goto :goto_1

    :cond_2
    const/4 p2, 0x0

    :goto_1
    invoke-virtual {p1, p2}, Lcom/android/quickstep/util/SurfaceTransaction$SurfaceProperties;->setLayer(I)Lcom/android/quickstep/util/SurfaceTransaction$SurfaceProperties;

    :cond_3
    return-void
.end method

.method public setAlpha(F)V
    .locals 0

    iput p1, p0, Lcom/android/quickstep/util/TaskViewSimulator;->mAlpha:F

    return-void
.end method

.method public setDp(Lcom/android/launcher3/DeviceProfile;)V
    .locals 1

    iput-object p1, p0, Lcom/android/quickstep/util/TaskViewSimulator;->mDp:Lcom/android/launcher3/DeviceProfile;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/quickstep/util/TaskViewSimulator;->mLayoutValid:Z

    iget-object p0, p0, Lcom/android/quickstep/util/TaskViewSimulator;->mOrientationState:Lcom/android/quickstep/util/RecentsOrientedState;

    invoke-virtual {p0, p1}, Lcom/android/quickstep/util/RecentsOrientedState;->setDeviceProfile(Lcom/android/launcher3/DeviceProfile;)V

    return-void
.end method

.method public setDrawsBelowRecents(Z)V
    .locals 0

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    iput-object p1, p0, Lcom/android/quickstep/util/TaskViewSimulator;->mDrawsBelowRecents:Ljava/lang/Boolean;

    return-void
.end method

.method public setIsDesktopTask(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/quickstep/util/TaskViewSimulator;->mIsDesktopTask:Z

    return-void
.end method

.method public setIsGridTask(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/quickstep/util/TaskViewSimulator;->mIsGridTask:Z

    return-void
.end method

.method public setOrientationState(Lcom/android/quickstep/util/RecentsOrientedState;)V
    .locals 0
    .param p1    # Lcom/android/quickstep/util/RecentsOrientedState;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/android/quickstep/util/TaskViewSimulator;->mOrientationState:Lcom/android/quickstep/util/RecentsOrientedState;

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/android/quickstep/util/TaskViewSimulator;->mLayoutValid:Z

    return-void
.end method

.method public setPreview(Landroid/view/RemoteAnimationTarget;)V
    .locals 1

    iget-object v0, p1, Landroid/view/RemoteAnimationTarget;->startBounds:Landroid/graphics/Rect;

    if-nez v0, :cond_0

    iget-object v0, p1, Landroid/view/RemoteAnimationTarget;->screenSpaceBounds:Landroid/graphics/Rect;

    :cond_0
    iget-object p1, p1, Landroid/view/RemoteAnimationTarget;->contentInsets:Landroid/graphics/Rect;

    invoke-virtual {p0, v0, p1}, Lcom/android/quickstep/util/TaskViewSimulator;->setPreviewBounds(Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    return-void
.end method

.method public setPreview(Landroid/view/RemoteAnimationTarget;Lcom/android/launcher3/util/SplitConfigurationOptions$SplitBounds;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/android/quickstep/util/TaskViewSimulator;->setPreview(Landroid/view/RemoteAnimationTarget;)V

    iput-object p2, p0, Lcom/android/quickstep/util/TaskViewSimulator;->mSplitBounds:Lcom/android/launcher3/util/SplitConfigurationOptions$SplitBounds;

    if-nez p2, :cond_0

    const/4 p1, -0x1

    iput p1, p0, Lcom/android/quickstep/util/TaskViewSimulator;->mStagePosition:I

    return-void

    :cond_0
    iget-object p1, p0, Lcom/android/quickstep/util/TaskViewSimulator;->mThumbnailPosition:Landroid/graphics/Rect;

    iget-object p2, p2, Lcom/android/launcher3/util/SplitConfigurationOptions$SplitBounds;->leftTopBounds:Landroid/graphics/Rect;

    invoke-virtual {p1, p2}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/android/quickstep/util/TaskViewSimulator;->mStagePosition:I

    iget-object p1, p0, Lcom/android/quickstep/util/TaskViewSimulator;->mPositionHelper:Lcom/android/systemui/shared/recents/utilities/PreviewPositionHelper;

    iget-object p2, p0, Lcom/android/quickstep/util/TaskViewSimulator;->mSplitBounds:Lcom/android/launcher3/util/SplitConfigurationOptions$SplitBounds;

    invoke-static {p2}, Lcom/android/quickstep/util/TaskViewSimulator;->convertSplitBounds(Lcom/android/launcher3/util/SplitConfigurationOptions$SplitBounds;)Lcom/android/wm/shell/util/SplitBounds;

    move-result-object p2

    iget p0, p0, Lcom/android/quickstep/util/TaskViewSimulator;->mStagePosition:I

    invoke-virtual {p1, p2, p0}, Lcom/android/systemui/shared/recents/utilities/PreviewPositionHelper;->setSplitBounds(Lcom/android/wm/shell/util/SplitBounds;I)V

    return-void
.end method

.method public setPreviewBounds(Landroid/graphics/Rect;Landroid/graphics/Rect;)V
    .locals 1

    iget-object v0, p0, Lcom/android/quickstep/util/TaskViewSimulator;->mThumbnailData:Lcom/android/systemui/shared/recents/model/ThumbnailData;

    iget-object v0, v0, Lcom/android/systemui/shared/recents/model/ThumbnailData;->insets:Landroid/graphics/Rect;

    invoke-virtual {v0, p2}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    iget-object p2, p0, Lcom/android/quickstep/util/TaskViewSimulator;->mThumbnailData:Lcom/android/systemui/shared/recents/model/ThumbnailData;

    const/4 v0, 0x1

    iput v0, p2, Lcom/android/systemui/shared/recents/model/ThumbnailData;->windowingMode:I

    iget-object p2, p0, Lcom/android/quickstep/util/TaskViewSimulator;->mThumbnailPosition:Landroid/graphics/Rect;

    invoke-virtual {p2, p1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/android/quickstep/util/TaskViewSimulator;->mLayoutValid:Z

    return-void
.end method

.method public setScroll(F)V
    .locals 0

    iget-object p0, p0, Lcom/android/quickstep/util/TaskViewSimulator;->recentsViewScroll:Lcom/android/launcher3/anim/AnimatedFloat;

    iput p1, p0, Lcom/android/launcher3/anim/AnimatedFloat;->value:F

    return-void
.end method

.method public setTaskRectTranslation(II)V
    .locals 0

    iput p1, p0, Lcom/android/quickstep/util/TaskViewSimulator;->mTaskRectTranslationX:I

    iput p2, p0, Lcom/android/quickstep/util/TaskViewSimulator;->mTaskRectTranslationY:I

    return-void
.end method

.method public setTransitionData(Lcom/android/quickstep/utils/TransitionSmoothHelper$TransitionData;)V
    .locals 2

    iget-object v0, p0, Lcom/android/quickstep/util/TaskViewSimulator;->mTransitionData:Lcom/android/quickstep/utils/TransitionSmoothHelper$TransitionData;

    if-eq v0, p1, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setTransitionData: hasData="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "TaskViewSimulator"

    invoke-static {v1, v0}, Ly2/e;->l(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    iput-object p1, p0, Lcom/android/quickstep/util/TaskViewSimulator;->mTransitionData:Lcom/android/quickstep/utils/TransitionSmoothHelper$TransitionData;

    if-eqz p1, :cond_4

    invoke-virtual {p1}, Lcom/android/quickstep/utils/TransitionSmoothHelper$TransitionData;->getMatrix()Landroid/graphics/Matrix;

    move-result-object p1

    if-eqz p1, :cond_2

    new-instance p1, Landroid/graphics/Matrix;

    invoke-direct {p1}, Landroid/graphics/Matrix;-><init>()V

    iput-object p1, p0, Lcom/android/quickstep/util/TaskViewSimulator;->mSmoothAnimMatrix:Landroid/graphics/Matrix;

    iget-object v0, p0, Lcom/android/quickstep/util/TaskViewSimulator;->mTransitionData:Lcom/android/quickstep/utils/TransitionSmoothHelper$TransitionData;

    invoke-virtual {v0}, Lcom/android/quickstep/utils/TransitionSmoothHelper$TransitionData;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    :cond_2
    iget-object p1, p0, Lcom/android/quickstep/util/TaskViewSimulator;->mTransitionData:Lcom/android/quickstep/utils/TransitionSmoothHelper$TransitionData;

    invoke-virtual {p1}, Lcom/android/quickstep/utils/TransitionSmoothHelper$TransitionData;->getWindowCrop()Landroid/graphics/Rect;

    move-result-object p1

    if-eqz p1, :cond_3

    new-instance p1, Landroid/graphics/Rect;

    iget-object v0, p0, Lcom/android/quickstep/util/TaskViewSimulator;->mTransitionData:Lcom/android/quickstep/utils/TransitionSmoothHelper$TransitionData;

    invoke-virtual {v0}, Lcom/android/quickstep/utils/TransitionSmoothHelper$TransitionData;->getWindowCrop()Landroid/graphics/Rect;

    move-result-object v0

    invoke-direct {p1, v0}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    iput-object p1, p0, Lcom/android/quickstep/util/TaskViewSimulator;->mSmoothAnimCropRect:Landroid/graphics/Rect;

    :cond_3
    iget-object p1, p0, Lcom/android/quickstep/util/TaskViewSimulator;->mTransitionData:Lcom/android/quickstep/utils/TransitionSmoothHelper$TransitionData;

    invoke-virtual {p1}, Lcom/android/quickstep/utils/TransitionSmoothHelper$TransitionData;->getCornerRadius()F

    move-result p1

    iput p1, p0, Lcom/android/quickstep/util/TaskViewSimulator;->mSmoothAnimCornerRadius:F

    :cond_4
    return-void
.end method
