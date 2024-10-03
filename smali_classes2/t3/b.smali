.class public final Lt3/b;
.super Lt3/a;
.source "SourceFile"


# instance fields
.field private final a:Landroid/content/Context;

.field private final b:Lt3/c;

.field private final c:Lt3/d;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const-string v0, "appContext"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Lt3/a;-><init>()V

    iput-object p1, p0, Lt3/b;->a:Landroid/content/Context;

    new-instance v0, Lt3/c;

    invoke-direct {v0, p1}, Lt3/c;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lt3/b;->b:Lt3/c;

    new-instance p1, Lt3/d;

    invoke-direct {p1}, Lt3/d;-><init>()V

    iput-object p1, p0, Lt3/b;->c:Lt3/d;

    return-void
.end method


# virtual methods
.method public b(Lv3/b;Lv3/c;)Lcom/android/launcher3/icons/BitmapInfo;
    .locals 1

    const-string v0, "options"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "iconRequest"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lv3/b;->f()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Lv3/b;->b()Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Lo3/b;->p:Lo3/b$b;

    invoke-virtual {v0}, Lo3/b$b;->a()Lo3/b;

    move-result-object v0

    invoke-virtual {v0}, Lo3/b;->x()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    iget-object p0, p0, Lt3/b;->c:Lt3/d;

    invoke-virtual {p0, p1, p2}, Lt3/d;->b(Lv3/b;Lv3/c;)Lcom/android/launcher3/icons/BitmapInfo;

    move-result-object p0

    goto :goto_1

    :cond_2
    invoke-virtual {p1}, Lv3/b;->b()Z

    move-result v0

    if-eqz v0, :cond_3

    :goto_0
    iget-object p0, p0, Lt3/b;->b:Lt3/c;

    invoke-virtual {p0, p1, p2}, Lt3/c;->b(Lv3/b;Lv3/c;)Lcom/android/launcher3/icons/BitmapInfo;

    move-result-object p0

    goto :goto_1

    :cond_3
    iget-object v0, p0, Lt3/b;->c:Lt3/d;

    invoke-virtual {v0, p1, p2}, Lt3/d;->b(Lv3/b;Lv3/c;)Lcom/android/launcher3/icons/BitmapInfo;

    move-result-object v0

    if-nez v0, :cond_4

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lv3/b;->g(Z)V

    invoke-virtual {p2, v0}, Lcom/android/launcher3/icons/BaseIconFactory$IconOptions;->setShrinkNonAdaptiveIcons(Z)Lcom/android/launcher3/icons/BaseIconFactory$IconOptions;

    invoke-virtual {p0, p1, p2}, Lt3/b;->b(Lv3/b;Lv3/c;)Lcom/android/launcher3/icons/BitmapInfo;

    move-result-object p0

    goto :goto_1

    :cond_4
    move-object p0, v0

    :goto_1
    return-object p0
.end method

.method public final c(Lv3/d;Lcom/android/launcher3/icons/cache/BaseIconCache;Lv3/b;Lcom/android/launcher3/icons/BaseIconFactory;Lcom/android/launcher3/icons/IconProvider;)Lcom/android/launcher3/icons/BitmapInfo;
    .locals 1

    const-string v0, "itemInfoForIconRequest"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "iconCache"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "iconPackInfo"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "iconFactory"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "iconProvider"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p3}, Lv3/b;->e()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lv3/d;->h()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p2, p1}, Lcom/android/launcher3/icons/cache/BaseIconCache;->updateIconsForPkg(Lv3/d;)Lcom/android/launcher3/icons/BitmapInfo;

    move-result-object p0

    return-object p0

    :cond_0
    invoke-virtual {p0, p1, p3, p4, p5}, Lt3/b;->d(Lv3/d;Lv3/b;Lcom/android/launcher3/icons/BaseIconFactory;Lcom/android/launcher3/icons/IconProvider;)Lcom/android/launcher3/icons/BitmapInfo;

    move-result-object p0

    return-object p0
.end method

.method public final d(Lv3/d;Lv3/b;Lcom/android/launcher3/icons/BaseIconFactory;Lcom/android/launcher3/icons/IconProvider;)Lcom/android/launcher3/icons/BitmapInfo;
    .locals 2

    const-string v0, "originalRequest"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "iconPackInfo"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "iconFactory"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "iconProvider"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lw3/a;

    iget-object v1, p0, Lt3/b;->a:Landroid/content/Context;

    invoke-direct {v0, v1}, Lw3/a;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, p1, p4, p3}, Lw3/a;->c(Lv3/d;Lcom/android/launcher3/icons/IconProvider;Lcom/android/launcher3/icons/BaseIconFactory;)Lv3/c;

    move-result-object p1

    invoke-virtual {p0, p2, p1}, Lt3/b;->b(Lv3/b;Lv3/c;)Lcom/android/launcher3/icons/BitmapInfo;

    move-result-object p0

    return-object p0
.end method

.method public final e(Ljava/lang/String;Lv3/b;Lcom/android/launcher3/icons/BaseIconFactory;Lcom/android/launcher3/icons/IconProvider;)Landroid/graphics/Bitmap;
    .locals 2

    const-string v0, "appName"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "iconPackInfo"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "iconFactory"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "iconProvider"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lw3/a;

    iget-object v1, p0, Lt3/b;->a:Landroid/content/Context;

    invoke-direct {v0, v1}, Lw3/a;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, p1, p4, p3}, Lw3/a;->b(Ljava/lang/String;Lcom/android/launcher3/icons/IconProvider;Lcom/android/launcher3/icons/BaseIconFactory;)Lv3/c;

    move-result-object p1

    invoke-virtual {p0, p2, p1}, Lt3/b;->b(Lv3/b;Lv3/c;)Lcom/android/launcher3/icons/BitmapInfo;

    move-result-object p0

    invoke-virtual {p3}, Lcom/android/launcher3/icons/BaseIconFactory;->close()V

    if-eqz p0, :cond_0

    iget-object p0, p0, Lcom/android/launcher3/icons/BitmapInfo;->icon:Landroid/graphics/Bitmap;

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method
