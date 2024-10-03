.class public Lcom/android/quickstep/util/SwipePipToHomeAnimator;
.super Lcom/android/quickstep/util/RectFSpringAnim;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/quickstep/util/SwipePipToHomeAnimator$RotatedPosition;,
        Lcom/android/quickstep/util/SwipePipToHomeAnimator$Builder;
    }
.end annotation


# static fields
.field private static final END_PROGRESS:F = 1.0f

.field private static final TAG:Ljava/lang/String; = "SwipePipToHomeAnimator"


# instance fields
.field private final mActivityInfo:Landroid/content/pm/ActivityInfo;

.field private final mAppBounds:Landroid/graphics/Rect;

.field private final mCurrentBounds:Landroid/graphics/Rect;

.field private final mCurrentBoundsF:Landroid/graphics/RectF;

.field private final mDestinationBounds:Landroid/graphics/Rect;

.field private final mDestinationBoundsTransformed:Landroid/graphics/Rect;

.field private final mFromRotation:I

.field private mHasAnimationEnded:Z

.field private final mHomeToWindowPositionMap:Landroid/graphics/Matrix;

.field private final mInsetsEvaluator:Landroid/animation/RectEvaluator;

.field private final mLeash:Landroid/view/SurfaceControl;

.field private mPipContentOverlay:Lcom/android/wm/shell/pip/c;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private final mSourceHintRectInsets:Landroid/graphics/Rect;

.field private final mSourceInsets:Landroid/graphics/Rect;

.field private final mSourceRectHint:Landroid/graphics/Rect;

.field private final mStartBounds:Landroid/graphics/Rect;

.field private final mSurfaceTransactionHelper:Lcom/android/systemui/shared/pip/PipSurfaceTransactionHelper;

.field private final mTaskId:I


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;ILandroid/content/pm/ActivityInfo;ILandroid/view/SurfaceControl;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Matrix;Landroid/graphics/RectF;Landroid/graphics/Rect;ILandroid/graphics/Rect;IILandroid/view/View;)V
    .locals 15
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Landroid/content/pm/ActivityInfo;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p5    # Landroid/view/SurfaceControl;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p6    # Landroid/graphics/Rect;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p7    # Landroid/graphics/Rect;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p8    # Landroid/graphics/Matrix;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p9    # Landroid/graphics/RectF;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p10    # Landroid/graphics/Rect;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p12    # Landroid/graphics/Rect;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p15    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    move-object v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p3

    move-object/from16 v3, p5

    move-object/from16 v4, p7

    move-object/from16 v5, p9

    move-object/from16 v6, p12

    new-instance v7, Lcom/android/quickstep/util/RectFSpringAnim$DefaultSpringConfig;

    new-instance v8, Landroid/graphics/RectF;

    invoke-direct {v8, v6}, Landroid/graphics/RectF;-><init>(Landroid/graphics/Rect;)V

    const/4 v9, 0x0

    invoke-direct {v7, v1, v9, v5, v8}, Lcom/android/quickstep/util/RectFSpringAnim$DefaultSpringConfig;-><init>(Landroid/content/Context;Lcom/android/launcher3/DeviceProfile;Landroid/graphics/RectF;Landroid/graphics/RectF;)V

    invoke-direct {p0, v7}, Lcom/android/quickstep/util/RectFSpringAnim;-><init>(Lcom/android/quickstep/util/RectFSpringAnim$SpringConfig;)V

    new-instance v7, Landroid/graphics/Rect;

    invoke-direct {v7}, Landroid/graphics/Rect;-><init>()V

    iput-object v7, v0, Lcom/android/quickstep/util/SwipePipToHomeAnimator;->mSourceRectHint:Landroid/graphics/Rect;

    new-instance v8, Landroid/graphics/Rect;

    invoke-direct {v8}, Landroid/graphics/Rect;-><init>()V

    iput-object v8, v0, Lcom/android/quickstep/util/SwipePipToHomeAnimator;->mAppBounds:Landroid/graphics/Rect;

    new-instance v10, Landroid/graphics/Matrix;

    invoke-direct {v10}, Landroid/graphics/Matrix;-><init>()V

    iput-object v10, v0, Lcom/android/quickstep/util/SwipePipToHomeAnimator;->mHomeToWindowPositionMap:Landroid/graphics/Matrix;

    new-instance v11, Landroid/graphics/Rect;

    invoke-direct {v11}, Landroid/graphics/Rect;-><init>()V

    iput-object v11, v0, Lcom/android/quickstep/util/SwipePipToHomeAnimator;->mStartBounds:Landroid/graphics/Rect;

    new-instance v12, Landroid/graphics/RectF;

    invoke-direct {v12}, Landroid/graphics/RectF;-><init>()V

    iput-object v12, v0, Lcom/android/quickstep/util/SwipePipToHomeAnimator;->mCurrentBoundsF:Landroid/graphics/RectF;

    new-instance v12, Landroid/graphics/Rect;

    invoke-direct {v12}, Landroid/graphics/Rect;-><init>()V

    iput-object v12, v0, Lcom/android/quickstep/util/SwipePipToHomeAnimator;->mCurrentBounds:Landroid/graphics/Rect;

    new-instance v12, Landroid/graphics/Rect;

    invoke-direct {v12}, Landroid/graphics/Rect;-><init>()V

    iput-object v12, v0, Lcom/android/quickstep/util/SwipePipToHomeAnimator;->mDestinationBounds:Landroid/graphics/Rect;

    new-instance v13, Landroid/animation/RectEvaluator;

    new-instance v14, Landroid/graphics/Rect;

    invoke-direct {v14}, Landroid/graphics/Rect;-><init>()V

    invoke-direct {v13, v14}, Landroid/animation/RectEvaluator;-><init>(Landroid/graphics/Rect;)V

    iput-object v13, v0, Lcom/android/quickstep/util/SwipePipToHomeAnimator;->mInsetsEvaluator:Landroid/animation/RectEvaluator;

    new-instance v13, Landroid/graphics/Rect;

    invoke-direct {v13}, Landroid/graphics/Rect;-><init>()V

    iput-object v13, v0, Lcom/android/quickstep/util/SwipePipToHomeAnimator;->mSourceInsets:Landroid/graphics/Rect;

    new-instance v13, Landroid/graphics/Rect;

    invoke-direct {v13}, Landroid/graphics/Rect;-><init>()V

    iput-object v13, v0, Lcom/android/quickstep/util/SwipePipToHomeAnimator;->mDestinationBoundsTransformed:Landroid/graphics/Rect;

    move/from16 v14, p2

    iput v14, v0, Lcom/android/quickstep/util/SwipePipToHomeAnimator;->mTaskId:I

    iput-object v2, v0, Lcom/android/quickstep/util/SwipePipToHomeAnimator;->mActivityInfo:Landroid/content/pm/ActivityInfo;

    iput-object v3, v0, Lcom/android/quickstep/util/SwipePipToHomeAnimator;->mLeash:Landroid/view/SurfaceControl;

    invoke-virtual {v8, v4}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    move-object/from16 v14, p8

    invoke-virtual {v10, v14}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    invoke-virtual {v5, v11}, Landroid/graphics/RectF;->round(Landroid/graphics/Rect;)V

    move-object/from16 v5, p10

    invoke-virtual {v12, v5}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    move/from16 v10, p11

    iput v10, v0, Lcom/android/quickstep/util/SwipePipToHomeAnimator;->mFromRotation:I

    invoke-virtual {v13, v6}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    new-instance v6, Lcom/android/systemui/shared/pip/PipSurfaceTransactionHelper;

    move/from16 v10, p13

    move/from16 v11, p14

    invoke-direct {v6, v10, v11}, Lcom/android/systemui/shared/pip/PipSurfaceTransactionHelper;-><init>(II)V

    iput-object v6, v0, Lcom/android/quickstep/util/SwipePipToHomeAnimator;->mSurfaceTransactionHelper:Lcom/android/systemui/shared/pip/PipSurfaceTransactionHelper;

    if-eqz p6, :cond_1

    invoke-virtual/range {p6 .. p6}, Landroid/graphics/Rect;->width()I

    move-result v6

    invoke-virtual/range {p10 .. p10}, Landroid/graphics/Rect;->width()I

    move-result v10

    if-lt v6, v10, :cond_0

    invoke-virtual/range {p6 .. p6}, Landroid/graphics/Rect;->height()I

    move-result v6

    invoke-virtual/range {p10 .. p10}, Landroid/graphics/Rect;->height()I

    move-result v5

    if-ge v6, v5, :cond_1

    :cond_0
    move-object v5, v9

    goto :goto_0

    :cond_1
    move-object/from16 v5, p6

    :goto_0
    if-nez v5, :cond_3

    invoke-virtual {v7}, Landroid/graphics/Rect;->setEmpty()V

    iput-object v9, v0, Lcom/android/quickstep/util/SwipePipToHomeAnimator;->mSourceHintRectInsets:Landroid/graphics/Rect;

    const/4 v4, 0x1

    const-string v5, "persist.wm.debug.enable_pip_app_icon_overlay"

    invoke-static {v5, v4}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    if-eqz v4, :cond_2

    new-instance v4, Lcom/android/wm/shell/pip/c$a;

    invoke-virtual/range {p15 .. p15}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v5

    new-instance v6, Lcom/android/launcher3/icons/IconProvider;

    invoke-direct {v6, v1}, Lcom/android/launcher3/icons/IconProvider;-><init>(Landroid/content/Context;)V

    invoke-virtual {v6, v2}, Lcom/android/launcher3/icons/IconProvider;->getIcon(Landroid/content/pm/ActivityInfo;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    move/from16 v2, p4

    invoke-direct {v4, v5, v8, v1, v2}, Lcom/android/wm/shell/pip/c$a;-><init>(Landroid/content/Context;Landroid/graphics/Rect;Landroid/graphics/drawable/Drawable;I)V

    iput-object v4, v0, Lcom/android/quickstep/util/SwipePipToHomeAnimator;->mPipContentOverlay:Lcom/android/wm/shell/pip/c;

    goto :goto_1

    :cond_2
    new-instance v1, Lcom/android/wm/shell/pip/c$b;

    invoke-virtual/range {p15 .. p15}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/android/wm/shell/pip/c$b;-><init>(Landroid/content/Context;)V

    iput-object v1, v0, Lcom/android/quickstep/util/SwipePipToHomeAnimator;->mPipContentOverlay:Lcom/android/wm/shell/pip/c;

    :goto_1
    new-instance v1, Landroid/view/SurfaceControl$Transaction;

    invoke-direct {v1}, Landroid/view/SurfaceControl$Transaction;-><init>()V

    iget-object v2, v0, Lcom/android/quickstep/util/SwipePipToHomeAnimator;->mPipContentOverlay:Lcom/android/wm/shell/pip/c;

    invoke-virtual {v2, v1, v3}, Lcom/android/wm/shell/pip/c;->a(Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl;)V

    goto :goto_2

    :cond_3
    invoke-virtual {v7, v5}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    new-instance v1, Landroid/graphics/Rect;

    iget v2, v5, Landroid/graphics/Rect;->left:I

    iget v3, v4, Landroid/graphics/Rect;->left:I

    sub-int/2addr v2, v3

    iget v3, v5, Landroid/graphics/Rect;->top:I

    iget v6, v4, Landroid/graphics/Rect;->top:I

    sub-int/2addr v3, v6

    iget v6, v4, Landroid/graphics/Rect;->right:I

    iget v7, v5, Landroid/graphics/Rect;->right:I

    sub-int/2addr v6, v7

    iget v4, v4, Landroid/graphics/Rect;->bottom:I

    iget v5, v5, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v4, v5

    invoke-direct {v1, v2, v3, v6, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v1, v0, Lcom/android/quickstep/util/SwipePipToHomeAnimator;->mSourceHintRectInsets:Landroid/graphics/Rect;

    :goto_2
    new-instance v1, Lcom/android/quickstep/util/SwipePipToHomeAnimator$1;

    move-object/from16 v2, p15

    invoke-direct {v1, p0, v2}, Lcom/android/quickstep/util/SwipePipToHomeAnimator$1;-><init>(Lcom/android/quickstep/util/SwipePipToHomeAnimator;Landroid/view/View;)V

    invoke-virtual {p0, v1}, Lcom/android/quickstep/util/RectFSpringAnim;->addAnimatorListener(Landroid/animation/Animator$AnimatorListener;)V

    new-instance v1, Lcom/android/quickstep/util/a1;

    invoke-direct {v1, p0}, Lcom/android/quickstep/util/a1;-><init>(Lcom/android/quickstep/util/SwipePipToHomeAnimator;)V

    invoke-virtual {p0, v1}, Lcom/android/quickstep/util/RectFSpringAnim;->addOnUpdateListener(Lcom/android/quickstep/util/RectFSpringAnim$OnUpdateListener;)V

    return-void
.end method

.method synthetic constructor <init>(Landroid/content/Context;ILandroid/content/pm/ActivityInfo;ILandroid/view/SurfaceControl;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Matrix;Landroid/graphics/RectF;Landroid/graphics/Rect;ILandroid/graphics/Rect;IILandroid/view/View;Lcom/android/quickstep/util/SwipePipToHomeAnimator$1;)V
    .locals 0

    invoke-direct/range {p0 .. p15}, Lcom/android/quickstep/util/SwipePipToHomeAnimator;-><init>(Landroid/content/Context;ILandroid/content/pm/ActivityInfo;ILandroid/view/SurfaceControl;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Matrix;Landroid/graphics/RectF;Landroid/graphics/Rect;ILandroid/graphics/Rect;IILandroid/view/View;)V

    return-void
.end method

.method static synthetic access$000(Lcom/android/quickstep/util/SwipePipToHomeAnimator;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/android/quickstep/util/SwipePipToHomeAnimator;->mHasAnimationEnded:Z

    return p0
.end method

.method static synthetic access$002(Lcom/android/quickstep/util/SwipePipToHomeAnimator;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/quickstep/util/SwipePipToHomeAnimator;->mHasAnimationEnded:Z

    return p1
.end method

.method static synthetic access$500()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/android/quickstep/util/SwipePipToHomeAnimator;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method public static synthetic e(Lcom/android/quickstep/util/SwipePipToHomeAnimator;Landroid/graphics/RectF;F)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/quickstep/util/SwipePipToHomeAnimator;->onAnimationUpdate(Landroid/graphics/RectF;F)V

    return-void
.end method

.method private getRotatedPosition(F)Lcom/android/quickstep/util/SwipePipToHomeAnimator$RotatedPosition;
    .locals 5

    sget-boolean v0, Lcom/android/quickstep/TaskAnimationManager;->SHELL_TRANSITIONS_ROTATION:Z

    const/high16 v1, -0x3d4c0000    # -90.0f

    const/high16 v2, 0x42b40000    # 90.0f

    const/4 v3, 0x1

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/android/quickstep/util/SwipePipToHomeAnimator;->mFromRotation:I

    const/high16 v4, 0x3f800000    # 1.0f

    sub-float/2addr v4, p1

    if-ne v0, v3, :cond_0

    mul-float/2addr v1, v4

    iget-object v0, p0, Lcom/android/quickstep/util/SwipePipToHomeAnimator;->mDestinationBoundsTransformed:Landroid/graphics/Rect;

    iget v2, v0, Landroid/graphics/Rect;->left:I

    iget-object p0, p0, Lcom/android/quickstep/util/SwipePipToHomeAnimator;->mStartBounds:Landroid/graphics/Rect;

    iget v3, p0, Landroid/graphics/Rect;->left:I

    sub-int/2addr v2, v3

    int-to-float v2, v2

    mul-float/2addr v2, p1

    int-to-float v3, v3

    add-float/2addr v2, v3

    iget v0, v0, Landroid/graphics/Rect;->top:I

    iget v3, p0, Landroid/graphics/Rect;->top:I

    sub-int/2addr v0, v3

    int-to-float v0, v0

    mul-float/2addr p1, v0

    int-to-float v0, v3

    add-float/2addr p1, v0

    iget p0, p0, Landroid/graphics/Rect;->bottom:I

    int-to-float p0, p0

    mul-float/2addr p0, v4

    goto :goto_2

    :cond_0
    mul-float v1, v4, v2

    iget-object v0, p0, Lcom/android/quickstep/util/SwipePipToHomeAnimator;->mDestinationBoundsTransformed:Landroid/graphics/Rect;

    iget v2, v0, Landroid/graphics/Rect;->left:I

    iget-object p0, p0, Lcom/android/quickstep/util/SwipePipToHomeAnimator;->mStartBounds:Landroid/graphics/Rect;

    iget v3, p0, Landroid/graphics/Rect;->left:I

    sub-int/2addr v2, v3

    int-to-float v2, v2

    mul-float/2addr v2, p1

    int-to-float v3, v3

    add-float/2addr v2, v3

    iget v3, p0, Landroid/graphics/Rect;->right:I

    int-to-float v3, v3

    mul-float/2addr v3, v4

    goto :goto_0

    :cond_1
    iget v0, p0, Lcom/android/quickstep/util/SwipePipToHomeAnimator;->mFromRotation:I

    if-ne v0, v3, :cond_2

    mul-float/2addr v1, p1

    iget-object v0, p0, Lcom/android/quickstep/util/SwipePipToHomeAnimator;->mDestinationBoundsTransformed:Landroid/graphics/Rect;

    iget v2, v0, Landroid/graphics/Rect;->left:I

    iget-object p0, p0, Lcom/android/quickstep/util/SwipePipToHomeAnimator;->mStartBounds:Landroid/graphics/Rect;

    iget v3, p0, Landroid/graphics/Rect;->left:I

    sub-int/2addr v2, v3

    int-to-float v2, v2

    mul-float/2addr v2, p1

    int-to-float v3, v3

    add-float/2addr v2, v3

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    goto :goto_1

    :cond_2
    mul-float v1, p1, v2

    iget-object v0, p0, Lcom/android/quickstep/util/SwipePipToHomeAnimator;->mDestinationBoundsTransformed:Landroid/graphics/Rect;

    iget v2, v0, Landroid/graphics/Rect;->right:I

    iget-object p0, p0, Lcom/android/quickstep/util/SwipePipToHomeAnimator;->mStartBounds:Landroid/graphics/Rect;

    iget v3, p0, Landroid/graphics/Rect;->left:I

    sub-int/2addr v2, v3

    int-to-float v2, v2

    mul-float/2addr v2, p1

    int-to-float v3, v3

    :goto_0
    add-float/2addr v2, v3

    iget v0, v0, Landroid/graphics/Rect;->top:I

    :goto_1
    iget p0, p0, Landroid/graphics/Rect;->top:I

    sub-int/2addr v0, p0

    int-to-float v0, v0

    mul-float/2addr p1, v0

    int-to-float p0, p0

    :goto_2
    add-float/2addr p1, p0

    new-instance p0, Lcom/android/quickstep/util/SwipePipToHomeAnimator$RotatedPosition;

    const/4 v0, 0x0

    invoke-direct {p0, v1, v2, p1, v0}, Lcom/android/quickstep/util/SwipePipToHomeAnimator$RotatedPosition;-><init>(FFFLcom/android/quickstep/util/SwipePipToHomeAnimator$1;)V

    return-object p0
.end method

.method private onAnimationScale(FLandroid/view/SurfaceControl$Transaction;Landroid/graphics/Rect;)Landroid/window/PictureInPictureSurfaceTransaction;
    .locals 8

    iget v0, p0, Lcom/android/quickstep/util/SwipePipToHomeAnimator;->mFromRotation:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/android/quickstep/util/SwipePipToHomeAnimator;->mSurfaceTransactionHelper:Lcom/android/systemui/shared/pip/PipSurfaceTransactionHelper;

    iget-object v0, p0, Lcom/android/quickstep/util/SwipePipToHomeAnimator;->mLeash:Landroid/view/SurfaceControl;

    iget-object p0, p0, Lcom/android/quickstep/util/SwipePipToHomeAnimator;->mAppBounds:Landroid/graphics/Rect;

    invoke-virtual {p1, p2, v0, p0, p3}, Lcom/android/systemui/shared/pip/PipSurfaceTransactionHelper;->scale(Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl;Landroid/graphics/Rect;Landroid/graphics/Rect;)Landroid/window/PictureInPictureSurfaceTransaction;

    move-result-object p0

    return-object p0

    :cond_1
    :goto_0
    invoke-direct {p0, p1}, Lcom/android/quickstep/util/SwipePipToHomeAnimator;->getRotatedPosition(F)Lcom/android/quickstep/util/SwipePipToHomeAnimator$RotatedPosition;

    move-result-object p1

    iget-object v0, p0, Lcom/android/quickstep/util/SwipePipToHomeAnimator;->mSurfaceTransactionHelper:Lcom/android/systemui/shared/pip/PipSurfaceTransactionHelper;

    iget-object v2, p0, Lcom/android/quickstep/util/SwipePipToHomeAnimator;->mLeash:Landroid/view/SurfaceControl;

    iget-object v3, p0, Lcom/android/quickstep/util/SwipePipToHomeAnimator;->mAppBounds:Landroid/graphics/Rect;

    invoke-static {p1}, Lcom/android/quickstep/util/SwipePipToHomeAnimator$RotatedPosition;->access$100(Lcom/android/quickstep/util/SwipePipToHomeAnimator$RotatedPosition;)F

    move-result v5

    invoke-static {p1}, Lcom/android/quickstep/util/SwipePipToHomeAnimator$RotatedPosition;->access$200(Lcom/android/quickstep/util/SwipePipToHomeAnimator$RotatedPosition;)F

    move-result v6

    invoke-static {p1}, Lcom/android/quickstep/util/SwipePipToHomeAnimator$RotatedPosition;->access$300(Lcom/android/quickstep/util/SwipePipToHomeAnimator$RotatedPosition;)F

    move-result v7

    move-object v1, p2

    move-object v4, p3

    invoke-virtual/range {v0 .. v7}, Lcom/android/systemui/shared/pip/PipSurfaceTransactionHelper;->scale(Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl;Landroid/graphics/Rect;Landroid/graphics/Rect;FFF)Landroid/window/PictureInPictureSurfaceTransaction;

    move-result-object p0

    return-object p0
.end method

.method private onAnimationScaleAndCrop(FLandroid/view/SurfaceControl$Transaction;Landroid/graphics/Rect;)Landroid/window/PictureInPictureSurfaceTransaction;
    .locals 12

    iget-object v0, p0, Lcom/android/quickstep/util/SwipePipToHomeAnimator;->mInsetsEvaluator:Landroid/animation/RectEvaluator;

    iget-object v1, p0, Lcom/android/quickstep/util/SwipePipToHomeAnimator;->mSourceInsets:Landroid/graphics/Rect;

    iget-object v2, p0, Lcom/android/quickstep/util/SwipePipToHomeAnimator;->mSourceHintRectInsets:Landroid/graphics/Rect;

    invoke-virtual {v0, p1, v1, v2}, Landroid/animation/RectEvaluator;->evaluate(FLandroid/graphics/Rect;Landroid/graphics/Rect;)Landroid/graphics/Rect;

    move-result-object v0

    iget v1, p0, Lcom/android/quickstep/util/SwipePipToHomeAnimator;->mFromRotation:I

    const/4 v2, 0x1

    if-eq v1, v2, :cond_1

    const/4 v2, 0x3

    if-ne v1, v2, :cond_0

    goto :goto_0

    :cond_0
    iget-object v3, p0, Lcom/android/quickstep/util/SwipePipToHomeAnimator;->mSurfaceTransactionHelper:Lcom/android/systemui/shared/pip/PipSurfaceTransactionHelper;

    iget-object v5, p0, Lcom/android/quickstep/util/SwipePipToHomeAnimator;->mLeash:Landroid/view/SurfaceControl;

    iget-object v6, p0, Lcom/android/quickstep/util/SwipePipToHomeAnimator;->mSourceRectHint:Landroid/graphics/Rect;

    iget-object v7, p0, Lcom/android/quickstep/util/SwipePipToHomeAnimator;->mAppBounds:Landroid/graphics/Rect;

    move-object v4, p2

    move-object v8, p3

    move-object v9, v0

    move v10, p1

    invoke-virtual/range {v3 .. v10}, Lcom/android/systemui/shared/pip/PipSurfaceTransactionHelper;->scaleAndCrop(Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;F)Landroid/window/PictureInPictureSurfaceTransaction;

    move-result-object p0

    return-object p0

    :cond_1
    :goto_0
    invoke-direct {p0, p1}, Lcom/android/quickstep/util/SwipePipToHomeAnimator;->getRotatedPosition(F)Lcom/android/quickstep/util/SwipePipToHomeAnimator$RotatedPosition;

    move-result-object p1

    iget-object v3, p0, Lcom/android/quickstep/util/SwipePipToHomeAnimator;->mSurfaceTransactionHelper:Lcom/android/systemui/shared/pip/PipSurfaceTransactionHelper;

    iget-object v5, p0, Lcom/android/quickstep/util/SwipePipToHomeAnimator;->mLeash:Landroid/view/SurfaceControl;

    iget-object v6, p0, Lcom/android/quickstep/util/SwipePipToHomeAnimator;->mAppBounds:Landroid/graphics/Rect;

    invoke-static {p1}, Lcom/android/quickstep/util/SwipePipToHomeAnimator$RotatedPosition;->access$100(Lcom/android/quickstep/util/SwipePipToHomeAnimator$RotatedPosition;)F

    move-result v9

    invoke-static {p1}, Lcom/android/quickstep/util/SwipePipToHomeAnimator$RotatedPosition;->access$200(Lcom/android/quickstep/util/SwipePipToHomeAnimator$RotatedPosition;)F

    move-result v10

    invoke-static {p1}, Lcom/android/quickstep/util/SwipePipToHomeAnimator$RotatedPosition;->access$300(Lcom/android/quickstep/util/SwipePipToHomeAnimator$RotatedPosition;)F

    move-result v11

    move-object v4, p2

    move-object v7, p3

    move-object v8, v0

    invoke-virtual/range {v3 .. v11}, Lcom/android/systemui/shared/pip/PipSurfaceTransactionHelper;->scaleAndRotate(Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;FFF)Landroid/window/PictureInPictureSurfaceTransaction;

    move-result-object p0

    return-object p0
.end method

.method private onAnimationUpdate(Landroid/view/SurfaceControl$Transaction;Landroid/graphics/RectF;F)Landroid/window/PictureInPictureSurfaceTransaction;
    .locals 1

    iget-object v0, p0, Lcom/android/quickstep/util/SwipePipToHomeAnimator;->mCurrentBounds:Landroid/graphics/Rect;

    invoke-virtual {p2, v0}, Landroid/graphics/RectF;->round(Landroid/graphics/Rect;)V

    iget-object p2, p0, Lcom/android/quickstep/util/SwipePipToHomeAnimator;->mPipContentOverlay:Lcom/android/wm/shell/pip/c;

    if-eqz p2, :cond_0

    iget-object v0, p0, Lcom/android/quickstep/util/SwipePipToHomeAnimator;->mCurrentBounds:Landroid/graphics/Rect;

    invoke-virtual {p2, p1, v0, p3}, Lcom/android/wm/shell/pip/c;->c(Landroid/view/SurfaceControl$Transaction;Landroid/graphics/Rect;F)V

    :cond_0
    iget-object p2, p0, Lcom/android/quickstep/util/SwipePipToHomeAnimator;->mSourceHintRectInsets:Landroid/graphics/Rect;

    if-nez p2, :cond_1

    iget-object p2, p0, Lcom/android/quickstep/util/SwipePipToHomeAnimator;->mCurrentBounds:Landroid/graphics/Rect;

    invoke-direct {p0, p3, p1, p2}, Lcom/android/quickstep/util/SwipePipToHomeAnimator;->onAnimationScale(FLandroid/view/SurfaceControl$Transaction;Landroid/graphics/Rect;)Landroid/window/PictureInPictureSurfaceTransaction;

    move-result-object p0

    goto :goto_0

    :cond_1
    iget-object p2, p0, Lcom/android/quickstep/util/SwipePipToHomeAnimator;->mCurrentBounds:Landroid/graphics/Rect;

    invoke-direct {p0, p3, p1, p2}, Lcom/android/quickstep/util/SwipePipToHomeAnimator;->onAnimationScaleAndCrop(FLandroid/view/SurfaceControl$Transaction;Landroid/graphics/Rect;)Landroid/window/PictureInPictureSurfaceTransaction;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method private onAnimationUpdate(Landroid/graphics/RectF;F)V
    .locals 3

    iget-boolean v0, p0, Lcom/android/quickstep/util/SwipePipToHomeAnimator;->mHasAnimationEnded:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/android/quickstep/util/SwipePipToHomeAnimator;->isLeashReleased()Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object p0, Lcom/android/quickstep/util/SwipePipToHomeAnimator;->TAG:Ljava/lang/String;

    const-string p1, "Leash was released so that the animation is skipped, please check log"

    invoke-static {p0, p1}, Ly2/e;->f(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_1
    invoke-static {}, Lcom/android/systemui/shared/pip/PipSurfaceTransactionHelper;->newSurfaceControlTransaction()Landroid/view/SurfaceControl$Transaction;

    move-result-object v0

    iget-object v1, p0, Lcom/android/quickstep/util/SwipePipToHomeAnimator;->mHomeToWindowPositionMap:Landroid/graphics/Matrix;

    iget-object v2, p0, Lcom/android/quickstep/util/SwipePipToHomeAnimator;->mCurrentBoundsF:Landroid/graphics/RectF;

    invoke-virtual {v1, v2, p1}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;Landroid/graphics/RectF;)Z

    iget-object p1, p0, Lcom/android/quickstep/util/SwipePipToHomeAnimator;->mCurrentBoundsF:Landroid/graphics/RectF;

    invoke-direct {p0, v0, p1, p2}, Lcom/android/quickstep/util/SwipePipToHomeAnimator;->onAnimationUpdate(Landroid/view/SurfaceControl$Transaction;Landroid/graphics/RectF;F)Landroid/window/PictureInPictureSurfaceTransaction;

    invoke-virtual {v0}, Landroid/view/SurfaceControl$Transaction;->apply()V

    return-void
.end method


# virtual methods
.method public getComponentName()Landroid/content/ComponentName;
    .locals 0

    iget-object p0, p0, Lcom/android/quickstep/util/SwipePipToHomeAnimator;->mActivityInfo:Landroid/content/pm/ActivityInfo;

    invoke-virtual {p0}, Landroid/content/pm/ActivityInfo;->getComponentName()Landroid/content/ComponentName;

    move-result-object p0

    return-object p0
.end method

.method public getContentOverlay()Landroid/view/SurfaceControl;
    .locals 0
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    iget-object p0, p0, Lcom/android/quickstep/util/SwipePipToHomeAnimator;->mPipContentOverlay:Lcom/android/wm/shell/pip/c;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/android/wm/shell/pip/c;->b()Landroid/view/SurfaceControl;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method public getDestinationBounds()Landroid/graphics/Rect;
    .locals 0

    iget-object p0, p0, Lcom/android/quickstep/util/SwipePipToHomeAnimator;->mDestinationBounds:Landroid/graphics/Rect;

    return-object p0
.end method

.method public getFinishTransaction()Landroid/window/PictureInPictureSurfaceTransaction;
    .locals 3

    invoke-static {}, Lcom/android/systemui/shared/pip/PipSurfaceTransactionHelper;->newSurfaceControlTransaction()Landroid/view/SurfaceControl$Transaction;

    move-result-object v0

    new-instance v1, Landroid/graphics/RectF;

    iget-object v2, p0, Lcom/android/quickstep/util/SwipePipToHomeAnimator;->mDestinationBounds:Landroid/graphics/Rect;

    invoke-direct {v1, v2}, Landroid/graphics/RectF;-><init>(Landroid/graphics/Rect;)V

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-direct {p0, v0, v1, v2}, Lcom/android/quickstep/util/SwipePipToHomeAnimator;->onAnimationUpdate(Landroid/view/SurfaceControl$Transaction;Landroid/graphics/RectF;F)Landroid/window/PictureInPictureSurfaceTransaction;

    move-result-object p0

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/window/PictureInPictureSurfaceTransaction;->setShouldDisableCanAffectSystemUiFlags(Z)V

    return-object p0
.end method

.method public getTaskId()I
    .locals 0

    iget p0, p0, Lcom/android/quickstep/util/SwipePipToHomeAnimator;->mTaskId:I

    return p0
.end method

.method public isLeashReleased()Z
    .locals 0

    iget-object p0, p0, Lcom/android/quickstep/util/SwipePipToHomeAnimator;->mLeash:Landroid/view/SurfaceControl;

    invoke-virtual {p0}, Landroid/view/SurfaceControl;->isValid()Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method
