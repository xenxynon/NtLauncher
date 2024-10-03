.class public final Lcom/android/launcher3/taskbar/bubbles/BubbleBarBackground;
.super Landroid/graphics/drawable/Drawable;
.source "SourceFile"


# instance fields
.field private final DARK_THEME_SHADOW_ALPHA:F

.field private final LIGHT_THEME_SHADOW_ALPHA:F

.field private arrowDrawable:Landroid/graphics/drawable/ShapeDrawable;

.field private arrowPositionX:F

.field private final backgroundHeight:F

.field private keyShadowDistance:F

.field private final paint:Landroid/graphics/Paint;

.field private final pointerSize:F

.field private final shadowAlpha:F

.field private shadowBlur:F

.field private showingArrow:Z


# direct methods
.method public constructor <init>(Lcom/android/launcher3/taskbar/TaskbarActivityContext;F)V
    .locals 5

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    iput p2, p0, Lcom/android/launcher3/taskbar/bubbles/BubbleBarBackground;->backgroundHeight:F

    const/high16 p2, 0x424c0000    # 51.0f

    iput p2, p0, Lcom/android/launcher3/taskbar/bubbles/BubbleBarBackground;->DARK_THEME_SHADOW_ALPHA:F

    const/high16 v0, 0x41c80000    # 25.0f

    iput v0, p0, Lcom/android/launcher3/taskbar/bubbles/BubbleBarBackground;->LIGHT_THEME_SHADOW_ALPHA:F

    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    iput-object v1, p0, Lcom/android/launcher3/taskbar/bubbles/BubbleBarBackground;->paint:Landroid/graphics/Paint;

    const v2, 0x7f0603c9

    invoke-virtual {p1, v2}, Landroid/view/ContextThemeWrapper;->getColor(I)I

    move-result v3

    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->setColor(I)V

    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->setFlags(I)V

    sget-object v4, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v4}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    invoke-virtual {p1}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v4, 0x7f07057f

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v4

    iput v4, p0, Lcom/android/launcher3/taskbar/bubbles/BubbleBarBackground;->shadowBlur:F

    const v4, 0x7f07057c

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v4

    iput v4, p0, Lcom/android/launcher3/taskbar/bubbles/BubbleBarBackground;->keyShadowDistance:F

    const v4, 0x7f0700f1

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    iput v1, p0, Lcom/android/launcher3/taskbar/bubbles/BubbleBarBackground;->pointerSize:F

    invoke-static {p1}, Lcom/android/launcher3/Utilities;->isDarkTheme(Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_0

    goto :goto_0

    :cond_0
    move p2, v0

    :goto_0
    iput p2, p0, Lcom/android/launcher3/taskbar/bubbles/BubbleBarBackground;->shadowAlpha:F

    new-instance p2, Landroid/graphics/drawable/ShapeDrawable;

    invoke-static {v1, v1, v3}, Ly0/b;->a(FFZ)Ly0/b;

    move-result-object v0

    invoke-direct {p2, v0}, Landroid/graphics/drawable/ShapeDrawable;-><init>(Landroid/graphics/drawable/shapes/Shape;)V

    iput-object p2, p0, Lcom/android/launcher3/taskbar/bubbles/BubbleBarBackground;->arrowDrawable:Landroid/graphics/drawable/ShapeDrawable;

    float-to-int v0, v1

    float-to-int v1, v1

    const/4 v4, 0x0

    invoke-virtual {p2, v4, v4, v0, v1}, Landroid/graphics/drawable/ShapeDrawable;->setBounds(IIII)V

    iget-object p2, p0, Lcom/android/launcher3/taskbar/bubbles/BubbleBarBackground;->arrowDrawable:Landroid/graphics/drawable/ShapeDrawable;

    invoke-virtual {p2}, Landroid/graphics/drawable/ShapeDrawable;->getPaint()Landroid/graphics/Paint;

    move-result-object p2

    invoke-virtual {p2, v3}, Landroid/graphics/Paint;->setFlags(I)V

    iget-object p2, p0, Lcom/android/launcher3/taskbar/bubbles/BubbleBarBackground;->arrowDrawable:Landroid/graphics/drawable/ShapeDrawable;

    invoke-virtual {p2}, Landroid/graphics/drawable/ShapeDrawable;->getPaint()Landroid/graphics/Paint;

    move-result-object p2

    sget-object v0, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {p2, v0}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object p0, p0, Lcom/android/launcher3/taskbar/bubbles/BubbleBarBackground;->arrowDrawable:Landroid/graphics/drawable/ShapeDrawable;

    invoke-virtual {p0}, Landroid/graphics/drawable/ShapeDrawable;->getPaint()Landroid/graphics/Paint;

    move-result-object p0

    invoke-virtual {p1, v2}, Landroid/view/ContextThemeWrapper;->getColor(I)I

    move-result p1

    invoke-virtual {p0, p1}, Landroid/graphics/Paint;->setColor(I)V

    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 10

    const-string v0, "canvas"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    iget-object v0, p0, Lcom/android/launcher3/taskbar/bubbles/BubbleBarBackground;->paint:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getAlpha()I

    move-result v0

    int-to-float v1, v0

    iget v5, p0, Lcom/android/launcher3/taskbar/bubbles/BubbleBarBackground;->shadowAlpha:F

    sget-object v6, Lcom/android/launcher3/anim/Interpolators;->LINEAR:Landroid/view/animation/Interpolator;

    const/4 v2, 0x0

    const/high16 v3, 0x437f0000    # 255.0f

    const/4 v4, 0x0

    invoke-static/range {v1 .. v6}, Lcom/android/launcher3/Utilities;->mapToRange(FFFFFLandroid/view/animation/Interpolator;)F

    move-result v0

    iget-object v1, p0, Lcom/android/launcher3/taskbar/bubbles/BubbleBarBackground;->paint:Landroid/graphics/Paint;

    iget v2, p0, Lcom/android/launcher3/taskbar/bubbles/BubbleBarBackground;->shadowBlur:F

    iget v3, p0, Lcom/android/launcher3/taskbar/bubbles/BubbleBarBackground;->keyShadowDistance:F

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v4

    const/high16 v5, -0x1000000

    invoke-static {v5, v4}, Lcom/android/launcher3/icons/GraphicsUtils;->setColorAlphaBound(II)I

    move-result v4

    const/4 v6, 0x0

    invoke-virtual {v1, v2, v6, v3, v4}, Landroid/graphics/Paint;->setShadowLayer(FFFI)V

    iget-object v1, p0, Lcom/android/launcher3/taskbar/bubbles/BubbleBarBackground;->arrowDrawable:Landroid/graphics/drawable/ShapeDrawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/ShapeDrawable;->getPaint()Landroid/graphics/Paint;

    move-result-object v1

    iget v2, p0, Lcom/android/launcher3/taskbar/bubbles/BubbleBarBackground;->shadowBlur:F

    iget v3, p0, Lcom/android/launcher3/taskbar/bubbles/BubbleBarBackground;->keyShadowDistance:F

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    invoke-static {v5, v0}, Lcom/android/launcher3/icons/GraphicsUtils;->setColorAlphaBound(II)I

    move-result v0

    invoke-virtual {v1, v2, v6, v3, v0}, Landroid/graphics/Paint;->setShadowLayer(FFFI)V

    iget v0, p0, Lcom/android/launcher3/taskbar/bubbles/BubbleBarBackground;->backgroundHeight:F

    const/high16 v1, 0x40000000    # 2.0f

    div-float v8, v0, v1

    invoke-virtual {p1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v0

    int-to-float v5, v0

    invoke-virtual {p1}, Landroid/graphics/Canvas;->getHeight()I

    move-result v0

    int-to-float v6, v0

    iget-object v9, p0, Lcom/android/launcher3/taskbar/bubbles/BubbleBarBackground;->paint:Landroid/graphics/Paint;

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v2, p1

    move v7, v8

    invoke-virtual/range {v2 .. v9}, Landroid/graphics/Canvas;->drawRoundRect(FFFFFFLandroid/graphics/Paint;)V

    iget-boolean v0, p0, Lcom/android/launcher3/taskbar/bubbles/BubbleBarBackground;->showingArrow:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/launcher3/taskbar/bubbles/BubbleBarBackground;->arrowPositionX:F

    iget v2, p0, Lcom/android/launcher3/taskbar/bubbles/BubbleBarBackground;->pointerSize:F

    div-float v1, v2, v1

    sub-float/2addr v0, v1

    neg-float v1, v2

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    iget-object p0, p0, Lcom/android/launcher3/taskbar/bubbles/BubbleBarBackground;->arrowDrawable:Landroid/graphics/drawable/ShapeDrawable;

    invoke-virtual {p0, p1}, Landroid/graphics/drawable/ShapeDrawable;->draw(Landroid/graphics/Canvas;)V

    :cond_0
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    return-void
.end method

.method public final getArrowPositionX()F
    .locals 0

    iget p0, p0, Lcom/android/launcher3/taskbar/bubbles/BubbleBarBackground;->arrowPositionX:F

    return p0
.end method

.method public getOpacity()I
    .locals 0

    iget-object p0, p0, Lcom/android/launcher3/taskbar/bubbles/BubbleBarBackground;->paint:Landroid/graphics/Paint;

    invoke-virtual {p0}, Landroid/graphics/Paint;->getAlpha()I

    move-result p0

    return p0
.end method

.method public setAlpha(I)V
    .locals 0

    iget-object p0, p0, Lcom/android/launcher3/taskbar/bubbles/BubbleBarBackground;->paint:Landroid/graphics/Paint;

    invoke-virtual {p0, p1}, Landroid/graphics/Paint;->setAlpha(I)V

    return-void
.end method

.method public final setArrowPosition(F)V
    .locals 0

    iput p1, p0, Lcom/android/launcher3/taskbar/bubbles/BubbleBarBackground;->arrowPositionX:F

    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 0

    iget-object p0, p0, Lcom/android/launcher3/taskbar/bubbles/BubbleBarBackground;->paint:Landroid/graphics/Paint;

    invoke-virtual {p0, p1}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    return-void
.end method

.method public final showArrow(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/launcher3/taskbar/bubbles/BubbleBarBackground;->showingArrow:Z

    return-void
.end method
