.class public Lcom/android/launcher3/dragndrop/FolderAdaptiveIcon;
.super Landroid/graphics/drawable/AdaptiveIconDrawable;
.source "SourceFile"


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x1a
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/launcher3/dragndrop/FolderAdaptiveIcon$MyConstantState;,
        Lcom/android/launcher3/dragndrop/FolderAdaptiveIcon$BitmapRendererDrawable;
    }
.end annotation


# static fields
.field private static final sTmpRect:Landroid/graphics/Rect;


# instance fields
.field private final mBadge:Landroid/graphics/drawable/Drawable;

.field private final mConstantState:Landroid/graphics/drawable/Drawable$ConstantState;

.field private final mMask:Landroid/graphics/Path;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    sput-object v0, Lcom/android/launcher3/dragndrop/FolderAdaptiveIcon;->sTmpRect:Landroid/graphics/Rect;

    return-void
.end method

.method private constructor <init>(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/Path;)V
    .locals 1

    invoke-direct {p0, p1, p2}, Landroid/graphics/drawable/AdaptiveIconDrawable;-><init>(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    iput-object p3, p0, Lcom/android/launcher3/dragndrop/FolderAdaptiveIcon;->mBadge:Landroid/graphics/drawable/Drawable;

    iput-object p4, p0, Lcom/android/launcher3/dragndrop/FolderAdaptiveIcon;->mMask:Landroid/graphics/Path;

    new-instance v0, Lcom/android/launcher3/dragndrop/FolderAdaptiveIcon$MyConstantState;

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    move-result-object p1

    invoke-virtual {p2}, Landroid/graphics/drawable/Drawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    move-result-object p2

    invoke-virtual {p3}, Landroid/graphics/drawable/Drawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    move-result-object p3

    invoke-direct {v0, p1, p2, p3, p4}, Lcom/android/launcher3/dragndrop/FolderAdaptiveIcon$MyConstantState;-><init>(Landroid/graphics/drawable/Drawable$ConstantState;Landroid/graphics/drawable/Drawable$ConstantState;Landroid/graphics/drawable/Drawable$ConstantState;Landroid/graphics/Path;)V

    iput-object v0, p0, Lcom/android/launcher3/dragndrop/FolderAdaptiveIcon;->mConstantState:Landroid/graphics/drawable/Drawable$ConstantState;

    return-void
.end method

.method synthetic constructor <init>(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/Path;Lcom/android/launcher3/dragndrop/FolderAdaptiveIcon$1;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/launcher3/dragndrop/FolderAdaptiveIcon;-><init>(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/Path;)V

    return-void
.end method

.method public static synthetic a(Landroid/graphics/Picture;Landroid/graphics/Canvas;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/android/launcher3/dragndrop/FolderAdaptiveIcon;->lambda$createFolderAdaptiveIcon$1(Landroid/graphics/Picture;Landroid/graphics/Canvas;)V

    return-void
.end method

.method public static synthetic b(Landroid/graphics/Bitmap;FLandroid/graphics/Paint;Landroid/graphics/Canvas;)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lcom/android/launcher3/dragndrop/FolderAdaptiveIcon;->lambda$createFolderAdaptiveIcon$2(Landroid/graphics/Bitmap;FLandroid/graphics/Paint;Landroid/graphics/Canvas;)V

    return-void
.end method

.method public static synthetic c(Landroid/graphics/Picture;Landroid/graphics/Canvas;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/android/launcher3/dragndrop/FolderAdaptiveIcon;->lambda$createFolderAdaptiveIcon$3(Landroid/graphics/Picture;Landroid/graphics/Canvas;)V

    return-void
.end method

.method public static createFolderAdaptiveIcon(Lcom/android/launcher3/views/ActivityContext;ILandroid/graphics/Point;)Lcom/android/launcher3/dragndrop/FolderAdaptiveIcon;
    .locals 19
    .annotation build Landroid/annotation/TargetApi;
        value = 0x1c
    .end annotation

    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    move-object/from16 v0, p2

    invoke-static {}, Lcom/android/launcher3/util/Preconditions;->assertNonUiThread()V

    sget-boolean v1, Lcom/android/launcher3/Utilities;->ATLEAST_P:Z

    const/4 v2, 0x0

    if-nez v1, :cond_0

    return-object v2

    :cond_0
    iget v6, v0, Landroid/graphics/Point;->x:I

    iget v0, v0, Landroid/graphics/Point;->y:I

    if-eq v6, v0, :cond_1

    return-object v2

    :cond_1
    invoke-interface/range {p0 .. p0}, Lcom/android/launcher3/views/ActivityContext;->getDeviceProfile()Lj3/a;

    move-result-object v0

    iget v0, v0, Lcom/android/launcher3/DeviceProfile;->folderIconSizePx:I

    invoke-static {v6, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    sub-int v1, v0, v6

    int-to-float v1, v1

    new-instance v10, Landroid/graphics/Picture;

    invoke-direct {v10}, Landroid/graphics/Picture;-><init>()V

    new-instance v11, Landroid/graphics/Picture;

    invoke-direct {v11}, Landroid/graphics/Picture;-><init>()V

    new-instance v12, Landroid/graphics/Picture;

    invoke-direct {v12}, Landroid/graphics/Picture;-><init>()V

    invoke-virtual {v10, v6, v6}, Landroid/graphics/Picture;->beginRecording(II)Landroid/graphics/Canvas;

    move-result-object v7

    invoke-virtual {v12, v6, v6}, Landroid/graphics/Picture;->beginRecording(II)Landroid/graphics/Canvas;

    move-result-object v9

    invoke-virtual {v11, v0, v0}, Landroid/graphics/Picture;->beginRecording(II)Landroid/graphics/Canvas;

    move-result-object v8

    invoke-virtual {v8, v1, v1}, Landroid/graphics/Canvas;->translate(FF)V

    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    neg-float v15, v1

    int-to-float v3, v6

    add-float v17, v3, v1

    sget-object v18, Landroid/graphics/Path$Direction;->CCW:Landroid/graphics/Path$Direction;

    move-object v13, v0

    move v14, v15

    move/from16 v16, v17

    invoke-virtual/range {v13 .. v18}, Landroid/graphics/Path;->addRect(FFFFLandroid/graphics/Path$Direction;)V

    :try_start_0
    sget-object v13, Lcom/android/launcher3/util/Executors;->MAIN_EXECUTOR:Lcom/android/launcher3/util/LooperExecutor;

    new-instance v14, Li/s;

    move-object v3, v14

    move-object/from16 v4, p0

    move/from16 v5, p1

    invoke-direct/range {v3 .. v9}, Li/s;-><init>(Lcom/android/launcher3/views/ActivityContext;IILandroid/graphics/Canvas;Landroid/graphics/Canvas;Landroid/graphics/Canvas;)V

    invoke-virtual {v13, v14}, Ljava/util/concurrent/AbstractExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v10}, Landroid/graphics/Picture;->endRecording()V

    invoke-virtual {v11}, Landroid/graphics/Picture;->endRecording()V

    invoke-virtual {v12}, Landroid/graphics/Picture;->endRecording()V

    invoke-static {v11}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Picture;)Landroid/graphics/Bitmap;

    move-result-object v2

    new-instance v3, Landroid/graphics/Paint;

    const/4 v4, 0x1

    invoke-direct {v3, v4}, Landroid/graphics/Paint;-><init>(I)V

    new-instance v4, Lcom/android/launcher3/dragndrop/FolderAdaptiveIcon;

    new-instance v5, Lcom/android/launcher3/dragndrop/FolderAdaptiveIcon$BitmapRendererDrawable;

    new-instance v6, Li/q;

    invoke-direct {v6, v10}, Li/q;-><init>(Landroid/graphics/Picture;)V

    invoke-direct {v5, v6}, Lcom/android/launcher3/dragndrop/FolderAdaptiveIcon$BitmapRendererDrawable;-><init>(Lcom/android/launcher3/icons/BitmapRenderer;)V

    new-instance v6, Lcom/android/launcher3/dragndrop/FolderAdaptiveIcon$BitmapRendererDrawable;

    new-instance v7, Li/p;

    invoke-direct {v7, v2, v1, v3}, Li/p;-><init>(Landroid/graphics/Bitmap;FLandroid/graphics/Paint;)V

    invoke-direct {v6, v7}, Lcom/android/launcher3/dragndrop/FolderAdaptiveIcon$BitmapRendererDrawable;-><init>(Lcom/android/launcher3/icons/BitmapRenderer;)V

    new-instance v1, Lcom/android/launcher3/dragndrop/FolderAdaptiveIcon$BitmapRendererDrawable;

    new-instance v2, Li/r;

    invoke-direct {v2, v12}, Li/r;-><init>(Landroid/graphics/Picture;)V

    invoke-direct {v1, v2}, Lcom/android/launcher3/dragndrop/FolderAdaptiveIcon$BitmapRendererDrawable;-><init>(Lcom/android/launcher3/icons/BitmapRenderer;)V

    invoke-direct {v4, v5, v6, v1, v0}, Lcom/android/launcher3/dragndrop/FolderAdaptiveIcon;-><init>(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/Path;)V

    return-object v4

    :catchall_0
    move-exception v0

    goto :goto_0

    :catch_0
    move-exception v0

    :try_start_1
    const-string v1, "FolderAdaptiveIcon"

    const-string v3, "Unable to create folder icon"

    invoke-static {v1, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-virtual {v10}, Landroid/graphics/Picture;->endRecording()V

    invoke-virtual {v11}, Landroid/graphics/Picture;->endRecording()V

    invoke-virtual {v12}, Landroid/graphics/Picture;->endRecording()V

    return-object v2

    :goto_0
    invoke-virtual {v10}, Landroid/graphics/Picture;->endRecording()V

    invoke-virtual {v11}, Landroid/graphics/Picture;->endRecording()V

    invoke-virtual {v12}, Landroid/graphics/Picture;->endRecording()V

    throw v0
.end method

.method public static synthetic d(Lcom/android/launcher3/views/ActivityContext;IILandroid/graphics/Canvas;Landroid/graphics/Canvas;Landroid/graphics/Canvas;)V
    .locals 0

    invoke-static/range {p0 .. p5}, Lcom/android/launcher3/dragndrop/FolderAdaptiveIcon;->lambda$createFolderAdaptiveIcon$0(Lcom/android/launcher3/views/ActivityContext;IILandroid/graphics/Canvas;Landroid/graphics/Canvas;Landroid/graphics/Canvas;)V

    return-void
.end method

.method private static initLayersOnUiThread(Lcom/android/launcher3/folder/BaseFolderIcon;ILandroid/graphics/Canvas;Landroid/graphics/Canvas;Landroid/graphics/Canvas;)V
    .locals 11
    .annotation build Landroidx/annotation/UiThread;
    .end annotation

    sget-object v0, Lcom/android/launcher3/dragndrop/FolderAdaptiveIcon;->sTmpRect:Landroid/graphics/Rect;

    invoke-virtual {p0, v0}, Lcom/android/launcher3/folder/BaseFolderIcon;->getPreviewBounds(Landroid/graphics/Rect;)V

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v1

    invoke-virtual {p0}, Lcom/android/launcher3/folder/BaseFolderIcon;->getFolderBackground()Lcom/android/launcher3/folder/PreviewBackground;

    move-result-object v2

    sub-int v1, p1, v1

    div-int/lit8 v1, v1, 0x2

    iget v3, v0, Landroid/graphics/Rect;->left:I

    neg-int v3, v3

    add-int/2addr v3, v1

    int-to-float v3, v3

    iget v0, v0, Landroid/graphics/Rect;->top:I

    neg-int v0, v0

    add-int/2addr v0, v1

    int-to-float v0, v0

    invoke-virtual {p4}, Landroid/graphics/Canvas;->save()I

    invoke-virtual {p4, v3, v0}, Landroid/graphics/Canvas;->translate(FF)V

    invoke-virtual {p0, p4}, Lcom/android/launcher3/folder/BaseFolderIcon;->drawDot(Landroid/graphics/Canvas;)V

    invoke-virtual {p4}, Landroid/graphics/Canvas;->restore()V

    invoke-virtual {p3}, Landroid/graphics/Canvas;->save()I

    instance-of p4, p0, Lcom/android/launcher3/folder/FolderIcon;

    if-eqz p4, :cond_0

    iget-object p4, p0, Lcom/android/launcher3/folder/BaseFolderIcon;->info:Lcom/android/launcher3/model/data/FolderInfo;

    invoke-virtual {p4}, Lcom/android/launcher3/model/data/FolderInfo;->isCoverType()Z

    move-result p4

    if-nez p4, :cond_0

    invoke-virtual {p3, v3, v0}, Landroid/graphics/Canvas;->translate(FF)V

    goto :goto_0

    :cond_0
    int-to-float p4, v1

    invoke-virtual {p3, p4, p4}, Landroid/graphics/Canvas;->translate(FF)V

    :goto_0
    invoke-virtual {p0, p3}, Lcom/android/launcher3/folder/BaseFolderIcon;->drawPreview(Landroid/graphics/Canvas;)V

    invoke-virtual {p3}, Landroid/graphics/Canvas;->restore()V

    new-instance v10, Landroid/graphics/Paint;

    const/4 p0, 0x1

    invoke-direct {v10, p0}, Landroid/graphics/Paint;-><init>(I)V

    invoke-virtual {v2}, Lcom/android/launcher3/folder/PreviewBackground;->getBgColor()I

    move-result p0

    invoke-virtual {v10, p0}, Landroid/graphics/Paint;->setColor(I)V

    invoke-virtual {v2, p2}, Lcom/android/launcher3/folder/PreviewBackground;->drawShadow(Landroid/graphics/Canvas;)V

    const/4 v4, 0x0

    const/4 v5, 0x0

    int-to-float v7, p1

    invoke-virtual {v2}, Lcom/android/launcher3/folder/PreviewBackground;->getCornerRadius()F

    move-result v8

    invoke-virtual {v2}, Lcom/android/launcher3/folder/PreviewBackground;->getCornerRadius()F

    move-result v9

    move-object v3, p2

    move v6, v7

    invoke-virtual/range {v3 .. v10}, Landroid/graphics/Canvas;->drawRoundRect(FFFFFFLandroid/graphics/Paint;)V

    invoke-virtual {v2, p2}, Lcom/android/launcher3/folder/PreviewBackground;->drawBackgroundStroke(Landroid/graphics/Canvas;)V

    return-void
.end method

.method private static synthetic lambda$createFolderAdaptiveIcon$0(Lcom/android/launcher3/views/ActivityContext;IILandroid/graphics/Canvas;Landroid/graphics/Canvas;Landroid/graphics/Canvas;)V
    .locals 0

    invoke-interface {p0, p1}, Lcom/android/launcher3/views/ActivityContext;->findFolderIcon(I)Lcom/android/launcher3/folder/BaseFolderIcon;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-static {p0, p2, p3, p4, p5}, Lcom/android/launcher3/dragndrop/FolderAdaptiveIcon;->initLayersOnUiThread(Lcom/android/launcher3/folder/BaseFolderIcon;ILandroid/graphics/Canvas;Landroid/graphics/Canvas;Landroid/graphics/Canvas;)V

    return-void

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Folder not found with id: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static synthetic lambda$createFolderAdaptiveIcon$1(Landroid/graphics/Picture;Landroid/graphics/Canvas;)V
    .locals 0

    invoke-virtual {p1, p0}, Landroid/graphics/Canvas;->drawPicture(Landroid/graphics/Picture;)V

    return-void
.end method

.method private static synthetic lambda$createFolderAdaptiveIcon$2(Landroid/graphics/Bitmap;FLandroid/graphics/Paint;Landroid/graphics/Canvas;)V
    .locals 0

    neg-float p1, p1

    invoke-virtual {p3, p0, p1, p1, p2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    return-void
.end method

.method private static synthetic lambda$createFolderAdaptiveIcon$3(Landroid/graphics/Picture;Landroid/graphics/Canvas;)V
    .locals 0

    invoke-virtual {p1, p0}, Landroid/graphics/Canvas;->drawPicture(Landroid/graphics/Picture;)V

    return-void
.end method


# virtual methods
.method public getBadge()Landroid/graphics/drawable/Drawable;
    .locals 0

    iget-object p0, p0, Lcom/android/launcher3/dragndrop/FolderAdaptiveIcon;->mBadge:Landroid/graphics/drawable/Drawable;

    return-object p0
.end method

.method public getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;
    .locals 0

    iget-object p0, p0, Lcom/android/launcher3/dragndrop/FolderAdaptiveIcon;->mConstantState:Landroid/graphics/drawable/Drawable$ConstantState;

    return-object p0
.end method

.method public getIconMask()Landroid/graphics/Path;
    .locals 0

    iget-object p0, p0, Lcom/android/launcher3/dragndrop/FolderAdaptiveIcon;->mMask:Landroid/graphics/Path;

    return-object p0
.end method
