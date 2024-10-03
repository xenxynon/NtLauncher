.class public final Lt3/c;
.super Lt3/a;
.source "SourceFile"


# instance fields
.field private final a:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Lt3/a;-><init>()V

    iput-object p1, p0, Lt3/c;->a:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public b(Lv3/b;Lv3/c;)Lcom/android/launcher3/icons/BitmapInfo;
    .locals 4

    const-string v0, "iconPackInfo"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "iconRequest"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p2}, Lv3/c;->d()Lcom/android/launcher3/icons/IconProvider;

    move-result-object v0

    invoke-virtual {p2}, Lv3/c;->c()Lcom/android/launcher3/icons/BaseIconFactory;

    move-result-object v1

    invoke-virtual {p1}, Lv3/b;->h()Z

    move-result p1

    invoke-virtual {p2, p1}, Lv3/c;->b(Z)Landroid/content/pm/LauncherActivityInfo;

    move-result-object p1

    if-eqz p1, :cond_1

    if-eqz v1, :cond_1

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p2}, Lv3/c;->i()Z

    move-result v2

    invoke-virtual {v1}, Lcom/android/launcher3/icons/BaseIconFactory;->getFillResIconDpi()I

    move-result v3

    invoke-virtual {v0, v2, p1, v3}, Lcom/android/launcher3/icons/IconProvider;->getIcon(ZLandroid/content/pm/LauncherActivityInfo;I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    const-string v0, "iconProvider.getIcon(ico\u2026, factory.fillResIconDpi)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/n;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, v1, p1, p2}, Lt3/a;->a(Lcom/android/launcher3/icons/BaseIconFactory;Landroid/graphics/drawable/Drawable;Lv3/c;)Lcom/android/launcher3/icons/BitmapInfo;

    move-result-object p0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x0

    :goto_1
    return-object p0
.end method
