.class public final Lcom/nothing/launcher/setting/view/NTWallpaperPreview;
.super Landroid/view/SurfaceView;
.source "SourceFile"

# interfaces
.implements Landroid/view/SurfaceHolder$Callback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/nothing/launcher/setting/view/NTWallpaperPreview$a;
    }
.end annotation


# static fields
.field public static final m:Lcom/nothing/launcher/setting/view/NTWallpaperPreview$a;


# instance fields
.field private final g:Ljava/lang/String;

.field private h:Landroid/graphics/PaintFlagsDrawFilter;

.field private final i:Landroid/graphics/Paint;

.field private j:Landroid/graphics/Bitmap;

.field private k:Z

.field private l:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/nothing/launcher/setting/view/NTWallpaperPreview$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/nothing/launcher/setting/view/NTWallpaperPreview$a;-><init>(Lkotlin/jvm/internal/i;)V

    sput-object v0, Lcom/nothing/launcher/setting/view/NTWallpaperPreview;->m:Lcom/nothing/launcher/setting/view/NTWallpaperPreview$a;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/view/SurfaceView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const-string p1, "NTWallpaperPreview"

    iput-object p1, p0, Lcom/nothing/launcher/setting/view/NTWallpaperPreview;->g:Ljava/lang/String;

    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lcom/nothing/launcher/setting/view/NTWallpaperPreview;->i:Landroid/graphics/Paint;

    invoke-direct {p0}, Lcom/nothing/launcher/setting/view/NTWallpaperPreview;->f()V

    return-void
.end method

.method public static final synthetic a(Lcom/nothing/launcher/setting/view/NTWallpaperPreview;)Landroid/graphics/Bitmap;
    .locals 0

    iget-object p0, p0, Lcom/nothing/launcher/setting/view/NTWallpaperPreview;->j:Landroid/graphics/Bitmap;

    return-object p0
.end method

.method public static final synthetic b(Lcom/nothing/launcher/setting/view/NTWallpaperPreview;)Landroid/graphics/Paint;
    .locals 0

    iget-object p0, p0, Lcom/nothing/launcher/setting/view/NTWallpaperPreview;->i:Landroid/graphics/Paint;

    return-object p0
.end method

.method public static final synthetic c(Lcom/nothing/launcher/setting/view/NTWallpaperPreview;Landroid/graphics/Rect;)Landroid/graphics/Bitmap;
    .locals 0

    invoke-direct {p0, p1}, Lcom/nothing/launcher/setting/view/NTWallpaperPreview;->g(Landroid/graphics/Rect;)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic d(Lcom/nothing/launcher/setting/view/NTWallpaperPreview;Landroid/graphics/Bitmap;)V
    .locals 0

    iput-object p1, p0, Lcom/nothing/launcher/setting/view/NTWallpaperPreview;->j:Landroid/graphics/Bitmap;

    return-void
.end method

.method private final e()V
    .locals 7

    iget-boolean v0, p0, Lcom/nothing/launcher/setting/view/NTWallpaperPreview;->k:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-static {p0}, Landroidx/lifecycle/ViewKt;->findViewTreeLifecycleOwner(Landroid/view/View;)Landroidx/lifecycle/LifecycleOwner;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-static {v0}, Landroidx/lifecycle/LifecycleOwnerKt;->getLifecycleScope(Landroidx/lifecycle/LifecycleOwner;)Landroidx/lifecycle/LifecycleCoroutineScope;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-static {}, Li6/b1;->b()Li6/i0;

    move-result-object v2

    const/4 v3, 0x0

    new-instance v4, Lcom/nothing/launcher/setting/view/NTWallpaperPreview$b;

    const/4 v0, 0x0

    invoke-direct {v4, p0, v0}, Lcom/nothing/launcher/setting/view/NTWallpaperPreview$b;-><init>(Lcom/nothing/launcher/setting/view/NTWallpaperPreview;Lq5/d;)V

    const/4 v5, 0x2

    const/4 v6, 0x0

    invoke-static/range {v1 .. v6}, Li6/h;->b(Li6/m0;Lq5/g;Li6/o0;Ly5/p;ILjava/lang/Object;)Li6/v1;

    :cond_1
    return-void
.end method

.method private final f()V
    .locals 3

    new-instance v0, Landroid/graphics/PaintFlagsDrawFilter;

    const/4 v1, 0x0

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Landroid/graphics/PaintFlagsDrawFilter;-><init>(II)V

    iput-object v0, p0, Lcom/nothing/launcher/setting/view/NTWallpaperPreview;->h:Landroid/graphics/PaintFlagsDrawFilter;

    iget-object v0, p0, Lcom/nothing/launcher/setting/view/NTWallpaperPreview;->i:Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    invoke-virtual {p0}, Landroid/view/SurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    invoke-interface {v0, p0}, Landroid/view/SurfaceHolder;->addCallback(Landroid/view/SurfaceHolder$Callback;)V

    const/4 p0, -0x3

    invoke-interface {v0, p0}, Landroid/view/SurfaceHolder;->setFormat(I)V

    return-void
.end method

.method private final g(Landroid/graphics/Rect;)Landroid/graphics/Bitmap;
    .locals 3

    invoke-virtual {p0}, Landroid/view/SurfaceView;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "context"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/n;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0, p1}, Ly2/h;->b(Landroid/content/Context;Landroid/graphics/Rect;)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/nothing/launcher/setting/view/NTWallpaperPreview;->g:Ljava/lang/String;

    const-string v0, "surfaceCreated: cannot get currentWallpaper, use default wallpaper instead"

    invoke-static {p1, v0}, Ly2/e;->l(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/view/SurfaceView;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget-object v0, Lcom/nothing/launcher/setting/view/NTWallpaperPreview;->m:Lcom/nothing/launcher/setting/view/NTWallpaperPreview$a;

    invoke-virtual {v0}, Lcom/nothing/launcher/setting/view/NTWallpaperPreview$a;->a()I

    move-result v0

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    const-string v0, "resources.getDrawable(\n \u2026   null\n                )"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/n;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/view/SurfaceView;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Landroid/view/SurfaceView;->getHeight()I

    move-result v1

    invoke-virtual {p0}, Landroid/view/SurfaceView;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const-string v2, "resources"

    invoke-static {p0, v2}, Lkotlin/jvm/internal/n;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1, v0, v1, p0}, Ly2/h;->c(Landroid/graphics/drawable/Drawable;IILandroid/content/res/Resources;)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    sget-object p1, Ly2/b;->a:Ly2/b;

    invoke-virtual {p1, p0}, Ly2/b;->e(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;

    move-result-object p0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/nothing/launcher/setting/view/NTWallpaperPreview;->g:Ljava/lang/String;

    const-string v1, "surfaceCreated: got currentWallpaper"

    invoke-static {v0, v1}, Ly2/e;->l(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/nothing/launcher/setting/view/NTWallpaperPreview;->l:Z

    sget-object p0, Ly2/b;->a:Ly2/b;

    invoke-virtual {p0, p1}, Ly2/b;->e(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;

    move-result-object p0

    :goto_0
    return-object p0
.end method


# virtual methods
.method public final h(Landroid/graphics/Bitmap;)V
    .locals 1

    const-string v0, "wallpaper"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/nothing/launcher/setting/view/NTWallpaperPreview;->l:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/nothing/launcher/setting/view/NTWallpaperPreview;->j:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    :cond_0
    iput-object p1, p0, Lcom/nothing/launcher/setting/view/NTWallpaperPreview;->j:Landroid/graphics/Bitmap;

    invoke-direct {p0}, Lcom/nothing/launcher/setting/view/NTWallpaperPreview;->e()V

    :cond_1
    return-void
.end method

.method public surfaceChanged(Landroid/view/SurfaceHolder;III)V
    .locals 0

    const-string p0, "holder"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public surfaceCreated(Landroid/view/SurfaceHolder;)V
    .locals 1

    const-string v0, "holder"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/nothing/launcher/setting/view/NTWallpaperPreview;->k:Z

    invoke-direct {p0}, Lcom/nothing/launcher/setting/view/NTWallpaperPreview;->e()V

    return-void
.end method

.method public surfaceDestroyed(Landroid/view/SurfaceHolder;)V
    .locals 1

    const-string v0, "holder"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/nothing/launcher/setting/view/NTWallpaperPreview;->k:Z

    return-void
.end method
