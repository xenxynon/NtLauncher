.class Lcom/android/launcher3/icons/ClockDrawableWrapper$ClockIconDrawable;
.super Lcom/android/launcher3/icons/FastBitmapDrawable;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher3/icons/ClockDrawableWrapper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ClockIconDrawable"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/launcher3/icons/ClockDrawableWrapper$ClockIconDrawable$ClockConstantState;
    }
.end annotation


# instance fields
.field private final mAnimInfo:Lcom/android/launcher3/icons/ClockDrawableWrapper$AnimationInfo;

.field private final mBG:Landroid/graphics/Bitmap;

.field private final mBgFilter:Landroid/graphics/ColorFilter;

.field private final mBgPaint:Landroid/graphics/Paint;

.field private final mBoundsOffset:F

.field private final mCanvasScale:F

.field private final mFG:Landroid/graphics/drawable/LayerDrawable;

.field private final mFullDrawable:Landroid/graphics/drawable/AdaptiveIconDrawable;

.field private final mThemedFgColor:I

.field private final mTime:Ljava/util/Calendar;


# direct methods
.method constructor <init>(Lcom/android/launcher3/icons/ClockDrawableWrapper$ClockIconDrawable$ClockConstantState;)V
    .locals 5

    iget-object v0, p1, Lcom/android/launcher3/icons/FastBitmapDrawable$FastBitmapConstantState;->mBitmap:Landroid/graphics/Bitmap;

    iget v1, p1, Lcom/android/launcher3/icons/FastBitmapDrawable$FastBitmapConstantState;->mIconColor:I

    invoke-direct {p0, v0, v1}, Lcom/android/launcher3/icons/FastBitmapDrawable;-><init>(Landroid/graphics/Bitmap;I)V

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher3/icons/ClockDrawableWrapper$ClockIconDrawable;->mTime:Ljava/util/Calendar;

    new-instance v1, Landroid/graphics/Paint;

    const/4 v2, 0x3

    invoke-direct {v1, v2}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v1, p0, Lcom/android/launcher3/icons/ClockDrawableWrapper$ClockIconDrawable;->mBgPaint:Landroid/graphics/Paint;

    invoke-static {p1}, Lcom/android/launcher3/icons/ClockDrawableWrapper$ClockIconDrawable$ClockConstantState;->access$100(Lcom/android/launcher3/icons/ClockDrawableWrapper$ClockIconDrawable$ClockConstantState;)F

    move-result v2

    iput v2, p0, Lcom/android/launcher3/icons/ClockDrawableWrapper$ClockIconDrawable;->mBoundsOffset:F

    invoke-static {p1}, Lcom/android/launcher3/icons/ClockDrawableWrapper$ClockIconDrawable$ClockConstantState;->access$200(Lcom/android/launcher3/icons/ClockDrawableWrapper$ClockIconDrawable$ClockConstantState;)Lcom/android/launcher3/icons/ClockDrawableWrapper$AnimationInfo;

    move-result-object v3

    iput-object v3, p0, Lcom/android/launcher3/icons/ClockDrawableWrapper$ClockIconDrawable;->mAnimInfo:Lcom/android/launcher3/icons/ClockDrawableWrapper$AnimationInfo;

    invoke-static {p1}, Lcom/android/launcher3/icons/ClockDrawableWrapper$ClockIconDrawable$ClockConstantState;->access$300(Lcom/android/launcher3/icons/ClockDrawableWrapper$ClockIconDrawable$ClockConstantState;)Landroid/graphics/Bitmap;

    move-result-object v4

    iput-object v4, p0, Lcom/android/launcher3/icons/ClockDrawableWrapper$ClockIconDrawable;->mBG:Landroid/graphics/Bitmap;

    invoke-static {p1}, Lcom/android/launcher3/icons/ClockDrawableWrapper$ClockIconDrawable$ClockConstantState;->access$400(Lcom/android/launcher3/icons/ClockDrawableWrapper$ClockIconDrawable$ClockConstantState;)Landroid/graphics/ColorFilter;

    move-result-object v4

    iput-object v4, p0, Lcom/android/launcher3/icons/ClockDrawableWrapper$ClockIconDrawable;->mBgFilter:Landroid/graphics/ColorFilter;

    invoke-static {p1}, Lcom/android/launcher3/icons/ClockDrawableWrapper$ClockIconDrawable$ClockConstantState;->access$400(Lcom/android/launcher3/icons/ClockDrawableWrapper$ClockIconDrawable$ClockConstantState;)Landroid/graphics/ColorFilter;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    invoke-static {p1}, Lcom/android/launcher3/icons/ClockDrawableWrapper$ClockIconDrawable$ClockConstantState;->access$500(Lcom/android/launcher3/icons/ClockDrawableWrapper$ClockIconDrawable$ClockConstantState;)I

    move-result p1

    iput p1, p0, Lcom/android/launcher3/icons/ClockDrawableWrapper$ClockIconDrawable;->mThemedFgColor:I

    iget-object p1, v3, Lcom/android/launcher3/icons/ClockDrawableWrapper$AnimationInfo;->baseDrawableState:Landroid/graphics/drawable/Drawable$ConstantState;

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable$ConstantState;->newDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    check-cast p1, Landroid/graphics/drawable/AdaptiveIconDrawable;

    iput-object p1, p0, Lcom/android/launcher3/icons/ClockDrawableWrapper$ClockIconDrawable;->mFullDrawable:Landroid/graphics/drawable/AdaptiveIconDrawable;

    invoke-virtual {p1}, Landroid/graphics/drawable/AdaptiveIconDrawable;->getForeground()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    check-cast p1, Landroid/graphics/drawable/LayerDrawable;

    iput-object p1, p0, Lcom/android/launcher3/icons/ClockDrawableWrapper$ClockIconDrawable;->mFG:Landroid/graphics/drawable/LayerDrawable;

    invoke-virtual {v3, v0, p1}, Lcom/android/launcher3/icons/ClockDrawableWrapper$AnimationInfo;->applyTime(Ljava/util/Calendar;Landroid/graphics/drawable/LayerDrawable;)Z

    const/high16 p1, 0x40000000    # 2.0f

    mul-float/2addr v2, p1

    const/high16 p1, 0x3f800000    # 1.0f

    sub-float/2addr p1, v2

    iput p1, p0, Lcom/android/launcher3/icons/ClockDrawableWrapper$ClockIconDrawable;->mCanvasScale:F

    return-void
.end method

.method private reschedule()V
    .locals 6

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->isVisible()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0, p0}, Landroid/graphics/drawable/Drawable;->unscheduleSelf(Ljava/lang/Runnable;)V

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    sget-wide v2, Lcom/android/launcher3/icons/ClockDrawableWrapper;->TICK_MS:J

    rem-long v4, v0, v2

    sub-long/2addr v0, v4

    add-long/2addr v0, v2

    invoke-virtual {p0, p0, v0, v1}, Landroid/graphics/drawable/Drawable;->scheduleSelf(Ljava/lang/Runnable;J)V

    return-void
.end method


# virtual methods
.method public drawInternal(Landroid/graphics/Canvas;Landroid/graphics/Rect;)V
    .locals 3

    iget-object v0, p0, Lcom/android/launcher3/icons/ClockDrawableWrapper$ClockIconDrawable;->mAnimInfo:Lcom/android/launcher3/icons/ClockDrawableWrapper$AnimationInfo;

    if-nez v0, :cond_0

    invoke-super {p0, p1, p2}, Lcom/android/launcher3/icons/FastBitmapDrawable;->drawInternal(Landroid/graphics/Canvas;Landroid/graphics/Rect;)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/launcher3/icons/ClockDrawableWrapper$ClockIconDrawable;->mBG:Landroid/graphics/Bitmap;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/android/launcher3/icons/ClockDrawableWrapper$ClockIconDrawable;->mBgPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, p2, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    iget-object v0, p0, Lcom/android/launcher3/icons/ClockDrawableWrapper$ClockIconDrawable;->mAnimInfo:Lcom/android/launcher3/icons/ClockDrawableWrapper$AnimationInfo;

    iget-object v1, p0, Lcom/android/launcher3/icons/ClockDrawableWrapper$ClockIconDrawable;->mTime:Ljava/util/Calendar;

    iget-object v2, p0, Lcom/android/launcher3/icons/ClockDrawableWrapper$ClockIconDrawable;->mFG:Landroid/graphics/drawable/LayerDrawable;

    invoke-virtual {v0, v1, v2}, Lcom/android/launcher3/icons/ClockDrawableWrapper$AnimationInfo;->applyTime(Ljava/util/Calendar;Landroid/graphics/drawable/LayerDrawable;)Z

    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v0

    iget v1, p2, Landroid/graphics/Rect;->left:I

    int-to-float v1, v1

    iget v2, p2, Landroid/graphics/Rect;->top:I

    int-to-float v2, v2

    invoke-virtual {p1, v1, v2}, Landroid/graphics/Canvas;->translate(FF)V

    iget v1, p0, Lcom/android/launcher3/icons/ClockDrawableWrapper$ClockIconDrawable;->mCanvasScale:F

    invoke-virtual {p2}, Landroid/graphics/Rect;->width()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    invoke-virtual {p2}, Landroid/graphics/Rect;->height()I

    move-result p2

    div-int/lit8 p2, p2, 0x2

    int-to-float p2, p2

    invoke-virtual {p1, v1, v1, v2, p2}, Landroid/graphics/Canvas;->scale(FFFF)V

    iget-object p2, p0, Lcom/android/launcher3/icons/ClockDrawableWrapper$ClockIconDrawable;->mFullDrawable:Landroid/graphics/drawable/AdaptiveIconDrawable;

    invoke-virtual {p2}, Landroid/graphics/drawable/AdaptiveIconDrawable;->getIconMask()Landroid/graphics/Path;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/graphics/Canvas;->clipPath(Landroid/graphics/Path;)Z

    iget-object p2, p0, Lcom/android/launcher3/icons/ClockDrawableWrapper$ClockIconDrawable;->mFG:Landroid/graphics/drawable/LayerDrawable;

    invoke-virtual {p2, p1}, Landroid/graphics/drawable/LayerDrawable;->draw(Landroid/graphics/Canvas;)V

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->restoreToCount(I)V

    invoke-direct {p0}, Lcom/android/launcher3/icons/ClockDrawableWrapper$ClockIconDrawable;->reschedule()V

    return-void
.end method

.method public getIconColor()I
    .locals 1

    invoke-virtual {p0}, Lcom/android/launcher3/icons/ClockDrawableWrapper$ClockIconDrawable;->isThemed()Z

    move-result v0

    if-eqz v0, :cond_0

    iget p0, p0, Lcom/android/launcher3/icons/ClockDrawableWrapper$ClockIconDrawable;->mThemedFgColor:I

    goto :goto_0

    :cond_0
    invoke-super {p0}, Lcom/android/launcher3/icons/FastBitmapDrawable;->getIconColor()I

    move-result p0

    :goto_0
    return p0
.end method

.method public isThemed()Z
    .locals 0

    iget-object p0, p0, Lcom/android/launcher3/icons/ClockDrawableWrapper$ClockIconDrawable;->mBgPaint:Landroid/graphics/Paint;

    invoke-virtual {p0}, Landroid/graphics/Paint;->getColorFilter()Landroid/graphics/ColorFilter;

    move-result-object p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public newConstantState()Lcom/android/launcher3/icons/FastBitmapDrawable$FastBitmapConstantState;
    .locals 9

    new-instance v8, Lcom/android/launcher3/icons/ClockDrawableWrapper$ClockIconDrawable$ClockConstantState;

    iget-object v1, p0, Lcom/android/launcher3/icons/FastBitmapDrawable;->mBitmap:Landroid/graphics/Bitmap;

    iget v2, p0, Lcom/android/launcher3/icons/FastBitmapDrawable;->mIconColor:I

    iget v3, p0, Lcom/android/launcher3/icons/ClockDrawableWrapper$ClockIconDrawable;->mThemedFgColor:I

    iget v4, p0, Lcom/android/launcher3/icons/ClockDrawableWrapper$ClockIconDrawable;->mBoundsOffset:F

    iget-object v5, p0, Lcom/android/launcher3/icons/ClockDrawableWrapper$ClockIconDrawable;->mAnimInfo:Lcom/android/launcher3/icons/ClockDrawableWrapper$AnimationInfo;

    iget-object v6, p0, Lcom/android/launcher3/icons/ClockDrawableWrapper$ClockIconDrawable;->mBG:Landroid/graphics/Bitmap;

    iget-object p0, p0, Lcom/android/launcher3/icons/ClockDrawableWrapper$ClockIconDrawable;->mBgPaint:Landroid/graphics/Paint;

    invoke-virtual {p0}, Landroid/graphics/Paint;->getColorFilter()Landroid/graphics/ColorFilter;

    move-result-object v7

    move-object v0, v8

    invoke-direct/range {v0 .. v7}, Lcom/android/launcher3/icons/ClockDrawableWrapper$ClockIconDrawable$ClockConstantState;-><init>(Landroid/graphics/Bitmap;IIFLcom/android/launcher3/icons/ClockDrawableWrapper$AnimationInfo;Landroid/graphics/Bitmap;Landroid/graphics/ColorFilter;)V

    return-object v8
.end method

.method protected onBoundsChange(Landroid/graphics/Rect;)V
    .locals 2

    invoke-super {p0, p1}, Lcom/android/launcher3/icons/FastBitmapDrawable;->onBoundsChange(Landroid/graphics/Rect;)V

    iget-object p0, p0, Lcom/android/launcher3/icons/ClockDrawableWrapper$ClockIconDrawable;->mFullDrawable:Landroid/graphics/drawable/AdaptiveIconDrawable;

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v0

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result p1

    const/4 v1, 0x0

    invoke-virtual {p0, v1, v1, v0, p1}, Landroid/graphics/drawable/AdaptiveIconDrawable;->setBounds(IIII)V

    return-void
.end method

.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/android/launcher3/icons/ClockDrawableWrapper$ClockIconDrawable;->mAnimInfo:Lcom/android/launcher3/icons/ClockDrawableWrapper$AnimationInfo;

    iget-object v1, p0, Lcom/android/launcher3/icons/ClockDrawableWrapper$ClockIconDrawable;->mTime:Ljava/util/Calendar;

    iget-object v2, p0, Lcom/android/launcher3/icons/ClockDrawableWrapper$ClockIconDrawable;->mFG:Landroid/graphics/drawable/LayerDrawable;

    invoke-virtual {v0, v1, v2}, Lcom/android/launcher3/icons/ClockDrawableWrapper$AnimationInfo;->applyTime(Ljava/util/Calendar;Landroid/graphics/drawable/LayerDrawable;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Lcom/android/launcher3/icons/ClockDrawableWrapper$ClockIconDrawable;->reschedule()V

    :goto_0
    return-void
.end method

.method public setAlpha(I)V
    .locals 1

    invoke-super {p0, p1}, Lcom/android/launcher3/icons/FastBitmapDrawable;->setAlpha(I)V

    iget-object v0, p0, Lcom/android/launcher3/icons/ClockDrawableWrapper$ClockIconDrawable;->mBgPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setAlpha(I)V

    iget-object p0, p0, Lcom/android/launcher3/icons/ClockDrawableWrapper$ClockIconDrawable;->mFG:Landroid/graphics/drawable/LayerDrawable;

    invoke-virtual {p0, p1}, Landroid/graphics/drawable/LayerDrawable;->setAlpha(I)V

    return-void
.end method

.method public setVisible(ZZ)Z
    .locals 0

    invoke-super {p0, p1, p2}, Landroid/graphics/drawable/Drawable;->setVisible(ZZ)Z

    move-result p2

    if-eqz p1, :cond_0

    invoke-direct {p0}, Lcom/android/launcher3/icons/ClockDrawableWrapper$ClockIconDrawable;->reschedule()V

    goto :goto_0

    :cond_0
    invoke-virtual {p0, p0}, Landroid/graphics/drawable/Drawable;->unscheduleSelf(Ljava/lang/Runnable;)V

    :goto_0
    return p2
.end method

.method protected updateFilter()V
    .locals 2

    invoke-super {p0}, Lcom/android/launcher3/icons/FastBitmapDrawable;->updateFilter()V

    iget-boolean v0, p0, Lcom/android/launcher3/icons/FastBitmapDrawable;->mIsDisabled:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/launcher3/icons/FastBitmapDrawable;->mDisabledAlpha:F

    const/high16 v1, 0x437f0000    # 255.0f

    mul-float/2addr v0, v1

    float-to-int v0, v0

    goto :goto_0

    :cond_0
    const/16 v0, 0xff

    :goto_0
    invoke-virtual {p0, v0}, Lcom/android/launcher3/icons/ClockDrawableWrapper$ClockIconDrawable;->setAlpha(I)V

    iget-object v0, p0, Lcom/android/launcher3/icons/ClockDrawableWrapper$ClockIconDrawable;->mBgPaint:Landroid/graphics/Paint;

    iget-boolean v1, p0, Lcom/android/launcher3/icons/FastBitmapDrawable;->mIsDisabled:Z

    if-eqz v1, :cond_1

    invoke-static {}, Lcom/android/launcher3/icons/FastBitmapDrawable;->getDisabledColorFilter()Landroid/graphics/ColorFilter;

    move-result-object v1

    goto :goto_1

    :cond_1
    iget-object v1, p0, Lcom/android/launcher3/icons/ClockDrawableWrapper$ClockIconDrawable;->mBgFilter:Landroid/graphics/ColorFilter;

    :goto_1
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    iget-object v0, p0, Lcom/android/launcher3/icons/ClockDrawableWrapper$ClockIconDrawable;->mFG:Landroid/graphics/drawable/LayerDrawable;

    iget-boolean p0, p0, Lcom/android/launcher3/icons/FastBitmapDrawable;->mIsDisabled:Z

    if-eqz p0, :cond_2

    invoke-static {}, Lcom/android/launcher3/icons/FastBitmapDrawable;->getDisabledColorFilter()Landroid/graphics/ColorFilter;

    move-result-object p0

    goto :goto_2

    :cond_2
    const/4 p0, 0x0

    :goto_2
    invoke-virtual {v0, p0}, Landroid/graphics/drawable/LayerDrawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    return-void
.end method
