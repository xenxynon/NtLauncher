.class public Lcom/android/launcher3/widget/WidgetImageView;
.super Landroid/view/View;
.source "SourceFile"


# instance fields
.field private final mBadgeMargin:I

.field private mDrawable:Landroid/graphics/drawable/Drawable;

.field private final mDstRectF:Landroid/graphics/RectF;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/launcher3/widget/WidgetImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    new-instance p2, Landroid/graphics/RectF;

    invoke-direct {p2}, Landroid/graphics/RectF;-><init>()V

    iput-object p2, p0, Lcom/android/launcher3/widget/WidgetImageView;->mDstRectF:Landroid/graphics/RectF;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f0704bc

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lcom/android/launcher3/widget/WidgetImageView;->mBadgeMargin:I

    return-void
.end method

.method private updateDstRectF()V
    .locals 7

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v1

    int-to-float v1, v1

    iget-object v2, p0, Lcom/android/launcher3/widget/WidgetImageView;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v2

    int-to-float v2, v2

    iget-object v3, p0, Lcom/android/launcher3/widget/WidgetImageView;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v3

    int-to-float v3, v3

    cmpl-float v4, v2, v0

    const/high16 v5, 0x3f800000    # 1.0f

    if-lez v4, :cond_0

    div-float v4, v0, v2

    goto :goto_0

    :cond_0
    move v4, v5

    :goto_0
    cmpl-float v6, v3, v1

    if-lez v6, :cond_1

    div-float v5, v1, v3

    :cond_1
    invoke-static {v5, v4}, Ljava/lang/Math;->min(FF)F

    move-result v4

    mul-float/2addr v2, v4

    mul-float/2addr v3, v4

    iget-object p0, p0, Lcom/android/launcher3/widget/WidgetImageView;->mDstRectF:Landroid/graphics/RectF;

    sub-float v4, v0, v2

    const/high16 v5, 0x40000000    # 2.0f

    div-float/2addr v4, v5

    iput v4, p0, Landroid/graphics/RectF;->left:F

    add-float/2addr v0, v2

    div-float/2addr v0, v5

    iput v0, p0, Landroid/graphics/RectF;->right:F

    cmpl-float v0, v3, v1

    if-lez v0, :cond_2

    const/4 v0, 0x0

    iput v0, p0, Landroid/graphics/RectF;->top:F

    goto :goto_1

    :cond_2
    sub-float v0, v1, v3

    div-float/2addr v0, v5

    iput v0, p0, Landroid/graphics/RectF;->top:F

    add-float/2addr v1, v3

    div-float/2addr v1, v5

    :goto_1
    iput v1, p0, Landroid/graphics/RectF;->bottom:F

    return-void
.end method


# virtual methods
.method public getBitmapBounds()Landroid/graphics/Rect;
    .locals 1

    invoke-direct {p0}, Lcom/android/launcher3/widget/WidgetImageView;->updateDstRectF()V

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iget-object p0, p0, Lcom/android/launcher3/widget/WidgetImageView;->mDstRectF:Landroid/graphics/RectF;

    invoke-virtual {p0, v0}, Landroid/graphics/RectF;->round(Landroid/graphics/Rect;)V

    return-object v0
.end method

.method public getDrawable()Landroid/graphics/drawable/Drawable;
    .locals 0

    iget-object p0, p0, Lcom/android/launcher3/widget/WidgetImageView;->mDrawable:Landroid/graphics/drawable/Drawable;

    return-object p0
.end method

.method public hasOverlappingRendering()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 2

    iget-object v0, p0, Lcom/android/launcher3/widget/WidgetImageView;->mDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/android/launcher3/widget/WidgetImageView;->updateDstRectF()V

    iget-object v0, p0, Lcom/android/launcher3/widget/WidgetImageView;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Lcom/android/launcher3/widget/WidgetImageView;->getBitmapBounds()Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    iget-object p0, p0, Lcom/android/launcher3/widget/WidgetImageView;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    :cond_0
    return-void
.end method

.method public setDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    iput-object p1, p0, Lcom/android/launcher3/widget/WidgetImageView;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method
