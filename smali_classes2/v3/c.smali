.class public final Lv3/c;
.super Lcom/android/launcher3/icons/BaseIconFactory$IconOptions;
.source "SourceFile"


# instance fields
.field private final a:Landroid/content/Context;

.field private b:Z

.field private c:Landroid/content/pm/LauncherActivityInfo;

.field private d:Landroid/content/ComponentName;

.field private e:Ljava/lang/String;

.field private f:I

.field private g:Lcom/android/launcher3/icons/IconProvider;

.field private h:Lcom/android/launcher3/icons/BaseIconFactory;

.field private i:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/android/launcher3/icons/BaseIconFactory$IconOptions;-><init>()V

    iput-object p1, p0, Lv3/c;->a:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v0, Lcom/android/launcher3/icons/R$dimen;->default_icon_bitmap_size:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lv3/c;->f:I

    return-void
.end method

.method private final a()Landroid/content/pm/LauncherActivityInfo;
    .locals 2

    iget-object v0, p0, Lv3/c;->e:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lv3/c;->a:Landroid/content/Context;

    const-class v1, Landroid/content/pm/LauncherApps;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/LauncherApps;

    iget-object v1, p0, Lv3/c;->e:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/android/launcher3/icons/BaseIconFactory$IconOptions;->getUserHandle()Landroid/os/UserHandle;

    move-result-object p0

    if-nez p0, :cond_0

    invoke-static {}, Landroid/os/Process;->myUserHandle()Landroid/os/UserHandle;

    move-result-object p0

    :cond_0
    invoke-virtual {v0, v1, p0}, Landroid/content/pm/LauncherApps;->getActivityList(Ljava/lang/String;Landroid/os/UserHandle;)Ljava/util/List;

    move-result-object p0

    const-string v0, "context.getSystemService\u2026: Process.myUserHandle())"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/n;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0}, Lo5/j;->J(Ljava/util/List;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/content/pm/LauncherActivityInfo;

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method private final g()Landroid/content/pm/LauncherActivityInfo;
    .locals 2

    iget-object v0, p0, Lv3/c;->c:Landroid/content/pm/LauncherActivityInfo;

    if-nez v0, :cond_0

    sget-object v0, Lm5/a;->a:Lm5/a;

    iget-object v1, p0, Lv3/c;->a:Landroid/content/Context;

    invoke-virtual {v0, v1, p0}, Lm5/a;->b(Landroid/content/Context;Lv3/c;)Landroid/content/pm/LauncherActivityInfo;

    move-result-object v0

    :cond_0
    return-object v0
.end method


# virtual methods
.method public final b(Z)Landroid/content/pm/LauncherActivityInfo;
    .locals 0

    if-eqz p1, :cond_0

    invoke-direct {p0}, Lv3/c;->a()Landroid/content/pm/LauncherActivityInfo;

    move-result-object p0

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Lv3/c;->g()Landroid/content/pm/LauncherActivityInfo;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method public final c()Lcom/android/launcher3/icons/BaseIconFactory;
    .locals 0

    iget-object p0, p0, Lv3/c;->h:Lcom/android/launcher3/icons/BaseIconFactory;

    return-object p0
.end method

.method public final d()Lcom/android/launcher3/icons/IconProvider;
    .locals 0

    iget-object p0, p0, Lv3/c;->g:Lcom/android/launcher3/icons/IconProvider;

    return-object p0
.end method

.method public final e()I
    .locals 0

    iget p0, p0, Lv3/c;->f:I

    return p0
.end method

.method public final f()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lv3/c;->e:Ljava/lang/String;

    const/4 v1, 0x0

    if-nez v0, :cond_2

    iget-object v0, p0, Lv3/c;->d:Landroid/content/ComponentName;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    move-object v0, v1

    :goto_0
    if-nez v0, :cond_2

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lv3/c;->b(Z)Landroid/content/pm/LauncherActivityInfo;

    move-result-object p0

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Landroid/content/pm/LauncherActivityInfo;->getComponentName()Landroid/content/ComponentName;

    move-result-object p0

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_1
    move-object v0, v1

    :cond_2
    :goto_1
    return-object v0
.end method

.method public final h()Landroid/content/ComponentName;
    .locals 0

    iget-object p0, p0, Lv3/c;->d:Landroid/content/ComponentName;

    return-object p0
.end method

.method public final i()Z
    .locals 0

    iget-boolean p0, p0, Lv3/c;->b:Z

    return p0
.end method

.method public final j(Z)V
    .locals 0

    iput-boolean p1, p0, Lv3/c;->b:Z

    return-void
.end method

.method public final k(Lcom/android/launcher3/icons/BaseIconFactory;)V
    .locals 0

    iput-object p1, p0, Lv3/c;->h:Lcom/android/launcher3/icons/BaseIconFactory;

    return-void
.end method

.method public final l(Lcom/android/launcher3/icons/IconProvider;)V
    .locals 0

    iput-object p1, p0, Lv3/c;->g:Lcom/android/launcher3/icons/IconProvider;

    return-void
.end method

.method public final m(I)V
    .locals 0

    iput p1, p0, Lv3/c;->f:I

    return-void
.end method

.method public final n(Z)V
    .locals 0

    iput-boolean p1, p0, Lv3/c;->i:Z

    return-void
.end method

.method public final o(Landroid/content/pm/LauncherActivityInfo;)V
    .locals 0

    iput-object p1, p0, Lv3/c;->c:Landroid/content/pm/LauncherActivityInfo;

    return-void
.end method

.method public final p(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lv3/c;->e:Ljava/lang/String;

    return-void
.end method

.method public final q(Landroid/content/ComponentName;)V
    .locals 0

    iput-object p1, p0, Lv3/c;->d:Landroid/content/ComponentName;

    return-void
.end method
