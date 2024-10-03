.class public final Lcom/android/launcher3/Utilities;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final ATLEAST_P:Z
    .annotation build Landroidx/annotation/ChecksSdkIntAtLeast;
        api = 0x1c
    .end annotation
.end field

.field public static final ATLEAST_Q:Z
    .annotation build Landroidx/annotation/ChecksSdkIntAtLeast;
        api = 0x1d
    .end annotation
.end field

.field public static final ATLEAST_R:Z
    .annotation build Landroidx/annotation/ChecksSdkIntAtLeast;
        api = 0x1e
    .end annotation
.end field

.field public static final ATLEAST_S:Z
    .annotation build Landroidx/annotation/ChecksSdkIntAtLeast;
        api = 0x1f
    .end annotation
.end field

.field public static final ATLEAST_T:Z
    .annotation build Landroidx/annotation/ChecksSdkIntAtLeast;
        api = 0x21
        codename = "T"
    .end annotation
.end field

.field public static final ATLEAST_U:Z
    .annotation build Landroidx/annotation/ChecksSdkIntAtLeast;
        api = 0x22
        codename = "U"
    .end annotation
.end field

.field public static final EMPTY_PERSON_ARRAY:[Landroid/app/Person;

.field public static final EMPTY_STRING_ARRAY:[Ljava/lang/String;

.field private static final sInverseMatrix:Landroid/graphics/Matrix;

.field private static sIsRunningInTestHarness:Z

.field private static final sMatrix:Landroid/graphics/Matrix;

.field private static final sTrimPattern:Ljava/util/regex/Pattern;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const-string v0, "^[\\s|\\p{javaSpaceChar}]*(.*)[\\s|\\p{javaSpaceChar}]*$"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/android/launcher3/Utilities;->sTrimPattern:Ljava/util/regex/Pattern;

    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    sput-object v0, Lcom/android/launcher3/Utilities;->sMatrix:Landroid/graphics/Matrix;

    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    sput-object v0, Lcom/android/launcher3/Utilities;->sInverseMatrix:Landroid/graphics/Matrix;

    const/4 v0, 0x0

    new-array v1, v0, [Ljava/lang/String;

    sput-object v1, Lcom/android/launcher3/Utilities;->EMPTY_STRING_ARRAY:[Ljava/lang/String;

    new-array v1, v0, [Landroid/app/Person;

    sput-object v1, Lcom/android/launcher3/Utilities;->EMPTY_PERSON_ARRAY:[Landroid/app/Person;

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v2, 0x1

    sput-boolean v2, Lcom/android/launcher3/Utilities;->ATLEAST_P:Z

    sput-boolean v2, Lcom/android/launcher3/Utilities;->ATLEAST_Q:Z

    sput-boolean v2, Lcom/android/launcher3/Utilities;->ATLEAST_R:Z

    sput-boolean v2, Lcom/android/launcher3/Utilities;->ATLEAST_S:Z

    const/16 v3, 0x21

    if-lt v1, v3, :cond_0

    move v3, v2

    goto :goto_0

    :cond_0
    move v3, v0

    :goto_0
    sput-boolean v3, Lcom/android/launcher3/Utilities;->ATLEAST_T:Z

    const/16 v3, 0x22

    if-lt v1, v3, :cond_1

    move v0, v2

    :cond_1
    sput-boolean v0, Lcom/android/launcher3/Utilities;->ATLEAST_U:Z

    invoke-static {}, Landroid/app/ActivityManager;->isRunningInTestHarness()Z

    move-result v0

    sput-boolean v0, Lcom/android/launcher3/Utilities;->sIsRunningInTestHarness:Z

    return-void
.end method

.method public static boundToRange(FFF)F
    .locals 0

    invoke-static {p0, p2}, Ljava/lang/Math;->min(FF)F

    move-result p0

    invoke-static {p1, p0}, Ljava/lang/Math;->max(FF)F

    move-result p0

    return p0
.end method

.method public static boundToRange(III)I
    .locals 0

    invoke-static {p0, p2}, Ljava/lang/Math;->min(II)I

    move-result p0

    invoke-static {p1, p0}, Ljava/lang/Math;->max(II)I

    move-result p0

    return p0
.end method

.method public static boundToRange(JJJ)J
    .locals 0

    invoke-static {p0, p1, p4, p5}, Ljava/lang/Math;->min(JJ)J

    move-result-wide p0

    invoke-static {p2, p3, p0, p1}, Ljava/lang/Math;->max(JJ)J

    move-result-wide p0

    return-wide p0
.end method

.method public static calculateTextHeight(F)I
    .locals 2

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    invoke-virtual {v0, p0}, Landroid/graphics/Paint;->setTextSize(F)V

    invoke-virtual {v0}, Landroid/graphics/Paint;->getFontMetrics()Landroid/graphics/Paint$FontMetrics;

    move-result-object p0

    iget v0, p0, Landroid/graphics/Paint$FontMetrics;->bottom:F

    iget p0, p0, Landroid/graphics/Paint$FontMetrics;->top:F

    sub-float/2addr v0, p0

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    double-to-int p0, v0

    return p0
.end method

.method public static createDbSelectionQuery(Ljava/lang/String;Lcom/android/launcher3/util/IntArray;)Ljava/lang/String;
    .locals 3

    sget-object v0, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    invoke-virtual {p1}, Lcom/android/launcher3/util/IntArray;->toConcatString()Ljava/lang/String;

    move-result-object p0

    const/4 p1, 0x1

    aput-object p0, v1, p1

    const-string p0, "%s IN (%s)"

    invoke-static {v0, p0, v1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static dpToPx(F)I
    .locals 1

    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr p0, v0

    float-to-int p0, p0

    return p0
.end method

.method public static dpiFromPx(FI)F
    .locals 1

    int-to-float p1, p1

    const/high16 v0, 0x43200000    # 160.0f

    div-float/2addr p1, v0

    div-float/2addr p0, p1

    return p0
.end method

.method public static getBadge(Landroid/content/Context;Lcom/android/launcher3/model/data/ItemInfo;Ljava/lang/Object;)Landroid/graphics/drawable/Drawable;
    .locals 5
    .annotation build Landroid/annotation/TargetApi;
        value = 0x1a
    .end annotation

    invoke-static {p0}, Lcom/android/launcher3/LauncherAppState;->getInstance(Landroid/content/Context;)Lcom/android/launcher3/LauncherAppState;

    move-result-object v0

    iget v1, p1, Lcom/android/launcher3/model/data/ItemInfo;->itemType:I

    const/4 v2, 0x0

    const/4 v3, 0x6

    if-ne v1, v3, :cond_4

    instance-of v1, p1, Lcom/android/launcher3/model/data/ItemInfoWithIcon;

    const/4 v3, 0x1

    if-eqz v1, :cond_0

    move-object v1, p1

    check-cast v1, Lcom/android/launcher3/model/data/ItemInfoWithIcon;

    iget v1, v1, Lcom/android/launcher3/model/data/ItemInfoWithIcon;->runtimeStatusFlags:I

    and-int/lit16 v1, v1, 0x200

    if-lez v1, :cond_0

    move v1, v3

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    iget p1, p1, Lcom/android/launcher3/model/data/ItemInfo;->id:I

    const/4 v4, -0x1

    if-ne p1, v4, :cond_1

    if-eqz v1, :cond_2

    :cond_1
    instance-of p1, p2, Landroid/content/pm/ShortcutInfo;

    if-nez p1, :cond_3

    :cond_2
    new-instance p0, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {p0, v2}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    return-object p0

    :cond_3
    check-cast p2, Landroid/content/pm/ShortcutInfo;

    invoke-virtual {v0}, Lcom/android/launcher3/LauncherAppState;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/android/launcher3/LauncherAppState;->getInstance(Landroid/content/Context;)Lcom/android/launcher3/LauncherAppState;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/launcher3/LauncherAppState;->getIconCache()Lcom/android/launcher3/icons/IconCache;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/android/launcher3/icons/IconCache;->getShortcutInfoBadge(Landroid/content/pm/ShortcutInfo;)Lcom/android/launcher3/icons/BitmapInfo;

    move-result-object p1

    invoke-virtual {p1, p0, v3}, Lcom/android/launcher3/icons/BitmapInfo;->newIcon(Landroid/content/Context;I)Lcom/android/launcher3/icons/FastBitmapDrawable;

    move-result-object p0

    return-object p0

    :cond_4
    const/4 v0, 0x2

    if-ne v1, v0, :cond_5

    check-cast p2, Lcom/android/launcher3/dragndrop/FolderAdaptiveIcon;

    invoke-virtual {p2}, Lcom/android/launcher3/dragndrop/FolderAdaptiveIcon;->getBadge()Landroid/graphics/drawable/Drawable;

    move-result-object p0

    return-object p0

    :cond_5
    invoke-static {}, Landroid/os/Process;->myUserHandle()Landroid/os/UserHandle;

    move-result-object p2

    iget-object v0, p1, Lcom/android/launcher3/model/data/ItemInfo;->user:Landroid/os/UserHandle;

    invoke-virtual {p2, v0}, Landroid/os/UserHandle;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_6

    new-instance p0, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {p0, v2}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    goto :goto_1

    :cond_6
    sget-object p2, Ly3/b;->a:Ly3/b;

    iget-object p1, p1, Lcom/android/launcher3/model/data/ItemInfo;->user:Landroid/os/UserHandle;

    sget-object v0, Lo3/b;->p:Lo3/b$b;

    invoke-virtual {v0}, Lo3/b$b;->a()Lo3/b;

    move-result-object v0

    invoke-virtual {v0}, Lo3/b;->x()Z

    move-result v0

    invoke-virtual {p2, p1, p0, v0}, Ly3/b;->a(Landroid/os/UserHandle;Landroid/content/Context;Z)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    :goto_1
    return-object p0
.end method

.method public static getBoundsForViewInDragLayer(Lcom/android/launcher3/views/BaseDragLayer;Landroid/view/View;Landroid/graphics/Rect;Z[FLandroid/graphics/RectF;)V
    .locals 5

    if-nez p4, :cond_0

    const/4 p4, 0x4

    new-array p4, p4, [F

    :cond_0
    iget v0, p2, Landroid/graphics/Rect;->left:I

    int-to-float v0, v0

    const/4 v1, 0x0

    aput v0, p4, v1

    iget v0, p2, Landroid/graphics/Rect;->top:I

    int-to-float v0, v0

    const/4 v2, 0x1

    aput v0, p4, v2

    iget v0, p2, Landroid/graphics/Rect;->right:I

    int-to-float v0, v0

    const/4 v3, 0x2

    aput v0, p4, v3

    iget p2, p2, Landroid/graphics/Rect;->bottom:I

    int-to-float p2, p2

    const/4 v0, 0x3

    aput p2, p4, v0

    invoke-static {p1, p0, p4, v1, p3}, Lcom/android/launcher3/Utilities;->getDescendantCoordRelativeToAncestor(Landroid/view/View;Landroid/view/View;[FZZ)F

    aget p0, p4, v1

    aget p1, p4, v3

    invoke-static {p0, p1}, Ljava/lang/Math;->min(FF)F

    move-result p0

    aget p1, p4, v2

    aget p2, p4, v0

    invoke-static {p1, p2}, Ljava/lang/Math;->min(FF)F

    move-result p1

    aget p2, p4, v1

    aget p3, p4, v3

    invoke-static {p2, p3}, Ljava/lang/Math;->max(FF)F

    move-result p2

    aget p3, p4, v2

    aget v4, p4, v0

    invoke-static {p3, v4}, Ljava/lang/Math;->max(FF)F

    move-result p3

    invoke-virtual {p5, p0, p1, p2, p3}, Landroid/graphics/RectF;->set(FFFF)V

    invoke-virtual {p5}, Landroid/graphics/RectF;->width()F

    move-result p0

    const/high16 p1, 0x3f800000    # 1.0f

    cmpg-float p0, p0, p1

    if-ltz p0, :cond_1

    invoke-virtual {p5}, Landroid/graphics/RectF;->height()F

    move-result p0

    cmpg-float p0, p0, p1

    if-gez p0, :cond_2

    :cond_1
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "getBoundsForViewInDragLayer -> points[0]="

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget p1, p4, v1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string p1, ",,points[1]="

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget p1, p4, v2

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string p1, ",,points[2]="

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget p1, p4, v3

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string p1, ",,points[3]="

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget p1, p4, v0

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "Launcher.Utilities"

    invoke-static {p1, p0}, Ly2/e;->l(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    return-void
.end method

.method public static getDescendantCoordRelativeToAncestor(Landroid/view/View;Landroid/view/View;[FZ)F
    .locals 1

    const/4 v0, 0x0

    invoke-static {p0, p1, p2, p3, v0}, Lcom/android/launcher3/Utilities;->getDescendantCoordRelativeToAncestor(Landroid/view/View;Landroid/view/View;[FZZ)F

    move-result p0

    return p0
.end method

.method public static getDescendantCoordRelativeToAncestor(Landroid/view/View;Landroid/view/View;[FZZ)F
    .locals 4

    const/high16 v0, 0x3f800000    # 1.0f

    move-object v1, p0

    :goto_0
    if-eq v1, p1, :cond_4

    if-eqz v1, :cond_4

    if-ne v1, p0, :cond_0

    if-eqz p3, :cond_1

    :cond_0
    invoke-virtual {v1}, Landroid/view/View;->getScrollX()I

    move-result v2

    neg-int v2, v2

    int-to-float v2, v2

    invoke-virtual {v1}, Landroid/view/View;->getScrollY()I

    move-result v3

    neg-int v3, v3

    int-to-float v3, v3

    invoke-static {p2, v2, v3}, Lcom/android/launcher3/Utilities;->offsetPoints([FFF)V

    :cond_1
    if-nez p4, :cond_2

    invoke-virtual {v1}, Landroid/view/View;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v2

    invoke-virtual {v2, p2}, Landroid/graphics/Matrix;->mapPoints([F)V

    :cond_2
    invoke-virtual {v1}, Landroid/view/View;->getLeft()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v3

    int-to-float v3, v3

    invoke-static {p2, v2, v3}, Lcom/android/launcher3/Utilities;->offsetPoints([FFF)V

    invoke-virtual {v1}, Landroid/view/View;->getScaleX()F

    move-result v2

    mul-float/2addr v0, v2

    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    instance-of v2, v2, Landroid/view/View;

    if-eqz v2, :cond_3

    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    goto :goto_0

    :cond_3
    const/4 v1, 0x0

    goto :goto_0

    :cond_4
    return v0
.end method

.method public static getFullDrawable(Landroid/content/Context;Lcom/android/launcher3/model/data/ItemInfo;IIZ[Ljava/lang/Object;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;
    .locals 13
    .annotation build Landroid/annotation/TargetApi;
        value = 0x21
    .end annotation

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move/from16 v3, p3

    const/4 v9, 0x0

    invoke-static {p1, v9}, Lb3/m;->i(Lcom/android/launcher3/model/data/ItemInfo;I)Z

    move-result v4

    const/4 v5, 0x6

    if-nez v4, :cond_1

    invoke-static {p1, v5}, Lb3/m;->i(Lcom/android/launcher3/model/data/ItemInfo;I)Z

    move-result v4

    if-eqz v4, :cond_0

    goto :goto_0

    :cond_0
    move-object/from16 v4, p5

    goto :goto_1

    :cond_1
    :goto_0
    sget-object v4, Lo3/b;->p:Lo3/b$b;

    invoke-virtual {v4}, Lo3/b$b;->a()Lo3/b;

    move-result-object v4

    invoke-virtual {v4}, Lo3/b;->v()Z

    move-result v4

    if-eqz v4, :cond_9

    sget-object v4, Lcom/nothing/launcher/ossupport/onlineconfig/ConfigLoader;->INSTANCE:Lcom/nothing/launcher/ossupport/onlineconfig/ConfigLoader;

    invoke-virtual {p1}, Lcom/android/launcher3/model/data/ItemInfo;->getTargetPackage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Lcom/nothing/launcher/ossupport/onlineconfig/ConfigLoader;->isBlockFloatingIcon(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    goto/16 :goto_5

    :goto_1
    invoke-static {p0, p1, p2, v3, v4}, Lcom/android/launcher3/Utilities;->loadFullDrawableWithoutTheme(Landroid/content/Context;Lcom/android/launcher3/model/data/ItemInfo;II[Ljava/lang/Object;)Landroid/graphics/drawable/Drawable;

    move-result-object v10

    sget-boolean v4, Lcom/android/launcher3/Utilities;->ATLEAST_T:Z

    if-eqz v4, :cond_8

    if-eqz p4, :cond_8

    if-eqz v10, :cond_8

    invoke-static {p0}, Lcom/android/launcher3/util/Themes;->isThemedIconEnabled(Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_8

    instance-of v4, v10, Lcom/android/launcher3/dragndrop/FolderAdaptiveIcon;

    const/4 v11, 0x1

    if-nez v4, :cond_7

    iget v4, v1, Lcom/android/launcher3/model/data/ItemInfo;->itemType:I

    if-eq v4, v5, :cond_7

    instance-of v4, v10, Lcom/android/launcher3/icons/BitmapInfo$Extender;

    if-nez v4, :cond_7

    instance-of v4, v1, Lcom/android/launcher3/model/data/ItemInfoWithIcon;

    if-eqz v4, :cond_2

    move-object v4, v1

    check-cast v4, Lcom/android/launcher3/model/data/ItemInfoWithIcon;

    iget-object v4, v4, Lcom/android/launcher3/model/data/ItemInfoWithIcon;->bitmap:Lcom/android/launcher3/icons/BitmapInfo;

    invoke-virtual {v4}, Lcom/android/launcher3/icons/BitmapInfo;->getMono()Landroid/graphics/Bitmap;

    move-result-object v5

    if-eqz v5, :cond_2

    :try_start_0
    invoke-static {v5, p2, v3, v11}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v6

    new-instance v7, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    invoke-direct {v7, v8, v6}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    sget-object v6, Lz4/g;->a:Lz4/g;

    invoke-virtual {v6}, Lz4/g;->b()F

    move-result v6

    invoke-static {v7, v6, p0}, Ln3/a;->b(Landroid/graphics/drawable/Drawable;FLandroid/content/Context;)Landroid/graphics/drawable/AdaptiveIconDrawable;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "getFullDrawable -> \nitemInfo="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "\nmonoFlag="

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, v4, Lcom/android/launcher3/icons/BitmapInfo;->mMonoFlag:I

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "\nmono.Width="

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ",,mono.Height="

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "\nwidth="

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ",,height="

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/IllegalArgumentException;

    invoke-direct {v2, v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    :cond_2
    sget-object v4, Lz3/a;->a:Lz3/a;

    iget v5, v1, Lcom/android/launcher3/model/data/ItemInfo;->spanX:I

    if-le v5, v11, :cond_3

    move v5, v11

    goto :goto_2

    :cond_3
    move v5, v9

    :goto_2
    invoke-virtual {v4, p0, v5}, Lz3/a;->a(Landroid/content/Context;Z)Lcom/android/launcher3/icons/BaseIconFactory;

    move-result-object v12

    :try_start_1
    sget-object v4, Lz4/g;->a:Lz4/g;

    invoke-virtual {v4}, Lz4/g;->b()F

    move-result v6

    invoke-virtual {p1}, Lcom/android/launcher3/model/data/ItemInfo;->getTargetPackage()Ljava/lang/String;

    move-result-object v7

    move-object v1, p0

    move v2, p2

    move/from16 v3, p3

    move-object v4, v10

    move-object/from16 v5, p6

    move-object v8, v12

    invoke-static/range {v1 .. v8}, Ln3/a;->a(Landroid/content/Context;IILandroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;FLjava/lang/String;Lcom/android/launcher3/icons/BaseIconFactory;)Landroid/graphics/drawable/AdaptiveIconDrawable;

    move-result-object v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v1, :cond_5

    if-eqz v12, :cond_4

    invoke-virtual {v12}, Lcom/android/launcher3/icons/BaseIconFactory;->close()V

    :cond_4
    return-object v1

    :cond_5
    if-eqz v12, :cond_7

    invoke-virtual {v12}, Lcom/android/launcher3/icons/BaseIconFactory;->close()V

    goto :goto_4

    :catchall_0
    move-exception v0

    move-object v1, v0

    if-eqz v12, :cond_6

    :try_start_2
    invoke-virtual {v12}, Lcom/android/launcher3/icons/BaseIconFactory;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_3

    :catchall_1
    move-exception v0

    move-object v2, v0

    invoke-virtual {v1, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_6
    :goto_3
    throw v1

    :cond_7
    :goto_4
    instance-of v1, v10, Landroid/graphics/drawable/AdaptiveIconDrawable;

    if-eqz v1, :cond_8

    invoke-virtual {v10}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    check-cast v1, Landroid/graphics/drawable/AdaptiveIconDrawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/AdaptiveIconDrawable;->getMonochrome()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    if-eqz v1, :cond_8

    invoke-static {p0}, Lcom/android/launcher3/icons/ThemedIconDrawable;->getColors(Landroid/content/Context;)[I

    move-result-object v0

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    aget v2, v0, v11

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    new-instance v2, Landroid/graphics/drawable/AdaptiveIconDrawable;

    new-instance v3, Landroid/graphics/drawable/ColorDrawable;

    aget v0, v0, v9

    invoke-direct {v3, v0}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-direct {v2, v3, v1}, Landroid/graphics/drawable/AdaptiveIconDrawable;-><init>(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    return-object v2

    :cond_8
    return-object v10

    :cond_9
    :goto_5
    return-object p6
.end method

.method public static getPivotsForScalingRectToRect(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/PointF;)V
    .locals 3

    iget v0, p0, Landroid/graphics/Rect;->left:I

    int-to-float v0, v0

    iget v1, p1, Landroid/graphics/Rect;->left:I

    int-to-float v1, v1

    sub-float/2addr v0, v1

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p0}, Landroid/graphics/Rect;->width()I

    move-result v2

    int-to-float v2, v2

    sub-float/2addr v1, v2

    div-float/2addr v0, v1

    iget v1, p1, Landroid/graphics/Rect;->left:I

    int-to-float v1, v1

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v2

    int-to-float v2, v2

    mul-float/2addr v2, v0

    add-float/2addr v1, v2

    iput v1, p2, Landroid/graphics/PointF;->x:F

    iget v0, p0, Landroid/graphics/Rect;->top:I

    int-to-float v0, v0

    iget v1, p1, Landroid/graphics/Rect;->top:I

    int-to-float v1, v1

    sub-float/2addr v0, v1

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p0}, Landroid/graphics/Rect;->height()I

    move-result p0

    int-to-float p0, p0

    sub-float/2addr v1, p0

    div-float/2addr v0, v1

    iget p0, p1, Landroid/graphics/Rect;->top:I

    int-to-float p0, p0

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result p1

    int-to-float p1, p1

    mul-float/2addr p1, v0

    add-float/2addr p0, p1

    iput p0, p2, Landroid/graphics/PointF;->y:F

    return-void
.end method

.method public static getProgress(FFF)F
    .locals 0

    sub-float/2addr p0, p1

    invoke-static {p0}, Ljava/lang/Math;->abs(F)F

    move-result p0

    sub-float/2addr p2, p1

    invoke-static {p2}, Ljava/lang/Math;->abs(F)F

    move-result p1

    div-float/2addr p0, p1

    return p0
.end method

.method public static getSplitPositionOptions(Lcom/android/launcher3/DeviceProfile;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/launcher3/DeviceProfile;",
            ")",
            "Ljava/util/List<",
            "Lcom/android/launcher3/util/SplitConfigurationOptions$SplitPositionOption;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/android/launcher3/util/SplitConfigurationOptions$SplitPositionOption;

    iget-boolean p0, p0, Lcom/android/launcher3/DeviceProfile;->isLandscape:Z

    if-eqz p0, :cond_0

    const v1, 0x7f0802da

    goto :goto_0

    :cond_0
    const v1, 0x7f0802db

    :goto_0
    const v2, 0x7f120229

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, p0, v3}, Lcom/android/launcher3/util/SplitConfigurationOptions$SplitPositionOption;-><init>(IIII)V

    invoke-static {v0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static getSystemProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 6

    :try_start_0
    const-string v0, "android.os.SystemProperties"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const-string v1, "get"

    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/Class;

    const-class v4, Ljava/lang/String;

    const/4 v5, 0x0

    aput-object v4, v3, v5

    invoke-virtual {v0, v1, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    const/4 v1, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    aput-object p0, v2, v5

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-nez v0, :cond_0

    return-object p0

    :catch_0
    const-string p0, "Launcher.Utilities"

    const-string v0, "Unable to read system properties"

    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-object p1
.end method

.method public static getViewBounds(Landroid/view/View;)Landroid/graphics/Rect;
    .locals 7
    .param p0    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    const/4 v0, 0x2

    new-array v0, v0, [I

    invoke-virtual {p0, v0}, Landroid/view/View;->getLocationOnScreen([I)V

    new-instance v1, Landroid/graphics/Rect;

    const/4 v2, 0x0

    aget v3, v0, v2

    const/4 v4, 0x1

    aget v5, v0, v4

    aget v2, v0, v2

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v6

    add-int/2addr v2, v6

    aget v0, v0, v4

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result p0

    add-int/2addr v0, p0

    invoke-direct {v1, v3, v5, v2, v0}, Landroid/graphics/Rect;-><init>(IIII)V

    return-object v1
.end method

.method public static isBinderSizeError(Ljava/lang/Exception;)Z
    .locals 1

    invoke-virtual {p0}, Ljava/lang/Exception;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    instance-of v0, v0, Landroid/os/TransactionTooLargeException;

    if-nez v0, :cond_1

    invoke-virtual {p0}, Ljava/lang/Exception;->getCause()Ljava/lang/Throwable;

    move-result-object p0

    instance-of p0, p0, Landroid/os/DeadObjectException;

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public static isBootCompleted()Z
    .locals 2

    const-string v0, "sys.boot_completed"

    const-string v1, "1"

    invoke-static {v0, v1}, Lcom/android/launcher3/Utilities;->getSystemProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static isDarkTheme(Landroid/content/Context;)Z
    .locals 1

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p0

    iget p0, p0, Landroid/content/res/Configuration;->uiMode:I

    and-int/lit8 p0, p0, 0x30

    const/16 v0, 0x20

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static isPropertyEnabled(Ljava/lang/String;)Z
    .locals 1

    const/4 v0, 0x2

    invoke-static {p0, v0}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result p0

    return p0
.end method

.method public static isRtl(Landroid/content/res/Resources;)Z
    .locals 1

    invoke-virtual {p0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Configuration;->getLayoutDirection()I

    move-result p0

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static isRunningInTestHarness()Z
    .locals 1

    sget-boolean v0, Lcom/android/launcher3/Utilities;->sIsRunningInTestHarness:Z

    return v0
.end method

.method private static loadFullDrawableWithoutTheme(Landroid/content/Context;Lcom/android/launcher3/model/data/ItemInfo;II[Ljava/lang/Object;)Landroid/graphics/drawable/Drawable;
    .locals 6

    invoke-static {p0}, Lcom/android/launcher3/views/ActivityContext;->lookupContext(Landroid/content/Context;)Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/views/ActivityContext;

    invoke-static {p0}, Lcom/android/launcher3/LauncherAppState;->getInstance(Landroid/content/Context;)Lcom/android/launcher3/LauncherAppState;

    move-result-object v1

    instance-of v2, p1, Lcom/android/launcher3/widget/PendingAddShortcutInfo;

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    check-cast p1, Lcom/android/launcher3/widget/PendingAddShortcutInfo;

    invoke-virtual {p1, p0}, Lcom/android/launcher3/widget/PendingAddShortcutInfo;->getActivityInfo(Landroid/content/Context;)Lcom/android/launcher3/pm/ShortcutConfigActivityInfo;

    move-result-object p0

    aput-object p0, p4, v3

    invoke-virtual {v1}, Lcom/android/launcher3/LauncherAppState;->getIconCache()Lcom/android/launcher3/icons/IconCache;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/launcher3/pm/ShortcutConfigActivityInfo;->getFullResIcon(Lcom/android/launcher3/icons/IconCache;)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    return-object p0

    :cond_0
    iget v2, p1, Lcom/android/launcher3/model/data/ItemInfo;->itemType:I

    const/4 v4, 0x0

    if-nez v2, :cond_2

    const-class p2, Landroid/content/pm/LauncherApps;

    invoke-virtual {p0, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/content/pm/LauncherApps;

    invoke-virtual {p1}, Lcom/android/launcher3/model/data/ItemInfo;->getIntent()Landroid/content/Intent;

    move-result-object p3

    iget-object v1, p1, Lcom/android/launcher3/model/data/ItemInfo;->user:Landroid/os/UserHandle;

    invoke-virtual {p2, p3, v1}, Landroid/content/pm/LauncherApps;->resolveActivity(Landroid/content/Intent;Landroid/os/UserHandle;)Landroid/content/pm/LauncherActivityInfo;

    move-result-object p2

    aput-object p2, p4, v3

    if-nez p2, :cond_1

    goto :goto_0

    :cond_1
    invoke-static {p0}, Lcom/android/launcher3/LauncherAppState;->getInstance(Landroid/content/Context;)Lcom/android/launcher3/LauncherAppState;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/launcher3/LauncherAppState;->getIconProvider()Lcom/android/launcher3/icons/LauncherIconProvider;

    move-result-object p0

    invoke-static {p1}, Lb3/m;->f(Lcom/android/launcher3/model/data/ItemInfo;)Z

    move-result p1

    invoke-interface {v0}, Lcom/android/launcher3/views/ActivityContext;->getDeviceProfile()Lj3/a;

    move-result-object p3

    iget-object p3, p3, Lcom/android/launcher3/DeviceProfile;->inv:Lcom/android/launcher3/InvariantDeviceProfile;

    iget p3, p3, Lcom/android/launcher3/InvariantDeviceProfile;->fillResIconDpi:I

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/launcher3/icons/IconProvider;->getIcon(ZLandroid/content/pm/LauncherActivityInfo;I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    :goto_0
    return-object v4

    :cond_2
    const/4 v5, 0x6

    if-ne v2, v5, :cond_4

    invoke-static {p1}, Lcom/android/launcher3/shortcuts/ShortcutKey;->fromItemInfo(Lcom/android/launcher3/model/data/ItemInfo;)Lcom/android/launcher3/shortcuts/ShortcutKey;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/android/launcher3/shortcuts/ShortcutKey;->buildRequest(Landroid/content/Context;)Lcom/android/launcher3/shortcuts/ShortcutRequest;

    move-result-object p1

    const/16 p2, 0xb

    invoke-virtual {p1, p2}, Lcom/android/launcher3/shortcuts/ShortcutRequest;->query(I)Lcom/android/launcher3/shortcuts/ShortcutRequest$QueryResult;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p2

    if-eqz p2, :cond_3

    return-object v4

    :cond_3
    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    aput-object p2, p4, v3

    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/pm/ShortcutInfo;

    invoke-virtual {v1}, Lcom/android/launcher3/LauncherAppState;->getInvariantDeviceProfile()Lcom/android/launcher3/InvariantDeviceProfile;

    move-result-object p2

    iget p2, p2, Lcom/android/launcher3/InvariantDeviceProfile;->fillResIconDpi:I

    invoke-static {p0, p1, p2}, Lcom/android/launcher3/icons/ShortcutCachingLogic;->getIcon(Landroid/content/Context;Landroid/content/pm/ShortcutInfo;I)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    return-object p0

    :cond_4
    const/4 v1, 0x2

    if-ne v2, v1, :cond_6

    iget p0, p1, Lcom/android/launcher3/model/data/ItemInfo;->id:I

    new-instance p1, Landroid/graphics/Point;

    invoke-direct {p1, p2, p3}, Landroid/graphics/Point;-><init>(II)V

    invoke-static {v0, p0, p1}, Lcom/android/launcher3/dragndrop/FolderAdaptiveIcon;->createFolderAdaptiveIcon(Lcom/android/launcher3/views/ActivityContext;ILandroid/graphics/Point;)Lcom/android/launcher3/dragndrop/FolderAdaptiveIcon;

    move-result-object p0

    if-nez p0, :cond_5

    return-object v4

    :cond_5
    aput-object p0, p4, v3

    return-object p0

    :cond_6
    const/16 p2, 0x9

    if-ne v2, p2, :cond_7

    instance-of p2, p1, Lcom/android/launcher3/model/data/ItemInfoWithIcon;

    if-eqz p2, :cond_7

    check-cast p1, Lcom/android/launcher3/model/data/ItemInfoWithIcon;

    iget-object p1, p1, Lcom/android/launcher3/model/data/ItemInfoWithIcon;->bitmap:Lcom/android/launcher3/icons/BitmapInfo;

    invoke-virtual {p1, p0}, Lcom/android/launcher3/icons/BitmapInfo;->newIcon(Landroid/content/Context;)Lcom/android/launcher3/icons/FastBitmapDrawable;

    move-result-object p0

    return-object p0

    :cond_7
    return-object v4
.end method

.method public static makeColorTintingColorFilter(IF)Landroid/graphics/ColorFilter;
    .locals 3

    const/4 v0, 0x0

    cmpl-float v0, p1, v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    new-instance v0, Landroid/graphics/LightingColorFilter;

    const/4 v1, -0x1

    const/4 v2, 0x0

    invoke-static {v1, v2, p1}, Landroidx/core/graphics/ColorUtils;->blendARGB(IIF)I

    move-result v1

    invoke-static {v2, p0, p1}, Landroidx/core/graphics/ColorUtils;->blendARGB(IIF)I

    move-result p0

    invoke-direct {v0, v1, p0}, Landroid/graphics/LightingColorFilter;-><init>(II)V

    return-object v0
.end method

.method public static mapBoundToRange(FFFFFLandroid/view/animation/Interpolator;)F
    .locals 6

    invoke-static {p0, p1, p2}, Lcom/android/launcher3/Utilities;->boundToRange(FFF)F

    move-result v0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move-object v5, p5

    invoke-static/range {v0 .. v5}, Lcom/android/launcher3/Utilities;->mapToRange(FFFFFLandroid/view/animation/Interpolator;)F

    move-result p0

    return p0
.end method

.method public static mapCoordInSelfToDescendant(Landroid/view/View;Landroid/view/View;[F)V
    .locals 3

    sget-object v0, Lcom/android/launcher3/Utilities;->sMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v0}, Landroid/graphics/Matrix;->reset()V

    :goto_0
    if-eq p0, p1, :cond_0

    sget-object v0, Lcom/android/launcher3/Utilities;->sMatrix:Landroid/graphics/Matrix;

    invoke-virtual {p0}, Landroid/view/View;->getScrollX()I

    move-result v1

    neg-int v1, v1

    int-to-float v1, v1

    invoke-virtual {p0}, Landroid/view/View;->getScrollY()I

    move-result v2

    neg-int v2, v2

    int-to-float v2, v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    invoke-virtual {p0}, Landroid/view/View;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->postConcat(Landroid/graphics/Matrix;)Z

    invoke-virtual {p0}, Landroid/view/View;->getLeft()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p0}, Landroid/view/View;->getTop()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p0

    check-cast p0, Landroid/view/View;

    goto :goto_0

    :cond_0
    sget-object p1, Lcom/android/launcher3/Utilities;->sMatrix:Landroid/graphics/Matrix;

    invoke-virtual {p0}, Landroid/view/View;->getScrollX()I

    move-result v0

    neg-int v0, v0

    int-to-float v0, v0

    invoke-virtual {p0}, Landroid/view/View;->getScrollY()I

    move-result p0

    neg-int p0, p0

    int-to-float p0, p0

    invoke-virtual {p1, v0, p0}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    sget-object p0, Lcom/android/launcher3/Utilities;->sInverseMatrix:Landroid/graphics/Matrix;

    invoke-virtual {p1, p0}, Landroid/graphics/Matrix;->invert(Landroid/graphics/Matrix;)Z

    invoke-virtual {p0, p2}, Landroid/graphics/Matrix;->mapPoints([F)V

    return-void
.end method

.method public static mapRange(FFF)F
    .locals 0

    sub-float/2addr p2, p1

    mul-float/2addr p0, p2

    add-float/2addr p1, p0

    return p1
.end method

.method public static mapRectInSelfToDescendant(Landroid/view/View;Landroid/view/View;Landroid/graphics/Rect;)V
    .locals 6

    const/4 v0, 0x4

    new-array v0, v0, [F

    iget v1, p2, Landroid/graphics/Rect;->left:I

    int-to-float v1, v1

    const/4 v2, 0x0

    aput v1, v0, v2

    iget v1, p2, Landroid/graphics/Rect;->top:I

    int-to-float v1, v1

    const/4 v3, 0x1

    aput v1, v0, v3

    iget v1, p2, Landroid/graphics/Rect;->right:I

    int-to-float v1, v1

    const/4 v4, 0x2

    aput v1, v0, v4

    iget v1, p2, Landroid/graphics/Rect;->bottom:I

    int-to-float v1, v1

    const/4 v5, 0x3

    aput v1, v0, v5

    invoke-static {p0, p1, v0}, Lcom/android/launcher3/Utilities;->mapCoordInSelfToDescendant(Landroid/view/View;Landroid/view/View;[F)V

    aget p0, v0, v2

    float-to-int p0, p0

    aget p1, v0, v3

    float-to-int p1, p1

    aget v1, v0, v4

    float-to-int v1, v1

    aget v0, v0, v5

    float-to-int v0, v0

    invoke-virtual {p2, p0, p1, v1, v0}, Landroid/graphics/Rect;->set(IIII)V

    return-void
.end method

.method public static mapToRange(FFFFFLandroid/view/animation/Interpolator;)F
    .locals 1

    cmpl-float v0, p1, p2

    if-eqz v0, :cond_1

    cmpl-float v0, p3, p4

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {p0, p1, p2}, Lcom/android/launcher3/Utilities;->getProgress(FFF)F

    move-result p0

    invoke-interface {p5, p0}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result p0

    invoke-static {p0, p3, p4}, Lcom/android/launcher3/Utilities;->mapRange(FFF)F

    move-result p0

    return p0

    :cond_1
    :goto_0
    const-string p0, "Launcher.Utilities"

    const-string p1, "mapToRange: range has 0 length"

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return p3
.end method

.method public static offsetPoints([FFF)V
    .locals 3

    const/4 v0, 0x0

    :goto_0
    array-length v1, p0

    if-ge v0, v1, :cond_0

    aget v1, p0, v0

    add-float/2addr v1, p1

    aput v1, p0, v0

    add-int/lit8 v1, v0, 0x1

    aget v2, p0, v1

    add-float/2addr v2, p2

    aput v2, p0, v1

    add-int/lit8 v0, v0, 0x2

    goto :goto_0

    :cond_0
    return-void
.end method

.method public static pointInView(Landroid/view/View;FFF)Z
    .locals 2

    neg-float v0, p3

    cmpl-float v1, p1, v0

    if-ltz v1, :cond_0

    cmpl-float v0, p2, v0

    if-ltz v0, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v0

    int-to-float v0, v0

    add-float/2addr v0, p3

    cmpg-float p1, p1, v0

    if-gez p1, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result p0

    int-to-float p0, p0

    add-float/2addr p0, p3

    cmpg-float p0, p2, p0

    if-gez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static postAsyncCallback(Landroid/os/Handler;Ljava/lang/Runnable;)V
    .locals 1

    invoke-static {p0, p1}, Landroid/os/Message;->obtain(Landroid/os/Handler;Ljava/lang/Runnable;)Landroid/os/Message;

    move-result-object p1

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/os/Message;->setAsynchronous(Z)V

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public static prefixTextWithIcon(Landroid/content/Context;ILjava/lang/CharSequence;)Ljava/lang/CharSequence;
    .locals 3

    new-instance v0, Landroid/text/SpannableString;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {v0, p2}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    new-instance p2, Lcom/android/launcher3/graphics/TintedDrawableSpan;

    invoke-direct {p2, p0, p1}, Lcom/android/launcher3/graphics/TintedDrawableSpan;-><init>(Landroid/content/Context;I)V

    const/4 p0, 0x0

    const/4 p1, 0x1

    const/16 v1, 0x22

    invoke-virtual {v0, p2, p0, p1, v1}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    return-object v0
.end method

.method public static pxFromSp(FLandroid/util/DisplayMetrics;)I
    .locals 1

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-static {p0, p1, v0}, Lcom/android/launcher3/Utilities;->pxFromSp(FLandroid/util/DisplayMetrics;F)I

    move-result p0

    return p0
.end method

.method public static pxFromSp(FLandroid/util/DisplayMetrics;F)I
    .locals 1

    const/4 v0, 0x2

    invoke-static {v0, p0, p1}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result p0

    mul-float/2addr p2, p0

    invoke-static {p2}, Lcom/android/launcher3/testing/shared/ResourceUtils;->roundPxValueFromFloat(F)I

    move-result p0

    return p0
.end method

.method public static pxToSp(F)F
    .locals 1

    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->scaledDensity:F

    div-float/2addr p0, v0

    return p0
.end method

.method public static rotateBounds(Landroid/graphics/Rect;III)V
    .locals 2

    rem-int/lit8 p3, p3, 0x4

    add-int/lit8 p3, p3, 0x4

    rem-int/lit8 p3, p3, 0x4

    iget v0, p0, Landroid/graphics/Rect;->left:I

    const/4 v1, 0x1

    if-eq p3, v1, :cond_2

    const/4 v1, 0x2

    if-eq p3, v1, :cond_1

    const/4 p1, 0x3

    if-eq p3, p1, :cond_0

    return-void

    :cond_0
    iget p1, p0, Landroid/graphics/Rect;->bottom:I

    sub-int p1, p2, p1

    iput p1, p0, Landroid/graphics/Rect;->left:I

    iget p1, p0, Landroid/graphics/Rect;->right:I

    iput p1, p0, Landroid/graphics/Rect;->bottom:I

    iget p1, p0, Landroid/graphics/Rect;->top:I

    sub-int/2addr p2, p1

    iput p2, p0, Landroid/graphics/Rect;->right:I

    iput v0, p0, Landroid/graphics/Rect;->top:I

    return-void

    :cond_1
    iget p2, p0, Landroid/graphics/Rect;->right:I

    sub-int p2, p1, p2

    iput p2, p0, Landroid/graphics/Rect;->left:I

    sub-int/2addr p1, v0

    iput p1, p0, Landroid/graphics/Rect;->right:I

    return-void

    :cond_2
    iget p2, p0, Landroid/graphics/Rect;->top:I

    iput p2, p0, Landroid/graphics/Rect;->left:I

    iget p2, p0, Landroid/graphics/Rect;->right:I

    sub-int p2, p1, p2

    iput p2, p0, Landroid/graphics/Rect;->top:I

    iget p2, p0, Landroid/graphics/Rect;->bottom:I

    iput p2, p0, Landroid/graphics/Rect;->right:I

    sub-int/2addr p1, v0

    iput p1, p0, Landroid/graphics/Rect;->bottom:I

    return-void
.end method

.method public static roundArray([F[I)V
    .locals 2

    const/4 v0, 0x0

    :goto_0
    array-length v1, p0

    if-ge v0, v1, :cond_0

    aget v1, p0, v0

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    aput v1, p1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public static scaleRectAboutCenter(Landroid/graphics/Rect;F)V
    .locals 4

    const/high16 v0, 0x3f800000    # 1.0f

    cmpl-float v0, p1, v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/graphics/Rect;->centerX()I

    move-result v0

    invoke-virtual {p0}, Landroid/graphics/Rect;->centerY()I

    move-result v1

    neg-int v2, v0

    neg-int v3, v1

    invoke-virtual {p0, v2, v3}, Landroid/graphics/Rect;->offset(II)V

    iget v2, p0, Landroid/graphics/Rect;->left:I

    int-to-float v2, v2

    mul-float/2addr v2, p1

    const/high16 v3, 0x3f000000    # 0.5f

    add-float/2addr v2, v3

    float-to-int v2, v2

    iput v2, p0, Landroid/graphics/Rect;->left:I

    iget v2, p0, Landroid/graphics/Rect;->top:I

    int-to-float v2, v2

    mul-float/2addr v2, p1

    add-float/2addr v2, v3

    float-to-int v2, v2

    iput v2, p0, Landroid/graphics/Rect;->top:I

    iget v2, p0, Landroid/graphics/Rect;->right:I

    int-to-float v2, v2

    mul-float/2addr v2, p1

    add-float/2addr v2, v3

    float-to-int v2, v2

    iput v2, p0, Landroid/graphics/Rect;->right:I

    iget v2, p0, Landroid/graphics/Rect;->bottom:I

    int-to-float v2, v2

    mul-float/2addr v2, p1

    add-float/2addr v2, v3

    float-to-int p1, v2

    iput p1, p0, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {p0, v0, v1}, Landroid/graphics/Rect;->offset(II)V

    :cond_0
    return-void
.end method

.method public static scaleRectFAboutCenter(Landroid/graphics/RectF;F)V
    .locals 0

    invoke-static {p0, p1, p1}, Lcom/android/launcher3/Utilities;->scaleRectFAboutCenter(Landroid/graphics/RectF;FF)V

    return-void
.end method

.method public static scaleRectFAboutCenter(Landroid/graphics/RectF;FF)V
    .locals 4

    invoke-virtual {p0}, Landroid/graphics/RectF;->centerX()F

    move-result v0

    invoke-virtual {p0}, Landroid/graphics/RectF;->centerY()F

    move-result v1

    neg-float v2, v0

    neg-float v3, v1

    invoke-virtual {p0, v2, v3}, Landroid/graphics/RectF;->offset(FF)V

    iget v2, p0, Landroid/graphics/RectF;->left:F

    mul-float/2addr v2, p1

    iput v2, p0, Landroid/graphics/RectF;->left:F

    iget v2, p0, Landroid/graphics/RectF;->top:F

    mul-float/2addr v2, p2

    iput v2, p0, Landroid/graphics/RectF;->top:F

    iget v2, p0, Landroid/graphics/RectF;->right:F

    mul-float/2addr v2, p1

    iput v2, p0, Landroid/graphics/RectF;->right:F

    iget p1, p0, Landroid/graphics/RectF;->bottom:F

    mul-float/2addr p1, p2

    iput p1, p0, Landroid/graphics/RectF;->bottom:F

    invoke-virtual {p0, v0, v1}, Landroid/graphics/RectF;->offset(FF)V

    return-void
.end method

.method public static shrinkRect(Landroid/graphics/Rect;FF)F
    .locals 3

    invoke-static {p1, p2}, Ljava/lang/Math;->min(FF)F

    move-result v0

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result v0

    cmpg-float v1, v0, v1

    if-gez v1, :cond_0

    invoke-virtual {p0}, Landroid/graphics/Rect;->width()I

    move-result v1

    int-to-float v1, v1

    sub-float/2addr p1, v0

    mul-float/2addr v1, p1

    const/high16 p1, 0x3f000000    # 0.5f

    mul-float/2addr v1, p1

    float-to-int v1, v1

    iget v2, p0, Landroid/graphics/Rect;->left:I

    add-int/2addr v2, v1

    iput v2, p0, Landroid/graphics/Rect;->left:I

    iget v2, p0, Landroid/graphics/Rect;->right:I

    sub-int/2addr v2, v1

    iput v2, p0, Landroid/graphics/Rect;->right:I

    invoke-virtual {p0}, Landroid/graphics/Rect;->height()I

    move-result v1

    int-to-float v1, v1

    sub-float/2addr p2, v0

    mul-float/2addr v1, p2

    mul-float/2addr v1, p1

    float-to-int p1, v1

    iget p2, p0, Landroid/graphics/Rect;->top:I

    add-int/2addr p2, p1

    iput p2, p0, Landroid/graphics/Rect;->top:I

    iget p2, p0, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr p2, p1

    iput p2, p0, Landroid/graphics/Rect;->bottom:I

    :cond_0
    return v0
.end method

.method public static squaredHypot(FF)F
    .locals 0

    mul-float/2addr p0, p0

    mul-float/2addr p1, p1

    add-float/2addr p0, p1

    return p0
.end method

.method public static squaredTouchSlop(Landroid/content/Context;)F
    .locals 0

    invoke-static {p0}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result p0

    int-to-float p0, p0

    mul-float/2addr p0, p0

    return p0
.end method

.method public static translateOverlappingView(Landroid/view/View;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;I)V
    .locals 2
    .param p0    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Landroid/graphics/Rect;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/graphics/Rect;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Landroid/graphics/Rect;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    const/4 v0, 0x0

    if-eqz p4, :cond_3

    const/4 v1, 0x1

    if-eq p4, v1, :cond_2

    const/4 v1, 0x2

    if-eq p4, v1, :cond_1

    const/4 v1, 0x3

    if-eq p4, v1, :cond_0

    goto :goto_2

    :cond_0
    iget p3, p3, Landroid/graphics/Rect;->right:I

    iget p4, p1, Landroid/graphics/Rect;->left:I

    sub-int/2addr p3, p4

    invoke-static {v0, p3}, Ljava/lang/Math;->max(II)I

    move-result p3

    iget p2, p2, Landroid/graphics/Rect;->right:I

    iget p1, p1, Landroid/graphics/Rect;->right:I

    sub-int/2addr p2, p1

    invoke-static {p3, p2}, Ljava/lang/Math;->min(II)I

    move-result p1

    goto :goto_0

    :cond_1
    iget p3, p3, Landroid/graphics/Rect;->left:I

    iget p4, p1, Landroid/graphics/Rect;->right:I

    sub-int/2addr p3, p4

    invoke-static {v0, p3}, Ljava/lang/Math;->min(II)I

    move-result p3

    iget p2, p2, Landroid/graphics/Rect;->left:I

    iget p1, p1, Landroid/graphics/Rect;->left:I

    sub-int/2addr p2, p1

    invoke-static {p3, p2}, Ljava/lang/Math;->max(II)I

    move-result p1

    :goto_0
    int-to-float p1, p1

    invoke-virtual {p0, p1}, Landroid/view/View;->setTranslationX(F)V

    goto :goto_2

    :cond_2
    iget p3, p3, Landroid/graphics/Rect;->bottom:I

    iget p4, p1, Landroid/graphics/Rect;->top:I

    sub-int/2addr p3, p4

    invoke-static {v0, p3}, Ljava/lang/Math;->max(II)I

    move-result p3

    iget p2, p2, Landroid/graphics/Rect;->bottom:I

    iget p1, p1, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr p2, p1

    invoke-static {p3, p2}, Ljava/lang/Math;->min(II)I

    move-result p1

    goto :goto_1

    :cond_3
    iget p3, p3, Landroid/graphics/Rect;->top:I

    iget p4, p1, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr p3, p4

    invoke-static {v0, p3}, Ljava/lang/Math;->min(II)I

    move-result p3

    iget p2, p2, Landroid/graphics/Rect;->top:I

    iget p1, p1, Landroid/graphics/Rect;->top:I

    sub-int/2addr p2, p1

    invoke-static {p3, p2}, Ljava/lang/Math;->max(II)I

    move-result p1

    :goto_1
    int-to-float p1, p1

    invoke-virtual {p0, p1}, Landroid/view/View;->setTranslationY(F)V

    :goto_2
    return-void
.end method

.method public static trim(Ljava/lang/CharSequence;)Ljava/lang/String;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    if-nez p0, :cond_0

    const-string p0, ""

    return-object p0

    :cond_0
    sget-object v0, Lcom/android/launcher3/Utilities;->sTrimPattern:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p0

    const-string v0, "$1"

    invoke-virtual {p0, v0}, Ljava/util/regex/Matcher;->replaceAll(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static wrapForTts(Ljava/lang/CharSequence;Ljava/lang/String;)Ljava/lang/CharSequence;
    .locals 3

    new-instance v0, Landroid/text/SpannableString;

    invoke-direct {v0, p0}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    new-instance p0, Landroid/text/style/TtsSpan$TextBuilder;

    invoke-direct {p0, p1}, Landroid/text/style/TtsSpan$TextBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/text/style/TtsSpan$TextBuilder;->build()Landroid/text/style/TtsSpan;

    move-result-object p0

    invoke-virtual {v0}, Landroid/text/SpannableString;->length()I

    move-result p1

    const/4 v1, 0x0

    const/16 v2, 0x12

    invoke-virtual {v0, p0, v1, p1, v2}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    return-object v0
.end method
