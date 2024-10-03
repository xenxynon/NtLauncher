.class public Lcom/android/systemui/shared/shadow/DoubleShadowTextView;
.super Landroid/widget/TextView;
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

    invoke-direct/range {v1 .. v7}, Lcom/android/systemui/shared/shadow/DoubleShadowTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;IIILkotlin/jvm/internal/i;)V

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

    invoke-direct/range {v1 .. v7}, Lcom/android/systemui/shared/shadow/DoubleShadowTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;IIILkotlin/jvm/internal/i;)V

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

    invoke-direct/range {v1 .. v7}, Lcom/android/systemui/shared/shadow/DoubleShadowTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;IIILkotlin/jvm/internal/i;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 18

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const-string v2, "context"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct/range {p0 .. p4}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    sget-object v2, Lcom/android/systemui/shared/R$styleable;->DoubleShadowTextView:[I

    move-object/from16 v3, p2

    move/from16 v4, p3

    move/from16 v5, p4

    invoke-virtual {v1, v3, v2, v4, v5}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v1

    :try_start_0
    sget v2, Lcom/android/systemui/shared/R$styleable;->DoubleShadowTextView_keyShadowBlur:I

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v2

    sget v4, Lcom/android/systemui/shared/R$styleable;->DoubleShadowTextView_keyShadowOffsetX:I

    invoke-virtual {v1, v4, v3}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v4

    sget v5, Lcom/android/systemui/shared/R$styleable;->DoubleShadowTextView_keyShadowOffsetY:I

    invoke-virtual {v1, v5, v3}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v5

    sget v6, Lcom/android/systemui/shared/R$styleable;->DoubleShadowTextView_keyShadowAlpha:I

    invoke-virtual {v1, v6, v3}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v6

    new-instance v7, Lcom/android/systemui/shared/shadow/DoubleShadowTextHelper$ShadowInfo;

    invoke-direct {v7, v2, v4, v5, v6}, Lcom/android/systemui/shared/shadow/DoubleShadowTextHelper$ShadowInfo;-><init>(FFFF)V

    iput-object v7, v0, Lcom/android/systemui/shared/shadow/DoubleShadowTextView;->mKeyShadowInfo:Lcom/android/systemui/shared/shadow/DoubleShadowTextHelper$ShadowInfo;

    sget v2, Lcom/android/systemui/shared/R$styleable;->DoubleShadowTextView_ambientShadowBlur:I

    invoke-virtual {v1, v2, v3}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v2

    sget v4, Lcom/android/systemui/shared/R$styleable;->DoubleShadowTextView_ambientShadowOffsetX:I

    invoke-virtual {v1, v4, v3}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v4

    sget v5, Lcom/android/systemui/shared/R$styleable;->DoubleShadowTextView_ambientShadowOffsetY:I

    invoke-virtual {v1, v5, v3}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v5

    sget v6, Lcom/android/systemui/shared/R$styleable;->DoubleShadowTextView_ambientShadowAlpha:I

    invoke-virtual {v1, v6, v3}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v3

    new-instance v6, Lcom/android/systemui/shared/shadow/DoubleShadowTextHelper$ShadowInfo;

    invoke-direct {v6, v2, v4, v5, v3}, Lcom/android/systemui/shared/shadow/DoubleShadowTextHelper$ShadowInfo;-><init>(FFFF)V

    iput-object v6, v0, Lcom/android/systemui/shared/shadow/DoubleShadowTextView;->mAmbientShadowInfo:Lcom/android/systemui/shared/shadow/DoubleShadowTextHelper$ShadowInfo;

    sget v2, Lcom/android/systemui/shared/R$styleable;->DoubleShadowTextView_drawableIconSize:I

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v2

    sget v4, Lcom/android/systemui/shared/R$styleable;->DoubleShadowTextView_drawableIconInsetSize:I

    invoke-virtual {v1, v4, v3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v10
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    const/4 v1, 0x4

    new-array v1, v1, [Landroid/graphics/drawable/Drawable;

    const/4 v4, 0x0

    aput-object v4, v1, v3

    const/4 v11, 0x1

    aput-object v4, v1, v11

    const/4 v12, 0x2

    aput-object v4, v1, v12

    const/4 v13, 0x3

    aput-object v4, v1, v13

    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->getCompoundDrawablesRelative()[Landroid/graphics/drawable/Drawable;

    move-result-object v14

    const-string v4, "compoundDrawablesRelative"

    invoke-static {v14, v4}, Lkotlin/jvm/internal/n;->d(Ljava/lang/Object;Ljava/lang/String;)V

    array-length v15, v14

    move v9, v3

    :goto_0
    if-ge v9, v15, :cond_1

    aget-object v7, v14, v9

    if-eqz v7, :cond_0

    new-instance v16, Lcom/android/systemui/shared/shadow/DoubleShadowIconDrawable;

    iget-object v5, v0, Lcom/android/systemui/shared/shadow/DoubleShadowTextView;->mKeyShadowInfo:Lcom/android/systemui/shared/shadow/DoubleShadowTextHelper$ShadowInfo;

    iget-object v6, v0, Lcom/android/systemui/shared/shadow/DoubleShadowTextView;->mAmbientShadowInfo:Lcom/android/systemui/shared/shadow/DoubleShadowTextHelper$ShadowInfo;

    move-object/from16 v4, v16

    move v8, v2

    move/from16 v17, v9

    move v9, v10

    invoke-direct/range {v4 .. v9}, Lcom/android/systemui/shared/shadow/DoubleShadowIconDrawable;-><init>(Lcom/android/systemui/shared/shadow/DoubleShadowTextHelper$ShadowInfo;Lcom/android/systemui/shared/shadow/DoubleShadowTextHelper$ShadowInfo;Landroid/graphics/drawable/Drawable;II)V

    aput-object v16, v1, v17

    goto :goto_1

    :cond_0
    move/from16 v17, v9

    :goto_1
    add-int/lit8 v9, v17, 0x1

    goto :goto_0

    :cond_1
    aget-object v2, v1, v3

    aget-object v3, v1, v11

    aget-object v4, v1, v12

    aget-object v1, v1, v13

    invoke-virtual {v0, v2, v3, v4, v1}, Landroid/widget/TextView;->setCompoundDrawablesRelative(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    return-void

    :catchall_0
    move-exception v0

    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    throw v0
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
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/systemui/shared/shadow/DoubleShadowTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public static final synthetic access$onDraw$s-938935918(Lcom/android/systemui/shared/shadow/DoubleShadowTextView;Landroid/graphics/Canvas;)V
    .locals 0

    invoke-super {p0, p1}, Landroid/widget/TextView;->onDraw(Landroid/graphics/Canvas;)V

    return-void
.end method


# virtual methods
.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 7

    const-string v0, "canvas"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v1, Lcom/android/systemui/shared/shadow/DoubleShadowTextHelper;->INSTANCE:Lcom/android/systemui/shared/shadow/DoubleShadowTextHelper;

    iget-object v2, p0, Lcom/android/systemui/shared/shadow/DoubleShadowTextView;->mKeyShadowInfo:Lcom/android/systemui/shared/shadow/DoubleShadowTextHelper$ShadowInfo;

    iget-object v3, p0, Lcom/android/systemui/shared/shadow/DoubleShadowTextView;->mAmbientShadowInfo:Lcom/android/systemui/shared/shadow/DoubleShadowTextHelper$ShadowInfo;

    new-instance v6, Lcom/android/systemui/shared/shadow/DoubleShadowTextView$onDraw$1;

    invoke-direct {v6, p0, p1}, Lcom/android/systemui/shared/shadow/DoubleShadowTextView$onDraw$1;-><init>(Lcom/android/systemui/shared/shadow/DoubleShadowTextView;Landroid/graphics/Canvas;)V

    move-object v4, p0

    move-object v5, p1

    invoke-virtual/range {v1 .. v6}, Lcom/android/systemui/shared/shadow/DoubleShadowTextHelper;->applyShadows(Lcom/android/systemui/shared/shadow/DoubleShadowTextHelper$ShadowInfo;Lcom/android/systemui/shared/shadow/DoubleShadowTextHelper$ShadowInfo;Landroid/widget/TextView;Landroid/graphics/Canvas;Ly5/a;)V

    return-void
.end method
