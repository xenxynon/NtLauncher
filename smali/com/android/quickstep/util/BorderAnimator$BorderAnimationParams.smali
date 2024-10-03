.class abstract Lcom/android/quickstep/util/BorderAnimator$BorderAnimationParams;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/quickstep/util/BorderAnimator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x40a
    name = "BorderAnimationParams"
.end annotation


# instance fields
.field private mAnimationProgress:F

.field private final mBorderBounds:Landroid/graphics/Rect;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field final mBorderWidthPx:I
    .annotation build Landroidx/annotation/Px;
    .end annotation
.end field

.field private final mBoundsBuilder:Lcom/android/quickstep/util/BorderAnimator$BorderBoundsBuilder;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field private mLayoutChangeListener:Landroid/view/View$OnLayoutChangeListener;

.field final mTargetView:Landroid/view/View;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field


# direct methods
.method private constructor <init>(ILcom/android/quickstep/util/BorderAnimator$BorderBoundsBuilder;Landroid/view/View;)V
    .locals 1
    .param p1    # I
        .annotation build Landroidx/annotation/Px;
        .end annotation
    .end param
    .param p2    # Lcom/android/quickstep/util/BorderAnimator$BorderBoundsBuilder;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/quickstep/util/BorderAnimator$BorderAnimationParams;->mBorderBounds:Landroid/graphics/Rect;

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/quickstep/util/BorderAnimator$BorderAnimationParams;->mAnimationProgress:F

    iput p1, p0, Lcom/android/quickstep/util/BorderAnimator$BorderAnimationParams;->mBorderWidthPx:I

    iput-object p2, p0, Lcom/android/quickstep/util/BorderAnimator$BorderAnimationParams;->mBoundsBuilder:Lcom/android/quickstep/util/BorderAnimator$BorderBoundsBuilder;

    iput-object p3, p0, Lcom/android/quickstep/util/BorderAnimator$BorderAnimationParams;->mTargetView:Landroid/view/View;

    return-void
.end method

.method synthetic constructor <init>(ILcom/android/quickstep/util/BorderAnimator$BorderBoundsBuilder;Landroid/view/View;Lcom/android/quickstep/util/BorderAnimator$1;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/android/quickstep/util/BorderAnimator$BorderAnimationParams;-><init>(ILcom/android/quickstep/util/BorderAnimator$BorderBoundsBuilder;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic a(Lcom/android/quickstep/util/BorderAnimator$BorderAnimationParams;Landroid/view/View;IIIIIIII)V
    .locals 0

    invoke-direct/range {p0 .. p9}, Lcom/android/quickstep/util/BorderAnimator$BorderAnimationParams;->lambda$onShowBorder$0(Landroid/view/View;IIIIIIII)V

    return-void
.end method

.method static synthetic access$000(Lcom/android/quickstep/util/BorderAnimator$BorderAnimationParams;F)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/quickstep/util/BorderAnimator$BorderAnimationParams;->setProgress(F)V

    return-void
.end method

.method static synthetic access$100(Lcom/android/quickstep/util/BorderAnimator$BorderAnimationParams;)F
    .locals 0

    invoke-direct {p0}, Lcom/android/quickstep/util/BorderAnimator$BorderAnimationParams;->getBorderWidth()F

    move-result p0

    return p0
.end method

.method static synthetic access$200(Lcom/android/quickstep/util/BorderAnimator$BorderAnimationParams;)Landroid/graphics/Rect;
    .locals 0

    iget-object p0, p0, Lcom/android/quickstep/util/BorderAnimator$BorderAnimationParams;->mBorderBounds:Landroid/graphics/Rect;

    return-object p0
.end method

.method private getBorderWidth()F
    .locals 1

    iget v0, p0, Lcom/android/quickstep/util/BorderAnimator$BorderAnimationParams;->mBorderWidthPx:I

    int-to-float v0, v0

    iget p0, p0, Lcom/android/quickstep/util/BorderAnimator$BorderAnimationParams;->mAnimationProgress:F

    mul-float/2addr v0, p0

    return v0
.end method

.method private synthetic lambda$onShowBorder$0(Landroid/view/View;IIIIIIII)V
    .locals 0

    invoke-virtual {p0}, Lcom/android/quickstep/util/BorderAnimator$BorderAnimationParams;->onShowBorder()V

    iget-object p0, p0, Lcom/android/quickstep/util/BorderAnimator$BorderAnimationParams;->mTargetView:Landroid/view/View;

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method private setProgress(F)V
    .locals 0

    iput p1, p0, Lcom/android/quickstep/util/BorderAnimator$BorderAnimationParams;->mAnimationProgress:F

    return-void
.end method


# virtual methods
.method getAlignmentAdjustment()F
    .locals 2

    invoke-direct {p0}, Lcom/android/quickstep/util/BorderAnimator$BorderAnimationParams;->getBorderWidth()F

    move-result v0

    neg-float v0, v0

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v0, v1

    invoke-virtual {p0}, Lcom/android/quickstep/util/BorderAnimator$BorderAnimationParams;->getAlignmentAdjustmentInset()I

    move-result p0

    int-to-float p0, p0

    add-float/2addr v0, p0

    return v0
.end method

.method abstract getAlignmentAdjustmentInset()I
.end method

.method abstract getRadiusAdjustment()F
.end method

.method onHideBorder()V
    .locals 2

    iget-object v0, p0, Lcom/android/quickstep/util/BorderAnimator$BorderAnimationParams;->mLayoutChangeListener:Landroid/view/View$OnLayoutChangeListener;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/android/quickstep/util/BorderAnimator$BorderAnimationParams;->mTargetView:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->removeOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/quickstep/util/BorderAnimator$BorderAnimationParams;->mLayoutChangeListener:Landroid/view/View$OnLayoutChangeListener;

    :cond_0
    return-void
.end method

.method onShowBorder()V
    .locals 2

    iget-object v0, p0, Lcom/android/quickstep/util/BorderAnimator$BorderAnimationParams;->mLayoutChangeListener:Landroid/view/View$OnLayoutChangeListener;

    if-nez v0, :cond_0

    new-instance v0, Lcom/android/quickstep/util/l;

    invoke-direct {v0, p0}, Lcom/android/quickstep/util/l;-><init>(Lcom/android/quickstep/util/BorderAnimator$BorderAnimationParams;)V

    iput-object v0, p0, Lcom/android/quickstep/util/BorderAnimator$BorderAnimationParams;->mLayoutChangeListener:Landroid/view/View$OnLayoutChangeListener;

    iget-object v1, p0, Lcom/android/quickstep/util/BorderAnimator$BorderAnimationParams;->mTargetView:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    :cond_0
    iget-object v0, p0, Lcom/android/quickstep/util/BorderAnimator$BorderAnimationParams;->mBoundsBuilder:Lcom/android/quickstep/util/BorderAnimator$BorderBoundsBuilder;

    iget-object p0, p0, Lcom/android/quickstep/util/BorderAnimator$BorderAnimationParams;->mBorderBounds:Landroid/graphics/Rect;

    invoke-interface {v0, p0}, Lcom/android/quickstep/util/BorderAnimator$BorderBoundsBuilder;->updateBorderBounds(Landroid/graphics/Rect;)V

    return-void
.end method
