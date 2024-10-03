.class public Lcom/android/launcher3/icons/BaseIconFactory;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/AutoCloseable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/launcher3/icons/BaseIconFactory$FixedSizeBitmapDrawable;,
        Lcom/android/launcher3/icons/BaseIconFactory$IconOptions;,
        Lcom/android/launcher3/icons/BaseIconFactory$ClippedMonoDrawable;,
        Lcom/android/launcher3/icons/BaseIconFactory$NoopDrawable;
    }
.end annotation


# static fields
.field private static PLACEHOLDER_BACKGROUND_COLOR:I


# instance fields
.field private final mCanvas:Landroid/graphics/Canvas;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field private final mColorExtractor:Lcom/android/launcher3/icons/ColorExtractor;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field protected final mContext:Landroid/content/Context;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field private final mConverter:Lo3/a;

.field protected final mFillResIconDpi:I

.field protected final mIconBitmapSize:I

.field private final mIsUserBadged:Landroid/util/SparseBooleanArray;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field private mNormalizer:Lcom/android/launcher3/icons/IconNormalizer;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private final mOldBounds:Landroid/graphics/Rect;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field private final mPm:Landroid/content/pm/PackageManager;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field private mShadowGenerator:Lcom/android/launcher3/icons/ShadowGenerator;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private final mShapeDetection:Z

.field private mWhiteShadowLayer:Landroid/graphics/Bitmap;

.field private mWrapperBackgroundColor:I

.field private mWrapperIcon:Landroid/graphics/drawable/Drawable;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0xf5

    invoke-static {v0, v0, v0}, Landroid/graphics/Color;->rgb(III)I

    move-result v0

    sput v0, Lcom/android/launcher3/icons/BaseIconFactory;->PLACEHOLDER_BACKGROUND_COLOR:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;II)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/launcher3/icons/BaseIconFactory;-><init>(Landroid/content/Context;IIZ)V

    return-void
.end method

.method protected constructor <init>(Landroid/content/Context;IIZ)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/icons/BaseIconFactory;->mOldBounds:Landroid/graphics/Rect;

    new-instance v0, Landroid/util/SparseBooleanArray;

    invoke-direct {v0}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/icons/BaseIconFactory;->mIsUserBadged:Landroid/util/SparseBooleanArray;

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/launcher3/icons/BaseIconFactory;->mWrapperBackgroundColor:I

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/android/launcher3/icons/BaseIconFactory;->mContext:Landroid/content/Context;

    iput-boolean p4, p0, Lcom/android/launcher3/icons/BaseIconFactory;->mShapeDetection:Z

    iput p2, p0, Lcom/android/launcher3/icons/BaseIconFactory;->mFillResIconDpi:I

    iput p3, p0, Lcom/android/launcher3/icons/BaseIconFactory;->mIconBitmapSize:I

    const/16 p2, 0x82

    if-ge p3, p2, :cond_0

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "iconBitmapSize="

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p4, ",,this="

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p4, "->"

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 p4, 0x5

    const/4 v0, 0x1

    invoke-static {p4, v0}, Ly3/c;->d(IZ)Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string p4, "BaseIconFactory"

    invoke-static {p4, p2}, Ly3/c;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    iput-object p1, p0, Lcom/android/launcher3/icons/BaseIconFactory;->mPm:Landroid/content/pm/PackageManager;

    new-instance p1, Lcom/android/launcher3/icons/ColorExtractor;

    invoke-direct {p1}, Lcom/android/launcher3/icons/ColorExtractor;-><init>()V

    iput-object p1, p0, Lcom/android/launcher3/icons/BaseIconFactory;->mColorExtractor:Lcom/android/launcher3/icons/ColorExtractor;

    new-instance p1, Landroid/graphics/Canvas;

    invoke-direct {p1}, Landroid/graphics/Canvas;-><init>()V

    iput-object p1, p0, Lcom/android/launcher3/icons/BaseIconFactory;->mCanvas:Landroid/graphics/Canvas;

    new-instance p2, Landroid/graphics/PaintFlagsDrawFilter;

    const/4 p4, 0x4

    const/4 v0, 0x2

    invoke-direct {p2, p4, v0}, Landroid/graphics/PaintFlagsDrawFilter;-><init>(II)V

    invoke-virtual {p1, p2}, Landroid/graphics/Canvas;->setDrawFilter(Landroid/graphics/DrawFilter;)V

    invoke-virtual {p0}, Lcom/android/launcher3/icons/BaseIconFactory;->clear()V

    new-instance p1, Lo3/a;

    invoke-direct {p1, p3}, Lo3/a;-><init>(I)V

    iput-object p1, p0, Lcom/android/launcher3/icons/BaseIconFactory;->mConverter:Lo3/a;

    return-void
.end method

.method public static synthetic a(Lcom/android/launcher3/icons/BaseIconFactory;Landroid/graphics/drawable/Drawable;FILandroid/graphics/Canvas;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/launcher3/icons/BaseIconFactory;->lambda$createIconBitmap$0(Landroid/graphics/drawable/Drawable;FILandroid/graphics/Canvas;)V

    return-void
.end method

.method private drawIconBitmap(Landroid/graphics/Canvas;Landroid/graphics/drawable/Drawable;FILandroid/graphics/Bitmap;)V
    .locals 6
    .param p1    # Landroid/graphics/Canvas;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/graphics/drawable/Drawable;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p5    # Landroid/graphics/Bitmap;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    iget v0, p0, Lcom/android/launcher3/icons/BaseIconFactory;->mIconBitmapSize:I

    iget-object v1, p0, Lcom/android/launcher3/icons/BaseIconFactory;->mOldBounds:Landroid/graphics/Rect;

    invoke-virtual {p2}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    instance-of v1, p2, Landroid/graphics/drawable/AdaptiveIconDrawable;

    const/4 v2, 0x2

    if-eqz v1, :cond_5

    int-to-float p5, v0

    const/high16 v1, 0x3f800000    # 1.0f

    sub-float/2addr v1, p3

    mul-float/2addr p5, v1

    const/high16 p3, 0x40000000    # 2.0f

    div-float/2addr p5, p3

    invoke-static {p5}, Ljava/lang/Math;->round(F)I

    move-result p3

    sub-int p5, v0, p3

    sub-int/2addr p5, p3

    const/4 v1, 0x0

    invoke-virtual {p2, v1, v1, p5, p5}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    invoke-virtual {p2}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object p5

    iget p5, p5, Landroid/graphics/Rect;->right:I

    const/16 v1, 0x82

    if-lt p5, v1, :cond_0

    invoke-virtual {p2}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object p5

    iget p5, p5, Landroid/graphics/Rect;->bottom:I

    if-ge p5, v1, :cond_1

    :cond_0
    new-instance p5, Ljava/lang/StringBuilder;

    invoke-direct {p5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "size="

    invoke-virtual {p5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ",,bounds="

    invoke-virtual {p5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {p5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ",,this="

    invoke-virtual {p5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p5

    const-string v0, "BaseIconFactory"

    invoke-static {v0, p5}, Ly3/c;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result p5

    int-to-float p3, p3

    invoke-virtual {p1, p3, p3}, Landroid/graphics/Canvas;->translate(FF)V

    if-eq p4, v2, :cond_2

    const/4 p3, 0x4

    if-ne p4, p3, :cond_3

    :cond_2
    invoke-virtual {p0}, Lcom/android/launcher3/icons/BaseIconFactory;->getShadowGenerator()Lcom/android/launcher3/icons/ShadowGenerator;

    move-result-object p3

    move-object p4, p2

    check-cast p4, Landroid/graphics/drawable/AdaptiveIconDrawable;

    invoke-virtual {p4}, Landroid/graphics/drawable/AdaptiveIconDrawable;->getIconMask()Landroid/graphics/Path;

    move-result-object p4

    invoke-virtual {p3, p4, p1}, Lcom/android/launcher3/icons/ShadowGenerator;->addPathShadow(Landroid/graphics/Path;Landroid/graphics/Canvas;)V

    :cond_3
    instance-of p3, p2, Lcom/android/launcher3/icons/BitmapInfo$Extender;

    if-eqz p3, :cond_4

    move-object p3, p2

    check-cast p3, Lcom/android/launcher3/icons/BitmapInfo$Extender;

    invoke-interface {p3, p1}, Lcom/android/launcher3/icons/BitmapInfo$Extender;->drawForPersistence(Landroid/graphics/Canvas;)V

    goto :goto_0

    :cond_4
    invoke-virtual {p2, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    :goto_0
    invoke-virtual {p1, p5}, Landroid/graphics/Canvas;->restoreToCount(I)V

    goto/16 :goto_2

    :cond_5
    instance-of v1, p2, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v1, :cond_6

    move-object v1, p2

    check-cast v1, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v3

    if-eqz v3, :cond_6

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getDensity()I

    move-result v3

    if-nez v3, :cond_6

    iget-object v3, p0, Lcom/android/launcher3/icons/BaseIconFactory;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/graphics/drawable/BitmapDrawable;->setTargetDensity(Landroid/util/DisplayMetrics;)V

    :cond_6
    invoke-virtual {p2}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    invoke-virtual {p2}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v3

    if-lez v1, :cond_8

    if-lez v3, :cond_8

    int-to-float v4, v1

    int-to-float v5, v3

    div-float/2addr v4, v5

    if-le v1, v3, :cond_7

    int-to-float v1, v0

    div-float/2addr v1, v4

    float-to-int v1, v1

    move v3, v1

    move v1, v0

    goto :goto_1

    :cond_7
    if-le v3, v1, :cond_8

    int-to-float v1, v0

    mul-float/2addr v1, v4

    float-to-int v1, v1

    move v3, v0

    goto :goto_1

    :cond_8
    move v1, v0

    move v3, v1

    :goto_1
    sub-int v4, v0, v1

    div-int/2addr v4, v2

    sub-int v5, v0, v3

    div-int/2addr v5, v2

    add-int/2addr v1, v4

    add-int/2addr v3, v5

    invoke-virtual {p2, v4, v5, v1, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    div-int/2addr v0, v2

    int-to-float v0, v0

    invoke-virtual {p1, p3, p3, v0, v0}, Landroid/graphics/Canvas;->scale(FFFF)V

    invoke-virtual {p2, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    if-ne p4, v2, :cond_9

    if-eqz p5, :cond_9

    invoke-virtual {p0}, Lcom/android/launcher3/icons/BaseIconFactory;->getShadowGenerator()Lcom/android/launcher3/icons/ShadowGenerator;

    move-result-object p4

    invoke-virtual {p4, p5, p1}, Lcom/android/launcher3/icons/ShadowGenerator;->drawShadow(Landroid/graphics/Bitmap;Landroid/graphics/Canvas;)V

    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    invoke-virtual {p1, p3, p3, v0, v0}, Landroid/graphics/Canvas;->scale(FFFF)V

    invoke-virtual {p2, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    :cond_9
    :goto_2
    iget-object p0, p0, Lcom/android/launcher3/icons/BaseIconFactory;->mOldBounds:Landroid/graphics/Rect;

    invoke-virtual {p2, p0}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    return-void
.end method

.method public static getBadgeSizeForIconSize(I)I
    .locals 1

    int-to-float p0, p0

    const v0, 0x3ee353f8    # 0.444f

    mul-float/2addr p0, v0

    float-to-int p0, p0

    return p0
.end method

.method public static getFullResDefaultActivityIcon(I)Landroid/graphics/drawable/Drawable;
    .locals 2
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x1080093

    invoke-virtual {v0, v1, p0}, Landroid/content/res/Resources;->getDrawableForDensity(II)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-object v0, p0

    check-cast v0, Landroid/graphics/drawable/Drawable;

    return-object p0
.end method

.method private isBadForeground(Lcom/android/launcher3/icons/BaseIconFactory$IconOptions;)Z
    .locals 0

    instance-of p0, p1, Lv3/c;

    if-eqz p0, :cond_0

    check-cast p1, Lv3/c;

    invoke-virtual {p1}, Lv3/c;->f()Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-static {p0}, Ln3/a;->f(Ljava/lang/String;)Z

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method private synthetic lambda$createIconBitmap$0(Landroid/graphics/drawable/Drawable;FILandroid/graphics/Canvas;)V
    .locals 6

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p4

    move-object v2, p1

    move v3, p2

    move v4, p3

    invoke-direct/range {v0 .. v5}, Lcom/android/launcher3/icons/BaseIconFactory;->drawIconBitmap(Landroid/graphics/Canvas;Landroid/graphics/drawable/Drawable;FILandroid/graphics/Bitmap;)V

    return-void
.end method

.method private normalizeNonAdaptiveIcon(Landroid/graphics/drawable/Drawable;[FLcom/android/launcher3/icons/IconNormalizer;)Landroid/graphics/drawable/Drawable;
    .locals 4
    .param p1    # Landroid/graphics/drawable/Drawable;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    instance-of v0, p1, Landroid/graphics/drawable/AdaptiveIconDrawable;

    if-eqz v0, :cond_0

    return-object p1

    :cond_0
    iget-object v0, p0, Lcom/android/launcher3/icons/BaseIconFactory;->mWrapperIcon:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/launcher3/icons/BaseIconFactory;->mContext:Landroid/content/Context;

    sget v1, Lcom/android/launcher3/icons/R$drawable;->adaptive_icon_drawable_wrapper:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher3/icons/BaseIconFactory;->mWrapperIcon:Landroid/graphics/drawable/Drawable;

    :cond_1
    iget-object p0, p0, Lcom/android/launcher3/icons/BaseIconFactory;->mWrapperIcon:Landroid/graphics/drawable/Drawable;

    check-cast p0, Landroid/graphics/drawable/AdaptiveIconDrawable;

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v0, v1, v1}, Landroid/graphics/drawable/AdaptiveIconDrawable;->setBounds(IIII)V

    new-array v1, v1, [Z

    const/4 v2, 0x0

    invoke-virtual {p0}, Landroid/graphics/drawable/AdaptiveIconDrawable;->getIconMask()Landroid/graphics/Path;

    move-result-object v3

    invoke-virtual {p3, p1, v2, v3, v1}, Lcom/android/launcher3/icons/IconNormalizer;->getScale(Landroid/graphics/drawable/Drawable;Landroid/graphics/RectF;Landroid/graphics/Path;[Z)F

    move-result p3

    aget-boolean v1, v1, v0

    if-nez v1, :cond_2

    invoke-virtual {p0}, Landroid/graphics/drawable/AdaptiveIconDrawable;->getForeground()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    check-cast v1, Lcom/android/launcher3/icons/FixedScaleDrawable;

    invoke-virtual {v1, p1}, Landroid/graphics/drawable/DrawableWrapper;->setDrawable(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {v1, p3}, Lcom/android/launcher3/icons/FixedScaleDrawable;->setScale(F)V

    move-object p1, p0

    :cond_2
    aput p3, p2, v0

    return-object p1
.end method

.method private setMonoIcon(Landroid/graphics/drawable/Drawable;Lcom/android/launcher3/icons/BitmapInfo;[F)V
    .locals 2

    instance-of v0, p1, Landroid/graphics/drawable/AdaptiveIconDrawable;

    if-eqz v0, :cond_0

    check-cast p1, Landroid/graphics/drawable/AdaptiveIconDrawable;

    invoke-virtual {p1}, Landroid/graphics/drawable/AdaptiveIconDrawable;->getMonochrome()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    if-eqz p1, :cond_0

    new-instance v0, Lcom/android/launcher3/icons/BaseIconFactory$ClippedMonoDrawable;

    invoke-static {}, Landroid/graphics/drawable/AdaptiveIconDrawable;->getExtraInsetFraction()F

    move-result v1

    neg-float v1, v1

    invoke-direct {v0, p1, v1}, Lcom/android/launcher3/icons/BaseIconFactory$ClippedMonoDrawable;-><init>(Landroid/graphics/drawable/Drawable;F)V

    const/4 p1, 0x0

    aget p1, p3, p1

    const/4 p3, 0x1

    invoke-virtual {p0, v0, p1, p3}, Lcom/android/launcher3/icons/BaseIconFactory;->createIconBitmap(Landroid/graphics/drawable/Drawable;FI)Landroid/graphics/Bitmap;

    move-result-object p1

    invoke-virtual {p2, p1, p0}, Lcom/android/launcher3/icons/BitmapInfo;->setMonoIcon(Landroid/graphics/Bitmap;Lcom/android/launcher3/icons/BaseIconFactory;)V

    :cond_0
    return-void
.end method

.method private setNTMono(Landroid/graphics/drawable/Drawable;Lcom/android/launcher3/icons/BitmapInfo;[FLcom/android/launcher3/icons/BaseIconFactory$IconOptions;)Z
    .locals 3

    iget-object v0, p0, Lcom/android/launcher3/icons/BaseIconFactory;->mConverter:Lo3/a;

    const/4 v1, 0x0

    aget v2, p3, v1

    invoke-virtual {v0, v2}, Lo3/a;->r(F)V

    iget-object v0, p0, Lcom/android/launcher3/icons/BaseIconFactory;->mConverter:Lo3/a;

    invoke-direct {p0, p4}, Lcom/android/launcher3/icons/BaseIconFactory;->isBadForeground(Lcom/android/launcher3/icons/BaseIconFactory$IconOptions;)Z

    move-result p4

    invoke-virtual {v0, p4}, Lo3/a;->q(Z)V

    iget-object p4, p0, Lcom/android/launcher3/icons/BaseIconFactory;->mContext:Landroid/content/Context;

    invoke-virtual {p4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p4

    iget-object v0, p0, Lcom/android/launcher3/icons/BaseIconFactory;->mConverter:Lo3/a;

    iget-object v2, p2, Lcom/android/launcher3/icons/BitmapInfo;->icon:Landroid/graphics/Bitmap;

    invoke-static {p1, p4, v0, p0, v2}, Ln3/a;->e(Landroid/graphics/drawable/Drawable;Landroid/content/res/Resources;Lo3/a;Lcom/android/launcher3/icons/BaseIconFactory;Landroid/graphics/Bitmap;)Landroid/util/Pair;

    move-result-object p1

    if-eqz p1, :cond_2

    iget-object p4, p1, Landroid/util/Pair;->second:Ljava/lang/Object;

    if-nez p4, :cond_0

    goto :goto_1

    :cond_0
    instance-of v0, p4, Landroid/graphics/drawable/BitmapDrawable;

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    check-cast p4, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p4}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object p3

    goto :goto_0

    :cond_1
    check-cast p4, Landroid/graphics/drawable/Drawable;

    aget p3, p3, v1

    invoke-virtual {p0, p4, p3, v2}, Lcom/android/launcher3/icons/BaseIconFactory;->createIconBitmap(Landroid/graphics/drawable/Drawable;FI)Landroid/graphics/Bitmap;

    move-result-object p3

    :goto_0
    iget-object p1, p1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {p2, p3, p0, p1}, Lcom/android/launcher3/icons/BitmapInfo;->setMonoIcon(Landroid/graphics/Bitmap;Lcom/android/launcher3/icons/BaseIconFactory;I)V

    return v2

    :cond_2
    :goto_1
    return v1
.end method


# virtual methods
.method protected clear()V
    .locals 1

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/launcher3/icons/BaseIconFactory;->mWrapperBackgroundColor:I

    return-void
.end method

.method public close()V
    .locals 0

    invoke-virtual {p0}, Lcom/android/launcher3/icons/BaseIconFactory;->clear()V

    return-void
.end method

.method public createBadgedIconBitmap(Landroid/graphics/drawable/Drawable;)Lcom/android/launcher3/icons/BitmapInfo;
    .locals 1
    .param p1    # Landroid/graphics/drawable/Drawable;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/android/launcher3/icons/BaseIconFactory;->createBadgedIconBitmap(Landroid/graphics/drawable/Drawable;Lcom/android/launcher3/icons/BaseIconFactory$IconOptions;)Lcom/android/launcher3/icons/BitmapInfo;

    move-result-object p0

    return-object p0
.end method

.method public createBadgedIconBitmap(Landroid/graphics/drawable/Drawable;Lcom/android/launcher3/icons/BaseIconFactory$IconOptions;)Lcom/android/launcher3/icons/BitmapInfo;
    .locals 6
    .param p1    # Landroid/graphics/drawable/Drawable;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/android/launcher3/icons/BaseIconFactory$IconOptions;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroid/annotation/TargetApi;
        value = 0x21
    .end annotation

    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p2, :cond_1

    iget-boolean v2, p2, Lcom/android/launcher3/icons/BaseIconFactory$IconOptions;->mShrinkNonAdaptiveIcons:Z

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_0
    move v2, v1

    goto :goto_1

    :cond_1
    :goto_0
    move v2, v0

    :goto_1
    new-array v0, v0, [F

    const/4 v3, 0x0

    invoke-virtual {p0, p1, v2, v3, v0}, Lcom/android/launcher3/icons/BaseIconFactory;->normalizeAndWrapToAdaptiveIcon(Landroid/graphics/drawable/Drawable;ZLandroid/graphics/RectF;[F)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    aget v2, v0, v1

    if-nez p2, :cond_2

    const/4 v3, 0x2

    goto :goto_2

    :cond_2
    iget v3, p2, Lcom/android/launcher3/icons/BaseIconFactory$IconOptions;->mGenerationMode:I

    :goto_2
    invoke-virtual {p0, p1, v2, v3}, Lcom/android/launcher3/icons/BaseIconFactory;->createIconBitmap(Landroid/graphics/drawable/Drawable;FI)Landroid/graphics/Bitmap;

    move-result-object v2

    if-eqz p2, :cond_3

    iget-object v3, p2, Lcom/android/launcher3/icons/BaseIconFactory$IconOptions;->mExtractedColor:Ljava/lang/Integer;

    if-eqz v3, :cond_3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    goto :goto_3

    :cond_3
    iget-object v3, p0, Lcom/android/launcher3/icons/BaseIconFactory;->mColorExtractor:Lcom/android/launcher3/icons/ColorExtractor;

    invoke-virtual {v3, v2}, Lcom/android/launcher3/icons/ColorExtractor;->findDominantColorByHue(Landroid/graphics/Bitmap;)I

    move-result v3

    :goto_3
    invoke-static {v2, v3}, Lcom/android/launcher3/icons/BitmapInfo;->of(Landroid/graphics/Bitmap;I)Lcom/android/launcher3/icons/BitmapInfo;

    move-result-object v4

    instance-of v5, p1, Lcom/android/launcher3/icons/BitmapInfo$Extender;

    if-eqz v5, :cond_4

    check-cast p1, Lcom/android/launcher3/icons/BitmapInfo$Extender;

    aget v0, v0, v1

    invoke-interface {p1, v2, v3, p0, v0}, Lcom/android/launcher3/icons/BitmapInfo$Extender;->getExtendedInfo(Landroid/graphics/Bitmap;ILcom/android/launcher3/icons/BaseIconFactory;F)Lcom/android/launcher3/icons/BitmapInfo;

    move-result-object v4

    goto :goto_4

    :cond_4
    sget-boolean v1, Lcom/android/launcher3/icons/IconProvider;->ATLEAST_T:Z

    if-eqz v1, :cond_5

    invoke-virtual {p0}, Lcom/android/launcher3/icons/BaseIconFactory;->isMonoIconEnabled()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-direct {p0, p1, v4, v0, p2}, Lcom/android/launcher3/icons/BaseIconFactory;->setNTMono(Landroid/graphics/drawable/Drawable;Lcom/android/launcher3/icons/BitmapInfo;[FLcom/android/launcher3/icons/BaseIconFactory$IconOptions;)Z

    move-result v1

    if-nez v1, :cond_5

    invoke-direct {p0, p1, v4, v0}, Lcom/android/launcher3/icons/BaseIconFactory;->setMonoIcon(Landroid/graphics/drawable/Drawable;Lcom/android/launcher3/icons/BitmapInfo;[F)V

    :cond_5
    :goto_4
    invoke-virtual {p0, p2}, Lcom/android/launcher3/icons/BaseIconFactory;->getBitmapFlagOp(Lcom/android/launcher3/icons/BaseIconFactory$IconOptions;)Lcom/android/launcher3/util/FlagOp;

    move-result-object p0

    invoke-virtual {v4, p0}, Lcom/android/launcher3/icons/BitmapInfo;->withFlags(Lcom/android/launcher3/util/FlagOp;)Lcom/android/launcher3/icons/BitmapInfo;

    move-result-object p0

    return-object p0
.end method

.method protected createIconBitmap(Landroid/graphics/drawable/Drawable;F)Landroid/graphics/Bitmap;
    .locals 1
    .param p1    # Landroid/graphics/drawable/Drawable;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/android/launcher3/icons/BaseIconFactory;->createIconBitmap(Landroid/graphics/drawable/Drawable;FI)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method

.method protected createIconBitmap(Landroid/graphics/drawable/Drawable;FI)Landroid/graphics/Bitmap;
    .locals 7
    .param p1    # Landroid/graphics/drawable/Drawable;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    iget v0, p0, Lcom/android/launcher3/icons/BaseIconFactory;->mIconBitmapSize:I

    const/4 v1, 0x1

    if-eq p3, v1, :cond_1

    const/4 v1, 0x3

    if-eq p3, v1, :cond_0

    const/4 v1, 0x4

    if-eq p3, v1, :cond_0

    sget-object v1, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    goto :goto_0

    :cond_0
    new-instance v1, Lk/a;

    invoke-direct {v1, p0, p1, p2, p3}, Lk/a;-><init>(Lcom/android/launcher3/icons/BaseIconFactory;Landroid/graphics/drawable/Drawable;FI)V

    invoke-static {v0, v0, v1}, Lcom/android/launcher3/icons/BitmapRenderer;->createHardwareBitmap(IILcom/android/launcher3/icons/BitmapRenderer;)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0

    :cond_1
    sget-object v1, Landroid/graphics/Bitmap$Config;->ALPHA_8:Landroid/graphics/Bitmap$Config;

    :goto_0
    invoke-static {v0, v0, v1}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    if-nez p1, :cond_2

    return-object v0

    :cond_2
    iget-object v1, p0, Lcom/android/launcher3/icons/BaseIconFactory;->mCanvas:Landroid/graphics/Canvas;

    invoke-virtual {v1, v0}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    iget-object v2, p0, Lcom/android/launcher3/icons/BaseIconFactory;->mCanvas:Landroid/graphics/Canvas;

    move-object v1, p0

    move-object v3, p1

    move v4, p2

    move v5, p3

    move-object v6, v0

    invoke-direct/range {v1 .. v6}, Lcom/android/launcher3/icons/BaseIconFactory;->drawIconBitmap(Landroid/graphics/Canvas;Landroid/graphics/drawable/Drawable;FILandroid/graphics/Bitmap;)V

    iget-object p0, p0, Lcom/android/launcher3/icons/BaseIconFactory;->mCanvas:Landroid/graphics/Canvas;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    return-object v0
.end method

.method public createIconBitmap(Landroid/graphics/Bitmap;)Lcom/android/launcher3/icons/BitmapInfo;
    .locals 2

    iget v0, p0, Lcom/android/launcher3/icons/BaseIconFactory;->mIconBitmapSize:I

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    if-ne v0, v1, :cond_0

    iget v0, p0, Lcom/android/launcher3/icons/BaseIconFactory;->mIconBitmapSize:I

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    if-eq v0, v1, :cond_1

    :cond_0
    new-instance v0, Landroid/graphics/drawable/BitmapDrawable;

    iget-object v1, p0, Lcom/android/launcher3/icons/BaseIconFactory;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    const/high16 p1, 0x3f800000    # 1.0f

    invoke-virtual {p0, v0, p1}, Lcom/android/launcher3/icons/BaseIconFactory;->createIconBitmap(Landroid/graphics/drawable/Drawable;F)Landroid/graphics/Bitmap;

    move-result-object p1

    :cond_1
    iget-object p0, p0, Lcom/android/launcher3/icons/BaseIconFactory;->mColorExtractor:Lcom/android/launcher3/icons/ColorExtractor;

    invoke-virtual {p0, p1}, Lcom/android/launcher3/icons/ColorExtractor;->findDominantColorByHue(Landroid/graphics/Bitmap;)I

    move-result p0

    invoke-static {p1, p0}, Lcom/android/launcher3/icons/BitmapInfo;->of(Landroid/graphics/Bitmap;I)Lcom/android/launcher3/icons/BitmapInfo;

    move-result-object p0

    return-object p0
.end method

.method public createNormalizedBitmap(Landroid/graphics/drawable/Drawable;Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;
    .locals 11

    const/4 v0, 0x1

    new-array v1, v0, [F

    const/high16 v2, 0x3f800000    # 1.0f

    const/4 v3, 0x0

    aput v2, v1, v3

    iget v2, p0, Lcom/android/launcher3/icons/BaseIconFactory;->mIconBitmapSize:I

    if-ne p3, v2, :cond_0

    invoke-virtual {p0}, Lcom/android/launcher3/icons/BaseIconFactory;->getNormalizer()Lcom/android/launcher3/icons/IconNormalizer;

    move-result-object v0

    goto :goto_0

    :cond_0
    new-instance v4, Lcom/android/launcher3/icons/IconNormalizer;

    iget-object v5, p0, Lcom/android/launcher3/icons/BaseIconFactory;->mContext:Landroid/content/Context;

    invoke-direct {v4, v5, v2, v0}, Lcom/android/launcher3/icons/IconNormalizer;-><init>(Landroid/content/Context;IZ)V

    move-object v0, v4

    :goto_0
    instance-of v2, p1, Landroid/graphics/drawable/AdaptiveIconDrawable;

    if-nez v2, :cond_1

    invoke-direct {p0, p1, v1, v0}, Lcom/android/launcher3/icons/BaseIconFactory;->normalizeNonAdaptiveIcon(Landroid/graphics/drawable/Drawable;[FLcom/android/launcher3/icons/IconNormalizer;)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    :cond_1
    instance-of v0, p1, Landroid/graphics/drawable/AdaptiveIconDrawable;

    const/4 v2, 0x0

    if-eqz v0, :cond_3

    move-object v0, p1

    check-cast v0, Landroid/graphics/drawable/AdaptiveIconDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/AdaptiveIconDrawable;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v4

    if-eqz v4, :cond_2

    iget-object v5, p0, Lcom/android/launcher3/icons/BaseIconFactory;->mWrapperIcon:Landroid/graphics/drawable/Drawable;

    if-eq v0, v5, :cond_2

    instance-of v5, v4, Landroid/graphics/drawable/ColorDrawable;

    if-eqz v5, :cond_3

    check-cast v4, Landroid/graphics/drawable/ColorDrawable;

    invoke-virtual {v4}, Landroid/graphics/drawable/ColorDrawable;->getColor()I

    move-result v4

    if-nez v4, :cond_3

    :cond_2
    new-instance p1, Lcom/android/launcher3/icons/ClearBlackPixelsDrawable;

    invoke-direct {p1}, Lcom/android/launcher3/icons/ClearBlackPixelsDrawable;-><init>()V

    new-instance v4, Landroid/graphics/drawable/AdaptiveIconDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/AdaptiveIconDrawable;->getForeground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-direct {v4, p1, v0, v2}, Landroid/graphics/drawable/AdaptiveIconDrawable;-><init>(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    move-object v7, v4

    goto :goto_1

    :cond_3
    move-object v7, p1

    :goto_1
    if-nez p2, :cond_4

    sget-object p1, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {p3, p3, p1}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object p2

    :cond_4
    iget-object p1, p0, Lcom/android/launcher3/icons/BaseIconFactory;->mCanvas:Landroid/graphics/Canvas;

    invoke-virtual {p1, p2}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    iget-object v6, p0, Lcom/android/launcher3/icons/BaseIconFactory;->mCanvas:Landroid/graphics/Canvas;

    aget v8, v1, v3

    const/4 v9, 0x0

    move-object v5, p0

    move-object v10, p2

    invoke-direct/range {v5 .. v10}, Lcom/android/launcher3/icons/BaseIconFactory;->drawIconBitmap(Landroid/graphics/Canvas;Landroid/graphics/drawable/Drawable;FILandroid/graphics/Bitmap;)V

    iget-object p0, p0, Lcom/android/launcher3/icons/BaseIconFactory;->mCanvas:Landroid/graphics/Canvas;

    invoke-virtual {p0, v2}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    return-object p2
.end method

.method public createScaledBitmap(Landroid/graphics/drawable/Drawable;I)Landroid/graphics/Bitmap;
    .locals 3
    .param p1    # Landroid/graphics/drawable/Drawable;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    const/4 v1, 0x1

    new-array v2, v1, [F

    invoke-virtual {p0, p1, v1, v0, v2}, Lcom/android/launcher3/icons/BaseIconFactory;->normalizeAndWrapToAdaptiveIcon(Landroid/graphics/drawable/Drawable;ZLandroid/graphics/RectF;[F)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    const/4 v1, 0x0

    aget v1, v2, v1

    invoke-static {v0}, Lcom/android/launcher3/icons/ShadowGenerator;->getScaleForBounds(Landroid/graphics/RectF;)F

    move-result v0

    invoke-static {v1, v0}, Ljava/lang/Math;->min(FF)F

    move-result v0

    invoke-virtual {p0, p1, v0, p2}, Lcom/android/launcher3/icons/BaseIconFactory;->createIconBitmap(Landroid/graphics/drawable/Drawable;FI)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method

.method public createShapedIconBitmap(Landroid/graphics/Bitmap;Lcom/android/launcher3/icons/BaseIconFactory$IconOptions;)Lcom/android/launcher3/icons/BitmapInfo;
    .locals 8
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    new-instance v1, Lcom/android/launcher3/icons/BaseIconFactory$FixedSizeBitmapDrawable;

    invoke-direct {v1, p1}, Lcom/android/launcher3/icons/BaseIconFactory$FixedSizeBitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    invoke-static {}, Landroid/graphics/drawable/AdaptiveIconDrawable;->getExtraInsetFraction()F

    move-result p1

    const/high16 v0, 0x40000000    # 2.0f

    mul-float/2addr v0, p1

    const/high16 v2, 0x3f800000    # 1.0f

    add-float/2addr v0, v2

    div-float v5, p1, v0

    new-instance p1, Landroid/graphics/drawable/AdaptiveIconDrawable;

    new-instance v6, Landroid/graphics/drawable/ColorDrawable;

    const/high16 v0, -0x1000000

    invoke-direct {v6, v0}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    new-instance v7, Landroid/graphics/drawable/InsetDrawable;

    move-object v0, v7

    move v2, v5

    move v3, v5

    move v4, v5

    invoke-direct/range {v0 .. v5}, Landroid/graphics/drawable/InsetDrawable;-><init>(Landroid/graphics/drawable/Drawable;FFFF)V

    invoke-direct {p1, v6, v7}, Landroid/graphics/drawable/AdaptiveIconDrawable;-><init>(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {p0, p1, p2}, Lcom/android/launcher3/icons/BaseIconFactory;->createBadgedIconBitmap(Landroid/graphics/drawable/Drawable;Lcom/android/launcher3/icons/BaseIconFactory$IconOptions;)Lcom/android/launcher3/icons/BitmapInfo;

    move-result-object p0

    return-object p0
.end method

.method public getBitmapFlagOp(Lcom/android/launcher3/icons/BaseIconFactory$IconOptions;)Lcom/android/launcher3/util/FlagOp;
    .locals 7
    .param p1    # Lcom/android/launcher3/icons/BaseIconFactory$IconOptions;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    sget-object v0, Lcom/android/launcher3/util/FlagOp;->NO_OP:Lcom/android/launcher3/util/FlagOp;

    if-eqz p1, :cond_6

    iget-boolean v1, p1, Lcom/android/launcher3/icons/BaseIconFactory$IconOptions;->mIsInstantApp:Z

    if-eqz v1, :cond_0

    const/4 v1, 0x2

    invoke-interface {v0, v1}, Lcom/android/launcher3/util/FlagOp;->addFlag(I)Lcom/android/launcher3/util/FlagOp;

    move-result-object v0

    :cond_0
    iget-object v1, p1, Lcom/android/launcher3/icons/BaseIconFactory$IconOptions;->mUserHandle:Landroid/os/UserHandle;

    if-eqz v1, :cond_6

    invoke-virtual {v1}, Landroid/os/UserHandle;->hashCode()I

    move-result v1

    iget-object v2, p0, Lcom/android/launcher3/icons/BaseIconFactory;->mIsUserBadged:Landroid/util/SparseBooleanArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseBooleanArray;->indexOfKey(I)I

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-ltz v2, :cond_1

    iget-object p0, p0, Lcom/android/launcher3/icons/BaseIconFactory;->mIsUserBadged:Landroid/util/SparseBooleanArray;

    invoke-virtual {p0, v2}, Landroid/util/SparseBooleanArray;->valueAt(I)Z

    move-result p0

    goto :goto_1

    :cond_1
    new-instance v2, Lcom/android/launcher3/icons/BaseIconFactory$NoopDrawable;

    const/4 v5, 0x0

    invoke-direct {v2, v5}, Lcom/android/launcher3/icons/BaseIconFactory$NoopDrawable;-><init>(Lcom/android/launcher3/icons/BaseIconFactory$1;)V

    iget-object v5, p0, Lcom/android/launcher3/icons/BaseIconFactory;->mPm:Landroid/content/pm/PackageManager;

    iget-object v6, p1, Lcom/android/launcher3/icons/BaseIconFactory$IconOptions;->mUserHandle:Landroid/os/UserHandle;

    invoke-virtual {v5, v2, v6}, Landroid/content/pm/PackageManager;->getUserBadgedIcon(Landroid/graphics/drawable/Drawable;Landroid/os/UserHandle;)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    if-eq v2, v5, :cond_2

    move v2, v4

    goto :goto_0

    :cond_2
    move v2, v3

    :goto_0
    iget-object p0, p0, Lcom/android/launcher3/icons/BaseIconFactory;->mIsUserBadged:Landroid/util/SparseBooleanArray;

    invoke-virtual {p0, v1, v2}, Landroid/util/SparseBooleanArray;->put(IZ)V

    move p0, v2

    :goto_1
    sget-object v1, Ly3/b;->a:Ly3/b;

    iget-object v2, p1, Lcom/android/launcher3/icons/BaseIconFactory$IconOptions;->mUserHandle:Landroid/os/UserHandle;

    invoke-virtual {v1, v2}, Ly3/b;->b(Landroid/os/UserHandle;)Z

    move-result v1

    if-eqz v1, :cond_3

    iput-boolean v4, p1, Lcom/android/launcher3/icons/BaseIconFactory$IconOptions;->mIsCloneProfile:Z

    :cond_3
    const/4 v1, 0x4

    if-eqz p0, :cond_4

    iget-boolean v2, p1, Lcom/android/launcher3/icons/BaseIconFactory$IconOptions;->mIsCloneProfile:Z

    if-eqz v2, :cond_4

    move v2, v4

    goto :goto_2

    :cond_4
    move v2, v3

    :goto_2
    invoke-interface {v0, v1, v2}, Lcom/android/launcher3/util/FlagOp;->setFlag(IZ)Lcom/android/launcher3/util/FlagOp;

    move-result-object v0

    if-eqz p0, :cond_5

    iget-boolean p0, p1, Lcom/android/launcher3/icons/BaseIconFactory$IconOptions;->mIsCloneProfile:Z

    if-nez p0, :cond_5

    move v3, v4

    :cond_5
    invoke-interface {v0, v4, v3}, Lcom/android/launcher3/util/FlagOp;->setFlag(IZ)Lcom/android/launcher3/util/FlagOp;

    move-result-object v0

    :cond_6
    return-object v0
.end method

.method public getFillResIconDpi()I
    .locals 0

    iget p0, p0, Lcom/android/launcher3/icons/BaseIconFactory;->mFillResIconDpi:I

    return p0
.end method

.method public getIconBitmapSize()I
    .locals 0

    iget p0, p0, Lcom/android/launcher3/icons/BaseIconFactory;->mIconBitmapSize:I

    return p0
.end method

.method public getNormalizer()Lcom/android/launcher3/icons/IconNormalizer;
    .locals 4
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    iget-object v0, p0, Lcom/android/launcher3/icons/BaseIconFactory;->mNormalizer:Lcom/android/launcher3/icons/IconNormalizer;

    if-nez v0, :cond_0

    new-instance v0, Lcom/android/launcher3/icons/IconNormalizer;

    iget-object v1, p0, Lcom/android/launcher3/icons/BaseIconFactory;->mContext:Landroid/content/Context;

    iget v2, p0, Lcom/android/launcher3/icons/BaseIconFactory;->mIconBitmapSize:I

    iget-boolean v3, p0, Lcom/android/launcher3/icons/BaseIconFactory;->mShapeDetection:Z

    invoke-direct {v0, v1, v2, v3}, Lcom/android/launcher3/icons/IconNormalizer;-><init>(Landroid/content/Context;IZ)V

    iput-object v0, p0, Lcom/android/launcher3/icons/BaseIconFactory;->mNormalizer:Lcom/android/launcher3/icons/IconNormalizer;

    :cond_0
    iget-object p0, p0, Lcom/android/launcher3/icons/BaseIconFactory;->mNormalizer:Lcom/android/launcher3/icons/IconNormalizer;

    return-object p0
.end method

.method public getShadowGenerator()Lcom/android/launcher3/icons/ShadowGenerator;
    .locals 2
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    iget-object v0, p0, Lcom/android/launcher3/icons/BaseIconFactory;->mShadowGenerator:Lcom/android/launcher3/icons/ShadowGenerator;

    if-nez v0, :cond_0

    new-instance v0, Lcom/android/launcher3/icons/ShadowGenerator;

    iget v1, p0, Lcom/android/launcher3/icons/BaseIconFactory;->mIconBitmapSize:I

    invoke-direct {v0, v1}, Lcom/android/launcher3/icons/ShadowGenerator;-><init>(I)V

    iput-object v0, p0, Lcom/android/launcher3/icons/BaseIconFactory;->mShadowGenerator:Lcom/android/launcher3/icons/ShadowGenerator;

    :cond_0
    iget-object p0, p0, Lcom/android/launcher3/icons/BaseIconFactory;->mShadowGenerator:Lcom/android/launcher3/icons/ShadowGenerator;

    return-object p0
.end method

.method public getWhiteShadowLayer()Landroid/graphics/Bitmap;
    .locals 3
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    iget-object v0, p0, Lcom/android/launcher3/icons/BaseIconFactory;->mWhiteShadowLayer:Landroid/graphics/Bitmap;

    if-nez v0, :cond_0

    new-instance v0, Landroid/graphics/drawable/AdaptiveIconDrawable;

    new-instance v1, Landroid/graphics/drawable/ColorDrawable;

    const/4 v2, -0x1

    invoke-direct {v1, v2}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroid/graphics/drawable/AdaptiveIconDrawable;-><init>(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    const/4 v1, 0x4

    invoke-virtual {p0, v0, v1}, Lcom/android/launcher3/icons/BaseIconFactory;->createScaledBitmap(Landroid/graphics/drawable/Drawable;I)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher3/icons/BaseIconFactory;->mWhiteShadowLayer:Landroid/graphics/Bitmap;

    :cond_0
    iget-object p0, p0, Lcom/android/launcher3/icons/BaseIconFactory;->mWhiteShadowLayer:Landroid/graphics/Bitmap;

    return-object p0
.end method

.method protected isMonoIconEnabled()Z
    .locals 0

    sget-object p0, Lo3/b;->p:Lo3/b$b;

    invoke-virtual {p0}, Lo3/b$b;->a()Lo3/b;

    move-result-object p0

    invoke-virtual {p0}, Lo3/b;->x()Z

    move-result p0

    return p0
.end method

.method public makeDefaultIcon()Lcom/android/launcher3/icons/BitmapInfo;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    iget v0, p0, Lcom/android/launcher3/icons/BaseIconFactory;->mFillResIconDpi:I

    invoke-static {v0}, Lcom/android/launcher3/icons/BaseIconFactory;->getFullResDefaultActivityIcon(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/launcher3/icons/BaseIconFactory;->createBadgedIconBitmap(Landroid/graphics/drawable/Drawable;)Lcom/android/launcher3/icons/BitmapInfo;

    move-result-object p0

    return-object p0
.end method

.method protected normalizeAndWrapToAdaptiveIcon(Landroid/graphics/drawable/Drawable;ZLandroid/graphics/RectF;[F)Landroid/graphics/drawable/Drawable;
    .locals 5
    .param p1    # Landroid/graphics/drawable/Drawable;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p3    # Landroid/graphics/RectF;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p4    # [F
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return-object v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p2, :cond_2

    instance-of p2, p1, Landroid/graphics/drawable/AdaptiveIconDrawable;

    if-nez p2, :cond_2

    iget-object p2, p0, Lcom/android/launcher3/icons/BaseIconFactory;->mWrapperIcon:Landroid/graphics/drawable/Drawable;

    if-nez p2, :cond_1

    iget-object p2, p0, Lcom/android/launcher3/icons/BaseIconFactory;->mContext:Landroid/content/Context;

    sget v2, Lcom/android/launcher3/icons/R$drawable;->adaptive_icon_drawable_wrapper:I

    invoke-virtual {p2, v2}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    invoke-virtual {p2}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object p2

    iput-object p2, p0, Lcom/android/launcher3/icons/BaseIconFactory;->mWrapperIcon:Landroid/graphics/drawable/Drawable;

    :cond_1
    iget-object p2, p0, Lcom/android/launcher3/icons/BaseIconFactory;->mWrapperIcon:Landroid/graphics/drawable/Drawable;

    check-cast p2, Landroid/graphics/drawable/AdaptiveIconDrawable;

    const/4 v2, 0x1

    invoke-virtual {p2, v1, v1, v2, v2}, Landroid/graphics/drawable/AdaptiveIconDrawable;->setBounds(IIII)V

    new-array v2, v2, [Z

    invoke-virtual {p0}, Lcom/android/launcher3/icons/BaseIconFactory;->getNormalizer()Lcom/android/launcher3/icons/IconNormalizer;

    move-result-object v3

    invoke-virtual {p2}, Landroid/graphics/drawable/AdaptiveIconDrawable;->getIconMask()Landroid/graphics/Path;

    move-result-object v4

    invoke-virtual {v3, p1, p3, v4, v2}, Lcom/android/launcher3/icons/IconNormalizer;->getScale(Landroid/graphics/drawable/Drawable;Landroid/graphics/RectF;Landroid/graphics/Path;[Z)F

    move-result v3

    aget-boolean v2, v2, v1

    if-nez v2, :cond_3

    invoke-virtual {p2}, Landroid/graphics/drawable/AdaptiveIconDrawable;->getForeground()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    check-cast v2, Lcom/android/launcher3/icons/FixedScaleDrawable;

    invoke-virtual {v2, p1}, Landroid/graphics/drawable/DrawableWrapper;->setDrawable(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {v2, v3}, Lcom/android/launcher3/icons/FixedScaleDrawable;->setScale(F)V

    invoke-virtual {p0}, Lcom/android/launcher3/icons/BaseIconFactory;->getNormalizer()Lcom/android/launcher3/icons/IconNormalizer;

    move-result-object p1

    invoke-virtual {p1, p2, p3, v0, v0}, Lcom/android/launcher3/icons/IconNormalizer;->getScale(Landroid/graphics/drawable/Drawable;Landroid/graphics/RectF;Landroid/graphics/Path;[Z)F

    move-result v3

    invoke-virtual {p2}, Landroid/graphics/drawable/AdaptiveIconDrawable;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    check-cast p1, Landroid/graphics/drawable/ColorDrawable;

    iget p0, p0, Lcom/android/launcher3/icons/BaseIconFactory;->mWrapperBackgroundColor:I

    invoke-virtual {p1, p0}, Landroid/graphics/drawable/ColorDrawable;->setColor(I)V

    move-object p1, p2

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Lcom/android/launcher3/icons/BaseIconFactory;->getNormalizer()Lcom/android/launcher3/icons/IconNormalizer;

    move-result-object p0

    invoke-virtual {p0, p1, p3, v0, v0}, Lcom/android/launcher3/icons/IconNormalizer;->getScale(Landroid/graphics/drawable/Drawable;Landroid/graphics/RectF;Landroid/graphics/Path;[Z)F

    move-result v3

    :cond_3
    :goto_0
    aput v3, p4, v1

    return-object p1
.end method

.method public setWrapperBackgroundColor(I)V
    .locals 2

    invoke-static {p1}, Landroid/graphics/Color;->alpha(I)I

    move-result v0

    const/16 v1, 0xff

    if-ge v0, v1, :cond_0

    const/4 p1, -0x1

    :cond_0
    iput p1, p0, Lcom/android/launcher3/icons/BaseIconFactory;->mWrapperBackgroundColor:I

    return-void
.end method
