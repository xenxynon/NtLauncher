.class public final Lcom/android/systemui/shared/shadow/DoubleShadowTextClock;
.super Landroid/widget/TextClock;
.source "SourceFile"


# instance fields
.field private final mAmbientShadowInfo:Lcom/android/systemui/shared/shadow/DoubleShadowTextHelper$ShadowInfo;

.field private final mKeyShadowInfo:Lcom/android/systemui/shared/shadow/DoubleShadowTextHelper$ShadowInfo;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 8

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/16 v6, 0xe

    const/4 v7, 0x0

    move-object v1, p0

    move-object v2, p1

    invoke-direct/range {v1 .. v7}, Lcom/android/systemui/shared/shadow/DoubleShadowTextClock;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;IIILkotlin/jvm/internal/i;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 8

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/16 v6, 0xc

    const/4 v7, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    invoke-direct/range {v1 .. v7}, Lcom/android/systemui/shared/shadow/DoubleShadowTextClock;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;IIILkotlin/jvm/internal/i;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 8

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v5, 0x0

    const/16 v6, 0x8

    const/4 v7, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    invoke-direct/range {v1 .. v7}, Lcom/android/systemui/shared/shadow/DoubleShadowTextClock;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;IIILkotlin/jvm/internal/i;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 4

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/TextClock;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    sget-object v0, Lcom/android/systemui/shared/R$styleable;->DoubleShadowTextClock:[I

    invoke-virtual {p1, p2, v0, p3, p4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    :try_start_0
    sget p2, Lcom/android/systemui/shared/R$styleable;->DoubleShadowTextClock_keyShadowBlur:I

    const/4 p3, 0x0

    invoke-virtual {p1, p2, p3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p2

    sget p4, Lcom/android/systemui/shared/R$styleable;->DoubleShadowTextClock_keyShadowOffsetX:I

    invoke-virtual {p1, p4, p3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p4

    sget v0, Lcom/android/systemui/shared/R$styleable;->DoubleShadowTextClock_keyShadowOffsetY:I

    invoke-virtual {p1, v0, p3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v0

    sget v1, Lcom/android/systemui/shared/R$styleable;->DoubleShadowTextClock_keyShadowAlpha:I

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v1

    new-instance v3, Lcom/android/systemui/shared/shadow/DoubleShadowTextHelper$ShadowInfo;

    int-to-float p2, p2

    int-to-float p4, p4

    int-to-float v0, v0

    invoke-direct {v3, p2, p4, v0, v1}, Lcom/android/systemui/shared/shadow/DoubleShadowTextHelper$ShadowInfo;-><init>(FFFF)V

    iput-object v3, p0, Lcom/android/systemui/shared/shadow/DoubleShadowTextClock;->mKeyShadowInfo:Lcom/android/systemui/shared/shadow/DoubleShadowTextHelper$ShadowInfo;

    sget p2, Lcom/android/systemui/shared/R$styleable;->DoubleShadowTextClock_ambientShadowBlur:I

    invoke-virtual {p1, p2, p3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p2

    sget p4, Lcom/android/systemui/shared/R$styleable;->DoubleShadowTextClock_ambientShadowOffsetX:I

    invoke-virtual {p1, p4, p3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p4

    sget v0, Lcom/android/systemui/shared/R$styleable;->DoubleShadowTextClock_ambientShadowOffsetY:I

    invoke-virtual {p1, v0, p3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v0

    sget v1, Lcom/android/systemui/shared/R$styleable;->DoubleShadowTextClock_ambientShadowAlpha:I

    invoke-virtual {p1, v1, v2}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v1

    new-instance v2, Lcom/android/systemui/shared/shadow/DoubleShadowTextHelper$ShadowInfo;

    int-to-float p2, p2

    int-to-float p4, p4

    int-to-float v0, v0

    invoke-direct {v2, p2, p4, v0, v1}, Lcom/android/systemui/shared/shadow/DoubleShadowTextHelper$ShadowInfo;-><init>(FFFF)V

    iput-object v2, p0, Lcom/android/systemui/shared/shadow/DoubleShadowTextClock;->mAmbientShadowInfo:Lcom/android/systemui/shared/shadow/DoubleShadowTextHelper$ShadowInfo;

    sget p2, Lcom/android/systemui/shared/R$styleable;->DoubleShadowTextClock_removeTextDescent:I

    invoke-virtual {p1, p2, p3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p2

    sget p4, Lcom/android/systemui/shared/R$styleable;->DoubleShadowTextClock_textDescentExtraPadding:I

    invoke-virtual {p1, p4, p3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p4

    if-eqz p2, :cond_0

    invoke-virtual {p0}, Landroid/widget/TextClock;->getPaint()Landroid/text/TextPaint;

    move-result-object p2

    invoke-virtual {p2}, Landroid/text/TextPaint;->getFontMetrics()Landroid/graphics/Paint$FontMetrics;

    move-result-object p2

    iget p2, p2, Landroid/graphics/Paint$FontMetrics;->descent:F

    float-to-double v0, p2

    invoke-static {v0, v1}, Ljava/lang/Math;->floor(D)D

    move-result-wide v0

    double-to-int p2, v0

    sub-int/2addr p4, p2

    invoke-virtual {p0, p3, p3, p3, p4}, Landroid/widget/TextClock;->setPaddingRelative(IIII)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    return-void

    :catchall_0
    move-exception p0

    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    throw p0
.end method

.method public synthetic constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;IIILkotlin/jvm/internal/i;)V
    .locals 1

    and-int/lit8 p6, p5, 0x2

    if-eqz p6, :cond_0

    const/4 p2, 0x0

    :cond_0
    and-int/lit8 p6, p5, 0x4

    const/4 v0, 0x0

    if-eqz p6, :cond_1

    move p3, v0

    :cond_1
    and-int/lit8 p5, p5, 0x8

    if-eqz p5, :cond_2

    move p4, v0

    :cond_2
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/systemui/shared/shadow/DoubleShadowTextClock;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public static final synthetic access$onDraw$s940309185(Lcom/android/systemui/shared/shadow/DoubleShadowTextClock;Landroid/graphics/Canvas;)V
    .locals 0

    invoke-super {p0, p1}, Landroid/widget/TextClock;->onDraw(Landroid/graphics/Canvas;)V

    return-void
.end method


# virtual methods
.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 7

    const-string v0, "canvas"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v1, Lcom/android/systemui/shared/shadow/DoubleShadowTextHelper;->INSTANCE:Lcom/android/systemui/shared/shadow/DoubleShadowTextHelper;

    iget-object v2, p0, Lcom/android/systemui/shared/shadow/DoubleShadowTextClock;->mKeyShadowInfo:Lcom/android/systemui/shared/shadow/DoubleShadowTextHelper$ShadowInfo;

    iget-object v3, p0, Lcom/android/systemui/shared/shadow/DoubleShadowTextClock;->mAmbientShadowInfo:Lcom/android/systemui/shared/shadow/DoubleShadowTextHelper$ShadowInfo;

    new-instance v6, Lcom/android/systemui/shared/shadow/DoubleShadowTextClock$onDraw$1;

    invoke-direct {v6, p0, p1}, Lcom/android/systemui/shared/shadow/DoubleShadowTextClock$onDraw$1;-><init>(Lcom/android/systemui/shared/shadow/DoubleShadowTextClock;Landroid/graphics/Canvas;)V

    move-object v4, p0

    move-object v5, p1

    invoke-virtual/range {v1 .. v6}, Lcom/android/systemui/shared/shadow/DoubleShadowTextHelper;->applyShadows(Lcom/android/systemui/shared/shadow/DoubleShadowTextHelper$ShadowInfo;Lcom/android/systemui/shared/shadow/DoubleShadowTextHelper$ShadowInfo;Landroid/widget/TextView;Landroid/graphics/Canvas;Ly5/a;)V

    return-void
.end method
