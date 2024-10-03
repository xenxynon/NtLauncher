.class public Lcom/android/launcher3/widget/DatabaseWidgetPreviewLoader;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/launcher3/widget/DatabaseWidgetPreviewLoader;->mContext:Landroid/content/Context;

    return-void
.end method

.method public static synthetic a(Lcom/android/launcher3/widget/DatabaseWidgetPreviewLoader;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/launcher3/widget/DatabaseWidgetPreviewLoader;->mutateOnMainThread(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic b(Lcom/android/launcher3/widget/DatabaseWidgetPreviewLoader;ZLandroid/graphics/drawable/Drawable;IIIILcom/android/launcher3/widget/LauncherAppWidgetProviderInfo;Lcom/android/launcher3/DeviceProfile;FLandroid/graphics/Canvas;)V
    .locals 0

    invoke-direct/range {p0 .. p10}, Lcom/android/launcher3/widget/DatabaseWidgetPreviewLoader;->lambda$generateWidgetPreview$1(ZLandroid/graphics/drawable/Drawable;IIIILcom/android/launcher3/widget/LauncherAppWidgetProviderInfo;Lcom/android/launcher3/DeviceProfile;FLandroid/graphics/Canvas;)V

    return-void
.end method

.method public static synthetic c(Lcom/android/launcher3/widget/DatabaseWidgetPreviewLoader;Lcom/android/launcher3/model/WidgetItem;Landroid/util/Size;)Landroid/graphics/Bitmap;
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/launcher3/widget/DatabaseWidgetPreviewLoader;->lambda$loadPreview$0(Lcom/android/launcher3/model/WidgetItem;Landroid/util/Size;)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic d(Lcom/android/launcher3/widget/DatabaseWidgetPreviewLoader;ILcom/android/launcher3/pm/ShortcutConfigActivityInfo;IILandroid/graphics/Canvas;)V
    .locals 0

    invoke-direct/range {p0 .. p5}, Lcom/android/launcher3/widget/DatabaseWidgetPreviewLoader;->lambda$generateShortcutPreview$2(ILcom/android/launcher3/pm/ShortcutConfigActivityInfo;IILandroid/graphics/Canvas;)V

    return-void
.end method

.method private drawBoxWithShadow(Landroid/graphics/Canvas;IIII)Landroid/graphics/RectF;
    .locals 3

    iget-object v0, p0, Lcom/android/launcher3/widget/DatabaseWidgetPreviewLoader;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    new-instance v1, Lcom/android/launcher3/icons/ShadowGenerator$Builder;

    const/4 v2, -0x1

    invoke-direct {v1, v2}, Lcom/android/launcher3/icons/ShadowGenerator$Builder;-><init>(I)V

    const v2, 0x7f070599

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    iput v2, v1, Lcom/android/launcher3/icons/ShadowGenerator$Builder;->shadowBlur:F

    iget-object p0, p0, Lcom/android/launcher3/widget/DatabaseWidgetPreviewLoader;->mContext:Landroid/content/Context;

    invoke-static {p0}, Lcom/android/launcher3/views/ActivityContext;->lookupContext(Landroid/content/Context;)Landroid/content/Context;

    move-result-object p0

    invoke-static {p0, p4, p5}, Lcom/android/launcher3/widget/RoundedCornerEnforcement;->computeWidgetRadiusWithProfile(Landroid/content/Context;II)F

    move-result p0

    iput p0, v1, Lcom/android/launcher3/icons/ShadowGenerator$Builder;->radius:F

    const p0, 0x7f070598

    invoke-virtual {v0, p0}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p0

    iput p0, v1, Lcom/android/launcher3/icons/ShadowGenerator$Builder;->keyShadowDistance:F

    iget-object p4, v1, Lcom/android/launcher3/icons/ShadowGenerator$Builder;->bounds:Landroid/graphics/RectF;

    iget p5, v1, Lcom/android/launcher3/icons/ShadowGenerator$Builder;->shadowBlur:F

    int-to-float p2, p2

    sub-float/2addr p2, p5

    int-to-float p3, p3

    sub-float/2addr p3, p5

    sub-float/2addr p3, p0

    invoke-virtual {p4, p5, p5, p2, p3}, Landroid/graphics/RectF;->set(FFFF)V

    invoke-virtual {v1, p1}, Lcom/android/launcher3/icons/ShadowGenerator$Builder;->drawShadow(Landroid/graphics/Canvas;)V

    iget-object p0, v1, Lcom/android/launcher3/icons/ShadowGenerator$Builder;->bounds:Landroid/graphics/RectF;

    return-object p0
.end method

.method private generatePreview(Lcom/android/launcher3/model/WidgetItem;II)Landroid/graphics/Bitmap;
    .locals 2

    iget-object v0, p1, Lcom/android/launcher3/model/WidgetItem;->widgetInfo:Lcom/android/launcher3/widget/LauncherAppWidgetProviderInfo;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {p0, v0, p2, v1}, Lcom/android/launcher3/widget/DatabaseWidgetPreviewLoader;->generateWidgetPreview(Lcom/android/launcher3/widget/LauncherAppWidgetProviderInfo;I[I)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0

    :cond_0
    instance-of v0, p1, Lg4/a;

    if-eqz v0, :cond_1

    check-cast p1, Lg4/a;

    invoke-virtual {p1}, Lg4/a;->a()Lcom/nothing/launcher/card/CardWidgetProviderInfo;

    move-result-object p1

    invoke-virtual {p0, p1, p2, v1}, Lcom/android/launcher3/widget/DatabaseWidgetPreviewLoader;->generateCardPreview(Lcom/nothing/launcher/card/CardWidgetProviderInfo;I[I)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0

    :cond_1
    iget-object p1, p1, Lcom/android/launcher3/model/WidgetItem;->activityInfo:Lcom/android/launcher3/pm/ShortcutConfigActivityInfo;

    invoke-direct {p0, p1, p2, p3}, Lcom/android/launcher3/widget/DatabaseWidgetPreviewLoader;->generateShortcutPreview(Lcom/android/launcher3/pm/ShortcutConfigActivityInfo;II)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method

.method private generateShortcutPreview(Lcom/android/launcher3/pm/ShortcutConfigActivityInfo;II)Landroid/graphics/Bitmap;
    .locals 7

    iget-object v0, p0, Lcom/android/launcher3/widget/DatabaseWidgetPreviewLoader;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/launcher3/views/ActivityContext;->lookupContext(Landroid/content/Context;)Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/views/ActivityContext;

    invoke-interface {v0}, Lcom/android/launcher3/views/ActivityContext;->getDeviceProfile()Lj3/a;

    move-result-object v0

    iget v6, v0, Lcom/android/launcher3/DeviceProfile;->allAppsIconSizePx:I

    iget-object v0, p0, Lcom/android/launcher3/widget/DatabaseWidgetPreviewLoader;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f07059a

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    mul-int/lit8 v0, v5, 0x2

    add-int/2addr v0, v6

    if-lt p3, v0, :cond_0

    if-lt p2, v0, :cond_0

    new-instance p2, Lcom/android/launcher3/widget/b;

    move-object v1, p2

    move-object v2, p0

    move v3, v0

    move-object v4, p1

    invoke-direct/range {v1 .. v6}, Lcom/android/launcher3/widget/b;-><init>(Lcom/android/launcher3/widget/DatabaseWidgetPreviewLoader;ILcom/android/launcher3/pm/ShortcutConfigActivityInfo;II)V

    invoke-static {v0, v0, p2}, Lcom/android/launcher3/icons/BitmapRenderer;->createHardwareBitmap(IILcom/android/launcher3/icons/BitmapRenderer;)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0

    :cond_0
    new-instance p0, Ljava/lang/RuntimeException;

    const-string p1, "Max size is too small for preview"

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private synthetic lambda$generateShortcutPreview$2(ILcom/android/launcher3/pm/ShortcutConfigActivityInfo;IILandroid/graphics/Canvas;)V
    .locals 6

    const/4 v4, 0x1

    const/4 v5, 0x1

    move-object v0, p0

    move-object v1, p5

    move v2, p1

    move v3, p1

    invoke-direct/range {v0 .. v5}, Lcom/android/launcher3/widget/DatabaseWidgetPreviewLoader;->drawBoxWithShadow(Landroid/graphics/Canvas;IIII)Landroid/graphics/RectF;

    iget-object p1, p0, Lcom/android/launcher3/widget/DatabaseWidgetPreviewLoader;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/android/launcher3/icons/LauncherIcons;->obtain(Landroid/content/Context;)Lcom/android/launcher3/icons/LauncherIcons;

    move-result-object p1

    iget-object v0, p0, Lcom/android/launcher3/widget/DatabaseWidgetPreviewLoader;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/launcher3/LauncherAppState;->getInstance(Landroid/content/Context;)Lcom/android/launcher3/LauncherAppState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/LauncherAppState;->getIconCache()Lcom/android/launcher3/icons/IconCache;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/android/launcher3/pm/ShortcutConfigActivityInfo;->getFullResIcon(Lcom/android/launcher3/icons/IconCache;)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    invoke-direct {p0, p2}, Lcom/android/launcher3/widget/DatabaseWidgetPreviewLoader;->mutateOnMainThread(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/android/launcher3/icons/BaseIconFactory;->createBadgedIconBitmap(Landroid/graphics/drawable/Drawable;)Lcom/android/launcher3/icons/BitmapInfo;

    move-result-object p2

    iget-object p0, p0, Lcom/android/launcher3/widget/DatabaseWidgetPreviewLoader;->mContext:Landroid/content/Context;

    invoke-virtual {p2, p0}, Lcom/android/launcher3/icons/BitmapInfo;->newIcon(Landroid/content/Context;)Lcom/android/launcher3/icons/FastBitmapDrawable;

    move-result-object p0

    invoke-virtual {p1}, Lcom/android/launcher3/icons/LauncherIcons;->recycle()V

    add-int/2addr p4, p3

    invoke-virtual {p0, p3, p3, p4, p4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    invoke-virtual {p0, p5}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    return-void
.end method

.method private synthetic lambda$generateWidgetPreview$1(ZLandroid/graphics/drawable/Drawable;IIIILcom/android/launcher3/widget/LauncherAppWidgetProviderInfo;Lcom/android/launcher3/DeviceProfile;FLandroid/graphics/Canvas;)V
    .locals 19

    move-object/from16 v6, p0

    move-object/from16 v0, p2

    move/from16 v7, p3

    move/from16 v8, p4

    move/from16 v9, p5

    move/from16 v10, p6

    move-object/from16 v11, p7

    move-object/from16 v12, p10

    if-eqz p1, :cond_0

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v1, v7, v8}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    invoke-virtual {v0, v12}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    goto/16 :goto_3

    :cond_0
    new-instance v13, Landroid/graphics/Paint;

    const/4 v14, 0x1

    invoke-direct {v13, v14}, Landroid/graphics/Paint;-><init>(I)V

    sget-boolean v0, Lcom/android/launcher3/Utilities;->ATLEAST_S:Z

    if-eqz v0, :cond_1

    new-instance v0, Landroid/graphics/RectF;

    int-to-float v1, v7

    int-to-float v2, v8

    const/4 v3, 0x0

    invoke-direct {v0, v3, v3, v1, v2}, Landroid/graphics/RectF;-><init>(FFFF)V

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v13, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    const/4 v1, -0x1

    invoke-virtual {v13, v1}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v1, v6, Lcom/android/launcher3/widget/DatabaseWidgetPreviewLoader;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x1050008

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    invoke-virtual {v12, v0, v1, v1, v13}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    goto :goto_0

    :cond_1
    move-object/from16 v0, p0

    move-object/from16 v1, p10

    move/from16 v2, p3

    move/from16 v3, p4

    move/from16 v4, p5

    move/from16 v5, p6

    invoke-direct/range {v0 .. v5}, Lcom/android/launcher3/widget/DatabaseWidgetPreviewLoader;->drawBoxWithShadow(Landroid/graphics/Canvas;IIII)Landroid/graphics/RectF;

    move-result-object v0

    :goto_0
    move-object v15, v0

    sget-object v0, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v13, v0}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object v0, v6, Lcom/android/launcher3/widget/DatabaseWidgetPreviewLoader;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f070596

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    invoke-virtual {v13, v0}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    new-instance v0, Landroid/graphics/PorterDuffXfermode;

    sget-object v1, Landroid/graphics/PorterDuff$Mode;->CLEAR:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v0, v1}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v13, v0}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    iget v0, v15, Landroid/graphics/RectF;->left:F

    invoke-virtual {v15}, Landroid/graphics/RectF;->width()F

    move-result v1

    int-to-float v2, v9

    div-float v16, v1, v2

    move v5, v14

    :goto_1
    if-ge v5, v9, :cond_2

    add-float v17, v0, v16

    const/4 v2, 0x0

    int-to-float v4, v8

    move-object/from16 v0, p10

    move/from16 v1, v17

    move/from16 v3, v17

    move/from16 v18, v5

    move-object v5, v13

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    add-int/lit8 v5, v18, 0x1

    move/from16 v0, v17

    goto :goto_1

    :cond_2
    iget v0, v15, Landroid/graphics/RectF;->top:F

    invoke-virtual {v15}, Landroid/graphics/RectF;->height()F

    move-result v1

    int-to-float v2, v10

    div-float v9, v1, v2

    :goto_2
    if-ge v14, v10, :cond_3

    add-float v16, v0, v9

    const/4 v1, 0x0

    int-to-float v3, v7

    move-object/from16 v0, p10

    move/from16 v2, v16

    move/from16 v4, v16

    move-object v5, v13

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    add-int/lit8 v14, v14, 0x1

    move/from16 v0, v16

    goto :goto_2

    :cond_3
    :try_start_0
    iget-object v0, v6, Lcom/android/launcher3/widget/DatabaseWidgetPreviewLoader;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/launcher3/LauncherAppState;->getInstance(Landroid/content/Context;)Lcom/android/launcher3/LauncherAppState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/LauncherAppState;->getIconCache()Lcom/android/launcher3/icons/IconCache;

    move-result-object v0

    iget-object v1, v11, Landroid/appwidget/AppWidgetProviderInfo;->provider:Landroid/content/ComponentName;

    invoke-virtual {v1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v1

    iget v2, v11, Landroid/appwidget/AppWidgetProviderInfo;->icon:I

    invoke-virtual {v0, v1, v2}, Lcom/android/launcher3/icons/cache/BaseIconCache;->getFullResIcon(Ljava/lang/String;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_4

    move-object/from16 v1, p8

    iget v1, v1, Lcom/android/launcher3/DeviceProfile;->iconSizePx:I

    int-to-float v1, v1

    mul-float v1, v1, p9

    invoke-virtual {v15}, Landroid/graphics/RectF;->width()F

    move-result v2

    invoke-virtual {v15}, Landroid/graphics/RectF;->height()F

    move-result v3

    invoke-static {v2, v3}, Ljava/lang/Math;->min(FF)F

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->min(FF)F

    move-result v1

    float-to-int v1, v1

    invoke-direct {v6, v0}, Lcom/android/launcher3/widget/DatabaseWidgetPreviewLoader;->mutateOnMainThread(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    sub-int v2, v7, v1

    div-int/lit8 v2, v2, 0x2

    sub-int v3, v8, v1

    div-int/lit8 v3, v3, 0x2

    add-int v4, v2, v1

    add-int/2addr v1, v3

    invoke-virtual {v0, v2, v3, v4, v1}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    invoke-virtual {v0, v12}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_4
    :goto_3
    return-void
.end method

.method private synthetic lambda$loadPreview$0(Lcom/android/launcher3/model/WidgetItem;Landroid/util/Size;)Landroid/graphics/Bitmap;
    .locals 1

    invoke-virtual {p2}, Landroid/util/Size;->getWidth()I

    move-result v0

    invoke-virtual {p2}, Landroid/util/Size;->getHeight()I

    move-result p2

    invoke-direct {p0, p1, v0, p2}, Lcom/android/launcher3/widget/DatabaseWidgetPreviewLoader;->generatePreview(Lcom/android/launcher3/model/WidgetItem;II)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method

.method private mutateOnMainThread(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;
    .locals 1

    :try_start_0
    sget-object p0, Lcom/android/launcher3/util/Executors;->MAIN_EXECUTOR:Lcom/android/launcher3/util/LooperExecutor;

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Lcom/android/launcher3/widget/d;

    invoke-direct {v0, p1}, Lcom/android/launcher3/widget/d;-><init>(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {p0, v0}, Ljava/util/concurrent/AbstractExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/graphics/drawable/Drawable;
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    new-instance p1, Ljava/lang/RuntimeException;

    invoke-direct {p1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p1

    :catch_1
    move-exception p0

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Thread;->interrupt()V

    new-instance p1, Ljava/lang/RuntimeException;

    invoke-direct {p1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p1
.end method


# virtual methods
.method public generateCardPreview(Lcom/nothing/launcher/card/CardWidgetProviderInfo;I[I)Landroid/graphics/Bitmap;
    .locals 2

    iget-object v0, p0, Lcom/android/launcher3/widget/DatabaseWidgetPreviewLoader;->mContext:Landroid/content/Context;

    new-instance v1, Lcom/android/launcher3/widget/f;

    invoke-direct {v1, p0}, Lcom/android/launcher3/widget/f;-><init>(Lcom/android/launcher3/widget/DatabaseWidgetPreviewLoader;)V

    invoke-virtual {p1, p2, v0, p3, v1}, Lcom/nothing/launcher/card/CardWidgetProviderInfo;->c0(ILandroid/content/Context;[ILy5/l;)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method

.method public generateWidgetPreview(Lcom/android/launcher3/widget/LauncherAppWidgetProviderInfo;I[I)Landroid/graphics/Bitmap;
    .locals 16

    move-object/from16 v2, p0

    move-object/from16 v9, p1

    const-string v1, "WidgetPreviewLoader"

    if-gez p2, :cond_0

    const v0, 0x7fffffff

    move v3, v0

    goto :goto_0

    :cond_0
    move/from16 v3, p2

    :goto_0
    iget v0, v9, Landroid/appwidget/AppWidgetProviderInfo;->previewImage:I

    const/4 v4, 0x0

    const/4 v5, 0x0

    if-eqz v0, :cond_2

    :try_start_0
    iget-object v0, v2, Lcom/android/launcher3/widget/DatabaseWidgetPreviewLoader;->mContext:Landroid/content/Context;

    invoke-virtual {v9, v0, v5}, Landroid/appwidget/AppWidgetProviderInfo;->loadPreviewImage(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v4
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Error loading widget preview for: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, v9, Landroid/appwidget/AppWidgetProviderInfo;->provider:Landroid/content/ComponentName;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v1, v6, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_1
    if-eqz v4, :cond_1

    invoke-direct {v2, v4}, Lcom/android/launcher3/widget/DatabaseWidgetPreviewLoader;->mutateOnMainThread(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    move-object v4, v0

    goto :goto_2

    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Can\'t load widget preview drawable 0x"

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, v9, Landroid/appwidget/AppWidgetProviderInfo;->previewImage:I

    invoke-static {v6}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " for provider: "

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, v9, Landroid/appwidget/AppWidgetProviderInfo;->provider:Landroid/content/ComponentName;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    :goto_2
    const/4 v0, 0x1

    if-eqz v4, :cond_3

    move v6, v0

    goto :goto_3

    :cond_3
    move v6, v5

    :goto_3
    iget v7, v9, Lcom/android/launcher3/widget/LauncherAppWidgetProviderInfo;->spanX:I

    iget v8, v9, Lcom/android/launcher3/widget/LauncherAppWidgetProviderInfo;->spanY:I

    iget-object v1, v2, Lcom/android/launcher3/widget/DatabaseWidgetPreviewLoader;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/launcher3/views/ActivityContext;->lookupContext(Landroid/content/Context;)Landroid/content/Context;

    move-result-object v1

    check-cast v1, Lcom/android/launcher3/views/ActivityContext;

    invoke-interface {v1}, Lcom/android/launcher3/views/ActivityContext;->getDeviceProfile()Lj3/a;

    move-result-object v10

    if-eqz v6, :cond_4

    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    if-lez v1, :cond_4

    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v1

    if-lez v1, :cond_4

    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v11

    goto :goto_4

    :cond_4
    invoke-static {v10, v7, v8}, Lcom/android/launcher3/widget/util/WidgetSizes;->getWidgetSizePx(Lcom/android/launcher3/DeviceProfile;II)Landroid/util/Size;

    move-result-object v1

    invoke-virtual {v1}, Landroid/util/Size;->getWidth()I

    move-result v11

    invoke-virtual {v1}, Landroid/util/Size;->getHeight()I

    move-result v1

    move v15, v11

    move v11, v1

    move v1, v15

    :goto_4
    if-eqz p3, :cond_5

    aput v1, p3, v5

    :cond_5
    const/high16 v5, 0x3f800000    # 1.0f

    if-le v1, v3, :cond_6

    int-to-float v3, v3

    int-to-float v12, v1

    div-float/2addr v3, v12

    move v12, v3

    goto :goto_5

    :cond_6
    move v12, v5

    :goto_5
    cmpl-float v3, v12, v5

    if-eqz v3, :cond_7

    int-to-float v1, v1

    mul-float/2addr v1, v12

    float-to-int v1, v1

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v1

    int-to-float v3, v11

    mul-float/2addr v3, v12

    float-to-int v3, v3

    invoke-static {v3, v0}, Ljava/lang/Math;->max(II)I

    move-result v11

    :cond_7
    move v0, v1

    move v13, v11

    new-instance v14, Lcom/android/launcher3/widget/c;

    move-object v1, v14

    move-object/from16 v2, p0

    move v3, v6

    move v5, v0

    move v6, v13

    move-object/from16 v9, p1

    move v11, v12

    invoke-direct/range {v1 .. v11}, Lcom/android/launcher3/widget/c;-><init>(Lcom/android/launcher3/widget/DatabaseWidgetPreviewLoader;ZLandroid/graphics/drawable/Drawable;IIIILcom/android/launcher3/widget/LauncherAppWidgetProviderInfo;Lcom/android/launcher3/DeviceProfile;F)V

    invoke-static {v0, v13, v14}, Lcom/android/launcher3/icons/BitmapRenderer;->createHardwareBitmap(IILcom/android/launcher3/icons/BitmapRenderer;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public loadPreview(Lcom/android/launcher3/model/WidgetItem;Landroid/util/Size;Ljava/util/function/Consumer;)Lcom/android/launcher3/icons/cache/HandlerRunnable;
    .locals 3
    .param p1    # Lcom/android/launcher3/model/WidgetItem;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/util/Size;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Ljava/util/function/Consumer;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/launcher3/model/WidgetItem;",
            "Landroid/util/Size;",
            "Ljava/util/function/Consumer<",
            "Landroid/graphics/Bitmap;",
            ">;)",
            "Lcom/android/launcher3/icons/cache/HandlerRunnable;"
        }
    .end annotation

    sget-object v0, Lcom/android/launcher3/util/Executors;->UI_HELPER_EXECUTOR:Lcom/android/launcher3/util/LooperExecutor;

    invoke-virtual {v0}, Lcom/android/launcher3/util/LooperExecutor;->getHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/android/launcher3/icons/cache/HandlerRunnable;

    new-instance v2, Lcom/android/launcher3/widget/e;

    invoke-direct {v2, p0, p1, p2}, Lcom/android/launcher3/widget/e;-><init>(Lcom/android/launcher3/widget/DatabaseWidgetPreviewLoader;Lcom/android/launcher3/model/WidgetItem;Landroid/util/Size;)V

    sget-object p0, Lcom/android/launcher3/util/Executors;->MAIN_EXECUTOR:Lcom/android/launcher3/util/LooperExecutor;

    invoke-direct {v1, v0, v2, p0, p3}, Lcom/android/launcher3/icons/cache/HandlerRunnable;-><init>(Landroid/os/Handler;Ljava/util/function/Supplier;Ljava/util/concurrent/Executor;Ljava/util/function/Consumer;)V

    invoke-static {v0, v1}, Lcom/android/launcher3/Utilities;->postAsyncCallback(Landroid/os/Handler;Ljava/lang/Runnable;)V

    return-object v1
.end method
