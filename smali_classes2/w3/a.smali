.class public final Lw3/a;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Landroid/content/Context;

.field private final b:Ln5/e;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lw3/a;->a:Landroid/content/Context;

    new-instance p1, Lw3/a$a;

    invoke-direct {p1, p0}, Lw3/a$a;-><init>(Lw3/a;)V

    invoke-static {p1}, Ln5/f;->b(Ly5/a;)Ln5/e;

    move-result-object p1

    iput-object p1, p0, Lw3/a;->b:Ln5/e;

    return-void
.end method

.method public static final synthetic a(Lw3/a;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lw3/a;->a:Landroid/content/Context;

    return-object p0
.end method

.method private final d()Lu3/a;
    .locals 0

    iget-object p0, p0, Lw3/a;->b:Ln5/e;

    invoke-interface {p0}, Ln5/e;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lu3/a;

    return-object p0
.end method


# virtual methods
.method public final b(Ljava/lang/String;Lcom/android/launcher3/icons/IconProvider;Lcom/android/launcher3/icons/BaseIconFactory;)Lv3/c;
    .locals 1

    const-string v0, "appName"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "iconProvider"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "iconFactory"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Lw3/a;->d()Lu3/a;

    move-result-object p0

    invoke-virtual {p0, p1}, Lu3/a;->h(Ljava/lang/String;)V

    invoke-virtual {p0, p2}, Lu3/a;->d(Lcom/android/launcher3/icons/IconProvider;)V

    invoke-virtual {p0, p3}, Lu3/a;->c(Lcom/android/launcher3/icons/BaseIconFactory;)V

    invoke-virtual {p0}, Lu3/a;->a()Lv3/c;

    move-result-object p0

    return-object p0
.end method

.method public final c(Lv3/d;Lcom/android/launcher3/icons/IconProvider;Lcom/android/launcher3/icons/BaseIconFactory;)Lv3/c;
    .locals 1

    const-string v0, "itemInfoForIconRequest"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "iconProvider"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "iconFactory"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Lw3/a;->d()Lu3/a;

    move-result-object p0

    invoke-virtual {p1}, Lv3/d;->g()Z

    move-result v0

    invoke-virtual {p0, v0}, Lu3/a;->f(Z)V

    invoke-virtual {p1}, Lv3/d;->i()Z

    move-result v0

    invoke-virtual {p0, v0}, Lu3/a;->g(Z)V

    invoke-virtual {p1}, Lv3/d;->c()Landroid/content/pm/LauncherActivityInfo;

    move-result-object v0

    invoke-virtual {p0, v0}, Lu3/a;->b(Landroid/content/pm/LauncherActivityInfo;)V

    invoke-virtual {p1}, Lv3/d;->e()Landroid/content/ComponentName;

    move-result-object v0

    invoke-virtual {p0, v0}, Lu3/a;->i(Landroid/content/ComponentName;)V

    invoke-virtual {p1}, Lv3/d;->f()Landroid/os/UserHandle;

    move-result-object v0

    invoke-virtual {p0, v0}, Lu3/a;->j(Landroid/os/UserHandle;)V

    invoke-virtual {p1}, Lv3/d;->b()I

    move-result v0

    invoke-virtual {p0, v0}, Lu3/a;->e(I)V

    invoke-virtual {p0, p2}, Lu3/a;->d(Lcom/android/launcher3/icons/IconProvider;)V

    invoke-virtual {p0, p3}, Lu3/a;->c(Lcom/android/launcher3/icons/BaseIconFactory;)V

    invoke-virtual {p1}, Lv3/d;->a()Ljava/lang/String;

    move-result-object p2

    invoke-interface {p2}, Ljava/lang/CharSequence;->length()I

    move-result p2

    if-lez p2, :cond_0

    const/4 p2, 0x1

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    :goto_0
    if-eqz p2, :cond_1

    invoke-virtual {p1}, Lv3/d;->a()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lu3/a;->h(Ljava/lang/String;)V

    :cond_1
    invoke-virtual {p0}, Lu3/a;->a()Lv3/c;

    move-result-object p0

    return-object p0
.end method
