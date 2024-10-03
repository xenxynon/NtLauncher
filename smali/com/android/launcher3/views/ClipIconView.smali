.class public Lcom/android/launcher3/views/ClipIconView;
.super Landroid/view/View;
.source "SourceFile"

# interfaces
.implements Lcom/android/launcher3/views/ClipPathView;


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x1d
.end annotation


# static fields
.field private static final sTmpRect:Landroid/graphics/Rect;


# instance fields
.field private mBackground:Landroid/graphics/drawable/Drawable;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private final mBlurSizeOutline:I

.field private mClipPath:Landroid/graphics/Path;

.field private final mEndRevealRect:Landroid/graphics/Rect;

.field private final mFinalDrawableBounds:Landroid/graphics/Rect;

.field private mForeground:Landroid/graphics/drawable/Drawable;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private mIsAdaptiveIcon:Z

.field private mIsFolderIcon:Z

.field private final mIsRtl:Z

.field private final mOutline:Landroid/graphics/Rect;

.field private mRevealAnimator:Landroid/animation/ValueAnimator;

.field private final mStartRevealRect:Landroid/graphics/Rect;

.field private mTaskCornerRadius:F


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    sput-object v0, Lcom/android/launcher3/views/ClipIconView;->sTmpRect:Landroid/graphics/Rect;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/launcher3/views/ClipIconView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/android/launcher3/views/ClipIconView;->mIsAdaptiveIcon:Z

    new-instance p2, Landroid/graphics/Rect;

    invoke-direct {p2}, Landroid/graphics/Rect;-><init>()V

    iput-object p2, p0, Lcom/android/launcher3/views/ClipIconView;->mStartRevealRect:Landroid/graphics/Rect;

    new-instance p2, Landroid/graphics/Rect;

    invoke-direct {p2}, Landroid/graphics/Rect;-><init>()V

    iput-object p2, p0, Lcom/android/launcher3/views/ClipIconView;->mEndRevealRect:Landroid/graphics/Rect;

    new-instance p2, Landroid/graphics/Rect;

    invoke-direct {p2}, Landroid/graphics/Rect;-><init>()V

    iput-object p2, p0, Lcom/android/launcher3/views/ClipIconView;->mOutline:Landroid/graphics/Rect;

    new-instance p2, Landroid/graphics/Rect;

    invoke-direct {p2}, Landroid/graphics/Rect;-><init>()V

    iput-object p2, p0, Lcom/android/launcher3/views/ClipIconView;->mFinalDrawableBounds:Landroid/graphics/Rect;

    iput-boolean p1, p0, Lcom/android/launcher3/views/ClipIconView;->mIsFolderIcon:Z

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f0700ad

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lcom/android/launcher3/views/ClipIconView;->mBlurSizeOutline:I

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-static {p1}, Lcom/android/launcher3/Utilities;->isRtl(Landroid/content/res/Resources;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/launcher3/views/ClipIconView;->mIsRtl:Z

    return-void
.end method

.method static synthetic access$002(Lcom/android/launcher3/views/ClipIconView;Landroid/animation/ValueAnimator;)Landroid/animation/ValueAnimator;
    .locals 0

    iput-object p1, p0, Lcom/android/launcher3/views/ClipIconView;->mRevealAnimator:Landroid/animation/ValueAnimator;

    return-object p1
.end method

.method static synthetic access$100(Lcom/android/launcher3/views/ClipIconView;)Landroid/graphics/Rect;
    .locals 0

    iget-object p0, p0, Lcom/android/launcher3/views/ClipIconView;->mOutline:Landroid/graphics/Rect;

    return-object p0
.end method

.method static synthetic access$200(Lcom/android/launcher3/views/ClipIconView;)F
    .locals 0

    iget p0, p0, Lcom/android/launcher3/views/ClipIconView;->mTaskCornerRadius:F

    return p0
.end method

.method private setBackgroundDrawableBounds(FZ)V
    .locals 2

    sget-object v0, Lcom/android/launcher3/views/ClipIconView;->sTmpRect:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/android/launcher3/views/ClipIconView;->mFinalDrawableBounds:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    invoke-static {v0, p1}, Lcom/android/launcher3/Utilities;->scaleRectAboutCenter(Landroid/graphics/Rect;F)V

    if-eqz p2, :cond_0

    iget-object p2, p0, Lcom/android/launcher3/views/ClipIconView;->mFinalDrawableBounds:Landroid/graphics/Rect;

    iget p2, p2, Landroid/graphics/Rect;->left:I

    int-to-float p2, p2

    mul-float/2addr p2, p1

    float-to-int p1, p2

    iget p2, v0, Landroid/graphics/Rect;->top:I

    invoke-virtual {v0, p1, p2}, Landroid/graphics/Rect;->offsetTo(II)V

    goto :goto_0

    :cond_0
    iget p2, v0, Landroid/graphics/Rect;->left:I

    iget-object v1, p0, Lcom/android/launcher3/views/ClipIconView;->mFinalDrawableBounds:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->top:I

    int-to-float v1, v1

    mul-float/2addr v1, p1

    float-to-int p1, v1

    invoke-virtual {v0, p2, p1}, Landroid/graphics/Rect;->offsetTo(II)V

    :goto_0
    iget-object p0, p0, Lcom/android/launcher3/views/ClipIconView;->mBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, v0}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    return-void
.end method

.method private update(Landroid/graphics/RectF;FFFZFFLcom/android/launcher3/DeviceProfile;)V
    .locals 11

    move-object v0, p0

    move v1, p2

    move v8, p3

    move-object/from16 v9, p8

    const/high16 v10, 0x3f800000    # 1.0f

    if-eqz p5, :cond_0

    const/high16 v2, 0x41200000    # 10.0f

    move v6, v2

    goto :goto_0

    :cond_0
    move v6, v10

    :goto_0
    invoke-static {p3, p2}, Ljava/lang/Math;->max(FF)F

    move-result v2

    const/high16 v4, 0x3f800000    # 1.0f

    const/4 v5, 0x0

    sget-object v7, Lcom/android/launcher3/anim/Interpolators;->LINEAR:Landroid/view/animation/Interpolator;

    move v3, p3

    invoke-static/range {v2 .. v7}, Lcom/android/launcher3/Utilities;->mapToRange(FFFFFLandroid/view/animation/Interpolator;)F

    move-result v2

    const/4 v3, 0x0

    invoke-static {v2, v3, v10}, Lcom/android/launcher3/Utilities;->boundToRange(FFF)F

    move-result v2

    iget-boolean v3, v9, Lcom/android/launcher3/DeviceProfile;->isLandscape:Z

    if-eqz v3, :cond_1

    iget-object v3, v0, Lcom/android/launcher3/views/ClipIconView;->mOutline:Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/graphics/RectF;->width()F

    move-result v4

    div-float v4, v4, p6

    float-to-int v4, v4

    iput v4, v3, Landroid/graphics/Rect;->right:I

    goto :goto_1

    :cond_1
    iget-object v3, v0, Lcom/android/launcher3/views/ClipIconView;->mOutline:Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/graphics/RectF;->height()F

    move-result v4

    div-float v4, v4, p6

    float-to-int v4, v4

    iput v4, v3, Landroid/graphics/Rect;->bottom:I

    :goto_1
    div-float v3, p4, p6

    iput v3, v0, Lcom/android/launcher3/views/ClipIconView;->mTaskCornerRadius:F

    iget-boolean v3, v0, Lcom/android/launcher3/views/ClipIconView;->mIsAdaptiveIcon:Z

    if-eqz v3, :cond_7

    if-nez p5, :cond_3

    cmpl-float v1, v1, v8

    if-ltz v1, :cond_3

    iget-object v1, v0, Lcom/android/launcher3/views/ClipIconView;->mRevealAnimator:Landroid/animation/ValueAnimator;

    if-nez v1, :cond_2

    iget-boolean v1, v0, Lcom/android/launcher3/views/ClipIconView;->mIsFolderIcon:Z

    invoke-static {v1}, Lcom/android/launcher3/graphics/IconShape;->getShape(I)Lcom/android/launcher3/graphics/IconShape;

    move-result-object v1

    iget-object v3, v0, Lcom/android/launcher3/views/ClipIconView;->mStartRevealRect:Landroid/graphics/Rect;

    iget-object v4, v0, Lcom/android/launcher3/views/ClipIconView;->mOutline:Landroid/graphics/Rect;

    iget v5, v0, Lcom/android/launcher3/views/ClipIconView;->mTaskCornerRadius:F

    const/4 v6, 0x1

    move-object p1, v1

    move-object p2, p0

    move-object p3, v3

    move-object p4, v4

    move/from16 p5, v5

    move/from16 p6, v6

    invoke-virtual/range {p1 .. p6}, Lcom/android/launcher3/graphics/IconShape;->createRevealAnimator(Landroid/view/View;Landroid/graphics/Rect;Landroid/graphics/Rect;FZ)Landroid/animation/Animator;

    move-result-object v1

    check-cast v1, Landroid/animation/ValueAnimator;

    iput-object v1, v0, Lcom/android/launcher3/views/ClipIconView;->mRevealAnimator:Landroid/animation/ValueAnimator;

    new-instance v3, Lcom/android/launcher3/views/ClipIconView$1;

    invoke-direct {v3, p0}, Lcom/android/launcher3/views/ClipIconView$1;-><init>(Lcom/android/launcher3/views/ClipIconView;)V

    invoke-virtual {v1, v3}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    iget-object v1, v0, Lcom/android/launcher3/views/ClipIconView;->mRevealAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->start()V

    iget-object v1, v0, Lcom/android/launcher3/views/ClipIconView;->mRevealAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->pause()V

    :cond_2
    iget-object v1, v0, Lcom/android/launcher3/views/ClipIconView;->mRevealAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->setCurrentFraction(F)V

    :cond_3
    iget-boolean v1, v9, Lcom/android/launcher3/DeviceProfile;->isLandscape:Z

    if-eqz v1, :cond_4

    iget-object v1, v0, Lcom/android/launcher3/views/ClipIconView;->mOutline:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v1

    goto :goto_2

    :cond_4
    iget-object v1, v0, Lcom/android/launcher3/views/ClipIconView;->mOutline:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v1

    :goto_2
    int-to-float v1, v1

    div-float v1, v1, p7

    iget-boolean v2, v9, Lcom/android/launcher3/DeviceProfile;->isLandscape:Z

    invoke-direct {p0, v1, v2}, Lcom/android/launcher3/views/ClipIconView;->setBackgroundDrawableBounds(FZ)V

    iget-object v2, v0, Lcom/android/launcher3/views/ClipIconView;->mFinalDrawableBounds:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v2

    iget-object v3, v0, Lcom/android/launcher3/views/ClipIconView;->mFinalDrawableBounds:Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    move-result v3

    iget-boolean v4, v9, Lcom/android/launcher3/DeviceProfile;->isLandscape:Z

    const/4 v5, 0x0

    const/high16 v6, 0x40000000    # 2.0f

    if-eqz v4, :cond_5

    move v2, v5

    goto :goto_3

    :cond_5
    int-to-float v2, v2

    mul-float v7, v2, v1

    sub-float/2addr v7, v2

    div-float/2addr v7, v6

    float-to-int v2, v7

    :goto_3
    if-eqz v4, :cond_6

    int-to-float v3, v3

    mul-float/2addr v1, v3

    sub-float/2addr v1, v3

    div-float/2addr v1, v6

    float-to-int v5, v1

    :cond_6
    sget-object v1, Lcom/android/launcher3/views/ClipIconView;->sTmpRect:Landroid/graphics/Rect;

    iget-object v3, v0, Lcom/android/launcher3/views/ClipIconView;->mFinalDrawableBounds:Landroid/graphics/Rect;

    invoke-virtual {v1, v3}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    invoke-virtual {v1, v5, v2}, Landroid/graphics/Rect;->offset(II)V

    iget-object v2, v0, Lcom/android/launcher3/views/ClipIconView;->mForeground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2, v1}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    :cond_7
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    invoke-virtual {p0}, Landroid/view/View;->invalidateOutline()V

    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 2

    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v0

    iget-object v1, p0, Lcom/android/launcher3/views/ClipIconView;->mClipPath:Landroid/graphics/Path;

    if-eqz v1, :cond_0

    invoke-virtual {p1, v1}, Landroid/graphics/Canvas;->clipPath(Landroid/graphics/Path;)Z

    :cond_0
    invoke-super {p0, p1}, Landroid/view/View;->draw(Landroid/graphics/Canvas;)V

    iget-object v1, p0, Lcom/android/launcher3/views/ClipIconView;->mBackground:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_1

    invoke-virtual {v1, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    :cond_1
    iget-object p0, p0, Lcom/android/launcher3/views/ClipIconView;->mForeground:Landroid/graphics/drawable/Drawable;

    if-eqz p0, :cond_2

    invoke-virtual {p0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    :cond_2
    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->restoreToCount(I)V

    return-void
.end method

.method protected endReveal()V
    .locals 0

    iget-object p0, p0, Lcom/android/launcher3/views/ClipIconView;->mRevealAnimator:Landroid/animation/ValueAnimator;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->end()V

    :cond_0
    return-void
.end method

.method recycle()V
    .locals 2

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/launcher3/views/ClipIconView;->mIsAdaptiveIcon:Z

    iput-object v0, p0, Lcom/android/launcher3/views/ClipIconView;->mForeground:Landroid/graphics/drawable/Drawable;

    iput-object v0, p0, Lcom/android/launcher3/views/ClipIconView;->mBackground:Landroid/graphics/drawable/Drawable;

    iput-object v0, p0, Lcom/android/launcher3/views/ClipIconView;->mClipPath:Landroid/graphics/Path;

    iget-object v1, p0, Lcom/android/launcher3/views/ClipIconView;->mFinalDrawableBounds:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->setEmpty()V

    iget-object v1, p0, Lcom/android/launcher3/views/ClipIconView;->mRevealAnimator:Landroid/animation/ValueAnimator;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_0
    iput-object v0, p0, Lcom/android/launcher3/views/ClipIconView;->mRevealAnimator:Landroid/animation/ValueAnimator;

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/launcher3/views/ClipIconView;->mTaskCornerRadius:F

    iget-object p0, p0, Lcom/android/launcher3/views/ClipIconView;->mOutline:Landroid/graphics/Rect;

    invoke-virtual {p0}, Landroid/graphics/Rect;->setEmpty()V

    return-void
.end method

.method public setClipPath(Landroid/graphics/Path;)V
    .locals 0

    iput-object p1, p0, Lcom/android/launcher3/views/ClipIconView;->mClipPath:Landroid/graphics/Path;

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public setIcon(Landroid/graphics/drawable/Drawable;ILandroid/view/ViewGroup$MarginLayoutParams;ZLcom/android/launcher3/DeviceProfile;)V
    .locals 5
    .param p1    # Landroid/graphics/drawable/Drawable;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    instance-of v0, p1, Landroid/graphics/drawable/AdaptiveIconDrawable;

    iput-boolean v0, p0, Lcom/android/launcher3/views/ClipIconView;->mIsAdaptiveIcon:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_7

    instance-of v0, p1, Lcom/android/launcher3/dragndrop/FolderAdaptiveIcon;

    iput-boolean v0, p0, Lcom/android/launcher3/views/ClipIconView;->mIsFolderIcon:Z

    check-cast p1, Landroid/graphics/drawable/AdaptiveIconDrawable;

    invoke-virtual {p1}, Landroid/graphics/drawable/AdaptiveIconDrawable;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    if-nez v2, :cond_0

    new-instance v2, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v2, v1}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    :cond_0
    iput-object v2, p0, Lcom/android/launcher3/views/ClipIconView;->mBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p1}, Landroid/graphics/drawable/AdaptiveIconDrawable;->getForeground()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    if-nez p1, :cond_1

    new-instance p1, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {p1, v1}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    :cond_1
    iput-object p1, p0, Lcom/android/launcher3/views/ClipIconView;->mForeground:Landroid/graphics/drawable/Drawable;

    iget p1, p3, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    iget v2, p3, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    iget v3, p0, Lcom/android/launcher3/views/ClipIconView;->mBlurSizeOutline:I

    div-int/lit8 v3, v3, 0x2

    iget-object v4, p0, Lcom/android/launcher3/views/ClipIconView;->mFinalDrawableBounds:Landroid/graphics/Rect;

    invoke-virtual {v4, v1, v1, v2, p1}, Landroid/graphics/Rect;->set(IIII)V

    if-nez v0, :cond_2

    iget-object v4, p0, Lcom/android/launcher3/views/ClipIconView;->mFinalDrawableBounds:Landroid/graphics/Rect;

    sub-int/2addr p2, v3

    invoke-virtual {v4, p2, p2}, Landroid/graphics/Rect;->inset(II)V

    :cond_2
    iget-object p2, p0, Lcom/android/launcher3/views/ClipIconView;->mForeground:Landroid/graphics/drawable/Drawable;

    iget-object v3, p0, Lcom/android/launcher3/views/ClipIconView;->mFinalDrawableBounds:Landroid/graphics/Rect;

    invoke-virtual {p2, v3}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    iget-object p2, p0, Lcom/android/launcher3/views/ClipIconView;->mBackground:Landroid/graphics/drawable/Drawable;

    iget-object v3, p0, Lcom/android/launcher3/views/ClipIconView;->mFinalDrawableBounds:Landroid/graphics/Rect;

    invoke-virtual {p2, v3}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    iget-object p2, p0, Lcom/android/launcher3/views/ClipIconView;->mStartRevealRect:Landroid/graphics/Rect;

    invoke-virtual {p2, v1, v1, v2, p1}, Landroid/graphics/Rect;->set(IIII)V

    if-nez v0, :cond_3

    iget-object p2, p0, Lcom/android/launcher3/views/ClipIconView;->mStartRevealRect:Landroid/graphics/Rect;

    invoke-static {}, Lcom/android/launcher3/graphics/IconShape;->getNormalizationScale()F

    move-result v0

    invoke-static {p2, v0}, Lcom/android/launcher3/Utilities;->scaleRectAboutCenter(Landroid/graphics/Rect;F)V

    :cond_3
    iget-boolean p2, p5, Lcom/android/launcher3/DeviceProfile;->isLandscape:Z

    if-eqz p2, :cond_4

    iget p2, p3, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    int-to-float p2, p2

    iget v0, p3, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    int-to-float v0, v0

    iget v3, p5, Lcom/android/launcher3/DeviceProfile;->aspectRatio:F

    mul-float/2addr v0, v3

    invoke-static {p2, v0}, Ljava/lang/Math;->max(FF)F

    move-result p2

    float-to-int p2, p2

    iput p2, p3, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    goto :goto_0

    :cond_4
    iget p2, p3, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    int-to-float p2, p2

    iget v0, p3, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    int-to-float v0, v0

    iget v3, p5, Lcom/android/launcher3/DeviceProfile;->aspectRatio:F

    mul-float/2addr v0, v3

    invoke-static {p2, v0}, Ljava/lang/Math;->max(FF)F

    move-result p2

    float-to-int p2, p2

    iput p2, p3, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    :goto_0
    iget-boolean p2, p0, Lcom/android/launcher3/views/ClipIconView;->mIsRtl:Z

    if-eqz p2, :cond_5

    iget p2, p5, Lcom/android/launcher3/DeviceProfile;->widthPx:I

    invoke-virtual {p3}, Landroid/view/ViewGroup$MarginLayoutParams;->getMarginStart()I

    move-result v0

    sub-int/2addr p2, v0

    iget v0, p3, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    sub-int/2addr p2, v0

    goto :goto_1

    :cond_5
    iget p2, p3, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    :goto_1
    iget v0, p3, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    iget v3, p3, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    add-int/2addr v3, p2

    iget v4, p3, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    add-int/2addr v4, v0

    invoke-virtual {p0, p2, v0, v3, v4}, Landroid/view/View;->layout(IIII)V

    iget p2, p3, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    int-to-float p2, p2

    int-to-float v0, p1

    div-float/2addr p2, v0

    iget v0, p3, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    int-to-float v0, v0

    int-to-float v3, v2

    div-float/2addr v0, v3

    invoke-static {p2, v0}, Ljava/lang/Math;->max(FF)F

    move-result p2

    if-eqz p4, :cond_6

    const/high16 p2, 0x3f800000    # 1.0f

    iget-object p4, p0, Lcom/android/launcher3/views/ClipIconView;->mOutline:Landroid/graphics/Rect;

    invoke-virtual {p4, v1, v1, v2, p1}, Landroid/graphics/Rect;->set(IIII)V

    goto :goto_2

    :cond_6
    iget-object p1, p0, Lcom/android/launcher3/views/ClipIconView;->mOutline:Landroid/graphics/Rect;

    iget p4, p3, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    iget v0, p3, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    invoke-virtual {p1, v1, v1, p4, v0}, Landroid/graphics/Rect;->set(IIII)V

    :goto_2
    iget-boolean p1, p5, Lcom/android/launcher3/DeviceProfile;->isLandscape:Z

    invoke-direct {p0, p2, p1}, Lcom/android/launcher3/views/ClipIconView;->setBackgroundDrawableBounds(FZ)V

    iget-object p1, p0, Lcom/android/launcher3/views/ClipIconView;->mEndRevealRect:Landroid/graphics/Rect;

    iget p2, p3, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    iget p3, p3, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    invoke-virtual {p1, v1, v1, p2, p3}, Landroid/graphics/Rect;->set(IIII)V

    new-instance p1, Lcom/android/launcher3/views/ClipIconView$2;

    invoke-direct {p1, p0}, Lcom/android/launcher3/views/ClipIconView$2;-><init>(Lcom/android/launcher3/views/ClipIconView;)V

    invoke-virtual {p0, p1}, Landroid/view/View;->setOutlineProvider(Landroid/view/ViewOutlineProvider;)V

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Landroid/view/View;->setClipToOutline(Z)V

    goto :goto_3

    :cond_7
    invoke-virtual {p0, p1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {p0, v1}, Landroid/view/View;->setClipToOutline(Z)V

    :goto_3
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    invoke-virtual {p0}, Landroid/view/View;->invalidateOutline()V

    return-void
.end method

.method public update(Landroid/graphics/RectF;FFFZLandroid/view/View;Lcom/android/launcher3/DeviceProfile;)V
    .locals 11

    move-object v1, p1

    move-object/from16 v9, p6

    invoke-virtual/range {p6 .. p6}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    move-object v2, p0

    iget-boolean v3, v2, Lcom/android/launcher3/views/ClipIconView;->mIsRtl:Z

    if-eqz v3, :cond_0

    iget v3, v1, Landroid/graphics/RectF;->left:F

    move-object/from16 v8, p7

    iget v4, v8, Lcom/android/launcher3/DeviceProfile;->widthPx:I

    invoke-virtual {v0}, Landroid/view/ViewGroup$MarginLayoutParams;->getMarginStart()I

    move-result v5

    sub-int/2addr v4, v5

    iget v5, v0, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    sub-int/2addr v4, v5

    goto :goto_0

    :cond_0
    move-object/from16 v8, p7

    iget v3, v1, Landroid/graphics/RectF;->left:F

    invoke-virtual {v0}, Landroid/view/ViewGroup$MarginLayoutParams;->getMarginStart()I

    move-result v4

    :goto_0
    int-to-float v4, v4

    sub-float/2addr v3, v4

    iget v4, v1, Landroid/graphics/RectF;->top:F

    iget v5, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    int-to-float v5, v5

    sub-float/2addr v4, v5

    invoke-virtual {v9, v3}, Landroid/view/View;->setTranslationX(F)V

    invoke-virtual {v9, v4}, Landroid/view/View;->setTranslationY(F)V

    iget v3, v0, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    iget v0, v0, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    invoke-static {v3, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    int-to-float v7, v0

    invoke-virtual {p1}, Landroid/graphics/RectF;->width()F

    move-result v0

    div-float/2addr v0, v7

    invoke-virtual {p1}, Landroid/graphics/RectF;->height()F

    move-result v3

    div-float/2addr v3, v7

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-static {v0, v3}, Ljava/lang/Math;->min(FF)F

    move-result v0

    invoke-static {v4, v0}, Ljava/lang/Math;->max(FF)F

    move-result v10

    invoke-static {v10}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-nez v0, :cond_2

    invoke-static {v10}, Ljava/lang/Math;->abs(F)F

    move-result v0

    const v3, 0x7f7fffff    # Float.MAX_VALUE

    cmpl-float v0, v0, v3

    if-ltz v0, :cond_1

    goto :goto_1

    :cond_1
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move/from16 v5, p5

    move v6, v10

    move-object/from16 v8, p7

    invoke-direct/range {v0 .. v8}, Lcom/android/launcher3/views/ClipIconView;->update(Landroid/graphics/RectF;FFFZFFLcom/android/launcher3/DeviceProfile;)V

    const/4 v0, 0x0

    invoke-virtual {v9, v0}, Landroid/view/View;->setPivotX(F)V

    invoke-virtual {v9, v0}, Landroid/view/View;->setPivotY(F)V

    invoke-virtual {v9, v10}, Landroid/view/View;->setScaleX(F)V

    invoke-virtual {v9, v10}, Landroid/view/View;->setScaleY(F)V

    invoke-virtual/range {p6 .. p6}, Landroid/view/View;->invalidate()V

    return-void

    :cond_2
    :goto_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ClipIconView.update: Views are no longer laid out, do not update "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ly2/e;->n(Ljava/lang/String;)V

    return-void
.end method
