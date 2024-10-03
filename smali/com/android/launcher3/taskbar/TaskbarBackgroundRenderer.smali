.class public final Lcom/android/launcher3/taskbar/TaskbarBackgroundRenderer;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/launcher3/taskbar/TaskbarBackgroundRenderer$Companion;
    }
.end annotation


# static fields
.field public static final Companion:Lcom/android/launcher3/taskbar/TaskbarBackgroundRenderer$Companion;


# instance fields
.field private final DARK_THEME_SHADOW_ALPHA:F

.field private final LIGHT_THEME_SHADOW_ALPHA:F

.field private backgroundHeight:F

.field private bottomMargin:I

.field private final circle:Landroid/graphics/Path;

.field private final fullLeftCornerRadius:F

.field private final fullRightCornerRadius:F

.field private final invertedLeftCornerPath:Landroid/graphics/Path;

.field private final invertedRightCornerPath:Landroid/graphics/Path;

.field private final isInSetup:Z

.field private final isTransientTaskbar:Z

.field private keyShadowDistance:F

.field private final lastDrawnTransientRect:Landroid/graphics/RectF;

.field private leftCornerRadius:F

.field private maxBackgroundHeight:F

.field private final paint:Landroid/graphics/Paint;

.field private rightCornerRadius:F

.field private final shadowAlpha:F

.field private shadowBlur:F

.field private final square:Landroid/graphics/Path;

.field private final stashedHandleHeight:I

.field private stashedHandleWidth:I

.field private final transientBackgroundBounds:Landroid/graphics/Rect;

.field private translationYForStash:F

.field private translationYForSwipe:F

.field private widthInsetPercentage:F


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/android/launcher3/taskbar/TaskbarBackgroundRenderer$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/launcher3/taskbar/TaskbarBackgroundRenderer$Companion;-><init>(Lkotlin/jvm/internal/i;)V

    sput-object v0, Lcom/android/launcher3/taskbar/TaskbarBackgroundRenderer;->Companion:Lcom/android/launcher3/taskbar/TaskbarBackgroundRenderer$Companion;

    return-void
.end method

.method public constructor <init>(Lcom/android/launcher3/taskbar/TaskbarActivityContext;)V
    .locals 7

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Lcom/android/launcher3/taskbar/TaskbarActivityContext;->isUserSetupComplete()Z

    move-result v0

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    iput-boolean v0, p0, Lcom/android/launcher3/taskbar/TaskbarBackgroundRenderer;->isInSetup:Z

    const/high16 v0, 0x424c0000    # 51.0f

    iput v0, p0, Lcom/android/launcher3/taskbar/TaskbarBackgroundRenderer;->DARK_THEME_SHADOW_ALPHA:F

    const/high16 v2, 0x41c80000    # 25.0f

    iput v2, p0, Lcom/android/launcher3/taskbar/TaskbarBackgroundRenderer;->LIGHT_THEME_SHADOW_ALPHA:F

    new-instance v3, Landroid/graphics/Paint;

    invoke-direct {v3}, Landroid/graphics/Paint;-><init>()V

    iput-object v3, p0, Lcom/android/launcher3/taskbar/TaskbarBackgroundRenderer;->paint:Landroid/graphics/Paint;

    new-instance v4, Landroid/graphics/RectF;

    invoke-direct {v4}, Landroid/graphics/RectF;-><init>()V

    iput-object v4, p0, Lcom/android/launcher3/taskbar/TaskbarBackgroundRenderer;->lastDrawnTransientRect:Landroid/graphics/RectF;

    invoke-virtual {p1}, Lcom/android/launcher3/taskbar/TaskbarActivityContext;->getDeviceProfile()Lj3/a;

    move-result-object v4

    iget v4, v4, Lcom/android/launcher3/DeviceProfile;->taskbarHeight:I

    int-to-float v4, v4

    iput v4, p0, Lcom/android/launcher3/taskbar/TaskbarBackgroundRenderer;->backgroundHeight:F

    invoke-virtual {p1}, Lcom/android/launcher3/taskbar/TaskbarActivityContext;->getDeviceProfile()Lj3/a;

    move-result-object v4

    iget v4, v4, Lcom/android/launcher3/DeviceProfile;->taskbarHeight:I

    int-to-float v4, v4

    iput v4, p0, Lcom/android/launcher3/taskbar/TaskbarBackgroundRenderer;->maxBackgroundHeight:F

    invoke-virtual {p1}, Lcom/android/launcher3/taskbar/TaskbarActivityContext;->getTransientTaskbarBounds()Landroid/graphics/Rect;

    move-result-object v4

    iput-object v4, p0, Lcom/android/launcher3/taskbar/TaskbarBackgroundRenderer;->transientBackgroundBounds:Landroid/graphics/Rect;

    invoke-static {p1}, Lcom/android/launcher3/util/DisplayController;->isTransientTaskbar(Landroid/content/Context;)Z

    move-result v4

    iput-boolean v4, p0, Lcom/android/launcher3/taskbar/TaskbarBackgroundRenderer;->isTransientTaskbar:Z

    invoke-virtual {p1}, Lcom/android/launcher3/taskbar/TaskbarActivityContext;->getLeftCornerRadius()I

    move-result v5

    int-to-float v5, v5

    iput v5, p0, Lcom/android/launcher3/taskbar/TaskbarBackgroundRenderer;->fullLeftCornerRadius:F

    invoke-virtual {p1}, Lcom/android/launcher3/taskbar/TaskbarActivityContext;->getRightCornerRadius()I

    move-result v6

    int-to-float v6, v6

    iput v6, p0, Lcom/android/launcher3/taskbar/TaskbarBackgroundRenderer;->fullRightCornerRadius:F

    iput v5, p0, Lcom/android/launcher3/taskbar/TaskbarBackgroundRenderer;->leftCornerRadius:F

    iput v6, p0, Lcom/android/launcher3/taskbar/TaskbarBackgroundRenderer;->rightCornerRadius:F

    new-instance v5, Landroid/graphics/Path;

    invoke-direct {v5}, Landroid/graphics/Path;-><init>()V

    iput-object v5, p0, Lcom/android/launcher3/taskbar/TaskbarBackgroundRenderer;->square:Landroid/graphics/Path;

    new-instance v5, Landroid/graphics/Path;

    invoke-direct {v5}, Landroid/graphics/Path;-><init>()V

    iput-object v5, p0, Lcom/android/launcher3/taskbar/TaskbarBackgroundRenderer;->circle:Landroid/graphics/Path;

    new-instance v5, Landroid/graphics/Path;

    invoke-direct {v5}, Landroid/graphics/Path;-><init>()V

    iput-object v5, p0, Lcom/android/launcher3/taskbar/TaskbarBackgroundRenderer;->invertedLeftCornerPath:Landroid/graphics/Path;

    new-instance v5, Landroid/graphics/Path;

    invoke-direct {v5}, Landroid/graphics/Path;-><init>()V

    iput-object v5, p0, Lcom/android/launcher3/taskbar/TaskbarBackgroundRenderer;->invertedRightCornerPath:Landroid/graphics/Path;

    invoke-virtual {p1}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f070557

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    iput v5, p0, Lcom/android/launcher3/taskbar/TaskbarBackgroundRenderer;->stashedHandleWidth:I

    invoke-virtual {p1}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f070556

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    iput v5, p0, Lcom/android/launcher3/taskbar/TaskbarBackgroundRenderer;->stashedHandleHeight:I

    const v5, 0x7f0603c9

    invoke-virtual {p1, v5}, Landroid/view/ContextThemeWrapper;->getColor(I)I

    move-result v5

    invoke-virtual {v3, v5}, Landroid/graphics/Paint;->setColor(I)V

    invoke-virtual {v3, v1}, Landroid/graphics/Paint;->setFlags(I)V

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v3, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    if-eqz v4, :cond_0

    invoke-virtual {p1}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v3, 0x7f07057a

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    iput v3, p0, Lcom/android/launcher3/taskbar/TaskbarBackgroundRenderer;->bottomMargin:I

    const v3, 0x7f07057f

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    iput v3, p0, Lcom/android/launcher3/taskbar/TaskbarBackgroundRenderer;->shadowBlur:F

    const v3, 0x7f07057c

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    iput v1, p0, Lcom/android/launcher3/taskbar/TaskbarBackgroundRenderer;->keyShadowDistance:F

    :cond_0
    invoke-static {p1}, Lcom/android/launcher3/Utilities;->isDarkTheme(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_1

    goto :goto_0

    :cond_1
    move v0, v2

    :goto_0
    iput v0, p0, Lcom/android/launcher3/taskbar/TaskbarBackgroundRenderer;->shadowAlpha:F

    const/high16 p1, 0x3f800000    # 1.0f

    invoke-virtual {p0, p1}, Lcom/android/launcher3/taskbar/TaskbarBackgroundRenderer;->setCornerRoundness(F)V

    return-void
.end method


# virtual methods
.method public final draw(Landroid/graphics/Canvas;)V
    .locals 13

    const-string v0, "canvas"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    iget-boolean v0, p0, Lcom/android/launcher3/taskbar/TaskbarBackgroundRenderer;->isTransientTaskbar:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/launcher3/taskbar/TaskbarBackgroundRenderer;->transientBackgroundBounds:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_0

    :cond_0
    iget-boolean v0, p0, Lcom/android/launcher3/taskbar/TaskbarBackgroundRenderer;->isInSetup:Z

    if-nez v0, :cond_2

    iget v0, p0, Lcom/android/launcher3/taskbar/TaskbarBackgroundRenderer;->backgroundHeight:F

    iget v2, p0, Lcom/android/launcher3/taskbar/TaskbarBackgroundRenderer;->maxBackgroundHeight:F

    div-float/2addr v0, v2

    iget v3, p0, Lcom/android/launcher3/taskbar/TaskbarBackgroundRenderer;->stashedHandleHeight:I

    int-to-float v3, v3

    invoke-static {v0, v3, v2}, Lcom/android/launcher3/Utilities;->mapRange(FFF)F

    move-result v2

    iget-object v3, p0, Lcom/android/launcher3/taskbar/TaskbarBackgroundRenderer;->transientBackgroundBounds:Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    move-result v3

    iget v4, p0, Lcom/android/launcher3/taskbar/TaskbarBackgroundRenderer;->stashedHandleWidth:I

    int-to-float v4, v4

    int-to-float v3, v3

    invoke-static {v0, v4, v3}, Lcom/android/launcher3/Utilities;->mapRange(FFF)F

    move-result v4

    sub-float v4, v3, v4

    const/high16 v5, 0x40000000    # 2.0f

    div-float/2addr v4, v5

    div-float v6, v2, v5

    iget v7, p0, Lcom/android/launcher3/taskbar/TaskbarBackgroundRenderer;->bottomMargin:I

    int-to-float v7, v7

    const/high16 v8, 0x3f800000    # 1.0f

    sub-float/2addr v8, v0

    div-float v0, v8, v5

    mul-float/2addr v7, v0

    invoke-virtual {p1}, Landroid/graphics/Canvas;->getHeight()I

    move-result v0

    iget v9, p0, Lcom/android/launcher3/taskbar/TaskbarBackgroundRenderer;->bottomMargin:I

    sub-int/2addr v0, v9

    int-to-float v0, v0

    add-float/2addr v0, v7

    iget v7, p0, Lcom/android/launcher3/taskbar/TaskbarBackgroundRenderer;->translationYForSwipe:F

    add-float/2addr v0, v7

    iget v7, p0, Lcom/android/launcher3/taskbar/TaskbarBackgroundRenderer;->translationYForStash:F

    add-float/2addr v0, v7

    iget v7, p0, Lcom/android/launcher3/taskbar/TaskbarBackgroundRenderer;->stashedHandleHeight:I

    int-to-float v7, v7

    div-float/2addr v7, v5

    invoke-static {v8, v1, v7}, Lcom/android/launcher3/Utilities;->mapRange(FFF)F

    move-result v5

    neg-float v5, v5

    add-float/2addr v0, v5

    iget-object v5, p0, Lcom/android/launcher3/taskbar/TaskbarBackgroundRenderer;->paint:Landroid/graphics/Paint;

    invoke-virtual {v5}, Landroid/graphics/Paint;->getAlpha()I

    move-result v5

    int-to-float v7, v5

    const/4 v8, 0x0

    const/high16 v9, 0x437f0000    # 255.0f

    const/4 v10, 0x0

    iget v11, p0, Lcom/android/launcher3/taskbar/TaskbarBackgroundRenderer;->shadowAlpha:F

    sget-object v12, Lcom/android/launcher3/anim/Interpolators;->LINEAR:Landroid/view/animation/Interpolator;

    invoke-static/range {v7 .. v12}, Lcom/android/launcher3/Utilities;->mapToRange(FFFFFLandroid/view/animation/Interpolator;)F

    move-result v5

    iget-object v7, p0, Lcom/android/launcher3/taskbar/TaskbarBackgroundRenderer;->paint:Landroid/graphics/Paint;

    iget v8, p0, Lcom/android/launcher3/taskbar/TaskbarBackgroundRenderer;->shadowBlur:F

    iget v9, p0, Lcom/android/launcher3/taskbar/TaskbarBackgroundRenderer;->keyShadowDistance:F

    const/high16 v10, -0x1000000

    invoke-static {v5}, Ljava/lang/Math;->round(F)I

    move-result v5

    invoke-static {v10, v5}, Lcom/android/launcher3/icons/GraphicsUtils;->setColorAlphaBound(II)I

    move-result v5

    invoke-virtual {v7, v8, v1, v9, v5}, Landroid/graphics/Paint;->setShadowLayer(FFFI)V

    iget-object v5, p0, Lcom/android/launcher3/taskbar/TaskbarBackgroundRenderer;->lastDrawnTransientRect:Landroid/graphics/RectF;

    iget-object v7, p0, Lcom/android/launcher3/taskbar/TaskbarBackgroundRenderer;->transientBackgroundBounds:Landroid/graphics/Rect;

    iget v8, v7, Landroid/graphics/Rect;->left:I

    int-to-float v8, v8

    add-float/2addr v8, v4

    sub-float v2, v0, v2

    iget v7, v7, Landroid/graphics/Rect;->right:I

    int-to-float v7, v7

    sub-float/2addr v7, v4

    invoke-virtual {v5, v8, v2, v7, v0}, Landroid/graphics/RectF;->set(FFFF)V

    iget v0, p0, Lcom/android/launcher3/taskbar/TaskbarBackgroundRenderer;->widthInsetPercentage:F

    mul-float/2addr v3, v0

    iget-object v0, p0, Lcom/android/launcher3/taskbar/TaskbarBackgroundRenderer;->lastDrawnTransientRect:Landroid/graphics/RectF;

    invoke-virtual {v0, v3, v1}, Landroid/graphics/RectF;->inset(FF)V

    iget-object v0, p0, Lcom/android/launcher3/taskbar/TaskbarBackgroundRenderer;->lastDrawnTransientRect:Landroid/graphics/RectF;

    iget-object p0, p0, Lcom/android/launcher3/taskbar/TaskbarBackgroundRenderer;->paint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v6, v6, p0}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    goto :goto_1

    :cond_1
    :goto_0
    invoke-virtual {p1}, Landroid/graphics/Canvas;->getHeight()I

    move-result v0

    int-to-float v0, v0

    iget v2, p0, Lcom/android/launcher3/taskbar/TaskbarBackgroundRenderer;->backgroundHeight:F

    sub-float/2addr v0, v2

    iget v2, p0, Lcom/android/launcher3/taskbar/TaskbarBackgroundRenderer;->bottomMargin:I

    int-to-float v2, v2

    sub-float/2addr v0, v2

    invoke-virtual {p1, v1, v0}, Landroid/graphics/Canvas;->translate(FF)V

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {p1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v0

    int-to-float v5, v0

    iget v6, p0, Lcom/android/launcher3/taskbar/TaskbarBackgroundRenderer;->backgroundHeight:F

    iget-object v7, p0, Lcom/android/launcher3/taskbar/TaskbarBackgroundRenderer;->paint:Landroid/graphics/Paint;

    move-object v2, p1

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    iget v0, p0, Lcom/android/launcher3/taskbar/TaskbarBackgroundRenderer;->leftCornerRadius:F

    neg-float v0, v0

    invoke-virtual {p1, v1, v0}, Landroid/graphics/Canvas;->translate(FF)V

    iget-object v0, p0, Lcom/android/launcher3/taskbar/TaskbarBackgroundRenderer;->invertedLeftCornerPath:Landroid/graphics/Path;

    iget-object v2, p0, Lcom/android/launcher3/taskbar/TaskbarBackgroundRenderer;->paint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v2}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    iget v0, p0, Lcom/android/launcher3/taskbar/TaskbarBackgroundRenderer;->leftCornerRadius:F

    invoke-virtual {p1, v1, v0}, Landroid/graphics/Canvas;->translate(FF)V

    invoke-virtual {p1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v0

    int-to-float v0, v0

    iget v1, p0, Lcom/android/launcher3/taskbar/TaskbarBackgroundRenderer;->rightCornerRadius:F

    sub-float/2addr v0, v1

    neg-float v1, v1

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    iget-object v0, p0, Lcom/android/launcher3/taskbar/TaskbarBackgroundRenderer;->invertedRightCornerPath:Landroid/graphics/Path;

    iget-object p0, p0, Lcom/android/launcher3/taskbar/TaskbarBackgroundRenderer;->paint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, p0}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    :cond_2
    :goto_1
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    return-void
.end method

.method public final getLastDrawnTransientRect()Landroid/graphics/RectF;
    .locals 0

    iget-object p0, p0, Lcom/android/launcher3/taskbar/TaskbarBackgroundRenderer;->lastDrawnTransientRect:Landroid/graphics/RectF;

    return-object p0
.end method

.method public final getPaint()Landroid/graphics/Paint;
    .locals 0

    iget-object p0, p0, Lcom/android/launcher3/taskbar/TaskbarBackgroundRenderer;->paint:Landroid/graphics/Paint;

    return-object p0
.end method

.method public final setBackgroundHeight(F)V
    .locals 0

    iput p1, p0, Lcom/android/launcher3/taskbar/TaskbarBackgroundRenderer;->backgroundHeight:F

    return-void
.end method

.method public final setBackgroundHorizontalInsets(F)V
    .locals 0

    iput p1, p0, Lcom/android/launcher3/taskbar/TaskbarBackgroundRenderer;->widthInsetPercentage:F

    return-void
.end method

.method public final setCornerRoundness(F)V
    .locals 9

    iget-boolean v0, p0, Lcom/android/launcher3/taskbar/TaskbarBackgroundRenderer;->isTransientTaskbar:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher3/taskbar/TaskbarBackgroundRenderer;->transientBackgroundBounds:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget v0, p0, Lcom/android/launcher3/taskbar/TaskbarBackgroundRenderer;->fullLeftCornerRadius:F

    mul-float/2addr v0, p1

    iput v0, p0, Lcom/android/launcher3/taskbar/TaskbarBackgroundRenderer;->leftCornerRadius:F

    iget v0, p0, Lcom/android/launcher3/taskbar/TaskbarBackgroundRenderer;->fullRightCornerRadius:F

    mul-float/2addr v0, p1

    iput v0, p0, Lcom/android/launcher3/taskbar/TaskbarBackgroundRenderer;->rightCornerRadius:F

    iget-object p1, p0, Lcom/android/launcher3/taskbar/TaskbarBackgroundRenderer;->square:Landroid/graphics/Path;

    invoke-virtual {p1}, Landroid/graphics/Path;->reset()V

    iget-object v0, p0, Lcom/android/launcher3/taskbar/TaskbarBackgroundRenderer;->square:Landroid/graphics/Path;

    const/4 v1, 0x0

    const/4 v2, 0x0

    iget v4, p0, Lcom/android/launcher3/taskbar/TaskbarBackgroundRenderer;->leftCornerRadius:F

    sget-object v5, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    move v3, v4

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Path;->addRect(FFFFLandroid/graphics/Path$Direction;)V

    iget-object p1, p0, Lcom/android/launcher3/taskbar/TaskbarBackgroundRenderer;->circle:Landroid/graphics/Path;

    invoke-virtual {p1}, Landroid/graphics/Path;->reset()V

    iget-object p1, p0, Lcom/android/launcher3/taskbar/TaskbarBackgroundRenderer;->circle:Landroid/graphics/Path;

    iget v0, p0, Lcom/android/launcher3/taskbar/TaskbarBackgroundRenderer;->leftCornerRadius:F

    sget-object v1, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    invoke-virtual {p1, v0, v2, v0, v1}, Landroid/graphics/Path;->addCircle(FFFLandroid/graphics/Path$Direction;)V

    iget-object p1, p0, Lcom/android/launcher3/taskbar/TaskbarBackgroundRenderer;->invertedLeftCornerPath:Landroid/graphics/Path;

    iget-object v0, p0, Lcom/android/launcher3/taskbar/TaskbarBackgroundRenderer;->square:Landroid/graphics/Path;

    iget-object v1, p0, Lcom/android/launcher3/taskbar/TaskbarBackgroundRenderer;->circle:Landroid/graphics/Path;

    sget-object v3, Landroid/graphics/Path$Op;->DIFFERENCE:Landroid/graphics/Path$Op;

    invoke-virtual {p1, v0, v1, v3}, Landroid/graphics/Path;->op(Landroid/graphics/Path;Landroid/graphics/Path;Landroid/graphics/Path$Op;)Z

    iget-object p1, p0, Lcom/android/launcher3/taskbar/TaskbarBackgroundRenderer;->square:Landroid/graphics/Path;

    invoke-virtual {p1}, Landroid/graphics/Path;->reset()V

    iget-object v3, p0, Lcom/android/launcher3/taskbar/TaskbarBackgroundRenderer;->square:Landroid/graphics/Path;

    const/4 v4, 0x0

    const/4 v5, 0x0

    iget v7, p0, Lcom/android/launcher3/taskbar/TaskbarBackgroundRenderer;->rightCornerRadius:F

    sget-object v8, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    move v6, v7

    invoke-virtual/range {v3 .. v8}, Landroid/graphics/Path;->addRect(FFFFLandroid/graphics/Path$Direction;)V

    iget-object p1, p0, Lcom/android/launcher3/taskbar/TaskbarBackgroundRenderer;->circle:Landroid/graphics/Path;

    invoke-virtual {p1}, Landroid/graphics/Path;->reset()V

    iget-object p1, p0, Lcom/android/launcher3/taskbar/TaskbarBackgroundRenderer;->circle:Landroid/graphics/Path;

    iget v0, p0, Lcom/android/launcher3/taskbar/TaskbarBackgroundRenderer;->rightCornerRadius:F

    sget-object v1, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    invoke-virtual {p1, v2, v2, v0, v1}, Landroid/graphics/Path;->addCircle(FFFLandroid/graphics/Path$Direction;)V

    iget-object p1, p0, Lcom/android/launcher3/taskbar/TaskbarBackgroundRenderer;->invertedRightCornerPath:Landroid/graphics/Path;

    iget-object v0, p0, Lcom/android/launcher3/taskbar/TaskbarBackgroundRenderer;->square:Landroid/graphics/Path;

    iget-object p0, p0, Lcom/android/launcher3/taskbar/TaskbarBackgroundRenderer;->circle:Landroid/graphics/Path;

    sget-object v1, Landroid/graphics/Path$Op;->DIFFERENCE:Landroid/graphics/Path$Op;

    invoke-virtual {p1, v0, p0, v1}, Landroid/graphics/Path;->op(Landroid/graphics/Path;Landroid/graphics/Path;Landroid/graphics/Path$Op;)Z

    return-void
.end method

.method public final setTranslationYForStash(F)V
    .locals 0

    iput p1, p0, Lcom/android/launcher3/taskbar/TaskbarBackgroundRenderer;->translationYForStash:F

    return-void
.end method

.method public final setTranslationYForSwipe(F)V
    .locals 0

    iput p1, p0, Lcom/android/launcher3/taskbar/TaskbarBackgroundRenderer;->translationYForSwipe:F

    return-void
.end method

.method public final updateStashedHandleWidth(Lcom/android/launcher3/DeviceProfile;Landroid/content/res/Resources;)V
    .locals 1

    const-string v0, "dp"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "res"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1}, Lcom/android/launcher3/taskbar/TaskbarManager;->isPhoneMode(Lcom/android/launcher3/DeviceProfile;)Z

    move-result p1

    if-eqz p1, :cond_0

    const p1, 0x7f07055a

    goto :goto_0

    :cond_0
    const p1, 0x7f070557

    :goto_0
    invoke-virtual {p2, p1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lcom/android/launcher3/taskbar/TaskbarBackgroundRenderer;->stashedHandleWidth:I

    return-void
.end method
