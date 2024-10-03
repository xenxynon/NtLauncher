.class public final Lcom/nothing/cardwidget/battery/view/BatteryLevelDrawable;
.super Landroid/graphics/drawable/Drawable;
.source "SourceFile"


# instance fields
.field private innerBoundsF:Landroid/graphics/RectF;

.field private paint:Landroid/graphics/Paint;

.field private progressLevel:F

.field private final startAngle:F


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    new-instance v0, Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/nothing/cardwidget/battery/view/BatteryLevelDrawable;->paint:Landroid/graphics/Paint;

    const v0, 0x3f19999a    # 0.6f

    iput v0, p0, Lcom/nothing/cardwidget/battery/view/BatteryLevelDrawable;->progressLevel:F

    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 8

    const-string v0, "canvas"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Rect;->centerX()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/Rect;->centerY()I

    move-result v1

    int-to-float v1, v1

    const/high16 v2, -0x3d4c0000    # -90.0f

    invoke-virtual {p1, v2, v0, v1}, Landroid/graphics/Canvas;->rotate(FFF)V

    iget-object v0, p0, Lcom/nothing/cardwidget/battery/view/BatteryLevelDrawable;->paint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget v4, p0, Lcom/nothing/cardwidget/battery/view/BatteryLevelDrawable;->startAngle:F

    iget v0, p0, Lcom/nothing/cardwidget/battery/view/BatteryLevelDrawable;->progressLevel:F

    const/16 v1, 0x168

    int-to-float v1, v1

    mul-float/2addr v0, v1

    add-float v5, v4, v0

    iget-object v3, p0, Lcom/nothing/cardwidget/battery/view/BatteryLevelDrawable;->innerBoundsF:Landroid/graphics/RectF;

    if-eqz v3, :cond_0

    const/4 v6, 0x1

    iget-object v7, p0, Lcom/nothing/cardwidget/battery/view/BatteryLevelDrawable;->paint:Landroid/graphics/Paint;

    move-object v2, p1

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    :cond_0
    return-void
.end method

.method public getOpacity()I
    .locals 0

    iget-object p0, p0, Lcom/nothing/cardwidget/battery/view/BatteryLevelDrawable;->paint:Landroid/graphics/Paint;

    invoke-virtual {p0}, Landroid/graphics/Paint;->getAlpha()I

    move-result p0

    return p0
.end method

.method protected onBoundsChange(Landroid/graphics/Rect;)V
    .locals 5

    const-string v0, "bounds"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-super {p0, p1}, Landroid/graphics/drawable/Drawable;->onBoundsChange(Landroid/graphics/Rect;)V

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v0

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v1

    int-to-float v1, v1

    sub-float/2addr v1, v0

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v1, v2

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result p1

    int-to-float p1, p1

    sub-float/2addr p1, v0

    div-float/2addr p1, v2

    new-instance v3, Landroid/graphics/RectF;

    add-float v4, v1, v0

    add-float/2addr v0, p1

    invoke-direct {v3, v1, p1, v4, v0}, Landroid/graphics/RectF;-><init>(FFFF)V

    iput-object v3, p0, Lcom/nothing/cardwidget/battery/view/BatteryLevelDrawable;->innerBoundsF:Landroid/graphics/RectF;

    iget-object p1, p0, Lcom/nothing/cardwidget/battery/view/BatteryLevelDrawable;->paint:Landroid/graphics/Paint;

    invoke-virtual {p1}, Landroid/graphics/Paint;->getStrokeWidth()F

    move-result p1

    div-float/2addr p1, v2

    const/high16 v0, 0x3f800000    # 1.0f

    add-float/2addr p1, v0

    iget-object p0, p0, Lcom/nothing/cardwidget/battery/view/BatteryLevelDrawable;->innerBoundsF:Landroid/graphics/RectF;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1, p1}, Landroid/graphics/RectF;->inset(FF)V

    :cond_0
    return-void
.end method

.method public setAlpha(I)V
    .locals 0

    iget-object p0, p0, Lcom/nothing/cardwidget/battery/view/BatteryLevelDrawable;->paint:Landroid/graphics/Paint;

    invoke-virtual {p0, p1}, Landroid/graphics/Paint;->setAlpha(I)V

    return-void
.end method

.method public final setBatteryLevel(I)V
    .locals 1

    int-to-float p1, p1

    const/high16 v0, 0x42c80000    # 100.0f

    div-float/2addr p1, v0

    iput p1, p0, Lcom/nothing/cardwidget/battery/view/BatteryLevelDrawable;->progressLevel:F

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    return-void
.end method

.method public final setColor(I)V
    .locals 0

    iget-object p0, p0, Lcom/nothing/cardwidget/battery/view/BatteryLevelDrawable;->paint:Landroid/graphics/Paint;

    invoke-virtual {p0, p1}, Landroid/graphics/Paint;->setColor(I)V

    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 0

    iget-object p0, p0, Lcom/nothing/cardwidget/battery/view/BatteryLevelDrawable;->paint:Landroid/graphics/Paint;

    invoke-virtual {p0, p1}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    return-void
.end method
