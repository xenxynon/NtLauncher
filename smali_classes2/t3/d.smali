.class public final Lt3/d;
.super Lt3/a;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lt3/a;-><init>()V

    return-void
.end method


# virtual methods
.method public b(Lv3/b;Lv3/c;)Lcom/android/launcher3/icons/BitmapInfo;
    .locals 6

    const-string v0, "iconPackInfo"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "iconRequest"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Lcom/android/launcher3/icons/BaseIconFactory$IconOptions;->setShrinkNonAdaptiveIcons(Z)Lcom/android/launcher3/icons/BaseIconFactory$IconOptions;

    invoke-virtual {p2}, Lv3/c;->d()Lcom/android/launcher3/icons/IconProvider;

    move-result-object v0

    invoke-virtual {p2}, Lv3/c;->c()Lcom/android/launcher3/icons/BaseIconFactory;

    move-result-object v1

    invoke-virtual {p1}, Lv3/b;->h()Z

    move-result v2

    invoke-virtual {p2, v2}, Lv3/c;->b(Z)Landroid/content/pm/LauncherActivityInfo;

    move-result-object v2

    const/4 v3, 0x0

    if-eqz v2, :cond_1

    if-eqz v1, :cond_1

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lv3/b;->a()Lv3/a;

    move-result-object p1

    invoke-virtual {p2}, Lv3/c;->e()I

    move-result v4

    invoke-virtual {v1}, Lcom/android/launcher3/icons/BaseIconFactory;->getFillResIconDpi()I

    move-result v5

    invoke-virtual {v0, p1, v2, v4, v5}, Lcom/android/launcher3/icons/IconProvider;->getIconForIconPack(Lv3/a;Landroid/content/pm/LauncherActivityInfo;II)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    if-eqz p1, :cond_1

    invoke-virtual {p0, v1, p1, p2}, Lt3/a;->a(Lcom/android/launcher3/icons/BaseIconFactory;Landroid/graphics/drawable/Drawable;Lv3/c;)Lcom/android/launcher3/icons/BitmapInfo;

    move-result-object v3

    :cond_1
    :goto_0
    return-object v3
.end method
