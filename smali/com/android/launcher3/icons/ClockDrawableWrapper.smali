.class public Lcom/android/launcher3/icons/ClockDrawableWrapper;
.super Landroid/graphics/drawable/AdaptiveIconDrawable;
.source "SourceFile"

# interfaces
.implements Lcom/android/launcher3/icons/BitmapInfo$Extender;


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x1a
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/launcher3/icons/ClockDrawableWrapper$AnimationInfo;,
        Lcom/android/launcher3/icons/ClockDrawableWrapper$ClockBitmapInfo;,
        Lcom/android/launcher3/icons/ClockDrawableWrapper$ClockIconDrawable;
    }
.end annotation


# static fields
.field public static final TICK_MS:J = 0xc8L


# instance fields
.field private final mAnimationInfo:Lcom/android/launcher3/icons/ClockDrawableWrapper$AnimationInfo;

.field private mThemeInfo:Lcom/android/launcher3/icons/ClockDrawableWrapper$AnimationInfo;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private constructor <init>(Landroid/graphics/drawable/AdaptiveIconDrawable;)V
    .locals 1

    invoke-virtual {p1}, Landroid/graphics/drawable/AdaptiveIconDrawable;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p1}, Landroid/graphics/drawable/AdaptiveIconDrawable;->getForeground()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-direct {p0, v0, p1}, Landroid/graphics/drawable/AdaptiveIconDrawable;-><init>(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    new-instance p1, Lcom/android/launcher3/icons/ClockDrawableWrapper$AnimationInfo;

    const/4 v0, 0x0

    invoke-direct {p1, v0}, Lcom/android/launcher3/icons/ClockDrawableWrapper$AnimationInfo;-><init>(Lcom/android/launcher3/icons/ClockDrawableWrapper$1;)V

    iput-object p1, p0, Lcom/android/launcher3/icons/ClockDrawableWrapper;->mAnimationInfo:Lcom/android/launcher3/icons/ClockDrawableWrapper$AnimationInfo;

    iput-object v0, p0, Lcom/android/launcher3/icons/ClockDrawableWrapper;->mThemeInfo:Lcom/android/launcher3/icons/ClockDrawableWrapper$AnimationInfo;

    return-void
.end method

.method public static synthetic a(Lcom/android/launcher3/icons/IconProvider$ThemeData;I)Landroid/graphics/drawable/Drawable;
    .locals 0

    invoke-static {p0, p1}, Lcom/android/launcher3/icons/ClockDrawableWrapper;->lambda$applyThemeData$0(Lcom/android/launcher3/icons/IconProvider$ThemeData;I)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    return-object p0
.end method

.method private applyThemeData(Lcom/android/launcher3/icons/IconProvider$ThemeData;)V
    .locals 8

    sget-boolean v0, Lcom/android/launcher3/icons/IconProvider;->ATLEAST_T:Z

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/launcher3/icons/ClockDrawableWrapper;->mThemeInfo:Lcom/android/launcher3/icons/ClockDrawableWrapper$AnimationInfo;

    if-eqz v0, :cond_0

    goto :goto_2

    :cond_0
    :try_start_0
    iget-object v0, p1, Lcom/android/launcher3/icons/IconProvider$ThemeData;->mResources:Landroid/content/res/Resources;

    iget v1, p1, Lcom/android/launcher3/icons/IconProvider$ThemeData;->mResID:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->obtainTypedArray(I)Landroid/content/res/TypedArray;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->length()I

    move-result v1

    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_2

    add-int/lit8 v4, v3, 0x1

    invoke-virtual {v0, v4}, Landroid/content/res/TypedArray;->peekValue(I)Landroid/util/TypedValue;

    move-result-object v4

    invoke-virtual {v0, v3}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v5

    iget v6, v4, Landroid/util/TypedValue;->type:I

    const/16 v7, 0x10

    if-lt v6, v7, :cond_1

    const/16 v7, 0x1f

    if-gt v6, v7, :cond_1

    iget v4, v4, Landroid/util/TypedValue;->data:I

    goto :goto_1

    :cond_1
    iget v4, v4, Landroid/util/TypedValue;->resourceId:I

    :goto_1
    invoke-virtual {v2, v5, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    add-int/lit8 v3, v3, 0x2

    goto :goto_0

    :cond_2
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    new-instance v0, Lk/c;

    invoke-direct {v0, p1}, Lk/c;-><init>(Lcom/android/launcher3/icons/IconProvider$ThemeData;)V

    invoke-static {v2, v0}, Lcom/android/launcher3/icons/ClockDrawableWrapper;->forExtras(Landroid/os/Bundle;Ljava/util/function/IntFunction;)Lcom/android/launcher3/icons/ClockDrawableWrapper;

    move-result-object p1

    if-eqz p1, :cond_3

    iget-object p1, p1, Lcom/android/launcher3/icons/ClockDrawableWrapper;->mAnimationInfo:Lcom/android/launcher3/icons/ClockDrawableWrapper$AnimationInfo;

    iput-object p1, p0, Lcom/android/launcher3/icons/ClockDrawableWrapper;->mThemeInfo:Lcom/android/launcher3/icons/ClockDrawableWrapper$AnimationInfo;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception p0

    const-string p1, "ClockDrawableWrapper"

    const-string v0, "Error loading themed clock"

    invoke-static {p1, v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_3
    :goto_2
    return-void
.end method

.method public static synthetic b(Landroid/content/res/Resources;II)Landroid/graphics/drawable/Drawable;
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/android/launcher3/icons/ClockDrawableWrapper;->lambda$forPackage$1(Landroid/content/res/Resources;II)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    return-object p0
.end method

.method private static checkForegroundLayer(Lcom/android/launcher3/icons/ClockDrawableWrapper$AnimationInfo;Landroid/graphics/drawable/LayerDrawable;)V
    .locals 3

    invoke-virtual {p1}, Landroid/graphics/drawable/LayerDrawable;->getNumberOfLayers()I

    move-result v0

    iget v1, p0, Lcom/android/launcher3/icons/ClockDrawableWrapper$AnimationInfo;->hourLayerIndex:I

    const/4 v2, -0x1

    if-ltz v1, :cond_0

    if-lt v1, v0, :cond_1

    :cond_0
    iput v2, p0, Lcom/android/launcher3/icons/ClockDrawableWrapper$AnimationInfo;->hourLayerIndex:I

    :cond_1
    iget v1, p0, Lcom/android/launcher3/icons/ClockDrawableWrapper$AnimationInfo;->minuteLayerIndex:I

    if-ltz v1, :cond_2

    if-lt v1, v0, :cond_3

    :cond_2
    iput v2, p0, Lcom/android/launcher3/icons/ClockDrawableWrapper$AnimationInfo;->minuteLayerIndex:I

    :cond_3
    iget v1, p0, Lcom/android/launcher3/icons/ClockDrawableWrapper$AnimationInfo;->secondLayerIndex:I

    if-ltz v1, :cond_4

    if-lt v1, v0, :cond_5

    :cond_4
    iput v2, p0, Lcom/android/launcher3/icons/ClockDrawableWrapper$AnimationInfo;->secondLayerIndex:I

    :cond_5
    invoke-static {p0, p1}, Lcom/android/launcher3/icons/ClockDrawableWrapper;->sanitizeLayerIndex(Lcom/android/launcher3/icons/ClockDrawableWrapper$AnimationInfo;Landroid/graphics/drawable/LayerDrawable;)V

    return-void
.end method

.method private static forExtras(Landroid/os/Bundle;Ljava/util/function/IntFunction;)Lcom/android/launcher3/icons/ClockDrawableWrapper;
    .locals 5
    .annotation build Landroid/annotation/TargetApi;
        value = 0x21
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Bundle;",
            "Ljava/util/function/IntFunction<",
            "Landroid/graphics/drawable/Drawable;",
            ">;)",
            "Lcom/android/launcher3/icons/ClockDrawableWrapper;"
        }
    .end annotation

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    :cond_0
    const-string v1, "com.android.launcher3.LEVEL_PER_TICK_ICON_ROUND"

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    if-nez v1, :cond_1

    return-object v0

    :cond_1
    invoke-interface {p1, v1}, Ljava/util/function/IntFunction;->apply(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/graphics/drawable/Drawable;

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    instance-of v1, p1, Landroid/graphics/drawable/AdaptiveIconDrawable;

    if-nez v1, :cond_2

    return-object v0

    :cond_2
    move-object v0, p1

    check-cast v0, Landroid/graphics/drawable/AdaptiveIconDrawable;

    new-instance v1, Lcom/android/launcher3/icons/ClockDrawableWrapper;

    invoke-direct {v1, v0}, Lcom/android/launcher3/icons/ClockDrawableWrapper;-><init>(Landroid/graphics/drawable/AdaptiveIconDrawable;)V

    iget-object v3, v1, Lcom/android/launcher3/icons/ClockDrawableWrapper;->mAnimationInfo:Lcom/android/launcher3/icons/ClockDrawableWrapper$AnimationInfo;

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    move-result-object p1

    iput-object p1, v3, Lcom/android/launcher3/icons/ClockDrawableWrapper$AnimationInfo;->baseDrawableState:Landroid/graphics/drawable/Drawable$ConstantState;

    const-string p1, "com.android.launcher3.HOUR_LAYER_INDEX"

    const/4 v4, -0x1

    invoke-virtual {p0, p1, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result p1

    iput p1, v3, Lcom/android/launcher3/icons/ClockDrawableWrapper$AnimationInfo;->hourLayerIndex:I

    const-string p1, "com.android.launcher3.MINUTE_LAYER_INDEX"

    invoke-virtual {p0, p1, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result p1

    iput p1, v3, Lcom/android/launcher3/icons/ClockDrawableWrapper$AnimationInfo;->minuteLayerIndex:I

    const-string p1, "com.android.launcher3.SECOND_LAYER_INDEX"

    invoke-virtual {p0, p1, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result p1

    iput p1, v3, Lcom/android/launcher3/icons/ClockDrawableWrapper$AnimationInfo;->secondLayerIndex:I

    const-string p1, "com.android.launcher3.DEFAULT_HOUR"

    invoke-virtual {p0, p1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result p1

    iput p1, v3, Lcom/android/launcher3/icons/ClockDrawableWrapper$AnimationInfo;->defaultHour:I

    const-string p1, "com.android.launcher3.DEFAULT_MINUTE"

    invoke-virtual {p0, p1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result p1

    iput p1, v3, Lcom/android/launcher3/icons/ClockDrawableWrapper$AnimationInfo;->defaultMinute:I

    const-string p1, "com.android.launcher3.DEFAULT_SECOND"

    invoke-virtual {p0, p1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result p0

    iput p0, v3, Lcom/android/launcher3/icons/ClockDrawableWrapper$AnimationInfo;->defaultSecond:I

    invoke-virtual {v1}, Landroid/graphics/drawable/AdaptiveIconDrawable;->getForeground()Landroid/graphics/drawable/Drawable;

    move-result-object p0

    check-cast p0, Landroid/graphics/drawable/LayerDrawable;

    invoke-static {v3, p0}, Lcom/android/launcher3/icons/ClockDrawableWrapper;->checkForegroundLayer(Lcom/android/launcher3/icons/ClockDrawableWrapper$AnimationInfo;Landroid/graphics/drawable/LayerDrawable;)V

    sget-boolean p1, Lcom/android/launcher3/icons/IconProvider;->ATLEAST_T:Z

    if-eqz p1, :cond_3

    invoke-virtual {v0}, Landroid/graphics/drawable/AdaptiveIconDrawable;->getMonochrome()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    instance-of p1, p1, Landroid/graphics/drawable/LayerDrawable;

    if-eqz p1, :cond_3

    new-instance p1, Landroid/graphics/drawable/AdaptiveIconDrawable;

    new-instance v2, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v2, v4}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v0}, Landroid/graphics/drawable/AdaptiveIconDrawable;->getMonochrome()Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-direct {p1, v2, v4}, Landroid/graphics/drawable/AdaptiveIconDrawable;-><init>(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {v3, p1}, Lcom/android/launcher3/icons/ClockDrawableWrapper$AnimationInfo;->copyForIcon(Landroid/graphics/drawable/Drawable;)Lcom/android/launcher3/icons/ClockDrawableWrapper$AnimationInfo;

    move-result-object p1

    iput-object p1, v1, Lcom/android/launcher3/icons/ClockDrawableWrapper;->mThemeInfo:Lcom/android/launcher3/icons/ClockDrawableWrapper$AnimationInfo;

    invoke-virtual {v0}, Landroid/graphics/drawable/AdaptiveIconDrawable;->getMonochrome()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/LayerDrawable;

    invoke-static {p1, v0}, Lcom/android/launcher3/icons/ClockDrawableWrapper;->checkForegroundLayer(Lcom/android/launcher3/icons/ClockDrawableWrapper$AnimationInfo;Landroid/graphics/drawable/LayerDrawable;)V

    :cond_3
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object p1

    invoke-virtual {v3, p1, p0}, Lcom/android/launcher3/icons/ClockDrawableWrapper$AnimationInfo;->applyTime(Ljava/util/Calendar;Landroid/graphics/drawable/LayerDrawable;)Z

    return-object v1
.end method

.method public static forPackage(Landroid/content/Context;Ljava/lang/String;ILcom/android/launcher3/icons/IconProvider$ThemeData;)Lcom/android/launcher3/icons/ClockDrawableWrapper;
    .locals 1
    .param p3    # Lcom/android/launcher3/icons/IconProvider$ThemeData;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    const/16 v0, 0x2080

    invoke-virtual {p0, p1, v0}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Landroid/content/pm/ApplicationInfo;)Landroid/content/res/Resources;

    move-result-object p0

    iget-object p1, p1, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    new-instance v0, Lk/b;

    invoke-direct {v0, p0, p2}, Lk/b;-><init>(Landroid/content/res/Resources;I)V

    invoke-static {p1, v0}, Lcom/android/launcher3/icons/ClockDrawableWrapper;->forExtras(Landroid/os/Bundle;Ljava/util/function/IntFunction;)Lcom/android/launcher3/icons/ClockDrawableWrapper;

    move-result-object p0

    if-eqz p0, :cond_0

    if-eqz p3, :cond_0

    invoke-direct {p0, p3}, Lcom/android/launcher3/icons/ClockDrawableWrapper;->applyThemeData(Lcom/android/launcher3/icons/IconProvider$ThemeData;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    return-object p0

    :catch_0
    move-exception p0

    const-string p1, "ClockDrawableWrapper"

    const-string p2, "Unable to load clock drawable info"

    invoke-static {p1, p2, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 p0, 0x0

    return-object p0
.end method

.method private static synthetic lambda$applyThemeData$0(Lcom/android/launcher3/icons/IconProvider$ThemeData;I)Landroid/graphics/drawable/Drawable;
    .locals 2

    new-instance v0, Landroid/graphics/drawable/ColorDrawable;

    const/4 v1, -0x1

    invoke-direct {v0, v1}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    iget-object p0, p0, Lcom/android/launcher3/icons/IconProvider$ThemeData;->mResources:Landroid/content/res/Resources;

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object p0

    new-instance p1, Landroid/graphics/drawable/AdaptiveIconDrawable;

    invoke-direct {p1, v0, p0}, Landroid/graphics/drawable/AdaptiveIconDrawable;-><init>(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    return-object p1
.end method

.method private static synthetic lambda$forPackage$1(Landroid/content/res/Resources;II)Landroid/graphics/drawable/Drawable;
    .locals 0

    invoke-virtual {p0, p2, p1}, Landroid/content/res/Resources;->getDrawableForDensity(II)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    return-object p0
.end method

.method private resetLevel(Landroid/graphics/drawable/LayerDrawable;I)V
    .locals 0

    const/4 p0, -0x1

    if-eq p2, p0, :cond_0

    invoke-virtual {p1, p2}, Landroid/graphics/drawable/LayerDrawable;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroid/graphics/drawable/Drawable;->setLevel(I)Z

    :cond_0
    return-void
.end method

.method private static sanitizeLayerIndex(Lcom/android/launcher3/icons/ClockDrawableWrapper$AnimationInfo;Landroid/graphics/drawable/LayerDrawable;)V
    .locals 7

    const/4 v0, 0x3

    new-array v1, v0, [I

    fill-array-data v1, :array_0

    invoke-virtual {p1}, Landroid/graphics/drawable/LayerDrawable;->getNumberOfLayers()I

    move-result v2

    const/4 v3, 0x0

    move v4, v3

    move v5, v4

    :goto_0
    if-ge v4, v2, :cond_1

    if-ge v5, v0, :cond_1

    invoke-virtual {p1, v4}, Landroid/graphics/drawable/LayerDrawable;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    instance-of v6, v6, Landroid/graphics/drawable/RotateDrawable;

    if-eqz v6, :cond_0

    aput v4, v1, v5

    add-int/lit8 v5, v5, 0x1

    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_1
    iget p1, p0, Lcom/android/launcher3/icons/ClockDrawableWrapper$AnimationInfo;->hourLayerIndex:I

    const-string v0, " to "

    const-string v2, "ClockDrawableWrapper"

    const/4 v4, -0x1

    if-eq p1, v4, :cond_2

    aget v5, v1, v3

    if-eq v5, p1, :cond_2

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "sanitizeLayerIndex: hourLayerIndex from "

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, p0, Lcom/android/launcher3/icons/ClockDrawableWrapper$AnimationInfo;->hourLayerIndex:I

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget v5, v1, v3

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    aget p1, v1, v3

    iput p1, p0, Lcom/android/launcher3/icons/ClockDrawableWrapper$AnimationInfo;->hourLayerIndex:I

    :cond_2
    iget p1, p0, Lcom/android/launcher3/icons/ClockDrawableWrapper$AnimationInfo;->minuteLayerIndex:I

    if-eq p1, v4, :cond_3

    const/4 v3, 0x1

    aget v5, v1, v3

    if-eq v5, p1, :cond_3

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "sanitizeLayerIndex: minuteLayerIndex from "

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, p0, Lcom/android/launcher3/icons/ClockDrawableWrapper$AnimationInfo;->minuteLayerIndex:I

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget v5, v1, v3

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    aget p1, v1, v3

    iput p1, p0, Lcom/android/launcher3/icons/ClockDrawableWrapper$AnimationInfo;->minuteLayerIndex:I

    :cond_3
    iget p1, p0, Lcom/android/launcher3/icons/ClockDrawableWrapper$AnimationInfo;->secondLayerIndex:I

    if-eq p1, v4, :cond_4

    const/4 v3, 0x2

    aget v4, v1, v3

    if-eq v4, p1, :cond_4

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "sanitizeLayerIndex: secondLayerIndex from "

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Lcom/android/launcher3/icons/ClockDrawableWrapper$AnimationInfo;->secondLayerIndex:I

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget v0, v1, v3

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    aget p1, v1, v3

    iput p1, p0, Lcom/android/launcher3/icons/ClockDrawableWrapper$AnimationInfo;->secondLayerIndex:I

    :cond_4
    return-void

    :array_0
    .array-data 4
        -0x1
        -0x1
        -0x1
    .end array-data
.end method


# virtual methods
.method public drawForPersistence(Landroid/graphics/Canvas;)V
    .locals 2

    invoke-virtual {p0}, Landroid/graphics/drawable/AdaptiveIconDrawable;->getForeground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/LayerDrawable;

    iget-object v1, p0, Lcom/android/launcher3/icons/ClockDrawableWrapper;->mAnimationInfo:Lcom/android/launcher3/icons/ClockDrawableWrapper$AnimationInfo;

    iget v1, v1, Lcom/android/launcher3/icons/ClockDrawableWrapper$AnimationInfo;->hourLayerIndex:I

    invoke-direct {p0, v0, v1}, Lcom/android/launcher3/icons/ClockDrawableWrapper;->resetLevel(Landroid/graphics/drawable/LayerDrawable;I)V

    iget-object v1, p0, Lcom/android/launcher3/icons/ClockDrawableWrapper;->mAnimationInfo:Lcom/android/launcher3/icons/ClockDrawableWrapper$AnimationInfo;

    iget v1, v1, Lcom/android/launcher3/icons/ClockDrawableWrapper$AnimationInfo;->minuteLayerIndex:I

    invoke-direct {p0, v0, v1}, Lcom/android/launcher3/icons/ClockDrawableWrapper;->resetLevel(Landroid/graphics/drawable/LayerDrawable;I)V

    iget-object v1, p0, Lcom/android/launcher3/icons/ClockDrawableWrapper;->mAnimationInfo:Lcom/android/launcher3/icons/ClockDrawableWrapper$AnimationInfo;

    iget v1, v1, Lcom/android/launcher3/icons/ClockDrawableWrapper$AnimationInfo;->secondLayerIndex:I

    invoke-direct {p0, v0, v1}, Lcom/android/launcher3/icons/ClockDrawableWrapper;->resetLevel(Landroid/graphics/drawable/LayerDrawable;I)V

    invoke-virtual {p0, p1}, Landroid/graphics/drawable/AdaptiveIconDrawable;->draw(Landroid/graphics/Canvas;)V

    iget-object p1, p0, Lcom/android/launcher3/icons/ClockDrawableWrapper;->mAnimationInfo:Lcom/android/launcher3/icons/ClockDrawableWrapper$AnimationInfo;

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    invoke-virtual {p0}, Landroid/graphics/drawable/AdaptiveIconDrawable;->getForeground()Landroid/graphics/drawable/Drawable;

    move-result-object p0

    check-cast p0, Landroid/graphics/drawable/LayerDrawable;

    invoke-virtual {p1, v0, p0}, Lcom/android/launcher3/icons/ClockDrawableWrapper$AnimationInfo;->applyTime(Ljava/util/Calendar;Landroid/graphics/drawable/LayerDrawable;)Z

    return-void
.end method

.method public bridge synthetic getExtendedInfo(Landroid/graphics/Bitmap;ILcom/android/launcher3/icons/BaseIconFactory;F)Lcom/android/launcher3/icons/BitmapInfo;
    .locals 0

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/launcher3/icons/ClockDrawableWrapper;->getExtendedInfo(Landroid/graphics/Bitmap;ILcom/android/launcher3/icons/BaseIconFactory;F)Lcom/android/launcher3/icons/ClockDrawableWrapper$ClockBitmapInfo;

    move-result-object p0

    return-object p0
.end method

.method public getExtendedInfo(Landroid/graphics/Bitmap;ILcom/android/launcher3/icons/BaseIconFactory;F)Lcom/android/launcher3/icons/ClockDrawableWrapper$ClockBitmapInfo;
    .locals 11

    new-instance v0, Landroid/graphics/drawable/AdaptiveIconDrawable;

    invoke-virtual {p0}, Landroid/graphics/drawable/AdaptiveIconDrawable;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable$ConstantState;->newDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroid/graphics/drawable/AdaptiveIconDrawable;-><init>(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    const/4 v1, 0x4

    invoke-virtual {p3, v0, v1}, Lcom/android/launcher3/icons/BaseIconFactory;->createScaledBitmap(Landroid/graphics/drawable/Drawable;I)Landroid/graphics/Bitmap;

    move-result-object v8

    invoke-virtual {p3}, Lcom/android/launcher3/icons/BaseIconFactory;->isMonoIconEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher3/icons/ClockDrawableWrapper;->mThemeInfo:Lcom/android/launcher3/icons/ClockDrawableWrapper$AnimationInfo;

    move-object v9, v0

    goto :goto_0

    :cond_0
    move-object v9, v2

    :goto_0
    if-nez v9, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {p3}, Lcom/android/launcher3/icons/BaseIconFactory;->getWhiteShadowLayer()Landroid/graphics/Bitmap;

    move-result-object v2

    :goto_1
    move-object v10, v2

    new-instance p3, Lcom/android/launcher3/icons/ClockDrawableWrapper$ClockBitmapInfo;

    iget-object v7, p0, Lcom/android/launcher3/icons/ClockDrawableWrapper;->mAnimationInfo:Lcom/android/launcher3/icons/ClockDrawableWrapper$AnimationInfo;

    move-object v3, p3

    move-object v4, p1

    move v5, p2

    move v6, p4

    invoke-direct/range {v3 .. v10}, Lcom/android/launcher3/icons/ClockDrawableWrapper$ClockBitmapInfo;-><init>(Landroid/graphics/Bitmap;IFLcom/android/launcher3/icons/ClockDrawableWrapper$AnimationInfo;Landroid/graphics/Bitmap;Lcom/android/launcher3/icons/ClockDrawableWrapper$AnimationInfo;Landroid/graphics/Bitmap;)V

    return-object p3
.end method

.method public getMonochrome()Landroid/graphics/drawable/Drawable;
    .locals 3

    iget-object v0, p0, Lcom/android/launcher3/icons/ClockDrawableWrapper;->mThemeInfo:Lcom/android/launcher3/icons/ClockDrawableWrapper$AnimationInfo;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    iget-object v0, v0, Lcom/android/launcher3/icons/ClockDrawableWrapper$AnimationInfo;->baseDrawableState:Landroid/graphics/drawable/Drawable$ConstantState;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable$ConstantState;->newDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    instance-of v2, v0, Landroid/graphics/drawable/AdaptiveIconDrawable;

    if-eqz v2, :cond_1

    check-cast v0, Landroid/graphics/drawable/AdaptiveIconDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/AdaptiveIconDrawable;->getForeground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iget-object p0, p0, Lcom/android/launcher3/icons/ClockDrawableWrapper;->mThemeInfo:Lcom/android/launcher3/icons/ClockDrawableWrapper$AnimationInfo;

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    move-object v2, v0

    check-cast v2, Landroid/graphics/drawable/LayerDrawable;

    invoke-virtual {p0, v1, v2}, Lcom/android/launcher3/icons/ClockDrawableWrapper$AnimationInfo;->applyTime(Ljava/util/Calendar;Landroid/graphics/drawable/LayerDrawable;)Z

    return-object v0

    :cond_1
    return-object v1
.end method
