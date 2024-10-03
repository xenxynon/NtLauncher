.class final Lcom/nothing/launcher/setting/view/NTWallpaperPreview$b;
.super Lkotlin/coroutines/jvm/internal/l;
.source "SourceFile"

# interfaces
.implements Ly5/p;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nothing/launcher/setting/view/NTWallpaperPreview;->e()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/coroutines/jvm/internal/l;",
        "Ly5/p<",
        "Li6/m0;",
        "Lq5/d<",
        "-",
        "Ln5/t;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/coroutines/jvm/internal/f;
    c = "com.nothing.launcher.setting.view.NTWallpaperPreview$drawWallpaper$1"
    f = "NTWallpaperPreview.kt"
    l = {}
    m = "invokeSuspend"
.end annotation


# instance fields
.field g:I

.field private synthetic h:Ljava/lang/Object;

.field final synthetic i:Lcom/nothing/launcher/setting/view/NTWallpaperPreview;


# direct methods
.method constructor <init>(Lcom/nothing/launcher/setting/view/NTWallpaperPreview;Lq5/d;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/nothing/launcher/setting/view/NTWallpaperPreview;",
            "Lq5/d<",
            "-",
            "Lcom/nothing/launcher/setting/view/NTWallpaperPreview$b;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/nothing/launcher/setting/view/NTWallpaperPreview$b;->i:Lcom/nothing/launcher/setting/view/NTWallpaperPreview;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p2}, Lkotlin/coroutines/jvm/internal/l;-><init>(ILq5/d;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lq5/d;)Lq5/d;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Lq5/d<",
            "*>;)",
            "Lq5/d<",
            "Ln5/t;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/nothing/launcher/setting/view/NTWallpaperPreview$b;

    iget-object p0, p0, Lcom/nothing/launcher/setting/view/NTWallpaperPreview$b;->i:Lcom/nothing/launcher/setting/view/NTWallpaperPreview;

    invoke-direct {v0, p0, p2}, Lcom/nothing/launcher/setting/view/NTWallpaperPreview$b;-><init>(Lcom/nothing/launcher/setting/view/NTWallpaperPreview;Lq5/d;)V

    iput-object p1, v0, Lcom/nothing/launcher/setting/view/NTWallpaperPreview$b;->h:Ljava/lang/Object;

    return-object v0
.end method

.method public final invoke(Li6/m0;Lq5/d;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Li6/m0;",
            "Lq5/d<",
            "-",
            "Ln5/t;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, Lcom/nothing/launcher/setting/view/NTWallpaperPreview$b;->create(Ljava/lang/Object;Lq5/d;)Lq5/d;

    move-result-object p0

    check-cast p0, Lcom/nothing/launcher/setting/view/NTWallpaperPreview$b;

    sget-object p1, Ln5/t;->a:Ln5/t;

    invoke-virtual {p0, p1}, Lcom/nothing/launcher/setting/view/NTWallpaperPreview$b;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Li6/m0;

    check-cast p2, Lq5/d;

    invoke-virtual {p0, p1, p2}, Lcom/nothing/launcher/setting/view/NTWallpaperPreview$b;->invoke(Li6/m0;Lq5/d;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6

    invoke-static {}, Lr5/b;->c()Ljava/lang/Object;

    iget v0, p0, Lcom/nothing/launcher/setting/view/NTWallpaperPreview$b;->g:I

    if-nez v0, :cond_7

    invoke-static {p1}, Ln5/m;->b(Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/nothing/launcher/setting/view/NTWallpaperPreview$b;->h:Ljava/lang/Object;

    check-cast p1, Li6/m0;

    new-instance v0, Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/nothing/launcher/setting/view/NTWallpaperPreview$b;->i:Lcom/nothing/launcher/setting/view/NTWallpaperPreview;

    invoke-virtual {v1}, Landroid/view/SurfaceView;->getWidth()I

    move-result v1

    iget-object v2, p0, Lcom/nothing/launcher/setting/view/NTWallpaperPreview$b;->i:Lcom/nothing/launcher/setting/view/NTWallpaperPreview;

    invoke-virtual {v2}, Landroid/view/SurfaceView;->getHeight()I

    move-result v2

    const/4 v3, 0x0

    invoke-direct {v0, v3, v3, v1, v2}, Landroid/graphics/Rect;-><init>(IIII)V

    iget-object v1, p0, Lcom/nothing/launcher/setting/view/NTWallpaperPreview$b;->i:Lcom/nothing/launcher/setting/view/NTWallpaperPreview;

    invoke-static {v1}, Lcom/nothing/launcher/setting/view/NTWallpaperPreview;->a(Lcom/nothing/launcher/setting/view/NTWallpaperPreview;)Landroid/graphics/Bitmap;

    move-result-object v1

    if-nez v1, :cond_0

    const/4 v3, 0x1

    :cond_0
    const/4 v1, 0x0

    if-eqz v3, :cond_1

    goto :goto_0

    :cond_1
    move-object p1, v1

    :goto_0
    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/nothing/launcher/setting/view/NTWallpaperPreview$b;->i:Lcom/nothing/launcher/setting/view/NTWallpaperPreview;

    invoke-static {p1, v0}, Lcom/nothing/launcher/setting/view/NTWallpaperPreview;->c(Lcom/nothing/launcher/setting/view/NTWallpaperPreview;Landroid/graphics/Rect;)Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-static {p1, v2}, Lcom/nothing/launcher/setting/view/NTWallpaperPreview;->d(Lcom/nothing/launcher/setting/view/NTWallpaperPreview;Landroid/graphics/Bitmap;)V

    :cond_2
    iget-object p1, p0, Lcom/nothing/launcher/setting/view/NTWallpaperPreview$b;->i:Lcom/nothing/launcher/setting/view/NTWallpaperPreview;

    invoke-virtual {p1}, Landroid/view/SurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object p1

    if-eqz p1, :cond_6

    invoke-interface {p1}, Landroid/view/SurfaceHolder;->getSurface()Landroid/view/Surface;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/Surface;->isValid()Z

    move-result v2

    if-eqz v2, :cond_3

    goto :goto_1

    :cond_3
    move-object p1, v1

    :goto_1
    if-eqz p1, :cond_6

    iget-object p0, p0, Lcom/nothing/launcher/setting/view/NTWallpaperPreview$b;->i:Lcom/nothing/launcher/setting/view/NTWallpaperPreview;

    invoke-interface {p1}, Landroid/view/SurfaceHolder;->lockCanvas()Landroid/graphics/Canvas;

    move-result-object v2

    if-eqz v2, :cond_5

    const-string v1, "lockCanvas()"

    invoke-static {v2, v1}, Lkotlin/jvm/internal/n;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0}, Lcom/nothing/launcher/setting/view/NTWallpaperPreview;->a(Lcom/nothing/launcher/setting/view/NTWallpaperPreview;)Landroid/graphics/Bitmap;

    move-result-object v1

    if-eqz v1, :cond_4

    invoke-static {p0}, Lcom/nothing/launcher/setting/view/NTWallpaperPreview;->b(Lcom/nothing/launcher/setting/view/NTWallpaperPreview;)Landroid/graphics/Paint;

    move-result-object v3

    new-instance v4, Landroid/graphics/BitmapShader;

    sget-object v5, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    invoke-direct {v4, v1, v5, v5}, Landroid/graphics/BitmapShader;-><init>(Landroid/graphics/Bitmap;Landroid/graphics/Shader$TileMode;Landroid/graphics/Shader$TileMode;)V

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    new-instance v1, Landroid/graphics/RectF;

    invoke-direct {v1, v0}, Landroid/graphics/RectF;-><init>(Landroid/graphics/Rect;)V

    invoke-static {p0}, Lcom/nothing/launcher/setting/view/NTWallpaperPreview;->b(Lcom/nothing/launcher/setting/view/NTWallpaperPreview;)Landroid/graphics/Paint;

    move-result-object p0

    invoke-virtual {v2, v1, p0}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    :cond_4
    move-object v1, v2

    :cond_5
    invoke-interface {p1, v1}, Landroid/view/SurfaceHolder;->unlockCanvasAndPost(Landroid/graphics/Canvas;)V

    :cond_6
    sget-object p0, Ln5/t;->a:Ln5/t;

    return-object p0

    :cond_7
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
