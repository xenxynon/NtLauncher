.class public final Lcom/nothing/launcher/widget/LocalWallpaperColorsExtractor;
.super Lcom/android/launcher3/widget/LocalColorExtractor;
.source "SourceFile"

# interfaces
.implements Landroid/app/WallpaperManager$LocalWallpaperColorConsumer;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/nothing/launcher/widget/LocalWallpaperColorsExtractor$a;
    }
.end annotation


# static fields
.field public static final j:Lcom/nothing/launcher/widget/LocalWallpaperColorsExtractor$a;


# instance fields
.field private final a:Z

.field private final b:Landroid/graphics/RectF;

.field private final c:Landroid/graphics/RectF;

.field private final d:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/graphics/RectF;",
            ">;"
        }
    .end annotation
.end field

.field private e:Lb5/b;

.field private f:Lcom/android/launcher3/widget/LocalColorExtractor$Listener;

.field private final g:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final h:Ln5/e;

.field private final i:Ln5/e;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/nothing/launcher/widget/LocalWallpaperColorsExtractor$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/nothing/launcher/widget/LocalWallpaperColorsExtractor$a;-><init>(Lkotlin/jvm/internal/i;)V

    sput-object v0, Lcom/nothing/launcher/widget/LocalWallpaperColorsExtractor;->j:Lcom/nothing/launcher/widget/LocalWallpaperColorsExtractor$a;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/android/launcher3/widget/LocalColorExtractor;-><init>()V

    sget-object v0, Le5/a;->a:Le5/a;

    invoke-virtual {v0, p1}, Le5/a;->a(Landroid/content/Context;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/nothing/launcher/widget/LocalWallpaperColorsExtractor;->a:Z

    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/nothing/launcher/widget/LocalWallpaperColorsExtractor;->b:Landroid/graphics/RectF;

    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/nothing/launcher/widget/LocalWallpaperColorsExtractor;->c:Landroid/graphics/RectF;

    invoke-static {v0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    const-string v1, "singletonList(region)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/n;->d(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/nothing/launcher/widget/LocalWallpaperColorsExtractor;->d:Ljava/util/List;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/nothing/launcher/widget/LocalWallpaperColorsExtractor;->g:Ljava/util/concurrent/atomic/AtomicBoolean;

    new-instance v0, Lcom/nothing/launcher/widget/LocalWallpaperColorsExtractor$c;

    invoke-direct {v0, p1}, Lcom/nothing/launcher/widget/LocalWallpaperColorsExtractor$c;-><init>(Landroid/content/Context;)V

    invoke-static {v0}, Ln5/f;->b(Ly5/a;)Ln5/e;

    move-result-object v0

    iput-object v0, p0, Lcom/nothing/launcher/widget/LocalWallpaperColorsExtractor;->h:Ln5/e;

    new-instance v0, Lcom/nothing/launcher/widget/LocalWallpaperColorsExtractor$b;

    invoke-direct {v0, p1}, Lcom/nothing/launcher/widget/LocalWallpaperColorsExtractor$b;-><init>(Landroid/content/Context;)V

    invoke-static {v0}, Ln5/f;->b(Ly5/a;)Ln5/e;

    move-result-object p1

    iput-object p1, p0, Lcom/nothing/launcher/widget/LocalWallpaperColorsExtractor;->i:Ln5/e;

    return-void
.end method

.method private final a()V
    .locals 3

    invoke-direct {p0}, Lcom/nothing/launcher/widget/LocalWallpaperColorsExtractor;->e()Landroid/app/WallpaperManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/app/WallpaperManager;->removeOnColorsChangedListener(Landroid/app/WallpaperManager$LocalWallpaperColorConsumer;)V

    iget-object v0, p0, Lcom/nothing/launcher/widget/LocalWallpaperColorsExtractor;->f:Lcom/android/launcher3/widget/LocalColorExtractor$Listener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nothing/launcher/widget/LocalWallpaperColorsExtractor;->c:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/nothing/launcher/widget/LocalWallpaperColorsExtractor;->g:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    invoke-direct {p0}, Lcom/nothing/launcher/widget/LocalWallpaperColorsExtractor;->e()Landroid/app/WallpaperManager;

    move-result-object v0

    iget-object v1, p0, Lcom/nothing/launcher/widget/LocalWallpaperColorsExtractor;->d:Ljava/util/List;

    const/4 v2, 0x1

    invoke-virtual {v0, p0, v1, v2}, Landroid/app/WallpaperManager;->addOnColorsChangedListener(Landroid/app/WallpaperManager$LocalWallpaperColorConsumer;Ljava/util/List;I)V

    :cond_0
    return-void
.end method

.method private final b(Landroid/graphics/RectF;Landroid/view/View;Landroid/view/View;)V
    .locals 5

    if-eq p2, p3, :cond_1

    invoke-virtual {p2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    instance-of v1, v0, Landroid/view/ViewGroup;

    if-eqz v1, :cond_1

    invoke-virtual {p2}, Landroid/view/View;->getLeft()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p2}, Landroid/view/View;->getTop()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {p1, v1, v2}, Landroid/graphics/RectF;->offset(FF)V

    instance-of v1, v0, Lcom/android/launcher3/PagedView;

    if-eqz v1, :cond_0

    iget v1, p1, Landroid/graphics/RectF;->left:F

    move-object v2, v0

    check-cast v2, Lcom/android/launcher3/PagedView;

    move-object v3, v0

    check-cast v3, Landroid/view/ViewGroup;

    invoke-virtual {v3, p2}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    move-result v4

    invoke-virtual {v2, v4}, Lcom/android/launcher3/PagedView;->getScrollForPage(I)I

    move-result v4

    int-to-float v4, v4

    sub-float/2addr v1, v4

    iput v1, p1, Landroid/graphics/RectF;->left:F

    iget v1, p1, Landroid/graphics/RectF;->right:F

    invoke-virtual {v3, p2}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    move-result p2

    invoke-virtual {v2, p2}, Lcom/android/launcher3/PagedView;->getScrollForPage(I)I

    move-result p2

    int-to-float p2, p2

    sub-float/2addr v1, p2

    iput v1, p1, Landroid/graphics/RectF;->right:F

    :cond_0
    check-cast v0, Landroid/view/View;

    invoke-direct {p0, p1, v0, p3}, Lcom/nothing/launcher/widget/LocalWallpaperColorsExtractor;->b(Landroid/graphics/RectF;Landroid/view/View;Landroid/view/View;)V

    :cond_1
    return-void
.end method

.method private final c(Landroid/graphics/Rect;Landroid/view/View;I)Landroid/graphics/RectF;
    .locals 5

    invoke-virtual {p2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/launcher3/views/ActivityContext;->lookupContext(Landroid/content/Context;)Landroid/content/Context;

    move-result-object v0

    const-string v1, "null cannot be cast to non-null type com.android.launcher3.views.ActivityContext"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/n;->c(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Lcom/android/launcher3/views/ActivityContext;

    instance-of v1, v0, Lcom/android/launcher3/Launcher;

    if-eqz v1, :cond_4

    check-cast v0, Lcom/android/launcher3/Launcher;

    new-instance v1, Landroid/graphics/RectF;

    invoke-direct {v1}, Landroid/graphics/RectF;-><init>()V

    invoke-virtual {v1, p1}, Landroid/graphics/RectF;->set(Landroid/graphics/Rect;)V

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getDragLayer()Lcom/android/launcher3/dragndrop/NTDragLayer;

    move-result-object p1

    const-string v2, "launcher.dragLayer"

    invoke-static {p1, v2}, Lkotlin/jvm/internal/n;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, v1, p2, p1}, Lcom/nothing/launcher/widget/LocalWallpaperColorsExtractor;->b(Landroid/graphics/RectF;Landroid/view/View;Landroid/view/View;)V

    invoke-virtual {v1}, Landroid/graphics/RectF;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p0, p0, Lcom/nothing/launcher/widget/LocalWallpaperColorsExtractor;->b:Landroid/graphics/RectF;

    invoke-virtual {p0}, Landroid/graphics/RectF;->setEmpty()V

    return-object p0

    :cond_0
    iget-object p1, p0, Lcom/nothing/launcher/widget/LocalWallpaperColorsExtractor;->e:Lb5/b;

    if-nez p1, :cond_1

    new-instance p1, Lb5/b;

    invoke-direct {p1, v0}, Lb5/b;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/nothing/launcher/widget/LocalWallpaperColorsExtractor;->e:Lb5/b;

    :cond_1
    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getWorkspace()Lcom/android/launcher3/Workspace;

    move-result-object p1

    const-string p2, "launcher.workspace"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/n;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/android/launcher3/BaseActivity;->getDeviceProfile()Lj3/a;

    move-result-object p2

    iget v0, p2, Lcom/android/launcher3/DeviceProfile;->windowX:I

    iget v2, p2, Lcom/android/launcher3/DeviceProfile;->windowY:I

    new-instance v3, Landroid/graphics/RectF;

    invoke-direct {v3}, Landroid/graphics/RectF;-><init>()V

    invoke-virtual {v3, v1}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    int-to-float v0, v0

    int-to-float v1, v2

    invoke-virtual {v3, v0, v1}, Landroid/graphics/RectF;->offset(FF)V

    iget-object v0, p0, Lcom/nothing/launcher/widget/LocalWallpaperColorsExtractor;->e:Lb5/b;

    invoke-static {v0}, Lkotlin/jvm/internal/n;->b(Ljava/lang/Object;)V

    invoke-virtual {v0, p3}, Lb5/b;->b(I)I

    move-result p3

    iget v0, p2, Lcom/android/launcher3/DeviceProfile;->widthPx:I

    iget p2, p2, Lcom/android/launcher3/DeviceProfile;->heightPx:I

    invoke-virtual {p1}, Lcom/android/launcher3/Workspace;->getNumPagesForWallpaperParallax()I

    move-result p1

    int-to-float p1, p1

    const/high16 v1, 0x3f800000    # 1.0f

    div-float p1, v1, p1

    iget v2, v3, Landroid/graphics/RectF;->left:F

    int-to-float v0, v0

    div-float/2addr v2, v0

    int-to-float p3, p3

    add-float/2addr v2, p3

    mul-float/2addr v2, p1

    iget v4, v3, Landroid/graphics/RectF;->right:F

    div-float/2addr v4, v0

    add-float/2addr v4, p3

    mul-float/2addr v4, p1

    iget p1, v3, Landroid/graphics/RectF;->top:F

    int-to-float p2, p2

    div-float/2addr p1, p2

    iget p3, v3, Landroid/graphics/RectF;->bottom:F

    div-float/2addr p3, p2

    const/4 p2, 0x0

    cmpg-float v0, v2, p2

    if-ltz v0, :cond_3

    cmpl-float v0, v4, v1

    if-gtz v0, :cond_3

    cmpg-float p2, p1, p2

    if-ltz p2, :cond_3

    cmpl-float p2, p3, v1

    if-lez p2, :cond_2

    goto :goto_0

    :cond_2
    iget-object p2, p0, Lcom/nothing/launcher/widget/LocalWallpaperColorsExtractor;->b:Landroid/graphics/RectF;

    invoke-virtual {p2, v2, p1, v4, p3}, Landroid/graphics/RectF;->set(FFFF)V

    goto :goto_1

    :cond_3
    :goto_0
    iget-object p1, p0, Lcom/nothing/launcher/widget/LocalWallpaperColorsExtractor;->b:Landroid/graphics/RectF;

    invoke-virtual {p1}, Landroid/graphics/RectF;->setEmpty()V

    :goto_1
    iget-object p0, p0, Lcom/nothing/launcher/widget/LocalWallpaperColorsExtractor;->b:Landroid/graphics/RectF;

    return-object p0

    :cond_4
    new-instance p0, Landroid/graphics/RectF;

    invoke-direct {p0}, Landroid/graphics/RectF;-><init>()V

    return-object p0
.end method

.method private final d()Lb5/a;
    .locals 0

    iget-object p0, p0, Lcom/nothing/launcher/widget/LocalWallpaperColorsExtractor;->i:Ln5/e;

    invoke-interface {p0}, Ln5/e;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lb5/a;

    return-object p0
.end method

.method private final e()Landroid/app/WallpaperManager;
    .locals 1

    iget-object p0, p0, Lcom/nothing/launcher/widget/LocalWallpaperColorsExtractor;->h:Ln5/e;

    invoke-interface {p0}, Ln5/e;->getValue()Ljava/lang/Object;

    move-result-object p0

    const-string v0, "<get-wallpaperManager>(...)"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/n;->d(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p0, Landroid/app/WallpaperManager;

    return-object p0
.end method

.method private final f(Landroid/graphics/RectF;Landroid/graphics/RectF;F)Z
    .locals 2

    iget v0, p1, Landroid/graphics/RectF;->left:F

    iget v1, p2, Landroid/graphics/RectF;->left:F

    invoke-direct {p0, v0, v1, p3}, Lcom/nothing/launcher/widget/LocalWallpaperColorsExtractor;->g(FFF)Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p1, Landroid/graphics/RectF;->right:F

    iget v1, p2, Landroid/graphics/RectF;->right:F

    invoke-direct {p0, v0, v1, p3}, Lcom/nothing/launcher/widget/LocalWallpaperColorsExtractor;->g(FFF)Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p1, Landroid/graphics/RectF;->top:F

    iget v1, p2, Landroid/graphics/RectF;->top:F

    invoke-direct {p0, v0, v1, p3}, Lcom/nothing/launcher/widget/LocalWallpaperColorsExtractor;->g(FFF)Z

    move-result v0

    if-eqz v0, :cond_0

    iget p1, p1, Landroid/graphics/RectF;->bottom:F

    iget p2, p2, Landroid/graphics/RectF;->bottom:F

    invoke-direct {p0, p1, p2, p3}, Lcom/nothing/launcher/widget/LocalWallpaperColorsExtractor;->g(FFF)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private final g(FFF)Z
    .locals 0

    sub-float/2addr p1, p2

    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result p0

    cmpg-float p0, p0, p3

    if-gez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method


# virtual methods
.method public applyColorsOverride(Landroid/content/Context;Landroid/app/WallpaperColors;)V
    .locals 1

    const-string v0, "colors"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p2}, Lcom/nothing/launcher/widget/LocalWallpaperColorsExtractor;->generateColorsOverride(Landroid/app/WallpaperColors;)Landroid/util/SparseIntArray;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-static {p1, p0}, Landroid/widget/RemoteViews$ColorResources;->create(Landroid/content/Context;Landroid/util/SparseIntArray;)Landroid/widget/RemoteViews$ColorResources;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/widget/RemoteViews$ColorResources;->apply(Landroid/content/Context;)V

    :cond_0
    return-void
.end method

.method public generateColorsOverride(Landroid/app/WallpaperColors;)Landroid/util/SparseIntArray;
    .locals 1

    const-string v0, "colors"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/nothing/launcher/widget/LocalWallpaperColorsExtractor;->d()Lb5/a;

    move-result-object p0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    invoke-virtual {p0, p1}, Lb5/a;->b(Landroid/app/WallpaperColors;)Landroid/util/SparseIntArray;

    move-result-object p0

    return-object p0
.end method

.method public hasWallpaperColorChanged()Z
    .locals 0

    iget-object p0, p0, Lcom/nothing/launcher/widget/LocalWallpaperColorsExtractor;->g:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result p0

    return p0
.end method

.method public onColorsChanged(Landroid/graphics/RectF;Landroid/app/WallpaperColors;)V
    .locals 1

    const-string v0, "area"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "colors"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget-boolean p1, p0, Lcom/nothing/launcher/widget/LocalWallpaperColorsExtractor;->a:Z

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/nothing/launcher/widget/LocalWallpaperColorsExtractor;->f:Lcom/android/launcher3/widget/LocalColorExtractor$Listener;

    if-eqz p1, :cond_0

    invoke-virtual {p0, p2}, Lcom/nothing/launcher/widget/LocalWallpaperColorsExtractor;->generateColorsOverride(Landroid/app/WallpaperColors;)Landroid/util/SparseIntArray;

    move-result-object p2

    invoke-interface {p1, p2}, Lcom/android/launcher3/widget/LocalColorExtractor$Listener;->onColorsChanged(Landroid/util/SparseIntArray;)V

    :cond_0
    iget-object p0, p0, Lcom/nothing/launcher/widget/LocalWallpaperColorsExtractor;->g:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    :cond_1
    return-void
.end method

.method public setListener(Lcom/android/launcher3/widget/LocalColorExtractor$Listener;)V
    .locals 1

    iget-boolean v0, p0, Lcom/nothing/launcher/widget/LocalWallpaperColorsExtractor;->a:Z

    if-eqz v0, :cond_0

    iput-object p1, p0, Lcom/nothing/launcher/widget/LocalWallpaperColorsExtractor;->f:Lcom/android/launcher3/widget/LocalColorExtractor$Listener;

    invoke-direct {p0}, Lcom/nothing/launcher/widget/LocalWallpaperColorsExtractor;->a()V

    :cond_0
    return-void
.end method

.method public setWorkspaceLocation(Landroid/graphics/Rect;Landroid/view/View;I)V
    .locals 1

    const-string v0, "rect"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "view"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/nothing/launcher/widget/LocalWallpaperColorsExtractor;->a:Z

    if-eqz v0, :cond_0

    invoke-direct {p0, p1, p2, p3}, Lcom/nothing/launcher/widget/LocalWallpaperColorsExtractor;->c(Landroid/graphics/Rect;Landroid/view/View;I)Landroid/graphics/RectF;

    move-result-object p1

    iget-object p2, p0, Lcom/nothing/launcher/widget/LocalWallpaperColorsExtractor;->c:Landroid/graphics/RectF;

    const p3, 0x358637bd    # 1.0E-6f

    invoke-direct {p0, p1, p2, p3}, Lcom/nothing/launcher/widget/LocalWallpaperColorsExtractor;->f(Landroid/graphics/RectF;Landroid/graphics/RectF;F)Z

    move-result p1

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/nothing/launcher/widget/LocalWallpaperColorsExtractor;->c:Landroid/graphics/RectF;

    iget-object p2, p0, Lcom/nothing/launcher/widget/LocalWallpaperColorsExtractor;->b:Landroid/graphics/RectF;

    invoke-virtual {p1, p2}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    invoke-direct {p0}, Lcom/nothing/launcher/widget/LocalWallpaperColorsExtractor;->a()V

    :cond_0
    return-void
.end method
