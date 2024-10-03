.class public Ln4/d;
.super Landroidx/lifecycle/ViewModel;
.source "SourceFile"

# interfaces
.implements Ls3/f;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ln4/d$a;
    }
.end annotation


# static fields
.field public static final l:Ln4/d$a;


# instance fields
.field private final g:Landroidx/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/MutableLiveData<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field

.field private final h:Lkotlinx/coroutines/flow/u;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlinx/coroutines/flow/u<",
            "Lt4/g;",
            ">;"
        }
    .end annotation
.end field

.field private final i:Lkotlinx/coroutines/flow/c0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlinx/coroutines/flow/c0<",
            "Lt4/g;",
            ">;"
        }
    .end annotation
.end field

.field private final j:Lkotlinx/coroutines/flow/u;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlinx/coroutines/flow/u<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private final k:Lkotlinx/coroutines/flow/c0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlinx/coroutines/flow/c0<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Ln4/d$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ln4/d$a;-><init>(Lkotlin/jvm/internal/i;)V

    sput-object v0, Ln4/d;->l:Ln4/d$a;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Landroidx/lifecycle/ViewModel;-><init>()V

    new-instance v0, Landroidx/lifecycle/MutableLiveData;

    invoke-direct {v0}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    iput-object v0, p0, Ln4/d;->g:Landroidx/lifecycle/MutableLiveData;

    const/4 v0, 0x0

    invoke-static {v0}, Lkotlinx/coroutines/flow/e0;->a(Ljava/lang/Object;)Lkotlinx/coroutines/flow/u;

    move-result-object v1

    iput-object v1, p0, Ln4/d;->h:Lkotlinx/coroutines/flow/u;

    invoke-static {v1}, Lkotlinx/coroutines/flow/g;->b(Lkotlinx/coroutines/flow/u;)Lkotlinx/coroutines/flow/c0;

    move-result-object v1

    iput-object v1, p0, Ln4/d;->i:Lkotlinx/coroutines/flow/c0;

    invoke-static {v0}, Lkotlinx/coroutines/flow/e0;->a(Ljava/lang/Object;)Lkotlinx/coroutines/flow/u;

    move-result-object v0

    iput-object v0, p0, Ln4/d;->j:Lkotlinx/coroutines/flow/u;

    invoke-static {v0}, Lkotlinx/coroutines/flow/g;->b(Lkotlinx/coroutines/flow/u;)Lkotlinx/coroutines/flow/c0;

    move-result-object v0

    iput-object v0, p0, Ln4/d;->k:Lkotlinx/coroutines/flow/c0;

    sget-object v0, Lo3/b;->p:Lo3/b$b;

    invoke-virtual {v0}, Lo3/b$b;->a()Lo3/b;

    move-result-object v0

    invoke-virtual {v0, p0}, Lo3/b;->G(Ls3/f;)V

    return-void
.end method

.method public static synthetic a(Lt4/e;Ln4/d;Landroid/content/Context;Lcom/android/launcher3/graphics/LauncherPreviewRenderer$PreviewContext;)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, Ln4/d;->k(Lt4/e;Ln4/d;Landroid/content/Context;Lcom/android/launcher3/graphics/LauncherPreviewRenderer$PreviewContext;)V

    return-void
.end method

.method public static final synthetic b(Ln4/d;)Lkotlinx/coroutines/flow/u;
    .locals 0

    iget-object p0, p0, Ln4/d;->h:Lkotlinx/coroutines/flow/u;

    return-object p0
.end method

.method private final h(Landroid/content/Context;Lcom/android/launcher3/InvariantDeviceProfile;)V
    .locals 8

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/android/launcher3/LauncherAppState;->getInstance(Landroid/content/Context;)Lcom/android/launcher3/LauncherAppState;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/launcher3/LauncherAppState;->getModel()Lcom/android/launcher3/LauncherModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/LauncherModel;->getBgDataModel()Lcom/android/launcher3/model/BgDataModel;

    move-result-object v0

    new-instance v4, Lcom/android/launcher3/model/BgDataModel;

    invoke-direct {v4}, Lcom/android/launcher3/model/BgDataModel;-><init>()V

    iget-object v1, v4, Lcom/android/launcher3/model/BgDataModel;->workspaceItems:Ljava/util/ArrayList;

    iget-object v2, v0, Lcom/android/launcher3/model/BgDataModel;->workspaceItems:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    iget-object v1, v4, Lcom/android/launcher3/model/BgDataModel;->appWidgets:Ljava/util/ArrayList;

    iget-object v2, v0, Lcom/android/launcher3/model/BgDataModel;->appWidgets:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    iget-object v1, v4, Lcom/android/launcher3/model/BgDataModel;->cardWidgets:Ljava/util/ArrayList;

    iget-object v2, v0, Lcom/android/launcher3/model/BgDataModel;->cardWidgets:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    iget-object v1, v0, Lcom/android/launcher3/model/BgDataModel;->widgetsModel:Lcom/android/launcher3/model/WidgetsModel;

    iput-object v1, v4, Lcom/android/launcher3/model/BgDataModel;->widgetsModel:Lcom/android/launcher3/model/WidgetsModel;

    if-nez p2, :cond_0

    invoke-virtual {p1}, Lcom/android/launcher3/LauncherAppState;->getInvariantDeviceProfile()Lcom/android/launcher3/InvariantDeviceProfile;

    move-result-object p2

    :cond_0
    move-object v3, p2

    invoke-virtual {v0}, Lcom/android/launcher3/model/BgDataModel;->getScreenOrdersForPreview()Lcom/android/launcher3/util/IntArray;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/launcher3/util/IntArray;->toArray()[I

    move-result-object p1

    const-string p2, "bgData.screenOrdersForPreview.toArray()"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/n;->d(Ljava/lang/Object;Ljava/lang/String;)V

    array-length p2, p1

    const/4 v0, 0x3

    invoke-static {p2, v0}, Le6/e;->e(II)I

    move-result p2

    iget-object p0, p0, Ln4/d;->h:Lkotlinx/coroutines/flow/u;

    new-instance v0, Lt4/g;

    const/4 v2, 0x0

    const-string v1, "idp"

    invoke-static {v3, v1}, Lkotlin/jvm/internal/n;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-static {p1, p2}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v7

    const-string p1, "copyOf(this, newSize)"

    invoke-static {v7, p1}, Lkotlin/jvm/internal/n;->d(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v1, v0

    invoke-direct/range {v1 .. v7}, Lt4/g;-><init>(Lcom/android/launcher3/graphics/LauncherPreviewRenderer$PreviewContext;Lcom/android/launcher3/InvariantDeviceProfile;Lcom/android/launcher3/model/BgDataModel;Ljava/util/Map;Ljava/util/Map;[I)V

    invoke-interface {p0, v0}, Lkotlinx/coroutines/flow/u;->setValue(Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic i(Ln4/d;Landroid/content/Context;Lcom/android/launcher3/InvariantDeviceProfile;ILjava/lang/Object;)V
    .locals 0

    if-nez p4, :cond_1

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    const/4 p2, 0x0

    :cond_0
    invoke-direct {p0, p1, p2}, Ln4/d;->h(Landroid/content/Context;Lcom/android/launcher3/InvariantDeviceProfile;)V

    return-void

    :cond_1
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Super calls with default arguments not supported in this target, function: loadWorkspacePreviewData"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static final k(Lt4/e;Ln4/d;Landroid/content/Context;Lcom/android/launcher3/graphics/LauncherPreviewRenderer$PreviewContext;)V
    .locals 1

    const-string v0, "$previewIdpCouple"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "this$0"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$activityContext"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$previewContext"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lt4/e;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lt4/e;->b()Lcom/android/launcher3/InvariantDeviceProfile;

    move-result-object p0

    invoke-direct {p1, p2, p0}, Ln4/d;->h(Landroid/content/Context;Lcom/android/launcher3/InvariantDeviceProfile;)V

    goto :goto_0

    :cond_0
    invoke-static {p3}, Lcom/android/launcher3/LauncherAppState;->getInstance(Landroid/content/Context;)Lcom/android/launcher3/LauncherAppState;

    move-result-object p2

    const-string v0, "getInstance(previewContext)"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/n;->d(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lt4/a;

    invoke-direct {v0, p3, p0, p2}, Lt4/a;-><init>(Lcom/android/launcher3/graphics/LauncherPreviewRenderer$PreviewContext;Lt4/e;Lcom/android/launcher3/LauncherAppState;)V

    invoke-virtual {v0}, Lt4/a;->run()V

    invoke-virtual {v0}, Lt4/a;->f()Lt4/g;

    move-result-object p0

    if-eqz p0, :cond_1

    iget-object p1, p1, Ln4/d;->h:Lkotlinx/coroutines/flow/u;

    invoke-interface {p1, p0}, Lkotlinx/coroutines/flow/u;->setValue(Ljava/lang/Object;)V

    :cond_1
    invoke-virtual {p2}, Lcom/android/launcher3/LauncherAppState;->close()V

    :goto_0
    return-void
.end method


# virtual methods
.method public final c()Lkotlinx/coroutines/flow/c0;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlinx/coroutines/flow/c0<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Ln4/d;->k:Lkotlinx/coroutines/flow/c0;

    return-object p0
.end method

.method public final d()Lkotlinx/coroutines/flow/c0;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlinx/coroutines/flow/c0<",
            "Lt4/g;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Ln4/d;->i:Lkotlinx/coroutines/flow/c0;

    return-object p0
.end method

.method public final e()Landroidx/lifecycle/MutableLiveData;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/MutableLiveData<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Ln4/d;->g:Landroidx/lifecycle/MutableLiveData;

    return-object p0
.end method

.method public final f(Landroid/content/Context;Landroid/graphics/Rect;)V
    .locals 7

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "dstRect"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0}, Landroidx/lifecycle/ViewModelKt;->getViewModelScope(Landroidx/lifecycle/ViewModel;)Li6/m0;

    move-result-object v1

    invoke-static {}, Li6/b1;->b()Li6/i0;

    move-result-object v2

    new-instance v4, Ln4/d$b;

    const/4 v0, 0x0

    invoke-direct {v4, p0, p1, p2, v0}, Ln4/d$b;-><init>(Ln4/d;Landroid/content/Context;Landroid/graphics/Rect;Lq5/d;)V

    const/4 v3, 0x0

    const/4 v5, 0x2

    const/4 v6, 0x0

    invoke-static/range {v1 .. v6}, Li6/h;->b(Li6/m0;Lq5/g;Li6/o0;Ly5/p;ILjava/lang/Object;)Li6/v1;

    return-void
.end method

.method public final g(Landroid/content/Context;Landroid/graphics/Rect;)V
    .locals 3

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "dstRect"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1, p2}, Ly2/h;->b(Landroid/content/Context;Landroid/graphics/Rect;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const-string v1, "BasePreviewModel"

    if-nez v0, :cond_0

    const-string v0, "surfaceCreated: cannot get currentWallpaper, use default wallpaper instead"

    invoke-static {v1, v0}, Ly2/e;->l(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/nothing/launcher/setting/view/NTWallpaperPreview;->m:Lcom/nothing/launcher/setting/view/NTWallpaperPreview$a;

    invoke-virtual {v0}, Lcom/nothing/launcher/setting/view/NTWallpaperPreview$a;->a()I

    move-result v0

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    const-string v1, "resources.getDrawable(\n \u2026   null\n                )"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/n;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/graphics/Rect;->width()I

    move-result v1

    invoke-virtual {p2}, Landroid/graphics/Rect;->height()I

    move-result p2

    const-string v2, "resources"

    invoke-static {p1, v2}, Lkotlin/jvm/internal/n;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0, v1, p2, p1}, Ly2/h;->c(Landroid/graphics/drawable/Drawable;IILandroid/content/res/Resources;)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    sget-object p2, Ly2/b;->a:Ly2/b;

    invoke-virtual {p2, p1}, Ly2/b;->e(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;

    move-result-object p1

    goto :goto_0

    :cond_0
    const-string p1, "surfaceCreated: got currentWallpaper"

    invoke-static {v1, p1}, Ly2/e;->l(Ljava/lang/String;Ljava/lang/String;)V

    sget-object p1, Ly2/b;->a:Ly2/b;

    invoke-virtual {p1, v0}, Ly2/b;->e(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;

    move-result-object p1

    :goto_0
    iget-object p0, p0, Ln4/d;->g:Landroidx/lifecycle/MutableLiveData;

    invoke-virtual {p0, p1}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    return-void
.end method

.method public final j(Landroid/content/Context;Lcom/android/launcher3/graphics/LauncherPreviewRenderer$PreviewContext;Lt4/e;)V
    .locals 2

    const-string v0, "activityContext"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "previewContext"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "previewIdpCouple"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lcom/android/launcher3/util/Executors;->MODEL_EXECUTOR:Lcom/android/launcher3/util/LooperExecutor;

    new-instance v1, Ln4/c;

    invoke-direct {v1, p3, p0, p1, p2}, Ln4/c;-><init>(Lt4/e;Ln4/d;Landroid/content/Context;Lcom/android/launcher3/graphics/LauncherPreviewRenderer$PreviewContext;)V

    invoke-virtual {v0, v1}, Lcom/android/launcher3/util/LooperExecutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method protected onCleared()V
    .locals 1

    invoke-super {p0}, Landroidx/lifecycle/ViewModel;->onCleared()V

    sget-object v0, Lo3/b;->p:Lo3/b$b;

    invoke-virtual {v0}, Lo3/b$b;->a()Lo3/b;

    move-result-object v0

    invoke-virtual {v0, p0}, Lo3/b;->J(Ls3/f;)V

    return-void
.end method

.method public onNothingIconForceRenderChanged(Z)V
    .locals 0

    iget-object p0, p0, Ln4/d;->j:Lkotlinx/coroutines/flow/u;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-interface {p0, p1}, Lkotlinx/coroutines/flow/u;->setValue(Ljava/lang/Object;)V

    return-void
.end method
