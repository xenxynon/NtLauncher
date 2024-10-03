.class public Lcom/android/quickstep/views/TaskView;
.super Landroid/widget/FrameLayout;
.source "SourceFile"

# interfaces
.implements Lcom/android/launcher3/util/ViewPool$Reusable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/quickstep/views/TaskView$TaskIdAttributeContainer;,
        Lcom/android/quickstep/views/TaskView$FullscreenDrawParams;,
        Lcom/android/quickstep/views/TaskView$Type;,
        Lcom/android/quickstep/views/TaskView$TaskDataChanges;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field private static final DIM_ANIM_DURATION:J = 0x2bcL

.field private static final DISMISS_TRANSLATION_X:Landroid/util/FloatProperty;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/FloatProperty<",
            "Lcom/android/quickstep/views/TaskView;",
            ">;"
        }
    .end annotation
.end field

.field private static final DISMISS_TRANSLATION_Y:Landroid/util/FloatProperty;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/FloatProperty<",
            "Lcom/android/quickstep/views/TaskView;",
            ">;"
        }
    .end annotation
.end field

.field private static final EDGE_SCALE_DOWN_FACTOR_CAROUSEL:F = 0.03f

.field private static final EDGE_SCALE_DOWN_FACTOR_GRID:F = 0.0f

.field private static final EMPTY_RECT_F:Landroid/graphics/RectF;

.field public static final FLAG_UPDATE_ALL:I = 0x3

.field public static final FLAG_UPDATE_ICON:I = 0x1

.field public static final FLAG_UPDATE_THUMBNAIL:I = 0x2

.field public static final FOCUS_TRANSITION:Landroid/util/FloatProperty;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/FloatProperty<",
            "Lcom/android/quickstep/views/TaskView;",
            ">;"
        }
    .end annotation
.end field

.field public static final GRID_END_TRANSLATION_X:Landroid/util/FloatProperty;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/FloatProperty<",
            "Lcom/android/quickstep/views/TaskView;",
            ">;"
        }
    .end annotation
.end field

.field private static final GRID_INTERPOLATOR:Landroid/view/animation/Interpolator;

.field public static final MAX_PAGE_SCRIM_ALPHA:F = 0.4f

.field private static final NON_GRID_TRANSLATION_X:Landroid/util/FloatProperty;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/FloatProperty<",
            "Lcom/android/quickstep/views/TaskView;",
            ">;"
        }
    .end annotation
.end field

.field private static final NON_GRID_TRANSLATION_Y:Landroid/util/FloatProperty;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/FloatProperty<",
            "Lcom/android/quickstep/views/TaskView;",
            ">;"
        }
    .end annotation
.end field

.field private static final ORIENTATION_TASK_OFFSET_TRANSLATION_X:Landroid/util/FloatProperty;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/FloatProperty<",
            "Lcom/android/quickstep/views/TaskView;",
            ">;"
        }
    .end annotation
.end field

.field private static final ORIENTATION_TASK_OFFSET_TRANSLATION_Y:Landroid/util/FloatProperty;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/FloatProperty<",
            "Lcom/android/quickstep/views/TaskView;",
            ">;"
        }
    .end annotation
.end field

.field public static final SCALE_ICON_DURATION:J = 0x78L

.field public static final SNAPSHOT_SCALE:Landroid/util/FloatProperty;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/FloatProperty<",
            "Lcom/android/quickstep/views/TaskView;",
            ">;"
        }
    .end annotation
.end field

.field private static final SPLIT_SELECT_TRANSLATION_X:Landroid/util/FloatProperty;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/FloatProperty<",
            "Lcom/android/quickstep/views/TaskView;",
            ">;"
        }
    .end annotation
.end field

.field private static final SPLIT_SELECT_TRANSLATION_Y:Landroid/util/FloatProperty;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/FloatProperty<",
            "Lcom/android/quickstep/views/TaskView;",
            ">;"
        }
    .end annotation
.end field

.field private static final SYSTEM_GESTURE_EXCLUSION_RECT:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/graphics/Rect;",
            ">;"
        }
    .end annotation
.end field

.field private static final TAG:Ljava/lang/String;

.field private static final TASK_OFFSET_TRANSLATION_X:Landroid/util/FloatProperty;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/FloatProperty<",
            "Lcom/android/quickstep/views/TaskView;",
            ">;"
        }
    .end annotation
.end field

.field private static final TASK_OFFSET_TRANSLATION_Y:Landroid/util/FloatProperty;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/FloatProperty<",
            "Lcom/android/quickstep/views/TaskView;",
            ">;"
        }
    .end annotation
.end field

.field private static final TASK_RESISTANCE_TRANSLATION_X:Landroid/util/FloatProperty;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/FloatProperty<",
            "Lcom/android/quickstep/views/TaskView;",
            ">;"
        }
    .end annotation
.end field

.field private static final TASK_RESISTANCE_TRANSLATION_Y:Landroid/util/FloatProperty;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/FloatProperty<",
            "Lcom/android/quickstep/views/TaskView;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field protected final mActivity:Lcom/android/launcher3/statemanager/StatefulActivity;

.field private final mBorderAnimator:Lcom/android/quickstep/util/BorderAnimator;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private mBoxTranslationY:F

.field protected final mCurrentFullscreenParams:Lcom/android/quickstep/views/TaskView$FullscreenDrawParams;

.field protected final mDigitalWellBeingToast:Lcom/android/quickstep/views/DigitalWellBeingToast;

.field private mDismissScale:F

.field private mDismissTranslationX:F

.field private mDismissTranslationY:F

.field private mEndQuickswitchCuj:Z

.field private mFocusTransitionProgress:F

.field protected mFullscreenProgress:F

.field private mGridEndTranslationX:F

.field private mGridProgress:F

.field private mGridTranslationX:F

.field private mGridTranslationY:F

.field private mIconAndDimAnimator:Landroid/animation/ObjectAnimator;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private final mIconCenterCoords:[F

.field private mIconLoadRequest:Lcom/android/quickstep/util/CancellableTask;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private mIconScaleAnimStartProgress:F

.field private mIconTouchDelegate:Lcom/android/launcher3/util/TransformingTouchDelegate;

.field protected mIconView:Lcom/android/quickstep/views/IconView;

.field private mIsClickableAsLiveTile:Z

.field private mIsInOrientationChangeAnimation:Z

.field protected final mLastTouchDownPosition:Landroid/graphics/PointF;

.field private mModalness:F

.field private mNonGridScale:F

.field private mNonGridTranslationX:F

.field private mNonGridTranslationY:F

.field private mShowScreenshot:Z

.field protected mSnapshotView:Lcom/android/quickstep/views/TaskThumbnailView;

.field private mSplitSelectTranslationX:F

.field private mSplitSelectTranslationY:F

.field private mStableAlpha:F

.field protected mTask:Lcom/android/systemui/shared/recents/model/Task;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field protected mTaskIdAttributeContainer:[Lcom/android/quickstep/views/TaskView$TaskIdAttributeContainer;

.field protected mTaskIdContainer:[I

.field private mTaskOffsetTranslationX:F

.field private mTaskOffsetTranslationY:F

.field private mTaskResistanceTranslationX:F

.field private mTaskResistanceTranslationY:F

.field protected mTaskThumbnailSplashAlpha:F

.field private mTaskViewId:I

.field private mThumbnailLoadRequest:Lcom/android/quickstep/util/CancellableTask;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-class v0, Lcom/android/quickstep/views/TaskView;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/quickstep/views/TaskView;->TAG:Ljava/lang/String;

    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    sput-object v0, Lcom/android/quickstep/views/TaskView;->EMPTY_RECT_F:Landroid/graphics/RectF;

    sget-object v0, Lcom/android/launcher3/anim/Interpolators;->ACCEL_DEACCEL:Landroid/view/animation/Interpolator;

    sput-object v0, Lcom/android/quickstep/views/TaskView;->GRID_INTERPOLATOR:Landroid/view/animation/Interpolator;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/android/quickstep/views/TaskView;->SYSTEM_GESTURE_EXCLUSION_RECT:Ljava/util/List;

    new-instance v0, Lcom/android/quickstep/views/TaskView$1;

    const-string v1, "focusTransition"

    invoke-direct {v0, v1}, Lcom/android/quickstep/views/TaskView$1;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/quickstep/views/TaskView;->FOCUS_TRANSITION:Landroid/util/FloatProperty;

    new-instance v0, Lcom/android/quickstep/views/TaskView$2;

    const-string v1, "splitSelectTranslationX"

    invoke-direct {v0, v1}, Lcom/android/quickstep/views/TaskView$2;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/quickstep/views/TaskView;->SPLIT_SELECT_TRANSLATION_X:Landroid/util/FloatProperty;

    new-instance v0, Lcom/android/quickstep/views/TaskView$3;

    const-string v1, "splitSelectTranslationY"

    invoke-direct {v0, v1}, Lcom/android/quickstep/views/TaskView$3;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/quickstep/views/TaskView;->SPLIT_SELECT_TRANSLATION_Y:Landroid/util/FloatProperty;

    new-instance v0, Lcom/android/quickstep/views/TaskView$4;

    const-string v1, "dismissTranslationX"

    invoke-direct {v0, v1}, Lcom/android/quickstep/views/TaskView$4;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/quickstep/views/TaskView;->DISMISS_TRANSLATION_X:Landroid/util/FloatProperty;

    new-instance v0, Lcom/android/quickstep/views/TaskView$5;

    const-string v1, "dismissTranslationY"

    invoke-direct {v0, v1}, Lcom/android/quickstep/views/TaskView$5;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/quickstep/views/TaskView;->DISMISS_TRANSLATION_Y:Landroid/util/FloatProperty;

    new-instance v0, Lcom/android/quickstep/views/TaskView$6;

    const-string v1, "taskOffsetTranslationX"

    invoke-direct {v0, v1}, Lcom/android/quickstep/views/TaskView$6;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/quickstep/views/TaskView;->TASK_OFFSET_TRANSLATION_X:Landroid/util/FloatProperty;

    new-instance v0, Lcom/android/quickstep/views/TaskView$7;

    const-string v1, "taskOffsetTranslationY"

    invoke-direct {v0, v1}, Lcom/android/quickstep/views/TaskView$7;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/quickstep/views/TaskView;->TASK_OFFSET_TRANSLATION_Y:Landroid/util/FloatProperty;

    new-instance v0, Lcom/android/quickstep/views/TaskView$8;

    const-string v1, "taskResistanceTranslationX"

    invoke-direct {v0, v1}, Lcom/android/quickstep/views/TaskView$8;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/quickstep/views/TaskView;->TASK_RESISTANCE_TRANSLATION_X:Landroid/util/FloatProperty;

    new-instance v0, Lcom/android/quickstep/views/TaskView$9;

    const-string v1, "taskResistanceTranslationY"

    invoke-direct {v0, v1}, Lcom/android/quickstep/views/TaskView$9;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/quickstep/views/TaskView;->TASK_RESISTANCE_TRANSLATION_Y:Landroid/util/FloatProperty;

    new-instance v0, Lcom/android/quickstep/views/TaskView$10;

    const-string v1, "nonGridTranslationX"

    invoke-direct {v0, v1}, Lcom/android/quickstep/views/TaskView$10;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/quickstep/views/TaskView;->NON_GRID_TRANSLATION_X:Landroid/util/FloatProperty;

    new-instance v0, Lcom/android/quickstep/views/TaskView$11;

    const-string v1, "nonGridTranslationY"

    invoke-direct {v0, v1}, Lcom/android/quickstep/views/TaskView$11;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/quickstep/views/TaskView;->NON_GRID_TRANSLATION_Y:Landroid/util/FloatProperty;

    new-instance v0, Lcom/android/quickstep/views/TaskView$12;

    const-string v1, "gridEndTranslationX"

    invoke-direct {v0, v1}, Lcom/android/quickstep/views/TaskView$12;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/quickstep/views/TaskView;->GRID_END_TRANSLATION_X:Landroid/util/FloatProperty;

    new-instance v0, Lcom/android/quickstep/views/TaskView$13;

    const-string v1, "snapshotScale"

    invoke-direct {v0, v1}, Lcom/android/quickstep/views/TaskView$13;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/quickstep/views/TaskView;->SNAPSHOT_SCALE:Landroid/util/FloatProperty;

    new-instance v0, Lcom/android/quickstep/views/TaskView$16;

    const-string v1, "orientationTaskOffsetTranslationX"

    invoke-direct {v0, v1}, Lcom/android/quickstep/views/TaskView$16;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/quickstep/views/TaskView;->ORIENTATION_TASK_OFFSET_TRANSLATION_X:Landroid/util/FloatProperty;

    new-instance v0, Lcom/android/quickstep/views/TaskView$17;

    const-string v1, "orientationTaskOffsetTranslationY"

    invoke-direct {v0, v1}, Lcom/android/quickstep/views/TaskView$17;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/quickstep/views/TaskView;->ORIENTATION_TASK_OFFSET_TRANSLATION_Y:Landroid/util/FloatProperty;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/quickstep/views/TaskView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/quickstep/views/TaskView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/quickstep/views/TaskView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 5
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/android/quickstep/views/TaskView;->mNonGridScale:F

    iput v0, p0, Lcom/android/quickstep/views/TaskView;->mDismissScale:F

    const/4 v1, 0x0

    iput v1, p0, Lcom/android/quickstep/views/TaskView;->mIconScaleAnimStartProgress:F

    iput v0, p0, Lcom/android/quickstep/views/TaskView;->mFocusTransitionProgress:F

    iput v1, p0, Lcom/android/quickstep/views/TaskView;->mModalness:F

    iput v0, p0, Lcom/android/quickstep/views/TaskView;->mStableAlpha:F

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/quickstep/views/TaskView;->mTaskViewId:I

    const/4 v1, 0x2

    new-array v2, v1, [I

    fill-array-data v2, :array_0

    iput-object v2, p0, Lcom/android/quickstep/views/TaskView;->mTaskIdContainer:[I

    new-array v2, v1, [Lcom/android/quickstep/views/TaskView$TaskIdAttributeContainer;

    iput-object v2, p0, Lcom/android/quickstep/views/TaskView;->mTaskIdAttributeContainer:[Lcom/android/quickstep/views/TaskView$TaskIdAttributeContainer;

    new-array v1, v1, [F

    iput-object v1, p0, Lcom/android/quickstep/views/TaskView;->mIconCenterCoords:[F

    new-instance v1, Landroid/graphics/PointF;

    invoke-direct {v1}, Landroid/graphics/PointF;-><init>()V

    iput-object v1, p0, Lcom/android/quickstep/views/TaskView;->mLastTouchDownPosition:Landroid/graphics/PointF;

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/quickstep/views/TaskView;->mIsClickableAsLiveTile:Z

    invoke-static {p1}, Lcom/android/launcher3/BaseActivity;->fromContext(Landroid/content/Context;)Lcom/android/launcher3/BaseActivity;

    move-result-object v2

    check-cast v2, Lcom/android/launcher3/statemanager/StatefulActivity;

    iput-object v2, p0, Lcom/android/quickstep/views/TaskView;->mActivity:Lcom/android/launcher3/statemanager/StatefulActivity;

    new-instance v3, Lcom/android/quickstep/views/n2;

    invoke-direct {v3, p0}, Lcom/android/quickstep/views/n2;-><init>(Lcom/android/quickstep/views/TaskView;)V

    invoke-virtual {p0, v3}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v3, Lcom/android/quickstep/views/TaskView$FullscreenDrawParams;

    invoke-direct {v3, p1}, Lcom/android/quickstep/views/TaskView$FullscreenDrawParams;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/android/quickstep/views/TaskView;->mCurrentFullscreenParams:Lcom/android/quickstep/views/TaskView$FullscreenDrawParams;

    new-instance v4, Lcom/android/quickstep/views/DigitalWellBeingToast;

    invoke-direct {v4, v2, p0}, Lcom/android/quickstep/views/DigitalWellBeingToast;-><init>(Lcom/android/launcher3/BaseDraggingActivity;Lcom/android/quickstep/views/TaskView;)V

    iput-object v4, p0, Lcom/android/quickstep/views/TaskView;->mDigitalWellBeingToast:Lcom/android/quickstep/views/DigitalWellBeingToast;

    sget-object v2, Lcom/android/launcher3/config/FeatureFlags;->ENABLE_KEYBOARD_QUICK_SWITCH:Lcom/android/launcher3/config/FeatureFlags$BooleanFlag;

    invoke-virtual {v2}, Lcom/android/launcher3/config/FeatureFlags$BooleanFlag;->get()Z

    move-result v2

    const/4 v4, 0x0

    if-nez v2, :cond_1

    sget-boolean v2, Lcom/android/quickstep/views/DesktopTaskView;->DESKTOP_MODE_SUPPORTED:Z

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_0
    move v1, v4

    :cond_1
    :goto_0
    xor-int/lit8 v2, v1, 0x1

    invoke-virtual {p0, v2}, Landroid/widget/FrameLayout;->setWillNotDraw(Z)V

    sget-object v2, Lcom/android/launcher3/R$styleable;->TaskView:[I

    invoke-virtual {p1, p2, v2, p3, p4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p2

    if-nez v1, :cond_2

    const/4 p1, 0x0

    goto :goto_1

    :cond_2
    new-instance p3, Lcom/android/quickstep/util/BorderAnimator;

    invoke-static {v3}, Lcom/android/quickstep/views/TaskView$FullscreenDrawParams;->access$2400(Lcom/android/quickstep/views/TaskView$FullscreenDrawParams;)F

    move-result p4

    float-to-int p4, p4

    invoke-virtual {p2, v4, v0}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v0

    new-instance v1, Lcom/android/quickstep/util/BorderAnimator$SimpleParams;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v2, 0x7f070257

    invoke-virtual {p1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    new-instance v2, Lcom/android/quickstep/views/q2;

    invoke-direct {v2, p0}, Lcom/android/quickstep/views/q2;-><init>(Lcom/android/quickstep/views/TaskView;)V

    invoke-direct {v1, p1, v2, p0}, Lcom/android/quickstep/util/BorderAnimator$SimpleParams;-><init>(ILcom/android/quickstep/util/BorderAnimator$BorderBoundsBuilder;Landroid/view/View;)V

    invoke-direct {p3, p4, v0, v1}, Lcom/android/quickstep/util/BorderAnimator;-><init>(IILcom/android/quickstep/util/BorderAnimator$BorderAnimationParams;)V

    move-object p1, p3

    :goto_1
    iput-object p1, p0, Lcom/android/quickstep/views/TaskView;->mBorderAnimator:Lcom/android/quickstep/util/BorderAnimator;

    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    return-void

    nop

    :array_0
    .array-data 4
        -0x1
        -0x1
    .end array-data
.end method

.method public static synthetic a(I)[Landroid/view/RemoteAnimationTarget;
    .locals 0

    invoke-static {p0}, Lcom/android/quickstep/views/TaskView;->lambda$launchTasks$8(I)[Landroid/view/RemoteAnimationTarget;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$000(Lcom/android/quickstep/views/TaskView;)F
    .locals 0

    iget p0, p0, Lcom/android/quickstep/views/TaskView;->mFocusTransitionProgress:F

    return p0
.end method

.method static synthetic access$100(Lcom/android/quickstep/views/TaskView;F)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/quickstep/views/TaskView;->setSplitSelectTranslationX(F)V

    return-void
.end method

.method static synthetic access$1000(Lcom/android/quickstep/views/TaskView;)F
    .locals 0

    iget p0, p0, Lcom/android/quickstep/views/TaskView;->mTaskOffsetTranslationX:F

    return p0
.end method

.method static synthetic access$1100(Lcom/android/quickstep/views/TaskView;F)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/quickstep/views/TaskView;->setTaskOffsetTranslationY(F)V

    return-void
.end method

.method static synthetic access$1200(Lcom/android/quickstep/views/TaskView;)F
    .locals 0

    iget p0, p0, Lcom/android/quickstep/views/TaskView;->mTaskOffsetTranslationY:F

    return p0
.end method

.method static synthetic access$1300(Lcom/android/quickstep/views/TaskView;F)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/quickstep/views/TaskView;->setTaskResistanceTranslationX(F)V

    return-void
.end method

.method static synthetic access$1400(Lcom/android/quickstep/views/TaskView;)F
    .locals 0

    iget p0, p0, Lcom/android/quickstep/views/TaskView;->mTaskResistanceTranslationX:F

    return p0
.end method

.method static synthetic access$1500(Lcom/android/quickstep/views/TaskView;F)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/quickstep/views/TaskView;->setTaskResistanceTranslationY(F)V

    return-void
.end method

.method static synthetic access$1600(Lcom/android/quickstep/views/TaskView;)F
    .locals 0

    iget p0, p0, Lcom/android/quickstep/views/TaskView;->mTaskResistanceTranslationY:F

    return p0
.end method

.method static synthetic access$1700(Lcom/android/quickstep/views/TaskView;F)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/quickstep/views/TaskView;->setNonGridTranslationX(F)V

    return-void
.end method

.method static synthetic access$1800(Lcom/android/quickstep/views/TaskView;)F
    .locals 0

    iget p0, p0, Lcom/android/quickstep/views/TaskView;->mNonGridTranslationX:F

    return p0
.end method

.method static synthetic access$1900(Lcom/android/quickstep/views/TaskView;F)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/quickstep/views/TaskView;->setNonGridTranslationY(F)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/quickstep/views/TaskView;)F
    .locals 0

    iget p0, p0, Lcom/android/quickstep/views/TaskView;->mSplitSelectTranslationX:F

    return p0
.end method

.method static synthetic access$2000(Lcom/android/quickstep/views/TaskView;)F
    .locals 0

    iget p0, p0, Lcom/android/quickstep/views/TaskView;->mNonGridTranslationY:F

    return p0
.end method

.method static synthetic access$2100(Lcom/android/quickstep/views/TaskView;F)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/quickstep/views/TaskView;->setGridEndTranslationX(F)V

    return-void
.end method

.method static synthetic access$2200(Lcom/android/quickstep/views/TaskView;)F
    .locals 0

    iget p0, p0, Lcom/android/quickstep/views/TaskView;->mGridEndTranslationX:F

    return p0
.end method

.method static synthetic access$2300(Lcom/android/quickstep/views/TaskView;F)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/quickstep/views/TaskView;->setSnapshotScale(F)V

    return-void
.end method

.method static synthetic access$2600(Lcom/android/quickstep/views/TaskView;)I
    .locals 0

    invoke-direct {p0}, Lcom/android/quickstep/views/TaskView;->getRootViewDisplayId()I

    move-result p0

    return p0
.end method

.method static synthetic access$2702(Lcom/android/quickstep/views/TaskView;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/quickstep/views/TaskView;->mIsClickableAsLiveTile:Z

    return p1
.end method

.method static synthetic access$2802(Lcom/android/quickstep/views/TaskView;Landroid/animation/ObjectAnimator;)Landroid/animation/ObjectAnimator;
    .locals 0

    iput-object p1, p0, Lcom/android/quickstep/views/TaskView;->mIconAndDimAnimator:Landroid/animation/ObjectAnimator;

    return-object p1
.end method

.method static synthetic access$300(Lcom/android/quickstep/views/TaskView;F)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/quickstep/views/TaskView;->setSplitSelectTranslationY(F)V

    return-void
.end method

.method static synthetic access$400(Lcom/android/quickstep/views/TaskView;)F
    .locals 0

    iget p0, p0, Lcom/android/quickstep/views/TaskView;->mSplitSelectTranslationY:F

    return p0
.end method

.method static synthetic access$500(Lcom/android/quickstep/views/TaskView;F)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/quickstep/views/TaskView;->setDismissTranslationX(F)V

    return-void
.end method

.method static synthetic access$600(Lcom/android/quickstep/views/TaskView;)F
    .locals 0

    iget p0, p0, Lcom/android/quickstep/views/TaskView;->mDismissTranslationX:F

    return p0
.end method

.method static synthetic access$700(Lcom/android/quickstep/views/TaskView;F)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/quickstep/views/TaskView;->setDismissTranslationY(F)V

    return-void
.end method

.method static synthetic access$800(Lcom/android/quickstep/views/TaskView;)F
    .locals 0

    iget p0, p0, Lcom/android/quickstep/views/TaskView;->mDismissTranslationY:F

    return p0
.end method

.method static synthetic access$900(Lcom/android/quickstep/views/TaskView;F)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/quickstep/views/TaskView;->setTaskOffsetTranslationX(F)V

    return-void
.end method

.method private applyScale()V
    .locals 2

    invoke-virtual {p0}, Lcom/android/quickstep/views/TaskView;->getPersistentScale()F

    move-result v0

    const/high16 v1, 0x3f800000    # 1.0f

    mul-float/2addr v0, v1

    iget v1, p0, Lcom/android/quickstep/views/TaskView;->mDismissScale:F

    mul-float/2addr v0, v1

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->setScaleX(F)V

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->setScaleY(F)V

    invoke-virtual {p0}, Lcom/android/quickstep/views/TaskView;->updateSnapshotRadius()V

    return-void
.end method

.method private applyTranslationX()V
    .locals 2

    iget v0, p0, Lcom/android/quickstep/views/TaskView;->mDismissTranslationX:F

    iget v1, p0, Lcom/android/quickstep/views/TaskView;->mTaskOffsetTranslationX:F

    add-float/2addr v0, v1

    iget v1, p0, Lcom/android/quickstep/views/TaskView;->mTaskResistanceTranslationX:F

    add-float/2addr v0, v1

    iget v1, p0, Lcom/android/quickstep/views/TaskView;->mSplitSelectTranslationX:F

    add-float/2addr v0, v1

    iget v1, p0, Lcom/android/quickstep/views/TaskView;->mGridEndTranslationX:F

    add-float/2addr v0, v1

    invoke-virtual {p0}, Lcom/android/quickstep/views/TaskView;->getPersistentTranslationX()F

    move-result v1

    add-float/2addr v0, v1

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->setTranslationX(F)V

    return-void
.end method

.method private applyTranslationY()V
    .locals 2

    iget v0, p0, Lcom/android/quickstep/views/TaskView;->mDismissTranslationY:F

    iget v1, p0, Lcom/android/quickstep/views/TaskView;->mTaskOffsetTranslationY:F

    add-float/2addr v0, v1

    iget v1, p0, Lcom/android/quickstep/views/TaskView;->mTaskResistanceTranslationY:F

    add-float/2addr v0, v1

    iget v1, p0, Lcom/android/quickstep/views/TaskView;->mSplitSelectTranslationY:F

    add-float/2addr v0, v1

    invoke-virtual {p0}, Lcom/android/quickstep/views/TaskView;->getPersistentTranslationY()F

    move-result v1

    add-float/2addr v0, v1

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->setTranslationY(F)V

    return-void
.end method

.method public static synthetic b(Lcom/android/quickstep/views/TaskView;Ljava/util/function/Consumer;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/quickstep/views/TaskView;->lambda$launchTask$4(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public static synthetic c(Lcom/android/quickstep/views/TaskView;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/quickstep/views/TaskView;->onClick(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic d(Lcom/android/quickstep/views/TaskView;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/quickstep/views/TaskView;->lambda$launchTask$1()V

    return-void
.end method

.method public static synthetic e(Lcom/android/quickstep/views/TaskView;Lcom/android/systemui/shared/recents/model/ThumbnailData;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/quickstep/views/TaskView;->lambda$onTaskListVisibilityChanged$9(Lcom/android/systemui/shared/recents/model/ThumbnailData;)V

    return-void
.end method

.method public static synthetic f(Lcom/android/quickstep/util/TaskRemovedDuringLaunchListener;J)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/android/quickstep/views/TaskView;->lambda$launchTask$3(Lcom/android/quickstep/util/TaskRemovedDuringLaunchListener;J)V

    return-void
.end method

.method public static synthetic g(Lcom/android/quickstep/views/TaskView;Landroid/app/ActivityOptions;Lcom/android/systemui/shared/recents/model/Task$TaskKey;Ljava/util/function/Consumer;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/android/quickstep/views/TaskView;->lambda$launchTask$5(Landroid/app/ActivityOptions;Lcom/android/systemui/shared/recents/model/Task$TaskKey;Ljava/util/function/Consumer;)V

    return-void
.end method

.method public static getEdgeScaleDownFactor(Lcom/android/launcher3/DeviceProfile;)F
    .locals 0

    iget-boolean p0, p0, Lcom/android/launcher3/DeviceProfile;->isTablet:Z

    if-eqz p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    const p0, 0x3cf5c28f    # 0.03f

    :goto_0
    return p0
.end method

.method private getExpectedViewHeight(Landroid/view/View;)I
    .locals 1

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p0

    iget p0, p0, Landroid/view/ViewGroup$LayoutParams;->height:I

    if-lez p0, :cond_0

    goto :goto_0

    :cond_0
    const p0, 0x3fffffff    # 1.9999999f

    const/high16 v0, -0x80000000

    invoke-static {p0, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p0

    invoke-virtual {p1, p0, p0}, Landroid/view/View;->measure(II)V

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result p0

    :goto_0
    return p0
.end method

.method private getGridTrans(F)F
    .locals 1

    sget-object v0, Lcom/android/quickstep/views/TaskView;->GRID_INTERPOLATOR:Landroid/view/animation/Interpolator;

    iget p0, p0, Lcom/android/quickstep/views/TaskView;->mGridProgress:F

    invoke-interface {v0, p0}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result p0

    const/4 v0, 0x0

    invoke-static {p0, v0, p1}, Lcom/android/launcher3/Utilities;->mapRange(FFF)F

    move-result p0

    return p0
.end method

.method private getNonGridTrans(F)F
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/quickstep/views/TaskView;->getGridTrans(F)F

    move-result p0

    sub-float/2addr p1, p0

    return p1
.end method

.method private getRootViewDisplayId()I
    .locals 0

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getRootView()Landroid/view/View;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/View;->getDisplay()Landroid/view/Display;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/view/Display;->getDisplayId()I

    move-result p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static synthetic h(Lcom/android/quickstep/views/TaskView;Lcom/android/quickstep/views/IconView;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/quickstep/views/TaskView;->lambda$setIcon$11(Lcom/android/quickstep/views/IconView;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic i(Ljava/lang/Runnable;Landroid/os/Handler;J)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lcom/android/quickstep/views/TaskView;->lambda$makeCustomAnimation$6(Ljava/lang/Runnable;Landroid/os/Handler;J)V

    return-void
.end method

.method public static synthetic j(Lcom/android/quickstep/views/TaskView;Lcom/android/systemui/shared/recents/model/Task;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/quickstep/views/TaskView;->lambda$onTaskListVisibilityChanged$10(Lcom/android/systemui/shared/recents/model/Task;)V

    return-void
.end method

.method public static synthetic k(Lcom/android/quickstep/views/TaskView;Ljava/lang/String;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/quickstep/views/TaskView;->lambda$getFilterUpdateCallback$0(Ljava/lang/String;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic l(I)[Landroid/view/RemoteAnimationTarget;
    .locals 0

    invoke-static {p0}, Lcom/android/quickstep/views/TaskView;->lambda$launchTasks$7(I)[Landroid/view/RemoteAnimationTarget;

    move-result-object p0

    return-object p0
.end method

.method private synthetic lambda$getFilterUpdateCallback$0(Ljava/lang/String;Landroid/view/View;)V
    .locals 0

    invoke-virtual {p0}, Lcom/android/quickstep/views/TaskView;->getRecentsView()Lcom/android/quickstep/views/RecentsView;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/android/quickstep/views/RecentsView;->setAndApplyFilter(Ljava/lang/String;)V

    return-void
.end method

.method private synthetic lambda$launchTask$1()V
    .locals 1

    sget-object v0, Lcom/android/quickstep/views/TaskView;->TAG:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/android/quickstep/views/TaskView;->notifyTaskLaunchFailed(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/quickstep/views/TaskView;->getRecentsView()Lcom/android/quickstep/views/RecentsView;

    move-result-object p0

    if-eqz p0, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/quickstep/views/RecentsView;->startHome(Z)V

    iget-object v0, p0, Lcom/android/quickstep/views/RecentsView;->mSizeStrategy:Lcom/android/quickstep/BaseActivityInterface;

    invoke-virtual {v0}, Lcom/android/quickstep/BaseActivityInterface;->getTaskbarController()Lcom/android/launcher3/taskbar/TaskbarUIController;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/android/quickstep/views/RecentsView;->mSizeStrategy:Lcom/android/quickstep/BaseActivityInterface;

    invoke-virtual {p0}, Lcom/android/quickstep/BaseActivityInterface;->getTaskbarController()Lcom/android/launcher3/taskbar/TaskbarUIController;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/launcher3/taskbar/TaskbarUIController;->refreshResumedState()V

    :cond_0
    return-void
.end method

.method private static synthetic lambda$launchTask$2(Ljava/util/function/Consumer;J)V
    .locals 0

    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-interface {p0, p1}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    return-void
.end method

.method private static synthetic lambda$launchTask$3(Lcom/android/quickstep/util/TaskRemovedDuringLaunchListener;J)V
    .locals 0

    invoke-virtual {p0}, Lcom/android/quickstep/util/TaskRemovedDuringLaunchListener;->onTransitionFinished()V

    return-void
.end method

.method private synthetic lambda$launchTask$4(Ljava/util/function/Consumer;)V
    .locals 1

    sget-object v0, Lcom/android/quickstep/views/TaskView;->TAG:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/android/quickstep/views/TaskView;->notifyTaskLaunchFailed(Ljava/lang/String;)V

    sget-object p0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-interface {p1, p0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    return-void
.end method

.method private synthetic lambda$launchTask$5(Landroid/app/ActivityOptions;Lcom/android/systemui/shared/recents/model/Task$TaskKey;Ljava/util/function/Consumer;)V
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/app/ActivityOptions;->setPendingIntentBackgroundActivityStartMode(I)Landroid/app/ActivityOptions;

    invoke-static {}, Lcom/android/systemui/shared/system/ActivityManagerWrapper;->getInstance()Lcom/android/systemui/shared/system/ActivityManagerWrapper;

    move-result-object v0

    invoke-virtual {v0, p2, p1}, Lcom/android/systemui/shared/system/ActivityManagerWrapper;->startActivityFromRecents(Lcom/android/systemui/shared/recents/model/Task$TaskKey;Landroid/app/ActivityOptions;)Z

    move-result p1

    if-nez p1, :cond_0

    sget-object p1, Lcom/android/launcher3/util/Executors;->MAIN_EXECUTOR:Lcom/android/launcher3/util/LooperExecutor;

    new-instance p2, Lcom/android/quickstep/views/t2;

    invoke-direct {p2, p0, p3}, Lcom/android/quickstep/views/t2;-><init>(Lcom/android/quickstep/views/TaskView;Ljava/util/function/Consumer;)V

    invoke-virtual {p1, p2}, Lcom/android/launcher3/util/LooperExecutor;->post(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method private static synthetic lambda$launchTasks$7(I)[Landroid/view/RemoteAnimationTarget;
    .locals 0

    new-array p0, p0, [Landroid/view/RemoteAnimationTarget;

    return-object p0
.end method

.method private static synthetic lambda$launchTasks$8(I)[Landroid/view/RemoteAnimationTarget;
    .locals 0

    new-array p0, p0, [Landroid/view/RemoteAnimationTarget;

    return-object p0
.end method

.method private static synthetic lambda$makeCustomAnimation$6(Ljava/lang/Runnable;Landroid/os/Handler;J)V
    .locals 0

    if-eqz p0, :cond_0

    invoke-virtual {p1, p0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method private synthetic lambda$onTaskListVisibilityChanged$10(Lcom/android/systemui/shared/recents/model/Task;)V
    .locals 2

    invoke-virtual {p0}, Lcom/android/quickstep/views/TaskView;->getRecentsView()Lcom/android/quickstep/views/RecentsView;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/quickstep/views/TaskView;->mIconView:Lcom/android/quickstep/views/IconView;

    iget-object v1, p1, Lcom/android/systemui/shared/recents/model/Task;->icon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, v0, v1}, Lcom/android/quickstep/views/TaskView;->setIcon(Lcom/android/quickstep/views/IconView;Landroid/graphics/drawable/Drawable;)V

    iget-object p0, p0, Lcom/android/quickstep/views/TaskView;->mDigitalWellBeingToast:Lcom/android/quickstep/views/DigitalWellBeingToast;

    invoke-virtual {p0, p1}, Lcom/android/quickstep/views/DigitalWellBeingToast;->initialize(Lcom/android/systemui/shared/recents/model/Task;)V

    return-void
.end method

.method private synthetic lambda$onTaskListVisibilityChanged$9(Lcom/android/systemui/shared/recents/model/ThumbnailData;)V
    .locals 1

    invoke-virtual {p0}, Lcom/android/quickstep/views/TaskView;->getRecentsView()Lcom/android/quickstep/views/RecentsView;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/quickstep/views/TaskView;->mSnapshotView:Lcom/android/quickstep/views/TaskThumbnailView;

    iget-object p0, p0, Lcom/android/quickstep/views/TaskView;->mTask:Lcom/android/systemui/shared/recents/model/Task;

    invoke-virtual {v0, p0, p1}, Lcom/android/quickstep/views/TaskThumbnailView;->setThumbnail(Lcom/android/systemui/shared/recents/model/Task;Lcom/android/systemui/shared/recents/model/ThumbnailData;)V

    return-void
.end method

.method private synthetic lambda$setIcon$11(Lcom/android/quickstep/views/IconView;Landroid/view/View;)V
    .locals 0

    invoke-virtual {p0}, Lcom/android/quickstep/views/TaskView;->confirmSecondSplitSelectApp()Z

    move-result p2

    if-eqz p2, :cond_0

    return-void

    :cond_0
    invoke-direct {p0, p1}, Lcom/android/quickstep/views/TaskView;->showTaskMenu(Lcom/android/quickstep/views/IconView;)Z

    return-void
.end method

.method public static synthetic m(Ljava/util/function/Consumer;J)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/android/quickstep/views/TaskView;->lambda$launchTask$2(Ljava/util/function/Consumer;J)V

    return-void
.end method

.method private makeCustomAnimation(Landroid/content/Context;IILjava/lang/Runnable;Landroid/os/Handler;)Landroid/app/ActivityOptions;
    .locals 6

    new-instance v4, Lcom/android/quickstep/views/l2;

    invoke-direct {v4, p4, p5}, Lcom/android/quickstep/views/l2;-><init>(Ljava/lang/Runnable;Landroid/os/Handler;)V

    const/4 v5, 0x0

    move-object v0, p1

    move v1, p2

    move v2, p3

    move-object v3, p5

    invoke-static/range {v0 .. v5}, Landroid/app/ActivityOptions;->makeCustomTaskAnimation(Landroid/content/Context;IILandroid/os/Handler;Landroid/app/ActivityOptions$OnAnimationStartedListener;Landroid/app/ActivityOptions$OnAnimationFinishedListener;)Landroid/app/ActivityOptions;

    move-result-object p0

    return-object p0
.end method

.method private notifyTaskLaunchFailed(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/android/quickstep/views/TaskView;->mTask:Lcom/android/systemui/shared/recents/model/Task;

    const-string v1, "Failed to launch task"

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " (task="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/quickstep/views/TaskView;->mTask:Lcom/android/systemui/shared/recents/model/Task;

    iget-object v1, v1, Lcom/android/systemui/shared/recents/model/Task;->key:Lcom/android/systemui/shared/recents/model/Task$TaskKey;

    iget-object v1, v1, Lcom/android/systemui/shared/recents/model/Task$TaskKey;->baseIntent:Landroid/content/Intent;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " userId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/quickstep/views/TaskView;->mTask:Lcom/android/systemui/shared/recents/model/Task;

    iget-object v1, v1, Lcom/android/systemui/shared/recents/model/Task;->key:Lcom/android/systemui/shared/recents/model/Task$TaskKey;

    iget v1, v1, Lcom/android/systemui/shared/recents/model/Task$TaskKey;->userId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :cond_0
    invoke-static {p1, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object p0

    const p1, 0x7f120059

    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p0

    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    return-void
.end method

.method private onClick(Landroid/view/View;)V
    .locals 0

    invoke-virtual {p0}, Lcom/android/quickstep/views/TaskView;->getTask()Lcom/android/systemui/shared/recents/model/Task;

    move-result-object p1

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/android/quickstep/views/TaskView;->confirmSecondSplitSelectApp()Z

    move-result p1

    if-eqz p1, :cond_1

    return-void

    :cond_1
    invoke-virtual {p0}, Lcom/android/quickstep/views/TaskView;->launchTasks()Lcom/android/launcher3/util/RunnableList;

    iget-object p1, p0, Lcom/android/quickstep/views/TaskView;->mActivity:Lcom/android/launcher3/statemanager/StatefulActivity;

    invoke-virtual {p1}, Lcom/android/launcher3/BaseActivity;->getStatsLogManager()Lcom/android/launcher3/logging/StatsLogManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/launcher3/logging/StatsLogManager;->logger()Lcom/android/launcher3/logging/StatsLogManager$StatsLogger;

    move-result-object p1

    invoke-virtual {p0}, Lcom/android/quickstep/views/TaskView;->getItemInfo()Lcom/android/launcher3/model/data/WorkspaceItemInfo;

    move-result-object p0

    invoke-interface {p1, p0}, Lcom/android/launcher3/logging/StatsLogManager$StatsLogger;->withItemInfo(Lcom/android/launcher3/model/data/ItemInfo;)Lcom/android/launcher3/logging/StatsLogManager$StatsLogger;

    move-result-object p0

    sget-object p1, Lcom/android/launcher3/logging/StatsLogManager$LauncherEvent;->LAUNCHER_TASK_LAUNCH_TAP:Lcom/android/launcher3/logging/StatsLogManager$LauncherEvent;

    invoke-interface {p0, p1}, Lcom/android/launcher3/logging/StatsLogManager$StatsLogger;->log(Lcom/android/launcher3/logging/StatsLogManager$EventEnum;)V

    return-void
.end method

.method private setBoxTranslationY(F)V
    .locals 0

    iput p1, p0, Lcom/android/quickstep/views/TaskView;->mBoxTranslationY:F

    invoke-direct {p0}, Lcom/android/quickstep/views/TaskView;->applyTranslationY()V

    return-void
.end method

.method private setDismissTranslationX(F)V
    .locals 0

    iput p1, p0, Lcom/android/quickstep/views/TaskView;->mDismissTranslationX:F

    invoke-direct {p0}, Lcom/android/quickstep/views/TaskView;->applyTranslationX()V

    return-void
.end method

.method private setDismissTranslationY(F)V
    .locals 0

    iput p1, p0, Lcom/android/quickstep/views/TaskView;->mDismissTranslationY:F

    invoke-direct {p0}, Lcom/android/quickstep/views/TaskView;->applyTranslationY()V

    return-void
.end method

.method private setGridEndTranslationX(F)V
    .locals 0

    iput p1, p0, Lcom/android/quickstep/views/TaskView;->mGridEndTranslationX:F

    invoke-direct {p0}, Lcom/android/quickstep/views/TaskView;->applyTranslationX()V

    return-void
.end method

.method private setIconScaleAndDim(FZ)V
    .locals 1

    iget-object v0, p0, Lcom/android/quickstep/views/TaskView;->mIconAndDimAnimator:Landroid/animation/ObjectAnimator;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->cancel()V

    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/android/quickstep/views/TaskView;->setIconsAndBannersTransitionProgress(FZ)V

    return-void
.end method

.method private setNonGridScale(F)V
    .locals 0

    iput p1, p0, Lcom/android/quickstep/views/TaskView;->mNonGridScale:F

    invoke-direct {p0}, Lcom/android/quickstep/views/TaskView;->applyScale()V

    return-void
.end method

.method private setNonGridTranslationX(F)V
    .locals 0

    iput p1, p0, Lcom/android/quickstep/views/TaskView;->mNonGridTranslationX:F

    invoke-direct {p0}, Lcom/android/quickstep/views/TaskView;->applyTranslationX()V

    return-void
.end method

.method private setNonGridTranslationY(F)V
    .locals 0

    iput p1, p0, Lcom/android/quickstep/views/TaskView;->mNonGridTranslationY:F

    invoke-direct {p0}, Lcom/android/quickstep/views/TaskView;->applyTranslationY()V

    return-void
.end method

.method private setSnapshotScale(F)V
    .locals 0

    iput p1, p0, Lcom/android/quickstep/views/TaskView;->mDismissScale:F

    invoke-direct {p0}, Lcom/android/quickstep/views/TaskView;->applyScale()V

    return-void
.end method

.method private setSplitSelectTranslationX(F)V
    .locals 0

    iput p1, p0, Lcom/android/quickstep/views/TaskView;->mSplitSelectTranslationX:F

    invoke-direct {p0}, Lcom/android/quickstep/views/TaskView;->applyTranslationX()V

    return-void
.end method

.method private setSplitSelectTranslationY(F)V
    .locals 0

    iput p1, p0, Lcom/android/quickstep/views/TaskView;->mSplitSelectTranslationY:F

    invoke-direct {p0}, Lcom/android/quickstep/views/TaskView;->applyTranslationY()V

    return-void
.end method

.method private setTaskOffsetTranslationX(F)V
    .locals 0

    iput p1, p0, Lcom/android/quickstep/views/TaskView;->mTaskOffsetTranslationX:F

    invoke-direct {p0}, Lcom/android/quickstep/views/TaskView;->applyTranslationX()V

    return-void
.end method

.method private setTaskOffsetTranslationY(F)V
    .locals 0

    iput p1, p0, Lcom/android/quickstep/views/TaskView;->mTaskOffsetTranslationY:F

    invoke-direct {p0}, Lcom/android/quickstep/views/TaskView;->applyTranslationY()V

    return-void
.end method

.method private setTaskResistanceTranslationX(F)V
    .locals 0

    iput p1, p0, Lcom/android/quickstep/views/TaskView;->mTaskResistanceTranslationX:F

    invoke-direct {p0}, Lcom/android/quickstep/views/TaskView;->applyTranslationX()V

    return-void
.end method

.method private setTaskResistanceTranslationY(F)V
    .locals 0

    iput p1, p0, Lcom/android/quickstep/views/TaskView;->mTaskResistanceTranslationY:F

    invoke-direct {p0}, Lcom/android/quickstep/views/TaskView;->applyTranslationY()V

    return-void
.end method

.method private showTaskMenu(Lcom/android/quickstep/views/IconView;)Z
    .locals 2

    invoke-virtual {p0}, Lcom/android/quickstep/views/TaskView;->getRecentsView()Lcom/android/quickstep/views/RecentsView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/quickstep/views/RecentsView;->canLaunchFullscreenTask()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    iget-object v0, p0, Lcom/android/quickstep/views/TaskView;->mActivity:Lcom/android/launcher3/statemanager/StatefulActivity;

    invoke-virtual {v0}, Lcom/android/launcher3/BaseActivity;->getDeviceProfile()Lj3/a;

    move-result-object v0

    iget-boolean v0, v0, Lcom/android/launcher3/DeviceProfile;->isTablet:Z

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/android/quickstep/views/TaskView;->getRecentsView()Lcom/android/quickstep/views/RecentsView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/quickstep/views/RecentsView;->isClearAllHidden()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/android/quickstep/views/TaskView;->getRecentsView()Lcom/android/quickstep/views/RecentsView;

    move-result-object p1

    invoke-virtual {p0}, Lcom/android/quickstep/views/TaskView;->getRecentsView()Lcom/android/quickstep/views/RecentsView;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    move-result p0

    invoke-virtual {p1, p0}, Lcom/android/launcher3/PagedView;->snapToPage(I)Z

    const/4 p0, 0x0

    return p0

    :cond_1
    iget-object v0, p0, Lcom/android/quickstep/views/TaskView;->mActivity:Lcom/android/launcher3/statemanager/StatefulActivity;

    invoke-virtual {v0}, Lcom/android/launcher3/BaseActivity;->getStatsLogManager()Lcom/android/launcher3/logging/StatsLogManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/logging/StatsLogManager;->logger()Lcom/android/launcher3/logging/StatsLogManager$StatsLogger;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/quickstep/views/TaskView;->getItemInfo()Lcom/android/launcher3/model/data/WorkspaceItemInfo;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/android/launcher3/logging/StatsLogManager$StatsLogger;->withItemInfo(Lcom/android/launcher3/model/data/ItemInfo;)Lcom/android/launcher3/logging/StatsLogManager$StatsLogger;

    move-result-object v0

    sget-object v1, Lcom/android/launcher3/logging/StatsLogManager$LauncherEvent;->LAUNCHER_TASK_ICON_TAP_OR_LONGPRESS:Lcom/android/launcher3/logging/StatsLogManager$LauncherEvent;

    invoke-interface {v0, v1}, Lcom/android/launcher3/logging/StatsLogManager$StatsLogger;->log(Lcom/android/launcher3/logging/StatsLogManager$EventEnum;)V

    invoke-virtual {p0, p1}, Lcom/android/quickstep/views/TaskView;->showTaskMenuWithContainer(Lcom/android/quickstep/views/IconView;)Z

    move-result p0

    return p0
.end method


# virtual methods
.method public animateIconScaleAndDimIntoView()V
    .locals 4

    iget-object v0, p0, Lcom/android/quickstep/views/TaskView;->mIconAndDimAnimator:Landroid/animation/ObjectAnimator;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->cancel()V

    :cond_0
    sget-object v0, Lcom/android/quickstep/views/TaskView;->FOCUS_TRANSITION:Landroid/util/FloatProperty;

    const/4 v1, 0x1

    new-array v1, v1, [F

    const/4 v2, 0x0

    const/high16 v3, 0x3f800000    # 1.0f

    aput v3, v1, v2

    invoke-static {p0, v0, v1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/quickstep/views/TaskView;->mIconAndDimAnimator:Landroid/animation/ObjectAnimator;

    iget v1, p0, Lcom/android/quickstep/views/TaskView;->mIconScaleAnimStartProgress:F

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->setCurrentFraction(F)V

    iget-object v0, p0, Lcom/android/quickstep/views/TaskView;->mIconAndDimAnimator:Landroid/animation/ObjectAnimator;

    const-wide/16 v1, 0x2bc

    invoke-virtual {v0, v1, v2}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v0

    sget-object v1, Lcom/android/launcher3/anim/Interpolators;->LINEAR:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iget-object v0, p0, Lcom/android/quickstep/views/TaskView;->mIconAndDimAnimator:Landroid/animation/ObjectAnimator;

    new-instance v1, Lcom/android/quickstep/views/TaskView$15;

    invoke-direct {v1, p0}, Lcom/android/quickstep/views/TaskView$15;-><init>(Lcom/android/quickstep/views/TaskView;)V

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    iget-object p0, p0, Lcom/android/quickstep/views/TaskView;->mIconAndDimAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {p0}, Landroid/animation/ObjectAnimator;->start()V

    return-void
.end method

.method protected applyThumbnailSplashAlpha()V
    .locals 1

    iget-object v0, p0, Lcom/android/quickstep/views/TaskView;->mSnapshotView:Lcom/android/quickstep/views/TaskThumbnailView;

    iget p0, p0, Lcom/android/quickstep/views/TaskView;->mTaskThumbnailSplashAlpha:F

    invoke-virtual {v0, p0}, Lcom/android/quickstep/views/TaskThumbnailView;->setSplashAlpha(F)V

    return-void
.end method

.method public bind(Lcom/android/systemui/shared/recents/model/Task;Lcom/android/quickstep/util/RecentsOrientedState;)V
    .locals 9

    invoke-virtual {p0}, Lcom/android/quickstep/views/TaskView;->cancelPendingLoadTasks()V

    iput-object p1, p0, Lcom/android/quickstep/views/TaskView;->mTask:Lcom/android/systemui/shared/recents/model/Task;

    iget-object v0, p0, Lcom/android/quickstep/views/TaskView;->mTaskIdContainer:[I

    iget-object v1, p1, Lcom/android/systemui/shared/recents/model/Task;->key:Lcom/android/systemui/shared/recents/model/Task$TaskKey;

    iget v1, v1, Lcom/android/systemui/shared/recents/model/Task$TaskKey;->id:I

    const/4 v2, 0x0

    aput v1, v0, v2

    iget-object v0, p0, Lcom/android/quickstep/views/TaskView;->mTaskIdAttributeContainer:[Lcom/android/quickstep/views/TaskView$TaskIdAttributeContainer;

    new-instance v1, Lcom/android/quickstep/views/TaskView$TaskIdAttributeContainer;

    iget-object v6, p0, Lcom/android/quickstep/views/TaskView;->mSnapshotView:Lcom/android/quickstep/views/TaskThumbnailView;

    iget-object v7, p0, Lcom/android/quickstep/views/TaskView;->mIconView:Lcom/android/quickstep/views/IconView;

    const/4 v8, -0x1

    move-object v3, v1

    move-object v4, p0

    move-object v5, p1

    invoke-direct/range {v3 .. v8}, Lcom/android/quickstep/views/TaskView$TaskIdAttributeContainer;-><init>(Lcom/android/quickstep/views/TaskView;Lcom/android/systemui/shared/recents/model/Task;Lcom/android/quickstep/views/TaskThumbnailView;Lcom/android/quickstep/views/IconView;I)V

    aput-object v1, v0, v2

    iget-object v0, p0, Lcom/android/quickstep/views/TaskView;->mSnapshotView:Lcom/android/quickstep/views/TaskThumbnailView;

    invoke-virtual {v0, p1}, Lcom/android/quickstep/views/TaskThumbnailView;->bind(Lcom/android/systemui/shared/recents/model/Task;)V

    invoke-virtual {p0, p2}, Lcom/android/quickstep/views/TaskView;->setOrientationState(Lcom/android/quickstep/util/RecentsOrientedState;)V

    iget-object p1, p0, Lcom/android/quickstep/views/TaskView;->mDigitalWellBeingToast:Lcom/android/quickstep/views/DigitalWellBeingToast;

    iget-object p0, p0, Lcom/android/quickstep/views/TaskView;->mTask:Lcom/android/systemui/shared/recents/model/Task;

    invoke-virtual {p1, p0}, Lcom/android/quickstep/views/DigitalWellBeingToast;->initialize(Lcom/android/systemui/shared/recents/model/Task;)V

    return-void
.end method

.method protected cancelPendingLoadTasks()V
    .locals 2

    iget-object v0, p0, Lcom/android/quickstep/views/TaskView;->mThumbnailLoadRequest:Lcom/android/quickstep/util/CancellableTask;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/quickstep/util/CancellableTask;->cancel()V

    iput-object v1, p0, Lcom/android/quickstep/views/TaskView;->mThumbnailLoadRequest:Lcom/android/quickstep/util/CancellableTask;

    :cond_0
    iget-object v0, p0, Lcom/android/quickstep/views/TaskView;->mIconLoadRequest:Lcom/android/quickstep/util/CancellableTask;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/android/quickstep/util/CancellableTask;->cancel()V

    iput-object v1, p0, Lcom/android/quickstep/views/TaskView;->mIconLoadRequest:Lcom/android/quickstep/util/CancellableTask;

    :cond_1
    return-void
.end method

.method protected computeAndSetIconTouchDelegate(Lcom/android/quickstep/views/IconView;[FLcom/android/launcher3/util/TransformingTouchDelegate;)V
    .locals 3

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v0

    int-to-float v0, v0

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v0, v1

    const/4 v1, 0x1

    aput v0, p2, v1

    const/4 v2, 0x0

    aput v0, p2, v2

    iget-object p0, p0, Lcom/android/quickstep/views/TaskView;->mActivity:Lcom/android/launcher3/statemanager/StatefulActivity;

    invoke-interface {p0}, Lcom/android/launcher3/views/ActivityContext;->getDragLayer()Lcom/android/launcher3/views/BaseDragLayer;

    move-result-object p0

    invoke-static {p1, p0, p2, v2}, Lcom/android/launcher3/Utilities;->getDescendantCoordRelativeToAncestor(Landroid/view/View;Landroid/view/View;[FZ)F

    aget p0, p2, v2

    sub-float/2addr p0, v0

    float-to-int p0, p0

    aget p1, p2, v1

    sub-float/2addr p1, v0

    float-to-int p1, p1

    aget v2, p2, v2

    add-float/2addr v2, v0

    float-to-int v2, v2

    aget p2, p2, v1

    add-float/2addr p2, v0

    float-to-int p2, p2

    invoke-virtual {p3, p0, p1, v2, p2}, Lcom/android/launcher3/util/TransformingTouchDelegate;->setBounds(IIII)V

    return-void
.end method

.method protected confirmSecondSplitSelectApp()Z
    .locals 10

    invoke-virtual {p0}, Lcom/android/quickstep/views/TaskView;->getLastSelectedChildTaskIndex()I

    move-result v0

    iget-object v1, p0, Lcom/android/quickstep/views/TaskView;->mTaskIdAttributeContainer:[Lcom/android/quickstep/views/TaskView$TaskIdAttributeContainer;

    aget-object v0, v1, v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/android/quickstep/views/TaskView$TaskIdAttributeContainer;->getThumbnailView()Lcom/android/quickstep/views/TaskThumbnailView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/quickstep/views/TaskThumbnailView;->getThumbnail()Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v0}, Lcom/android/quickstep/views/TaskView$TaskIdAttributeContainer;->getTask()Lcom/android/systemui/shared/recents/model/Task;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {v0}, Lcom/android/quickstep/views/TaskView$TaskIdAttributeContainer;->getTask()Lcom/android/systemui/shared/recents/model/Task;

    move-result-object v2

    iget-boolean v2, v2, Lcom/android/systemui/shared/recents/model/Task;->isTopAppLocked:Z

    if-eqz v2, :cond_0

    invoke-virtual {v0}, Lcom/android/quickstep/views/TaskView$TaskIdAttributeContainer;->getThumbnailView()Lcom/android/quickstep/views/TaskThumbnailView;

    move-result-object v1

    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v1, v2}, Landroidx/core/view/ViewKt;->drawToBitmap(Landroid/view/View;Landroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v1

    :cond_0
    move-object v7, v1

    invoke-virtual {p0}, Lcom/android/quickstep/views/TaskView;->getRecentsView()Lcom/android/quickstep/views/RecentsView;

    move-result-object v2

    invoke-virtual {v0}, Lcom/android/quickstep/views/TaskView$TaskIdAttributeContainer;->getTask()Lcom/android/systemui/shared/recents/model/Task;

    move-result-object v4

    invoke-virtual {v0}, Lcom/android/quickstep/views/TaskView$TaskIdAttributeContainer;->getIconView()Lcom/android/quickstep/views/IconView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/quickstep/views/IconView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-virtual {v0}, Lcom/android/quickstep/views/TaskView$TaskIdAttributeContainer;->getThumbnailView()Lcom/android/quickstep/views/TaskThumbnailView;

    move-result-object v6

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v3, p0

    invoke-virtual/range {v2 .. v9}, Lcom/android/quickstep/views/RecentsView;->confirmSplitSelect(Lcom/android/quickstep/views/TaskView;Lcom/android/systemui/shared/recents/model/Task;Landroid/graphics/drawable/Drawable;Landroid/view/View;Landroid/graphics/Bitmap;Landroid/content/Intent;Landroid/os/UserHandle;)Z

    move-result p0

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method public containsMultipleTasks()Z
    .locals 2

    iget-object p0, p0, Lcom/android/quickstep/views/TaskView;->mTaskIdContainer:[I

    const/4 v0, 0x1

    aget p0, p0, v0

    const/4 v1, -0x1

    if-eq p0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public containsTaskId(I)Z
    .locals 0

    iget-object p0, p0, Lcom/android/quickstep/views/TaskView;->mTask:Lcom/android/systemui/shared/recents/model/Task;

    if-eqz p0, :cond_0

    iget-object p0, p0, Lcom/android/systemui/shared/recents/model/Task;->key:Lcom/android/systemui/shared/recents/model/Task$TaskKey;

    iget p0, p0, Lcom/android/systemui/shared/recents/model/Task$TaskKey;->id:I

    if-ne p0, p1, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 3

    invoke-virtual {p0}, Lcom/android/quickstep/views/TaskView;->getRecentsView()Lcom/android/quickstep/views/RecentsView;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_4

    invoke-virtual {p0}, Lcom/android/quickstep/views/TaskView;->getTask()Lcom/android/systemui/shared/recents/model/Task;

    move-result-object v2

    if-nez v2, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {v0}, Lcom/android/quickstep/views/RecentsView;->getSplitSelectController()Lcom/android/quickstep/util/SplitSelectStateController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/quickstep/util/SplitSelectStateController;->isSplitSelectActive()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {v0}, Lcom/android/quickstep/util/SplitSelectStateController;->getInitialTaskId()I

    move-result v0

    invoke-virtual {p0}, Lcom/android/quickstep/views/TaskView;->getTask()Lcom/android/systemui/shared/recents/model/Task;

    move-result-object v2

    iget-object v2, v2, Lcom/android/systemui/shared/recents/model/Task;->key:Lcom/android/systemui/shared/recents/model/Task$TaskKey;

    iget v2, v2, Lcom/android/systemui/shared/recents/model/Task$TaskKey;->id:I

    if-ne v0, v2, :cond_1

    invoke-virtual {p0}, Lcom/android/quickstep/views/TaskView;->containsMultipleTasks()Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    move v0, v1

    :goto_0
    if-eqz v0, :cond_2

    return v1

    :cond_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/android/quickstep/views/TaskView;->mLastTouchDownPosition:Landroid/graphics/PointF;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/PointF;->set(FF)V

    :cond_3
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0

    :cond_4
    :goto_1
    return v1
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 0

    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->draw(Landroid/graphics/Canvas;)V

    iget-object p0, p0, Lcom/android/quickstep/views/TaskView;->mBorderAnimator:Lcom/android/quickstep/util/BorderAnimator;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1}, Lcom/android/quickstep/util/BorderAnimator;->drawBorder(Landroid/graphics/Canvas;)V

    :cond_0
    return-void
.end method

.method protected bridge synthetic generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    .locals 0

    invoke-super {p0}, Landroid/widget/FrameLayout;->generateDefaultLayoutParams()Landroid/widget/FrameLayout$LayoutParams;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic generateLayoutParams(Landroid/util/AttributeSet;)Landroid/view/ViewGroup$LayoutParams;
    .locals 0

    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->generateLayoutParams(Landroid/util/AttributeSet;)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object p0

    return-object p0
.end method

.method public getDigitalWellBeingToast()Lcom/android/quickstep/views/DigitalWellBeingToast;
    .locals 0

    iget-object p0, p0, Lcom/android/quickstep/views/TaskView;->mDigitalWellBeingToast:Lcom/android/quickstep/views/DigitalWellBeingToast;

    return-object p0
.end method

.method protected getFilterUpdateCallback(Ljava/lang/String;)Landroid/view/View$OnClickListener;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    new-instance v0, Lcom/android/quickstep/views/p2;

    invoke-direct {v0, p0, p1}, Lcom/android/quickstep/views/p2;-><init>(Lcom/android/quickstep/views/TaskView;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/quickstep/views/TaskView;->getRecentsView()Lcom/android/quickstep/views/RecentsView;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/quickstep/views/RecentsView;->getFilterState()Lcom/android/quickstep/RecentsFilterState;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/android/quickstep/RecentsFilterState;->shouldShowFilterUI(Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_0

    const/4 v0, 0x0

    :cond_0
    return-object v0
.end method

.method public getGridTranslationX()F
    .locals 0

    iget p0, p0, Lcom/android/quickstep/views/TaskView;->mGridTranslationX:F

    return p0
.end method

.method public getGridTranslationY()F
    .locals 0

    iget p0, p0, Lcom/android/quickstep/views/TaskView;->mGridTranslationY:F

    return p0
.end method

.method public getIconView()Lcom/android/quickstep/views/IconView;
    .locals 0

    iget-object p0, p0, Lcom/android/quickstep/views/TaskView;->mIconView:Lcom/android/quickstep/views/IconView;

    return-object p0
.end method

.method public getItemInfo()Lcom/android/launcher3/model/data/WorkspaceItemInfo;
    .locals 1

    iget-object v0, p0, Lcom/android/quickstep/views/TaskView;->mTask:Lcom/android/systemui/shared/recents/model/Task;

    invoke-virtual {p0, v0}, Lcom/android/quickstep/views/TaskView;->getItemInfo(Lcom/android/systemui/shared/recents/model/Task;)Lcom/android/launcher3/model/data/WorkspaceItemInfo;

    move-result-object p0

    return-object p0
.end method

.method protected getItemInfo(Lcom/android/systemui/shared/recents/model/Task;)Lcom/android/launcher3/model/data/WorkspaceItemInfo;
    .locals 3
    .param p1    # Lcom/android/systemui/shared/recents/model/Task;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    new-instance v0, Lcom/android/launcher3/model/data/WorkspaceItemInfo;

    invoke-direct {v0}, Lcom/android/launcher3/model/data/WorkspaceItemInfo;-><init>()V

    const/4 v1, 0x7

    iput v1, v0, Lcom/android/launcher3/model/data/ItemInfo;->itemType:I

    const/16 v1, -0x6d

    iput v1, v0, Lcom/android/launcher3/model/data/ItemInfo;->container:I

    if-nez p1, :cond_0

    return-object v0

    :cond_0
    iget-object v1, p1, Lcom/android/systemui/shared/recents/model/Task;->key:Lcom/android/systemui/shared/recents/model/Task$TaskKey;

    invoke-static {v1}, Lcom/android/quickstep/TaskUtils;->getLaunchComponentKeyForTask(Lcom/android/systemui/shared/recents/model/Task$TaskKey;)Lcom/android/launcher3/util/ComponentKey;

    move-result-object v1

    iget-object v2, v1, Lcom/android/launcher3/util/ComponentKey;->user:Landroid/os/UserHandle;

    iput-object v2, v0, Lcom/android/launcher3/model/data/ItemInfo;->user:Landroid/os/UserHandle;

    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    iget-object v1, v1, Lcom/android/launcher3/util/ComponentKey;->componentName:Landroid/content/ComponentName;

    invoke-virtual {v2, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    move-result-object v1

    iput-object v1, v0, Lcom/android/launcher3/model/data/WorkspaceItemInfo;->intent:Landroid/content/Intent;

    iget-object p1, p1, Lcom/android/systemui/shared/recents/model/Task;->title:Ljava/lang/String;

    iput-object p1, v0, Lcom/android/launcher3/model/data/ItemInfo;->title:Ljava/lang/CharSequence;

    invoke-virtual {p0}, Lcom/android/quickstep/views/TaskView;->getRecentsView()Lcom/android/quickstep/views/RecentsView;

    move-result-object p1

    if-eqz p1, :cond_1

    invoke-virtual {p0}, Lcom/android/quickstep/views/TaskView;->getRecentsView()Lcom/android/quickstep/views/RecentsView;

    move-result-object p1

    invoke-virtual {p1, p0}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    move-result p0

    iput p0, v0, Lcom/android/launcher3/model/data/ItemInfo;->screenId:I

    :cond_1
    return-object v0
.end method

.method protected getLastSelectedChildTaskIndex()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public getNonGridScale()F
    .locals 0

    iget p0, p0, Lcom/android/quickstep/views/TaskView;->mNonGridScale:F

    return p0
.end method

.method public getOffsetAdjustment(Z)F
    .locals 0

    invoke-virtual {p0, p1}, Lcom/android/quickstep/views/TaskView;->getScrollAdjustment(Z)F

    move-result p0

    return p0
.end method

.method public getOrientationPrimaryTaskOffsetTranslationProperty()Landroid/util/FloatProperty;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/FloatProperty<",
            "Lcom/android/quickstep/views/TaskView;",
            ">;"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/android/quickstep/views/TaskView;->getPagedOrientationHandler()Lcom/android/launcher3/touch/PagedOrientationHandler;

    move-result-object p0

    sget-object v0, Lcom/android/quickstep/views/TaskView;->ORIENTATION_TASK_OFFSET_TRANSLATION_X:Landroid/util/FloatProperty;

    sget-object v1, Lcom/android/quickstep/views/TaskView;->ORIENTATION_TASK_OFFSET_TRANSLATION_Y:Landroid/util/FloatProperty;

    invoke-interface {p0, v0, v1}, Lcom/android/launcher3/touch/PagedOrientationHandler;->getPrimaryValue(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/util/FloatProperty;

    return-object p0
.end method

.method public bridge synthetic getOverlay()Landroid/view/ViewOverlay;
    .locals 0

    invoke-super {p0}, Landroid/widget/FrameLayout;->getOverlay()Landroid/view/ViewGroupOverlay;

    move-result-object p0

    return-object p0
.end method

.method getPagedOrientationHandler()Lcom/android/launcher3/touch/PagedOrientationHandler;
    .locals 0

    invoke-virtual {p0}, Lcom/android/quickstep/views/TaskView;->getRecentsView()Lcom/android/quickstep/views/RecentsView;

    move-result-object p0

    iget-object p0, p0, Lcom/android/quickstep/views/RecentsView;->mOrientationState:Lcom/android/quickstep/util/RecentsOrientedState;

    invoke-virtual {p0}, Lcom/android/quickstep/util/RecentsOrientedState;->getOrientationHandler()Lcom/android/launcher3/touch/PagedOrientationHandler;

    move-result-object p0

    return-object p0
.end method

.method public getPersistentScale()F
    .locals 2

    sget-object v0, Lcom/android/quickstep/views/TaskView;->GRID_INTERPOLATOR:Landroid/view/animation/Interpolator;

    iget v1, p0, Lcom/android/quickstep/views/TaskView;->mGridProgress:F

    invoke-interface {v0, v1}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result v0

    iget p0, p0, Lcom/android/quickstep/views/TaskView;->mNonGridScale:F

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-static {v0, p0, v1}, Lcom/android/launcher3/Utilities;->mapRange(FFF)F

    move-result p0

    mul-float/2addr p0, v1

    return p0
.end method

.method public getPersistentTranslationX()F
    .locals 2

    iget v0, p0, Lcom/android/quickstep/views/TaskView;->mNonGridTranslationX:F

    invoke-direct {p0, v0}, Lcom/android/quickstep/views/TaskView;->getNonGridTrans(F)F

    move-result v0

    iget v1, p0, Lcom/android/quickstep/views/TaskView;->mGridTranslationX:F

    invoke-direct {p0, v1}, Lcom/android/quickstep/views/TaskView;->getGridTrans(F)F

    move-result p0

    add-float/2addr v0, p0

    return v0
.end method

.method public getPersistentTranslationY()F
    .locals 2

    iget v0, p0, Lcom/android/quickstep/views/TaskView;->mBoxTranslationY:F

    iget v1, p0, Lcom/android/quickstep/views/TaskView;->mNonGridTranslationY:F

    invoke-direct {p0, v1}, Lcom/android/quickstep/views/TaskView;->getNonGridTrans(F)F

    move-result v1

    add-float/2addr v0, v1

    iget v1, p0, Lcom/android/quickstep/views/TaskView;->mGridTranslationY:F

    invoke-direct {p0, v1}, Lcom/android/quickstep/views/TaskView;->getGridTrans(F)F

    move-result p0

    add-float/2addr v0, p0

    return v0
.end method

.method public getPrimaryDismissTranslationProperty()Landroid/util/FloatProperty;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/FloatProperty<",
            "Lcom/android/quickstep/views/TaskView;",
            ">;"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/android/quickstep/views/TaskView;->getPagedOrientationHandler()Lcom/android/launcher3/touch/PagedOrientationHandler;

    move-result-object p0

    sget-object v0, Lcom/android/quickstep/views/TaskView;->DISMISS_TRANSLATION_X:Landroid/util/FloatProperty;

    sget-object v1, Lcom/android/quickstep/views/TaskView;->DISMISS_TRANSLATION_Y:Landroid/util/FloatProperty;

    invoke-interface {p0, v0, v1}, Lcom/android/launcher3/touch/PagedOrientationHandler;->getPrimaryValue(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/util/FloatProperty;

    return-object p0
.end method

.method public getPrimaryNonGridTranslationProperty()Landroid/util/FloatProperty;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/FloatProperty<",
            "Lcom/android/quickstep/views/TaskView;",
            ">;"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/android/quickstep/views/TaskView;->getPagedOrientationHandler()Lcom/android/launcher3/touch/PagedOrientationHandler;

    move-result-object p0

    sget-object v0, Lcom/android/quickstep/views/TaskView;->NON_GRID_TRANSLATION_X:Landroid/util/FloatProperty;

    sget-object v1, Lcom/android/quickstep/views/TaskView;->NON_GRID_TRANSLATION_Y:Landroid/util/FloatProperty;

    invoke-interface {p0, v0, v1}, Lcom/android/launcher3/touch/PagedOrientationHandler;->getPrimaryValue(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/util/FloatProperty;

    return-object p0
.end method

.method public getPrimarySplitTranslationProperty()Landroid/util/FloatProperty;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/FloatProperty<",
            "Lcom/android/quickstep/views/TaskView;",
            ">;"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/android/quickstep/views/TaskView;->getPagedOrientationHandler()Lcom/android/launcher3/touch/PagedOrientationHandler;

    move-result-object p0

    sget-object v0, Lcom/android/quickstep/views/TaskView;->SPLIT_SELECT_TRANSLATION_X:Landroid/util/FloatProperty;

    sget-object v1, Lcom/android/quickstep/views/TaskView;->SPLIT_SELECT_TRANSLATION_Y:Landroid/util/FloatProperty;

    invoke-interface {p0, v0, v1}, Lcom/android/launcher3/touch/PagedOrientationHandler;->getPrimaryValue(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/util/FloatProperty;

    return-object p0
.end method

.method public getPrimaryTaskOffsetTranslation()Ljava/lang/Float;
    .locals 2

    invoke-virtual {p0}, Lcom/android/quickstep/views/TaskView;->getPagedOrientationHandler()Lcom/android/launcher3/touch/PagedOrientationHandler;

    move-result-object v0

    iget v1, p0, Lcom/android/quickstep/views/TaskView;->mTaskOffsetTranslationX:F

    iget p0, p0, Lcom/android/quickstep/views/TaskView;->mTaskOffsetTranslationY:F

    invoke-interface {v0, v1, p0}, Lcom/android/launcher3/touch/PagedOrientationHandler;->getPrimaryValue(FF)F

    move-result p0

    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p0

    return-object p0
.end method

.method public getPrimaryTaskOffsetTranslationProperty()Landroid/util/FloatProperty;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/FloatProperty<",
            "Lcom/android/quickstep/views/TaskView;",
            ">;"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/android/quickstep/views/TaskView;->getPagedOrientationHandler()Lcom/android/launcher3/touch/PagedOrientationHandler;

    move-result-object p0

    sget-object v0, Lcom/android/quickstep/views/TaskView;->TASK_OFFSET_TRANSLATION_X:Landroid/util/FloatProperty;

    sget-object v1, Lcom/android/quickstep/views/TaskView;->TASK_OFFSET_TRANSLATION_Y:Landroid/util/FloatProperty;

    invoke-interface {p0, v0, v1}, Lcom/android/launcher3/touch/PagedOrientationHandler;->getPrimaryValue(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/util/FloatProperty;

    return-object p0
.end method

.method public getRecentsView()Lcom/android/quickstep/views/RecentsView;
    .locals 0

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getParent()Landroid/view/ViewParent;

    move-result-object p0

    check-cast p0, Lcom/android/quickstep/views/RecentsView;

    return-object p0
.end method

.method public getScrollAdjustment(Z)F
    .locals 1

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    iget p0, p0, Lcom/android/quickstep/views/TaskView;->mGridTranslationX:F

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/android/quickstep/views/TaskView;->getPrimaryNonGridTranslationProperty()Landroid/util/FloatProperty;

    move-result-object p1

    invoke-virtual {p1, p0}, Landroid/util/FloatProperty;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Float;

    invoke-virtual {p0}, Ljava/lang/Float;->floatValue()F

    move-result p0

    :goto_0
    add-float/2addr p0, v0

    return p0
.end method

.method public getSecondaryDismissTranslationProperty()Landroid/util/FloatProperty;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/FloatProperty<",
            "Lcom/android/quickstep/views/TaskView;",
            ">;"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/android/quickstep/views/TaskView;->getPagedOrientationHandler()Lcom/android/launcher3/touch/PagedOrientationHandler;

    move-result-object p0

    sget-object v0, Lcom/android/quickstep/views/TaskView;->DISMISS_TRANSLATION_X:Landroid/util/FloatProperty;

    sget-object v1, Lcom/android/quickstep/views/TaskView;->DISMISS_TRANSLATION_Y:Landroid/util/FloatProperty;

    invoke-interface {p0, v0, v1}, Lcom/android/launcher3/touch/PagedOrientationHandler;->getSecondaryValue(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/util/FloatProperty;

    return-object p0
.end method

.method public getSecondaryNonGridTranslationProperty()Landroid/util/FloatProperty;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/FloatProperty<",
            "Lcom/android/quickstep/views/TaskView;",
            ">;"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/android/quickstep/views/TaskView;->getPagedOrientationHandler()Lcom/android/launcher3/touch/PagedOrientationHandler;

    move-result-object p0

    sget-object v0, Lcom/android/quickstep/views/TaskView;->NON_GRID_TRANSLATION_X:Landroid/util/FloatProperty;

    sget-object v1, Lcom/android/quickstep/views/TaskView;->NON_GRID_TRANSLATION_Y:Landroid/util/FloatProperty;

    invoke-interface {p0, v0, v1}, Lcom/android/launcher3/touch/PagedOrientationHandler;->getSecondaryValue(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/util/FloatProperty;

    return-object p0
.end method

.method public getSecondarySplitTranslationProperty()Landroid/util/FloatProperty;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/FloatProperty<",
            "Lcom/android/quickstep/views/TaskView;",
            ">;"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/android/quickstep/views/TaskView;->getPagedOrientationHandler()Lcom/android/launcher3/touch/PagedOrientationHandler;

    move-result-object p0

    sget-object v0, Lcom/android/quickstep/views/TaskView;->SPLIT_SELECT_TRANSLATION_X:Landroid/util/FloatProperty;

    sget-object v1, Lcom/android/quickstep/views/TaskView;->SPLIT_SELECT_TRANSLATION_Y:Landroid/util/FloatProperty;

    invoke-interface {p0, v0, v1}, Lcom/android/launcher3/touch/PagedOrientationHandler;->getSecondaryValue(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/util/FloatProperty;

    return-object p0
.end method

.method public getSecondaryTaskOffsetTranslationProperty()Landroid/util/FloatProperty;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/FloatProperty<",
            "Lcom/android/quickstep/views/TaskView;",
            ">;"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/android/quickstep/views/TaskView;->getPagedOrientationHandler()Lcom/android/launcher3/touch/PagedOrientationHandler;

    move-result-object p0

    sget-object v0, Lcom/android/quickstep/views/TaskView;->TASK_OFFSET_TRANSLATION_X:Landroid/util/FloatProperty;

    sget-object v1, Lcom/android/quickstep/views/TaskView;->TASK_OFFSET_TRANSLATION_Y:Landroid/util/FloatProperty;

    invoke-interface {p0, v0, v1}, Lcom/android/launcher3/touch/PagedOrientationHandler;->getSecondaryValue(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/util/FloatProperty;

    return-object p0
.end method

.method public getSizeAdjustment(Z)F
    .locals 1

    const/high16 v0, 0x3f800000    # 1.0f

    if-eqz p1, :cond_0

    iget p0, p0, Lcom/android/quickstep/views/TaskView;->mNonGridScale:F

    mul-float/2addr v0, p0

    :cond_0
    return v0
.end method

.method public getTask()Lcom/android/systemui/shared/recents/model/Task;
    .locals 0
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    iget-object p0, p0, Lcom/android/quickstep/views/TaskView;->mTask:Lcom/android/systemui/shared/recents/model/Task;

    return-object p0
.end method

.method public getTaskAttributesById(I)Lcom/android/quickstep/views/TaskView$TaskIdAttributeContainer;
    .locals 4
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    iget-object p0, p0, Lcom/android/quickstep/views/TaskView;->mTaskIdAttributeContainer:[Lcom/android/quickstep/views/TaskView$TaskIdAttributeContainer;

    array-length v0, p0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    aget-object v2, p0, v1

    invoke-virtual {v2}, Lcom/android/quickstep/views/TaskView$TaskIdAttributeContainer;->getTask()Lcom/android/systemui/shared/recents/model/Task;

    move-result-object v3

    iget-object v3, v3, Lcom/android/systemui/shared/recents/model/Task;->key:Lcom/android/systemui/shared/recents/model/Task$TaskKey;

    iget v3, v3, Lcom/android/systemui/shared/recents/model/Task$TaskKey;->id:I

    if-ne v3, p1, :cond_0

    return-object v2

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public getTaskCornerRadius()F
    .locals 0

    iget-object p0, p0, Lcom/android/quickstep/views/TaskView;->mCurrentFullscreenParams:Lcom/android/quickstep/views/TaskView$FullscreenDrawParams;

    invoke-static {p0}, Lcom/android/quickstep/views/TaskView$FullscreenDrawParams;->access$2400(Lcom/android/quickstep/views/TaskView$FullscreenDrawParams;)F

    move-result p0

    return p0
.end method

.method public getTaskIdAttributeContainers()[Lcom/android/quickstep/views/TaskView$TaskIdAttributeContainer;
    .locals 0

    iget-object p0, p0, Lcom/android/quickstep/views/TaskView;->mTaskIdAttributeContainer:[Lcom/android/quickstep/views/TaskView$TaskIdAttributeContainer;

    return-object p0
.end method

.method public getTaskIds()[I
    .locals 1

    iget-object p0, p0, Lcom/android/quickstep/views/TaskView;->mTaskIdContainer:[I

    array-length v0, p0

    invoke-static {p0, v0}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object p0

    return-object p0
.end method

.method public getTaskResistanceTranslationProperty()Landroid/util/FloatProperty;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/FloatProperty<",
            "Lcom/android/quickstep/views/TaskView;",
            ">;"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/android/quickstep/views/TaskView;->getPagedOrientationHandler()Lcom/android/launcher3/touch/PagedOrientationHandler;

    move-result-object p0

    sget-object v0, Lcom/android/quickstep/views/TaskView;->TASK_RESISTANCE_TRANSLATION_X:Landroid/util/FloatProperty;

    sget-object v1, Lcom/android/quickstep/views/TaskView;->TASK_RESISTANCE_TRANSLATION_Y:Landroid/util/FloatProperty;

    invoke-interface {p0, v0, v1}, Lcom/android/launcher3/touch/PagedOrientationHandler;->getSecondaryValue(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/util/FloatProperty;

    return-object p0
.end method

.method public getTaskViewId()I
    .locals 0

    iget p0, p0, Lcom/android/quickstep/views/TaskView;->mTaskViewId:I

    return p0
.end method

.method protected getThisTaskCurrentlyInSplitSelection()I
    .locals 5

    invoke-virtual {p0}, Lcom/android/quickstep/views/TaskView;->getRecentsView()Lcom/android/quickstep/views/RecentsView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/quickstep/views/RecentsView;->getSplitSelectController()Lcom/android/quickstep/util/SplitSelectStateController;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/quickstep/views/TaskView;->getTaskIdAttributeContainers()[Lcom/android/quickstep/views/TaskView$TaskIdAttributeContainer;

    move-result-object p0

    array-length v1, p0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, p0, v2

    invoke-virtual {v3}, Lcom/android/quickstep/views/TaskView$TaskIdAttributeContainer;->getTask()Lcom/android/systemui/shared/recents/model/Task;

    move-result-object v3

    iget-object v3, v3, Lcom/android/systemui/shared/recents/model/Task;->key:Lcom/android/systemui/shared/recents/model/Task$TaskKey;

    iget v3, v3, Lcom/android/systemui/shared/recents/model/Task$TaskKey;->id:I

    invoke-virtual {v0}, Lcom/android/quickstep/util/SplitSelectStateController;->getInitialTaskId()I

    move-result v4

    if-ne v3, v4, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    const/4 v3, -0x1

    :goto_1
    return v3
.end method

.method public getThumbnail()Lcom/android/quickstep/views/TaskThumbnailView;
    .locals 0

    iget-object p0, p0, Lcom/android/quickstep/views/TaskView;->mSnapshotView:Lcom/android/quickstep/views/TaskThumbnailView;

    return-object p0
.end method

.method public getThumbnails()[Lcom/android/quickstep/views/TaskThumbnailView;
    .locals 2

    const/4 v0, 0x1

    new-array v0, v0, [Lcom/android/quickstep/views/TaskThumbnailView;

    iget-object p0, p0, Lcom/android/quickstep/views/TaskView;->mSnapshotView:Lcom/android/quickstep/views/TaskThumbnailView;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    return-object v0
.end method

.method public hasOverlappingRendering()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public initiateSplitSelect(Lcom/android/launcher3/util/SplitConfigurationOptions$SplitPositionOption;)V
    .locals 2

    invoke-virtual {p0}, Lcom/android/quickstep/views/TaskView;->getRecentsView()Lcom/android/quickstep/views/RecentsView;

    move-result-object v0

    iget p1, p1, Lcom/android/launcher3/util/SplitConfigurationOptions$SplitPositionOption;->stagePosition:I

    invoke-static {p1}, Lcom/android/launcher3/util/SplitConfigurationOptions;->getLogEventForPosition(I)Lcom/android/launcher3/logging/StatsLogManager$EventEnum;

    move-result-object v1

    invoke-virtual {v0, p0, p1, v1}, Lcom/android/quickstep/views/RecentsView;->initiateSplitSelect(Lcom/android/quickstep/views/TaskView;ILcom/android/launcher3/logging/StatsLogManager$EventEnum;)V

    return-void
.end method

.method public isAppLockedTaskView()Z
    .locals 0

    iget-object p0, p0, Lcom/android/quickstep/views/TaskView;->mTask:Lcom/android/systemui/shared/recents/model/Task;

    invoke-static {p0}, Lb3/v;->a(Lcom/android/systemui/shared/recents/model/Task;)Z

    move-result p0

    return p0
.end method

.method public isDesktopTask()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public isEndQuickswitchCuj()Z
    .locals 0

    iget-boolean p0, p0, Lcom/android/quickstep/views/TaskView;->mEndQuickswitchCuj:Z

    return p0
.end method

.method public isFocusedTask()Z
    .locals 2

    invoke-virtual {p0}, Lcom/android/quickstep/views/TaskView;->getRecentsView()Lcom/android/quickstep/views/RecentsView;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    invoke-virtual {p0}, Lcom/android/quickstep/views/TaskView;->getRecentsView()Lcom/android/quickstep/views/RecentsView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/quickstep/views/RecentsView;->getFocusedTaskView()Lcom/android/quickstep/views/TaskView;

    move-result-object v0

    if-ne p0, v0, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method public isGridTask()Z
    .locals 1

    iget-object v0, p0, Lcom/android/quickstep/views/TaskView;->mActivity:Lcom/android/launcher3/statemanager/StatefulActivity;

    invoke-virtual {v0}, Lcom/android/launcher3/BaseActivity;->getDeviceProfile()Lj3/a;

    move-result-object v0

    iget-boolean v0, v0, Lcom/android/launcher3/DeviceProfile;->isTablet:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/quickstep/views/TaskView;->isFocusedTask()Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isInOrientationAnimation()Z
    .locals 0

    iget-boolean p0, p0, Lcom/android/quickstep/views/TaskView;->mIsInOrientationChangeAnimation:Z

    return p0
.end method

.method public isRunningTask()Z
    .locals 2

    invoke-virtual {p0}, Lcom/android/quickstep/views/TaskView;->getRecentsView()Lcom/android/quickstep/views/RecentsView;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    invoke-virtual {p0}, Lcom/android/quickstep/views/TaskView;->getRecentsView()Lcom/android/quickstep/views/RecentsView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/quickstep/views/RecentsView;->getRunningTaskView()Lcom/android/quickstep/views/TaskView;

    move-result-object v0

    if-ne p0, v0, :cond_1

    invoke-virtual {p0}, Lcom/android/quickstep/views/TaskView;->getRecentsView()Lcom/android/quickstep/views/RecentsView;

    move-result-object p0

    iget-object p0, p0, Lcom/android/quickstep/views/RecentsView;->mRemoteTargetHandles:[Lcom/android/quickstep/RemoteTargetGluer$RemoteTargetHandle;

    if-eqz p0, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method public launchTask(Ljava/util/function/Consumer;)V
    .locals 1
    .param p1    # Ljava/util/function/Consumer;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/android/quickstep/views/TaskView;->launchTask(Ljava/util/function/Consumer;Z)V

    return-void
.end method

.method public launchTask(Ljava/util/function/Consumer;Z)V
    .locals 10
    .param p1    # Ljava/util/function/Consumer;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer<",
            "Ljava/lang/Boolean;",
            ">;Z)V"
        }
    .end annotation

    sget-object v0, Lcom/android/quickstep/views/TaskView;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "launcherTask, isQuickswitch = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Recent"

    invoke-static {v2, v0, v1}, Ly2/e;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/quickstep/views/TaskView;->mTask:Lcom/android/systemui/shared/recents/model/Task;

    if-eqz v0, :cond_3

    const-string v1, "Main"

    const-string v2, "startActivityFromRecentsAsync"

    invoke-static {v1, v2, v0}, Lcom/android/launcher3/testing/TestLogging;->recordEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    new-instance v0, Lcom/android/quickstep/util/TaskRemovedDuringLaunchListener;

    invoke-direct {v0}, Lcom/android/quickstep/util/TaskRemovedDuringLaunchListener;-><init>()V

    if-eqz p2, :cond_0

    iget-object v1, p0, Lcom/android/quickstep/views/TaskView;->mActivity:Lcom/android/launcher3/statemanager/StatefulActivity;

    iget-object v2, p0, Lcom/android/quickstep/views/TaskView;->mTask:Lcom/android/systemui/shared/recents/model/Task;

    iget-object v2, v2, Lcom/android/systemui/shared/recents/model/Task;->key:Lcom/android/systemui/shared/recents/model/Task$TaskKey;

    iget v2, v2, Lcom/android/systemui/shared/recents/model/Task$TaskKey;->id:I

    new-instance v3, Lcom/android/quickstep/views/r2;

    invoke-direct {v3, p0}, Lcom/android/quickstep/views/r2;-><init>(Lcom/android/quickstep/views/TaskView;)V

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/quickstep/util/TaskRemovedDuringLaunchListener;->register(Landroid/app/Activity;ILjava/lang/Runnable;)V

    :cond_0
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    sget-object v1, Lcom/android/launcher3/util/Executors;->MAIN_EXECUTOR:Lcom/android/launcher3/util/LooperExecutor;

    invoke-virtual {v1}, Lcom/android/launcher3/util/LooperExecutor;->getHandler()Landroid/os/Handler;

    move-result-object v7

    new-instance v8, Lcom/android/quickstep/views/m2;

    invoke-direct {v8, p1}, Lcom/android/quickstep/views/m2;-><init>(Ljava/util/function/Consumer;)V

    new-instance v9, Lcom/android/quickstep/views/g2;

    invoke-direct {v9, v0}, Lcom/android/quickstep/views/g2;-><init>(Lcom/android/quickstep/util/TaskRemovedDuringLaunchListener;)V

    invoke-static/range {v4 .. v9}, Landroid/app/ActivityOptions;->makeCustomTaskAnimation(Landroid/content/Context;IILandroid/os/Handler;Landroid/app/ActivityOptions$OnAnimationStartedListener;Landroid/app/ActivityOptions$OnAnimationFinishedListener;)Landroid/app/ActivityOptions;

    move-result-object v0

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getDisplay()Landroid/view/Display;

    move-result-object v1

    if-nez v1, :cond_1

    const/4 v1, 0x0

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getDisplay()Landroid/view/Display;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Display;->getDisplayId()I

    move-result v1

    :goto_0
    invoke-virtual {v0, v1}, Landroid/app/ActivityOptions;->setLaunchDisplayId(I)Landroid/app/ActivityOptions;

    if-eqz p2, :cond_2

    invoke-virtual {v0}, Landroid/app/ActivityOptions;->setFreezeRecentTasksReordering()V

    :cond_2
    iget-object p2, p0, Lcom/android/quickstep/views/TaskView;->mSnapshotView:Lcom/android/quickstep/views/TaskThumbnailView;

    invoke-virtual {p2}, Lcom/android/quickstep/views/TaskThumbnailView;->shouldShowSplashView()Z

    move-result p2

    invoke-virtual {v0, p2}, Landroid/app/ActivityOptions;->setDisableStartingWindow(Z)V

    iget-object p2, p0, Lcom/android/quickstep/views/TaskView;->mTask:Lcom/android/systemui/shared/recents/model/Task;

    iget-object p2, p2, Lcom/android/systemui/shared/recents/model/Task;->key:Lcom/android/systemui/shared/recents/model/Task$TaskKey;

    sget-object v1, Lcom/android/launcher3/util/Executors;->UI_HELPER_EXECUTOR:Lcom/android/launcher3/util/LooperExecutor;

    new-instance v2, Lcom/android/quickstep/views/s2;

    invoke-direct {v2, p0, v0, p2, p1}, Lcom/android/quickstep/views/s2;-><init>(Lcom/android/quickstep/views/TaskView;Landroid/app/ActivityOptions;Lcom/android/systemui/shared/recents/model/Task$TaskKey;Ljava/util/function/Consumer;)V

    invoke-virtual {v1, v2}, Lcom/android/launcher3/util/LooperExecutor;->execute(Ljava/lang/Runnable;)V

    goto :goto_1

    :cond_3
    sget-object p0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-interface {p1, p0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    :goto_1
    return-void
.end method

.method public launchTaskAnimated()Lcom/android/launcher3/util/RunnableList;
    .locals 5
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/android/quickstep/views/TaskView;->mTask:Lcom/android/systemui/shared/recents/model/Task;

    const/4 v1, 0x0

    if-eqz v0, :cond_4

    const-string v2, "Main"

    const-string v3, "startActivityFromRecentsAsync"

    invoke-static {v2, v3, v0}, Lcom/android/launcher3/testing/TestLogging;->recordEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/android/quickstep/views/TaskView;->mActivity:Lcom/android/launcher3/statemanager/StatefulActivity;

    invoke-virtual {v0, p0, v1}, Lcom/android/launcher3/BaseDraggingActivity;->getActivityLaunchOptions(Landroid/view/View;Lcom/android/launcher3/model/data/ItemInfo;)Lcom/android/launcher3/util/ActivityOptionsWrapper;

    move-result-object v0

    iget-object v2, v0, Lcom/android/launcher3/util/ActivityOptionsWrapper;->options:Landroid/app/ActivityOptions;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getDisplay()Landroid/view/Display;

    move-result-object v3

    if-nez v3, :cond_0

    const/4 v3, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getDisplay()Landroid/view/Display;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/Display;->getDisplayId()I

    move-result v3

    :goto_0
    invoke-virtual {v2, v3}, Landroid/app/ActivityOptions;->setLaunchDisplayId(I)Landroid/app/ActivityOptions;

    invoke-static {}, Lcom/android/systemui/shared/system/ActivityManagerWrapper;->getInstance()Lcom/android/systemui/shared/system/ActivityManagerWrapper;

    move-result-object v2

    iget-object v3, p0, Lcom/android/quickstep/views/TaskView;->mTask:Lcom/android/systemui/shared/recents/model/Task;

    iget-object v3, v3, Lcom/android/systemui/shared/recents/model/Task;->key:Lcom/android/systemui/shared/recents/model/Task$TaskKey;

    iget-object v4, v0, Lcom/android/launcher3/util/ActivityOptionsWrapper;->options:Landroid/app/ActivityOptions;

    invoke-virtual {v2, v3, v4}, Lcom/android/systemui/shared/system/ActivityManagerWrapper;->startActivityFromRecents(Lcom/android/systemui/shared/recents/model/Task$TaskKey;Landroid/app/ActivityOptions;)Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-virtual {p0}, Lcom/android/quickstep/views/TaskView;->getRecentsView()Lcom/android/quickstep/views/RecentsView;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/quickstep/views/RecentsView;->getRunningTaskViewId()I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_1

    iget-object v1, p0, Lcom/android/quickstep/views/RecentsView;->mRemoteTargetHandles:[Lcom/android/quickstep/RemoteTargetGluer$RemoteTargetHandle;

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lcom/android/quickstep/views/RecentsView;->onTaskLaunchedInLiveTileMode()V

    new-instance v0, Lcom/android/launcher3/util/RunnableList;

    invoke-direct {v0}, Lcom/android/launcher3/util/RunnableList;-><init>()V

    invoke-virtual {p0, v0}, Lcom/android/quickstep/views/RecentsView;->addSideTaskLaunchCallback(Lcom/android/launcher3/util/RunnableList;)V

    return-object v0

    :cond_1
    sget-boolean v1, Lcom/android/quickstep/TaskAnimationManager;->ENABLE_SHELL_TRANSITIONS:Z

    if-eqz v1, :cond_2

    iget-object v1, v0, Lcom/android/launcher3/util/ActivityOptionsWrapper;->onEndCallback:Lcom/android/launcher3/util/RunnableList;

    invoke-virtual {p0, v1}, Lcom/android/quickstep/views/RecentsView;->addSideTaskLaunchCallback(Lcom/android/launcher3/util/RunnableList;)V

    :cond_2
    iget-object p0, v0, Lcom/android/launcher3/util/ActivityOptionsWrapper;->onEndCallback:Lcom/android/launcher3/util/RunnableList;

    return-object p0

    :cond_3
    sget-object v0, Lcom/android/quickstep/views/TaskView;->TAG:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/android/quickstep/views/TaskView;->notifyTaskLaunchFailed(Ljava/lang/String;)V

    :cond_4
    return-object v1
.end method

.method public launchTasks()Lcom/android/launcher3/util/RunnableList;
    .locals 12
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    invoke-virtual {p0}, Lcom/android/quickstep/views/TaskView;->getRecentsView()Lcom/android/quickstep/views/RecentsView;

    move-result-object v9

    iget-object v0, v9, Lcom/android/quickstep/views/RecentsView;->mRemoteTargetHandles:[Lcom/android/quickstep/RemoteTargetGluer$RemoteTargetHandle;

    invoke-virtual {p0}, Lcom/android/quickstep/views/TaskView;->isRunningTask()Z

    move-result v1

    if-eqz v1, :cond_5

    if-eqz v0, :cond_5

    iget-boolean v1, p0, Lcom/android/quickstep/views/TaskView;->mIsClickableAsLiveTile:Z

    const/4 v2, 0x0

    if-nez v1, :cond_0

    sget-object p0, Lcom/android/quickstep/views/TaskView;->TAG:Ljava/lang/String;

    const-string v0, "TaskView is not clickable as a live tile; returning to home."

    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v2

    :cond_0
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/quickstep/views/TaskView;->mIsClickableAsLiveTile:Z

    array-length v3, v0

    const/4 v4, 0x1

    if-ne v3, v4, :cond_1

    aget-object v0, v0, v1

    invoke-virtual {v0}, Lcom/android/quickstep/RemoteTargetGluer$RemoteTargetHandle;->getTransformParams()Lcom/android/quickstep/util/TransformParams;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/quickstep/util/TransformParams;->getTargetSet()Lcom/android/quickstep/RemoteAnimationTargets;

    move-result-object v2

    goto :goto_0

    :cond_1
    aget-object v1, v0, v1

    invoke-virtual {v1}, Lcom/android/quickstep/RemoteTargetGluer$RemoteTargetHandle;->getTransformParams()Lcom/android/quickstep/util/TransformParams;

    move-result-object v1

    aget-object v0, v0, v4

    invoke-virtual {v0}, Lcom/android/quickstep/RemoteTargetGluer$RemoteTargetHandle;->getTransformParams()Lcom/android/quickstep/util/TransformParams;

    move-result-object v0

    invoke-virtual {v1}, Lcom/android/quickstep/util/TransformParams;->getTargetSet()Lcom/android/quickstep/RemoteAnimationTargets;

    move-result-object v3

    if-eqz v3, :cond_2

    invoke-virtual {v0}, Lcom/android/quickstep/util/TransformParams;->getTargetSet()Lcom/android/quickstep/RemoteAnimationTargets;

    move-result-object v3

    if-eqz v3, :cond_2

    invoke-virtual {v1}, Lcom/android/quickstep/util/TransformParams;->getTargetSet()Lcom/android/quickstep/RemoteAnimationTargets;

    move-result-object v2

    iget-object v2, v2, Lcom/android/quickstep/RemoteAnimationTargets;->apps:[Landroid/view/RemoteAnimationTarget;

    invoke-static {v2}, Ljava/util/Arrays;->stream([Ljava/lang/Object;)Ljava/util/stream/Stream;

    move-result-object v2

    invoke-virtual {v0}, Lcom/android/quickstep/util/TransformParams;->getTargetSet()Lcom/android/quickstep/RemoteAnimationTargets;

    move-result-object v3

    iget-object v3, v3, Lcom/android/quickstep/RemoteAnimationTargets;->apps:[Landroid/view/RemoteAnimationTarget;

    invoke-static {v3}, Ljava/util/Arrays;->stream([Ljava/lang/Object;)Ljava/util/stream/Stream;

    move-result-object v3

    invoke-static {v2, v3}, Ljava/util/stream/Stream;->concat(Ljava/util/stream/Stream;Ljava/util/stream/Stream;)Ljava/util/stream/Stream;

    move-result-object v2

    sget-object v3, Lcom/android/quickstep/views/k2;->a:Lcom/android/quickstep/views/k2;

    invoke-interface {v2, v3}, Ljava/util/stream/Stream;->toArray(Ljava/util/function/IntFunction;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Landroid/view/RemoteAnimationTarget;

    invoke-virtual {v1}, Lcom/android/quickstep/util/TransformParams;->getTargetSet()Lcom/android/quickstep/RemoteAnimationTargets;

    move-result-object v3

    iget-object v3, v3, Lcom/android/quickstep/RemoteAnimationTargets;->wallpapers:[Landroid/view/RemoteAnimationTarget;

    invoke-static {v3}, Ljava/util/Arrays;->stream([Ljava/lang/Object;)Ljava/util/stream/Stream;

    move-result-object v3

    invoke-virtual {v0}, Lcom/android/quickstep/util/TransformParams;->getTargetSet()Lcom/android/quickstep/RemoteAnimationTargets;

    move-result-object v0

    iget-object v0, v0, Lcom/android/quickstep/RemoteAnimationTargets;->wallpapers:[Landroid/view/RemoteAnimationTarget;

    invoke-static {v0}, Ljava/util/Arrays;->stream([Ljava/lang/Object;)Ljava/util/stream/Stream;

    move-result-object v0

    invoke-static {v3, v0}, Ljava/util/stream/Stream;->concat(Ljava/util/stream/Stream;Ljava/util/stream/Stream;)Ljava/util/stream/Stream;

    move-result-object v0

    sget-object v3, Lcom/android/quickstep/views/j2;->a:Lcom/android/quickstep/views/j2;

    invoke-interface {v0, v3}, Ljava/util/stream/Stream;->toArray(Ljava/util/function/IntFunction;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/view/RemoteAnimationTarget;

    new-instance v3, Lcom/android/quickstep/RemoteAnimationTargets;

    invoke-virtual {v1}, Lcom/android/quickstep/util/TransformParams;->getTargetSet()Lcom/android/quickstep/RemoteAnimationTargets;

    move-result-object v5

    iget-object v5, v5, Lcom/android/quickstep/RemoteAnimationTargets;->nonApps:[Landroid/view/RemoteAnimationTarget;

    invoke-virtual {v1}, Lcom/android/quickstep/util/TransformParams;->getTargetSet()Lcom/android/quickstep/RemoteAnimationTargets;

    move-result-object v1

    iget v1, v1, Lcom/android/quickstep/RemoteAnimationTargets;->targetMode:I

    invoke-direct {v3, v2, v0, v5, v1}, Lcom/android/quickstep/RemoteAnimationTargets;-><init>([Landroid/view/RemoteAnimationTarget;[Landroid/view/RemoteAnimationTarget;[Landroid/view/RemoteAnimationTarget;I)V

    move-object v2, v3

    :cond_2
    :goto_0
    if-nez v2, :cond_4

    invoke-virtual {p0}, Lcom/android/quickstep/views/TaskView;->launchTaskAnimated()Lcom/android/launcher3/util/RunnableList;

    move-result-object v0

    if-nez v0, :cond_3

    sget-object v1, Lcom/android/quickstep/views/TaskView;->TAG:Ljava/lang/String;

    const-string v2, "Recents animation cancelled and cannot launch task as non-live tile; returning to home"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    iput-boolean v4, p0, Lcom/android/quickstep/views/TaskView;->mIsClickableAsLiveTile:Z

    return-object v0

    :cond_4
    new-instance v10, Lcom/android/launcher3/util/RunnableList;

    invoke-direct {v10}, Lcom/android/launcher3/util/RunnableList;-><init>()V

    new-instance v11, Landroid/animation/AnimatorSet;

    invoke-direct {v11}, Landroid/animation/AnimatorSet;-><init>()V

    iget-object v3, v2, Lcom/android/quickstep/RemoteAnimationTargets;->apps:[Landroid/view/RemoteAnimationTarget;

    iget-object v4, v2, Lcom/android/quickstep/RemoteAnimationTargets;->wallpapers:[Landroid/view/RemoteAnimationTarget;

    iget-object v5, v2, Lcom/android/quickstep/RemoteAnimationTargets;->nonApps:[Landroid/view/RemoteAnimationTarget;

    const/4 v6, 0x1

    iget-object v0, p0, Lcom/android/quickstep/views/TaskView;->mActivity:Lcom/android/launcher3/statemanager/StatefulActivity;

    invoke-virtual {v0}, Lcom/android/launcher3/statemanager/StatefulActivity;->getStateManager()Lcom/android/launcher3/statemanager/StateManager;

    move-result-object v7

    invoke-virtual {v9}, Lcom/android/quickstep/views/RecentsView;->getDepthController()Lcom/android/launcher3/statehandlers/DepthController;

    move-result-object v8

    move-object v0, v11

    move-object v1, p0

    move-object v2, v3

    move-object v3, v4

    move-object v4, v5

    move v5, v6

    move-object v6, v7

    move-object v7, v9

    invoke-static/range {v0 .. v8}, Lcom/android/quickstep/TaskViewUtils;->composeRecentsLaunchAnimator(Landroid/animation/AnimatorSet;Landroid/view/View;[Landroid/view/RemoteAnimationTarget;[Landroid/view/RemoteAnimationTarget;[Landroid/view/RemoteAnimationTarget;ZLcom/android/launcher3/statemanager/StateManager;Lcom/android/quickstep/views/RecentsView;Lcom/android/launcher3/statehandlers/DepthController;)V

    new-instance v0, Lcom/android/quickstep/views/TaskView$14;

    invoke-direct {v0, p0, v9, v10}, Lcom/android/quickstep/views/TaskView$14;-><init>(Lcom/android/quickstep/views/TaskView;Lcom/android/quickstep/views/RecentsView;Lcom/android/launcher3/util/RunnableList;)V

    invoke-virtual {v11, v0}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    invoke-virtual {v11}, Landroid/animation/AnimatorSet;->start()V

    invoke-virtual {v9}, Lcom/android/quickstep/views/RecentsView;->onTaskLaunchedInLiveTileMode()V

    return-object v10

    :cond_5
    invoke-virtual {p0}, Lcom/android/quickstep/views/TaskView;->launchTaskAnimated()Lcom/android/launcher3/util/RunnableList;

    move-result-object p0

    return-object p0
.end method

.method protected needsUpdate(II)Z
    .locals 0

    and-int p0, p1, p2

    if-ne p0, p2, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public offerTouchToChildren(Landroid/view/MotionEvent;)Z
    .locals 3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/quickstep/views/TaskView;->mIconView:Lcom/android/quickstep/views/IconView;

    iget-object v1, p0, Lcom/android/quickstep/views/TaskView;->mIconCenterCoords:[F

    iget-object v2, p0, Lcom/android/quickstep/views/TaskView;->mIconTouchDelegate:Lcom/android/launcher3/util/TransformingTouchDelegate;

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/quickstep/views/TaskView;->computeAndSetIconTouchDelegate(Lcom/android/quickstep/views/IconView;[FLcom/android/launcher3/util/TransformingTouchDelegate;)V

    :cond_0
    iget-object p0, p0, Lcom/android/quickstep/views/TaskView;->mIconTouchDelegate:Lcom/android/launcher3/util/TransformingTouchDelegate;

    if-eqz p0, :cond_1

    invoke-virtual {p0, p1}, Lcom/android/launcher3/util/TransformingTouchDelegate;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    if-eqz p0, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method protected onFinishInflate()V
    .locals 2

    invoke-super {p0}, Landroid/widget/FrameLayout;->onFinishInflate()V

    const v0, 0x7f0b035d

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/quickstep/views/TaskThumbnailView;

    iput-object v0, p0, Lcom/android/quickstep/views/TaskView;->mSnapshotView:Lcom/android/quickstep/views/TaskThumbnailView;

    const v0, 0x7f0b01e9

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/quickstep/views/IconView;

    iput-object v0, p0, Lcom/android/quickstep/views/TaskView;->mIconView:Lcom/android/quickstep/views/IconView;

    new-instance v0, Lcom/android/launcher3/util/TransformingTouchDelegate;

    iget-object v1, p0, Lcom/android/quickstep/views/TaskView;->mIconView:Lcom/android/quickstep/views/IconView;

    invoke-direct {v0, v1}, Lcom/android/launcher3/util/TransformingTouchDelegate;-><init>(Landroid/view/View;)V

    iput-object v0, p0, Lcom/android/quickstep/views/TaskView;->mIconTouchDelegate:Lcom/android/launcher3/util/TransformingTouchDelegate;

    return-void
.end method

.method protected onFocusChanged(ZILandroid/graphics/Rect;)V
    .locals 0

    invoke-super {p0, p1, p2, p3}, Landroid/widget/FrameLayout;->onFocusChanged(ZILandroid/graphics/Rect;)V

    iget-object p0, p0, Lcom/android/quickstep/views/TaskView;->mBorderAnimator:Lcom/android/quickstep/util/BorderAnimator;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1}, Lcom/android/quickstep/util/BorderAnimator;->buildAnimator(Z)Landroid/animation/Animator;

    move-result-object p0

    invoke-virtual {p0}, Landroid/animation/Animator;->start()V

    :cond_0
    return-void
.end method

.method public onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 7

    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    new-instance v0, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f120042

    invoke-virtual {v1, v2}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-direct {v0, v2, v1}, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;-><init>(ILjava/lang/CharSequence;)V

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;)V

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/android/quickstep/views/TaskView;->mTaskIdAttributeContainer:[Lcom/android/quickstep/views/TaskView$TaskIdAttributeContainer;

    array-length v2, v1

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    if-ge v4, v2, :cond_2

    aget-object v5, v1, v4

    if-nez v5, :cond_0

    goto :goto_2

    :cond_0
    invoke-static {p0, v5}, Lcom/android/quickstep/TaskOverlayFactory;->getEnabledShortcuts(Lcom/android/quickstep/views/TaskView;Lcom/android/quickstep/views/TaskView$TaskIdAttributeContainer;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/launcher3/popup/SystemShortcut;

    invoke-virtual {v6, v0}, Lcom/android/launcher3/popup/SystemShortcut;->createAccessibilityAction(Landroid/content/Context;)Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    move-result-object v6

    invoke-virtual {p1, v6}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;)V

    goto :goto_1

    :cond_1
    :goto_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/android/quickstep/views/TaskView;->mDigitalWellBeingToast:Lcom/android/quickstep/views/DigitalWellBeingToast;

    invoke-virtual {v0}, Lcom/android/quickstep/views/DigitalWellBeingToast;->hasLimit()Z

    move-result v0

    if-eqz v0, :cond_3

    new-instance v0, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f120040

    invoke-virtual {v1, v2}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-direct {v0, v2, v1}, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;-><init>(ILjava/lang/CharSequence;)V

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;)V

    :cond_3
    invoke-virtual {p0}, Lcom/android/quickstep/views/TaskView;->getRecentsView()Lcom/android/quickstep/views/RecentsView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/quickstep/views/RecentsView;->getTaskViewCount()I

    move-result v1

    invoke-virtual {v0, p0}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    move-result p0

    sub-int/2addr v1, p0

    const/4 p0, 0x1

    sub-int/2addr v1, p0

    invoke-static {v3, p0, v1, p0, v3}, Landroid/view/accessibility/AccessibilityNodeInfo$CollectionItemInfo;->obtain(IIIIZ)Landroid/view/accessibility/AccessibilityNodeInfo$CollectionItemInfo;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setCollectionItemInfo(Landroid/view/accessibility/AccessibilityNodeInfo$CollectionItemInfo;)V

    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 0

    invoke-super/range {p0 .. p5}, Landroid/widget/FrameLayout;->onLayout(ZIIII)V

    iget-object p1, p0, Lcom/android/quickstep/views/TaskView;->mActivity:Lcom/android/launcher3/statemanager/StatefulActivity;

    invoke-virtual {p1}, Lcom/android/launcher3/BaseActivity;->getDeviceProfile()Lj3/a;

    move-result-object p1

    iget-boolean p1, p1, Lcom/android/launcher3/DeviceProfile;->isTablet:Z

    if-eqz p1, :cond_1

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getLayoutDirection()I

    move-result p1

    const/4 p3, 0x1

    if-ne p1, p3, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    sub-int/2addr p4, p2

    int-to-float p1, p4

    :goto_0
    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->setPivotX(F)V

    iget-object p1, p0, Lcom/android/quickstep/views/TaskView;->mSnapshotView:Lcom/android/quickstep/views/TaskThumbnailView;

    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result p1

    int-to-float p1, p1

    goto :goto_1

    :cond_1
    sub-int/2addr p4, p2

    int-to-float p1, p4

    const/high16 p2, 0x3f000000    # 0.5f

    mul-float/2addr p1, p2

    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->setPivotX(F)V

    iget-object p1, p0, Lcom/android/quickstep/views/TaskView;->mSnapshotView:Lcom/android/quickstep/views/TaskThumbnailView;

    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result p1

    int-to-float p1, p1

    iget-object p3, p0, Lcom/android/quickstep/views/TaskView;->mSnapshotView:Lcom/android/quickstep/views/TaskThumbnailView;

    invoke-virtual {p3}, Landroid/view/View;->getHeight()I

    move-result p3

    int-to-float p3, p3

    mul-float/2addr p3, p2

    add-float/2addr p1, p3

    :goto_1
    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->setPivotY(F)V

    sget-boolean p1, Lcom/android/launcher3/Utilities;->ATLEAST_Q:Z

    if-eqz p1, :cond_2

    sget-object p1, Lcom/android/quickstep/views/TaskView;->SYSTEM_GESTURE_EXCLUSION_RECT:Ljava/util/List;

    const/4 p2, 0x0

    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Landroid/graphics/Rect;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getWidth()I

    move-result p4

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getHeight()I

    move-result p5

    invoke-virtual {p3, p2, p2, p4, p5}, Landroid/graphics/Rect;->set(IIII)V

    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->setSystemGestureExclusionRects(Ljava/util/List;)V

    :cond_2
    return-void
.end method

.method public onRecycle()V
    .locals 3

    invoke-virtual {p0}, Lcom/android/quickstep/views/TaskView;->resetPersistentViewTransforms()V

    iget-object v0, p0, Lcom/android/quickstep/views/TaskView;->mSnapshotView:Lcom/android/quickstep/views/TaskThumbnailView;

    iget-object v1, p0, Lcom/android/quickstep/views/TaskView;->mTask:Lcom/android/systemui/shared/recents/model/Task;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/android/quickstep/views/TaskThumbnailView;->setThumbnail(Lcom/android/systemui/shared/recents/model/Task;Lcom/android/systemui/shared/recents/model/ThumbnailData;)V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/quickstep/views/TaskView;->setOverlayEnabled(Z)V

    invoke-virtual {p0, v0}, Lcom/android/quickstep/views/TaskView;->onTaskListVisibilityChanged(Z)V

    return-void
.end method

.method public onTaskListVisibilityChanged(Z)V
    .locals 1

    const/4 v0, 0x3

    invoke-virtual {p0, p1, v0}, Lcom/android/quickstep/views/TaskView;->onTaskListVisibilityChanged(ZI)V

    return-void
.end method

.method public onTaskListVisibilityChanged(ZI)V
    .locals 4

    iget-object v0, p0, Lcom/android/quickstep/views/TaskView;->mTask:Lcom/android/systemui/shared/recents/model/Task;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/android/quickstep/views/TaskView;->cancelPendingLoadTasks()V

    const/4 v0, 0x1

    const/4 v1, 0x2

    if-eqz p1, :cond_2

    sget-object p1, Lcom/android/quickstep/RecentsModel;->INSTANCE:Lcom/android/launcher3/util/MainThreadInitializedObject;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {p1, v2}, Lcom/android/launcher3/util/MainThreadInitializedObject;->get(Landroid/content/Context;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/quickstep/RecentsModel;

    invoke-virtual {p1}, Lcom/android/quickstep/RecentsModel;->getThumbnailCache()Lcom/android/quickstep/TaskThumbnailCache;

    move-result-object v2

    invoke-virtual {p1}, Lcom/android/quickstep/RecentsModel;->getIconCache()Lcom/android/quickstep/TaskIconCache;

    move-result-object p1

    invoke-virtual {p0, p2, v1}, Lcom/android/quickstep/views/TaskView;->needsUpdate(II)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/quickstep/views/TaskView;->mTask:Lcom/android/systemui/shared/recents/model/Task;

    new-instance v3, Lcom/android/quickstep/views/i2;

    invoke-direct {v3, p0}, Lcom/android/quickstep/views/i2;-><init>(Lcom/android/quickstep/views/TaskView;)V

    invoke-virtual {v2, v1, v3}, Lcom/android/quickstep/TaskThumbnailCache;->updateThumbnailInBackground(Lcom/android/systemui/shared/recents/model/Task;Ljava/util/function/Consumer;)Lcom/android/quickstep/util/CancellableTask;

    move-result-object v1

    iput-object v1, p0, Lcom/android/quickstep/views/TaskView;->mThumbnailLoadRequest:Lcom/android/quickstep/util/CancellableTask;

    :cond_1
    invoke-virtual {p0, p2, v0}, Lcom/android/quickstep/views/TaskView;->needsUpdate(II)Z

    move-result p2

    if-eqz p2, :cond_4

    iget-object p2, p0, Lcom/android/quickstep/views/TaskView;->mTask:Lcom/android/systemui/shared/recents/model/Task;

    new-instance v0, Lcom/android/quickstep/views/h2;

    invoke-direct {v0, p0}, Lcom/android/quickstep/views/h2;-><init>(Lcom/android/quickstep/views/TaskView;)V

    invoke-virtual {p1, p2, v0}, Lcom/android/quickstep/TaskIconCache;->updateIconInBackground(Lcom/android/systemui/shared/recents/model/Task;Ljava/util/function/Consumer;)Lcom/android/quickstep/util/CancellableTask;

    move-result-object p1

    iput-object p1, p0, Lcom/android/quickstep/views/TaskView;->mIconLoadRequest:Lcom/android/quickstep/util/CancellableTask;

    goto :goto_0

    :cond_2
    invoke-virtual {p0, p2, v1}, Lcom/android/quickstep/views/TaskView;->needsUpdate(II)Z

    move-result p1

    const/4 v1, 0x0

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/android/quickstep/views/TaskView;->mSnapshotView:Lcom/android/quickstep/views/TaskThumbnailView;

    invoke-virtual {p1, v1, v1}, Lcom/android/quickstep/views/TaskThumbnailView;->setThumbnail(Lcom/android/systemui/shared/recents/model/Task;Lcom/android/systemui/shared/recents/model/ThumbnailData;)V

    iget-object p1, p0, Lcom/android/quickstep/views/TaskView;->mTask:Lcom/android/systemui/shared/recents/model/Task;

    iput-object v1, p1, Lcom/android/systemui/shared/recents/model/Task;->thumbnail:Lcom/android/systemui/shared/recents/model/ThumbnailData;

    :cond_3
    invoke-virtual {p0, p2, v0}, Lcom/android/quickstep/views/TaskView;->needsUpdate(II)Z

    move-result p1

    if-eqz p1, :cond_4

    iget-object p1, p0, Lcom/android/quickstep/views/TaskView;->mIconView:Lcom/android/quickstep/views/IconView;

    invoke-virtual {p0, p1, v1}, Lcom/android/quickstep/views/TaskView;->setIcon(Lcom/android/quickstep/views/IconView;Landroid/graphics/drawable/Drawable;)V

    :cond_4
    :goto_0
    return-void
.end method

.method public performAccessibilityAction(ILandroid/os/Bundle;)Z
    .locals 7

    const/4 v0, 0x1

    const v1, 0x7f120042

    if-ne p1, v1, :cond_0

    invoke-virtual {p0}, Lcom/android/quickstep/views/TaskView;->getRecentsView()Lcom/android/quickstep/views/RecentsView;

    move-result-object p1

    invoke-virtual {p1, p0, v0, v0}, Lcom/android/quickstep/views/RecentsView;->dismissTask(Lcom/android/quickstep/views/TaskView;ZZ)V

    return v0

    :cond_0
    const v1, 0x7f120040

    if-ne p1, v1, :cond_1

    iget-object p1, p0, Lcom/android/quickstep/views/TaskView;->mDigitalWellBeingToast:Lcom/android/quickstep/views/DigitalWellBeingToast;

    invoke-virtual {p1, p0}, Lcom/android/quickstep/views/DigitalWellBeingToast;->openAppUsageSettings(Landroid/view/View;)V

    return v0

    :cond_1
    iget-object v1, p0, Lcom/android/quickstep/views/TaskView;->mTaskIdAttributeContainer:[Lcom/android/quickstep/views/TaskView$TaskIdAttributeContainer;

    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_5

    aget-object v4, v1, v3

    if-nez v4, :cond_2

    goto :goto_1

    :cond_2
    invoke-static {p0, v4}, Lcom/android/quickstep/TaskOverlayFactory;->getEnabledShortcuts(Lcom/android/quickstep/views/TaskView;Lcom/android/quickstep/views/TaskView$TaskIdAttributeContainer;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_3
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/launcher3/popup/SystemShortcut;

    invoke-virtual {v5, p1}, Lcom/android/launcher3/popup/SystemShortcut;->hasHandlerForAction(I)Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-interface {v5, p0}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    return v0

    :cond_4
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_5
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->performAccessibilityAction(ILandroid/os/Bundle;)Z

    move-result p0

    return p0
.end method

.method protected refreshTaskThumbnailSplash()V
    .locals 0

    iget-object p0, p0, Lcom/android/quickstep/views/TaskView;->mSnapshotView:Lcom/android/quickstep/views/TaskThumbnailView;

    invoke-virtual {p0}, Lcom/android/quickstep/views/TaskThumbnailView;->refreshSplashView()V

    return-void
.end method

.method refreshThumbnails(Ljava/util/HashMap;)V
    .locals 1
    .param p1    # Ljava/util/HashMap;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Lcom/android/systemui/shared/recents/model/ThumbnailData;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/quickstep/views/TaskView;->mTask:Lcom/android/systemui/shared/recents/model/Task;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    iget-object v0, v0, Lcom/android/systemui/shared/recents/model/Task;->key:Lcom/android/systemui/shared/recents/model/Task$TaskKey;

    iget v0, v0, Lcom/android/systemui/shared/recents/model/Task$TaskKey;->id:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/shared/recents/model/ThumbnailData;

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/android/quickstep/views/TaskView;->mSnapshotView:Lcom/android/quickstep/views/TaskThumbnailView;

    iget-object p0, p0, Lcom/android/quickstep/views/TaskView;->mTask:Lcom/android/systemui/shared/recents/model/Task;

    invoke-virtual {v0, p0, p1}, Lcom/android/quickstep/views/TaskThumbnailView;->setThumbnail(Lcom/android/systemui/shared/recents/model/Task;Lcom/android/systemui/shared/recents/model/ThumbnailData;)V

    return-void

    :cond_0
    iget-object p0, p0, Lcom/android/quickstep/views/TaskView;->mSnapshotView:Lcom/android/quickstep/views/TaskThumbnailView;

    invoke-virtual {p0}, Lcom/android/quickstep/views/TaskThumbnailView;->refresh()V

    return-void
.end method

.method protected resetPersistentViewTransforms()V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/quickstep/views/TaskView;->mBoxTranslationY:F

    iput v0, p0, Lcom/android/quickstep/views/TaskView;->mGridTranslationY:F

    iput v0, p0, Lcom/android/quickstep/views/TaskView;->mGridTranslationX:F

    iput v0, p0, Lcom/android/quickstep/views/TaskView;->mNonGridTranslationY:F

    iput v0, p0, Lcom/android/quickstep/views/TaskView;->mNonGridTranslationX:F

    invoke-virtual {p0}, Lcom/android/quickstep/views/TaskView;->resetViewTransforms()V

    return-void
.end method

.method protected resetViewTransforms()V
    .locals 3

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/quickstep/views/TaskView;->mGridEndTranslationX:F

    iput v0, p0, Lcom/android/quickstep/views/TaskView;->mSplitSelectTranslationX:F

    iput v0, p0, Lcom/android/quickstep/views/TaskView;->mTaskResistanceTranslationX:F

    iput v0, p0, Lcom/android/quickstep/views/TaskView;->mTaskOffsetTranslationX:F

    iput v0, p0, Lcom/android/quickstep/views/TaskView;->mDismissTranslationX:F

    iput v0, p0, Lcom/android/quickstep/views/TaskView;->mTaskResistanceTranslationY:F

    iput v0, p0, Lcom/android/quickstep/views/TaskView;->mTaskOffsetTranslationY:F

    iput v0, p0, Lcom/android/quickstep/views/TaskView;->mDismissTranslationY:F

    invoke-virtual {p0}, Lcom/android/quickstep/views/TaskView;->getRecentsView()Lcom/android/quickstep/views/RecentsView;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/android/quickstep/views/TaskView;->getRecentsView()Lcom/android/quickstep/views/RecentsView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/quickstep/views/RecentsView;->isSplitSelectionActive()Z

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    iput v0, p0, Lcom/android/quickstep/views/TaskView;->mSplitSelectTranslationY:F

    :cond_1
    const/high16 v1, 0x3f800000    # 1.0f

    invoke-direct {p0, v1}, Lcom/android/quickstep/views/TaskView;->setSnapshotScale(F)V

    invoke-direct {p0}, Lcom/android/quickstep/views/TaskView;->applyTranslationX()V

    invoke-direct {p0}, Lcom/android/quickstep/views/TaskView;->applyTranslationY()V

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->setTranslationZ(F)V

    iget v2, p0, Lcom/android/quickstep/views/TaskView;->mStableAlpha:F

    invoke-virtual {p0, v2}, Landroid/widget/FrameLayout;->setAlpha(F)V

    invoke-virtual {p0, v1}, Lcom/android/quickstep/views/TaskView;->setIconScaleAndDim(F)V

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/android/quickstep/views/TaskView;->setColorTint(FI)V

    iget-object p0, p0, Lcom/android/quickstep/views/TaskView;->mSnapshotView:Lcom/android/quickstep/views/TaskThumbnailView;

    invoke-virtual {p0}, Lcom/android/quickstep/views/TaskThumbnailView;->resetViewTransforms()V

    return-void
.end method

.method public setColorTint(FI)V
    .locals 1

    iget-object v0, p0, Lcom/android/quickstep/views/TaskView;->mSnapshotView:Lcom/android/quickstep/views/TaskThumbnailView;

    invoke-virtual {v0, p1}, Lcom/android/quickstep/views/TaskThumbnailView;->setDimAlpha(F)V

    iget-object v0, p0, Lcom/android/quickstep/views/TaskView;->mIconView:Lcom/android/quickstep/views/IconView;

    invoke-virtual {v0, p2, p1}, Lcom/android/quickstep/views/IconView;->setIconColorTint(IF)V

    iget-object p0, p0, Lcom/android/quickstep/views/TaskView;->mDigitalWellBeingToast:Lcom/android/quickstep/views/DigitalWellBeingToast;

    invoke-virtual {p0, p2, p1}, Lcom/android/quickstep/views/DigitalWellBeingToast;->setBannerColorTint(IF)V

    return-void
.end method

.method public setEndQuickswitchCuj(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/quickstep/views/TaskView;->mEndQuickswitchCuj:Z

    return-void
.end method

.method public setFullscreenProgress(F)V
    .locals 2

    const/4 v0, 0x0

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-static {p1, v0, v1}, Lcom/android/launcher3/Utilities;->boundToRange(FFF)F

    move-result p1

    iput p1, p0, Lcom/android/quickstep/views/TaskView;->mFullscreenProgress:F

    iget-object v0, p0, Lcom/android/quickstep/views/TaskView;->mIconView:Lcom/android/quickstep/views/IconView;

    cmpg-float v1, p1, v1

    if-gez v1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    const/4 v1, 0x4

    :goto_0
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/quickstep/views/TaskView;->mSnapshotView:Lcom/android/quickstep/views/TaskThumbnailView;

    invoke-virtual {v0}, Lcom/android/quickstep/views/TaskThumbnailView;->getTaskOverlay()Lcom/android/quickstep/TaskOverlayFactory$TaskOverlay;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/quickstep/TaskOverlayFactory$TaskOverlay;->setFullscreenProgress(F)V

    iget-object v0, p0, Lcom/android/quickstep/views/TaskView;->mActivity:Lcom/android/launcher3/statemanager/StatefulActivity;

    invoke-virtual {v0}, Lcom/android/launcher3/statemanager/StatefulActivity;->getStateManager()Lcom/android/launcher3/statemanager/StateManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/statemanager/StateManager;->getState()Lcom/android/launcher3/statemanager/BaseState;

    move-result-object v0

    sget-object v1, Lcom/android/launcher3/LauncherState;->BACKGROUND_APP:Lcom/android/launcher3/LauncherState;

    if-eq v0, v1, :cond_1

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/android/quickstep/views/TaskView;->setIconsAndBannersTransitionProgress(FZ)V

    :cond_1
    invoke-virtual {p0}, Lcom/android/quickstep/views/TaskView;->updateSnapshotRadius()V

    return-void
.end method

.method public setGridProgress(F)V
    .locals 0

    iput p1, p0, Lcom/android/quickstep/views/TaskView;->mGridProgress:F

    invoke-direct {p0}, Lcom/android/quickstep/views/TaskView;->applyTranslationX()V

    invoke-direct {p0}, Lcom/android/quickstep/views/TaskView;->applyTranslationY()V

    invoke-direct {p0}, Lcom/android/quickstep/views/TaskView;->applyScale()V

    return-void
.end method

.method public setGridTranslationX(F)V
    .locals 0

    iput p1, p0, Lcom/android/quickstep/views/TaskView;->mGridTranslationX:F

    invoke-direct {p0}, Lcom/android/quickstep/views/TaskView;->applyTranslationX()V

    return-void
.end method

.method public setGridTranslationY(F)V
    .locals 0

    iput p1, p0, Lcom/android/quickstep/views/TaskView;->mGridTranslationY:F

    invoke-direct {p0}, Lcom/android/quickstep/views/TaskView;->applyTranslationY()V

    return-void
.end method

.method protected setIcon(Lcom/android/quickstep/views/IconView;Landroid/graphics/drawable/Drawable;)V
    .locals 0
    .param p2    # Landroid/graphics/drawable/Drawable;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    if-eqz p2, :cond_0

    invoke-virtual {p1, p2}, Lcom/android/quickstep/views/IconView;->setDrawable(Landroid/graphics/drawable/Drawable;)V

    new-instance p2, Lcom/android/quickstep/views/o2;

    invoke-direct {p2, p0, p1}, Lcom/android/quickstep/views/o2;-><init>(Lcom/android/quickstep/views/TaskView;Lcom/android/quickstep/views/IconView;)V

    invoke-virtual {p1, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    invoke-virtual {p1, p0}, Lcom/android/quickstep/views/IconView;->setDrawable(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {p1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {p1, p0}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    :goto_0
    return-void
.end method

.method protected setIconOrientation(Lcom/android/quickstep/util/RecentsOrientedState;)V
    .locals 10

    invoke-virtual {p1}, Lcom/android/quickstep/util/RecentsOrientedState;->getOrientationHandler()Lcom/android/launcher3/touch/PagedOrientationHandler;

    move-result-object p1

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getLayoutDirection()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    move v5, v1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    move v5, v0

    :goto_0
    iget-object v0, p0, Lcom/android/quickstep/views/TaskView;->mActivity:Lcom/android/launcher3/statemanager/StatefulActivity;

    invoke-virtual {v0}, Lcom/android/launcher3/BaseActivity;->getDeviceProfile()Lj3/a;

    move-result-object v6

    invoke-virtual {p0}, Lcom/android/quickstep/views/TaskView;->isGridTask()Z

    move-result v7

    iget-object v0, p0, Lcom/android/quickstep/views/TaskView;->mIconView:Lcom/android/quickstep/views/IconView;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    move-object v8, v0

    check-cast v8, Landroid/widget/FrameLayout$LayoutParams;

    iget v4, v6, Lcom/android/launcher3/DeviceProfile;->overviewTaskThumbnailTopMarginPx:I

    iget v9, v6, Lcom/android/launcher3/DeviceProfile;->overviewTaskIconSizePx:I

    iget v2, v6, Lcom/android/launcher3/DeviceProfile;->overviewTaskMarginPx:I

    move-object v0, p1

    move-object v1, v8

    move v3, v9

    invoke-interface/range {v0 .. v5}, Lcom/android/launcher3/touch/PagedOrientationHandler;->setTaskIconParams(Landroid/widget/FrameLayout$LayoutParams;IIIZ)V

    iput v9, v8, Landroid/widget/FrameLayout$LayoutParams;->height:I

    iput v9, v8, Landroid/widget/FrameLayout$LayoutParams;->width:I

    iget-object v0, p0, Lcom/android/quickstep/views/TaskView;->mIconView:Lcom/android/quickstep/views/IconView;

    invoke-virtual {v0, v8}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcom/android/quickstep/views/TaskView;->mIconView:Lcom/android/quickstep/views/IconView;

    invoke-interface {p1}, Lcom/android/launcher3/touch/PagedOrientationHandler;->getDegreesRotated()F

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setRotation(F)V

    if-eqz v7, :cond_1

    iget v0, v6, Lcom/android/launcher3/DeviceProfile;->overviewTaskIconDrawableSizeGridPx:I

    goto :goto_1

    :cond_1
    iget v0, v6, Lcom/android/launcher3/DeviceProfile;->overviewTaskIconDrawableSizePx:I

    :goto_1
    iget-object v1, p0, Lcom/android/quickstep/views/TaskView;->mIconView:Lcom/android/quickstep/views/IconView;

    invoke-virtual {v1, v0, v0}, Lcom/android/quickstep/views/IconView;->setDrawableSize(II)V

    iget-object p0, p0, Lcom/android/quickstep/views/TaskView;->mSnapshotView:Lcom/android/quickstep/views/TaskThumbnailView;

    invoke-interface {p1}, Lcom/android/launcher3/touch/PagedOrientationHandler;->getDegreesRotated()F

    move-result p1

    invoke-virtual {p0, p1}, Lcom/android/quickstep/views/TaskThumbnailView;->setDegreesRotated(F)V

    return-void
.end method

.method protected setIconScaleAndDim(F)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/quickstep/views/TaskView;->setIconScaleAndDim(FZ)V

    return-void
.end method

.method public setIconScaleAnimStartProgress(F)V
    .locals 0

    iput p1, p0, Lcom/android/quickstep/views/TaskView;->mIconScaleAnimStartProgress:F

    return-void
.end method

.method protected setIconsAndBannersTransitionProgress(FZ)V
    .locals 3

    const/high16 v0, 0x3f800000    # 1.0f

    if-eqz p2, :cond_0

    sub-float p1, v0, p1

    :cond_0
    iput p1, p0, Lcom/android/quickstep/views/TaskView;->mFocusTransitionProgress:F

    const v1, 0x3e2f8af9

    if-eqz p2, :cond_1

    const v2, 0x3f541d42

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    :goto_0
    if-eqz p2, :cond_2

    move v1, v0

    :cond_2
    sget-object p2, Lcom/android/launcher3/anim/Interpolators;->FAST_OUT_SLOW_IN:Landroid/view/animation/Interpolator;

    invoke-static {p2, v2, v1}, Lcom/android/launcher3/anim/Interpolators;->clampToProgress(Landroid/view/animation/Interpolator;FF)Landroid/view/animation/Interpolator;

    move-result-object p2

    invoke-interface {p2, p1}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result p1

    iget-object p2, p0, Lcom/android/quickstep/views/TaskView;->mIconView:Lcom/android/quickstep/views/IconView;

    invoke-virtual {p2, p1}, Lcom/android/quickstep/views/IconView;->setAlpha(F)V

    iget-object p0, p0, Lcom/android/quickstep/views/TaskView;->mDigitalWellBeingToast:Lcom/android/quickstep/views/DigitalWellBeingToast;

    sub-float/2addr v0, p1

    invoke-virtual {p0, v0}, Lcom/android/quickstep/views/DigitalWellBeingToast;->updateBannerOffset(F)V

    return-void
.end method

.method public setIsInOrientationAnimation(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/quickstep/views/TaskView;->mIsInOrientationChangeAnimation:Z

    return-void
.end method

.method public setModalness(F)V
    .locals 2

    iget v0, p0, Lcom/android/quickstep/views/TaskView;->mModalness:F

    cmpl-float v0, v0, p1

    if-nez v0, :cond_0

    return-void

    :cond_0
    iput p1, p0, Lcom/android/quickstep/views/TaskView;->mModalness:F

    iget-object v0, p0, Lcom/android/quickstep/views/TaskView;->mIconView:Lcom/android/quickstep/views/IconView;

    const/high16 v1, 0x3f800000    # 1.0f

    sub-float/2addr v1, p1

    invoke-virtual {v0, v1}, Lcom/android/quickstep/views/IconView;->setAlpha(F)V

    iget-object p0, p0, Lcom/android/quickstep/views/TaskView;->mDigitalWellBeingToast:Lcom/android/quickstep/views/DigitalWellBeingToast;

    invoke-virtual {p0, p1}, Lcom/android/quickstep/views/DigitalWellBeingToast;->updateBannerOffset(F)V

    return-void
.end method

.method public setOrientationState(Lcom/android/quickstep/util/RecentsOrientedState;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/android/quickstep/views/TaskView;->setIconOrientation(Lcom/android/quickstep/util/RecentsOrientedState;)V

    invoke-virtual {p0, p1}, Lcom/android/quickstep/views/TaskView;->setThumbnailOrientation(Lcom/android/quickstep/util/RecentsOrientedState;)V

    return-void
.end method

.method public setOverlayEnabled(Z)V
    .locals 0

    iget-object p0, p0, Lcom/android/quickstep/views/TaskView;->mSnapshotView:Lcom/android/quickstep/views/TaskThumbnailView;

    invoke-virtual {p0, p1}, Lcom/android/quickstep/views/TaskThumbnailView;->setOverlayEnabled(Z)V

    return-void
.end method

.method public setShowScreenshot(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/quickstep/views/TaskView;->mShowScreenshot:Z

    return-void
.end method

.method public setStableAlpha(F)V
    .locals 0

    iput p1, p0, Lcom/android/quickstep/views/TaskView;->mStableAlpha:F

    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->setAlpha(F)V

    return-void
.end method

.method public setTaskThumbnailSplashAlpha(F)V
    .locals 0

    iput p1, p0, Lcom/android/quickstep/views/TaskView;->mTaskThumbnailSplashAlpha:F

    invoke-virtual {p0}, Lcom/android/quickstep/views/TaskView;->applyThumbnailSplashAlpha()V

    return-void
.end method

.method public setTaskViewId(I)V
    .locals 0

    iput p1, p0, Lcom/android/quickstep/views/TaskView;->mTaskViewId:I

    return-void
.end method

.method protected setThumbnailOrientation(Lcom/android/quickstep/util/RecentsOrientedState;)V
    .locals 2

    iget-object v0, p0, Lcom/android/quickstep/views/TaskView;->mActivity:Lcom/android/launcher3/statemanager/StatefulActivity;

    invoke-virtual {v0}, Lcom/android/launcher3/BaseActivity;->getDeviceProfile()Lj3/a;

    move-result-object v0

    iget v0, v0, Lcom/android/launcher3/DeviceProfile;->overviewTaskThumbnailTopMarginPx:I

    iget-object v1, p0, Lcom/android/quickstep/views/TaskView;->mSnapshotView:Lcom/android/quickstep/views/TaskThumbnailView;

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout$LayoutParams;

    iput v0, v1, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    iget-object v0, p0, Lcom/android/quickstep/views/TaskView;->mSnapshotView:Lcom/android/quickstep/views/TaskThumbnailView;

    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcom/android/quickstep/views/TaskView;->mSnapshotView:Lcom/android/quickstep/views/TaskThumbnailView;

    invoke-virtual {v0}, Lcom/android/quickstep/views/TaskThumbnailView;->getTaskOverlay()Lcom/android/quickstep/TaskOverlayFactory$TaskOverlay;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/quickstep/TaskOverlayFactory$TaskOverlay;->updateOrientationState(Lcom/android/quickstep/util/RecentsOrientedState;)V

    iget-object p1, p0, Lcom/android/quickstep/views/TaskView;->mDigitalWellBeingToast:Lcom/android/quickstep/views/DigitalWellBeingToast;

    iget-object p0, p0, Lcom/android/quickstep/views/TaskView;->mTask:Lcom/android/systemui/shared/recents/model/Task;

    invoke-virtual {p1, p0}, Lcom/android/quickstep/views/DigitalWellBeingToast;->initialize(Lcom/android/systemui/shared/recents/model/Task;)V

    return-void
.end method

.method setThumbnailVisibility(II)V
    .locals 2

    const/4 p2, 0x0

    :goto_0
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getChildCount()I

    move-result v0

    if-ge p2, v0, :cond_1

    invoke-virtual {p0, p2}, Landroid/widget/FrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/android/quickstep/views/TaskView;->mIconView:Lcom/android/quickstep/views/IconView;

    if-eq v0, v1, :cond_0

    invoke-virtual {v0, p1}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public setUpShowAllInstancesListener()V
    .locals 2

    iget-object v0, p0, Lcom/android/quickstep/views/TaskView;->mTaskIdAttributeContainer:[Lcom/android/quickstep/views/TaskView$TaskIdAttributeContainer;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-static {v0}, Lcom/android/quickstep/views/TaskView$TaskIdAttributeContainer;->access$2500(Lcom/android/quickstep/views/TaskView$TaskIdAttributeContainer;)Lcom/android/systemui/shared/recents/model/Task;

    move-result-object v0

    iget-object v0, v0, Lcom/android/systemui/shared/recents/model/Task;->key:Lcom/android/systemui/shared/recents/model/Task$TaskKey;

    invoke-virtual {v0}, Lcom/android/systemui/shared/recents/model/Task$TaskKey;->getPackageName()Ljava/lang/String;

    move-result-object v0

    const v1, 0x7f0b0351

    invoke-virtual {p0, v1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {p0, v0}, Lcom/android/quickstep/views/TaskView;->getFilterUpdateCallback(Ljava/lang/String;)Landroid/view/View$OnClickListener;

    move-result-object v0

    invoke-virtual {p0, v1, v0}, Lcom/android/quickstep/views/TaskView;->updateFilterCallback(Landroid/view/View;Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public showScreenshot()Z
    .locals 1

    invoke-virtual {p0}, Lcom/android/quickstep/views/TaskView;->isRunningTask()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    iget-boolean p0, p0, Lcom/android/quickstep/views/TaskView;->mShowScreenshot:Z

    return p0
.end method

.method protected showTaskMenuWithContainer(Lcom/android/quickstep/views/IconView;)Z
    .locals 4

    iget-object v0, p0, Lcom/android/quickstep/views/TaskView;->mTaskIdAttributeContainer:[Lcom/android/quickstep/views/TaskView$TaskIdAttributeContainer;

    iget-object v1, p0, Lcom/android/quickstep/views/TaskView;->mIconView:Lcom/android/quickstep/views/IconView;

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ne p1, v1, :cond_0

    move p1, v2

    goto :goto_0

    :cond_0
    move p1, v3

    :goto_0
    aget-object p1, v0, p1

    iget-object v0, p0, Lcom/android/quickstep/views/TaskView;->mActivity:Lcom/android/launcher3/statemanager/StatefulActivity;

    invoke-virtual {v0}, Lcom/android/launcher3/BaseActivity;->getDeviceProfile()Lj3/a;

    move-result-object v0

    iget-boolean v1, v0, Lcom/android/launcher3/DeviceProfile;->isTablet:Z

    if-eqz v1, :cond_3

    invoke-virtual {p0}, Lcom/android/quickstep/views/TaskView;->getRecentsView()Lcom/android/quickstep/views/RecentsView;

    move-result-object p0

    invoke-virtual {p1}, Lcom/android/quickstep/views/TaskView$TaskIdAttributeContainer;->getTaskView()Lcom/android/quickstep/views/TaskView;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/quickstep/views/RecentsView;->isOnGridBottomRow(Lcom/android/quickstep/views/TaskView;)Z

    move-result p0

    if-eqz p0, :cond_2

    iget-boolean p0, v0, Lcom/android/launcher3/DeviceProfile;->isLandscape:Z

    if-eqz p0, :cond_2

    sget-object p0, Lcom/android/launcher3/config/FeatureFlags;->ENABLE_GRID_ONLY_OVERVIEW:Lcom/android/launcher3/config/FeatureFlags$BooleanFlag;

    invoke-virtual {p0}, Lcom/android/launcher3/config/FeatureFlags$BooleanFlag;->get()Z

    move-result p0

    if-eqz p0, :cond_1

    const/4 v2, 0x2

    goto :goto_1

    :cond_1
    move v2, v3

    :cond_2
    :goto_1
    sget-object p0, Lcom/android/quickstep/views/TaskMenuViewWithArrow;->Companion:Lcom/android/quickstep/views/TaskMenuViewWithArrow$Companion;

    invoke-virtual {p0, p1, v2}, Lcom/android/quickstep/views/TaskMenuViewWithArrow$Companion;->showForTask(Lcom/android/quickstep/views/TaskView$TaskIdAttributeContainer;I)Z

    move-result p0

    return p0

    :cond_3
    invoke-static {p1}, Lcom/android/quickstep/views/TaskMenuView;->showForTask(Lcom/android/quickstep/views/TaskView$TaskIdAttributeContainer;)Z

    move-result p0

    return p0
.end method

.method protected updateBorderBounds(Landroid/graphics/Rect;)V
    .locals 4

    iget-object v0, p0, Lcom/android/quickstep/views/TaskView;->mSnapshotView:Lcom/android/quickstep/views/TaskThumbnailView;

    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v0

    iget-object v1, p0, Lcom/android/quickstep/views/TaskView;->mSnapshotView:Lcom/android/quickstep/views/TaskThumbnailView;

    invoke-virtual {v1}, Landroid/view/View;->getTranslationX()F

    move-result v1

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    add-int/2addr v0, v1

    iget-object v1, p0, Lcom/android/quickstep/views/TaskView;->mSnapshotView:Lcom/android/quickstep/views/TaskThumbnailView;

    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v1

    iget-object v2, p0, Lcom/android/quickstep/views/TaskView;->mSnapshotView:Lcom/android/quickstep/views/TaskThumbnailView;

    invoke-virtual {v2}, Landroid/view/View;->getTranslationY()F

    move-result v2

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    add-int/2addr v1, v2

    iget-object v2, p0, Lcom/android/quickstep/views/TaskView;->mSnapshotView:Lcom/android/quickstep/views/TaskThumbnailView;

    invoke-virtual {v2}, Landroid/view/View;->getRight()I

    move-result v2

    iget-object v3, p0, Lcom/android/quickstep/views/TaskView;->mSnapshotView:Lcom/android/quickstep/views/TaskThumbnailView;

    invoke-virtual {v3}, Landroid/view/View;->getTranslationX()F

    move-result v3

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v3

    add-int/2addr v2, v3

    iget-object v3, p0, Lcom/android/quickstep/views/TaskView;->mSnapshotView:Lcom/android/quickstep/views/TaskThumbnailView;

    invoke-virtual {v3}, Landroid/view/View;->getBottom()I

    move-result v3

    iget-object p0, p0, Lcom/android/quickstep/views/TaskView;->mSnapshotView:Lcom/android/quickstep/views/TaskThumbnailView;

    invoke-virtual {p0}, Landroid/view/View;->getTranslationY()F

    move-result p0

    invoke-static {p0}, Ljava/lang/Math;->round(F)I

    move-result p0

    add-int/2addr v3, p0

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Rect;->set(IIII)V

    return-void
.end method

.method updateCurrentFullscreenParams(Lcom/android/systemui/shared/recents/utilities/PreviewPositionHelper;)V
    .locals 8

    invoke-virtual {p0}, Lcom/android/quickstep/views/TaskView;->getRecentsView()Lcom/android/quickstep/views/RecentsView;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v1, p0, Lcom/android/quickstep/views/TaskView;->mCurrentFullscreenParams:Lcom/android/quickstep/views/TaskView$FullscreenDrawParams;

    iget v2, p0, Lcom/android/quickstep/views/TaskView;->mFullscreenProgress:F

    invoke-virtual {p0}, Lcom/android/quickstep/views/TaskView;->getRecentsView()Lcom/android/quickstep/views/RecentsView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getScaleX()F

    move-result v3

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getScaleX()F

    move-result v4

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getWidth()I

    move-result v5

    iget-object p0, p0, Lcom/android/quickstep/views/TaskView;->mActivity:Lcom/android/launcher3/statemanager/StatefulActivity;

    invoke-virtual {p0}, Lcom/android/launcher3/BaseActivity;->getDeviceProfile()Lj3/a;

    move-result-object v6

    move-object v7, p1

    invoke-virtual/range {v1 .. v7}, Lcom/android/quickstep/views/TaskView$FullscreenDrawParams;->setProgress(FFFILcom/android/launcher3/DeviceProfile;Lcom/android/systemui/shared/recents/utilities/PreviewPositionHelper;)V

    return-void
.end method

.method protected updateFilterCallback(Landroid/view/View;Landroid/view/View$OnClickListener;)V
    .locals 0
    .param p1    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/view/View$OnClickListener;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    if-nez p2, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    const/high16 p0, 0x3f800000    # 1.0f

    :goto_0
    invoke-virtual {p1, p0}, Landroid/view/View;->setAlpha(F)V

    invoke-virtual {p1, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method protected updateSnapshotRadius()V
    .locals 1

    iget-object v0, p0, Lcom/android/quickstep/views/TaskView;->mSnapshotView:Lcom/android/quickstep/views/TaskThumbnailView;

    invoke-virtual {v0}, Lcom/android/quickstep/views/TaskThumbnailView;->getPreviewPositionHelper()Lcom/android/systemui/shared/recents/utilities/PreviewPositionHelper;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/quickstep/views/TaskView;->updateCurrentFullscreenParams(Lcom/android/systemui/shared/recents/utilities/PreviewPositionHelper;)V

    iget-object v0, p0, Lcom/android/quickstep/views/TaskView;->mSnapshotView:Lcom/android/quickstep/views/TaskThumbnailView;

    iget-object p0, p0, Lcom/android/quickstep/views/TaskView;->mCurrentFullscreenParams:Lcom/android/quickstep/views/TaskView$FullscreenDrawParams;

    invoke-virtual {v0, p0}, Lcom/android/quickstep/views/TaskThumbnailView;->setFullscreenParams(Lcom/android/quickstep/views/TaskView$FullscreenDrawParams;)V

    return-void
.end method

.method updateTaskSize()V
    .locals 7

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iget-object v1, p0, Lcom/android/quickstep/views/TaskView;->mActivity:Lcom/android/launcher3/statemanager/StatefulActivity;

    invoke-virtual {v1}, Lcom/android/launcher3/BaseActivity;->getDeviceProfile()Lj3/a;

    move-result-object v1

    iget-boolean v2, v1, Lcom/android/launcher3/DeviceProfile;->isTablet:Z

    const/4 v3, -0x1

    if-eqz v2, :cond_2

    iget v1, v1, Lcom/android/launcher3/DeviceProfile;->overviewTaskThumbnailTopMarginPx:I

    invoke-virtual {p0}, Lcom/android/quickstep/views/TaskView;->getRecentsView()Lcom/android/quickstep/views/RecentsView;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/quickstep/views/RecentsView;->getLastComputedTaskSize()Landroid/graphics/Rect;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v3

    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v2

    invoke-virtual {p0}, Lcom/android/quickstep/views/TaskView;->isFocusedTask()Z

    move-result v4

    invoke-virtual {p0}, Lcom/android/quickstep/views/TaskView;->isDesktopTask()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-virtual {p0}, Lcom/android/quickstep/views/TaskView;->getRecentsView()Lcom/android/quickstep/views/RecentsView;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/quickstep/views/RecentsView;->getLastComputedDesktopTaskSize()Landroid/graphics/Rect;

    move-result-object v4

    :goto_0
    invoke-virtual {v4}, Landroid/graphics/Rect;->width()I

    move-result v5

    invoke-virtual {v4}, Landroid/graphics/Rect;->height()I

    move-result v4

    goto :goto_1

    :cond_0
    if-eqz v4, :cond_1

    move v4, v2

    move v5, v3

    goto :goto_1

    :cond_1
    invoke-virtual {p0}, Lcom/android/quickstep/views/TaskView;->getRecentsView()Lcom/android/quickstep/views/RecentsView;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/quickstep/views/RecentsView;->getLastComputedGridTaskSize()Landroid/graphics/Rect;

    move-result-object v4

    goto :goto_0

    :goto_1
    add-int/2addr v4, v1

    int-to-float v3, v3

    int-to-float v6, v5

    div-float/2addr v3, v6

    sub-int v1, v4, v1

    sub-int/2addr v1, v2

    int-to-float v1, v1

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v1, v2

    goto :goto_2

    :cond_2
    const/high16 v1, 0x3f800000    # 1.0f

    const/4 v2, 0x0

    move v4, v3

    move v5, v4

    move v3, v1

    move v1, v2

    :goto_2
    invoke-direct {p0, v3}, Lcom/android/quickstep/views/TaskView;->setNonGridScale(F)V

    invoke-direct {p0, v1}, Lcom/android/quickstep/views/TaskView;->setBoxTranslationY(F)V

    iget v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    if-ne v1, v5, :cond_3

    iget v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    if-eq v1, v4, :cond_4

    :cond_3
    iput v5, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    iput v4, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_4
    return-void
.end method
