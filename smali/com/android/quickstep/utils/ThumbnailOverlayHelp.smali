.class public final Lcom/android/quickstep/utils/ThumbnailOverlayHelp;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final INSTANCE:Lcom/android/quickstep/utils/ThumbnailOverlayHelp;

.field private static final TAG:Ljava/lang/String; = "ThumbnailOverlayHelp"

.field private static volatile appLockedIconThumbnail:Landroid/graphics/Bitmap;

.field private static volatile cameraThumbnail:Landroid/graphics/Bitmap;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/quickstep/utils/ThumbnailOverlayHelp;

    invoke-direct {v0}, Lcom/android/quickstep/utils/ThumbnailOverlayHelp;-><init>()V

    sput-object v0, Lcom/android/quickstep/utils/ThumbnailOverlayHelp;->INSTANCE:Lcom/android/quickstep/utils/ThumbnailOverlayHelp;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic a(Landroid/content/Context;)V
    .locals 0

    invoke-static {p0}, Lcom/android/quickstep/utils/ThumbnailOverlayHelp;->update$lambda$0(Landroid/content/Context;)V

    return-void
.end method

.method public static final getOverlayAppLockedIconThumbnail()Landroid/graphics/Bitmap;
    .locals 1

    sget-object v0, Lcom/android/quickstep/utils/ThumbnailOverlayHelp;->appLockedIconThumbnail:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public static final getOverlayCameraThumbnail()Landroid/graphics/Bitmap;
    .locals 1

    sget-object v0, Lcom/android/quickstep/utils/ThumbnailOverlayHelp;->cameraThumbnail:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method private final getThumbnailFromResource(Landroid/content/Context;)V
    .locals 2

    :try_start_0
    sget-object p0, Lcom/android/quickstep/utils/ThumbnailOverlayHelp;->cameraThumbnail:Landroid/graphics/Bitmap;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->recycle()V

    :cond_0
    const p0, 0x7f080386

    invoke-virtual {p1, p0}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    const/4 v0, 0x0

    if-eqz p0, :cond_1

    sget-object v1, Ly2/b;->a:Ly2/b;

    invoke-virtual {v1, p0}, Ly2/b;->e(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;

    move-result-object p0

    goto :goto_0

    :cond_1
    move-object p0, v0

    :goto_0
    sput-object p0, Lcom/android/quickstep/utils/ThumbnailOverlayHelp;->cameraThumbnail:Landroid/graphics/Bitmap;

    sget-object p0, Lcom/android/quickstep/utils/AppLockedModeHelper;->Companion:Lcom/android/quickstep/utils/AppLockedModeHelper$Companion;

    invoke-virtual {p0}, Lcom/android/quickstep/utils/AppLockedModeHelper$Companion;->isWindowAppLockedSupport()Z

    move-result p0

    if-nez p0, :cond_2

    return-void

    :cond_2
    sget-object p0, Lcom/android/quickstep/utils/ThumbnailOverlayHelp;->appLockedIconThumbnail:Landroid/graphics/Bitmap;

    if-eqz p0, :cond_3

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->recycle()V

    :cond_3
    const p0, 0x7f080385

    invoke-virtual {p1, p0}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    if-eqz p0, :cond_4

    sget-object p1, Ly2/b;->a:Ly2/b;

    invoke-virtual {p1, p0}, Ly2/b;->e(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;

    move-result-object v0

    :cond_4
    sput-object v0, Lcom/android/quickstep/utils/ThumbnailOverlayHelp;->appLockedIconThumbnail:Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "getThumbnailFromResource -> e: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "ThumbnailOverlayHelp"

    invoke-static {p1, p0}, Ly2/e;->f(Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    return-void
.end method

.method public static final update(Landroid/content/Context;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/android/quickstep/utils/a;

    invoke-direct {v0, p0}, Lcom/android/quickstep/utils/a;-><init>(Landroid/content/Context;)V

    invoke-static {v0}, Ly2/c;->f(Ljava/lang/Runnable;)V

    return-void
.end method

.method private static final update$lambda$0(Landroid/content/Context;)V
    .locals 1

    const-string v0, "$context"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lcom/android/quickstep/utils/ThumbnailOverlayHelp;->INSTANCE:Lcom/android/quickstep/utils/ThumbnailOverlayHelp;

    invoke-direct {v0, p0}, Lcom/android/quickstep/utils/ThumbnailOverlayHelp;->getThumbnailFromResource(Landroid/content/Context;)V

    return-void
.end method
